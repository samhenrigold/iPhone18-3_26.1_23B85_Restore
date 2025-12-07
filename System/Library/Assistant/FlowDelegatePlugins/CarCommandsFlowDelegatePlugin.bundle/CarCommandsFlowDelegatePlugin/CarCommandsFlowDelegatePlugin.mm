void sub_2940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2958(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2970(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = [a2 identifier];
  v5 = [*(a1 + 32) objectForKeyedSubscript:?];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a3 = 1;
  }
}

void sub_3060(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    if ([v3 count] == &dword_0 + 1)
    {
      v4 = [v3 anyObject];
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 32) spokenPhrase];
        v7 = [v4 uniqueID];
        v18 = 138412546;
        v19 = v6;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Matched phrase %@ to car (%@).", &v18, 0x16u);
      }

      v8 = [v4 localizedDescription];
      v9 = [INSpeakableString alloc];
      v10 = [v4 uniqueID];
      v11 = [v9 initWithVocabularyIdentifier:v10 spokenPhrase:v8 pronunciationHint:0];

      v12 = [INSpeakableStringResolutionResult successWithResolvedString:v11];
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*(a1 + 32) spokenPhrase];
        v18 = 138412290;
        v19 = v15;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Multiple cars matched phrase %@. Disambiguate.", &v18, 0xCu);
      }

      v16 = [v3 pk_setByApplyingBlock:&stru_1CFDA0];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v16;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Disambiguating car names: %@.", &v18, 0xCu);
      }

      v17 = [v16 allObjects];
      v12 = [INSpeakableStringResolutionResult disambiguationWithStringsToDisambiguate:v17];
    }
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Can't find a car that match the spoken phrase, fail later on.", &v18, 2u);
    }

    v12 = +[INSpeakableStringResolutionResult notRequired];
  }

  (*(*(a1 + 40) + 16))();
}

INSpeakableString *__cdecl sub_336C(id a1, PKSecureElementPass *a2)
{
  v2 = a2;
  v3 = [(PKSecureElementPass *)v2 localizedDescription];
  v4 = [INSpeakableString alloc];
  v5 = [(PKSecureElementPass *)v2 uniqueID];

  v6 = [v4 initWithVocabularyIdentifier:v5 spokenPhrase:v3 pronunciationHint:0];

  return v6;
}

void sub_3F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  objc_destroyWeak((v34 + 80));
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v35 - 176), 8);
  objc_destroyWeak((v35 - 224));
  _Unwind_Resume(a1);
}

void sub_3F60(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Invalidating session.", buf, 2u);
    }

    [v5 invalidateSessionWithCompletion:0];
  }

  if (*(a1 + 32))
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_406C;
    v7[3] = &unk_1CFDF0;
    v8 = *(a1 + 32);
    v9 = a2;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

void sub_4084(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_41B8;
    block[3] = &unk_1CFE68;
    block[4] = WeakRetained;
    v15 = *(a1 + 48);
    v11 = v5;
    v12 = v6;
    v16 = *(a1 + 64);
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    dispatch_async(v9, block);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_41B8(uint64_t a1)
{
  v2 = 1;
  atomic_compare_exchange_strong((*(*(a1 + 72) + 8) + 24), &v2, 0);
  if (v2 != 1)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;

    dispatch_source_cancel(*(*(*(a1 + 80) + 8) + 40));
  }

  if (!*(a1 + 40) || *(a1 + 48) || (v5 = atomic_load((*(a1 + 32) + 16)), (v5 & 1) != 0))
  {
    v6 = *(*(a1 + 64) + 16);

    v6();
  }

  else
  {
    [PKContactlessInterfaceSessionDefaultBehavior attachDefaultBehaviorToSession:*(a1 + 40)];
    v7 = [*(*(*(a1 + 88) + 8) + 40) devicePrimaryContactlessPaymentApplication];
    if ([*(a1 + 40) activatePaymentApplication:v7 forPaymentPass:*(*(*(a1 + 88) + 8) + 40)])
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Successfully activated car applet.", buf, 2u);
      }

      v9 = *(a1 + 40);
      v10 = *(*(*(a1 + 96) + 8) + 40);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_43C0;
      v12[3] = &unk_1CFE40;
      v11 = *(a1 + 56);
      v14 = *(a1 + 64);
      v13 = *(a1 + 40);
      [v9 sendRKEFunction:v10 action:v11 withAuthorization:0 completion:v12];
    }

    else
    {
      (*(*(a1 + 64) + 16))();
    }
  }
}

void sub_43D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: 10 seconds elapsed, time session out.", v3, 2u);
    }

    [WeakRetained[3] invalidateSessionWithCompletion:0];
  }
}

void sub_4A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  objc_destroyWeak((v34 + 80));
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v35 - 176), 8);
  objc_destroyWeak((v35 - 224));
  _Unwind_Resume(a1);
}

void sub_4A98(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Invalidating session.", buf, 2u);
    }

    [v5 invalidateSessionWithCompletion:0];
  }

  if (*(a1 + 32))
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_4BA4;
    v7[3] = &unk_1CFDF0;
    v8 = *(a1 + 32);
    v9 = a2;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

void sub_4BBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4CF0;
    block[3] = &unk_1CFE68;
    block[4] = WeakRetained;
    v15 = *(a1 + 48);
    v11 = v5;
    v12 = v6;
    v16 = *(a1 + 64);
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    dispatch_async(v9, block);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_4CF0(uint64_t a1)
{
  v2 = 1;
  atomic_compare_exchange_strong((*(*(a1 + 72) + 8) + 24), &v2, 0);
  if (v2 != 1)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;

    dispatch_source_cancel(*(*(*(a1 + 80) + 8) + 40));
  }

  if (!*(a1 + 40) || *(a1 + 48) || (v5 = atomic_load((*(a1 + 32) + 16)), (v5 & 1) != 0))
  {
    v6 = *(*(a1 + 64) + 16);

    v6();
  }

  else
  {
    [PKContactlessInterfaceSessionDefaultBehavior attachDefaultBehaviorToSession:*(a1 + 40)];
    v7 = [*(*(*(a1 + 88) + 8) + 40) devicePrimaryContactlessPaymentApplication];
    if ([*(a1 + 40) activatePaymentApplication:v7 forPaymentPass:*(*(*(a1 + 88) + 8) + 40)])
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: Successfully activated car applet.", buf, 2u);
      }

      v9 = *(a1 + 40);
      v10 = *(*(*(a1 + 96) + 8) + 40);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_4EF8;
      v12[3] = &unk_1CFE40;
      v11 = *(a1 + 56);
      v14 = *(a1 + 64);
      v13 = *(a1 + 40);
      [v9 sendRKEFunction:v10 action:v11 withAuthorization:0 completion:v12];
    }

    else
    {
      (*(*(a1 + 64) + 16))();
    }
  }
}

void sub_4F0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "PKBaseCarCommandHandler: 10 seconds elapsed, time session out.", v3, 2u);
    }

    [WeakRetained[3] invalidateSessionWithCompletion:0];
  }
}

uint64_t sub_5094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_57A0(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_5810(a1);
  return v13;
}

