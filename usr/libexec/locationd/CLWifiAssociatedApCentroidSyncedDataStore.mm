@interface CLWifiAssociatedApCentroidSyncedDataStore
- (BOOL)areCentroidDbAndMetadataDbValid;
- (BOOL)isCentroidDatabaseValid;
- (BOOL)isMetadataDatabaseValid;
- (BOOL)isValid;
- (BOOL)purgeOlderRecords;
- (basic_string<char,)getBasicInfo;
@end

@implementation CLWifiAssociatedApCentroidSyncedDataStore

- (BOOL)areCentroidDbAndMetadataDbValid
{
  isCentroidDatabaseValid = [(CLWifiAssociatedApCentroidSyncedDataStore *)self isCentroidDatabaseValid];
  isMetadataDatabaseValid = [(CLWifiAssociatedApCentroidSyncedDataStore *)self isMetadataDatabaseValid];
  if (isCentroidDatabaseValid != isMetadataDatabaseValid)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1019D63F0();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      v7[0] = 67240448;
      v7[1] = isCentroidDatabaseValid;
      v8 = 1026;
      v9 = isMetadataDatabaseValid;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "[CloudKit] WifiAssociatedApCentroidStore, centroid DB and metadata DB are in different states: %{public}d vs %{public}d", v7, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019D6404(isCentroidDatabaseValid, isMetadataDatabaseValid);
    }
  }

  return isCentroidDatabaseValid && isMetadataDatabaseValid;
}

- (BOOL)isValid
{
  areCentroidDbAndMetadataDbValid = [(CLWifiAssociatedApCentroidSyncedDataStore *)self areCentroidDbAndMetadataDbValid];
  if (areCentroidDbAndMetadataDbValid)
  {
    LOBYTE(areCentroidDbAndMetadataDbValid) = self->_syncEngine != 0;
  }

  return areCentroidDbAndMetadataDbValid;
}

- (BOOL)isCentroidDatabaseValid
{
  ptr = self->_centroidDb.__ptr_;
  if (ptr)
  {
    LOBYTE(ptr) = sub_10018E854(ptr);
  }

  return ptr;
}

- (BOOL)isMetadataDatabaseValid
{
  ptr = self->_metadataDb.__ptr_;
  if (ptr)
  {
    LOBYTE(ptr) = sub_100E55440(ptr);
  }

  return ptr;
}

- (BOOL)purgeOlderRecords
{
  if ([(CLWifiAssociatedApCentroidSyncedDataStore *)self isCentroidDatabaseValid])
  {
    v3 = sub_100100690();
    v21 = sub_1001B0A10(v3);
    ptr = self->_centroidDb.__ptr_;
    *buf = CFAbsoluteTimeGetCurrent();
    sub_10023A188(ptr, &v21, buf, &v19);
    v5 = v19;
    v6 = v20;
    for (i = 1; v5 != v6; v5 += 14)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1019D6094();
      }

      v8 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v21;
        *v22 = CFAbsoluteTimeGetCurrent();
        v10 = sub_1008613B4(v5, v22);
        *buf = 134283777;
        *&buf[4] = v9;
        v26 = 2049;
        v27 = v10;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "[CloudKit] WifiAssociatedApCentroidStore, purging local records older than %{private}.1f, age, %{private}.1f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019D6518(buf);
        v11 = qword_1025D4628;
        v12 = v21;
        Current = CFAbsoluteTimeGetCurrent();
        v13 = sub_1008613B4(v5, &Current);
        *v22 = 134283777;
        *&v22[4] = v12;
        v23 = 2049;
        v24 = v13;
        LODWORD(v17) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v11, 0, "[CloudKit] WifiAssociatedApCentroidStore, purging local records older than %{private}.1f, age, %{private}.1f", v22, v17);
        v15 = v14;
        sub_100152C7C("Generic", 1, 0, 2, "[CLWifiAssociatedApCentroidSyncedDataStore purgeOlderRecords]", "%s\n", v14);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      i &= [(CLWifiAssociatedApCentroidSyncedDataStore *)self deleteRecordByMac:*v5 sync:0];
    }

    *buf = &v19;
    sub_1002394D8(buf);
  }

  else
  {
    LOBYTE(i) = 0;
  }

  return i;
}

- (basic_string<char,)getBasicInfo
{
  v2 = v1;
  if ([v1 isCentroidDatabaseValid])
  {
    v4 = v2[2];

    sub_1002395C8(v4, retstr);
  }

  else
  {

    return sub_10000EC00(retstr, "invalid database");
  }

  return result;
}

@end