
There are 2 primary items that need to be stored in ZincSearch. 

1. Indexes
1. Metadata of indexes

Metadata of indexes is always stored on disk.

Indexes can be stored in 3 different places.

## Disk

Disk is default storage place for indexes. Make sure that you have enough storage available on your disk for index storage. During data ingestion the index name that you provide may not be present. In that case a new disk based index will be created automatically for storing the index data.