uint64_t sub_51F0(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_52F0()
{
  v0 = sub_16A104();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t variable initialization expression of CarCommandsDirectInvocationIntent.confirmationResponse@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_169004();

  return sub_5370(a1, 1, 1, v2);
}

uint64_t type metadata accessor for CarCommandsChangeStationCATsSimple(uint64_t a1)
{
  result = qword_1E59D0;
  if (!qword_1E59D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_546C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_5488@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_54BC(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

_DWORD *sub_5510@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void sub_5538(uint64_t a2@<X8>)
{
  sub_556C();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void sub_5574()
{
  sub_5B3C();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_559C@<X0>(uint64_t *a1@<X8>)
{
  result = variable initialization expression of CarCommandsDirectInvocationIntent.payload();
  *a1 = result;
  return result;
}

uint64_t sub_55D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_3976C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_5600@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_39748(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_5630@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_39780(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_5668@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_39764(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_569C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_39760(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_56E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_39774(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_5758(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_57A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5810(uint64_t a1)
{
  v2 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_58F0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_5984@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3776C();
  *a1 = result;
  return result;
}

uint64_t sub_59F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for CarCommandsAppResolutionCATs(uint64_t a1)
{
  result = qword_1E5F10;
  if (!qword_1E5F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_16A164();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v9 - 8);
  sub_57A0(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_16A084();
  (*(v6 + 8))(a2, v5);
  sub_5810(a1);
  return v11;
}

uint64_t sub_5D94()
{
  v0 = sub_16A0A4();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_5DF4(uint64_t a1, char a2)
{
  sub_16A6F4();
}

uint64_t sub_5E64(uint64_t a1, char a2)
{
  sub_16A6F4();
}

uint64_t sub_5F38(uint64_t a1, char a2)
{
  sub_16A6F4();
}

uint64_t sub_5FAC(uint64_t a1, char a2)
{
  sub_16A6F4();
}

uint64_t sub_6004(uint64_t a1, char a2)
{
  sub_16A6F4();
}

uint64_t sub_6080(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_A0C4();
  }

  else
  {
    sub_9FA4();
  }

  sub_16A6F4();
}

uint64_t sub_6108(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_A148();
    sub_A0A8();
  }

  else
  {
    sub_A160();
  }

  sub_16A6F4();
}

uint64_t sub_618C(uint64_t a1, char a2)
{
  sub_16A6F4();
}

uint64_t sub_627C(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    sub_A1EC();
  }

  sub_16A6F4();
}

uint64_t sub_631C(uint64_t a1, char a2)
{
  sub_16A6F4();
}

uint64_t sub_642C()
{
  sub_A178();
  switch(v0)
  {
    case 1:
      sub_A0FC();
      break;
    case 3:
      sub_9F90();
      break;
    case 4:
      sub_9FEC();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_6504(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      sub_A000();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_65AC(uint64_t a1, unsigned __int8 a2)
{
  sub_16A6F4();
}

uint64_t sub_6650(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 11:
      sub_A000();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_6808(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_A214();
  }

  else
  {
    sub_9F90();
  }

  sub_16A6F4();
}

uint64_t sub_6894(uint64_t a1, char a2)
{
  sub_16A6F4();
}

uint64_t sub_68F8(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_9FB8();
      break;
    case 2:
      sub_9FEC();
      break;
    case 5:
      sub_9F1C();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_69D4(void *a1, char a2)
{
  switch(a2)
  {
    case 3:
      sub_9FB8();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_6A9C(uint64_t a1, char a2)
{
  sub_16A6F4();
}

uint64_t sub_6B10(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 3:
      break;
    case 2:
    case 4:
      sub_9FA4();
      break;
    case 5:
      sub_9F1C();
      break;
    default:
      sub_9FB8();
      break;
  }

  sub_16A6F4();
}

uint64_t sub_6C08(void *a1, char a2)
{
  switch(a2)
  {
    case 4:
      sub_9FB8();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_6D28()
{
  sub_A178();
  switch(v0)
  {
    case 2:
      sub_A0FC();
      break;
    case 3:
      sub_9F90();
      break;
    case 4:
      sub_9FEC();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_6DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  sub_16A6F4();
}

uint64_t sub_6E40(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_A214();
  }

  else
  {
    sub_A0E0();
  }

  sub_16A6F4();
}

uint64_t sub_6EB4(uint64_t a1, char a2)
{
  sub_16A6F4();
}

uint64_t sub_6F68(uint64_t a1, char a2)
{
  sub_16A6F4();
}

uint64_t sub_6FC4(void *a1, char a2)
{
  switch(a2)
  {
    case 4:
      sub_9FB8();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_70A8()
{
  sub_A190();
  switch(v0)
  {
    case 3:
      sub_9F7C();
      break;
    case 12:
      sub_9F1C();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_7228(uint64_t a1, char a2)
{
  sub_16A6F4();
}

uint64_t sub_7290()
{
  sub_A190();
  switch(v0)
  {
    case 1:
      sub_9F7C();
      break;
    case 3:
      sub_9F1C();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_7318(uint64_t a1, char a2)
{
  sub_16A6F4();
}

uint64_t sub_7398()
{
  sub_9EF4();
  switch(v0)
  {
    case 2:
      sub_9FDC();
      break;
    case 3:
    case 4:
      sub_9FB8();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_7460()
{
  sub_9EF4();
  switch(v0)
  {
    case 1:
      sub_9FDC();
      break;
    case 2:
      sub_A234();
      break;
    case 3:
    case 4:
      sub_9FB8();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_752C()
{
  sub_9EF4();
  switch(v0)
  {
    case 1:
      sub_9FB8();
      break;
    case 2:
      sub_9FDC();
      break;
    case 3:
      sub_9FB8();
      sub_A1A8();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_75E0(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    sub_9F34();
  }

  sub_16A6F4();
}

uint64_t sub_7670()
{
  sub_9EF4();
  switch(v0)
  {
    case 3:
      sub_A234();
      sub_A000();
      break;
    case 4:
      sub_9FDC();
      sub_A000();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_775C(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    sub_9F7C();
  }

  sub_16A6F4();
}

uint64_t sub_77C8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 5:
      sub_9F1C();
      break;
    default:
      break;
  }

  sub_16A6F4();
}

uint64_t sub_7880(uint64_t a1, char a2)
{
  sub_16A6F4();
}

Swift::Int sub_79F8(uint64_t a1)
{
  v2 = sub_A05C(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 1918985586;
    }

    else
    {
      v4 = 7105633;
    }
  }

  else
  {
    sub_9F7C();
  }

  sub_A074(v2, v4, v3);

  return sub_16AF54();
}

Swift::Int sub_7AA8(uint64_t a1, char a2)
{
  v3 = sub_16AF14();
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x4C7972616D697270;
    }

    else
    {
      v5 = 0x7261646E6F636573;
    }
  }

  else
  {
    sub_9F34();
  }

  sub_A074(v3, v5, v4);

  return sub_16AF54();
}

Swift::Int sub_7BA4(uint64_t a1)
{
  sub_A05C(a1);
  sub_16A6F4();

  return sub_16AF54();
}

Swift::Int sub_7C30(uint64_t a1)
{
  v2 = sub_A05C(a1);
  if (v1)
  {
    v4 = 0x6564697374756FLL;
  }

  else
  {
    v4 = 0x656469736E69;
  }

  sub_A074(v2, v4, v3);

  return sub_16AF54();
}

Swift::Int sub_7CCC(uint64_t a1)
{
  v2 = sub_A05C(a1);
  if (v1)
  {
    v4 = 1751607656;
  }

  else
  {
    v4 = 7827308;
  }

  sub_A074(v2, v4, v3);

  return sub_16AF54();
}

Swift::Int sub_7D44(uint64_t a1)
{
  sub_A05C(a1);
  if (v1)
  {
    sub_A214();
    if (v4)
    {
      v5 = 0x6C61756E616DLL;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    sub_A0E0();
  }

  sub_A074(v2, v5, v3);

  return sub_16AF54();
}

Swift::Int sub_7E4C(uint64_t a1)
{
  v2 = sub_A05C(a1);
  if (v1)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  else
  {
    v4 = 0x6C6F765F6C6C6163;
  }

  sub_A074(v2, v4, v3);

  return sub_16AF54();
}

Swift::Int sub_7EF4(uint64_t a1)
{
  v2 = sub_A05C(a1);
  if (v1)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  else
  {
    v4 = 1702131053;
  }

  sub_A074(v2, v4, v3);

  return sub_16AF54();
}

Swift::Int sub_7F74(uint64_t a1)
{
  sub_A05C(a1);
  if (v1)
  {
    sub_A214();
    if (v4)
    {
      v5 = 0x656E6F687069;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    sub_9F90();
  }

  sub_A074(v2, v5, v3);

  return sub_16AF54();
}

Swift::Int sub_807C(uint64_t a1)
{
  v2 = sub_A05C(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }
  }

  else
  {
    v4 = 7562617;
  }

  sub_A074(v2, v4, v3);

  return sub_16AF54();
}

Swift::Int sub_8170(uint64_t a1, unsigned __int8 a2)
{
  sub_16AF14();
  sub_16AF24(a2);
  return sub_16AF54();
}

Swift::Int sub_81B4(uint64_t a1)
{
  v2 = sub_A05C(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x646E616D6D6F63;
    }

    else
    {
      v4 = 0x4449707061;
    }
  }

  else
  {
    sub_A1EC();
  }

  sub_A074(v2, v4, v3);

  return sub_16AF54();
}

Swift::Int sub_8230(uint64_t a1)
{
  sub_A05C(a1);
  sub_16AF34(v1);
  return sub_16AF54();
}

Swift::Int sub_8284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_16AF14();
  a3(v6, a2);
  return sub_16AF54();
}

Swift::Int sub_82E8(uint64_t a1)
{
  sub_A05C(a1);
  if (v1)
  {
    sub_A148();
    sub_A0A8();
  }

  else
  {
    sub_A160();
  }

  sub_A074(v2, v3, v4);

  return sub_16AF54();
}

Swift::Int sub_8360(uint64_t a1)
{
  sub_A05C(a1);
  if (v1)
  {
    sub_A0C4();
  }

  else
  {
    sub_9FA4();
    v3 = v5 | 4;
  }

  sub_A074(v2, v3, v4);

  return sub_16AF54();
}

Swift::Int sub_83E8(uint64_t a1)
{
  v2 = sub_A05C(a1);
  if (v1)
  {
    v4 = 0x64656B636F6CLL;
  }

  else
  {
    v4 = 0x656D614E726163;
  }

  sub_A074(v2, v4, v3);

  return sub_16AF54();
}

Swift::Int sub_8454(uint64_t a1)
{
  sub_A05C(a1);
  sub_16A6F4();

  return sub_16AF54();
}

Swift::Int sub_84C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16AF14();
  sub_16A6F4();
  return sub_16AF54();
}

Swift::Int sub_850C(uint64_t a1)
{
  v2 = sub_A05C(a1);
  if (v1)
  {
    v4 = 0x656D614E726163;
  }

  else
  {
    v4 = 0x6174536B6E757274;
  }

  sub_A074(v2, v4, v3);

  return sub_16AF54();
}

Swift::Int sub_859C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_16AF14();
  a3(a2);
  sub_16A6F4();

  return sub_16AF54();
}

Swift::Int sub_8604(uint64_t a1)
{
  v2 = sub_A05C(a1);
  if (v1)
  {
    v4 = 0xD00000000000001FLL;
  }

  else
  {
    v4 = 0x656D614E726163;
  }

  sub_A074(v2, v4, v3);

  return sub_16AF54();
}

Swift::Int sub_8690(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_16AF14();
  a3(a2);
  return sub_16AF54();
}

void sub_86E4(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v202 = a2;
  v205 = a3;
  sub_169004();
  sub_9F48();
  v193 = v5;
  v194 = v4;
  __chkstk_darwin(v4);
  sub_A138();
  v192 = v7 - v6;
  v8 = sub_1693D4();
  sub_9F48();
  v201 = v9;
  __chkstk_darwin(v10);
  sub_A128();
  v196 = v11 - v12;
  __chkstk_darwin(v13);
  v203 = &v191 - v14;
  v195 = type metadata accessor for LocalizedMeasurementUnitProvider(0);
  __chkstk_darwin(v195);
  sub_A138();
  v197 = v16 - v15;
  sub_169414();
  sub_9F48();
  v199 = v17;
  v200 = v18;
  __chkstk_darwin(v17);
  sub_A128();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  v198 = &v191 - v23;
  v24 = sub_5758(&qword_1E5F60, &qword_16D388);
  __chkstk_darwin(v24 - 8);
  v26 = &v191 - v25;
  v27 = sub_169D24();
  sub_9F48();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_A128();
  v33 = v31 - v32;
  __chkstk_darwin(v34);
  v36 = &v191 - v35;
  sub_1693E4();
  sub_9F48();
  v38 = v37;
  __chkstk_darwin(v39);
  sub_A138();
  v42 = v41 - v40;
  v43 = *(v38 + 16);
  v204 = a1;
  v44 = a1;
  v46 = v45;
  v43(v42, v44, v45);
  v47 = (*(v38 + 88))(v42, v46);
  if (v47 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v48 = sub_A118();
    v49(v48);
    (*(v29 + 32))(v36, v42, v27);
    v203 = v36;
    sub_169D14();
    v50 = sub_169974();
    v51 = v29;
    if (sub_9E2C(v26, 1, v50) == 1)
    {
      sub_9E54(v26);
LABEL_4:
      sub_9F6C();
      sub_16ACF4(36);
      sub_A020();
      v209._countAndFlagsBits = 0xD000000000000021;
      v209._object = 0x800000000017F680;
      sub_16A744(v209);
      sub_A08C(v52, v53, v54, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      sub_A248();
      v55 = v207;
      v56 = v208;
      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v57 = sub_16A584();
      sub_9DA0(v57, qword_1E65C0);
      sub_16A9A4();
      sub_9F5C();
      sub_386D8(v58, v59, v60, v61, v62, v63, 28, v55, v56);

      (*(v29 + 8))(v203, v27);
      goto LABEL_7;
    }

    v82 = sub_169954();
    v84 = v83;
    (*(*(v50 - 8) + 8))(v26, v50);
    if (v82 == 0x616D6D6F43726163 && v84 == 0xEB0000000073646ELL)
    {

      v87 = v202;
    }

    else
    {
      v86 = sub_16AE54();

      v87 = v202;
      if ((v86 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v116 = v203;
    (*(v29 + 16))(v33, v203, v27);
    v117 = type metadata accessor for CarCommandsNLv3Intent(0);
    swift_allocObject();
    v118 = sub_E7DB8(v33);
    if (*(v87 + 16))
    {
      sub_E6024();
      sub_9FC4();
      if (!sub_9B58(v119, v87, v120))
      {
        sub_9F6C();
        sub_16ACF4(53);
        sub_A020();
        v213._countAndFlagsBits = 0xD000000000000022;
        v213._object = 0x800000000017F650;
        sub_16A744(v213);
        sub_9DD8();
        v214._countAndFlagsBits = sub_16A924();
        sub_16A744(v214);

        sub_A02C();
        sub_A08C(v141, v142, v143, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
        sub_A248();
        v144 = v207;
        if (qword_1E58E8 != -1)
        {
          sub_9ED4(&qword_1E58E8);
        }

        v145 = sub_16A584();
        sub_9DA0(v145, qword_1E65C0);
        sub_16A9A4();
        sub_A1D8();
        sub_9F5C();
        sub_386D8(v146, v147, v148, v149, v150, v151, 37, v144, v191);

        (*(v51 + 8))(v203, v27);
        goto LABEL_7;
      }
    }

    v121 = v205;
    v205[3] = v117;
    v121[4] = &off_1D9080;
    *v121 = v118;
    (*(v51 + 8))(v116, v27);
    return;
  }

  if (v47 == enum case for Parse.directInvocation(_:))
  {
    v64 = sub_A118();
    v65(v64);
    v66 = v201;
    v67 = v203;
    (*(v201 + 32))();
    v68 = v8;
    v69 = sub_1693B4();
    v71 = sub_FD1A8(v69, v70);
    if (v71 != 7)
    {
      v103 = v71;
      v104 = type metadata accessor for CarCommandsDirectInvocationIntent(0);
      v105 = v196;
      (*(v66 + 16))(v196, v67, v8);
      v106 = sub_14C76C(v103, v105);
      v204 = "dsNLIntentFactory.swift";
      sub_9F6C();
      sub_16ACF4(63);
      sub_A020();
      v210._countAndFlagsBits = 0xD00000000000002ALL;
      v210._object = 0x800000000017F5D0;
      sub_16A744(v210);
      v206 = v106;
      sub_16AD84();
      v211._countAndFlagsBits = 0xD000000000000011;
      v211._object = 0x800000000017F600;
      sub_16A744(v211);
      LOBYTE(v206) = v103;
      sub_16AD84();
      v107 = v207;
      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v108 = sub_16A584();
      sub_9DA0(v108, qword_1E65C0);
      sub_16A9A4();
      sub_A1D8();
      sub_9F5C();
      sub_386D8(v109, v110, v111, v112, v113, v114, 59, v107, v191);

      v115 = v205;
      v205[3] = v104;
      v115[4] = &off_1DA5E0;
      *v115 = v106;
      (*(v66 + 8))(v203, v68);
      return;
    }

    v72 = sub_1693B4();
    v74 = v73;
    v75 = sub_168A94();
    v76 = [v75 identifier];

    v77 = sub_16A664();
    v79 = v78;

    if (v77 == v72 && v79 == v74)
    {
    }

    else
    {
      v81 = sub_A1B4();

      if ((v81 & 1) == 0)
      {
        v161 = sub_168A84();
        v162 = [v161 identifier];

        v163 = sub_16A664();
        v165 = v164;

        if (v163 == v72 && v165 == v74)
        {
        }

        else
        {
          v167 = sub_A1B4();

          if ((v167 & 1) == 0)
          {
            sub_9F6C();
            sub_16ACF4(75);
            sub_A020();
            v216._countAndFlagsBits = 0xD00000000000002BLL;
            v216._object = 0x800000000017F580;
            sub_16A744(v216);
            sub_16AD84();
            v217._countAndFlagsBits = 0xD00000000000001ELL;
            v217._object = 0x800000000017F5B0;
            sub_16A744(v217);
            v169 = v207;
            v168 = v208;
            if (qword_1E58E8 != -1)
            {
              sub_9ED4(&qword_1E58E8);
            }

            v170 = sub_16A584();
            sub_9DA0(v170, qword_1E65C0);
            sub_16A9A4();
            sub_9F5C();
            sub_386D8(v171, v172, v173, v174, v175, v176, 69, v169, v168);

            (*(v66 + 8))(v67, v68);
            goto LABEL_7;
          }
        }

        v134 = type metadata accessor for CarCommandsDirectInvocationIntent(0);
        v135 = &enum case for ConfirmationResponse.rejected(_:);
        goto LABEL_39;
      }
    }

    v134 = type metadata accessor for CarCommandsDirectInvocationIntent(0);
    v135 = &enum case for ConfirmationResponse.confirmed(_:);
LABEL_39:
    v137 = v192;
    v136 = v193;
    v138 = v194;
    (*(v193 + 104))(v192, *v135, v194);
    v139 = sub_14C9DC(v137);
    (*(v136 + 8))(v137, v138);
    v140 = v205;
    v205[3] = v134;
    v140[4] = &off_1DA5E0;
    *v140 = v139;
    (*(v66 + 8))(v67, v68);
    return;
  }

  if (v47 == enum case for Parse.uso(_:))
  {
    v88 = sub_A118();
    v89(v88);
    v91 = v199;
    v90 = v200;
    v92 = v198;
    (*(v200 + 32))(v198, v42, v199);
    (*(v90 + 16))(v21, v92, v91);
    v93 = v197;
    sub_168444();
    sub_169EB4();
    sub_169EA4();
    sub_169E94();

    sub_169ED4();

    v94 = type metadata accessor for CarCommandsNLv4Intent(0);
    swift_allocObject();
    v95 = sub_8A460(v21, v93);
    if (v95)
    {
      v96 = v95;
      v97 = v202;
      if (!*(v202 + 16) || (sub_89438(), sub_9FC4(), sub_9B58(v98, v97, v99)))
      {
        v100 = v205;
        v205[3] = v94;
        v100[4] = &off_1D6698;
        *v100 = v96;
        v101 = sub_A200();
        v102(v101);
        return;
      }

      sub_9F6C();
      sub_16ACF4(53);
      sub_A020();
      v218._countAndFlagsBits = 0xD000000000000022;
      v218._object = 0x800000000017F650;
      sub_16A744(v218);
      sub_9DD8();
      v219._countAndFlagsBits = sub_16A924();
      sub_16A744(v219);

      sub_A02C();
      sub_A08C(v177, v178, v179, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      sub_A248();
      v180 = v207;
      v181 = v208;
      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v182 = sub_16A584();
      sub_9DA0(v182, qword_1E65C0);
      sub_16A9A4();
      sub_9F5C();
      sub_386D8(v183, v184, v185, v186, v187, v188, 51, v180, v181);
    }

    else
    {
      sub_9F6C();
      sub_16ACF4(36);
      sub_A020();
      v215._countAndFlagsBits = 0xD000000000000022;
      v215._object = 0x800000000017F620;
      sub_16A744(v215);
      sub_16AD84();
      v153 = v207;
      v152 = v208;
      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v154 = sub_16A584();
      sub_9DA0(v154, qword_1E65C0);
      sub_16A9A4();
      sub_9F5C();
      sub_386D8(v155, v156, v157, v158, v159, v160, 44, v153, v152);
    }

    v189 = sub_A200();
    v190(v189);
LABEL_7:
    sub_A220();
    return;
  }

  sub_9F6C();
  sub_16ACF4(19);
  sub_A020();
  v212._countAndFlagsBits = 0xD000000000000010;
  v212._object = 0x800000000017F560;
  sub_16A744(v212);
  sub_A08C(v122, v123, v124, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  sub_A248();
  v125 = v207;
  v126 = v208;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v127 = sub_16A584();
  sub_9DA0(v127, qword_1E65C0);
  sub_16A9A4();
  sub_9F5C();
  sub_386D8(v128, v129, v130, v131, v132, v133, 73, v125, v126);

  sub_A220();
  (*(v38 + 8))(v42, v46);
}

uint64_t sub_96FC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = a1, sub_16AF14(), sub_82B98(v3, v4, v5), sub_16A6F4(), , v6 = sub_16AF54(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = 0xE600000000000000;
      v11 = 0x64656B636F6CLL;
      switch(*(*(a2 + 48) + v8))
      {
        case 1:
          v10 = 0xE800000000000000;
          v12 = 0x696873616C66;
          goto LABEL_12;
        case 2:
          v11 = 0x746E656C6973;
          break;
        case 3:
          v10 = 0xE800000000000000;
          v12 = 0x69646E756F73;
LABEL_12:
          v11 = v12 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
          break;
        case 4:
          v10 = 0xE800000000000000;
          v11 = 0x64656B636F6C6E75;
          break;
        case 5:
          v10 = 0xE400000000000000;
          v11 = 1802658160;
          break;
        case 6:
          v10 = 0xE700000000000000;
          v11 = 0x6E776F6E6B6E75;
          break;
        case 7:
          v11 = 0x61635F7075746573;
          v10 = 0xED000079616C7072;
          break;
        case 8:
          v10 = 0xE300000000000000;
          v11 = 7827308;
          break;
        case 9:
          v10 = 0xE400000000000000;
          v11 = 1751607656;
          break;
        case 0xA:
          sub_A1A8();
          v11 = v14 + 1;
          v10 = 0x800000000017E3D0;
          break;
        case 0xB:
          sub_A1A8();
          v11 = v13 + 3;
          v10 = 0x800000000017E3F0;
          break;
        case 0xC:
          v11 = 0x697461676976616ELL;
          v10 = 0xEE006574754D6E6FLL;
          break;
        case 0xD:
          v11 = 0xD000000000000010;
          v10 = 0x800000000017E420;
          break;
        default:
          break;
      }

      v15 = 0xE600000000000000;
      v16 = 0x64656B636F6CLL;
      switch(v3)
      {
        case 1:
          v15 = 0xE800000000000000;
          v17 = 0x696873616C66;
          goto LABEL_27;
        case 2:
          v16 = 0x746E656C6973;
          break;
        case 3:
          v15 = 0xE800000000000000;
          v17 = 0x69646E756F73;
LABEL_27:
          v16 = v17 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
          break;
        case 4:
          v15 = 0xE800000000000000;
          v16 = 0x64656B636F6C6E75;
          break;
        case 5:
          v15 = 0xE400000000000000;
          v16 = 1802658160;
          break;
        case 6:
          v15 = 0xE700000000000000;
          v16 = 0x6E776F6E6B6E75;
          break;
        case 7:
          v16 = 0x61635F7075746573;
          v15 = 0xED000079616C7072;
          break;
        case 8:
          v15 = 0xE300000000000000;
          v16 = 7827308;
          break;
        case 9:
          v15 = 0xE400000000000000;
          v16 = 1751607656;
          break;
        case 10:
          sub_A1A8();
          v16 = v19 + 1;
          v15 = 0x800000000017E3D0;
          break;
        case 11:
          sub_A1A8();
          v16 = v18 + 3;
          v15 = 0x800000000017E3F0;
          break;
        case 12:
          v16 = 0x697461676976616ELL;
          v15 = 0xEE006574754D6E6FLL;
          break;
        case 13:
          v16 = 0xD000000000000010;
          v15 = 0x800000000017E420;
          break;
        default:
          break;
      }

      if (v11 == v16 && v10 == v15)
      {
        break;
      }

      v21 = sub_16AE54();

      if ((v21 & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v21 & 1;
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

BOOL sub_9B58(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_16AF14();
  a3(a1);
  sub_16A6F4();

  v6 = sub_16AF54();
  v7 = ~(-1 << *(a2 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = a3(*(*(a2 + 48) + v8));
    v13 = v12;
    if (v11 == a3(a1) && v13 == v14)
    {

      return 1;
    }

    v16 = sub_16AE54();

    v6 = v8 + 1;
  }

  while ((v16 & 1) == 0);
  return v10;
}

BOOL sub_9CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_16AF14();
  sub_16A6F4();
  v6 = sub_16AF54();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_16AE54();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_9DA0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_9DD8()
{
  result = qword_1E5F68;
  if (!qword_1E5F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E5F68);
  }

  return result;
}

uint64_t sub_9E54(uint64_t a1)
{
  v2 = sub_5758(&qword_1E5F60, &qword_16D388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_9ED4(uint64_t a1)
{

  return swift_once();
}

void sub_A020()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

void sub_A02C()
{
  v1._countAndFlagsBits = 0x617020726F662022;
  v1._object = 0xEE0022203A657372;

  sub_16A744(v1);
}

void *sub_A05C(uint64_t a1, ...)
{

  return sub_16AF14();
}

uint64_t sub_A074(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_16A6F4();
}

uint64_t sub_A08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_16AD84();
}

uint64_t sub_A1B4()
{

  return sub_16AE54();
}

double sub_A220()
{
  v1 = *(v0 - 112);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

void sub_A248()
{
  v1._countAndFlagsBits = 34;
  v1._object = 0xE100000000000000;

  sub_16A744(v1);
}

uint64_t sub_A2A8()
{
  sub_D2DC();
  v1[38] = v2;
  v1[39] = v0;
  v1[37] = v3;
  v4 = sub_5758(&qword_1E5F78, &unk_16D400);
  sub_D414(v4);
  v1[40] = sub_D3C8();
  v5 = sub_168B74();
  sub_D414(v5);
  v1[41] = sub_D3C8();
  v6 = sub_1691E4();
  v1[42] = v6;
  v1[43] = *(v6 - 8);
  v1[44] = sub_D3C8();
  v7 = sub_16A164();
  sub_D414(v7);
  v1[45] = sub_D3C8();
  v8 = type metadata accessor for NeedsDisambiguationParameters(0);
  v1[46] = v8;
  sub_D414(v8);
  v1[47] = sub_D3C8();
  v9 = sub_168E14();
  v1[48] = v9;
  v1[49] = *(v9 - 8);
  v1[50] = sub_D3C8();
  v10 = sub_D388();

  return _swift_task_switch(v10);
}

uint64_t sub_A43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_D440();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = (*(**(v24 + 312) + 264))();
  v28 = 0x800000000017F8A0;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v29 = 0xD00000000000001FLL;
  v30 = sub_16A584();
  sub_9DA0(v30, qword_1E65C0);
  v57 = sub_16A9A4();
  *(v24 + 256) = 0xD00000000000009BLL;
  *(v24 + 264) = 0x800000000017F6D0;
  *(v24 + 272) = 47;
  *(v24 + 280) = 0xE100000000000000;
  sub_D030();
  v31 = sub_16AB34();
  v32 = sub_15AE4(v31);
  v34 = v33;

  if (v34)
  {
    a12 = v32;
    a13 = v34;
    v58._countAndFlagsBits = 32;
    v58._object = 0xE100000000000000;
    sub_16A744(v58);
    v59._countAndFlagsBits = 0xD00000000000001FLL;
    v59._object = 0x800000000017F8A0;
    sub_16A744(v59);
    v29 = a12;
    v28 = a13;
  }

  a12 = (&stru_20 + 26);
  a13 = 0xE100000000000000;
  *(v24 + 288) = 34;
  v60._countAndFlagsBits = sub_16AE24();
  sub_16A744(v60);

  v61._countAndFlagsBits = a12;
  v61._object = a13;
  sub_16A744(v61);

  v35._countAndFlagsBits = sub_378D0(v27);
  if (v35._object)
  {
    a12 = &stru_20;
    a13 = 0xE100000000000000;
    sub_16A744(v35);

    v62._countAndFlagsBits = a12;
    v62._object = a13;
    sub_16A744(v62);
  }

  v36 = sub_16A574();
  if (os_log_type_enabled(v36, v57))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    a12 = v38;
    *v37 = 136315138;
    v39 = sub_15BC8(v29, v28, &a12);

    *(v37 + 4) = v39;
    _os_log_impl(&dword_0, v36, v57, "%s", v37, 0xCu);
    sub_D13C(v38);
    sub_D494(v38);
    sub_D494(v37);
  }

  else
  {
  }

  v42 = *(v24 + 304);
  v41 = *(v24 + 312);
  (*(*v41 + 216))(v40);
  sub_12AF64(v42, (v24 + 16));
  v43 = sub_D13C((v24 + 16));
  (*(*v41 + 240))(v43);
  sub_D084((v24 + 56), *(v24 + 80));
  LOBYTE(v41) = sub_11B5C0();
  sub_D13C((v24 + 56));
  if (v41)
  {
    v44 = *(v24 + 312);
    type metadata accessor for DisambiguationSnippetFactory();
    (*(*v44 + 288))();
    swift_task_alloc();
    sub_D3E0();
    *(v24 + 408) = v45;
    *v45 = v46;
    v45[1] = sub_A924;
    sub_D2C0();

    return sub_CF988();
  }

  else
  {
    v50 = *(v24 + 368);
    v49 = *(v24 + 376);
    v51 = sub_11A408(*(v24 + 304), 1);
    v52 = *(v50 + 20);
    v53 = sub_16A0C4();
    sub_5370(v49 + v52, 1, 1, v53);
    sub_5370(v49 + *(v50 + 24), 1, 1, v53);
    *v49 = v51;
    type metadata accessor for CarCommandsCATPatternsExecutor(0);
    sub_16A154();
    *(v24 + 424) = sub_16A094();
    v54 = swift_task_alloc();
    *(v24 + 432) = v54;
    *v54 = v24;
    v54[1] = sub_AAD4;
    sub_D2C0();

    return sub_156E34(v55);
  }
}

uint64_t sub_A924()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 416) = v0;

  sub_D13C((v3 + 216));
  if (v0)
  {
    v7 = sub_B058;
  }

  else
  {
    v7 = sub_AA2C;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_AA2C()
{
  sub_D3A4();
  (*(v0[49] + 8))(v0[50], v0[48]);
  sub_D45C();

  sub_D37C();

  return v1();
}

uint64_t sub_AAD4()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v7 + 440) = v6;
  *(v7 + 448) = v0;

  if (v0)
  {
    v8 = sub_B100;
  }

  else
  {
    v8 = sub_ABF4;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_ABF4()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[40];
  sub_D364();
  (*(v5 + 288))();
  sub_168B54();
  sub_169164();
  sub_1691A4();
  sub_1691C4();
  (*(v2 + 16))(v4, v1, v3);
  sub_5370(v4, 0, 1, v3);
  sub_1691B4();
  v6 = v0[20];
  v7 = v0[21];
  sub_D084(v0 + 17, v6);
  swift_task_alloc();
  sub_D3E0();
  v0[57] = v8;
  *v8 = v9;
  v8[1] = sub_AD7C;
  v10 = v0[55];
  v11 = v0[44];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v0 + 22, v10, v11, v6, v7);
}

uint64_t sub_AD7C()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 464) = v0;

  if (v0)
  {
    v7 = sub_AF78;
  }

  else
  {
    v7 = sub_AE7C;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_AE7C()
{
  sub_D3A4();
  v1 = *(v0 + 440);
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);
  v5 = *(v0 + 376);
  v4 = *(v0 + 384);
  v6 = *(v0 + 296);
  (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
  sub_D124((v0 + 176), v0 + 96);
  sub_D13C((v0 + 136));

  sub_D0C8(v5);
  (*(v3 + 8))(v2, v4);
  sub_D124((v0 + 96), v6);
  sub_D45C();

  sub_D37C();

  return v7();
}

uint64_t sub_AF78()
{
  sub_D3A4();
  v1 = v0[55];
  v3 = v0[49];
  v2 = v0[50];
  v5 = v0[47];
  v4 = v0[48];
  (*(v0[43] + 8))(v0[44], v0[42]);
  sub_D13C(v0 + 17);

  sub_D0C8(v5);
  (*(v3 + 8))(v2, v4);
  sub_D318();

  sub_D37C();

  return v6();
}

uint64_t sub_B058()
{
  sub_D3A4();
  (*(v0[49] + 8))(v0[50], v0[48]);
  sub_D318();

  sub_D37C();

  return v1();
}

uint64_t sub_B100()
{
  sub_D3A4();
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  sub_D0C8(v0[47]);
  (*(v2 + 8))(v1, v3);
  sub_D318();

  sub_D37C();

  return v4();
}

uint64_t sub_B1B4()
{
  v1 = sub_1693E4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v0 + 264);
  v74[3] = *v0 + 264;
  v75 = v0;
  v74[2] = v6;
  v74[1] = v6(v3);
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_16ACF4(30);
  v84._countAndFlagsBits = 0xD00000000000001CLL;
  v84._object = 0x800000000017F8F0;
  sub_16A744(v84);
  sub_169384();
  sub_16AD84();
  v7 = *(v2 + 8);
  v7(v5, v1);
  v8 = v80;
  v9 = v81;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v10 = sub_16A584();
  sub_9DA0(v10, qword_1E65C0);
  sub_16A9A4();
  sub_D370();
  sub_386D8(v11, v12, v13, v14, v15, v16, 56, v8, v9);

  sub_169384();
  sub_86E4(v5, &_swiftEmptySetSingleton, v76);
  v7(v5, v1);
  if (!v76[3])
  {
    sub_D188(v76, &qword_1E5F80, &unk_16E7E0);
    v77 = 0u;
    v78 = 0u;
    v79 = 0;
    goto LABEL_13;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E5F98, &unk_16D420);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v79 = 0;
    v77 = 0u;
    v78 = 0u;
    goto LABEL_13;
  }

  if (!*(&v78 + 1))
  {
LABEL_13:
    sub_D188(&v77, &qword_1E5F88, &unk_16D410);
    sub_D398();
    v31();
    sub_9FB8();
    sub_16A9A4();
    sub_D264();
    sub_D370();
    sub_386D8(v32, v33, v34, v35, v36, v37, 59, v38, v74[0]);
    sub_D47C();
    return sub_169204();
  }

  sub_D124(&v77, &v80);
  v17 = v82;
  v18 = v83;
  sub_D084(&v80, v82);
  if ((*(v18 + 24))(v17, v18) & 1) != 0 || (v19 = v82, v20 = v83, sub_D084(&v80, v82), ((*(v20 + 40))(v19, v20)))
  {
    sub_D398();
    v21();
    sub_9FB8();
    sub_16A9A4();
    sub_D264();
    sub_D370();
    sub_386D8(v22, v23, v24, v25, v26, v27, 64, v28, v74[0]);
    sub_D47C();
    v29 = sub_1691F4();
  }

  else
  {
    v41 = v82;
    v40 = v83;
    sub_D084(&v80, v82);
    sub_D400();
    v43 = v42(v41);
    if (v44)
    {
      v45 = v43 == 0xD000000000000012 && v44 == 0x800000000017F6B0;
      if (v45 || (sub_16AE54() & 1) != 0)
      {

        sub_D398();
        v46();
        sub_9FB8();
        sub_16A9A4();
        sub_D370();
        sub_386D8(v47, v48, v49, v50, v51, v52, 70, v53, v40);
        sub_D47C();
        sub_16A1C4();
      }

      else
      {
        sub_D398();
        v62();
        *&v77 = 0;
        *(&v77 + 1) = 0xE000000000000000;
        sub_16ACF4(29);

        sub_D434();
        *&v77 = 0xD00000000000001BLL;
        *(&v77 + 1) = v63;
        v64 = v82;
        sub_D084(&v80, v82);
        sub_D400();
        v76[0] = v65(v64);
        v76[1] = v66;
        sub_5758(&qword_1E5FA0, &qword_172DD0);
        v85._countAndFlagsBits = sub_16A694();
        sub_16A744(v85);

        v67 = v77;
        sub_16A9A4();
        sub_D370();
        sub_386D8(v68, v69, v70, v71, v72, v73, 73, v67, *(&v67 + 1));

        sub_169224();
        sub_16A1C4();
      }

      sub_16A1A4();
      v30 = sub_169214();

      goto LABEL_10;
    }

    sub_D398();
    v54();
    sub_9FB8();
    sub_16A9A4();
    sub_D264();
    sub_D370();
    sub_386D8(v55, v56, v57, v58, v59, v60, 78, v61, v74[0]);
    sub_D47C();
    v29 = sub_169204();
  }

  v30 = v29;
LABEL_10:
  sub_D13C(&v80);
  return v30;
}

uint64_t sub_B838()
{
  sub_D364();
  v1 = (*(v0 + 264))();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  sub_386D8(v3, v1, 0xD00000000000009BLL, 0x800000000017F6D0, 0xD000000000000021, 0x800000000017F850, 83, 0xD000000000000015, 0x800000000017F880);
  sub_1690F4();
  return sub_1690D4();
}

uint64_t sub_B950()
{
  sub_D364();
  v1 = (*(v0 + 264))();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  sub_386D8(v3, v1, 0xD00000000000009BLL, 0x800000000017F6D0, 0xD00000000000001CLL, 0x800000000017F7F0, 88, 0xD000000000000013, 0x800000000017F810);
  type metadata accessor for CarCommandsError(0);
  sub_D1E8(&qword_1E92F0, type metadata accessor for CarCommandsError, &unk_17A85C);
  swift_allocError();
  sub_D434();
  *v4 = 0xD000000000000013;
  v4[1] = v5;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_D37C();

  return v6();
}

uint64_t sub_BB40(uint64_t a1, void *a2)
{
  sub_5758(&qword_1E5F70, &unk_16F3F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_16D3A0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x800000000017F6B0;
  *(inited + 48) = 0x6C7070612E6D6F63;
  *(inited + 56) = 0xEF64737361702E65;
  v28 = a1;
  v29 = a2;
  v27 = &v28;
  v6 = sub_100D74(sub_D010, v26, inited);
  swift_setDeallocating();
  v7 = sub_EFFB0();
  v8 = (*(*v2 + 264))(v7);
  if (v6)
  {
    sub_9FB8();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v9 = sub_16A584();
    sub_9DA0(v9, qword_1E65C0);
    sub_16A9A4();
    sub_D3EC();
    sub_386D8(v10, v8, v11, v12, v13, v14, 101, 0xD000000000000037, a2);
    sub_168FB4();
    sub_16A1C4();
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_16ACF4(29);

    sub_D434();
    v28 = 0xD00000000000001ALL;
    v29 = v15;
    v30._countAndFlagsBits = a1;
    v30._object = a2;
    sub_16A744(v30);
    v31._countAndFlagsBits = 46;
    v31._object = 0xE100000000000000;
    sub_16A744(v31);
    v16 = v28;
    v17 = v29;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v18 = sub_16A584();
    sub_9DA0(v18, qword_1E65C0);
    sub_16A9A4();
    sub_D3EC();
    sub_386D8(v19, v8, v20, v21, v22, v23, 104, v16, v17);

    sub_168FB4();
    sub_16A1C4();
  }

  sub_16A1A4();
  v24 = sub_168FA4();

  return v24;
}

uint64_t sub_BE1C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return sub_D2B0();
}

uint64_t sub_BE34()
{
  v1 = v0[13];
  v0[9] = swift_getAssociatedTypeWitness();
  swift_getMetatypeMetadata();
  v2 = sub_16A694();
  v4 = v3;
  v0[14] = v2;
  v0[15] = v3;
  (*(*v1 + 360))();
  sub_D084(v0 + 2, v0[5]);
  sub_10B184(&off_1D1838);
  v6 = v5;
  v0[16] = v5;
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_BF7C;

  return sub_49B14(v2, v4, v6);
}

uint64_t sub_BF7C()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v2 = v1;
  v3 = *v0;
  sub_D254();
  *v4 = v3;
  *(v6 + 144) = v5;

  v7 = sub_D388();

  return _swift_task_switch(v7);
}

uint64_t sub_C080()
{
  v0[10] = v0[18];
  v1 = v0 + 10;
  v3 = v0[14];
  v2 = v0[15];
  sub_D13C(v0 + 2);
  v4 = sub_F2E00();
  v0[7] = v3;
  v0[8] = v2;
  v5 = swift_task_alloc();
  *(v5 + 16) = v0 + 7;
  LOBYTE(v3) = sub_100D74(sub_D234, v5, v4);

  if (v3)
  {
    sub_F3020();
    sub_16A7B4();
    if (*(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v1 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_16A7F4();
    }

    sub_16A814();
  }

  else
  {
    v1 = v0 + 18;
  }

  v6 = *v1;
  v0[19] = *v1;
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_C204;

  return sub_C320(v6);
}

uint64_t sub_C204()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v2 = v1;
  v3 = *v0;
  sub_D254();
  *v4 = v3;
  *(v6 + 168) = v5;

  v7 = sub_D388();

  return _swift_task_switch(v7);
}

uint64_t sub_C320(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = sub_168ED4();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  v4 = sub_168EF4();
  v2[33] = v4;
  v2[34] = *(v4 - 8);
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_C43C);
}

uint64_t sub_C820()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  v3 = sub_D388();

  return _swift_task_switch(v3);
}

unint64_t sub_D030()
{
  result = qword_1E9300;
  if (!qword_1E9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E9300);
  }

  return result;
}

void *sub_D084(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_D0C8(uint64_t a1)
{
  v2 = type metadata accessor for NeedsDisambiguationParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D124(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_D13C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_D188(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_5758(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_D1E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_D2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{

  sub_386D8(a1, v10, a3, v12 | 0x8000000000000000, 0xD00000000000001ALL, (v11 | 0x8000000000000000), 135, v9, a9);
}

uint64_t sub_D318()
{
}

void sub_D338()
{

  sub_16ACF4(33);
}

uint64_t sub_D3C8()
{

  return swift_task_alloc();
}

uint64_t sub_D45C()
{
}

uint64_t sub_D47C()
{

  return sub_169224();
}

uint64_t sub_D494(uint64_t a1)
{
}

uint64_t sub_D4FC@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v45 = sub_5758(&qword_1E6048, &qword_16D890);
  sub_10AFC();
  __chkstk_darwin(v2);
  sub_10B64();
  v44 = v3;
  v5 = __chkstk_darwin(v4);
  v42 = &v41 - v6;
  __chkstk_darwin(v5);
  v8 = &v41 - v7;
  v9 = sub_1693E4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  sub_10B64();
  v43 = v11;
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v46 = v1;
  v15 = *(v1 + 176);
  v49 = "confirmed";
  v50 = "user responded: ";
  sub_1693A4();
  sub_10AB4();
  sub_10958(v16, v17, &protocol conformance descriptor for Input);
  v18 = sub_16AE24();
  v20 = v19;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v21 = sub_16A584();
  sub_9DA0(v21, qword_1E65C0);
  sub_16A9A4();
  sub_10B78();
  sub_386D8(v22, v15, v23, v24, 0xD000000000000016, v25, 33, v18, v20);

  sub_169384();
  sub_10C440(v8);
  v26 = *(v10 + 8);
  v26(v14, v9);
  v27 = sub_169004();
  v48 = v8;
  if (sub_9E2C(v8, 1, v27) == 1)
  {
    goto LABEL_4;
  }

  v41 = v9;
  v36 = v48;
  v37 = v42;
  sub_109F8(v48, v42);
  v38 = *(v27 - 8);
  v39 = (*(v38 + 88))(v37, v27);
  if (v39 == enum case for ConfirmationResponse.confirmed(_:))
  {
    *(v46 + qword_1F0A50) = 1;
LABEL_9:
    sub_168C64();
    return sub_109A0(v36, &qword_1E6048, &qword_16D890);
  }

  if (v39 == enum case for ConfirmationResponse.rejected(_:))
  {
    *(v46 + qword_1F0A50) = 0;
    goto LABEL_9;
  }

  (*(v38 + 8))(v37, v27);
  v9 = v41;
LABEL_4:
  v28 = *(v46 + 176);
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_16ACF4(38);

  v51 = 0xD00000000000001BLL;
  v52 = 0x800000000017FD70;
  v29 = v43;
  sub_169384();
  sub_10C440(v44);
  v26(v29, v9);
  v53._countAndFlagsBits = sub_16A694();
  sub_16A744(v53);

  v54._countAndFlagsBits = 0x65726F6E6749202ELL;
  v54._object = 0xE900000000000064;
  sub_16A744(v54);
  v30 = v51;
  v31 = v52;
  sub_16A9A4();
  sub_10B78();
  sub_386D8(v32, v28, v33, v34, 0xD000000000000016, v35, 42, v30, v31);

  sub_168C74();
  v36 = v48;
  return sub_109A0(v36, &qword_1E6048, &qword_16D890);
}

uint64_t sub_D99C()
{
  sub_D2DC();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_5758(&qword_1E6048, &qword_16D890);
  sub_D414(v4);
  v1[5] = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_DA24()
{
  v1 = *(*(v0 + 32) + 176);
  sub_16ACF4(18);

  sub_1693A4();
  sub_10AB4();
  sub_10958(v2, v3, &protocol conformance descriptor for Input);
  v15._countAndFlagsBits = sub_16AE24();
  sub_16A744(v15);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = sub_16A584();
  sub_9DA0(v6, qword_1E65C0);
  v7 = sub_16A9A4();
  sub_386D8(v7, v1, 0xD00000000000008BLL, 0x800000000017FAE0, 0xD000000000000024, 0x800000000017FD00, 48, 0xD000000000000010, 0x800000000017FD30);

  v8 = *(v5 + qword_1F0A50);
  v9 = sub_169004();
  sub_10AFC();
  v11 = &enum case for ConfirmationResponse.confirmed(_:);
  if (!v8)
  {
    v11 = &enum case for ConfirmationResponse.rejected(_:);
  }

  (*(v10 + 104))(v4, *v11, v9);
  sub_5370(v4, 0, 1, v9);
  sub_169374();

  sub_D37C();

  return v12();
}

uint64_t sub_DC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_D2B0();
}

uint64_t sub_DDA0()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_D37C();

  return v3();
}

uint64_t sub_DE80()
{
  sub_D2DC();
  *(v1 + 264) = v2;
  *(v1 + 272) = v0;
  *(v1 + 448) = v3;
  *(v1 + 256) = v4;
  v5 = sub_168E64();
  *(v1 + 280) = v5;
  sub_10AEC(v5);
  *(v1 + 288) = v6;
  *(v1 + 296) = sub_D3C8();
  v7 = sub_168E14();
  *(v1 + 304) = v7;
  sub_10AEC(v7);
  *(v1 + 312) = v8;
  *(v1 + 320) = sub_D3C8();
  v9 = sub_168454();
  *(v1 + 328) = v9;
  sub_10AEC(v9);
  *(v1 + 336) = v10;
  *(v1 + 344) = sub_D3C8();
  v11 = sub_5758(&qword_1E6040, &unk_16D620);
  sub_D414(v11);
  *(v1 + 352) = swift_task_alloc();
  *(v1 + 360) = swift_task_alloc();
  v12 = sub_D388();

  return _swift_task_switch(v12);
}

uint64_t sub_E004()
{
  sub_10BA4();
  sub_10B8C();
  v1 = v0[45];
  v2 = v0[34];
  v3 = sub_16A1E4();
  sub_5370(v1, 1, 1, v3);
  sub_169074();
  swift_allocObject();

  sub_169064();
  sub_10824(v2 + 96, (v0 + 2));
  sub_D084(v0 + 2, v0[5]);
  sub_168AD4();
  sub_169054();
  v5 = v4;

  v6 = sub_10B58();
  v7(v6);
  v8 = sub_D13C(v0 + 2);
  if (v5)
  {
    v10 = v0[44];
    v9 = v0[45];
    sub_11F3A4(v8);
    sub_16A1D4();
    sub_109A0(v9, &qword_1E6040, &unk_16D620);
    sub_5370(v10, 0, 1, v3);
    sub_108E8(v10, v9);
  }

  sub_12B25C();
  sub_10824(v2 + 96, (v0 + 7));
  swift_task_alloc();
  sub_D3E0();
  v0[46] = v11;
  *v11 = v12;
  v11[1] = sub_E1D8;
  sub_10B0C();

  return static TCCTemplates.promptToEnableApp(appDisplayInfo:deviceState:)(v13);
}

uint64_t sub_E1D8()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 376) = v0;

  sub_109A0(v3 + 56, &qword_1E6030, &unk_173620);
  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_E2E8()
{
  sub_D2DC();
  sub_10824(*(v0 + 272) + 96, v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 384) = v1;
  *v1 = v0;
  v1[1] = sub_E38C;
  v2 = *(v0 + 448);

  return sub_4DC30(v2, v0 + 96);
}

uint64_t sub_E38C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  *v4 = *v1;
  v3[49] = v5;
  v3[50] = v0;

  sub_D13C(v3 + 12);
  sub_10B4C();

  return _swift_task_switch(v6);
}

uint64_t sub_E494()
{
  sub_10BC0();
  sub_D3A4();
  v1 = v0[45];
  (*(v0[39] + 8))(v0[40], v0[38]);
  sub_109A0(v1, &qword_1E6040, &unk_16D620);
  sub_10ACC();

  sub_D37C();
  sub_10BD4();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_E548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  if (sub_11B48C())
  {
    v13 = v12[49] & 0xC000000000000001;
    sub_1487EC();
    if (v13)
    {
      v14 = sub_16AD04();
    }

    else
    {
      v14 = *(v12[49] + 32);
    }

    v12[51] = v14;

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_10824(v12[34] + 96, (v12 + 17));
      sub_D084(v12 + 17, v12[20]);
      sub_10B58();
      v15 = sub_168B24();
      sub_D13C(v12 + 17);
      v16 = v12[34] + 96;
      if (v15)
      {
        sub_10824(v16, (v12 + 27));
        swift_task_alloc();
        sub_D3E0();
        v12[52] = v17;
        *v17 = v18;
        v17[1] = sub_E8A0;
        sub_10B0C();

        return sub_EE0C();
      }

      else
      {
        sub_10824(v16, (v12 + 22));
        swift_task_alloc();
        sub_D3E0();
        v12[54] = v36;
        *v36 = v37;
        v36[1] = sub_EA84;
        sub_10B0C();

        return sub_F3A4();
      }
    }
  }

  else
  {
  }

  v21 = v12[45];
  v22 = v12[37];
  v23 = v12[35];
  v24 = v12[36];
  type metadata accessor for CarCommandsError(0);
  sub_10958(&qword_1E92F0, type metadata accessor for CarCommandsError, &unk_17A85C);
  swift_allocError();
  *v25 = 0x7463657078656E55;
  v25[1] = 0xEF77656976206465;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  (*(v24 + 8))(v22, v23);
  v26 = sub_10B98();
  v27(v26);
  sub_109A0(v21, &qword_1E6040, &unk_16D620);

  sub_D37C();
  sub_10B0C();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_E8A0()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 424) = v0;

  sub_D13C((v3 + 216));
  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_E9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = *(v12 + 360);
  v14 = *(v12 + 296);
  v15 = *(v12 + 280);
  v16 = *(v12 + 288);

  (*(v16 + 8))(v14, v15);
  v17 = sub_10B98();
  v18(v17);
  sub_109A0(v13, &qword_1E6040, &unk_16D620);

  sub_D37C();
  sub_10B0C();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_EA84()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 440) = v0;

  sub_D13C((v3 + 176));
  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_EB84()
{
  sub_10BC0();
  sub_D3A4();
  v1 = v0[45];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  (*(v0[36] + 8))(v0[37], v0[35]);
  (*(v3 + 8))(v2, v4);
  sub_109A0(v1, &qword_1E6040, &unk_16D620);
  sub_10ACC();

  sub_D37C();
  sub_10BD4();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_EC54()
{
  sub_10B28();
  v4 = sub_10B98();
  v5(v4);
  (*(v3 + 8))(v0, v2);
  sub_109A0(v1, &qword_1E6040, &unk_16D620);
  sub_10ACC();

  sub_D37C();

  return v6();
}

uint64_t sub_ED30()
{
  sub_10B28();
  v4 = sub_10B98();
  v5(v4);
  (*(v3 + 8))(v0, v2);
  sub_109A0(v1, &qword_1E6040, &unk_16D620);
  sub_10ACC();

  sub_D37C();

  return v6();
}

uint64_t sub_EE0C()
{
  sub_D2DC();
  v3 = v2;
  v1[7] = v4;
  v1[8] = v0;
  v1[5] = v5;
  v1[6] = v6;
  v1[3] = v2;
  v1[4] = v7;
  v1[2] = v8;
  v9 = swift_task_alloc();
  v1[9] = v9;
  *v9 = v1;
  v9[1] = sub_EEB0;

  return static TCCTemplates.promptToEnableAppSnippetTitle(appDisplayInfo:)(v3);
}

uint64_t sub_EEB0()
{
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[10] = v6;
  v3[11] = v7;

  if (v0)
  {
    v8 = *(v5 + 8);

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    v3[12] = v10;
    *v10 = v5;
    v10[1] = sub_F020;
    v11 = v3[3];

    return static TCCTemplates.promptToEnableAppSnippetSubtitle(appDisplayInfo:)(v11);
  }
}

uint64_t sub_F020(uint64_t a1)
{
  sub_10BC0();
  sub_D3A4();
  v4 = v3;
  v6 = v5;
  sub_D358();
  v8 = v7;
  sub_10AA4();
  *v9 = v8;
  v10 = *v2;
  sub_D254();
  *v11 = v10;
  v8[13] = v1;

  if (!v1)
  {
    v8[14] = v4;
    v8[15] = v6;
  }

  sub_10B4C();
  sub_10BD4();

  return _swift_task_switch(v12);
}

uint64_t sub_F130()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_F18C()
{
  sub_10BC0();
  sub_D3A4();
  v1 = *(v0 + 32);
  [v1 setStyle:SAUIConfirmationViewStyleSYSTEMValue];

  v2 = sub_16A644();

  [v1 setTitle:v2];

  v3 = sub_16A644();

  [v1 setSubtitle:v3];

  swift_task_alloc();
  sub_D3E0();
  *(v0 + 128) = v4;
  *v4 = v5;
  v4[1] = sub_F2C4;
  sub_10BD4();

  return sub_F3A4();
}

uint64_t sub_F2C4()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_D37C();

  return v3();
}

uint64_t sub_F3A4()
{
  sub_D2DC();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v7 = sub_5758(&qword_1E5F78, &unk_16D400);
  sub_D414(v7);
  v1[13] = sub_D3C8();
  v8 = sub_D388();

  return _swift_task_switch(v8);
}

uint64_t sub_F430()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v18 = *(v0 + 96);
  v5 = *(v0 + 56);
  sub_D084(v2, v2[3]);
  v6 = sub_168B24();
  sub_168E44((v6 & 1) == 0);
  sub_D084(v2, v2[3]);
  sub_168AF4();
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_16D440;
  *(v7 + 32) = v4;
  v8 = sub_168E14();
  sub_10AFC();
  (*(v9 + 16))(v1, v3, v8);
  sub_5370(v1, 0, 1, v8);
  v10 = sub_169434();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v5[3] = v10;
  v5[4] = &protocol witness table for AceOutput;
  sub_10888(v5);
  v11 = v4;
  sub_168D14();

  sub_109A0(v0 + 16, &qword_1E6038, &unk_16D610);
  sub_109A0(v1, &qword_1E5F78, &unk_16D400);
  v12 = *(v18 + 176);
  sub_16ACF4(28);

  v13 = [v11 description];
  sub_16A664();

  v20._countAndFlagsBits = sub_10B58();
  sub_16A744(v20);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v14 = sub_16A584();
  sub_9DA0(v14, qword_1E65C0);
  v15 = sub_16A9A4();
  sub_386D8(v15, v12, 0xD00000000000008BLL, 0x800000000017FAE0, 0xD000000000000054, 0x800000000017FC30, 93, 0xD00000000000001ALL, 0x800000000017FC90);

  sub_D37C();

  return v16();
}

uint64_t sub_F748(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_F890(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_F9D8()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_D37C();

  return v3();
}

uint64_t sub_FAB8()
{
  sub_D2DC();
  v1[22] = v2;
  v1[23] = v0;
  v3 = sub_5758(&qword_1E5F78, &unk_16D400);
  sub_D414(v3);
  v1[24] = sub_D3C8();
  v4 = sub_168E64();
  v1[25] = v4;
  sub_10AEC(v4);
  v1[26] = v5;
  v1[27] = sub_D3C8();
  v6 = sub_D388();

  return _swift_task_switch(v6);
}

uint64_t sub_FB88()
{
  sub_D2DC();
  sub_10824(v0[23] + 96, (v0 + 2));
  swift_task_alloc();
  sub_D3E0();
  v0[28] = v1;
  *v1 = v2;
  v1[1] = sub_FC2C;
  v3 = v0[27];

  return static TCCTemplates.confirmationRejected(deviceState:)(v3, v0 + 2);
}

uint64_t sub_FC2C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 232) = v0;

  sub_109A0(v3 + 16, &qword_1E6030, &unk_173620);
  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_FD3C()
{
  sub_10B8C();
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  sub_10824(v2 + 96, v0 + 56);
  sub_10824(v2 + 96, v0 + 96);
  sub_D084((v0 + 96), *(v0 + 120));
  sub_168AF4();
  v4 = sub_168E14();
  sub_5370(v1, 1, 1, v4);
  v5 = sub_169434();
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  v3[3] = v5;
  v3[4] = &protocol witness table for AceOutput;
  sub_10888(v3);
  sub_168D04();
  sub_109A0(v0 + 136, &qword_1E6038, &unk_16D610);
  sub_109A0(v1, &qword_1E5F78, &unk_16D400);
  sub_D13C((v0 + 56));
  v6 = sub_10B58();
  v7(v6);
  sub_D13C((v0 + 96));

  sub_D37C();

  return v8();
}

uint64_t sub_FED8()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

void *sub_FF50()
{
  v0 = sub_3D044();
  sub_D13C((v0 + qword_1F0A58));
  return v0;
}

uint64_t sub_FF88()
{
  v0 = sub_FF50();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1001C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_D99C();
}

uint64_t sub_100C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_F748(a1);
}

uint64_t sub_10164(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_F890(a1);
}

uint64_t sub_10200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v15 = type metadata accessor for CommonClientTCCAcceptanceFlowStrategy(0, *(a5 + 416), *(a5 + 424), v14);
  *v13 = v6;
  v13[1] = sub_10A9C;

  return ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v15, a6);
}

uint64_t sub_102E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1039C;

  return sub_DC4C(a1, a2, a3);
}

uint64_t sub_1039C()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_D37C();

  return v3();
}

uint64_t sub_1047C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v13 = type metadata accessor for CommonClientTCCAcceptanceFlowStrategy(0, *(a4 + 416), *(a4 + 424), v12);
  *v11 = v5;
  v11[1] = sub_10A9C;

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:)(a1, a2, a3, v13, a5);
}

uint64_t sub_1055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v13 = type metadata accessor for CommonClientTCCAcceptanceFlowStrategy(0, *(a4 + 416), *(a4 + 424), v12);
  *v11 = v5;
  v11[1] = sub_10A9C;

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:)(a1, a2, a3, v13, a5);
}

uint64_t sub_1063C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v13 = type metadata accessor for CommonClientTCCAcceptanceFlowStrategy(0, *(a4 + 416), *(a4 + 424), v12);
  *v11 = v5;
  v11[1] = sub_10A9C;

  return RequestTCCAcceptanceFlowStrategyAsync.makePromptForDeviceUnlock(app:intent:)(a1, a2, a3, v13, a5);
}

uint64_t sub_1071C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v13 = type metadata accessor for CommonClientTCCAcceptanceFlowStrategy(0, *(a4 + 416), *(a4 + 424), v12);
  *v11 = v5;
  v11[1] = sub_10A9C;

  return RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:)(a1, a2, a3, v13, a5);
}

uint64_t sub_10824(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10888(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_108E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E6040, &unk_16D620);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10958(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_109A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_5758(a2, a3);
  sub_10AFC();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_109F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E6048, &qword_16D890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10ACC()
{
}

void sub_10B28()
{
  v2 = *(v0 + 408);
}

uint64_t SetCarRadioStationIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = v1;
  return sub_D2B0();
}

uint64_t sub_10C0C()
{
  v1 = v0[26];
  sub_16ACF4(18);

  v2 = [v1 description];
  v3 = sub_16A664();
  v5 = v4;

  v14._countAndFlagsBits = v3;
  v14._object = v5;
  sub_16A744(v14);

  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v6 = v0[27];
  v7 = sub_16A584();
  v0[28] = sub_9DA0(v7, qword_1E65C0);
  sub_16A9A4();
  sub_1207C();
  sub_386D8(v8, 0x400uLL, 0xD00000000000009FLL, 0x800000000017FD90, v9, v10, 21, 0xD000000000000010, 0x800000000017FE30);

  sub_D084((v6 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SetCarRadioStationIntentHandler_service), *(v6 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SetCarRadioStationIntentHandler_service + 24));
  v11 = swift_task_alloc();
  v0[29] = v11;
  *v11 = v0;
  v11[1] = sub_10DE4;

  return sub_13AB58((v0 + 2), 0);
}

uint64_t sub_10DE4()
{
  sub_D2DC();
  sub_D358();
  v2 = *v1;
  sub_D254();
  *v3 = v2;
  *(v4 + 240) = v0;

  if (v0)
  {
    v5 = sub_11118;
  }

  else
  {
    v5 = sub_10EE8;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_10EE8()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_D084(v0 + 2, v1);
  v5 = (*(v2 + 56) + **(v2 + 56));
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_11014;

  return v5(v0 + 12, v1, v2);
}

uint64_t sub_11014()
{
  sub_D2DC();
  sub_D358();
  v2 = *v1;
  sub_D254();
  *v3 = v2;
  *(v4 + 256) = v0;

  if (v0)
  {
    v5 = sub_115F0;
  }

  else
  {
    v5 = sub_111E0;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_11118()
{
  swift_errorRetain();
  sub_16A9A4();
  sub_120CC();
  sub_12138();
  v12 = v0;
  sub_1207C();
  sub_120A0(v1, v2, v3, v4, v5, v6, v7, v8, v12);

  sub_16A444();
  sub_1211C();
  sub_12150();
  v9 = sub_120EC();

  return v10(v9);
}

uint64_t sub_111E0()
{
  if (*(v0 + 120))
  {
    v2 = *(v0 + 208);
    sub_D124((v0 + 96), v0 + 56);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    sub_D084((v0 + 56), v3);
    *(v0 + 160) = sub_16A3D4();
    *(v0 + 168) = &off_1D72D0;
    *(v0 + 136) = v2;
    v5 = *(v4 + 8);
    v6 = v2;
    v17 = (v5 + *v5);
    v7 = swift_task_alloc();
    *(v0 + 264) = v7;
    *v7 = v0;
    v7[1] = sub_11468;

    return v17(v0 + 136, v3, v4);
  }

  else
  {
    sub_11CC0(v0 + 96);
    type metadata accessor for CarCommandsError(0);
    sub_11D28();
    swift_allocError();
    *v9 = 0xD000000000000032;
    v9[1] = 0x800000000017FE50;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D13C((v0 + 16));
    swift_errorRetain();
    sub_16A9A4();
    sub_120CC();
    sub_12138();
    v16 = v10;
    sub_1207C();
    sub_386D8(v1, 0x400uLL, 0xD00000000000009FLL, 0x800000000017FD90, v11, v12, 32, v13, v16);

    sub_16A444();
    sub_1211C();
    sub_12150();
    v14 = sub_120EC();

    return v15(v14);
  }
}

uint64_t sub_11468()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v3 + 272) = v0;

  if (v0)
  {
    v6 = sub_116C0;
  }

  else
  {
    sub_D13C((v3 + 136));
    v6 = sub_11574;
  }

  return _swift_task_switch(v6);
}

uint64_t sub_11574()
{
  sub_D2DC();
  sub_D13C(v0 + 7);
  sub_D13C(v0 + 2);
  sub_16A444();
  v1 = sub_16A434();
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_115F0()
{
  sub_D13C((v0 + 16));
  swift_errorRetain();
  sub_16A9A4();
  sub_120CC();
  sub_12138();
  v13 = v1;
  sub_1207C();
  sub_120A0(v2, v3, v4, v5, v6, v7, v8, v9, v13);

  sub_16A444();
  sub_1211C();
  sub_12150();
  v10 = sub_120EC();

  return v11(v10);
}

uint64_t sub_116C0()
{
  sub_D13C(v0 + 17);
  sub_D13C(v0 + 7);
  sub_D13C(v0 + 2);
  swift_errorRetain();
  sub_16A9A4();
  sub_120CC();
  sub_12138();
  v13 = v1;
  sub_1207C();
  sub_120A0(v2, v3, v4, v5, v6, v7, v8, v9, v13);

  sub_16A444();
  sub_1211C();
  sub_12150();
  v10 = sub_120EC();

  return v11(v10);
}

uint64_t sub_117C0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_11884;

  return SetCarRadioStationIntentHandler.handle(intent:)(v6);
}

uint64_t sub_11884(void *a1)
{
  sub_D358();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v1;
  sub_D254();
  *v8 = v7;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_119F0()
{
  sub_D2DC();
  v1 = [*(v0 + 16) frequency];
  if (v1)
  {
  }

  else
  {
    sub_11D80(*(v0 + 16));
    if (v2)
    {
    }
  }

  sub_16A444();
  v3 = sub_16A434();
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_11AC4(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_132CA0(a6, v10);
}

uint64_t sub_11B48(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_12070;

  return SetCarRadioStationIntentHandler.confirm(intent:)(v6);
}

id SEGetSignalActivationStatusIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetCarRadioStationIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetCarRadioStationIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_11CC0(uint64_t a1)
{
  v2 = sub_5758(&qword_1E6060, &unk_1752B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_11D28()
{
  result = qword_1E92F0;
  if (!qword_1E92F0)
  {
    type metadata accessor for CarCommandsError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E92F0);
  }

  return result;
}

uint64_t sub_11D80(void *a1)
{
  v1 = [a1 channel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16A664();

  return v3;
}

uint64_t sub_11E0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_120FC(v1);

  return v3(v2);
}

uint64_t sub_11EA8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_11EF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_120FC(v1);

  return v3(v2);
}

uint64_t sub_11F8C()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void sub_120A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9)
{

  sub_386D8(v9, 0x400uLL, 0xD00000000000009FLL, v10 | 0x8000000000000000, a5, a6, 32, a8, a9);
}

uint64_t sub_120CC()
{

  return swift_getErrorValue();
}

uint64_t sub_1211C()
{

  return sub_16A434();
}

uint64_t sub_12138()
{

  return sub_16AEB4();
}

uint64_t sub_12150()
{
}

uint64_t getEnumTagSinglePayload for NLTirePosition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NLTirePosition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x122CCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_12318(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_12348@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_12318(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_12374@<X0>(uint64_t *a1@<X8>)
{
  result = sub_12328(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_123A4()
{
  result = qword_1E6090;
  if (!qword_1E6090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6090);
  }

  return result;
}

uint64_t sub_123F8()
{
  sub_D2DC();
  v1[297] = v0;
  v1[291] = v2;
  v1[285] = v3;
  v4 = sub_168E14();
  v1[303] = v4;
  sub_10AEC(v4);
  v1[309] = v5;
  v1[315] = sub_D3C8();
  sub_16A164();
  v1[321] = sub_D3C8();
  v6 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_10AEC(v6);
  v1[327] = v7;
  v1[333] = *(v8 + 64);
  v1[339] = swift_task_alloc();
  v1[345] = swift_task_alloc();
  v9 = sub_D388();

  return _swift_task_switch(v9);
}

uint64_t sub_12538()
{
  v38 = v0;
  v2 = *(v0[297] + 176);
  v3 = 0x8000000000180280;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v4 = 0xD00000000000002DLL;
  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v36 = sub_16A9A4();
  v0[265] = 0xD000000000000097;
  v0[266] = 0x80000000001801E0;
  v0[267] = 47;
  v0[268] = 0xE100000000000000;
  sub_D030();
  v6 = sub_16AB34();
  sub_15AE4(v6);
  sub_16950();
  if (v1)
  {
    v40._countAndFlagsBits = 32;
    v40._object = 0xE100000000000000;
    sub_16A744(v40);
    v41._countAndFlagsBits = 0xD00000000000002DLL;
    v41._object = 0x8000000000180280;
    sub_16A744(v41);
    v4 = (v0 + 265);
    v3 = v1;
  }

  v37._countAndFlagsBits = 58;
  v37._object = 0xE100000000000000;
  v0[273] = 21;
  v42._countAndFlagsBits = sub_16AE24();
  sub_16A744(v42);

  sub_16A744(v37);

  v7._countAndFlagsBits = sub_378D0(v2);
  if (v7._object)
  {
    v37._countAndFlagsBits = 32;
    v37._object = 0xE100000000000000;
    sub_16A744(v7);

    v43._countAndFlagsBits = 32;
    v43._object = 0xE100000000000000;
    sub_16A744(v43);
  }

  v8 = sub_16A574();
  if (os_log_type_enabled(v8, v36))
  {
    v9 = sub_16B54();
    v10 = swift_slowAlloc();
    v37._countAndFlagsBits = v10;
    *v9 = 136315138;
    v11 = sub_15BC8(v4, v3, &v37._countAndFlagsBits);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_0, v8, v36, "%s", v9, 0xCu);
    sub_D13C(v10);
    sub_D494(v10);
    sub_D494(v9);
  }

  else
  {
  }

  sub_5758(&qword_1E62D8, &qword_16D898);
  v12 = sub_1690A4();
  v0[351] = v12;
  v13 = [v12 carName];
  if (v13)
  {
    v14 = v13;
    sub_99C94();

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v0[345];
  v17 = sub_16A0C4();
  sub_5370(v16, v15, 1, v17);
  v18 = [v12 enabled];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 BOOLValue];
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_1690A4();
  v22 = [v21 isSetCarActivationStatusRequest];

  if (v22)
  {
    v23 = [v22 BOOLValue];
  }

  else
  {
    v23 = 0;
  }

  v24 = v0[345];
  v25 = v0[339];
  v26 = v0[333];
  v27 = v0[327];
  type metadata accessor for CarCommandsSetClimateStatusCATsSimple(0);
  sub_16A154();
  v28 = sub_16A0F4();
  v0[357] = v28;
  sub_16198(v24, v25);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  v0[363] = v30;
  *(v30 + 16) = v23;
  *(v30 + 24) = v28;
  sub_16304(v25, v30 + v29);
  *(v30 + v29 + v26) = v20;

  sub_16484(0, &qword_1E6308, DialogExecutionResult_ptr);
  swift_asyncLet_begin();
  type metadata accessor for CarCommandsCATsSimple(0);
  sub_16A154();
  v31 = sub_16A0F4();
  v0[364] = v31;
  v32 = swift_allocObject();
  v0[365] = v32;
  *(v32 + 16) = v20;
  *(v32 + 24) = v31;

  swift_asyncLet_begin();

  v33 = swift_asyncLet_begin();
  sub_12C0B0(v33);
  sub_F38BC();
  sub_168D84();
  v34 = sub_166D8();

  return _swift_asyncLet_get_throwing(v34);
}

uint64_t sub_12AAC()
{
  sub_D2DC();
  v1[366] = v0;
  if (v0)
  {

    return _swift_task_switch(sub_13104);
  }

  else
  {
    v2 = v1[279];
    v1[367] = v2;
    v3 = v2;

    return _swift_asyncLet_get_throwing(v1 + 162);
  }
}

uint64_t sub_12B58()
{
  sub_D2DC();
  *(v1 + 2944) = v0;
  if (v0)
  {

    v2 = sub_D388();

    return _swift_task_switch(v2);
  }

  else
  {
    *(v1 + 2952) = *(v1 + 2168);
    *(v1 + 2960) = *(v1 + 2176);

    v3 = sub_166C8();

    return _swift_asyncLet_get_throwing(v3);
  }
}

uint64_t sub_12C04()
{
  sub_D2DC();
  v1[371] = v0;
  if (v0)
  {
    v2 = v1[367];

    v3 = sub_134BC;
  }

  else
  {
    v1[372] = type metadata accessor for ConfirmationSnippetFactory();
    v3 = sub_12C94;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_12C94()
{
  sub_1696C();
  v1 = v0[297];
  v0[373] = v0[270];
  swift_beginAccess();
  sub_10824(v1 + 184, (v0 + 247));

  v2 = swift_task_alloc();
  v0[374] = v2;
  *v2 = v0;
  v2[1] = sub_12D88;

  return sub_14A94C();
}

uint64_t sub_12D88()
{
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 2936);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 3000) = v0;

  sub_D13C((v3 + 1976));

  if (v0)
  {
    v9 = sub_13698;
  }

  else
  {
    v9 = sub_12EF4;
  }

  return _swift_task_switch(v9);
}

uint64_t sub_12EF4()
{
  sub_D2DC();
  v0 = sub_166B4();
  v1(v0);
  v2 = sub_166C8();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_12FA4()
{
  sub_D2DC();

  v0 = sub_166D8();

  return _swift_asyncLet_finish(v0);
}

uint64_t sub_13018()
{
  v1 = *(v0 + 2760);

  sub_D188(v1, &qword_1E6300, &qword_16ECE0);

  sub_1677C();

  return v2();
}

uint64_t sub_13104()
{
  sub_D2DC();
  v0 = sub_166B4();
  v1(v0);
  v2 = sub_166C8();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_131B4()
{
  sub_D2DC();

  v0 = sub_166D8();

  return _swift_asyncLet_finish(v0);
}

uint64_t sub_13228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  sub_16670();

  sub_D188(v12, &qword_1E6300, &qword_16ECE0);

  sub_D37C();
  sub_10B0C();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_132E0()
{
  sub_D2DC();
  v0 = sub_166B4();
  v1(v0);
  v2 = sub_166C8();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_13390()
{
  sub_D2DC();

  v0 = sub_166D8();

  return _swift_asyncLet_finish(v0);
}

uint64_t sub_13404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  sub_16670();

  sub_D188(v12, &qword_1E6300, &qword_16ECE0);

  sub_D37C();
  sub_10B0C();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_134BC()
{
  sub_D2DC();
  v0 = sub_166B4();
  v1(v0);
  v2 = sub_166C8();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_1356C()
{
  sub_D2DC();

  v0 = sub_166D8();

  return _swift_asyncLet_finish(v0);
}

uint64_t sub_135E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  sub_16670();

  sub_D188(v12, &qword_1E6300, &qword_16ECE0);

  sub_D37C();
  sub_10B0C();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_13698()
{
  sub_D2DC();
  v0 = sub_166B4();
  v1(v0);
  v2 = sub_166C8();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_13748()
{
  sub_D2DC();

  v0 = sub_166D8();

  return _swift_asyncLet_finish(v0);
}

uint64_t sub_137BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  sub_16670();

  sub_D188(v12, &qword_1E6300, &qword_16ECE0);

  sub_D37C();
  sub_10B0C();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_13874(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v5[8] = a1;
  if (a2)
  {
    v6 = swift_task_alloc();
    v5[9] = v6;
    *v6 = v5;
    v6[1] = sub_13990;

    return sub_AE100();
  }

  else
  {
    v8 = swift_task_alloc();
    v5[10] = v8;
    *v8 = v5;
    v8[1] = sub_13AAC;

    return sub_ADBAC();
  }
}

uint64_t sub_13990()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  sub_16B08(v4);
  v5 = *v1;
  sub_D254();
  *v6 = v5;

  if (v0)
  {
    sub_D37C();

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_13AA4);
  }
}

uint64_t sub_13AAC()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  sub_16AF4(v4);
  v5 = *v1;
  sub_D254();
  *v6 = v5;

  if (v0)
  {
    sub_D37C();

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_13BC0);
  }
}

uint64_t sub_13BC8(uint64_t a1, char a2)
{
  v2[8] = a1;
  if (a2)
  {
    v3 = swift_task_alloc();
    v2[9] = v3;
    *v3 = v2;
    v3[1] = sub_13CC4;

    return sub_DEB48();
  }

  else
  {
    v5 = swift_task_alloc();
    v2[10] = v5;
    *v5 = v2;
    v5[1] = sub_13E44;

    return sub_DEA20();
  }
}

uint64_t sub_13CC4()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  sub_16B08(v4);
  v5 = *v1;
  sub_D254();
  *v6 = v5;

  if (v0)
  {
    sub_D37C();

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_13DD8);
  }
}

uint64_t sub_13DD8()
{
  sub_1696C();
  v3 = *(v2 + 64);
  sub_16A134();
  sub_16AA0();
  *v3 = v0;
  v3[1] = v1;
  sub_1677C();

  return v4();
}

uint64_t sub_13E44()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  sub_16AF4(v4);
  v5 = *v1;
  sub_D254();
  *v6 = v5;

  if (v0)
  {
    sub_D37C();

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_13F58);
  }
}

uint64_t sub_13F58()
{
  sub_1696C();
  v3 = *(v2 + 64);
  sub_16A134();
  sub_16AA0();
  *v3 = v0;
  v3[1] = v1;
  sub_1677C();

  return v4();
}

uint64_t sub_13FC4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_14058;

  return sub_DD4F0();
}

uint64_t sub_14058()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v7 = *v1;
  sub_D254();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;

    return _swift_task_switch(sub_14190);
  }
}

uint64_t sub_14190()
{
  sub_1696C();
  v3 = *(v2 + 16);
  sub_16A134();
  sub_16AA0();
  *v3 = v0;
  v3[1] = v1;
  sub_1677C();

  return v4();
}

uint64_t sub_14220()
{
  v0 = sub_3D044();
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin41SetClimateStatusConfirmIntentFlowStrategy_commonPatterns));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetClimateStatusConfirmIntentFlowStrategy(uint64_t a1)
{
  result = qword_1E60C0;
  if (!qword_1E60C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_14330()
{
  v0 = sub_1693E4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_169384();
  sub_86E4(v3, &_swiftEmptySetSingleton, v24);
  (*(v1 + 8))(v3, v0);
  if (v24[3])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1E5F98, &unk_16D420);
    if (swift_dynamicCast())
    {
      if (*(&v26 + 1))
      {
        sub_D250(&v25, v28);
        v4 = v29;
        v5 = v30;
        sub_D084(v28, v29);
        if ((*(v5 + 32))(v4, v5))
        {
          sub_168C64();
        }

        else
        {
          if (qword_1E58E8 != -1)
          {
            sub_9ED4(&qword_1E58E8);
          }

          v15 = sub_16A584();
          sub_9DA0(v15, qword_1E65C0);
          sub_16A9A4();
          sub_16824();
          sub_386D8(v16, v17, v18, v19, v20, v21, 29, v22, v23);
          sub_168C54();
        }

        return sub_D13C(v28);
      }
    }

    else
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
    }
  }

  else
  {
    sub_D188(v24, &qword_1E5F80, &unk_16E7E0);
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
  }

  sub_D188(&v25, &qword_1E5F88, &unk_16D410);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v6 = sub_16A584();
  sub_9DA0(v6, qword_1E65C0);
  sub_16A9A4();
  sub_16824();
  sub_386D8(v7, v8, v9, v10, v11, v12, 24, v13, v23);
  return sub_168C74();
}

uint64_t sub_14624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  sub_5758(&qword_1E6048, &qword_16D890);
  v4[26] = swift_task_alloc();
  v5 = sub_1693E4();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_14720);
}

uint64_t sub_14B48()
{
  sub_D2DC();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  sub_5758(&qword_1E6048, &qword_16D890);
  v1[26] = sub_D3C8();
  v5 = sub_1693E4();
  v1[27] = v5;
  sub_10AEC(v5);
  v1[28] = v6;
  v1[29] = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7);
}

uint64_t sub_15048()
{
  sub_D2DC();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  sub_5758(&qword_1E6048, &qword_16D890);
  v1[26] = sub_D3C8();
  v5 = sub_1693E4();
  v1[27] = v5;
  sub_10AEC(v5);
  v1[28] = v6;
  v1[29] = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7);
}

uint64_t sub_1557C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10A9C;

  return sub_14624(a1, a2, a3);
}

uint64_t sub_15648()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_123F8();
}

uint64_t sub_156F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetClimateStatusConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)(a1, a2, v9, a4);
}

