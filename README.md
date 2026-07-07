# Careerhub

| Field | My decision | Domain justification |
| --- | --- | --- |
| title | Non-nullable (Required) | Every job advertisement must have a job title so applicants know what position is being advertised. |
| company | Non-nullable (Required) | Every job listing must identify the employer or recruiting organisation responsible for the vacancy. |
| location | Non-nullable (Required) | Applicants need to know where the job is based in order to determine whether it is suitable for them. |
| salary | Nullable (Optional) | An employer may choose not to disclose the salary in the job advertisement. |
| closingDate | Nullable (Optional) | Some vacancies remain open until filled or are published before a closing date has been decided. |
| description | Non-nullable (Required) | A job listing should include a description so applicants understand the duties and requirements of the role. |
| employmentType | Non-nullable (Required) | Applicants need to know whether the position is full-time, part-time, contract, or another employment type before applying. |
| isOpen | Non-nullable (Required) | Every job listing must have a clear status indicating whether applications are currently being accepted. |