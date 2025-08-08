CREATE OR REPLACE TABLE Bella_Beats_Dataset.Cleaned_Heart_Health_Final AS
SELECT
  Id,
  date_only AS Time,  -- Rename column to "Time"
  Heart_Beat_Rate
FROM
  Bella_Beats_Dataset.Cleaned_Heart_Health;
