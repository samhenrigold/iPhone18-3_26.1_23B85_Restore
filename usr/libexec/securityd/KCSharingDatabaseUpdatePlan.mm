@interface KCSharingDatabaseUpdatePlan
- (BOOL)applyInTransaction:(__OpaqueSecDbConnection *)transaction withAccessGroups:(id)groups updateInfos:(id)infos error:(id *)error;
- (BOOL)applyPasskeysFixForMirrorEntriesInTransaction:(__OpaqueSecDbConnection *)transaction withAccessGroups:(id)groups error:(id *)error;
- (BOOL)insertIntoMirrorWithMirrorEntry:(id)entry withAccessGroups:(id)groups applyInTransaction:(__OpaqueSecDbConnection *)transaction updateInfos:(id)infos withError:(id *)error;
- (KCSharingDatabaseUpdatePlan)init;
- (KCSharingDatabaseUpdatePlan)initWithLoggingIdentifier:(id)identifier;
- (id)groupUpdateInfoFrom:(SecDbItem *)from to:(id)to;
- (id)removeCorruptedItemAndUpdateLocalItemWithMirrorItem:(id)item inTransaction:(__OpaqueSecDbConnection *)transaction withAccessGroups:(id)groups error:(id *)error;
- (id)updateInfoForDeletion:(SecDbItem *)deletion;
- (id)updateLocalItemWithRemoteItem:(id)item inTransaction:(__OpaqueSecDbConnection *)transaction withAccessGroups:(id)groups error:(id *)error;
@end

@implementation KCSharingDatabaseUpdatePlan

- (id)removeCorruptedItemAndUpdateLocalItemWithMirrorItem:(id)item inTransaction:(__OpaqueSecDbConnection *)transaction withAccessGroups:(id)groups error:(id *)error
{
  itemCopy = item;
  groupsCopy = groups;
  v66 = 0;
  v52 = itemCopy;
  if ([itemCopy type] != 1)
  {
    v31 = KCSharingLogObject();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "FixUp is not supported for non-passkey item", buf, 2u);
    }

    goto LABEL_35;
  }

  v9 = KCSharingLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Trying to remove corrupted item and reinsert/update local item with fixup plan", buf, 2u);
  }

  privateKey = [itemCopy privateKey];
  v49 = [privateKey attributesWithAccessGroups:groupsCopy error:error];

  if (!v49)
  {
    v31 = KCSharingLogObject();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      privateKey2 = [itemCopy privateKey];
      *buf = 138477827;
      *&buf[4] = privateKey2;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to get attributes out of %{private}@", buf, 0xCu);
    }

LABEL_35:

LABEL_59:
    v29 = 0;
