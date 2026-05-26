# Product data policy

## MVP data source

The first version uses manual product dimensions.

Reason:

- Width, depth, and height are not enough for accurate fit checking.
- Door angle, hinge position, handle protrusion, drawer pull-out space, and ventilation clearance are also needed.
- Shopping sites may not provide these fields in a stable structured format.

## Danawa integration plan

Recommended order:

1. Manual dimension input.
2. Internal sample product database.
3. External product search link.
4. Official partnership or approved API.
5. Manufacturer spec verification.

Do not scrape commercial product data without checking terms, permission, caching limits, and attribution rules.

## Confidence field

Every product record should have a `confidence` value.

Example:

```txt
0.3 = user entered or unverified
0.6 = shopping page spec text
0.9 = manufacturer manual or verified source
```
