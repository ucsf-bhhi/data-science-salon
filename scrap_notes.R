## Scrap


## Data transformation

Sometimes we want to make a fancy plot or a summary table of statistics, but more often than not, the data we obtain is not in the format we need it in to make these things. This is where **data transformation** or **data wrangling** becomes an important step in your data workflow.

In this part of the less I will rely heavily on the `dplyr` package and provide a broad overview of what data transformation process can look like.

## Getting to know your data

- `head()` : Base R, prints first 6 rows by default
- `glimpse()` : From `dplyr` allows you to see every column in the data frame, a subset of the values in each column, and the data type in each column. This can be helpful to diagnosis issues with the data quality.
- `View()`

## Filtering data

- `filter()` : From `dplyr` allows you to provide it a data frame and one or more conditions where cases == TRUE are retained in the output data frame.
- The convention in R is to specify the variable to evaluate on the left side hand of the formula and the value to include on the right hand side.
- There are different ways to specify a condition, it can be:
  - Exact match or `==`
- Everything but this exact match `!=`
- In this vector of values, `%in%`
- _More advanced options_ 
- You can use `!` to include the _inverse_
- You can use partial string match with `str_detect()` function from `stringr` package (one of my favorites!)

Solutions are endless!
  
  ## Generic examples
  
  ```r
variable == 1 # Exact match to value of 1
variable != 1 # Everything BUT exact match to value of 1
variable %in% c(1, 4, 5) # Value is equal to 1, 4, or 5
!variable %in% c(1, 4, 5) # All values but 1, 4, or 5

```

## Sanity checks

- After ea/ data transformation step, it is best practice to provide some test that your processing worked as expected. 
- For instance, compare the number of rows and columns before and after filtering and/or the number of unique values of the filtered variable(s) before and after filtering.

## Changing data type

## Re-coding

# Ask Eve about covering merges, data binds, and reshaping data in next lecture