uint64_t sub_157BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetClimateStatusConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)(a1, a2, v9, a4);
}

uint64_t sub_15884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetClimateStatusConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)(a1, a2, v9, a4);
}

uint64_t sub_1594C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetClimateStatusConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_1039C;

  return ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)(a1, a2, v9, a4);
}

uint64_t sub_15A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SetClimateStatusConfirmIntentFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_10A9C;

  return ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)(a1, a2, a3, v11, a5);
}

uint64_t sub_15AE4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

uint64_t sub_15B2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + v1 + 31);
  }

  else
  {
    return 5;
  }
}

uint64_t sub_15B48(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_16A714();
  return sub_16A774();
}

unint64_t sub_15BC8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_15C8C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_16138(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_D13C(v11);
  return v7;
}

unint64_t sub_15C8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_15D8C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_16AD24();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_15D8C(uint64_t a1, unint64_t a2)
{
  v3 = sub_15DD8(a1, a2);
  sub_15EF0(&off_1D0010);
  return v3;
}

char *sub_15DD8(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_16A754())
  {
    result = sub_15FD4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_16ACD4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_16AD24();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_15EF0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_16044(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_15FD4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_5758(&qword_1E62E0, &qword_16D8A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_16044(char *result, int64_t a2, char a3, char *a4)
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
    sub_5758(&qword_1E62E0, &qword_16D8A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_16138(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_16198(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_16208()
{
  v1 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_10AEC(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);

  v7 = sub_16A0C4();
  if (!sub_9E2C(v0 + v4, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  return _swift_deallocObject(v0, v6 + v4 + 1, v3 | 7);
}

uint64_t sub_16304(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_16374()
{
  v1 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_10AEC(v1);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7 = *(v6 + *(v3 + 64));
  v8 = swift_task_alloc();
  v9 = sub_16998(v8);
  *v9 = v10;
  v11 = sub_16988(v9);

  return sub_13874(v11, v4, v5, v6, v7);
}

uint64_t sub_16484(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_164C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_164FC()
{
  sub_1696C();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_16998(v2);
  *v3 = v4;
  v5 = sub_16988(v3);

  return sub_13BC8(v5, v1);
}

uint64_t sub_16598()
{
  sub_D2DC();
  v0 = swift_task_alloc();
  v1 = sub_16998(v0);
  *v1 = v2;
  v3 = sub_16988(v1);

  return sub_13FC4(v3);
}

void sub_16670()
{
  v2 = *(v0 + 2808);
}

unint64_t sub_16720()
{
  v2[17] = v0 + 82;
  v2[18] = v1;
  v2[19] = 47;
  v2[20] = 0xE100000000000000;

  return sub_D030();
}

uint64_t sub_16748(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 + 208);

  return sub_5370(v5, a2, 1, v2);
}

void sub_167A0(Swift::String a1)
{

  sub_16A744(a1);
}

uint64_t sub_167C4(uint64_t a1)
{

  return swift_dynamicCast();
}

double sub_167FC()
{
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  return result;
}

double sub_16810()
{
  *(v0 + 88) = 0;
  result = 0.0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  return result;
}

uint64_t sub_16844(uint64_t a1)
{

  return sub_169384();
}

void sub_16864(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_16884(uint64_t a1)
{

  return ConfirmIntentAnswer.init(confirmationResponse:intent:)(v1, v2, a1);
}

unint64_t sub_168A4(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *v11 = a1;

  return sub_15BC8(v10, v9, va);
}

void sub_168C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v11._countAndFlagsBits = 0xD000000000000033;
  v11._object = a10;

  sub_16A744(v11);
}

void sub_168E4()
{
  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;

  sub_16A744(v1);
}

uint64_t sub_16904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_16AB34();
}

uint64_t sub_16924(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_16950()
{
}

uint64_t sub_169A8(uint64_t a1)
{

  return sub_16A9A4();
}

uint64_t sub_169C0()
{
  sub_D13C(v0);
}

uint64_t sub_16A14()
{

  return sub_D250((v0 + 56), v0 + 16);
}

uint64_t sub_16A30()
{

  return swift_slowAlloc();
}

void sub_16A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v15._countAndFlagsBits = a13;
  v15._object = a14;

  sub_16A744(v15);
}

void sub_16A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v15._countAndFlagsBits = a13;
  v15._object = a14;

  sub_16A744(v15);
}

uint64_t sub_16A84()
{

  return sub_16A584();
}

uint64_t sub_16AA0()
{
}

uint64_t sub_16ABC()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_16AD8(uint64_t a1)
{

  return sub_169384();
}

uint64_t sub_16AF4(uint64_t result)
{
  v1[5] = v3;
  v1[6] = result;
  v1[7] = v2;
  return result;
}

uint64_t sub_16B08(uint64_t result)
{
  v1[2] = v3;
  v1[3] = result;
  v1[4] = v2;
  return result;
}

uint64_t sub_16B54()
{

  return swift_slowAlloc();
}

uint64_t sub_16B74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_16BB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_16C38()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_16C68()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_16CA8()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_16CD8()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_16D08()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_16D38()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_16D78()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t sub_16F54(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2F924;

  return SESetClimateStatusIntentHandler.resolveEnabled(for:)(v6);
}

uint64_t SESetClimateStatusIntentHandler.resolveCarName(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_17028()
{
  sub_1696C();
  v1 = [*(v0 + 16) carName];
  *(v0 + 32) = v1;
  sub_3024C(&qword_16D9C0);
  v5 = v2;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_170EC;

  return v5(v1, 9);
}

uint64_t sub_170EC()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  v5 = sub_120EC();

  return v6(v5);
}

uint64_t sub_171E8(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  return _swift_task_switch(sub_1720C);
}

uint64_t sub_1720C()
{
  sub_31520();
  sub_D3A4();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  sub_9FB8();
  v1 = sub_313C8();
  *(v0 + 216) = sub_30A14(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_2FC80(v2);
  v3 = swift_task_alloc();
  v4 = sub_306AC(v3);
  *v4 = v5;
  sub_300F4(v4);
  sub_3150C();

  return sub_29884(v6, v7, v8);
}

uint64_t sub_172F0()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_173D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_D440();
  sub_30E38();
  sub_3068C();
  if (v18)
  {
    v19 = sub_30D90();
    v20 = sub_31174(v19);
    sub_2FF0C(v20);
    objc_opt_self();
    v21 = sub_2FFF0();
    v22 = sub_110574(v21);
    sub_313B0(v22, "successWithResolvedString:");

    sub_30338();
    sub_D2C0();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v32 = *(v17 + 200);
    sub_D188(v17 + 56, &qword_1E6358, &unk_16DA90);
    if (v32)
    {
      sub_30D20(*(v17 + 200));
      sub_30D58();
      sub_30E2C();
      sub_30888("Intent has a carName of ");
      v33 = [v16 description];
      sub_16A664();
      sub_31200();
      sub_30D04();

      sub_308A8(". Getting all carKeys which match this name");
      v34 = sub_16A9A4();
      sub_2FE6C(v34);

      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SESetClimateStatusIntentHandler_carKeyService);
      v35 = sub_CBC08(v16);
    }

    else
    {
      sub_30E8C();
      v37 = sub_31174(v36);
      sub_2FE34(v37);
      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SESetClimateStatusIntentHandler_carKeyService);
      v35 = sub_CCFA8();
    }

    *(v17 + 232) = v35;
    sub_3024C(qword_16DBD0);
    v50 = v38;
    v39 = swift_task_alloc();
    v40 = sub_30EF8(v39);
    *v40 = v41;
    sub_300DC(v40);
    sub_D2C0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v50, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_17604()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  *v4 = *v1;
  sub_312F0(v5);
  if (!v0)
  {
  }

  sub_10B4C();

  return _swift_task_switch(v6);
}

uint64_t sub_17704(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  return sub_D2B0();
}

uint64_t sub_1771C()
{
  sub_31520();
  sub_D3A4();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  sub_9FB8();
  v1 = sub_313C8();
  *(v0 + 216) = sub_30A14(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_2FC80(v2);
  v3 = swift_task_alloc();
  v4 = sub_306AC(v3);
  *v4 = v5;
  sub_300F4(v4);
  sub_3150C();

  return sub_29FB4(v6, v7, v8);
}

uint64_t sub_17800()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_178E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_D440();
  sub_30E38();
  sub_3068C();
  if (v18)
  {
    v19 = sub_30D90();
    v20 = sub_31174(v19);
    sub_2FF0C(v20);
    objc_opt_self();
    v21 = sub_2FFF0();
    v22 = sub_110574(v21);
    sub_313B0(v22, "successWithResolvedString:");

    sub_30338();
    sub_D2C0();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v32 = *(v17 + 200);
    sub_D188(v17 + 56, &qword_1E6358, &unk_16DA90);
    if (v32)
    {
      sub_30D20(*(v17 + 200));
      sub_30D58();
      sub_30E2C();
      sub_30888("Intent has a carName of ");
      v33 = [v16 description];
      sub_16A664();
      sub_31200();
      sub_30D04();

      sub_308A8(". Getting all carKeys which match this name");
      v34 = sub_16A9A4();
      sub_2FE6C(v34);

      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40SEGetSignalActivationStatusIntentHandler_carKeyService);
      v35 = sub_CBC08(v16);
    }

    else
    {
      sub_30E8C();
      v37 = sub_31174(v36);
      sub_2FE34(v37);
      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40SEGetSignalActivationStatusIntentHandler_carKeyService);
      v35 = sub_CCFA8();
    }

    *(v17 + 232) = v35;
    sub_3024C(&qword_16DBC0);
    v50 = v38;
    v39 = swift_task_alloc();
    v40 = sub_30EF8(v39);
    *v40 = v41;
    sub_300DC(v40);
    sub_D2C0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v50, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_17B1C(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  return sub_D2B0();
}

uint64_t sub_17B34()
{
  sub_31520();
  sub_D3A4();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  sub_9FB8();
  v1 = sub_313C8();
  *(v0 + 216) = sub_30A14(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_2FC80(v2);
  v3 = swift_task_alloc();
  v4 = sub_306AC(v3);
  *v4 = v5;
  sub_300F4(v4);
  sub_3150C();

  return sub_2A5CC(v6, v7, v8);
}

uint64_t sub_17C18()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_17D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_D440();
  sub_30E38();
  sub_3068C();
  if (v18)
  {
    v19 = sub_30D90();
    v20 = sub_31174(v19);
    sub_2FF0C(v20);
    objc_opt_self();
    v21 = sub_2FFF0();
    v22 = sub_110574(v21);
    sub_313B0(v22, "successWithResolvedString:");

    sub_30338();
    sub_D2C0();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v32 = *(v17 + 200);
    sub_D188(v17 + 56, &qword_1E6358, &unk_16DA90);
    if (v32)
    {
      sub_30D20(*(v17 + 200));
      sub_30D58();
      sub_30E2C();
      sub_30888("Intent has a carName of ");
      v33 = [v16 description];
      sub_16A664();
      sub_31200();
      sub_30D04();

      sub_308A8(". Getting all carKeys which match this name");
      v34 = sub_16A9A4();
      sub_2FE6C(v34);

      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SESetCarLockStatusIntentHandler_carKeyService);
      v35 = sub_CBC08(v16);
    }

    else
    {
      sub_30E8C();
      v37 = sub_31174(v36);
      sub_2FE34(v37);
      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SESetCarLockStatusIntentHandler_carKeyService);
      v35 = sub_CCFA8();
    }

    *(v17 + 232) = v35;
    sub_3024C(&qword_16DBA0);
    v50 = v38;
    v39 = swift_task_alloc();
    v40 = sub_30EF8(v39);
    *v40 = v41;
    sub_300DC(v40);
    sub_D2C0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v50, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_17F34(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  return sub_D2B0();
}

uint64_t sub_17F4C()
{
  sub_31520();
  sub_D3A4();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  sub_9FB8();
  v1 = sub_313C8();
  *(v0 + 216) = sub_30A14(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_2FC80(v2);
  v3 = swift_task_alloc();
  v4 = sub_306AC(v3);
  *v4 = v5;
  sub_300F4(v4);
  sub_3150C();

  return sub_2ABE4(v6, v7, v8);
}

uint64_t sub_18030()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_18118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_D440();
  sub_30E38();
  sub_3068C();
  if (v18)
  {
    v19 = sub_30D90();
    v20 = sub_31174(v19);
    sub_2FF0C(v20);
    objc_opt_self();
    v21 = sub_2FFF0();
    v22 = sub_110574(v21);
    sub_313B0(v22, "successWithResolvedString:");

    sub_30338();
    sub_D2C0();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v32 = *(v17 + 200);
    sub_D188(v17 + 56, &qword_1E6358, &unk_16DA90);
    if (v32)
    {
      sub_30D20(*(v17 + 200));
      sub_30D58();
      sub_30E2C();
      sub_30888("Intent has a carName of ");
      v33 = [v16 description];
      sub_16A664();
      sub_31200();
      sub_30D04();

      sub_308A8(". Getting all carKeys which match this name");
      v34 = sub_16A9A4();
      sub_2FE6C(v34);

      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin29SESetTrunkStatusIntentHandler_carKeyService);
      v35 = sub_CBC08(v16);
    }

    else
    {
      sub_30E8C();
      v37 = sub_31174(v36);
      sub_2FE34(v37);
      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin29SESetTrunkStatusIntentHandler_carKeyService);
      v35 = sub_CCFA8();
    }

    *(v17 + 232) = v35;
    sub_3024C(&qword_16DB78);
    v50 = v38;
    v39 = swift_task_alloc();
    v40 = sub_30EF8(v39);
    *v40 = v41;
    sub_300DC(v40);
    sub_D2C0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v50, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1834C(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  return sub_D2B0();
}

uint64_t sub_18364()
{
  sub_31520();
  sub_D3A4();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  sub_9FB8();
  v1 = sub_313C8();
  *(v0 + 216) = sub_30A14(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_2FC80(v2);
  v3 = swift_task_alloc();
  v4 = sub_306AC(v3);
  *v4 = v5;
  sub_300F4(v4);
  sub_3150C();

  return sub_2B1FC(v6, v7, v8);
}

uint64_t sub_18448()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_18530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_D440();
  sub_30E38();
  sub_3068C();
  if (v18)
  {
    v19 = sub_30D90();
    v20 = sub_31174(v19);
    sub_2FF0C(v20);
    objc_opt_self();
    v21 = sub_2FFF0();
    v22 = sub_110574(v21);
    sub_313B0(v22, "successWithResolvedString:");

    sub_30338();
    sub_D2C0();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v32 = *(v17 + 200);
    sub_D188(v17 + 56, &qword_1E6358, &unk_16DA90);
    if (v32)
    {
      sub_30D20(*(v17 + 200));
      sub_30D58();
      sub_30E2C();
      sub_30888("Intent has a carName of ");
      v33 = [v16 description];
      sub_16A664();
      sub_31200();
      sub_30D04();

      sub_308A8(". Getting all carKeys which match this name");
      v34 = sub_16A9A4();
      sub_2FE6C(v34);

      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin29SEActivateSignalIntentHandler_carKeyService);
      v35 = sub_CBC08(v16);
    }

    else
    {
      sub_30E8C();
      v37 = sub_31174(v36);
      sub_2FE34(v37);
      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin29SEActivateSignalIntentHandler_carKeyService);
      v35 = sub_CCFA8();
    }

    *(v17 + 232) = v35;
    sub_3024C(&qword_16DB50);
    v50 = v38;
    v39 = swift_task_alloc();
    v40 = sub_30EF8(v39);
    *v40 = v41;
    sub_300DC(v40);
    sub_D2C0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v50, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_18764()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  *v4 = *v1;
  sub_312F0(v5);
  if (!v0)
  {
  }

  sub_10B4C();

  return _swift_task_switch(v6);
}

uint64_t sub_18864()
{
  sub_30984();
  v3 = *(v0 + 248);
  v4 = *(v3 + 16);
  if (!v4)
  {

    sub_31174(v14);
    sub_3020C();
    sub_386D8(v15, v16, v17, v18, v19, v20, 40, v21, v1);
    sub_16484(0, &qword_1E6370, INSpeakableStringResolutionResult_ptr);
    v22 = [swift_getObjCClassFromMetadata() notRequired];
LABEL_13:
    v22;
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    sub_93A6C(*(v0 + 248), v0 + 136);

    if (*(v0 + 160))
    {
      sub_D124((v0 + 136), v0 + 96);
      v5 = sub_309C4((v0 + 96), *(v0 + 120));
      v6 = sub_110574(v5);
      sub_16ACF4(61);
      v47._countAndFlagsBits = 0xD000000000000024;
      v47._object = 0x8000000000180B00;
      sub_16A744(v47);
      v7 = [v6 description];
      sub_16A664();
      sub_31200();
      v48._countAndFlagsBits = v1;
      v48._object = v2;
      sub_16A744(v48);

      v49._countAndFlagsBits = 0xD000000000000017;
      v49._object = 0x8000000000180B30;
      sub_16A744(v49);
      sub_16A9A4();
      sub_3020C();
      sub_386D8(v8, v9, v10, v11, v12, v13, 49, 0, 0xE000000000000000);

      [objc_opt_self() successWithResolvedString:v6];

      sub_D13C((v0 + 96));
      goto LABEL_14;
    }

    sub_D188(v0 + 136, &qword_1E6358, &unk_16DA90);
    sub_16A9A4();
    sub_3020C();
    sub_386D8(v36, v37, v38, v39, v40, v41, 44, v42, 0x8000000000180AD0);
    sub_16484(0, &qword_1E6370, INSpeakableStringResolutionResult_ptr);
    v22 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_13;
  }

  v23 = " no valid carkey";
  sub_16A9A4();
  sub_3020C();
  sub_386D8(v24, v25, v26, v27, v28, v29, 52, v30, 0x8000000000180A90);
  v31 = *(v3 + 16);
  if (v31)
  {
    v32 = (*(v0 + 248) + 32);
    do
    {
      v33 = sub_309C4(v32, v32[3]);
      v23 = sub_110574(v33);
      sub_16A7B4();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_16A7F4();
      }

      sub_16A814();
      v32 += 5;
      --v31;
    }

    while (v31);
  }

  objc_opt_self();
  sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
  sub_16A7C4();
  sub_310FC();
  v34 = sub_30B04();
  [v34 v35];

LABEL_14:
  v43 = sub_120EC();

  return v44(v43);
}

uint64_t sub_18E08(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  return sub_D2B0();
}

uint64_t sub_18E20()
{
  sub_31520();
  sub_D3A4();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  sub_9FB8();
  v1 = sub_313C8();
  *(v0 + 216) = sub_30A14(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_2FC80(v2);
  v3 = swift_task_alloc();
  v4 = sub_306AC(v3);
  *v4 = v5;
  sub_300F4(v4);
  sub_3150C();

  return sub_2BE48(v6, v7, v8);
}

uint64_t sub_18F04()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_18FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_D440();
  sub_30E38();
  sub_3068C();
  if (v18)
  {
    v19 = sub_30D90();
    v20 = sub_31174(v19);
    sub_2FF0C(v20);
    objc_opt_self();
    v21 = sub_2FFF0();
    v22 = sub_110574(v21);
    sub_313B0(v22, "successWithResolvedString:");

    sub_30338();
    sub_D2C0();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v32 = *(v17 + 200);
    sub_D188(v17 + 56, &qword_1E6358, &unk_16DA90);
    if (v32)
    {
      sub_30D20(*(v17 + 200));
      sub_30D58();
      sub_30E2C();
      sub_30888("Intent has a carName of ");
      v33 = [v16 description];
      sub_16A664();
      sub_31200();
      sub_30D04();

      sub_308A8(". Getting all carKeys which match this name");
      v34 = sub_16A9A4();
      sub_2FE6C(v34);

      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SEDeactivateSignalIntentHandler_carKeyService);
      v35 = sub_CBC08(v16);
    }

    else
    {
      sub_30E8C();
      v37 = sub_31174(v36);
      sub_2FE34(v37);
      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SEDeactivateSignalIntentHandler_carKeyService);
      v35 = sub_CCFA8();
    }

    *(v17 + 232) = v35;
    sub_3024C(&qword_16DB28);
    v50 = v38;
    v39 = swift_task_alloc();
    v40 = sub_30EF8(v39);
    *v40 = v41;
    sub_300DC(v40);
    sub_D2C0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v50, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_19220(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  return sub_D2B0();
}

uint64_t sub_19238()
{
  sub_31520();
  sub_D3A4();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  sub_9FB8();
  v1 = sub_313C8();
  *(v0 + 216) = sub_30A14(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_2FC80(v2);
  v3 = swift_task_alloc();
  v4 = sub_306AC(v3);
  *v4 = v5;
  sub_300F4(v4);
  sub_3150C();

  return sub_2C460(v6, v7, v8);
}

uint64_t sub_1931C()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_19404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_D440();
  sub_30E38();
  sub_3068C();
  if (v18)
  {
    v19 = sub_30D90();
    v20 = sub_31174(v19);
    sub_2FF0C(v20);
    objc_opt_self();
    v21 = sub_2FFF0();
    v22 = sub_110574(v21);
    sub_313B0(v22, "successWithResolvedString:");

    sub_30338();
    sub_D2C0();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v32 = *(v17 + 200);
    sub_D188(v17 + 56, &qword_1E6358, &unk_16DA90);
    if (v32)
    {
      sub_30D20(*(v17 + 200));
      sub_30D58();
      sub_30E2C();
      sub_30888("Intent has a carName of ");
      v33 = [v16 description];
      sub_16A664();
      sub_31200();
      sub_30D04();

      sub_308A8(". Getting all carKeys which match this name");
      v34 = sub_16A9A4();
      sub_2FE6C(v34);

      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin29SEGetTrunkStatusIntentHandler_carKeyService);
      v35 = sub_CBC08(v16);
    }

    else
    {
      sub_30E8C();
      v37 = sub_31174(v36);
      sub_2FE34(v37);
      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin29SEGetTrunkStatusIntentHandler_carKeyService);
      v35 = sub_CCFA8();
    }

    *(v17 + 232) = v35;
    sub_3024C(&qword_16DB00);
    v50 = v38;
    v39 = swift_task_alloc();
    v40 = sub_30EF8(v39);
    *v40 = v41;
    sub_300DC(v40);
    sub_D2C0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v50, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_19638(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  return sub_D2B0();
}

uint64_t sub_19650()
{
  sub_31520();
  sub_D3A4();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  sub_9FB8();
  v1 = sub_313C8();
  *(v0 + 216) = sub_30A14(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_2FC80(v2);
  v3 = swift_task_alloc();
  v4 = sub_306AC(v3);
  *v4 = v5;
  sub_300F4(v4);
  sub_3150C();

  return sub_2CA78(v6, v7, v8);
}

uint64_t sub_19734()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_1981C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_D440();
  sub_30E38();
  sub_3068C();
  if (v18)
  {
    v19 = sub_30D90();
    v20 = sub_31174(v19);
    sub_2FF0C(v20);
    objc_opt_self();
    v21 = sub_2FFF0();
    v22 = sub_110574(v21);
    sub_313B0(v22, "successWithResolvedString:");

    sub_30338();
    sub_D2C0();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v32 = *(v17 + 200);
    sub_D188(v17 + 56, &qword_1E6358, &unk_16DA90);
    if (v32)
    {
      sub_30D20(*(v17 + 200));
      sub_30D58();
      sub_30E2C();
      sub_30888("Intent has a carName of ");
      v33 = [v16 description];
      sub_16A664();
      sub_31200();
      sub_30D04();

      sub_308A8(". Getting all carKeys which match this name");
      v34 = sub_16A9A4();
      sub_2FE6C(v34);

      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SEGetClimateStatusIntentHandler_carKeyService);
      v35 = sub_CBC08(v16);
    }

    else
    {
      sub_30E8C();
      v37 = sub_31174(v36);
      sub_2FE34(v37);
      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SEGetClimateStatusIntentHandler_carKeyService);
      v35 = sub_CCFA8();
    }

    *(v17 + 232) = v35;
    sub_3024C(&qword_16DAE0);
    v50 = v38;
    v39 = swift_task_alloc();
    v40 = sub_30EF8(v39);
    *v40 = v41;
    sub_300DC(v40);
    sub_D2C0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v50, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_19A50(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  return sub_D2B0();
}

uint64_t sub_19A68()
{
  sub_31520();
  sub_D3A4();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  sub_9FB8();
  v1 = sub_313C8();
  *(v0 + 216) = sub_30A14(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_2FC80(v2);
  v3 = swift_task_alloc();
  v4 = sub_306AC(v3);
  *v4 = v5;
  sub_300F4(v4);
  sub_3150C();

  return sub_2D090(v6, v7, v8);
}

uint64_t sub_19B4C()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_19C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_D440();
  sub_30E38();
  sub_3068C();
  if (v18)
  {
    v19 = sub_30D90();
    v20 = sub_31174(v19);
    sub_2FF0C(v20);
    objc_opt_self();
    v21 = sub_2FFF0();
    v22 = sub_110574(v21);
    sub_313B0(v22, "successWithResolvedString:");

    sub_30338();
    sub_D2C0();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v32 = *(v17 + 200);
    sub_D188(v17 + 56, &qword_1E6358, &unk_16DA90);
    if (v32)
    {
      sub_30D20(*(v17 + 200));
      sub_30D58();
      sub_30E2C();
      sub_30888("Intent has a carName of ");
      v33 = [v16 description];
      sub_16A664();
      sub_31200();
      sub_30D04();

      sub_308A8(". Getting all carKeys which match this name");
      v34 = sub_16A9A4();
      sub_2FE6C(v34);

      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SEGetCarLockStatusIntentHandler_carKeyService);
      v35 = sub_CBC08(v16);
    }

    else
    {
      sub_30E8C();
      v37 = sub_31174(v36);
      sub_2FE34(v37);
      sub_301BC(OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SEGetCarLockStatusIntentHandler_carKeyService);
      v35 = sub_CCFA8();
    }

    *(v17 + 232) = v35;
    sub_3024C(&qword_16DAB8);
    v50 = v38;
    v39 = swift_task_alloc();
    v40 = sub_30EF8(v39);
    *v40 = v41;
    sub_300DC(v40);
    sub_D2C0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v50, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_19E88(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_19F4C;

  return SESetClimateStatusIntentHandler.resolveCarName(for:)(v6);
}

uint64_t sub_19F4C()
{
  sub_1696C();
  v2 = v1;
  sub_D358();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  sub_D254();
  *v8 = v7;

  (v4)[2](v4, v2);
  _Block_release(v4);

  sub_D37C();

  return v9();
}

uint64_t SESetClimateStatusIntentHandler.confirm(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_D2B0();
}

uint64_t sub_1A0B0()
{
  sub_1696C();
  v1 = [*(v0 + 40) carName];
  *(v0 + 56) = v1;
  sub_3024C(&qword_16D9D0);
  v5 = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1A178;

  return v5(v1, 1, 0);
}

uint64_t sub_1A178()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *(v1 + 32) = v3;
  *(v1 + 24) = v4;
  *(v1 + 16) = v0;
  v6 = *(v5 + 56);
  v7 = *v0;
  sub_D254();
  *v8 = v7;
  *(v10 + 72) = v9;

  sub_10B4C();

  return _swift_task_switch(v11);
}

uint64_t sub_1A284()
{
  sub_D2DC();
  sub_16A3F4();
  sub_16A3E4();
  sub_30AEC();

  return v0();
}

uint64_t sub_1A308(uint64_t a1, char a2, char a3)
{
  *(v4 + 968) = v3;
  *(v4 + 1090) = a3;
  *(v4 + 1089) = a2;
  *(v4 + 960) = a1;
  return _swift_task_switch(sub_1A334);
}

uint64_t sub_1A818()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 1000) = v0;

  if (!v0)
  {
    sub_30F04();
  }

  sub_3021C();

  return _swift_task_switch(v7);
}

uint64_t sub_1AF48()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 1024) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_1B040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_309F8();
  sub_30984();
  sub_2FD74();
  v15 = sub_5758(&qword_1E6350, &unk_177CB0);
  v16 = sub_30F78(v15);
  sub_2F9CC(v16, xmmword_16D9A0);
  sub_30FF0();
  sub_301EC(&type metadata for Int);
  v17 = sub_304CC();
  sub_304AC(v17);
  v18 = sub_30FC0();
  sub_30FD8(v18, "setUserInfo:");

  sub_30FA8(v19, v20, &qword_1E6368, &qword_16DAA0);
  if (*(v14 + 560))
  {
    sub_2F984();
    v44 = v21 + *v21;
    v22 = swift_task_alloc();
    v23 = sub_30A84(v22);
    *v23 = v24;
    sub_2FB78(v23);
    sub_30968();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v44, a12, a13, a14);
  }

  else
  {
    sub_301DC();
    v34 = sub_309A8();
    v35 = sub_31020(v34);
    sub_2FA74(v35);

    sub_309DC();
    sub_D188(v14 + 376, &qword_1E6358, &unk_16DA90);
    sub_2FD48();
    sub_30968();

    return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1B254()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  sub_312D8(v3);
  sub_10B4C();

  return _swift_task_switch(v4);
}