LABEL_60:
    v39 = 0;
    goto LABEL_61;
  }

  privateKey3 = [itemCopy privateKey];
  databaseItemClass = [objc_opt_class() databaseItemClass];
  v46 = sub_10001A690(databaseItemClass, v49, dword_10039E2F8, &v66);

  if (!v46)
  {
    v32 = v66;
    if (error)
    {
      *error = v66;
      v66 = 0;
    }

    else if (v66)
    {
      v66 = 0;
      CFRelease(v32);
    }

    goto LABEL_59;
  }

  v13 = sub_10001B350(v46, 1, 0, &v66);
  if (!v13)
  {
    v33 = KCSharingLogObject();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      privateKey4 = [itemCopy privateKey];
      *buf = 138478083;
      *&buf[4] = privateKey4;
      *&buf[12] = 2113;
      *&buf[14] = v66;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to get primary key attributes out of %{private}@ with error: %{private}@", buf, 0x16u);
    }

    v34 = v66;
    if (error)
    {
      *error = v66;
      v66 = 0;
    }

    else if (v66)
    {
      v66 = 0;
      CFRelease(v34);
    }

    goto LABEL_59;
  }

  v14 = v13;
  v50 = objc_alloc_init(NSMutableDictionary);
  [v50 setObject:kSecClassKey forKeyedSubscript:kSecClass];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v14;
  v15 = [(__CFDictionary *)obj countByEnumeratingWithState:&v62 objects:v73 count:16];
  if (v15)
  {
    v16 = *v63;
    v17 = kSecAttrKeyCreator;
    v18 = kSecAttrStartDate;
    v54 = kSecAttrEndDate;
    v53 = kSecAttrMultiUser;
    do
    {
      v19 = 0;
      do
      {
        if (*v63 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v62 + 1) + 8 * v19);
        if (([v20 isEqual:{v17, v46}] & 1) != 0 || (objc_msgSend(v20, "isEqual:", v18) & 1) != 0 || (objc_msgSend(v20, "isEqual:", v54) & 1) != 0 || (objc_msgSend(v20, "isEqual:", kSecAttrTokenID) & 1) != 0 || (objc_msgSend(v20, "isEqual:", v53) & 1) != 0 || (objc_msgSend(v20, "isEqual:", kSecAttrKeyClass) & 1) != 0 || objc_msgSend(v20, "isEqual:", kSecAttrSyncViewHint))
        {
          v21 = KCSharingLogObject();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138477827;
            *&buf[4] = v20;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Skipping adding %{private}@ attr in fixup", buf, 0xCu);
          }
        }

        else
        {
          v22 = KCSharingLogObject();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138477827;
            *&buf[4] = v20;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "adding %{private}@ attr in fixup", buf, 0xCu);
          }

          v21 = [(__CFDictionary *)v49 objectForKeyedSubscript:v20];
          [v50 setObject:v21 forKeyedSubscript:v20];
        }

        v19 = v19 + 1;
      }

      while (v15 != v19);
      v23 = [(__CFDictionary *)obj countByEnumeratingWithState:&v62 objects:v73 count:16];
      v15 = v23;
    }

    while (v23);
  }

  v24 = [(__CFDictionary *)v49 objectForKeyedSubscript:kSecAttrLabel];
  [v50 setObject:v24 forKeyedSubscript:kSecAttrLabel];

  [v50 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrIsPermanent];
  [v50 setObject:kSecAttrKeyClassPublic forKeyedSubscript:kSecAttrKeyClass];
  [v50 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrIsPrivate];
  [v50 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrIsModifiable];
  [v50 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrIsExtractable];
  [v50 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrCanDecrypt];
  [v50 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrCanDerive];
  [v50 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrCanSign];
  [v50 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrCanUnwrap];
  v25 = KCSharingLogObject();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    *&buf[4] = v50;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Trying to delete item with query: %{private}@", buf, 0xCu);
  }

  v26 = sub_100006454(v50, 0, -1, 0, &v66);
  if (v26)
  {
    v27 = v26;
    v60 = 0;
    v61 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v72 = 1;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_1000582C8;
    v56[3] = &unk_100334AE8;
    v56[5] = buf;
    v56[6] = transaction;
    v56[4] = &v57;
    v28 = sub_10001DC5C(v26, 0, transaction, &v61, v56);
    sub_10000DF70(v27, 0);
    if (v28)
    {
      if (*(*&buf[8] + 24))
      {
        v29 = [(KCSharingDatabaseUpdatePlan *)self updateLocalItemWithRemoteItem:v52 inTransaction:transaction withAccessGroups:groupsCopy error:error];
        v30 = 1;
LABEL_76:
        _Block_object_dispose(&v57, 8);
        _Block_object_dispose(buf, 8);
        goto LABEL_77;
      }

      v41 = KCSharingLogObject();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v45 = v58[3];
        *v67 = 138478083;
        v68 = v50;
        v69 = 2114;
        v70 = v45;
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Failed to perform delete with %{private}@ with error:%{public}@", v67, 0x16u);
      }

      v42 = v58[3];
      if (error)
      {
        v30 = 0;
        v29 = 0;
        *error = v42;
        v58[3] = 0;
        goto LABEL_76;
      }

      if (v42)
      {
        v58[3] = 0;
        CFRelease(v42);
      }
    }

    else
    {
      v37 = KCSharingLogObject();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *v67 = 138478083;
        v68 = v50;
        v69 = 2114;
        v70 = v61;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to perform query with %{private}@ with error:%{public}@", v67, 0x16u);
      }

      v38 = v61;
      if (error)
      {
        v30 = 0;
        v29 = 0;
        *error = v61;
        v61 = 0;
        goto LABEL_76;
      }

      if (v61)
      {
        v61 = 0;
        CFRelease(v38);
      }
    }

    v30 = 0;
    v29 = 0;
    goto LABEL_76;
  }

  v35 = KCSharingLogObject();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 138478083;
    *&buf[4] = v50;
    *&buf[12] = 2114;
    *&buf[14] = v66;
    _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Failed to form query with %{private}@ with error:%{public}@", buf, 0x16u);
  }

  v36 = v66;
  if (error)
  {
    v30 = 0;
    v29 = 0;
    *error = v66;
    v66 = 0;
  }

  else
  {
    if (v66)
    {
      v66 = 0;
      CFRelease(v36);
    }

    v30 = 0;
    v29 = 0;
  }

LABEL_77:

  if ((v30 & 1) == 0)
  {
    goto LABEL_60;
  }

  v29 = v29;
  v39 = v29;
LABEL_61:

  return v39;
}

