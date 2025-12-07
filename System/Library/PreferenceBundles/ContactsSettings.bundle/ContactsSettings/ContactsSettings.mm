void CNUICopyAccountInformation(uint64_t a1, NSMutableArray **a2, NSMutableArray **a3, NSMutableArray **a4, NSMutableArray **a5, void *a6)
{
  v11 = a6;
  v29 = objc_opt_new();
  v12 = objc_opt_new();
  if (a4)
  {
    v13 = objc_opt_new();
    if (a5)
    {
LABEL_3:
      v30 = objc_opt_new();
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v30 = 0;
LABEL_6:
  v31 = v13;
  v14 = v11;
  v28 = v14;
  if (!v14)
  {
    v14 = +[ACAccountStore defaultStore];
  }

  v15 = ABAddressBookCopyArrayOfAllAccounts();
  if (v15)
  {
    v16 = v15;
    Count = CFArrayGetCount(v15);
    if (Count >= 1)
    {
      v18 = Count;
      for (i = 0; i != v18; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v16, i);
        sub_1DB4(ValueAtIndex, v29, a1, v12, v30, a5, v31, a4, v14);
      }
    }

    CFRelease(v16);
  }

  v21 = ABAddressBookCopyLocalSource();
  if (v21)
  {
    v22 = v21;
    v23 = ABRecordCopyValue(v21, kABSourceEnabledProperty);
    if (([v23 BOOLValue] & 1) != 0 || !-[NSMutableArray count](v29, "count"))
    {
      sub_1DB4(0, v29, a1, v12, v30, a5, v31, a4, v14);
    }

    CFRelease(v22);
  }

  if (a2)
  {
    v24 = v29;
    *a2 = v29;
  }

  if (a3)
  {
    v25 = v12;
    *a3 = v12;
  }

  if (a4)
  {
    v26 = v31;
    *a4 = v31;
  }

  if (a5)
  {
    v27 = v30;
    *a5 = v30;
  }
}

void sub_1DB4(const void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v13 = a2;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a9;
  if (!a1)
  {
    v60 = 0;
    v22 = ABAddressBookCopyLocalSource();
    v25 = 0;
    v19 = 0;
    v24 = @"local";
    goto LABEL_8;
  }

  v18 = ABAccountCopyIdentifier();
  if (!v18)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_ADD4(a1);
    }

    v19 = 0;
    goto LABEL_16;
  }

  v19 = v18;
  v20 = [v17 displayTypeForAccountWithIdentifier:v18];
  if (!v20)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v70 = v19;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Could not find account with identifier <%@> in the account store", buf, 0xCu);
    }