uint64_t sub_1B338()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 1048) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_1B430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_309F8();
  sub_30984();
  sub_2FDD4();
  v15 = sub_5758(&qword_1E6350, &unk_177CB0);
  v16 = sub_30F78(v15);
  sub_2F9CC(v16, xmmword_16D9A0);
  sub_30FF0();
  sub_301EC(&type metadata for Int);
  v17 = sub_304CC();
  sub_304AC(v17);
  v18 = sub_30FC0();
  sub_30FD8(v18, "setUserInfo:");

  sub_30FA8(v19, v20, &qword_1E6368, &qword_16DAA0);
  if (*(v14 + 560))
  {
    sub_2F984();
    v44 = v21 + *v21;
    v22 = swift_task_alloc();
    v23 = sub_30A84(v22);
    *v23 = v24;
    sub_2FB78(v23);
    sub_30968();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v44, a12, a13, a14);
  }

  else
  {
    sub_301DC();
    v34 = sub_309A8();
    v35 = sub_31020(v34);
    sub_2FA74(v35);

    sub_309DC();
    sub_D188(v14 + 376, &qword_1E6358, &unk_16DA90);
    sub_2FD48();
    sub_30968();

    return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1B644()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 1064) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_1B73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_309F8();
  sub_30984();
  sub_2FDA4();
  v15 = sub_5758(&qword_1E6350, &unk_177CB0);
  v16 = sub_30F78(v15);
  sub_2F9CC(v16, xmmword_16D9A0);
  sub_30FF0();
  sub_301EC(&type metadata for Int);
  v17 = sub_304CC();
  sub_304AC(v17);
  v18 = sub_30FC0();
  sub_30FD8(v18, "setUserInfo:");

  sub_30FA8(v19, v20, &qword_1E6368, &qword_16DAA0);
  if (*(v14 + 560))
  {
    sub_2F984();
    v44 = v21 + *v21;
    v22 = swift_task_alloc();
    v23 = sub_30A84(v22);
    *v23 = v24;
    sub_2FB78(v23);
    sub_30968();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v44, a12, a13, a14);
  }

  else
  {
    sub_301DC();
    v34 = sub_309A8();
    v35 = sub_31020(v34);
    sub_2FA74(v35);

    sub_309DC();
    sub_D188(v14 + 376, &qword_1E6358, &unk_16DA90);
    sub_2FD48();
    sub_30968();

    return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1B950()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 1080) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_1BA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_309F8();
  sub_30984();
  sub_2FE04();
  v15 = sub_5758(&qword_1E6350, &unk_177CB0);
  v16 = sub_30F78(v15);
  sub_2F9CC(v16, xmmword_16D9A0);
  sub_30FF0();
  sub_301EC(&type metadata for Int);
  v17 = sub_304CC();
  sub_304AC(v17);
  v18 = sub_30FC0();
  sub_30FD8(v18, "setUserInfo:");

  sub_30FA8(v19, v20, &qword_1E6368, &qword_16DAA0);
  if (*(v14 + 560))
  {
    sub_2F984();
    v44 = v21 + *v21;
    v22 = swift_task_alloc();
    v23 = sub_30A84(v22);
    *v23 = v24;
    sub_2FB78(v23);
    sub_30968();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v44, a12, a13, a14);
  }

  else
  {
    sub_301DC();
    v34 = sub_309A8();
    v35 = sub_31020(v34);
    sub_2FA74(v35);

    sub_309DC();
    sub_D188(v14 + 376, &qword_1E6358, &unk_16DA90);
    sub_2FD48();
    sub_30968();

    return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1C168()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 1000) = v0;

  if (!v0)
  {
    sub_30F04();
  }

  sub_3021C();

  return _swift_task_switch(v7);
}

