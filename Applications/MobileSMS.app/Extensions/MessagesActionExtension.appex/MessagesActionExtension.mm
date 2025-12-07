uint64_t sub_1000015F8(uint64_t a1)
{
  v2 = sub_100001C4C();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000016A4();
  sub_100003C0C();
  return 0;
}

unint64_t sub_1000016A4()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

uint64_t variable initialization expression of ConversationListFocusFilterAction._enableFocusFiltering()
{
  v0 = sub_100003B8C();
  v19 = *(v0 - 8);
  v20 = v0;
  __chkstk_darwin();
  v18 = v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001BB0(&qword_10000C028, &qword_100003F30);
  __chkstk_darwin();
  v17 = v15 - v2;
  sub_100001BB0(&qword_10000C030, &qword_100003F38);
  __chkstk_darwin();
  v16 = v15 - v3;
  sub_100001BB0(&qword_10000C038, &unk_100003F40);
  __chkstk_darwin();
  v5 = v15 - v4;
  v6 = sub_100003BBC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003BFC();
  __chkstk_darwin();
  sub_100003C5C();
  __chkstk_darwin();
  v10 = sub_100003BCC();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v15[1] = sub_100001BB0(&qword_10000C040, &unk_1000041F0);
  sub_100003C4C();
  sub_100003BEC();
  (*(v7 + 104))(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_100003BDC();
  (*(v11 + 56))(v5, 1, 1, v10);
  v21[0] = 2;
  v12 = sub_100003C6C();
  (*(*(v12 - 8) + 56))(v16, 1, 1, v12);
  v13 = sub_100003ACC();
  (*(*(v13 - 8) + 56))(v17, 1, 1, v13);
  (*(v19 + 104))(v18, enum case for InputConnectionBehavior.default(_:), v20);
  return sub_100003B2C();
}

uint64_t sub_100001BB0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001C4C()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

uint64_t (*ConversationListFocusFilterAction.enableFocusFiltering.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100003AEC();
  return sub_100001D8C;
}

void sub_100001D8C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t static ConversationListFocusFilterAction.openAppWhenRun.setter(char a1)
{
  result = swift_beginAccess();
  static ConversationListFocusFilterAction.openAppWhenRun = a1;
  return result;
}

uint64_t sub_100001EF0()
{
  v0 = sub_100003BBC();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003BFC();
  __chkstk_darwin();
  sub_100003C5C();
  __chkstk_darwin();
  v4 = sub_100003BCC();
  sub_1000039F4(v4, static ConversationListFocusFilterAction.title);
  sub_100002148(v4, static ConversationListFocusFilterAction.title);
  sub_100003C4C();
  sub_100003BEC();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100003BDC();
}

uint64_t ConversationListFocusFilterAction.title.unsafeMutableAddressor()
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }

  v0 = sub_100003BCC();

  return sub_100002148(v0, static ConversationListFocusFilterAction.title);
}

