select
    county_state_name,
    population,
    CAST(
      REPLACE(`GHG emissions mtons CO2e`, ',', '') 
      AS DOUBLE
      ) as Total_Emissions
from emissions.default.emissions_data
ORDER BY Total_Emissions DESC
limit 10 