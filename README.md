# SQL NULL Value Handling Errors

This repository demonstrates a common error in SQL: incorrect handling of NULL values.  The `bug.sql` file showcases a query that fails to retrieve rows with NULL values, while `bugSolution.sql` provides the correct approach.

The problem stems from the fact that `NULL` is not equal to `NULL` in SQL; comparisons must use `IS NULL` or `IS NOT NULL`.

This example highlights the importance of understanding NULL semantics when working with databases.