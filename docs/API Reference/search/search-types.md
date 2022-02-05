

## Term

A term query searches for an exact term.

e.g. Search for 
A term query is the simplest possible query. It performs an exact match in the index for the provided term.

Most of the time users should use a Match Query instead.

## Match
A match query is like a term query, but the input text is analyzed first. An attempt is made to use the same analyzer that was used when the field was indexed.

The match query can optionally perform fuzzy matching. If the fuzziness parameter is set to a non-zero integer the analyzed text will be matched with the specified level of fuzziness. Also, the prefix_length parameter can be used to require that the term also have the same prefix of the specified length.

## Match Phrase
The match phrase query is like the phrase query, but the input text is analyzed and a phrase query is built with the terms resulting from the analysis.

## Prefix
The prefix query finds documents containing terms that start with the provided prefix.

## Fuzzy
A fuzzy query is a term query that matches terms within a specified edit distance (Levenshtein distance). Also, you can optionally specify that the term must have a matching prefix of the specified length.

## Date Range
The date range query finds documents containing a date value in the specified field within the specified range. You can omit one endpoint, but not both. The inclusiveStart and inclusiveEnd properties control whether or not the end points are included or excluded.

## Query String
The query language query allows humans to describe complex queries using a simple syntax. There is a separate page with the full query language specification