- (BOOL)applyPasskeysFixForMirrorEntriesInTransaction:(__OpaqueSecDbConnection *)transaction withAccessGroups:(id)groups error:(id *)error
{
  groupsCopy = groups;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = self->_reinsertIntoLocal;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v33 objects:v39 count:16];
  v10 = v9 == 0;
  if (!v9)
  {
LABEL_36:

    goto LABEL_37;
  }

  v11 = v9;
  transactionCopy = transaction;
  v26 = v9 == 0;
  v12 = *v34;
  v30 = groupsCopy;
  v28 = v8;
  while (2)
  {
    v13 = 0;
    do
    {
      if (*v34 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v33 + 1) + 8 * v13);
      if ([v14 type] == 1)
      {
        v32 = 0;
        v15 = [v14 remoteItemWithAccessGroups:groupsCopy error:&v32];
        v16 = v32;
        if (v15)
        {
          contents = [v15 contents];
          if (contents)
          {
            if (!-[NSObject isFullyDecoded](v15, "isFullyDecoded") || [v14 flags])
            {
              v18 = v16;
LABEL_12:

              v16 = v18;
              groupsCopy = v30;
              goto LABEL_21;
            }

            v31 = v16;
            v20 = [(KCSharingDatabaseUpdatePlan *)self removeCorruptedItemAndUpdateLocalItemWithMirrorItem:contents inTransaction:transactionCopy withAccessGroups:groupsCopy error:&v31];
            v18 = v31;

            if (v20)
            {
              v21 = -[KCSharingMirrorEntry initWithUpdatedLocalItem:forMirrorEntry:flags:]([KCSharingMirrorEntry alloc], "initWithUpdatedLocalItem:forMirrorEntry:flags:", v20, v14, [v14 flags]);
              if (![(KCSharingDatabaseUpdatePlan *)self insertIntoMirrorWithMirrorEntry:v21 withAccessGroups:v30 applyInTransaction:transactionCopy updateInfos:0 withError:error])
              {
                v23 = v20;
                v24 = KCSharingLogObject();
                v8 = v28;
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138477827;
                  v38 = v21;
                  _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to insert into mirror: %{private}@", buf, 0xCu);
                }

                groupsCopy = v30;
                v10 = v26;
                goto LABEL_36;
              }

              HIDWORD(v26) = 1;
              v8 = v28;
              goto LABEL_12;
            }

            v19 = KCSharingLogObject();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v38 = v18;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to update local item with mirror item with error: %{public}@", buf, 0xCu);
            }

            v16 = v18;
            groupsCopy = v30;
            v8 = v28;
          }

          else
          {
            v19 = KCSharingLogObject();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "failed to decode mirror remote item result", buf, 2u);
            }
          }
        }

        else
        {
          v15 = KCSharingLogObject();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v38 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "failed to decode mirror entry with error: %{public}@", buf, 0xCu);
          }
        }
      }

      else
      {
        v16 = KCSharingLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Fixup is not supported for non-passkey item", buf, 2u);
        }
      }

LABEL_21:

      v13 = v13 + 1;
    }

    while (v11 != v13);
    v22 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v33 objects:v39 count:16];
    v11 = v22;
    if (v22)
    {
      continue;
    }

    break;
  }

  if ((v26 & 0x100000000) != 0)
  {
    sub_10017E868();
  }

  v10 = 1;
LABEL_37:

  return v10;
}

