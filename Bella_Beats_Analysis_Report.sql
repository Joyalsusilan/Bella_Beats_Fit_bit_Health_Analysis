CREATE OR REPLACE TABLE `chromatic-yeti-462107-q7.Bella_Beats_Dataset.Bella_Beats_Analysis_Report` AS
SELECT
  
  IFNULL(CAST(a.Activity_Date AS STRING), 'Not-Given') AS Activity_Date,
  IFNULL(CAST(a.Total_Steps AS STRING), 'Not-Given') AS Total_Steps,
  IFNULL(CAST(a.Calories AS STRING), 'Not-Given') AS Calories,
  IFNULL(CAST(s.Total_Minutes_Asleep AS STRING), 'Not-Given') AS Total_Minutes_Asleep,
  IFNULL(CAST(h.Heart_Beat_Rate AS STRING), 'Not-Given') AS Heart_Beat_Rate
FROM
  `chromatic-yeti-462107-q7.Bella_Beats_Dataset.Daily_Activity_Master_Table` AS a

LEFT JOIN
  `chromatic-yeti-462107-q7.Bella_Beats_Dataset.Sleep_Data` AS s
  ON a.Id = s.Id AND a.Activity_Date = s.Sleep_Day

LEFT JOIN
  `chromatic-yeti-462107-q7.Bella_Beats_Dataset.Cleaned_Heart_Health_Final` AS h
  ON a.Id = h.Id AND a.Activity_Date = h.Time;