LABEL_16:
    v25 = 0;
    goto LABEL_68;
  }

  v58 = v20;
  v60 = a1;
  DefaultSourceForAccount = ABAddressBookGetDefaultSourceForAccount();
  if (DefaultSourceForAccount)
  {
    v22 = DefaultSourceForAccount;
    v23 = ABRecordCopyValue(DefaultSourceForAccount, kABSourceEnabledProperty);
    if ([v23 BOOLValue])
    {
      CFRetain(v22);

      v24 = v19;
      v25 = v58;
      goto LABEL_8;
    }

    v56 = v19;
    v57 = v15;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v70 = v19;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Default store for account with identifier <%@> was not enabled.  Using another store instead", buf, 0xCu);
    }
  }

  else
  {
    v56 = v19;
    v57 = v15;
    v23 = 0;
  }

  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v42 = ABAddressBookCopyArrayOfAllSourcesInAccount();
  v43 = [v42 countByEnumeratingWithState:&v64 objects:v68 count:16];
  if (v43)
  {
    v44 = v43;
    v53 = v16;
    v54 = v14;
    v55 = v13;
    v63 = 0;
    v45 = 0;
    v46 = *v65;
    v47 = kABSourceEnabledProperty;
    do
    {
      for (i = 0; i != v44; i = i + 1)
      {
        v49 = v23;
        if (*v65 != v46)
        {
          objc_enumerationMutation(v42);
        }

        v50 = *(*(&v64 + 1) + 8 * i);
        v23 = ABRecordCopyValue(v50, v47);

        v51 = ABRecordCopyValue(v50, kABSourceTypeProperty);
        if ([v23 BOOLValue])
        {
          if (([v51 intValue] & 0x1000000) != 0)
          {
            if (!v45)
            {
              v45 = v50;
            }
          }

          else if (!v63)
          {
            v63 = v50;
          }
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v64 objects:v68 count:16];
    }

    while (v44);

    v22 = v63;
    if (v63)
    {

      v13 = v55;
      v19 = v56;
      v24 = v56;
      v16 = v53;
      v14 = v54;
      v15 = v57;
      v25 = v58;
      goto LABEL_8;
    }

    v14 = v54;
    v13 = v55;
    v16 = v53;
    v19 = v56;
    v25 = v58;
    if (v45)
    {
      v52 = CFRetain(v45);
      if (v52)
      {
        v22 = v52;

        v24 = v56;
        v15 = v57;
LABEL_8:
        [v13 addObject:v24];
        IntValue = ABRecordGetIntValue();
        [v14 addObject:v22];
        CFRelease(v22);
        if (!a6)
        {
          goto LABEL_28;
        }

        if (v25)
        {
          v27 = [v25 accountTypeDescription];
        }

        else
        {
          v27 = 0;
        }

        if ((IntValue & 0xFEFFFFFF) == 4)
        {
          if (![(__CFString *)v27 length])
          {
            v28 = CNContactsUIBundle();
            v29 = v28;
            v30 = @"CARDDAV";
            goto LABEL_24;
          }
        }

        else
        {
          if ((IntValue & 0xFEFFFFFF) != 1)
          {
            switch(IntValue)
            {
              case 0:
                v33 = &stru_14F18;
                v32 = v15;
                goto LABEL_26;
              case 16777219:
                if ([(__CFString *)v27 length])
                {
                  goto LABEL_25;
                }

                v28 = CNContactsUIBundle();
                v29 = v28;
                v30 = @"LDAP";
                break;
              case 2:
                if ([(__CFString *)v27 length])
                {
                  goto LABEL_25;
                }

                v28 = CNContactsUIBundle();
                v29 = v28;
                v30 = @"MOBILEME";
                break;
              default:
                goto LABEL_27;
            }

            goto LABEL_24;
          }

          if (![(__CFString *)v27 length])
          {
            v28 = CNContactsUIBundle();
            v29 = v28;
            v30 = @"EXCHANGE";
LABEL_24:
            [v28 localizedStringForKey:v30 value:&stru_14F18 table:@"Localized"];
            v31 = v59 = v25;

            v27 = v31;
            v25 = v59;
          }
        }

LABEL_25:
        v32 = v15;
        v33 = v27;
LABEL_26:
        [v32 addObject:v33];
LABEL_27:

LABEL_28:
        if (!a8)
        {
          goto LABEL_68;
        }

        if (IntValue)
        {
          if (v60)
          {
            [v17 accountWithIdentifier:v19];
            v35 = v34 = v25;
            v36 = [v35 displayAccount];
            v37 = [v36 accountDescription];

            v25 = v34;
            if (v37)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v37 = 0;
          }

          if (!v25)
          {
LABEL_44:
            if (![v37 length])
            {
              CNContactsUIBundle();
              v40 = v39 = v25;
              v41 = [v40 localizedStringForKey:@"CONTACTS" value:&stru_14F18 table:@"AB"];

              v25 = v39;
              v37 = v41;
            }

            [v16 addObject:v37];

            goto LABEL_68;
          }

          v38 = [v25 accountTypeDescription];
        }

        else
        {
          v38 = [(objc_class *)off_19240() localizedTitleForLocalSourceOfDataclass:kAccountDataclassContacts usedAtBeginningOfSentence:1];
        }

        v37 = v38;
        goto LABEL_44;
      }
    }
  }

  else
  {

    v19 = v56;
    v25 = v58;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_AD54(v19);
  }

  v15 = v57;
LABEL_68:
}

Class sub_2408()
{
  if (qword_195D0 != -1)
  {
    sub_AE58();
  }

  result = objc_getClass("ACUILocalization");
  qword_195C0 = result;
  off_19240 = sub_245C;
  return result;
}

void sub_2468(id a1)
{
  qword_195C8 = dlopen("/System/Library/PrivateFrameworks/AccountsUI.framework/AccountsUI", 1);
  if (!qword_195C8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_AE6C();
  }
}

uint64_t sub_2CB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  if (!v4 || (v5 = [*(a1 + 72) isContact:v3 presentInContainer:v4 store:*(a1 + 40)], v3 = v9, v5))
  {
    v6 = [*(a1 + 48) stringFromContact:v3];
    v7 = v6;
    if (!*(a1 + 80) && ![v6 length] || objc_msgSend(v7, "length") && objc_msgSend(v7, "isEqualToString:", *(a1 + 56)))
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
    }
  }

  return _objc_release_x1();
}

uint64_t sub_2D6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13 = v3;
  if (!v4 || (v5 = [*(a1 + 96) isContact:v3 presentInContainer:v4 store:*(a1 + 40)], v3 = v13, v5))
  {
    v6 = [*(a1 + 48) stringFromContact:v3];
    if ([v6 isEqualToString:*(a1 + 56)])
    {
      *(*(*(a1 + 88) + 8) + 24) = 0;
      if (*(a1 + 104))
      {
        v7 = [CNPhoneNumber phoneNumberWithStringValue:*(a1 + 64)];
        v8 = [CNLabeledValue labeledValueWithLabel:*(a1 + 72) value:v7];
        v9 = [v13 mutableCopy];
        v10 = [v9 phoneNumbers];
        v11 = [v10 arrayByAddingObject:v8];
        [v9 setPhoneNumbers:v11];

        [*(a1 + 80) updateContact:v9];
      }
    }
  }

  return _objc_release_x1();
}