- (id)updateLocalItemWithRemoteItem:(id)item inTransaction:(__OpaqueSecDbConnection *)transaction withAccessGroups:(id)groups error:(id *)error
{
  itemCopy = item;
  groupsCopy = groups;
  v43 = 0;
  type = [itemCopy type];
  if (type == 2)
  {
    internetPassword = [itemCopy internetPassword];
    v14 = [internetPassword attributesWithAccessGroups:groupsCopy error:error];

    if (v14)
    {
      internetPassword2 = [itemCopy internetPassword];
      databaseItemClass = [objc_opt_class() databaseItemClass];
      v17 = sub_10001A690(databaseItemClass, v14, dword_10039E2F8, &v43);

      if (v17)
      {
        v26 = sub_100019F7C();
        v42 = 0;
        sub_10001A804(v17, v26, &v42);
        if (v26)
        {
          CFRelease(v26);
        }

        v19 = v42;
        if (!v42)
        {
          v35 = _NSConcreteStackBlock;
          v36 = 3221225472;
          v37 = sub_100058C1C;
          v38 = &unk_100334A38;
          v28 = v17;
          v39 = v28;
          if (sub_10001AA4C(v28, transaction, &v43, &v35) & 1) != 0 || (sub_10016379C(v43))
          {
            v29 = v43;
            if (v43)
            {
              v43 = 0;
              CFRelease(v29);
            }

            v30 = [KCSharingLocalItem alloc];
            v12 = [(KCSharingLocalItem *)v30 initPasswordWithInternetPasswordDatabaseItem:v28 error:error, v35, v36, v37, v38];
            v31 = 1;
          }

          else
          {
            v34 = v43;
            if (error)
            {
              v31 = 0;
              v12 = 0;
              *error = v43;
              v43 = 0;
            }

            else
            {
              if (v43)
              {
                v43 = 0;
                CFRelease(v34);
              }

              v31 = 0;
              v12 = 0;
            }
          }

          if (v31)
          {
            goto LABEL_37;
          }

          goto LABEL_30;
        }

        goto LABEL_20;
      }

LABEL_22:
      v19 = v43;
      if (error)
      {
        *error = v43;
        v43 = 0;
        goto LABEL_28;
      }

      if (!v43)
      {
        goto LABEL_28;
      }

      v43 = 0;
LABEL_27:
      CFRelease(v19);
      goto LABEL_28;
    }

LABEL_29:
    v12 = 0;
    goto LABEL_30;
  }

  v12 = 0;
  if (type == 1)
  {
    privateKey = [itemCopy privateKey];
    v14 = [privateKey attributesWithAccessGroups:groupsCopy error:error];

    if (v14)
    {
      privateKey2 = [itemCopy privateKey];
      databaseItemClass2 = [objc_opt_class() databaseItemClass];
      v17 = sub_10001A690(databaseItemClass2, v14, dword_10039E2F8, &v43);

      if (v17)
      {
        v18 = sub_100019F7C();
        v42 = 0;
        sub_10001A804(v17, v18, &v42);
        if (v18)
        {
          CFRelease(v18);
        }

        v19 = v42;
        if (!v42)
        {
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_100058B94;
          v40[3] = &unk_100334A38;
          v20 = v17;
          v41 = v20;
          if (sub_10001AA4C(v20, transaction, &v43, v40) & 1) != 0 || (sub_10016379C(v43))
          {
            v21 = v43;
            if (v43)
            {
              v43 = 0;
              CFRelease(v21);
            }

            v12 = [[KCSharingLocalItem alloc] initPasskeyWithPrivateKeyDatabaseItem:v20 error:error];
            v22 = 1;
          }

          else
          {
            v33 = v43;
            if (error)
            {
              v22 = 0;
              v12 = 0;
              *error = v43;
              v43 = 0;
            }

            else
            {
              if (v43)
              {
                v43 = 0;
                CFRelease(v33);
              }

              v22 = 0;
              v12 = 0;
            }
          }

          if (v22)
          {
            goto LABEL_37;
          }

LABEL_30:
          v27 = 0;
          goto LABEL_38;
        }

LABEL_20:
        if (error)
        {
          *error = v19;
LABEL_28:

          goto LABEL_29;
        }

        v42 = 0;
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_37:
  v12 = v12;
  v27 = v12;
LABEL_38:

  return v27;
}

- (BOOL)insertIntoMirrorWithMirrorEntry:(id)entry withAccessGroups:(id)groups applyInTransaction:(__OpaqueSecDbConnection *)transaction updateInfos:(id)infos withError:(id *)error
{
  entryCopy = entry;
  infosCopy = infos;
  cf = 0;
  v14 = [entryCopy attributesWithAccessGroups:groups error:error];
  if (v14)
  {
    databaseItemClass = [objc_opt_class() databaseItemClass];
    v16 = sub_10001A690(databaseItemClass, v14, dword_10039E2F8, &cf);
    if (v16)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100058E70;
      v22[3] = &unk_100334AA0;
      v23 = entryCopy;
      v24 = infosCopy;
      selfCopy = self;
      v26 = v16;
      if (sub_10001AA4C(v26, transaction, &cf, v22) & 1) != 0 || (sub_10016379C(cf))
      {
        v17 = cf;
        if (cf)
        {
          cf = 0;
          CFRelease(v17);
        }

        v18 = 1;
      }

      else
      {
        v20 = cf;
        if (error)
        {
          v18 = 0;
          *error = cf;
          cf = 0;
        }

        else
        {
          if (cf)
          {
            cf = 0;
            CFRelease(v20);
          }

          v18 = 0;
        }
      }
    }

    else
    {
      v19 = cf;
      if (error)
      {
        v18 = 0;
        *error = cf;
        cf = 0;
      }

      else
      {
        if (cf)
        {
          cf = 0;
          CFRelease(v19);
        }

        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)applyInTransaction:(__OpaqueSecDbConnection *)transaction withAccessGroups:(id)groups updateInfos:(id)infos error:(id *)error
{
  groupsCopy = groups;
  infosCopy = infos;
  v98 = [(NSMutableArray *)self->_insertIntoMirror mutableCopy];
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  selfCopy = self;
  v8 = self->_insertIntoLocalAndMirror;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v129 objects:v139 count:16];
  if (!v9)
  {
    v94 = 0;
    goto LABEL_39;
  }

  v10 = v9;
  v94 = 0;
  v11 = *v130;
  v93 = v8;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v130 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v129 + 1) + 8 * i);
      type = [v13 type];
      if ((type - 1) < 2)
      {
        v128 = 0;
        v15 = [v13 remoteItemWithAccessGroups:groupsCopy error:&v128];
        v16 = v128;
        if (v15)
        {
          contents = [v15 contents];
          if (contents)
          {
            v127 = v16;
            v23 = [(KCSharingDatabaseUpdatePlan *)selfCopy updateLocalItemWithRemoteItem:contents inTransaction:transaction withAccessGroups:groupsCopy error:&v127];
            v24 = v127;

            if (v23)
            {
              if ([v15 isFullyDecoded])
              {
                v25 = 0;
              }

              else
              {
                v25 = 2;
              }

              v26 = [[KCSharingMirrorEntry alloc] initWithUpdatedLocalItem:v23 forIncomingEntry:v13 flags:v25];
              [v98 addObject:v26];
              v27 = KCSharingLogObject();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v23;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Inserted item into local: %@", buf, 0xCu);
              }

              v28 = KCSharingLogObject();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v26;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "...with corresponding mirror: %@", buf, 0xCu);
              }

              v94 = 1;
            }

            else
            {
              v26 = [[KCSharingMirrorEntry alloc] initWithIncomingEntry:v13 flags:8];
              [v98 addObject:v26];
            }

            v16 = v24;
            v8 = v93;
          }

          else
          {
            v23 = [[KCSharingMirrorEntry alloc] initWithIncomingEntry:v13 flags:2];
            [v98 addObject:v23];
          }

          goto LABEL_33;
        }

LABEL_26:
        v19 = [KCSharingMirrorEntry alloc];
        v20 = v13;
        v21 = 2;
LABEL_27:
        contents = [(KCSharingMirrorEntry *)v19 initWithIncomingEntry:v20 flags:v21];
        [v98 addObject:contents];
LABEL_33:

        goto LABEL_34;
      }

      if (type)
      {
        if (type != 3)
        {
          continue;
        }

        v126 = 0;
        v15 = [v13 shareWithAccessGroups:groupsCopy error:&v126];
        v16 = v126;
        if (!v15)
        {
          goto LABEL_26;
        }

        contents2 = [v15 contents];

        if (!contents2)
        {
          goto LABEL_26;
        }

        if ([v15 isFullyDecoded])
        {
          v18 = 0;
        }

        else
        {
          v18 = 2;
        }

        v19 = [KCSharingMirrorEntry alloc];
        v20 = v13;
        v21 = v18;
        goto LABEL_27;
      }

      v16 = [[KCSharingMirrorEntry alloc] initWithIncomingEntry:v13 flags:2];
      [v98 addObject:v16];
