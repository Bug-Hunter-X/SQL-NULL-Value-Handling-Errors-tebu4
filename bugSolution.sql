The solution uses the `IS NULL` operator to correctly identify rows with NULL salaries.  For more comprehensive NULL handling, consider `COALESCE` to substitute a default value:

```sql
SELECT *, COALESCE(salary, 0) AS salary_or_zero FROM employees;
```

This query replaces NULL salaries with 0.  Adapt the default value to fit your specific application's requirements.