uint64_t sub_1CDA4()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 1000) = v0;

  if (!v0)
  {
    sub_30F04();
  }

  sub_3021C();

  return _swift_task_switch(v7);
}

uint64_t sub_1D9E0()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 1000) = v0;

  if (!v0)
  {
    sub_30F04();
  }

  sub_3021C();

  return _swift_task_switch(v7);
}

uint64_t sub_1E61C()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 1000) = v0;

  if (!v0)
  {
    sub_30F04();
  }

  sub_3021C();

  return _swift_task_switch(v7);
}

uint64_t sub_1F258()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 1000) = v0;

  if (!v0)
  {
    sub_30F04();
  }

  sub_3021C();

  return _swift_task_switch(v7);
}

uint64_t sub_1FE94()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 1000) = v0;

  if (!v0)
  {
    sub_30F04();
  }

  sub_3021C();

  return _swift_task_switch(v7);
}

uint64_t sub_20870()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 1024) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_20968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_309F8();
  sub_30984();
  sub_2FD74();
  v15 = sub_5758(&qword_1E6350, &unk_177CB0);
  v16 = sub_30F78(v15);
  sub_2F9CC(v16, xmmword_16D9A0);
  sub_30FF0();
  sub_301EC(&type metadata for Int);
  v17 = sub_304CC();
  sub_304AC(v17);
  v18 = sub_30FC0();
  sub_30FD8(v18, "setUserInfo:");

  sub_30FA8(v19, v20, &qword_1E6368, &qword_16DAA0);
  if (*(v14 + 560))
  {
    sub_2F984();
    v44 = v21 + *v21;
    v22 = swift_task_alloc();
    v23 = sub_30A84(v22);
    *v23 = v24;
    sub_2FB78(v23);
    sub_30968();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v44, a12, a13, a14);
  }

  else
  {
    sub_301DC();
    v34 = sub_309A8();
    v35 = sub_31020(v34);
    sub_2FA74(v35);

    sub_309DC();
    sub_D188(v14 + 376, &qword_1E6358, &unk_16DA90);
    sub_2FD48();
    sub_30968();

    return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_20E28()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  sub_312D8(v3);
  sub_10B4C();

  return _swift_task_switch(v4);
}