void sub_30E4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    v5 = [v3 log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_AF08(v2, v4, v5);
    }

    objc_end_catch();
    JUMPOUT(0x30B0);
  }

  _Unwind_Resume(exception_object);
}

void sub_315C(id a1)
{
  qword_195E0 = objc_alloc_init(NSPersonNameComponentsFormatter);

  _objc_release_x1();
}

void sub_3258(id a1)
{
  qword_195F0 = os_log_create("com.apple.contacts", "sim-import");

  _objc_release_x1();
}

void sub_3AD4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 176);
  *(v2 + 176) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 184);
  *(v4 + 184) = 0;

  v6 = *(*(a1 + 32) + 136);
  v32 = 0;
  v33 = 0;
  CNUICopyAccountInformation(v6, 0, &v33, &v32, 0, 0);
  v7 = v33;
  v29 = v33;
  v8 = v32;
  v28 = v32;
  objc_storeStrong((*(a1 + 32) + 176), v7);
  objc_storeStrong((*(a1 + 32) + 184), v8);
  v9 = [*(*(a1 + 32) + 176) count];
  v10 = ABAddressBookCopyArrayOfAllSources(*(*(a1 + 32) + 136));
  if (v10)
  {
    v11 = v10;
    *(*(a1 + 32) + 192) = CFArrayGetCount(v10);
    CFRelease(v11);
  }

  else
  {
    *(*(a1 + 32) + 192) = 0;
  }

  if (v9 >= 1)
  {
    v12 = kABSourceEnabledProperty;
    v30 = kAccountDataclassContacts;
    for (i = v9 + 1; i > 1; --i)
    {
      v14 = [*(*(a1 + 32) + 176) objectAtIndex:i - 2];
      v15 = v14;
      valuePtr = 0;
      if (v14 != kCFNull)
      {
        v16 = ABRecordCopyValue(v14, kABSourceTypeProperty);
        if (v16)
        {
          v17 = v16;
          CFNumberGetValue(v16, kCFNumberIntType, &valuePtr);
          CFRelease(v17);
        }
      }

      v18 = ABRecordCopyValue(v15, v12);
      if (v18)
      {
        v19 = v18;
        Value = CFBooleanGetValue(v18);
        v21 = Value != 0;
        v22 = valuePtr & 0x1000000;
        IsContentReadonlyIncludingGuardianRestrictions = ABSourceIsContentReadonlyIncludingGuardianRestrictions();
        CFRelease(v19);
        if (IsContentReadonlyIncludingGuardianRestrictions)
        {
          v25 = 0;
        }

        else
        {
          v25 = v22 == 0;
        }

        if (v25 && Value != 0)
        {
          v21 = 1;
          goto LABEL_20;
        }
      }

      else
      {
        ABSourceIsContentReadonlyIncludingGuardianRestrictions();
        v21 = 0;
      }

      [*(*(a1 + 32) + 176) removeObjectAtIndex:i - 2];
      v24 = [*(*(a1 + 32) + 184) removeObjectAtIndex:i - 2];
LABEL_20:
      if (!valuePtr && v21)
      {
        v27 = [off_19248(v24) localizedTitleForLocalSourceOfDataclass:v30 usedAtBeginningOfSentence:1];
        [*(*(a1 + 32) + 184) replaceObjectAtIndex:i - 2 withObject:v27];
      }
    }
  }
}

void sub_47DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_47F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_480C(uint64_t a1)
{
  v9 = ABAddressBookCopyDefaultSource(*(*(a1 + 32) + 136));
  v2 = [*(*(a1 + 32) + 176) indexOfObject:v9];
  if (v9 && v2 < [*(*(a1 + 32) + 184) count])
  {
    v3 = [*(*(a1 + 32) + 184) objectAtIndex:v2];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    v6 = [*(*(a1 + 32) + 184) objectAtIndex:0];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(a1 + 32) _setDefaultContacts:*(*(*(a1 + 40) + 8) + 40) specifier:0];
  }
}

void sub_4C00(uint64_t a1, void *a2, const void *a3)
{
  v4 = a2;
  if (CFEqual(kCTPhoneBookSelectedNotification, a3))
  {
    [v4 _phonebookSelected];
  }

  else if (CFEqual(kCTPhoneBookFetchNotification, a3))
  {
    [v4 _phonebookAvailable];
  }

  else
  {
    [v4 _erroredDuringSIMPhonebookFetch];
  }
}

