# Careerhub

## Question 1
| Field | My decision | Domain justification |
| --- | --- | --- |
| title | Non-nullable | Every job listing must have a title so applicants know what role they'll be applying for. |
| company | Non-nullable | Every job listing must know which company or recruiting agency is is advertising the job. |
| location | Non-nullable | Applicants need to know where the job is based in order to determine whether it is suitable for them. |
| salary | Nullable | An employer may choose not to disclose the salary in the job advertisement. |
| closingDate | Nullable | Some vacancies remain open until filled or are published before a closing date has been decided. |
| description | Non-nullable | A job listing should include a description so applicants understand the duties and requirements of the role. |
| employmentType | Non-nullable | Applicants need to know whether the position is full-time, part-time, contract, or remote before applying. |
| isOpen | Non-nullable | Every job listing must have a clear status indicating whether applications are currently being accepted. |

The closingDate field is the most dangerous nullable field to render without an explicit null check because, if it is missing and the application assumes it always has a value, users could see an incorrect date, a system error, or even a blank page instead of the job details. This could mislead applicants into thinking a vacancy has already closed or has no deadline, causing them to miss an opportunity or submit an application too late. Since application deadlines directly affect whether a candidate can apply, handling a missing closing date correctly is essential for providing accurate and reliable information.

## Question 2
I chose nullable string because it best matches how salary information is presented to users and solves the confidential-salary problem. From weeek 2 onwards, I'm guessing the  salary will most likely be returned as a String rather than a numeric type, because job advertisements often display salaries as formatted text such as "R30 000 – R45 000 per month", "Negotiable", or "Market related", instead of a single numeric value. On screen, users expect to see this formatted text exactly as it appears in the job listing. When a company chooses not to disclose the salary, the salary field can simply be null, allowing the app to display an alternative message such as "Salary not disclosed" instead of showing an incorrect value like R0. While using a String? makes sorting salaries numerically more difficult, it accurately represents real-world job listings and handles confidential salaries cleanly.

## Question 3
I chose a String status field because it can represent all four possible job states ("Active", "Closed", "Draft", and "Expired") using a single field. The main limitation of this approach is that a string can contain any value, including invalid or misspelled values such as "Actve" or "Open", which can lead to bugs and inconsistent data. The Dart enum feature, introduced in Week 2 Day 2, would model this more safely because it restricts the field to a fixed set of valid values, preventing invalid states from being assigned.

## Question 4
The first named constructor represents a remote job. A remote position has a specific business meaning because it should always be created with a remote location and employment details that consistently represent a work-from-home opportunity. Encapsulating these rules in a named constructor ensures that every remote job is created in a valid and consistent state instead of relying on developers to remember to assign the correct values each time.

The second named constructor represents a job that has already been filled or closed. This constructor ensures that the job is always created with a closed status and any related closing information, preventing the accidental creation of an invalid object that appears both open and closed at the same time. These named constructors model meaningful business scenarios rather than simply providing convenient default values, making the code easier to understand and reducing the chance of creating inconsistent job objects.

## Proof it works
![alt text](image.png)

## Theme justification
I selected teal as the application's seed colour because it is associated with growth, trust, and professionalism. These qualities align well with a job platform that connects job seekers with employment opportunities.

## The constraint my current layout depends on
The Scaffold passes a tight constraint to its body, meaning the body must fill the available screen size. A ListView.builder works directly as the body because it receives a bounded height from the Scaffold, allowing it to determine its viewport size and scroll correctly. When the ListView.builder is placed inside a Column, the Column gives its children unbounded height along its main axis because it first asks each child how tall it wants to be. A scrollable widget like ListView cannot determine its height when given an infinite vertical constraint, so Flutter throws a "Vertical viewport was given unbounded height" error. To fix this, the ListView.builder must be wrapped in an Expanded widget so that the Column gives it the remaining bounded height after laying out the filter chips.

## Question 2 — The grid cell problem
### 2a. Required and conditional content
I would list my required fields as:

* Job title
* Company name
* Location
* Employment type badge

Conditional fields

* Salary
* Closing date
* Description

Estimated heights:

* Required content only: approximately 120–140 px
* All optional content present: approximately 220–260 px

The variation mainly comes from the description, which can occupy multiple lines, while salary and closing date each add roughly one line of text.

### 2b. Choosing a childAspectRatio

A typical phone screen is around 390 px wide. With two columns and spacing, each grid cell is roughly 180 px wide. I estimated the tallest practical card at about 240 px high.
Therefore:

childAspectRatio = width ÷ height
                 = 180 ÷ 240
                 = 0.75

I chose a childAspectRatio of approximately 0.75 because it provides enough height for most job cards while still allowing two columns to fit comfortably on medium-sized screens

### 2c. What happens to larger cards?