uint64_t sub_21088()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 1048) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_21180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_309F8();
  sub_30984();
  sub_2FDD4();
  v15 = sub_5758(&qword_1E6350, &unk_177CB0);
  v16 = sub_30F78(v15);
  sub_2F9CC(v16, xmmword_16D9A0);
  sub_30FF0();
  sub_301EC(&type metadata for Int);
  v17 = sub_304CC();
  sub_304AC(v17);
  v18 = sub_30FC0();
  sub_30FD8(v18, "setUserInfo:");

  sub_30FA8(v19, v20, &qword_1E6368, &qword_16DAA0);
  if (*(v14 + 560))
  {
    sub_2F984();
    v44 = v21 + *v21;
    v22 = swift_task_alloc();
    v23 = sub_30A84(v22);
    *v23 = v24;
    sub_2FB78(v23);
    sub_30968();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v44, a12, a13, a14);
  }

  else
  {
    sub_301DC();
    v34 = sub_309A8();
    v35 = sub_31020(v34);
    sub_2FA74(v35);

    sub_309DC();
    sub_D188(v14 + 376, &qword_1E6358, &unk_16DA90);
    sub_2FD48();
    sub_30968();

    return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_21640()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 1064) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_21738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_309F8();
  sub_30984();
  sub_2FDA4();
  v15 = sub_5758(&qword_1E6350, &unk_177CB0);
  v16 = sub_30F78(v15);
  sub_2F9CC(v16, xmmword_16D9A0);
  sub_30FF0();
  sub_301EC(&type metadata for Int);
  v17 = sub_304CC();
  sub_304AC(v17);
  v18 = sub_30FC0();
  sub_30FD8(v18, "setUserInfo:");

  sub_30FA8(v19, v20, &qword_1E6368, &qword_16DAA0);
  if (*(v14 + 560))
  {
    sub_2F984();
    v44 = v21 + *v21;
    v22 = swift_task_alloc();
    v23 = sub_30A84(v22);
    *v23 = v24;
    sub_2FB78(v23);
    sub_30968();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v44, a12, a13, a14);
  }

  else
  {
    sub_301DC();
    v34 = sub_309A8();
    v35 = sub_31020(v34);
    sub_2FA74(v35);

    sub_309DC();
    sub_D188(v14 + 376, &qword_1E6358, &unk_16DA90);
    sub_2FD48();
    sub_30968();

    return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_21BF8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 1080) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_21CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_309F8();
  sub_30984();
  sub_2FE04();
  v15 = sub_5758(&qword_1E6350, &unk_177CB0);
  v16 = sub_30F78(v15);
  sub_2F9CC(v16, xmmword_16D9A0);
  sub_30FF0();
  sub_301EC(&type metadata for Int);
  v17 = sub_304CC();
  sub_304AC(v17);
  v18 = sub_30FC0();
  sub_30FD8(v18, "setUserInfo:");

  sub_30FA8(v19, v20, &qword_1E6368, &qword_16DAA0);
  if (*(v14 + 560))
  {
    sub_2F984();
    v44 = v21 + *v21;
    v22 = swift_task_alloc();
    v23 = sub_30A84(v22);
    *v23 = v24;
    sub_2FB78(v23);
    sub_30968();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v44, a12, a13, a14);
  }

  else
  {
    sub_301DC();
    v34 = sub_309A8();
    v35 = sub_31020(v34);
    sub_2FA74(v35);

    sub_309DC();
    sub_D188(v14 + 376, &qword_1E6358, &unk_16DA90);
    sub_2FD48();
    sub_30968();

    return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_226BC()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 1000) = v0;

  if (!v0)
  {
    sub_30F04();
  }

  sub_3021C();

  return _swift_task_switch(v7);
}