LABEL_34:
    }

    v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v129 objects:v139 count:16];
  }

  while (v10);
LABEL_39:

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v29 = selfCopy->_reinsertIntoLocal;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v122 objects:v137 count:16];
  if (!v30)
  {
    goto LABEL_70;
  }

  v31 = v30;
  v32 = *v123;
  while (2)
  {
    v33 = 0;
    while (2)
    {
      if (*v123 != v32)
      {
        objc_enumerationMutation(v29);
      }

      v34 = *(*(&v122 + 1) + 8 * v33);
      type2 = [v34 type];
      if ((type2 - 1) < 2)
      {
        v121 = 0;
        v41 = [v34 remoteItemWithAccessGroups:groupsCopy error:&v121];
        v37 = v121;
        if (v41)
        {
          contents3 = [v41 contents];
          if (contents3)
          {
            v120 = v37;
            v43 = [(KCSharingDatabaseUpdatePlan *)selfCopy updateLocalItemWithRemoteItem:contents3 inTransaction:transaction withAccessGroups:groupsCopy error:&v120];
            v44 = v120;

            flags = [v34 flags];
            v46 = flags;
            if (v43)
            {
              if ([v41 isFullyDecoded])
              {
                v47 = v46 & 0xFFFFFFF5;
              }

              else
              {
                v47 = v46 & 0xFFFFFFF5 | 2;
              }

              v48 = [[KCSharingMirrorEntry alloc] initWithUpdatedLocalItem:v43 forMirrorEntry:v34 flags:v47];
              v94 = 1;
            }

            else
            {
              v48 = [[KCSharingMirrorEntry alloc] initWithMirrorEntry:v34 flags:flags & 0xFFFFFFF5 | 8];
            }

            [v98 addObject:v48];

            v37 = v44;
          }

          else
          {
            v43 = -[KCSharingMirrorEntry initWithMirrorEntry:flags:]([KCSharingMirrorEntry alloc], "initWithMirrorEntry:flags:", v34, [v34 flags] & 0xFFFFFFF5 | 2);
            [v98 addObject:v43];
          }
        }

        else
        {
          contents3 = -[KCSharingMirrorEntry initWithMirrorEntry:flags:]([KCSharingMirrorEntry alloc], "initWithMirrorEntry:flags:", v34, [v34 flags] & 0xFFFFFFF5 | 2);
          [v98 addObject:contents3];
        }

LABEL_67:
      }

      else
      {
        if (!type2)
        {
          v37 = -[KCSharingMirrorEntry initWithMirrorEntry:flags:]([KCSharingMirrorEntry alloc], "initWithMirrorEntry:flags:", v34, [v34 flags] & 0xFFFFFFF5 | 2);
          [v98 addObject:v37];
          goto LABEL_67;
        }

        if (type2 == 3)
        {
          v119 = 0;
          v36 = [v34 shareWithAccessGroups:groupsCopy error:&v119];
          v37 = v119;
          flags2 = [v34 flags];
          v39 = flags2;
          if (v36)
          {
            if ([v36 isFullyDecoded])
            {
              v40 = v39 & 0xFFFFFFF5;
            }

            else
            {
              v40 = v39 & 0xFFFFFFF5 | 2;
            }
          }

          else
          {
            v40 = flags2 & 0xFFFFFFF5 | 2;
          }

          v49 = [[KCSharingMirrorEntry alloc] initWithMirrorEntry:v34 flags:v40];
          [v98 addObject:v49];

          goto LABEL_67;
        }
      }

      if (v31 != ++v33)
      {
        continue;
      }

      break;
    }

    v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v122 objects:v137 count:16];
    if (v31)
    {
      continue;
    }

    break;
  }