void sub_54D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_54EC(uint64_t a1)
{
  ABAddressBookRevert(*(*(a1 + 32) + 136));
  v2 = ABAddressBookCopyArrayOfAllSources(*(*(a1 + 32) + 136));
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    CFRelease(v3);
  }

  else
  {
    Count = 0;
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 192);
  if (Count != v6 && v6 != 0)
  {
    v8 = *(v5 + 144);
    *(v5 + 144) = 0;

    [*(a1 + 32) setSpecifiers:0];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v9 = *(a1 + 32);
    v10 = *(v9 + 176);
    *(v9 + 176) = 0;

    v11 = *(a1 + 32);
    v12 = *(v11 + 184);
    *(v11 + 184) = 0;

    *(*(a1 + 32) + 192) = 0;
  }

  v15 = ABAddressBookCopyChangesSinceSequenceNumber();
  v13 = [v15 objectForKey:kABAddressBookChangesToMeCardsKey];
  v14 = [v13 BOOLValue];

  if (v14)
  {
    *(*(a1 + 32) + 200) = ABAddressBookGetSequenceNumber();
    [*(a1 + 32) performSelectorOnMainThread:"_reloadMeCardCellIfVisible" withObject:0 waitUntilDone:0];
  }
}

void sub_60BC(uint64_t a1)
{
  v2 = [CNContactProviderSupport allDomainsCountWithError:0];
  if ([*(a1 + 32) providerCount] != v2)
  {
    [*(a1 + 32) setProviderCount:v2];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_6180;
    v4[3] = &unk_14B80;
    v3 = *(a1 + 40);
    v4[4] = *(a1 + 32);
    v5 = v3;
    dispatch_async(&_dispatch_main_q, v4);
  }
}

Class sub_687C()
{
  if (qword_19608[0] != -1)
  {
    sub_AFEC();
  }

  result = objc_getClass("ACUILocalization");
  qword_195F8 = result;
  off_19248 = sub_68D0;
  return result;
}

void sub_68DC(id a1)
{
  qword_19600 = dlopen("/System/Library/PrivateFrameworks/AccountsUI.framework/AccountsUI", 1);
  if (!qword_19600 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_AE6C();
  }
}

void sub_6C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_6C50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

int64_t sub_6C68(id a1, CNContactProviderSupportDomain *a2, CNContactProviderSupportDomain *a3)
{
  v4 = a3;
  v5 = [(CNContactProviderSupportDomain *)a2 displayName];
  v6 = [(CNContactProviderSupportDomain *)v4 displayName];

  v7 = [v5 compare:v6 options:1];
  return v7;
}

id sub_6CDC(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 displayName];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:a1[4] set:a1[7] get:a1[8] detail:0 cell:6 edit:0];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(*(a1[6] + 8) + 40) setUserInfo:v3];
  v8 = a1[5];
  v9 = *(*(a1[6] + 8) + 40);

  return [v8 addObject:v9];
}

unint64_t sub_7CFC()
{
  result = qword_19528;
  if (!qword_19528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19528);
  }

  return result;
}