uint64_t sub_100002148(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static ConversationListFocusFilterAction.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }

  v2 = sub_100003BCC();
  v3 = sub_100002148(v2, static ConversationListFocusFilterAction.title);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ConversationListFocusFilterAction.title.setter(uint64_t a1)
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }

  v2 = sub_100003BCC();
  v3 = sub_100002148(v2, static ConversationListFocusFilterAction.title);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static ConversationListFocusFilterAction.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }

  v1 = sub_100003BCC();
  sub_100002148(v1, static ConversationListFocusFilterAction.title);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t static ConversationListFocusFilterAction.description.getter@<X0>(uint64_t a1@<X8>)
{
  v12[0] = a1;
  sub_100001BB0(&qword_10000C038, &unk_100003F40);
  __chkstk_darwin();
  v2 = v12 - v1;
  v3 = sub_100003BBC();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003BFC();
  __chkstk_darwin();
  sub_100003C5C();
  __chkstk_darwin();
  v7 = sub_100003BCC();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  sub_100003C4C();
  sub_100003BEC();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_100003BDC();
  (*(v8 + 56))(v2, 1, 1, v7);
  v9 = v12[0];
  sub_100003B4C();
  v10 = sub_100003B3C();
  return (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
}

uint64_t ConversationListFocusFilterAction.perform()(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_100003C9C();
  v2[4] = sub_100003C8C();
  v4 = sub_100003C7C();

  return _swift_task_switch(sub_100002774, v4, v3);
}

uint64_t sub_100002774()
{

  sub_100003AFC();
  v1 = *(v0 + 40);
  if (v1 == 2)
  {
    if (qword_10000C018 != -1)
    {
      swift_once();
    }

    v2 = sub_100003C3C();
    sub_100002148(v2, qword_10000C4B0);
    v3 = sub_100003C1C();
    v4 = sub_100003CAC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Focus filter action is not configured for the current focus", v5, 2u);
      LOBYTE(v1) = 0;
LABEL_10:

      goto LABEL_12;
    }

    LOBYTE(v1) = 0;
  }

  else
  {
    if (qword_10000C018 != -1)
    {
      swift_once();
    }

    v6 = sub_100003C3C();
    sub_100002148(v6, qword_10000C4B0);
    v3 = sub_100003C1C();
    v7 = sub_100003CAC();
    if (os_log_type_enabled(v3, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v1 & 1;
      _os_log_impl(&_mh_execute_header, v3, v7, "Focus filter action is configured for the current focus, with a value of %{BOOL}d", v8, 8u);
      goto LABEL_10;
    }
  }

LABEL_12:

  v9 = [objc_opt_self() messagesAppDomain];
  if (v9)
  {
    v10 = v9;
    [v9 setConversationListFocusFilterActionEnabled:v1 & 1];
  }

  sub_100003ADC();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t ConversationListFocusFilterAction.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  sub_100001BB0(&qword_10000C050, &unk_100004020);
  __chkstk_darwin();
  v13 = &v12 - v1;
  sub_100001BB0(&qword_10000C038, &unk_100003F40);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_100003BBC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003BFC();
  __chkstk_darwin();
  sub_100003C5C();
  __chkstk_darwin();
  v8 = sub_100003BCC();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  sub_100003C4C();
  sub_100003BEC();
  (*(v5 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_100003BDC();
  (*(v9 + 56))(v3, 1, 1, v8);
  v10 = sub_100003B6C();
  (*(*(v10 - 8) + 56))(v13, 1, 1, v10);
  return sub_100003B7C();
}

uint64_t sub_100002D0C()
{
  v0 = sub_100003C3C();
  sub_1000039F4(v0, qword_10000C4B0);
  sub_100002148(v0, qword_10000C4B0);
  return sub_100003C2C();
}

uint64_t sub_100002D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100002E3C;

  return static SetFocusFilterIntent.suggestedFocusFilters(for:)(a1, a2, a3);
}

uint64_t sub_100002E3C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100002F4C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002FEC;

  return ConversationListFocusFilterAction.perform()(a1, v4);
}

uint64_t sub_100002FEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000030E0@<X0>(uint64_t *a1@<X8>)
{
  result = _s23MessagesActionExtension027ConversationListFocusFilterB0VACycfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_10000310C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100002FEC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000031D0(uint64_t a1)
{
  v2 = sub_100003714();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000320C(uint64_t a1)
{
  v2 = sub_10000376C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t _s23MessagesActionExtension027ConversationListFocusFilterB0VACycfC_0()
{
  v0 = sub_100003B8C();
  v19 = *(v0 - 8);
  v20 = v0;
  __chkstk_darwin();
  v18 = v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001BB0(&qword_10000C028, &qword_100003F30);
  __chkstk_darwin();
  v17 = v15 - v2;
  sub_100001BB0(&qword_10000C030, &qword_100003F38);
  __chkstk_darwin();
  v16 = v15 - v3;
  sub_100001BB0(&qword_10000C038, &unk_100003F40);
  __chkstk_darwin();
  v5 = v15 - v4;
  v6 = sub_100003BBC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003BFC();
  __chkstk_darwin();
  sub_100003C5C();
  __chkstk_darwin();
  v10 = sub_100003BCC();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v15[1] = sub_100001BB0(&qword_10000C040, &unk_1000041F0);
  sub_100003C4C();
  sub_100003BEC();
  (*(v7 + 104))(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_100003BDC();
  (*(v11 + 56))(v5, 1, 1, v10);
  v21[0] = 2;
  v12 = sub_100003C6C();
  (*(*(v12 - 8) + 56))(v16, 1, 1, v12);
  v13 = sub_100003ACC();
  (*(*(v13 - 8) + 56))(v17, 1, 1, v13);
  (*(v19 + 104))(v18, enum case for InputConnectionBehavior.default(_:), v20);
  return sub_100003B2C();
}

unint64_t sub_100003714()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_10000376C()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_1000037C4()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

unint64_t sub_10000381C()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_1000038E0()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100003948()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    sub_1000039AC(&qword_10000C088, &qword_1000041E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

uint64_t sub_1000039AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_1000039F4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}