LABEL_70:

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v50 = selfCopy->_insertIntoIncoming;
  v51 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v115 objects:v136 count:16];
  if (!v51)
  {
    goto LABEL_83;
  }

  v52 = v51;
  v53 = *v116;
  while (2)
  {
    v54 = 0;
    while (2)
    {
      if (*v116 != v53)
      {
        objc_enumerationMutation(v50);
      }

      v55 = *(*(&v115 + 1) + 8 * v54);
      *buf = 0;
      v56 = [v55 attributesWithAccessGroups:groupsCopy error:error];
      if (!v56)
      {
        goto LABEL_117;
      }

      v57 = v56;
      databaseItemClass = [objc_opt_class() databaseItemClass];
      v59 = sub_10001A690(databaseItemClass, v57, dword_10039E2F8, buf);
      if (!v59)
      {
LABEL_118:
        v84 = *buf;
        if (error)
        {
          *error = *buf;
          *buf = 0;
          v63 = infosCopy;
        }

        else
        {
          v63 = infosCopy;
          if (*buf)
          {
            *buf = 0;
            CFRelease(v84);
          }
        }

LABEL_130:

        goto LABEL_131;
      }

      v113[0] = _NSConcreteStackBlock;
      v113[1] = 3221225472;
      v113[2] = sub_100059BD0;
      v113[3] = &unk_100334A38;
      v60 = v59;
      v114 = v60;
      if ((sub_10001AA4C(v60, transaction, buf, v113) & 1) == 0 && (sub_10016379C(*buf) & 1) == 0)
      {
        v85 = *buf;
        if (error)
        {
          *error = *buf;
          *buf = 0;
          v63 = infosCopy;
        }

        else
        {
          v63 = infosCopy;
          if (*buf)
          {
            *buf = 0;
            CFRelease(v85);
          }
        }

        v86 = v114;
LABEL_129:

        goto LABEL_130;
      }

      v61 = *buf;
      if (*buf)
      {
        *buf = 0;
        CFRelease(v61);
      }

      if (v52 != ++v54)
      {
        continue;
      }

      break;
    }

    v52 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v115 objects:v136 count:16];
    if (v52)
    {
      continue;
    }

    break;
  }

LABEL_83:

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v50 = v98;
  v62 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v109 objects:v135 count:16];
  v63 = infosCopy;
  if (v62)
  {
    v64 = v62;
    v65 = *v110;
    while (2)
    {
      for (j = 0; j != v64; j = j + 1)
      {
        if (*v110 != v65)
        {
          objc_enumerationMutation(v50);
        }

        v67 = *(*(&v109 + 1) + 8 * j);
        if (![(KCSharingDatabaseUpdatePlan *)selfCopy insertIntoMirrorWithMirrorEntry:v67 withAccessGroups:groupsCopy applyInTransaction:transaction updateInfos:infosCopy withError:error])
        {
          v57 = KCSharingLogObject();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            *buf = 138477827;
            *&buf[4] = v67;
            _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Failed to insert into mirror: %{private}@", buf, 0xCu);
          }

          goto LABEL_130;
        }
      }

      v64 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v109 objects:v135 count:16];
      if (v64)
      {
        continue;
      }

      break;
    }
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v50 = selfCopy->_insertIntoOutgoing;
  v68 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v105 objects:v134 count:16];
  if (!v68)
  {
LABEL_104:

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v50 = selfCopy->_itemsToDelete;
    v77 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v99 objects:v133 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = *v100;
      v63 = infosCopy;
      errorCopy2 = error;
      while (2)
      {
        for (k = 0; k != v78; k = k + 1)
        {
          if (*v100 != v79)
          {
            objc_enumerationMutation(v50);
          }

          v82 = *(*(&v99 + 1) + 8 * k);
          *buf = 0;
          if (infosCopy)
          {
            v83 = [(KCSharingDatabaseUpdatePlan *)selfCopy updateInfoForDeletion:v82];
            if (v83)
            {
              [infosCopy addObject:v83];
            }

            errorCopy2 = error;
          }

          if ((sub_1000171B0(v82, transaction, buf, &stru_100334A78) & 1) == 0)
          {
            v89 = *buf;
            if (errorCopy2)
            {
              *errorCopy2 = *buf;
            }

            else if (*buf)
            {
              *buf = 0;
              CFRelease(v89);
            }

            goto LABEL_131;
          }
        }

        v78 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v99 objects:v133 count:16];
        if (v78)
        {
          continue;
        }

        break;
      }
    }

    else
    {

      v63 = infosCopy;
      if ((v94 & 1) == 0)
      {
LABEL_137:
        v87 = 1;
        goto LABEL_132;
      }
    }

    sub_10017E868();
    goto LABEL_137;
  }

  v69 = v68;
  v70 = *v106;
LABEL_93:
  v71 = 0;
  while (1)
  {
    if (*v106 != v70)
    {
      objc_enumerationMutation(v50);
    }

    v72 = *(*(&v105 + 1) + 8 * v71);
    *buf = 0;
    v73 = [v72 attributesWithAccessGroups:groupsCopy error:error];
    if (!v73)
    {
      break;
    }

    v57 = v73;
    databaseItemClass2 = [objc_opt_class() databaseItemClass];
    v75 = sub_10001A690(databaseItemClass2, v57, dword_10039E2F8, buf);
    if (!v75)
    {
      goto LABEL_118;
    }

    v103[0] = _NSConcreteStackBlock;
    v103[1] = 3221225472;
    v103[2] = sub_100059BFC;
    v103[3] = &unk_100334A38;
    v60 = v75;
    v104 = v60;
    if ((sub_10001AA4C(v60, transaction, buf, v103) & 1) == 0 && (sub_10016379C(*buf) & 1) == 0)
    {
      v90 = *buf;
      if (error)
      {
        *error = *buf;
        *buf = 0;
        v63 = infosCopy;
      }

      else
      {
        v63 = infosCopy;
        if (*buf)
        {
          *buf = 0;
          CFRelease(v90);
        }
      }

      v86 = v104;
      goto LABEL_129;
    }

    v76 = *buf;
    if (*buf)
    {
      *buf = 0;
      CFRelease(v76);
    }

    if (v69 == ++v71)
    {
      v69 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v105 objects:v134 count:16];
      if (v69)
      {
        goto LABEL_93;
      }

      goto LABEL_104;
    }
  }

