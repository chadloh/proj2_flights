
# The Competition and Monopoly in the US Airline Industry

[Github Repository](https://github.com/chadloh/proj2_flights) |
[Presentation](https://1drv.ms/p/s!AtY5Rersg7_NgqFZEpcqG6fpw8Mzeg?e=JDl3fd)




## Introduction

Planning for a trip could be stressful. Especially when it includes flying somewhere, finding the right flight ticket could cause some headache. Is this cheap? Should I try another airline? Should I transfer? What are the hidden fees? Travel metasearch engines like Google flights, Kayak, or Expedia can save us time by collecting the search results from different airlines, but final decision is up to us.

There are currently more than 60 US airlines connecting the 50 states with more than 2 million flights a year. In this competitive industry, airlines’ goal is routing and pricing the flights in the most efficient and profitable way. This is a very complex problem with a myriad of factors. Not only the demands between the cities, but all other existing routes are also potentially a connecting flight that could affect the decision. Even more, all other existing routes of the competitors factor in.

## Research Question

This project covers an overview of the US airline industry and then identifies and quantifies the effects of competition and monopoly in the airline industry. The airfare can be studied from both customer's perspective and the business perspective. Here are the research questions that each side could have and that this research can potentially answer.

#### Customer’s perspective
- What does the air travel route map look like?
- Is my ticket cheaper than usual?
- Which airline is the cheapest?
- What affects the airfare?
#### Business perspective
- How does the competition affect the ticket price?
- How should we price our tickets?
- Which route should we target next?

## Overview

- Top 10 airlines make up 90% of US aviation market, and 51 others make up the other 10%.
- 2,000,000+ flights connect the 50 states every year.
- The breakdown of a ticket price is: fuel (29%), salaries (20%), assets (16%), fees and taxes (14%), maintenance (11%), others (9%), profit (1%)

## Analysis results

#### Distance
One of the most trivial factor that affects the price is the flight distance. Fuel, pilot salary, and crew salary all increase as the flight distance gets longer.
- The cheapest flights connects relatively close cities.
- The median and mean flight fare are $182.30 and $193.33, respectively.
- The most expensive flights are all cross-country flights with a maximum average cost of $360.06 between Boston and San Francisco.

The linear regression result of each airline is presented. The base fare and cost per miles are estimated.

#### Competition
Many routes are shared by multiple carriers. The linear regression of the price against distance is compared

#### Hub's effect
The effect of the hub are different for low-cost airlines and large airlines​.
- Low-cost airlines can save money by funneling all the traffic through their hubs → price decrease​
- Large full-service airlines like Delta, United, American monopolize the airport → price increase​


## Outlook

Improve the model with more data​
- Temporal data​
- Travel demand among cities​
- City characteristics​

Research on the rise of low-cost carriers​
- Compare hub-and-spoke vs point-to-point systems​

​
## Author

- [@chadloh](https://github.com/chadloh)


## Data Source

- U.S. Air Carriers Traffic and Capacity Data, Bureau of Transportation Statistics
- Domestic Airline Consumer Airfare Report, Bureau of Transportation Statistics
- World Airport Codes, Bureau of Transportation Statistics
- Airport longitude & latitude data, Ourairports.com
- How Airlines Spend Your Airfare, The Wall Street Journal
- Domestic market share of leading U.S. airlines, Statista
