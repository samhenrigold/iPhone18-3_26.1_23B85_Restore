@interface IADataStoreDaterange
- (BOOL)_clearWithMask:(int64_t)mask;
- (BOOL)_updateStartDate;
- (BOOL)destroy;
- (BOOL)markToday;
- (BOOL)persist;
- (IADataStoreDaterange)initWithDatastoreHandle:(id)handle andName:(id)name shouldBeCreated:(BOOL)created;
- (id)timesUsedInDayRangeFrom:(unint64_t)from to:(unint64_t)to;
- (unint64_t)bitmaskForLessThanDayN:(unint64_t)n;
- (unint64_t)usageFrequency;
- (unint64_t)usedInDayRangeFrom:(unint64_t)from to:(unint64_t)to;
- (void)setOriginDate:(id)date;
- (void)setStartDate:(id)date;
@end

@implementation IADataStoreDaterange

- (IADataStoreDaterange)initWithDatastoreHandle:(id)handle andName:(id)name shouldBeCreated:(BOOL)created
{
  createdCopy = created;
  location[4] = *MEMORY[0x1E69E9840];
  objc_initWeak(location, handle);
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(location);
  v59.receiver = self;
  v59.super_class = IADataStoreDaterange;
  v10 = [(IADataStoreObject *)&v59 initWithDatastoreHandle:WeakRetained andName:nameCopy shouldBeCreated:createdCopy];

  if (!v10)
  {
    goto LABEL_6;
  }

  if (createdCopy)
  {
    v13 = objc_msgSend_now(MEMORY[0x1E695DF00], v11, v12);
    originDate = v10->_originDate;
    v10->_originDate = v13;

    v17 = objc_msgSend_copy(v10->_originDate, v15, v16);
    startDate = v10->_startDate;
    v10->_startDate = v17;

    v10->_bitfield = 0;
    objc_msgSend_persist(v10, v19, v20);
LABEL_6:
    v54 = v10;
    goto LABEL_7;
  }

  v21 = objc_msgSend_datastoreHandle(v10, v11, v12);
  v24 = v21;
  if (v21)
  {
    v25 = objc_msgSend_defaultsHandle(v21, v22, v23);
    v28 = objc_msgSend_name(v10, v26, v27);
    v30 = objc_msgSend_stringByAppendingString_(v28, v29, @"_originDate");
    v32 = objc_msgSend_objectForKey_(v25, v31, v30);
    v33 = v10->_originDate;
    v10->_originDate = v32;

    v36 = objc_msgSend_defaultsHandle(v24, v34, v35);
    v39 = objc_msgSend_name(v10, v37, v38);
    v41 = objc_msgSend_stringByAppendingString_(v39, v40, @"_startDate");
    v43 = objc_msgSend_objectForKey_(v36, v42, v41);
    v44 = v10->_startDate;
    v10->_startDate = v43;

    v47 = objc_msgSend_defaultsHandle(v24, v45, v46);
    v50 = objc_msgSend_name(v10, v48, v49);
    v52 = objc_msgSend_stringByAppendingString_(v50, v51, @"_bitfield");
    v10->_bitfield = objc_msgSend_integerForKey_(v47, v53, v52);

    goto LABEL_6;
  }

  v56 = sub_1D4621008(0);
  if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
  {
    objc_msgSend_name(v10, v57, v58);
    objc_claimAutoreleasedReturnValue();
    sub_1D462DE10();
  }

  v54 = 0;
LABEL_7:

  objc_destroyWeak(location);
  return v54;
}

- (BOOL)persist
{
  v4 = objc_msgSend_datastoreHandle(self, a2, v2);
  if (!v4)
  {
    v32 = sub_1D4621008(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DE58(self, v32, v43);
    }

    goto LABEL_8;
  }

  v46.receiver = self;
  v46.super_class = IADataStoreDaterange;
  persist = [(IADataStoreObject *)&v46 persist];
  if ((persist & 1) == 0)
  {
    v32 = sub_1D4621008(persist);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DFA4(self, v32, v44);
    }

LABEL_8:
    v42 = 0;
    goto LABEL_9;
  }

  v8 = objc_msgSend_defaultsHandle(v4, v6, v7);
  v11 = objc_msgSend_originDate(self, v9, v10);
  v14 = objc_msgSend_name(self, v12, v13);
  v16 = objc_msgSend_stringByAppendingString_(v14, v15, @"_originDate");
  objc_msgSend_setObject_forKey_(v8, v17, v11, v16);

  v20 = objc_msgSend_defaultsHandle(v4, v18, v19);
  v23 = objc_msgSend_startDate(self, v21, v22);
  v26 = objc_msgSend_name(self, v24, v25);
  v28 = objc_msgSend_stringByAppendingString_(v26, v27, @"_startDate");
  objc_msgSend_setObject_forKey_(v20, v29, v23, v28);

  v32 = objc_msgSend_defaultsHandle(v4, v30, v31);
  v35 = objc_msgSend_bitfield(self, v33, v34);
  v38 = objc_msgSend_name(self, v36, v37);
  v40 = objc_msgSend_stringByAppendingString_(v38, v39, @"_bitfield");
  objc_msgSend_setInteger_forKey_(v32, v41, v35, v40);

  v42 = 1;
