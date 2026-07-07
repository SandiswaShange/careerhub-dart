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