# 2020-04-29

Start with a simple model of Covid spread, combined with a simple
model of how people are tested and how tests are reported.

Ask what would happen if people fit models to test reports, based on
either collection date, or report date.

Factors affecting testing include capacity, weekdays and holidays,
testing guidelines, and test-seeking behaviour (how much covid and
non-covid illness, how much alarm there is in the population)

Eventually, take simple methods of correcting or fitting that account
for observed testing patterns.

## A simple COVID model

Presumably we can choose from something that's ready to go?

Or maybe not? Come up with a box structure and build a simple
simulation engine on top of it.

Step 1 is to make a box model that we like (by referring to others' box models).
* Maybe build the observation process right on top of that?

SEIR seems necessary. Do we need anything else?
* asymptomatic, pre-symptomatic
* Maybe something like S => E => P, and then a split into symptomatic
and asymptomatic infectious individuals, followed by R
* S E P I_a/I_s R
* This seems to already be a thing (Stanford, McMaster)

Box model could incorporate simple phenomenological changes in R(t)
for example, and see if we can pull this out.

## A simple observation model

The simplest starting point here is just a delay kernel. We could also
think about accounting explicitly for backlogs

Sample collection (disease based, travel based, tracing based, panic based)
* Maybe start after the travel-important period?

Testing and reporting
* Availability of tests and activeness of reporting could be random or
imposed from outside
* Key might be to have explicit boxes of people who wish to be tested;
have been tested but not reported

How should we add this to the box model?

## Brainstorming

Resources:
* https://eur03.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.google.com%2Fspreadsheets%2Fd%2F1hUZlVDPfa5C8KgURoP_3dAiUQgI6rdb7A5e_g8NcPaY%2Fedit%23gid%3D0&amp;data=02%7C01%7C%7C9d09d8c9a4f74cf36c7d08d7ec54f351%7Ca6fa3b030a3c42588433a120dffcd348%7C0%7C0%7C637237721942289211&amp;sdata=ZUrVxl2iHla42Zr%2BJkhr53LkqPbYUTCWL5CqgSM%2Bcwg%3D&amp;reserved=0
* https://eur03.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.com%2FICI3D%2FmodelTaxonomy_SI&amp;data=02%7C01%7C%7C9d09d8c9a4f74cf36c7d08d7ec54f351%7Ca6fa3b030a3c42588433a120dffcd348%7C0%7C0%7C637237721942289211&amp;sdata=JCavpvL0mMYUPrHOZ%2BK9pb8NazDOEIHxq5S3YhDr9Tc%3D&amp;reserved=0

Future points:
* Quarantine and isolation?
* Social distancing and interactions with testing

### Next steps

SMART subgroup
* Disease box diagram COB Thursday and share with bigger group
* Disease plus observation box diagram COB Friday and share with bigger group

Juliet
* Set up a repo

Amandla
* ngawethu!
