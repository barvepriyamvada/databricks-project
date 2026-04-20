select
    county_state_name,
    population,
    CAST(
      REPLACE(`GHG emissions mtons CO2e`, ',', '') 
      AS DOUBLE
      ) / nullif(
        CAST(
          REPLACE(`Population`, ',', '') 
          AS DOUBLE
        ), 0
      ) as Emissions_per_person
from emissions.default.emissions_data
ORDER BY emissions_per_person DESC