LABEL_117:
  v63 = infosCopy;
LABEL_131:

  v87 = 0;
LABEL_132:

  return v87;
}

- (id)updateInfoForDeletion:(SecDbItem *)deletion
{
  var1 = deletion->var1;
  if (var1 != sub_100007604(@"sharingIncomingQueue", &qword_10039E0D0, &unk_10039E0C8))
  {
    goto LABEL_2;
  }

  v7 = sub_100015B5C(deletion, @"deln");
  if (!v7 || !CFEqual(v7, &off_100363FA0))
  {
    goto LABEL_2;
  }

  v8 = sub_100015B5C(deletion, kSecAttrUUID);
  if (v8)
  {
    v9 = CKRecordNameZoneWideShare == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v8 != CKRecordNameZoneWideShare)
    {
LABEL_2:
      v5 = 0;
      goto LABEL_3;
    }
  }

  else if (!CFEqual(v8, CKRecordNameZoneWideShare))
  {
    goto LABEL_2;
  }

  if (!sub_100015B5C(deletion, @"zone"))
  {
    goto LABEL_2;
  }

  v11 = sub_100015B5C(deletion, @"zone");
  if ([v11 hasPrefix:@"group-"])
  {
    v12 = [v11 substringFromIndex:{objc_msgSend(@"group-", "length")}];
  }

  else
  {
    v12 = 0;
  }

  v5 = [[KCSharingGroupUpdateInfo alloc] initWithDepartedGroupID:v12];
  v13 = KCSharingLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138477827;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Group update info: %{private}@", &v14, 0xCu);
  }

LABEL_3:

  return v5;
}

