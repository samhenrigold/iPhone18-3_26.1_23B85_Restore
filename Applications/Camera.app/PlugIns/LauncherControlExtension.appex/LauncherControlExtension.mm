uint64_t sub_1000014C4()
{
  v0 = sub_100001670(&qword_100008098, qword_100002648);
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v5 - v2;
  sub_1000016B8();
  sub_100002478();
  sub_10000170C();
  sub_100002468();
  return (*(v1 + 8))(v3, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000015F0();
  sub_100002448();
  return 0;
}

unint64_t sub_1000015F0()
{
  result = qword_100008090;
  if (!qword_100008090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008090);
  }

  return result;
}

uint64_t sub_100001670(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000016B8()
{
  result = qword_1000080A0;
  if (!qword_1000080A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000080A0);
  }

  return result;
}

unint64_t sub_10000170C()
{
  result = qword_1000080A8;
  if (!qword_1000080A8)
  {
    sub_100001770(&qword_100008098, qword_100002648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000080A8);
  }

  return result;
}

uint64_t sub_100001770(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000017B8()
{
  sub_100001770(&qword_100008098, qword_100002648);
  sub_10000170C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100001848@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v44 = sub_1000023F8();
  v48 = *(v44 - 8);
  __chkstk_darwin();
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002438();
  __chkstk_darwin();
  sub_100002548();
  __chkstk_darwin();
  v47 = sub_100002408();
  v38 = *(v47 - 8);
  __chkstk_darwin();
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100001670(&qword_1000080B0, &qword_1000026D8);
  v36 = *(v34 - 8);
  __chkstk_darwin();
  v6 = &v29 - v5;
  v7 = sub_100001670(&qword_1000080B8, &qword_1000026E0);
  v8 = *(v7 - 8);
  v39 = v7;
  v40 = v8;
  __chkstk_darwin();
  v33 = &v29 - v9;
  v10 = sub_100001670(&qword_1000080C0, &qword_1000026E8);
  v11 = *(v10 - 8);
  v41 = v10;
  v42 = v11;
  __chkstk_darwin();
  v35 = &v29 - v12;
  v43 = sub_100001670(&qword_1000080C8, &qword_1000026F0);
  v45 = *(v43 - 8);
  __chkstk_darwin();
  v37 = &v29 - v13;
  sub_100001670(&qword_1000080D0, &qword_1000026F8);
  sub_1000021D0(&qword_1000080D8, &qword_1000080D0, &qword_1000026F8, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  sub_100002528();
  sub_100002538();
  v32 = &unk_100002640;
  sub_100002428();
  v31 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v14 = *(v48 + 104);
  v48 += 104;
  v30 = v14;
  v15 = v2;
  v16 = v2;
  v17 = v44;
  v14(v16);
  sub_100002418();
  v18 = sub_1000021D0(&qword_1000080E0, &qword_1000080B0, &qword_1000026D8, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v19 = v34;
  sub_100002498();
  v38 = *(v38 + 8);
  (v38)(v4, v47);
  (*(v36 + 8))(v6, v19);
  sub_100002538();
  sub_100002428();
  v30(v15, v31, v17);
  sub_100002418();
  v49 = v19;
  v50 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v35;
  v22 = v39;
  v23 = v33;
  sub_100002488();
  (v38)(v4, v47);
  (*(v40 + 8))(v23, v22);
  v49 = v22;
  v50 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v37;
  v26 = v41;
  sub_1000024A8();
  (*(v42 + 8))(v21, v26);
  v49 = v26;
  v50 = v24;
  swift_getOpaqueTypeConformance2();
  v27 = v43;
  sub_1000024B8();
  return (*(v45 + 8))(v25, v27);
}

uint64_t sub_100001F9C()
{
  sub_100002508();
  __chkstk_darwin();
  sub_1000024F8();
  sub_100001670(&qword_1000080E8, &unk_100002700);
  sub_1000021D0(&qword_1000080F0, &qword_1000080E8, &unk_100002700, &protocol conformance descriptor for Label<A, B>);
  sub_100002218();
  return sub_100002518();
}

uint64_t sub_1000020FC@<X0>(uint64_t a1@<X8>)
{
  sub_100002458();
  result = sub_1000024C8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100002188@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000024D8();
  *a1 = result;
  return result;
}

uint64_t sub_1000021D0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100001770(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100002218()
{
  result = qword_1000080F8;
  if (!qword_1000080F8)
  {
    sub_100002508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000080F8);
  }

  return result;
}

uint64_t sub_100002270()
{
  sub_100001770(&qword_1000080C8, &qword_1000026F0);
  sub_100001770(&qword_1000080C0, &qword_1000026E8);
  sub_100001770(&qword_1000080B8, &qword_1000026E0);
  sub_100001770(&qword_1000080B0, &qword_1000026D8);
  sub_1000021D0(&qword_1000080E0, &qword_1000080B0, &qword_1000026D8, &protocol conformance descriptor for StaticControlConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}