If a fully populated JobCard is displayed inside a grid cell that was sized for a minimal card, the content exceeds the available height. The user may see text clipped, overflow warnings during development, or some information become inaccessible depending on how the card is built. This is generally not ideal, because users could miss important job details. If the content varies significantly, a better approach would be to redesign the grid card to display only summary information with the full details shown on a separate screen, or use a layout that supports variable-height items instead of a fixed-aspect-ratio grid.

## Dark mode breakage audit

I found zero hardcoded colours in my widgets. In Assignment 1.1, I avoided using values such as Colors.blue, Colors.green, or literal colour codes. Instead, all colours were obtained from Theme.of(context).colorScheme and text styling came from Theme.of(context).textTheme.

Examples include:

Card background → colorScheme.surface
Primary text → colorScheme.onSurface
Secondary text → colorScheme.onSurfaceVariant
Employment type badge → colorScheme.primaryContainer
Badge text → colorScheme.onPrimaryContainer

Because these colours come from the application's ColorScheme, they automatically adapt when switching between light and dark themes, so no changes are required when enabling darkTheme and themeMode: ThemeMode.system

## The extraction decision

I chose to extract the JobStatusBadge widget.

### Criterion 1 — Single responsibility:

The widget has one clearly defined purpose: displaying the employment type badge.

### Criterion 2 — Reusable:

The badge can easily be reused in multiple parts of the application, such as job listings, favourites, search results, or a job details page.

### Criterion 3 — Testable in isolation:

The widget depends only on the employment type passed into it. It does not rely on any state from its parent, making it straightforward to test independently.

Since all three criteria are satisfied, extracting the widget is justified.

If I did not extract it, the cost would not primarily be additional lines of code. Instead, JobCard would become responsible for both laying out the job information and implementing badge presentation, reducing clarity. Reusing the badge elsewhere would require duplicating its implementation, increasing maintenance effort and making isolated testing more difficult.

## Dark mode works
![alt text](image-1.png)

## ref.watch vs ref.read
ref.watch is used when a widget depends on a provider's value to build its user interface because it subscribes the widget to changes and automatically rebuilds it whenever that provider updates. This behaviour makes it inappropriate inside event callbacks such as onSelected, since callbacks are one-time actions rather than part of the widget's build process, and subscribing there would create unnecessary dependencies without rebuilding anything useful. Conversely, ref.read simply retrieves the current provider without listening for future changes, making it ideal for callbacks that only need to trigger an action such as changing the selected filter. If ref.read were used inside build(), the interface would not rebuild when the provider changed, so tapping a filter chip would appear to have no effect until another unrelated rebuild occurred. If ref.watch were incorrectly used inside a callback, the callback would unnecessarily depend on provider updates even though it is not responsible for rendering the interface, leading to incorrect usage of Riverpod's reactive model.

## Choosing the right provider
For a full list of jobs, I'll use FutureProvider<List<Job>> because the jobs are loaded asynchronously and Riverpod automatically exposes loading, error, and data states through AsyncValue.
For a currently selected filter, I'll use StateProvider<String?> because it stores a single mutable value that changes when the user selects a different filter chip.
However, for a filtered list, I'll probably go with Provider<List<Job>> because it is derived entirely from the jobs list and the selected filter, so it should be computed automatically rather than stored separately.

Storing the filtered list in its own StateProvider<List<Job>> introduces a state synchronisation (duplicated state) bug. Because the filtered list duplicates information that can already be derived from the jobs and filter providers, it can become inconsistent if one of those changes without updating the filtered list. For example, if the user selects the "Remote" filter while new jobs finish loading from the repository, the jobs provider may contain the latest data but the manually maintained filtered list may still contain the previous results, causing the UI to display outdated or incorrect job listings.

## AsyncValue and the UI contract
When the AsyncValue is in the loading state, the UI should display a loading indicator such as a CircularProgressIndicator so the user knows that work is in progress rather than assuming the application has frozen.

When the AsyncValue is in the error state, the UI should display an error message together with a retry option so the user understands that the request failed and has a clear way to try again.

When the AsyncValue is in the data state, the UI should display the filtered list of jobs because the requested information has been successfully loaded.

Within the data state, the widget must also check whether the filtered list is empty. If this check is forgotten, the user will simply see a blank screen after selecting a filter that matches no jobs, making it appear as though the application is broken. Instead, the UI should display an empty-state message informing the user that no jobs match the selected filter and encouraging them to try another filter.

## What my test is about to break and why
The first failure occurs because HomeScreen becomes a ConsumerWidget that depends on Riverpod providers. Pumping the widget without a ProviderScope means no provider container exists, causing the test to fail before the widget can build. The test should therefore wrap HomeScreen in a ProviderScope (or an overridden ProviderScope if mock providers are required).

The second failure occurs because the jobs are no longer available immediately; they are loaded asynchronously through a FutureProvider. Immediately checking for job cards after pumpWidget() will still find the loading state rather than the completed data. The test must allow the future to complete by calling pump() or pumpAndSettle() (or pumping for the simulated delay) before asserting that the job cards are present