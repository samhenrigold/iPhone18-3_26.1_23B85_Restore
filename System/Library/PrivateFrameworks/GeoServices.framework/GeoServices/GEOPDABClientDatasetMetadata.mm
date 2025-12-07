@interface GEOPDABClientDatasetMetadata
- (unint64_t)hash;
@end

@implementation GEOPDABClientDatasetMetadata

- (unint64_t)hash
{
  [(GEOPDABClientDatasetMetadata *)self readAll:1];
  if (*&self->_flags)
  {
    v3 = 2654435761 * self->_bucketId;
    if ((*&self->_flags & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    return v4 ^ v3;
  }

  v3 = 0;
  if ((*&self->_flags & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_datasetId;
  return v4 ^ v3;
}

@end