# Dynamo Faux Spatial
*Best-effort spatial queries in DynamoDB*

This work examines a few patterns for synthesizing spatial queries on top of
Amazon's DynamoDB. The optimal structure for spatial queries is an R-Tree, as
implemented in PostgreSQL's spatial index. However, for applications which
already leverage DynamoDB, this represents a sizeable infrastructure burden.
Thus, we are motivated to look at ways to make spatial queries viable (if not
strictly optimal) within DynamoDB.

### Setup
Simply run `make demo` to run the demos and see the output. The demos run on top
of DynamoDB local, which requires Java. If you don't have Java, install it on
macOS with `brew cask install java`.

## Acknowledgements
* [Social Media icon](https://commons.wikimedia.org/wiki/File:Division_of_the_Earth_into_Gauss-Krueger_zones_-_Globe.svg) due to [Hellerick](https://commons.wikimedia.org/wiki/User:Hellerick), available under [(CC BY-SA 3.0)](https://creativecommons.org/licenses/by-sa/3.0/deed.en).
