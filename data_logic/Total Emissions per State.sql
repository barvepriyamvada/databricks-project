select
    state_abbr,
    SUM(CAST(
      REPLACE(`GHG emissions mtons CO2e`, ',', '') 
      AS DOUBLE
      )) as Total_Emissions
from emissions.default.emissions_data
group by state_abbr
ORDER BY Total_Emissions DESC
limit 10 