- (id)groupUpdateInfoFrom:(SecDbItem *)from to:(id)to
{
  toCopy = to;
  v95 = 0;
  v6 = [[KCSharingMirrorEntry alloc] initWithMirrorDatabaseItem:from error:&v95];
  v7 = v95;
  if (!v6)
  {
    v60 = KCSharingLogObject();
    if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
LABEL_63:
      v63 = 0;
      goto LABEL_64;
    }

    *buf = 138412290;
    v97 = v7;
    v65 = "Existing stored share didn't turn into MirrorEntry: %@";
    v66 = v60;
    v67 = 12;
LABEL_72:
    _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, v65, buf, v67);
    goto LABEL_63;
  }

  record = [(KCSharingMirrorEntry *)v6 record];
  recordID = [record recordID];
  recordName = [recordID recordName];
  if (([recordName isEqual:CKRecordNameZoneWideShare] & 1) == 0)
  {

    goto LABEL_62;
  }

  record2 = [toCopy record];
  [record2 recordID];
  v12 = v75 = v7;
  recordName2 = [v12 recordName];
  v14 = [recordName2 isEqual:CKRecordNameZoneWideShare];

  v7 = v75;
  if ((v14 & 1) == 0)
  {
LABEL_62:
    v60 = KCSharingLogObject();
    if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_63;
    }

    *buf = 0;
    v65 = "Stored share or new share isn't actually a share?!";
    v66 = v60;
    v67 = 2;
    goto LABEL_72;
  }

  v72 = v6;
  record3 = [(KCSharingMirrorEntry *)v6 record];
  v73 = toCopy;
  record4 = [toCopy record];
  v77 = +[NSMutableArray array];
  v78 = +[NSMutableArray array];
  v16 = +[NSMutableDictionary dictionary];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v74 = record3;
  participants = [record3 participants];
  v18 = [participants countByEnumeratingWithState:&v91 objects:v107 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v92;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v92 != v20)
        {
          objc_enumerationMutation(participants);
        }

        v22 = *(*(&v91 + 1) + 8 * i);
        userIdentity = [v22 userIdentity];
        lookupInfo = [userIdentity lookupInfo];
        v25 = sub_100031428(lookupInfo);

        if (v25)
        {
          [v16 setObject:v22 forKeyedSubscript:v25];
        }
      }

      v19 = [participants countByEnumeratingWithState:&v91 objects:v107 count:16];
    }

    while (v19);
  }

  v26 = +[NSMutableDictionary dictionary];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  participants2 = [record4 participants];
  v28 = [participants2 countByEnumeratingWithState:&v87 objects:v106 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v88;
    do
    {
      for (j = 0; j != v29; j = j + 1)
      {
        if (*v88 != v30)
        {
          objc_enumerationMutation(participants2);
        }

        v32 = *(*(&v87 + 1) + 8 * j);
        userIdentity2 = [v32 userIdentity];
        lookupInfo2 = [userIdentity2 lookupInfo];
        v35 = sub_100031428(lookupInfo2);

        if (v35)
        {
          [v26 setObject:v32 forKeyedSubscript:v35];
        }
      }

      v29 = [participants2 countByEnumeratingWithState:&v87 objects:v106 count:16];
    }

    while (v29);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  participants3 = [v74 participants];
  v37 = [participants3 countByEnumeratingWithState:&v83 objects:v105 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v84;
    do
    {
      for (k = 0; k != v38; k = k + 1)
      {
        if (*v84 != v39)
        {
          objc_enumerationMutation(participants3);
        }

        v41 = *(*(&v83 + 1) + 8 * k);
        userIdentity3 = [v41 userIdentity];
        lookupInfo3 = [userIdentity3 lookupInfo];
        v44 = sub_100031428(lookupInfo3);

        if (v44)
        {
          v45 = [v26 objectForKeyedSubscript:v44];
          if (v45)
          {
            if ([v41 acceptanceStatus] != 2 && objc_msgSend(v45, "acceptanceStatus") == 2)
            {
              v46 = sub_100031284(v45);
              if (v46)
              {
                v47 = v77;
                goto LABEL_35;
              }

              goto LABEL_36;
            }
          }

          else
          {
            v46 = sub_100031284(v41);
            if (v46)
            {
              v47 = v78;
LABEL_35:
              [v47 addObject:v46];
            }

LABEL_36:
          }
        }
      }

      v38 = [participants3 countByEnumeratingWithState:&v83 objects:v105 count:16];
    }

    while (v38);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  participants4 = [record4 participants];
  v49 = [participants4 countByEnumeratingWithState:&v79 objects:v104 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v80;
    do
    {
      for (m = 0; m != v50; m = m + 1)
      {
        if (*v80 != v51)
        {
          objc_enumerationMutation(participants4);
        }

        v53 = *(*(&v79 + 1) + 8 * m);
        userIdentity4 = [v53 userIdentity];
        lookupInfo4 = [userIdentity4 lookupInfo];
        v56 = sub_100031428(lookupInfo4);

        if (v56)
        {
          v57 = [v16 objectForKeyedSubscript:v56];
          if (!v57 && [v53 acceptanceStatus] == 2)
          {
            v58 = sub_100031284(v53);
            if (v58)
            {
              [v77 addObject:v58];
            }
          }
        }
      }

      v50 = [participants4 countByEnumeratingWithState:&v79 objects:v104 count:16];
    }

    while (v50);
  }

  v59 = KCSharingLogObject();
  v60 = v74;
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478595;
    v97 = v74;
    v98 = 2113;
    v99 = record4;
    v100 = 2113;
    v101 = v77;
    v102 = 2113;
    v103 = v78;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Old Share: %{private}@ \n New Share: %{private}@ \n Added participants: %{private}@ \n Departed participants: %{private}@", buf, 0x2Au);
  }

  v7 = v75;
  if ([v77 count])
  {
    v61 = [KCSharingGroupUpdateInfo alloc];
    v62 = sub_1000314F8(record4);
    v63 = [v61 initWithGroup:v62 addedParticipants:v77];

    v64 = KCSharingLogObject();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v97 = v63;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Group update info for added participants: %{private}@", buf, 0xCu);
    }
  }

  else
  {
    v64 = KCSharingLogObject();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      recordID2 = [record4 recordID];
      zoneID = [recordID2 zoneID];
      v71 = sub_100031160(zoneID);
      *buf = 138412290;
      v97 = v71;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Group update for %@ with no new participants", buf, 0xCu);
    }

    v63 = 0;
  }

  toCopy = v73;

  v6 = v72;
LABEL_64:

  return v63;
}

- (KCSharingDatabaseUpdatePlan)initWithLoggingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(KCSharingDatabaseUpdatePlan *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_loggingIdentifier, identifier);
  }

  return v7;
}

- (KCSharingDatabaseUpdatePlan)init
{
  v17.receiver = self;
  v17.super_class = KCSharingDatabaseUpdatePlan;
  v2 = [(KCSharingDatabaseUpdatePlan *)&v17 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    insertIntoLocalAndMirror = v2->_insertIntoLocalAndMirror;
    v2->_insertIntoLocalAndMirror = v3;

    v5 = +[NSMutableArray array];
    reinsertIntoLocal = v2->_reinsertIntoLocal;
    v2->_reinsertIntoLocal = v5;

    v7 = objc_opt_new();
    insertIntoIncoming = v2->_insertIntoIncoming;
    v2->_insertIntoIncoming = v7;

    v9 = +[NSMutableArray array];
    insertIntoMirror = v2->_insertIntoMirror;
    v2->_insertIntoMirror = v9;

    v11 = +[NSMutableArray array];
    insertIntoOutgoing = v2->_insertIntoOutgoing;
    v2->_insertIntoOutgoing = v11;

    v13 = +[NSMutableArray array];
    itemsToDelete = v2->_itemsToDelete;
    v2->_itemsToDelete = v13;

    loggingIdentifier = v2->_loggingIdentifier;
    v2->_loggingIdentifier = 0;
  }

  return v2;
}

@end