LABEL_9:

  return v42;
}

- (BOOL)destroy
{
  v4 = objc_msgSend_datastoreHandle(self, a2, v2);
  if (!v4)
  {
    v26 = sub_1D4621008(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DE58(self, v26, v34);
    }

    goto LABEL_8;
  }

  v37.receiver = self;
  v37.super_class = IADataStoreDaterange;
  destroy = [(IADataStoreObject *)&v37 destroy];
  if ((destroy & 1) == 0)
  {
    v26 = sub_1D4621008(destroy);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E028(self, v26, v35);
    }

LABEL_8:
    v33 = 0;
    goto LABEL_9;
  }

  v8 = objc_msgSend_defaultsHandle(v4, v6, v7);
  v11 = objc_msgSend_name(self, v9, v10);
  v13 = objc_msgSend_stringByAppendingString_(v11, v12, @"_originDate");
  objc_msgSend_removeObjectForKey_(v8, v14, v13);

  v17 = objc_msgSend_defaultsHandle(v4, v15, v16);
  v20 = objc_msgSend_name(self, v18, v19);
  v22 = objc_msgSend_stringByAppendingString_(v20, v21, @"_startDate");
  objc_msgSend_removeObjectForKey_(v17, v23, v22);

  v26 = objc_msgSend_defaultsHandle(v4, v24, v25);
  v29 = objc_msgSend_name(self, v27, v28);
  v31 = objc_msgSend_stringByAppendingString_(v29, v30, @"_bitfield");
  objc_msgSend_removeObjectForKey_(v26, v32, v31);

  v33 = 1;
LABEL_9:

  return v33;
}

- (unint64_t)usedInDayRangeFrom:(unint64_t)from to:(unint64_t)to
{
  v4 = objc_msgSend_timesUsedInDayRangeFrom_to_(self, a2, from, to);
  v7 = v4;
  if (v4)
  {
    if (objc_msgSend_unsignedLongValue(v4, v5, v6))
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)usageFrequency
{
  v4 = objc_msgSend_now(MEMORY[0x1E695DF00], a2, v2);
  v7 = objc_msgSend_originDate(self, v5, v6);
  objc_msgSend_timeIntervalSinceDate_(v4, v8, v7);
  v10 = v9;

  if (v10 >= 2505600.0)
  {
    v13 = objc_msgSend_timesUsedInDayRangeFrom_to_(self, v11, 1, 29);
    v16 = v13;
    if (v13)
    {
      if (objc_msgSend_unsignedLongValue(v13, v14, v15) == 28)
      {
        v12 = 1;
LABEL_20:

        goto LABEL_21;
      }

      v20 = objc_msgSend_usedInDayRangeFrom_to_(self, v17, 1, 8);
      v22 = objc_msgSend_usedInDayRangeFrom_to_(self, v21, 8, 15);
      v24 = objc_msgSend_usedInDayRangeFrom_to_(self, v23, 15, 22);
      v26 = objc_msgSend_usedInDayRangeFrom_to_(self, v25, 22, 29);
      if (v20 && v22 && v24 && v26)
      {
        if (v20 == 2 && v22 == 2 && v24 == 2 && v26 == 2)
        {
          v12 = 2;
          goto LABEL_20;
        }

        v30 = objc_msgSend_usedInDayRangeFrom_to_(self, v27, 1, 29);
        if (v30 == 2)
        {
          v12 = 3;
          goto LABEL_20;
        }

        if (v30)
        {
          v12 = 4;
          goto LABEL_20;
        }

        v18 = sub_1D4621008(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1D462E130(self, v18, v31);
        }
      }

      else
      {
        v18 = sub_1D4621008(v26);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1D462E1B4(self, v18, v28);
        }
      }
    }

    else
    {
      v18 = sub_1D4621008(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1D462E238(self, v18, v19);
      }
    }

    v12 = 5;
    goto LABEL_20;
  }

  v12 = 0;
LABEL_21:

  return v12;
}