uint64_t sub_7D6C(uint64_t a1)
{
  sub_B120();
  __chkstk_darwin();
  v2 = sub_B0B0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB60(0, &qword_19568, off_14658);
  v6 = [objc_allocWithZone(PSSpecifier) init];
  [v6 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_B0E0();
  sub_B0A0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v14._countAndFlagsBits = 0xE000000000000000;
  v16._countAndFlagsBits = 0x53544341544E4F43;
  v16._object = 0xE800000000000000;
  v17.value._countAndFlagsBits = 0;
  v17.value._object = 0;
  v9.super.isa = v8;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v10 = sub_B080(v16, v17, v9, v18, 0, v14);
  v12 = v11;

  v15[0] = v10;
  v15[1] = v12;
  sub_AABC(&qword_19540, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  sub_9C44();
  sub_B150();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_7FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[23] = a1;
  v4[24] = a2;
  v5 = sub_B020();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  sub_9BB4(&qword_19558, &qword_DAA8);
  v4[30] = swift_task_alloc();
  v6 = sub_B160();
  v4[31] = v6;
  v4[32] = *(v6 - 8);
  v4[33] = swift_task_alloc();
  sub_B250();
  v4[34] = swift_task_alloc();
  v7 = sub_B120();
  v4[35] = v7;
  v4[36] = *(v7 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v8 = sub_B140();
  v4[39] = v8;
  v4[40] = *(v8 - 8);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v9 = sub_B090();
  v4[43] = v9;
  v4[44] = *(v9 - 8);
  v4[45] = swift_task_alloc();
  sub_9BB4(&qword_19560, &qword_DAB0);
  v4[46] = swift_task_alloc();
  v10 = sub_B070();
  v4[47] = v10;
  v4[48] = *(v10 - 8);
  v4[49] = swift_task_alloc();
  sub_B230();
  v4[50] = sub_B220();
  v12 = sub_B210();

  return _swift_task_switch(sub_8350, v12, v11);
}

unint64_t sub_8350()
{
  v150 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v5 = *(v0 + 344);
  v6 = *(v0 + 352);

  sub_B190();
  sub_B040();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = *(v0 + 336);
    v8 = *(v0 + 312);
    v9 = *(v0 + 320);
    sub_AA14(*(v0 + 368), &qword_19560, &qword_DAB0);
    sub_B180();
    sub_B1B0();
    (*(v9 + 8))(v7, v8);
    goto LABEL_93;
  }

  (*(*(v0 + 384) + 32))(*(v0 + 392), *(v0 + 368), *(v0 + 376));
  sub_B180();
  *(v0 + 96) = sub_B050();
  *(v0 + 104) = v10;
  *(v0 + 112) = 47;
  *(v0 + 120) = 0xE100000000000000;
  sub_9C44();
  v11 = sub_B260();

  v13 = *(v11 + 16);
  v14 = &_swiftEmptyArrayStorage;
  if (!v13)
  {
    goto LABEL_21;
  }

  v15 = 0;
  v16 = -v13;
  v17 = v11 + 40;
LABEL_5:
  v18 = (v17 + 16 * v15++);
  while ((v15 - 1) < *(v11 + 16))
  {
    v19 = *(v18 - 1);
    v20 = *v18;
    v21 = HIBYTE(*v18) & 0xF;
    if ((*v18 & 0x2000000000000000) == 0)
    {
      v21 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      if (v19 != 0xD00000000000001BLL || 0x800000000000E2B0 != v20)
      {
        result = sub_B2F0();
        if ((result & 1) == 0)
        {

          countAndFlagsBits = v14;
          result = swift_isUniquelyReferenced_nonNull_native();
          v147[0]._countAndFlagsBits = v14;
          if ((result & 1) == 0)
          {
            result = sub_A788(0, *(v14 + 2) + 1, 1);
            countAndFlagsBits = v147[0]._countAndFlagsBits;
          }

          v25 = *(countAndFlagsBits + 16);
          v24 = *(countAndFlagsBits + 24);
          if (v25 >= v24 >> 1)
          {
            result = sub_A788((v24 > 1), v25 + 1, 1);
            countAndFlagsBits = v147[0]._countAndFlagsBits;
          }

          *(countAndFlagsBits + 16) = v25 + 1;
          v14 = countAndFlagsBits;
          v26 = countAndFlagsBits + 16 * v25;
          *(v26 + 32) = v19;
          *(v26 + 40) = v20;
          v17 = v11 + 40;
          if (!(v16 + v15))
          {
LABEL_21:

            v27 = *(v14 + 2);
            if (v27)
            {
              goto LABEL_22;
            }

            sub_B060();
            if (v116)
            {
              v117 = *(v0 + 208);

              v118 = sub_B1E0();

              [v117 setSpecifierIdentifierToScrollAndHighlight:v118];

              goto LABEL_92;
            }

            v27 = *(v14 + 2);
            if (!v27)
            {

LABEL_92:
              v120 = *(v0 + 384);
              v119 = *(v0 + 392);
              v121 = *(v0 + 376);
              v123 = *(v0 + 320);
              v122 = *(v0 + 328);
              v124 = *(v0 + 312);
              sub_B1B0();
              (*(v123 + 8))(v122, v124);
              (*(v120 + 8))(v119, v121);
LABEL_93:

              v125 = *(v0 + 8);

              return v125();
            }

LABEL_22:
            v136 = PSAppSettingsBundleIDKey;
            v145 = *(v0 + 224);
            v140 = (v145 + 8);
            v28 = (*(v0 + 288) + 8);
            v135 = (*(v0 + 256) + 48);
            v133._object = "com.apple.MobileAddressBook";
            v134 = v28;
            while (2)
            {
              v34 = *(v14 + 4);
              v33 = *(v14 + 5);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || (v27 - 1) > *(v14 + 3) >> 1)
              {
                v14 = sub_A8B4(isUniquelyReferenced_nonNull_native, v27, 1, v14);
              }

              sub_A9C0((v14 + 32));
              v36 = *(v14 + 2);
              memmove(v14 + 32, v14 + 48, 16 * v36 - 16);
              *(v14 + 2) = v36 - 1;
              v37._rawValue = &off_14CF8;
              v153._countAndFlagsBits = v34;
              v153._object = v33;
              v38 = sub_B2E0(v37, v153);

              if (v38 <= 4)
              {
                if (v38 > 1)
                {
                  if (v38 == 2 || v38 == 3)
                  {
                    goto LABEL_50;
                  }

                  v29 = *(v0 + 304);
                  v30 = *(v0 + 280);
                  v31 = &unk_19590;
                  v32 = &off_14660;
LABEL_24:
                  sub_AB60(0, v31, v32);
                  sub_B0F0();
                  sub_AABC(&qword_19588, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
                  sub_B130();
                  (*v28)(v29, v30);
LABEL_25:
                  v27 = *(v14 + 2);
                  if (!v27)
                  {
                    goto LABEL_89;
                  }

                  continue;
                }

                if (v38)
                {
                  if (v38 != 1)
                  {
LABEL_89:

                    goto LABEL_92;
                  }

                  v29 = *(v0 + 304);
                  v30 = *(v0 + 280);
                  v31 = &unk_19598;
                  v32 = off_14650;
                  goto LABEL_24;
                }

                goto LABEL_52;
              }

              break;
            }

            if (v38 <= 6)
            {
              if (v38 != 5)
              {
LABEL_50:
                v46 = *(v0 + 200);
                v47 = sub_B1E0();

                v48 = [v46 specifierForID:v47];

                if (v48)
                {
                  v49 = *(v0 + 304);
                  v50 = *(v0 + 280);
                  v51 = *(v0 + 200);
                  v52 = sub_B1E0();
                  [v48 setProperty:v51 forKey:v52];

                  v53 = v48;
                  sub_B110();
                  sub_AABC(&qword_19588, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
                  sub_B130();

                  (*v28)(v49, v50);
                }

                goto LABEL_25;
              }

LABEL_52:
              v54 = *(v0 + 208);
              v55 = sub_B1E0();

              [v54 setSpecifierIdentifierToScrollAndSelect:v55];

              goto LABEL_25;
            }

            switch(v38)
            {
              case 7:
                goto LABEL_25;
              case 8:
                v39 = 8;
                break;
              case 9:
                v39 = 9;
                break;
              default:
                goto LABEL_89;
            }

            v40 = [objc_allocWithZone(PSSpecifier) init];
            v41 = sub_B1E0();
            [v40 setProperty:v41 forKey:v136];

            v138 = v14;
            if (sub_94AC(v39) == 0x53544E554F434341 && v42 == 0xE800000000000000)
            {

              goto LABEL_49;
            }

            v43 = sub_B2F0();

            if (v43)
            {
LABEL_49:
              v44 = 0x800000000000E310;
              v45 = 0xD000000000000011;
            }

            else
            {
              v45 = 0x4F4343415F444441;
              v44 = 0xEB00000000544E55;
            }

            v56 = *(v0 + 240);
            v139 = *(v0 + 248);
            sub_AB60(0, &qword_19568, off_14658);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v58 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
            v133._countAndFlagsBits = 0xE000000000000000;
            v152._countAndFlagsBits = v45;
            v152._object = v44;
            v154.value._countAndFlagsBits = 0x73746361746E6F43;
            v154.value._object = 0xE800000000000000;
            v59.super.isa = v58;
            v155._countAndFlagsBits = 0;
            v155._object = 0xE000000000000000;
            sub_B080(v152, v154, v59, v155, 0, v133);

            v60 = sub_B1E0();

            [v40 setName:v60];

            v61 = v40;
            sub_B240();
            v137 = v61;
            sub_B100();
            sub_B0D0();
            v62 = (*v135)(v56, 1, v139);
            v63 = *(v0 + 392);
            if (v62 != 1)
            {
              v126 = *(v0 + 384);
              v128 = *(v0 + 320);
              v127 = *(v0 + 328);
              v144 = *(v0 + 312);
              v146 = *(v0 + 376);
              v141 = *(v0 + 280);
              v142 = *(v0 + 296);
              v129 = *(v0 + 256);
              v130 = *(v0 + 264);
              v132 = *(v0 + 240);
              v131 = *(v0 + 248);

              (*(v129 + 32))(v130, v132, v131);
              sub_B1A0();

              (*(v129 + 8))(v130, v131);
              (*v134)(v142, v141);
              (*(v128 + 8))(v127, v144);
              (*(v126 + 8))(v63, v146);
              goto LABEL_93;
            }

            sub_AA14(*(v0 + 240), &qword_19558, &qword_DAA8);
            result = sub_B030();
            if (result)
            {
              v64 = result;
            }

            else
            {
              v64 = &_swiftEmptyArrayStorage;
            }

            v65 = v64[2];
            if (v65)
            {
              v66 = 0;
              v143 = v64 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
              v67 = &_swiftEmptyDictionarySingleton;
              while (1)
              {
                if (v66 >= v64[2])
                {
                  __break(1u);
                  goto LABEL_103;
                }

                (*(v145 + 16))(*(v0 + 232), &v143[*(v145 + 72) * v66], *(v0 + 216));
                v68 = sub_B000();
                v70 = v69;
                v71 = sub_B010();
                if (v72 && (*(v0 + 144) = v71, *(v0 + 152) = v72, v73 = sub_B270(), v75 = v74, , v75))
                {
                  *(v0 + 160) = v73;
                  *(v0 + 168) = v75;
                  sub_B2A0();
                  v76 = v147[1];
                  *(v0 + 56) = v147[0];
                  *(v0 + 72) = v76;
                  *(v0 + 88) = v148;
                  v77 = swift_isUniquelyReferenced_nonNull_native();
                  result = sub_9E88(v68, v70);
                  v79 = v67[2];
                  v80 = (v78 & 1) == 0;
                  v81 = __OFADD__(v79, v80);
                  v82 = v79 + v80;
                  if (v81)
                  {
                    goto LABEL_104;
                  }

                  v83 = v78;
                  if (v67[3] >= v82)
                  {
                    if ((v77 & 1) == 0)
                    {
                      v103 = result;
                      sub_A5D4();
                      result = v103;
                    }
                  }

                  else
                  {
                    sub_9FB8(v82, v77);
                    result = sub_9E88(v68, v70);
                    if ((v83 & 1) != (v84 & 1))
                    {

                      return sub_B300();
                    }
                  }

                  v94 = *(v0 + 232);
                  v95 = *(v0 + 216);
                  if (v83)
                  {
                    v96 = result;

                    sub_AB04(v0 + 56, v67[7] + 40 * v96);
                    result = (*v140)(v94, v95);
                  }

                  else
                  {
                    v67[(result >> 6) + 8] |= 1 << result;
                    v97 = (v67[6] + 16 * result);
                    *v97 = v68;
                    v97[1] = v70;
                    v98 = v67[7] + 40 * result;
                    v99 = *(v0 + 88);
                    v100 = *(v0 + 72);
                    *v98 = *(v0 + 56);
                    *(v98 + 16) = v100;
                    *(v98 + 32) = v99;
                    result = (*v140)(v94, v95);
                    v101 = v67[2];
                    v81 = __OFADD__(v101, 1);
                    v102 = v101 + 1;
                    if (v81)
                    {
                      goto LABEL_105;
                    }

                    v67[2] = v102;
                  }
                }

                else
                {
                  v85 = sub_9E88(v68, v70);
                  v87 = v86;

                  if (v87)
                  {
                    v88 = swift_isUniquelyReferenced_nonNull_native();
                    v147[0]._countAndFlagsBits = v67;
                    if (!v88)
                    {
                      sub_A5D4();
                      v67 = v147[0]._countAndFlagsBits;
                    }

                    v89 = *(v0 + 232);
                    v90 = *(v0 + 216);

                    v91 = v67[7] + 40 * v85;
                    v92 = *v91;
                    v93 = *(v91 + 16);
                    *(v0 + 48) = *(v91 + 32);
                    *(v0 + 16) = v92;
                    *(v0 + 32) = v93;
                    sub_A288(v85, v67);
                    (*v140)(v89, v90);
                  }

                  else
                  {
                    (*v140)(*(v0 + 232), *(v0 + 216));
                    *(v0 + 48) = 0;
                    *(v0 + 16) = 0u;
                    *(v0 + 32) = 0u;
                  }

                  result = sub_AA14(v0 + 16, &qword_19570, &qword_DAB8);
                }

                if (v65 == ++v66)
                {
                  goto LABEL_81;
                }
              }
            }

            v67 = &_swiftEmptyDictionarySingleton;
LABEL_81:

            *(v0 + 408) = 1;
            sub_B2A0();
            v104 = swift_isUniquelyReferenced_nonNull_native();
            sub_A444(&v147[0]._countAndFlagsBits, 0x6574616D696E61, 0xE700000000000000, v104);
            v105 = v67;
            v14 = v138;
            *(v0 + 176) = v138;

            sub_9BB4(&qword_19578, &qword_DAC0);
            sub_AA74(&qword_19580, &qword_19578, &qword_DAC0, &protocol conformance descriptor for [A]);
            v106 = sub_B1D0();
            v108 = v107;

            v109._countAndFlagsBits = sub_B060();
            if (v109._object)
            {
              v147[0]._countAndFlagsBits = 35;
              v147[0]._object = 0xE100000000000000;
              sub_B200(v109);

              sub_B200(v147[0]);
            }

            v110 = HIBYTE(v108) & 0xF;
            if ((v108 & 0x2000000000000000) == 0)
            {
              v110 = v106 & 0xFFFFFFFFFFFFLL;
            }

            if (v110)
            {
              *(v0 + 128) = v106;
              *(v0 + 136) = v108;
              sub_B2A0();
              v111 = swift_isUniquelyReferenced_nonNull_native();
              v149 = v67;
              sub_A444(&v147[0]._countAndFlagsBits, 1752457584, 0xE400000000000000, v111);
              v105 = v149;
            }

            else
            {
            }

            v113 = *(v0 + 296);
            v112 = *(v0 + 304);
            v114 = *(v0 + 280);
            sub_9620(v105);

            sub_B0C0();

            sub_AABC(&qword_19588, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
            sub_B130();

            v28 = v134;
            v115 = *v134;
            (*v134)(v112, v114);
            v115(v113, v114);
            goto LABEL_25;
          }

          goto LABEL_5;
        }
      }
    }

    ++v15;
    v18 += 2;
    if (v16 + v15 == 1)
    {
      goto LABEL_21;
    }
  }

LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

unint64_t sub_94AC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x726F706D494D4953;
    v5 = 0x4F4343415F444441;
    if (a1 != 8)
    {
      v5 = 0x53544E554F434341;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0x64726143654DLL;
    if (a1 != 5)
    {
      v6 = 0x43746C7561666544;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x50746361746E6F43;
    v2 = 0x614E6E6F73726550;
    if (a1 != 3)
    {
      v2 = 0x68536E6F73726550;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000011;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_9620(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_9BB4(&qword_195A8, &qword_DAD0);
    v2 = sub_B2D0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_ABA8(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_AC04(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_AC04(v35, v24);
    result = sub_B290(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_AC04(v24, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_990C()
{
  v1 = sub_9BB4(&qword_19530, &qword_DA88);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v17 - v3;
  v6 = *v0;
  v5 = *(v0 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = v6;
  v9 = v5;
  sub_9BB4(&qword_19538, &qword_DA90);
  v10 = sub_B0B0();
  v11 = sub_AABC(&qword_19540, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v12 = sub_9C44();
  v17[0] = v10;
  v17[1] = &type metadata for String;
  v17[2] = v11;
  v17[3] = v12;
  swift_getOpaqueTypeConformance2();
  sub_B1C0();
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v9;
  sub_AA74(&qword_19550, &qword_19530, &qword_DA88, &protocol conformance descriptor for SettingsPane<A>);
  v14 = v8;
  v15 = v9;
  sub_B170();
  return (*(v2 + 8))(v4, v1);
}

id sub_9B58@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(ContactsSettingsPlugin) init];
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_9BB4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_9BFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_9C44()
{
  result = qword_19548;
  if (!qword_19548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19548);
  }

  return result;
}

uint64_t sub_9C98(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_9D4C;

  return sub_7FD8(a1, a2, v7, v6);
}

uint64_t sub_9D4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_9E40(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_9E88(uint64_t a1, uint64_t a2)
{
  sub_B310();
  sub_B1F0();
  v4 = sub_B320();

  return sub_9F00(a1, a2, v4);
}

unint64_t sub_9F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_B2F0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_9FB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_9BB4(&qword_195A0, &qword_DAC8);
  v38 = v4;
  result = sub_B2C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_ABA8(v27, &v39);
      }

      sub_B310();
      sub_B1F0();
      result = sub_B320();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_A288(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_B280() + 1) & ~v5;
    do
    {
      sub_B310();

      sub_B1F0();
      v11 = sub_B320();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_A444(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_9E88(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_9FB8(v16, a4 & 1);
      v11 = sub_9E88(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_B300();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_A5D4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_AB04(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 32) = *(a1 + 4);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

void *sub_A5D4()
{
  v1 = v0;
  sub_9BB4(&qword_195A0, &qword_DAC8);
  v2 = *v0;
  v3 = sub_B2B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_ABA8(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_A788(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_A7A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_A7A8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_9BB4(&unk_195B0, &qword_DAD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_A8B4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_9BB4(&unk_195B0, &qword_DAD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_AA14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_9BB4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_AA74(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_9E40(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_AABC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_AB60(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_OWORD *sub_AC04(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 sub_AC18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_AC24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_AC6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_ACB8()
{
  sub_9E40(&qword_19530, &qword_DA88);
  sub_AA74(&qword_19550, &qword_19530, &qword_DA88, &protocol conformance descriptor for SettingsPane<A>);
  return swift_getOpaqueTypeConformance2();
}

void sub_AD54(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not find any enabled sources for the account with identifier <%@>.", &v1, 0xCu);
}

void sub_ADD4(const void *a1)
{
  v1[0] = 67109120;
  v1[1] = ABRecordGetRecordID(a1);
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Got nil identifier for account with record ID %i.", v1, 8u);
}

void sub_AE6C()
{
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/AccountsUI.framework/AccountsUI (%d)", v1, 8u);
}

void sub_AF08(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Could not parse provided name string “%{public}@”: %{public}@", &v3, 0x16u);
}