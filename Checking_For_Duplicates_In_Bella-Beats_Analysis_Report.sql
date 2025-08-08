SELECT
  Id,
  Activity_Date,
  Total_Steps,
  Calories,
  Total_Minutes_Asleep,
  Heart_Beat_Rate,
  COUNT(*) AS duplicate_count
FROM
  `chromatic-yeti-462107-q7.Bella_Beats_Dataset.Bella_Beats_Analysis_Report`
GROUP BY
  Id, Activity_Date, Total_Steps, Calories, Total_Minutes_Asleep, Heart_Beat_Rate
HAVING
  COUNT(*) > 1;
