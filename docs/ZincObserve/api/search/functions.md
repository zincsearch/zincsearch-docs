
## Functions

### Scalar Functions

These can use in query SQL.

#### Query Functions

- match(field, 'keyword')
- match_no_case(field, 'keyword')
- match_all('keyword')
- match_all_no_case('keyword')

#### Math Functions
abs(x)
absolute value

acos(x)
inverse cosine

asin(x)
inverse sine

atan(x)
inverse tangent

atan2(y, x)
inverse tangent of y / x

ceil(x)
nearest integer greater than or equal to argument

cos(x)
cosine

exp(x)
exponential

floor(x)
nearest integer less than or equal to argument

ln(x)
natural logarithm

log10(x)
base 10 logarithm

log2(x)
base 2 logarithm

power(base, exponent)
base raised to the power of exponent

round(x)
round to nearest integer

signum(x)
sign of the argument (-1, 0, +1)

sin(x)
sine

sqrt(x)
square root

tan(x)
tangent

trunc(x)
truncate toward zero

#### String Functions

ascii
bit_length
btrim
char_length
character_length
concat
concat_ws
chr
initcap
left
length
lower
lpad
ltrim
md5
octet_length
repeat
replace
reverse
right
rpad
rtrim
digest
split_part
starts_with
strpos
substr
translate
trim
upper

#### Temporal Functions

to_timestamp
to_timestamp() is similar to the standard SQL function. It performs conversions to type Timestamp(Nanoseconds, None), from:

Timestamp strings

1997-01-31T09:26:56.123Z # RCF3339

1997-01-31T09:26:56.123-05:00 # RCF3339

1997-01-31 09:26:56.123-05:00 # close to RCF3339 but with a space er than T

1997-01-31T09:26:56.123 # close to RCF3339 but no timezone et specified

1997-01-31 09:26:56.123 # close to RCF3339 but uses a space and timezone offset

1997-01-31 09:26:56 # close to RCF3339, no fractional seconds

An Int64 array/column, values are nanoseconds since Epoch UTC

Other Timestamp() columns or values

Note that conversions from other Timestamp and Int64 types can also be performed using CAST(.. AS Timestamp). However, the conversion functionality here is present for consistency with the other to_timestamp_xx() functions.

to_timestamp_millis
to_timestamp_millis() does conversions to type Timestamp(Milliseconds, None), from:

Timestamp strings, the same as supported by the regular timestamp() function (except the output is a timestamp of Milliseconds resolution)

1997-01-31T09:26:56.123Z # RCF3339

1997-01-31T09:26:56.123-05:00 # RCF3339

1997-01-31 09:26:56.123-05:00 # close to RCF3339 but with a space er than T

1997-01-31T09:26:56.123 # close to RCF3339 but no timezone et specified

1997-01-31 09:26:56.123 # close to RCF3339 but uses a space and timezone offset

1997-01-31 09:26:56 # close to RCF3339, no fractional seconds

An Int64 array/column, values are milliseconds since Epoch UTC

Other Timestamp() columns or values

Note that CAST(.. AS Timestamp) converts to Timestamps with Nanosecond resolution; this function is the only way to convert/cast to millisecond resolution.

to_timestamp_micros
to_timestamp_micros() does conversions to type Timestamp(Microseconds, None), from:

Timestamp strings, the same as supported by the regular timestamp() function (except the output is a timestamp of microseconds resolution)

1997-01-31T09:26:56.123Z # RCF3339

1997-01-31T09:26:56.123-05:00 # RCF3339

1997-01-31 09:26:56.123-05:00 # close to RCF3339 but with a space er than T

1997-01-31T09:26:56.123 # close to RCF3339 but no timezone et specified

1997-01-31 09:26:56.123 # close to RCF3339 but uses a space and timezone offset

1997-01-31 09:26:56 # close to RCF3339, no fractional seconds

An Int64 array/column, values are microseconds since Epoch UTC

Other Timestamp() columns or values

Note that CAST(.. AS Timestamp) converts to Timestamps with Nanosecond resolution; this function is the only way to convert/cast to microsecond resolution.