- (unint64_t)bitmaskForLessThanDayN:(unint64_t)n
{
  if (n <= 0x1F)
  {
    return ~(-1 << n);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

- (id)timesUsedInDayRangeFrom:(unint64_t)from to:(unint64_t)to
{
  v30 = *MEMORY[0x1E69E9840];
  if (to < from)
  {
    v7 = sub_1D4621008(self);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v10 = objc_msgSend_name(self, v8, v9);
      v24 = 138478339;
      v25 = v10;
      v26 = 2048;
      toCopy = to;
      v28 = 2048;
      fromCopy = from;
      _os_log_fault_impl(&dword_1D460F000, v7, OS_LOG_TYPE_FAULT, "Daterange with name %{private}@ requires endDayNumber (%lu) >= startDayNumber (%lu)", &v24, 0x20u);
    }

LABEL_10:

    v21 = 0;
    goto LABEL_11;
  }

  updated = objc_msgSend__updateStartDate(self, a2, from);
  if ((updated & 1) == 0)
  {
    v7 = sub_1D4621008(updated);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E2BC(self, v7, v22);
    }

    goto LABEL_10;
  }

  v13 = objc_msgSend_bitmaskForDayRangeFrom_to_(self, v12, from, to);
  v17 = vdup_n_s32(objc_msgSend_bitfield(self, v14, v15) & v13);
  v18 = 0x100000000;
  v19 = 0uLL;
  v20 = 32;
  do
  {
    v19 = vaddw_u32(v19, vand_s8(vshl_u32(v17, vneg_s32(v18)), 0x100000001));
    v18 = vadd_s32(v18, 0x200000002);
    v20 -= 2;
  }

  while (v20);
  v21 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v16, vaddvq_s64(v19));
LABEL_11:

  return v21;
}

- (BOOL)_updateStartDate
{
  v4 = objc_msgSend_now(MEMORY[0x1E695DF00], a2, v2);
  v7 = objc_msgSend_startDate(self, v5, v6);
  objc_msgSend_timeIntervalSinceDate_(v4, v8, v7);
  v10 = v9;

  v14 = (v10 / 86400.0);
  if ((v14 & 0x8000000000000000) != 0)
  {
    v16 = sub_1D4621008(v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E340(self, v16, v17);
    }

    v15 = 0;
  }

  else
  {
    if (v14)
    {
      if (v14 < 0x20)
      {
        v18 = objc_msgSend_bitfield(self, v12, v13) > (0x80000000 >> v14) - 1;
        self->_bitfield = (objc_msgSend_bitfield(self, v19, v20) << v14) | (v18 << 31);
        v21 = MEMORY[0x1E695DF00];
        v24 = objc_msgSend_startDate(self, v22, v23);
        v26 = objc_msgSend_dateWithTimeInterval_sinceDate_(v21, v25, v24, v14 * 86400.0);
        startDate = self->_startDate;
        self->_startDate = v26;

        v15 = objc_msgSend_persist(self, v28, v29);
        goto LABEL_10;
      }

      self->_bitfield = (objc_msgSend_bitfield(self, v12, v13) != 0) << 31;
    }

    v15 = 1;
  }

LABEL_10:

  return v15;
}

- (BOOL)markToday
{
  updated = objc_msgSend__updateStartDate(self, a2, v2);
  if (updated)
  {
    self->_bitfield = objc_msgSend_bitfield(self, v5, v6) | 1;

    return objc_msgSend_persist(self, v7, v8);
  }

  else
  {
    v10 = sub_1D4621008(updated);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E2BC(self, v10, v11);
    }

    return 0;
  }
}

- (BOOL)_clearWithMask:(int64_t)mask
{
  maskCopy = mask;
  updated = objc_msgSend__updateStartDate(self, a2, mask);
  v6 = updated;
  if (updated)
  {
    self->_bitfield &= maskCopy;
  }

  else
  {
    v7 = sub_1D4621008(updated);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E2BC(self, v7, v8);
    }
  }

  return v6;
}

- (void)setStartDate:(id)date
{
  v4 = objc_msgSend_copy(date, a2, date);
  startDate = self->_startDate;
  self->_startDate = v4;

  MEMORY[0x1EEE66BB8](v4, startDate);
}

- (void)setOriginDate:(id)date
{
  v4 = objc_msgSend_copy(date, a2, date);
  originDate = self->_originDate;
  self->_originDate = v4;

  MEMORY[0x1EEE66BB8](v4, originDate);
}

@end