uint64_t sub_232F8()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 1000) = v0;

  if (!v0)
  {
    sub_30F04();
  }

  sub_3021C();

  return _swift_task_switch(v7);
}

uint64_t sub_23A48(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2F924;

  return SESetClimateStatusIntentHandler.confirm(intent:)(v6);
}

uint64_t SESetClimateStatusIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_23B20()
{
  sub_D3A4();
  v2 = [*(v1 + 16) enabled];
  *(v1 + 32) = v2;
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = [v2 BOOLValue];
    v5 = [v3 carName];
    *(v1 + 40) = v5;
    sub_3024C(&qword_16D9E0);
    v12 = v6;
    v7 = swift_task_alloc();
    *(v1 + 48) = v7;
    *v7 = v1;
    v7[1] = sub_23D08;

    return v12(v4, v5, 1);
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    sub_9FB8();
    v9 = sub_16A584();
    sub_30A14(v9, qword_1E65C0);
    v10 = sub_16A9A4();
    sub_386D8(v10, 0x24000uLL, 0xD0000000000000B9, 0x80000000001802B0, 0x6928656C646E6168, 0xEF293A746E65746ELL, 47, 0xD000000000000019, v0);
    sub_16A3F4();
    sub_16A3E4();
    sub_30AEC();

    return v11();
  }
}