to_timestamp_seconds
to_timestamp_seconds() does conversions to type Timestamp(Seconds, None), from:

Timestamp strings, the same as supported by the regular timestamp() function (except the output is a timestamp of secondseconds resolution)

1997-01-31T09:26:56.123Z # RCF3339

1997-01-31T09:26:56.123-05:00 # RCF3339

1997-01-31 09:26:56.123-05:00 # close to RCF3339 but with a space er than T

1997-01-31T09:26:56.123 # close to RCF3339 but no timezone et specified

1997-01-31 09:26:56.123 # close to RCF3339 but uses a space and timezone offset

1997-01-31 09:26:56 # close to RCF3339, no fractional seconds

An Int64 array/column, values are seconds since Epoch UTC

Other Timestamp() columns or values

Note that CAST(.. AS Timestamp) converts to Timestamps with Nanosecond resolution; this function is the only way to convert/cast to seconds resolution.

extract
extract(field FROM source)

The extract function retrieves subfields such as year or hour from date/time values. source must be a value expression of type timestamp, Date32, or Date64. field is an identifier that selects what field to extract from the source value. The extract function returns values of type u32.

year :extract(year FROM to_timestamp('2020-09-08T12:00:00+00:00')) -> 2020

month:extract(month FROM to_timestamp('2020-09-08T12:00:00+00:00')) -> 9

week :extract(week FROM to_timestamp('2020-09-08T12:00:00+00:00')) -> 37

day: extract(day FROM to_timestamp('2020-09-08T12:00:00+00:00')) -> 8

hour: extract(hour FROM to_timestamp('2020-09-08T12:00:00+00:00')) -> 12

minute: extract(minute FROM to_timestamp('2020-09-08T12:01:00+00:00')) -> 1

second: extract(second FROM to_timestamp('2020-09-08T12:00:03+00:00')) -> 3

date_part
date_part('field', source)

The date_part function is modeled on the postgres equivalent to the SQL-standard function extract. Note that here the field parameter needs to be a string value, not a name. The valid field names for date_part are the same as for extract.

date_part('second', to_timestamp('2020-09-08T12:00:12+00:00')) -> 12

date_trunc
date_bin
from_unixtime
now
Returns current time as Timestamp(Nanoseconds, UTC). Returns same value for the function wherever it appears in the statement, using a value chosen at planning time.




### Aggregate Functions

Aggregate functions operate on a set of values to compute a single result. Please refer to PostgreSQL for usage of standard SQL functions.

### General

histogram

min

max

count

avg

sum

array_agg

Statistical
var / var_samp / var_pop

stddev / stddev_samp / stddev_pop

covar / covar_samp / covar_pop

corr

Approximate
approx_distinct
approx_distinct(x) -> uint64 returns the approximate number (HyperLogLog) of distinct input values

approx_median
approx_median(x) -> x returns the approximate median of input values. it is an alias of approx_percentile_cont(x, 0.5).

approx_percentile_cont
approx_percentile_cont(x, p) -> x return the approximate percentile (TDigest) of input values, where p is a float64 between 0 and 1 (inclusive).

It supports raw data as input and build Tdigest sketches during query time, and is approximately equal to approx_percentile_cont_with_weight(x, 1, p).

approx_percentile_cont(x, p, n) -> x return the approximate percentile (TDigest) of input values, where p is a float64 between 0 and 1 (inclusive),

and n (default 100) is the number of centroids in Tdigest which means that if there are n or fewer unique values in x, you can expect an exact result.

A higher value of n results in a more accurate approximation and the cost of higher memory usage.

approx_percentile_cont_with_weight
approx_percentile_cont_with_weight(x, w, p) -> x returns the approximate percentile (TDigest) of input values with weight, where w is weight column expression and p is a float64 between 0 and 1 (inclusive).

It supports raw data as input or pre-aggregated TDigest sketches, then builds or merges Tdigest sketches during query time. TDigest sketches are a list of centroid (x, w), where x stands for mean and w stands for weight.

It is suitable for low latency OLAP system where a streaming compute engine (e.g. Spark Streaming/Flink) pre-aggregates data to a data store, then queries using Datafusion.