uint64_t sub_23D08()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 40);
  v5 = *v0;
  sub_D254();
  *v6 = v5;
  *(v8 + 64) = v7;
  *(v8 + 56) = v9;

  sub_10B4C();

  return _swift_task_switch(v10);
}

uint64_t sub_23E0C()
{
  sub_1696C();
  sub_16A3F4();
  v1 = *(v0 + 32);
  sub_16A3E4();

  v2 = sub_120EC();

  return v3(v2);
}

uint64_t sub_23EA4(char a1, uint64_t a2, char a3)
{
  *(v4 + 912) = v3;
  *(v4 + 1025) = a3;
  *(v4 + 904) = a2;
  *(v4 + 1024) = a1;
  return _swift_task_switch(sub_23ED0);
}

uint64_t sub_246B0()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 944) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_24A4C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 968) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_24B44()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 984) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_24EE0()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 1000) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_2527C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 1016) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_25618(char a1, uint64_t a2, char a3)
{
  *(v4 + 912) = v3;
  *(v4 + 1025) = a3;
  *(v4 + 904) = a2;
  *(v4 + 1024) = a1;
  return sub_D2B0();
}

uint64_t sub_25E1C(char a1, uint64_t a2, char a3)
{
  *(v4 + 912) = v3;
  *(v4 + 1025) = a3;
  *(v4 + 904) = a2;
  *(v4 + 1024) = a1;
  return sub_D2B0();
}

uint64_t sub_26620(char a1, uint64_t a2, char a3)
{
  *(v4 + 912) = v3;
  *(v4 + 1025) = a3;
  *(v4 + 904) = a2;
  *(v4 + 1024) = a1;
  return sub_D2B0();
}

uint64_t sub_26E24()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 944) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_274C8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 968) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_27A4C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 984) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_280F0()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 1000) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_28794()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 1016) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_28E38(char a1, uint64_t a2, char a3)
{
  *(v4 + 912) = v3;
  *(v4 + 1025) = a3;
  *(v4 + 904) = a2;
  *(v4 + 1024) = a1;
  return sub_D2B0();
}

uint64_t sub_2965C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  _Block_copy(aBlock);
  sub_30C04();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v6;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_132CA0(a6, v10);
}

uint64_t sub_296DC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2F924;

  return SESetClimateStatusIntentHandler.handle(intent:)(v6);
}

id SESetClimateStatusIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SESetClimateStatusIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_29824(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_29884(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 208) = a3;
  *(v4 + 80) = a1;
  return _swift_task_switch(sub_298AC);
}

uint64_t sub_298AC()
{
  sub_1696C();
  v1 = v0[11];
  if (v1)
  {
    sub_31290(v0[12]);
    sub_30A9C(v0 + 2, v0[5]);
    v2 = [v1 spokenPhrase];
    sub_16A664();
    sub_31380();
    sub_30E98();
    v3 = swift_task_alloc();
    v4 = sub_30EEC(v3);
    *v4 = v5;
    v6 = sub_300C4(v4);

    return sub_CC2C0(v6, v7, v8);
  }

  else
  {
    sub_30120(v0[12]);
    v10 = swift_task_alloc();
    v11 = sub_30EE0(v10);
    *v11 = v12;
    v13 = sub_302A4(v11);

    return sub_CC4E4(v13);
  }
}

uint64_t sub_299F0()
{
  sub_10BC0();
  sub_D3A4();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v6 = *v2;
  sub_D254();
  *v7 = v6;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 144) = v1;
  }

  sub_3021C();
  sub_10BD4();

  return _swift_task_switch(v8);
}

uint64_t sub_29B10()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v6 = *v2;
  sub_D254();
  *v7 = v6;
  *(v4 + 136) = v0;

  if (!v0)
  {
    *(v4 + 200) = v1;
  }

  sub_3021C();

  return _swift_task_switch(v8);
}

uint64_t sub_29C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_30828();

  sub_D13C(v14 + 2);
  v14[19] = v14[18];
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v16 = sub_3115C();
  v14[21] = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(qword_16DBD0);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_29D60()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  sub_312C0(v7);

  if (v0)
  {
  }

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_29E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_305C8();
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v16 = sub_3115C();
  *(v14 + 168) = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(qword_16DBD0);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_29FB4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 208) = a3;
  *(v4 + 80) = a1;
  return _swift_task_switch(sub_29FDC);
}

uint64_t sub_29FDC()
{
  sub_1696C();
  v1 = v0[11];
  if (v1)
  {
    sub_31290(v0[12]);
    sub_30A9C(v0 + 2, v0[5]);
    v2 = [v1 spokenPhrase];
    sub_16A664();
    sub_31380();
    sub_30E98();
    v3 = swift_task_alloc();
    v4 = sub_30EEC(v3);
    *v4 = v5;
    v6 = sub_300C4(v4);

    return sub_CC2C0(v6, v7, v8);
  }

  else
  {
    sub_30120(v0[12]);
    v10 = swift_task_alloc();
    v11 = sub_30EE0(v10);
    *v11 = v12;
    v13 = sub_302A4(v11);

    return sub_CC4E4(v13);
  }
}

uint64_t sub_2A128()
{
  sub_10BC0();
  sub_D3A4();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v6 = *v2;
  sub_D254();
  *v7 = v6;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 144) = v1;
  }

  sub_3021C();
  sub_10BD4();

  return _swift_task_switch(v8);
}

uint64_t sub_2A248()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v6 = *v2;
  sub_D254();
  *v7 = v6;
  *(v4 + 136) = v0;

  if (!v0)
  {
    *(v4 + 200) = v1;
  }

  sub_3021C();

  return _swift_task_switch(v8);
}

uint64_t sub_2A34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_30828();

  sub_D13C(v14 + 2);
  v14[19] = v14[18];
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v16 = sub_3115C();
  v14[21] = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&qword_16DBC0);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2A498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_305C8();
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v16 = sub_3115C();
  *(v14 + 168) = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&qword_16DBC0);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2A5CC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 208) = a3;
  *(v4 + 80) = a1;
  return _swift_task_switch(sub_2A5F4);
}

uint64_t sub_2A5F4()
{
  sub_1696C();
  v1 = v0[11];
  if (v1)
  {
    sub_31290(v0[12]);
    sub_30A9C(v0 + 2, v0[5]);
    v2 = [v1 spokenPhrase];
    sub_16A664();
    sub_31380();
    sub_30E98();
    v3 = swift_task_alloc();
    v4 = sub_30EEC(v3);
    *v4 = v5;
    v6 = sub_300C4(v4);

    return sub_CC2C0(v6, v7, v8);
  }

  else
  {
    sub_30120(v0[12]);
    v10 = swift_task_alloc();
    v11 = sub_30EE0(v10);
    *v11 = v12;
    v13 = sub_302A4(v11);

    return sub_CC4E4(v13);
  }
}

uint64_t sub_2A740()
{
  sub_10BC0();
  sub_D3A4();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v6 = *v2;
  sub_D254();
  *v7 = v6;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 144) = v1;
  }

  sub_3021C();
  sub_10BD4();

  return _swift_task_switch(v8);
}

uint64_t sub_2A860()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v6 = *v2;
  sub_D254();
  *v7 = v6;
  *(v4 + 136) = v0;

  if (!v0)
  {
    *(v4 + 200) = v1;
  }

  sub_3021C();

  return _swift_task_switch(v8);
}

uint64_t sub_2A964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_30828();

  sub_D13C(v14 + 2);
  v14[19] = v14[18];
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v16 = sub_3115C();
  v14[21] = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&qword_16DBA0);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2AAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_305C8();
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v16 = sub_3115C();
  *(v14 + 168) = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&qword_16DBA0);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2ABE4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 208) = a3;
  *(v4 + 80) = a1;
  return _swift_task_switch(sub_2AC0C);
}

uint64_t sub_2AC0C()
{
  sub_1696C();
  v1 = v0[11];
  if (v1)
  {
    sub_31290(v0[12]);
    sub_30A9C(v0 + 2, v0[5]);
    v2 = [v1 spokenPhrase];
    sub_16A664();
    sub_31380();
    sub_30E98();
    v3 = swift_task_alloc();
    v4 = sub_30EEC(v3);
    *v4 = v5;
    v6 = sub_300C4(v4);

    return sub_CC2C0(v6, v7, v8);
  }

  else
  {
    sub_30120(v0[12]);
    v10 = swift_task_alloc();
    v11 = sub_30EE0(v10);
    *v11 = v12;
    v13 = sub_302A4(v11);

    return sub_CC4E4(v13);
  }
}

uint64_t sub_2AD58()
{
  sub_10BC0();
  sub_D3A4();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v6 = *v2;
  sub_D254();
  *v7 = v6;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 144) = v1;
  }

  sub_3021C();
  sub_10BD4();

  return _swift_task_switch(v8);
}

uint64_t sub_2AE78()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v6 = *v2;
  sub_D254();
  *v7 = v6;
  *(v4 + 136) = v0;

  if (!v0)
  {
    *(v4 + 200) = v1;
  }

  sub_3021C();

  return _swift_task_switch(v8);
}

uint64_t sub_2AF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_30828();

  sub_D13C(v14 + 2);
  v14[19] = v14[18];
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v16 = sub_3115C();
  v14[21] = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&qword_16DB78);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2B0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_305C8();
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v16 = sub_3115C();
  *(v14 + 168) = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&qword_16DB78);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2B1FC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 208) = a3;
  *(v4 + 80) = a1;
  return _swift_task_switch(sub_2B224);
}

uint64_t sub_2B224()
{
  sub_1696C();
  v1 = v0[11];
  if (v1)
  {
    sub_31290(v0[12]);
    sub_30A9C(v0 + 2, v0[5]);
    v2 = [v1 spokenPhrase];
    sub_16A664();
    sub_31380();
    sub_30E98();
    v3 = swift_task_alloc();
    v4 = sub_30EEC(v3);
    *v4 = v5;
    v6 = sub_300C4(v4);

    return sub_CC2C0(v6, v7, v8);
  }

  else
  {
    sub_30120(v0[12]);
    v10 = swift_task_alloc();
    v11 = sub_30EE0(v10);
    *v11 = v12;
    v13 = sub_302A4(v11);

    return sub_CC4E4(v13);
  }
}

uint64_t sub_2B370()
{
  sub_10BC0();
  sub_D3A4();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v6 = *v2;
  sub_D254();
  *v7 = v6;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 144) = v1;
  }

  sub_3021C();
  sub_10BD4();

  return _swift_task_switch(v8);
}

uint64_t sub_2B490()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v6 = *v2;
  sub_D254();
  *v7 = v6;
  *(v4 + 136) = v0;

  if (!v0)
  {
    *(v4 + 200) = v1;
  }

  sub_3021C();

  return _swift_task_switch(v8);
}

uint64_t sub_2B594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_30828();

  sub_D13C(v14 + 2);
  v14[19] = v14[18];
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v16 = sub_3115C();
  v14[21] = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&qword_16DB50);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2B6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3154C();
  sub_10B8C();

  sub_D13C((v13 + 16));
  v14 = *(v13 + 120);
  sub_3060C();
  sub_16ACF4(54);
  sub_314F4();
  *(v12 + 56) = v15;
  *(v13 + 64) = v16;
  v17 = sub_304EC();
  sub_31578(v17);
  *(v13 + 72) = v14;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  sub_311BC(". Getting an error retrieving inRangeCarKeys.");
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v18 = sub_3115C();
  sub_30BC4(v18, qword_1E65C0);
  v19 = sub_16A9A4();
  sub_30A2C(v19);

  sub_30BEC();
  sub_31534();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_2B824()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  sub_312C0(v7);

  if (v0)
  {
  }

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_2BAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3154C();
  sub_10B8C();
  v14 = v13[24];
  sub_3060C();
  sub_16ACF4(54);
  sub_314F4();
  *(v12 + 56) = v15;
  v13[8] = v16;
  v17 = sub_304EC();
  sub_31578(v17);
  v13[9] = v14;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  sub_311BC(". Getting an error retrieving inRangeCarKeys.");
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v18 = sub_3115C();
  sub_30BC4(v18, qword_1E65C0);
  v19 = sub_16A9A4();
  sub_30A2C(v19);

  sub_30BEC();
  sub_31534();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_2BBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_305C8();
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v16 = sub_3115C();
  *(v14 + 168) = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&qword_16DB50);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2BD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3154C();
  sub_10B8C();
  v14 = v13[17];
  sub_3060C();
  sub_16ACF4(54);
  sub_314F4();
  *(v12 + 56) = v15;
  v13[8] = v16;
  v17 = sub_304EC();
  sub_31578(v17);
  v13[9] = v14;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  sub_311BC(". Getting an error retrieving inRangeCarKeys.");
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v18 = sub_3115C();
  sub_30BC4(v18, qword_1E65C0);
  v19 = sub_16A9A4();
  sub_30A2C(v19);

  sub_30BEC();
  sub_31534();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_2BE48(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 208) = a3;
  *(v4 + 80) = a1;
  return _swift_task_switch(sub_2BE70);
}

uint64_t sub_2BE70()
{
  sub_1696C();
  v1 = v0[11];
  if (v1)
  {
    sub_31290(v0[12]);
    sub_30A9C(v0 + 2, v0[5]);
    v2 = [v1 spokenPhrase];
    sub_16A664();
    sub_31380();
    sub_30E98();
    v3 = swift_task_alloc();
    v4 = sub_30EEC(v3);
    *v4 = v5;
    v6 = sub_300C4(v4);

    return sub_CC2C0(v6, v7, v8);
  }

  else
  {
    sub_30120(v0[12]);
    v10 = swift_task_alloc();
    v11 = sub_30EE0(v10);
    *v11 = v12;
    v13 = sub_302A4(v11);

    return sub_CC4E4(v13);
  }
}

uint64_t sub_2BFBC()
{
  sub_10BC0();
  sub_D3A4();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v6 = *v2;
  sub_D254();
  *v7 = v6;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 144) = v1;
  }

  sub_3021C();
  sub_10BD4();

  return _swift_task_switch(v8);
}

uint64_t sub_2C0DC()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v6 = *v2;
  sub_D254();
  *v7 = v6;
  *(v4 + 136) = v0;

  if (!v0)
  {
    *(v4 + 200) = v1;
  }

  sub_3021C();

  return _swift_task_switch(v8);
}

uint64_t sub_2C1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_30828();

  sub_D13C(v14 + 2);
  v14[19] = v14[18];
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v16 = sub_3115C();
  v14[21] = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&qword_16DB28);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}