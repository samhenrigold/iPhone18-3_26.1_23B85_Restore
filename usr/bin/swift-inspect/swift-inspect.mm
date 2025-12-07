__n128 sub_1000011A0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_1000011C4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000011D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000011F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 sub_10000125C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_100001290(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000012D8(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

double sub_10000134C()
{
  *&v1 = 0;
  *(&v1 + 1) = 0xE000000000000000;
  CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:groupedSubcommands:defaultSubcommand:helpNames:aliases:)(0, 0, 0xD000000000000028, 0x80000001000972A0, 0, 0, 0, 0xE000000000000000, v2, v1, 1, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 0, _swiftEmptyArrayStorage);
  xmmword_1000B61D0 = v2[6];
  unk_1000B61E0 = v2[7];
  xmmword_1000B61F0 = v2[8];
  qword_1000B6200 = v3;
  xmmword_1000B6190 = v2[2];
  unk_1000B61A0 = v2[3];
  xmmword_1000B61B0 = v2[4];
  unk_1000B61C0 = v2[5];
  result = *v2;
  xmmword_1000B6170 = v2[0];
  unk_1000B6180 = v2[1];
  return result;
}

uint64_t sub_10000140C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 104);
  v31 = *(a3 + 88);
  v32 = v7;
  v8 = *(a3 + 136);
  v33 = *(a3 + 120);
  v34 = v8;
  v9 = sub_1000021C0(&qword_1000B47E0, &qword_10008E998);
  OptionGroup.wrappedValue.getter(v9, &v35, v10, v11);
  v12 = sub_1000054E4();
  v39 = v35;
  v40 = v36;
  v13 = &unk_10008E9A0;
  sub_100002BCC(&v39, &qword_1000B47E8, &unk_10008E9A0);
  v41 = v37;
  v42 = v38;
  sub_100002BCC(&v41, &qword_1000B47E8, &unk_10008E9A0);
  if (v12 == 2)
  {
    v14 = 0;
    if (*(a1 + 40))
    {
      goto LABEL_3;
    }

    goto LABEL_8;
  }

  result = *(a1 + 40);
  if (!result)
  {
    __break(1u);
    return result;
  }

  result = sub_100004444(result);
  if (!v3)
  {
    v14 = result;
    if (*(a1 + 40))
    {
LABEL_3:
      v13 = swift_allocObject();
      v13[2] = _swiftEmptyArrayStorage;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_100002310;
      *(v15 + 24) = v13;
      *&v31 = sub_100002350;
      *(&v31 + 1) = v15;
      swift_retain_n();
      v16 = swift_reflection_iterateMetadataAllocations();

      if (v16)
      {

        v17 = String.init(cString:)();
        v19 = v18;
        sub_100002388();
        swift_allocError();
        *v20 = v17;
        v20[1] = v19;
        swift_willThrow();
      }

      goto LABEL_9;
    }

LABEL_8:
    __break(1u);
LABEL_9:

    swift_beginAccess();
    v22 = v13[2];

    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = 0;
      v25 = (v22 + 48);
      do
      {
        if (v24 >= *(v22 + 16))
        {
          __break(1u);
        }

        ++v24;
        v26 = *v25;
        v27 = *(v25 - 1);
        v28 = *(v25 - 4);
        v29 = v27;
        v30 = v26;
        sub_10000170C(&v28, a1, a2, a3, v14);
        v25 += 6;
      }

      while (v23 != v24);
    }
  }

  return result;
}

uint64_t sub_10000170C(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a2 + 40);
  if (result)
  {
    v8 = *a1;
    v9 = *(a1 + 1);
    v10 = a1[4];
    if (swift_reflection_metadataAllocationTagName())
    {
      v11 = String.init(cString:)();
      v13 = v12;
    }

    else
    {
      v13 = 0xE90000000000003ELL;
      v11 = 0x6E776F6E6B6E753CLL;
    }

    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10008E640;
    _StringGuts.grow(_:)(48);

    *&v36 = 0xD00000000000001ALL;
    *(&v36 + 1) = 0x8000000100097260;
    sub_1000023DC();
    v15._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v15);

    v16._countAndFlagsBits = 9071406774580000;
    v16._object = 0xE700000000000000;
    String.append(_:)(v16);
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 0x203A67617420;
    v18._object = 0xE600000000000000;
    String.append(_:)(v18);
    *&v40 = __PAIR64__(HIDWORD(v10), v8);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 10272;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = v11;
    v21._object = v13;
    String.append(_:)(v21);

    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v23 = v36;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 32) = v23;
    print(_:separator:terminator:)();

    v24 = *(a4 + 104);
    v36 = *(a4 + 88);
    v37 = v24;
    v25 = *(a4 + 136);
    v38 = *(a4 + 120);
    v39 = v25;
    v26 = sub_1000021C0(&qword_1000B47E0, &qword_10008E998);
    OptionGroup.wrappedValue.getter(v26, &v40, v27, v28);
    LODWORD(v14) = sub_1000054E4();
    v44 = v40;
    v45 = v41;
    sub_100002BCC(&v44, &qword_1000B47E8, &unk_10008E9A0);
    v36 = v42;
    LOBYTE(v37) = v43;
    result = sub_100002BCC(&v36, &qword_1000B47E8, &unk_10008E9A0);
    if (v14 != 2)
    {
      if (a5 && *(a5 + 16) && (sub_10001F92C(v9), (v29 & 1) != 0))
      {
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_10008E640;
        swift_unknownObjectRetain();

        v31 = sub_1000102F4();
        v33 = v32;

        swift_unknownObjectRelease();
        v34 = v30;
        *(v30 + 56) = &type metadata for String;
        *(v30 + 32) = v31;
      }

      else
      {
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_10008E640;
        v33 = 0x8000000100097280;
        *(v34 + 56) = &type metadata for String;
        *(v34 + 32) = 0xD00000000000001ALL;
      }

      *(v34 + 40) = v33;
      print(_:separator:terminator:)();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_100001B04()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100001B78(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100001BBC()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x736E6F6974706FLL;
  }
}

uint64_t sub_100001BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000972D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100001CF8(uint64_t a1)
{
  v2 = sub_100002AE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001D34(uint64_t a1)
{
  v2 = sub_100002AE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001D70@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1000B46D0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_100002430(&xmmword_1000B6170, v2);
}

uint64_t sub_100001DE4()
{
  v1 = *(v0 + 112);
  v34 = *(v0 + 96);
  v35 = v1;
  v36 = *(v0 + 128);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v30 = *(v0 + 32);
  v31 = v2;
  v4 = *(v0 + 48);
  v5 = *(v0 + 80);
  v32 = *(v0 + 64);
  v33 = v5;
  v6 = *(v0 + 16);
  v29[0] = *v0;
  v29[1] = v6;
  v19[2] = v30;
  v19[3] = v4;
  v19[4] = v32;
  v37 = *(v0 + 144);
  v20 = *(v0 + 80);
  v19[0] = v29[0];
  v19[1] = v3;
  v7 = sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
  OptionGroup.wrappedValue.getter(v7, v21, v8, v9);
  v10 = v21[0];
  v11 = v21[1];
  v12 = v22;
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v16 = v26;
  v17 = v27;
  v38 = v28;
  sub_100002250(v29, v19);
  sub_10000648C(v10, v11, v12, v13, v14, v15, v29);
  sub_100002288(v29);
  sub_1000022B8(v10, v11, v12);
  sub_1000022C8(v13, v14, v15);
  return sub_1000022C8(v16, v17, v38);
}

double sub_100001F28@<D0>(uint64_t a1@<X8>)
{
  v2 = ArgumentVisibility.default.unsafeMutableAddressor();
  v3 = *v2;
  v4 = sub_10000248C();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v3, &type metadata for UniversalOptions, v4, v21);
  v16 = v21[2];
  v17 = v21[3];
  v18 = v21[4];
  *&v19[0] = v22;
  v14 = v21[0];
  v15 = v21[1];
  v5 = *v2;
  v6 = sub_1000024E0();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v5, &type metadata for BacktraceOptions, v6, v19 + 8);
  v28 = v19[3];
  v7 = v20;
  v25 = v17;
  v26 = v18;
  v27 = v19[0];
  v23 = v14;
  v24 = v15;
  v8 = v19[2];
  *(a1 + 96) = v19[1];
  *(a1 + 112) = v8;
  *(a1 + 128) = v28;
  *(a1 + 144) = v7;
  v9 = v25;
  v10 = v26;
  v11 = v27;
  *(a1 + 32) = v16;
  *(a1 + 48) = v9;
  *(a1 + 64) = v10;
  *(a1 + 80) = v11;
  result = *&v23;
  v13 = v24;
  *a1 = v23;
  *(a1 + 16) = v13;
  return result;
}

double sub_100002054@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100002534(a2, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v10;
    v6 = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v6;
    v7 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
  }

  return result;
}

unint64_t sub_1000020C8(uint64_t a1)
{
  result = sub_1000020F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000020F0()
{
  result = qword_1000B47C8;
  if (!qword_1000B47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B47C8);
  }

  return result;
}

unint64_t sub_100002144(uint64_t a1)
{
  result = sub_10000216C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000216C()
{
  result = qword_1000B47D0;
  if (!qword_1000B47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B47D0);
  }

  return result;
}

uint64_t sub_1000021C0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000022B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000022C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000022D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002318()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100002388()
{
  result = qword_1000B47F0;
  if (!qword_1000B47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B47F0);
  }

  return result;
}

unint64_t sub_1000023DC()
{
  result = qword_1000B4800;
  if (!qword_1000B4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4800);
  }

  return result;
}

unint64_t sub_10000248C()
{
  result = qword_1000B4808;
  if (!qword_1000B4808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4808);
  }

  return result;
}

unint64_t sub_1000024E0()
{
  result = qword_1000B4810;
  if (!qword_1000B4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4810);
  }

  return result;
}

double sub_100002534@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1000021C0(&qword_1000B4818, &qword_10008E9B0);
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  __chkstk_darwin();
  v94 = &v31 - v5;
  v6 = ArgumentVisibility.default.unsafeMutableAddressor();
  v7 = *v6;
  v8 = sub_10000248C();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v7, &type metadata for UniversalOptions, v8, v92);
  v88 = v92[2];
  v89 = v92[3];
  v90 = v92[4];
  v91 = v93;
  v86 = v92[0];
  v87 = v92[1];
  v9 = *v6;
  v10 = sub_1000024E0();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v9, &type metadata for BacktraceOptions, v10, &v73);
  v39 = v73;
  v40 = v74;
  v11 = *&v75[0];
  v12 = BYTE8(v75[0]);
  v38 = BYTE9(v75[0]);
  v85[0] = *(v75 + 10);
  v13 = *(&v75[1] + 1);
  *(v85 + 6) = *&v75[1];
  sub_100002AA0(a1, a1[3]);
  sub_100002AE4();
  v14 = v37;
  v15 = *(&v39 + 1);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v16 = v40;
  if (v14)
  {
    sub_100002B38(a1);
    v75[0] = v88;
    v75[1] = v89;
    v76 = v90;
    v73 = v86;
    v74 = v87;
    v77 = v91;
    v78 = v39;
    *v79 = v15;
    *&v79[8] = v16;
    v80 = v11;
    v81 = v12;
    v82 = v38;
    *&v83[6] = *(v85 + 6);
    *v83 = v85[0];
    v84 = v13;
    sub_100002288(&v73);
  }

  else
  {
    v31 = v11;
    v32 = a1;
    v33 = v12;
    v37 = v13;
    sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
    v66 = 0;
    sub_100002C2C(&qword_1000B4828, &qword_1000B47D8, &qword_10008E990);
    v17 = v35;
    v18 = v94;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v60 = v69;
    v61 = v70;
    v62 = v71;
    v63 = v72;
    v58 = v67;
    v59 = v68;
    v64[2] = v88;
    v64[3] = v89;
    v64[4] = v90;
    v65 = v91;
    v64[0] = v86;
    v64[1] = v87;
    sub_100002BCC(v64, &qword_1000B47D8, &qword_10008E990);
    v88 = v60;
    v89 = v61;
    v90 = v62;
    v91 = v63;
    v86 = v58;
    v87 = v59;
    sub_1000021C0(&qword_1000B47E0, &qword_10008E998);
    v51 = 1;
    sub_100002C2C(&qword_1000B4830, &qword_1000B47E0, &qword_10008E998);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v36 + 8))(v18, v17);
    sub_100002C80(v39, *(&v39 + 1), v40, *(&v40 + 1), v31, v33, v38 & 1);

    v19 = v53;
    *(&v40 + 1) = *(&v54 + 1);
    v20 = v54;
    v21 = HIBYTE(v55);
    v85[0] = *v56;
    v22 = v57;
    *(v85 + 6) = *&v56[6];
    v94 = 0;
    v43 = v60;
    v44 = v61;
    v45 = v62;
    v41 = v58;
    v42 = v59;
    *&v46 = v63;
    *(&v46 + 1) = v52;
    v23 = v52;
    v47 = v53;
    v48 = v54;
    LOWORD(v49) = v55;
    v24 = v55;
    *(&v49 + 1) = *&v56[6];
    v50 = v57;
    *(&v49 + 2) = *v56;
    sub_100002250(&v41, &v73);
    sub_100002B38(v32);
    v75[0] = v60;
    v75[1] = v61;
    v76 = v62;
    v73 = v58;
    v74 = v59;
    v77 = v63;
    v78 = v23;
    *v79 = v19;
    *&v79[16] = v20;
    v80 = *(&v40 + 1);
    v81 = v24;
    v82 = v21;
    *&v83[6] = *(v85 + 6);
    *v83 = v85[0];
    v84 = v22;
    sub_100002288(&v73);
    v25 = v48;
    v26 = v34;
    *(v34 + 96) = v47;
    *(v26 + 112) = v25;
    *(v26 + 128) = v49;
    *(v26 + 144) = v50;
    v27 = v44;
    *(v26 + 32) = v43;
    *(v26 + 48) = v27;
    v28 = v46;
    *(v26 + 64) = v45;
    *(v26 + 80) = v28;
    result = *&v41;
    v30 = v42;
    *v26 = v41;
    *(v26 + 16) = v30;
  }

  return result;
}

void *sub_100002AA0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100002AE4()
{
  result = qword_1000B4820;
  if (!qword_1000B4820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4820);
  }

  return result;
}

uint64_t sub_100002B38(void *a1)
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

uint64_t sub_100002B84(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002BCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000021C0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100002C2C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002B84(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002C80(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7)
  {
  }

  else
  {
    sub_1000022C8(a1, a2, a3 & 1);

    return sub_1000022C8(a4, a5, a6 & 1);
  }
}

uint64_t getEnumTagSinglePayload for DumpRawMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DumpRawMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100002E64(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 648))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002E84(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 632) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 648) = v3;
  return result;
}

unint64_t sub_100002F70()
{
  result = qword_1000B4840;
  if (!qword_1000B4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4840);
  }

  return result;
}

unint64_t sub_100002FC8()
{
  result = qword_1000B4848;
  if (!qword_1000B4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4848);
  }

  return result;
}

unint64_t sub_100003020()
{
  result = qword_1000B4850;
  if (!qword_1000B4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4850);
  }

  return result;
}

uint64_t sub_10000307C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 352))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000309C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 352) = v3;
  return result;
}

uint64_t sub_100003140(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 296))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003160(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 296) = v3;
  return result;
}

uint64_t sub_1000031EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 152))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100003248(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

__n128 sub_1000032D4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000032F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 76))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003318(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 76) = v3;
  return result;
}

__n128 sub_10000336C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100003398(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000033B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 104) = v3;
  return result;
}

__n128 sub_100003410(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_10000343C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000345C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 144) = v3;
  return result;
}

uint64_t sub_1000034C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000034E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_10000351C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003528(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003548(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_100003588(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000359C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000035BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

void sub_100003634(uint64_t a1, unint64_t *a2, uint64_t a3)
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

__n128 sub_100003690(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000036B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000036FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_100003760()
{
  *&v1 = 0;
  *(&v1 + 1) = 0xE000000000000000;
  CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:groupedSubcommands:defaultSubcommand:helpNames:aliases:)(0, 0, 0xD00000000000003ELL, 0x80000001000972F0, 0, 0, 0, 0xE000000000000000, v2, v1, 1, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 0, _swiftEmptyArrayStorage);
  xmmword_1000B6268 = v2[6];
  unk_1000B6278 = v2[7];
  xmmword_1000B6288 = v2[8];
  qword_1000B6298 = v3;
  xmmword_1000B6228 = v2[2];
  unk_1000B6238 = v2[3];
  xmmword_1000B6248 = v2[4];
  unk_1000B6258 = v2[5];
  result = *v2;
  xmmword_1000B6208 = v2[0];
  unk_1000B6218 = v2[1];
  return result;
}

void sub_100003820(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 40))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v4 = 0xE90000000000003ELL;
  v5 = 0x6E776F6E6B6E753CLL;
  if (swift_reflection_typeRefForMetadata() && (v6 = swift_reflection_copyNameForTypeRef()) != 0)
  {
    v7 = v6;
    v8 = String.init(cString:)();
    v10 = v9;
    free(v7);
  }

  else
  {
    v8 = 0x6E776F6E6B6E753CLL;
    v10 = 0xE90000000000003ELL;
  }

  if (!*(a3 + 40))
  {
    goto LABEL_13;
  }

  v11 = swift_reflection_copyDemangledNameForProtocolDescriptor();
  if (v11)
  {
    v12 = v11;
    v5 = String.init(cString:)();
    v4 = v13;
    free(v12);
  }

  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10008E640;
  _StringGuts.grow(_:)(19);

  strcpy(v20, "Conformance: ");
  HIWORD(v20[1]) = -4864;
  v15._countAndFlagsBits = v8;
  v15._object = v10;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = v5;
  v17._object = v4;
  String.append(_:)(v17);

  v18 = v20[0];
  v19 = v20[1];
  *(v14 + 56) = &type metadata for String;
  *(v14 + 32) = v18;
  *(v14 + 40) = v19;
  print(_:separator:terminator:)();
}

Swift::Int sub_1000039FC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100003A68(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100003AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100003B54(uint64_t a1)
{
  v2 = sub_100004134();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100003B90(uint64_t a1)
{
  v2 = sub_100004134();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100003BCC@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1000B46D8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_100002430(&xmmword_1000B6208, v2);
}

uint64_t sub_100003C3C()
{
  v1 = v0[3];
  v26 = v0[2];
  v27 = v1;
  v28 = v0[4];
  v29 = *(v0 + 10);
  v2 = v0[1];
  v24 = *v0;
  v25 = v2;
  v3 = sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
  OptionGroup.wrappedValue.getter(v3, &v15, v4, v5);
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v30 = v23;
  sub_100007028(v15, v16, v17, v18, v19, v20);
  sub_1000022B8(v6, v7, v8);
  sub_1000022C8(v9, v10, v11);
  return sub_1000022C8(v12, v13, v30);
}

double sub_100003D38@<D0>(uint64_t a2@<X8>)
{
  v3 = *ArgumentVisibility.default.unsafeMutableAddressor();
  v4 = sub_10000248C();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v3, &type metadata for UniversalOptions, v4, v8);
  v5 = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = v5;
  *(a2 + 64) = v8[4];
  *(a2 + 80) = v9;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  return result;
}

double sub_100003DB4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100003F08(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_100003E10(uint64_t a1)
{
  result = sub_100003E38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100003E38()
{
  result = qword_1000B48B0;
  if (!qword_1000B48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48B0);
  }

  return result;
}

unint64_t sub_100003E8C(uint64_t a1)
{
  result = sub_100003EB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100003EB4()
{
  result = qword_1000B48B8;
  if (!qword_1000B48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48B8);
  }

  return result;
}

uint64_t sub_100003F08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1000021C0(&qword_1000B48C0, &qword_10008EE78);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = *ArgumentVisibility.default.unsafeMutableAddressor();
  v9 = sub_10000248C();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v8, &type metadata for UniversalOptions, v9, v26);
  sub_100002AA0(a1, a1[3]);
  sub_100004134();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004188(v26);
    return sub_100002B38(a1);
  }

  else
  {
    v10 = v27;
    sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
    sub_1000041F0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    sub_100004188(v26);
    v16 = v22;
    v17 = v23;
    v18 = v24;
    v19 = v25;
    v14 = v20;
    v15 = v21;
    result = sub_100002B38(a1);
    v12 = v17;
    *(v10 + 32) = v16;
    *(v10 + 48) = v12;
    *(v10 + 64) = v18;
    *(v10 + 80) = v19;
    v13 = v15;
    *v10 = v14;
    *(v10 + 16) = v13;
  }

  return result;
}

unint64_t sub_100004134()
{
  result = qword_1000B48C8;
  if (!qword_1000B48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48C8);
  }

  return result;
}

uint64_t sub_100004188(uint64_t a1)
{
  v2 = sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000041F0()
{
  result = qword_1000B4828;
  if (!qword_1000B4828)
  {
    sub_100002B84(&qword_1000B47D8, &qword_10008E990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4828);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DumpConformanceCache.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DumpConformanceCache.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100004340()
{
  result = qword_1000B48D0;
  if (!qword_1000B48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48D0);
  }

  return result;
}

unint64_t sub_100004398()
{
  result = qword_1000B48D8;
  if (!qword_1000B48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48D8);
  }

  return result;
}

unint64_t sub_1000043F0()
{
  result = qword_1000B48E0;
  if (!qword_1000B48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48E0);
  }

  return result;
}

uint64_t sub_100004444(uint64_t a1)
{
  v1 = swift_allocObject();
  *(v1 + 16) = sub_100024B2C(_swiftEmptyArrayStorage);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1000053DC;
  *(v2 + 24) = v1;
  swift_retain_n();
  v3 = swift_reflection_iterateMetadataAllocationBacktraces();

  if (v3)
  {
    v4 = String.init(cString:)();
    v6 = v5;
    sub_100002388();
    swift_allocError();
    *v7 = v4;
    v7[1] = v6;
    swift_willThrow();
  }

  else
  {

    swift_beginAccess();
    v4 = *(v1 + 16);
  }

  return v4;
}

uint64_t sub_1000045C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x73736572646461;
  if (v2 != 1)
  {
    v4 = 1702521203;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6775156;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x73736572646461;
  if (*a2 != 1)
  {
    v8 = 1702521203;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6775156;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000046B4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100004748(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000047C8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100004858@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100005358(*a1);
  *a2 = result;
  return result;
}

void sub_100004888(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x73736572646461;
  if (v2 != 1)
  {
    v5 = 1702521203;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6775156;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000048D8()
{
  v1 = 0x73736572646461;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6775156;
  }
}

unint64_t sub_100004924@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100005358(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100004958(uint64_t a1)
{
  v2 = sub_100004B80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004994(uint64_t a1)
{
  v2 = sub_100004B80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t swift_metadata_allocation.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v11[1] = a3;
  v6 = sub_1000021C0(&qword_1000B48E8, qword_10008EF98);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v11 - v8;
  sub_100002AA0(a1, a1[3]);
  sub_100004B80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v4)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v13 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v12 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_100004B80()
{
  result = qword_1000B48F0;
  if (!qword_1000B48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48F0);
  }

  return result;
}

unint64_t sub_100004C14()
{
  result = qword_1000B48F8;
  if (!qword_1000B48F8)
  {
    type metadata accessor for swift_metadata_allocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48F8);
  }

  return result;
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100004E2C()
{
  result = qword_1000B4900;
  if (!qword_1000B4900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4900);
  }

  return result;
}

unint64_t sub_100004E84()
{
  result = qword_1000B4908;
  if (!qword_1000B4908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4908);
  }

  return result;
}

unint64_t sub_100004EDC()
{
  result = qword_1000B4910;
  if (!qword_1000B4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4910);
  }

  return result;
}

uint64_t CommandConfiguration.commandName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_100004F70(int a1, uint64_t a2, int a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a4 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v8;
  if ((result & 1) == 0)
  {
    result = sub_10000EAD0(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
    *(a4 + 16) = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_10000EAD0((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 24 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  *(a4 + 16) = v8;
  return result;
}

uint64_t sub_100005054(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  if (a2)
  {
    v8 = sub_10001FBC4(a2, 0);
    memcpy(v8 + 4, a3, 8 * a2);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_1000210C8(v8, a1, isUniquelyReferenced_nonNull_native);
  *(a4 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_100005118(uint64_t a1, uint64_t a2)
{
  result = swift_reflection_typeRefForMetadata();
  if (result)
  {
    result = swift_reflection_copyNameForTypeRef();
    if (result)
    {
      v3 = result;
      String.init(cString:)();
      free(v3);
      v4._object = 0x8000000100097330;
      v4._countAndFlagsBits = 0xD00000000000001DLL;
      LOBYTE(v3) = String.hasPrefix(_:)(v4);

      if ((v3 & 1) == 0)
      {
        return 0;
      }

      result = swift_reflection_typeRefForMetadata();
      if (!result)
      {
        return result;
      }

      if (swift_reflection_genericArgumentCountOfTypeRef() == 1)
      {
        result = swift_reflection_genericArgumentOfTypeRef();
        if (result)
        {
          swift_reflection_infoForTypeRef();
          return v5 == 13;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100005218(uint64_t result, uint64_t a2, void (**a3)(uint64_t *, uint64_t *))
{
  if (a3)
  {
    v3 = *a3;
    v4 = a2;
    v5 = result;

    v3(&v5, &v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

int *sub_100005278(int *result, void (**a2)(int *))
{
  if (a2)
  {
    v2 = result[4];
    v3 = *(result + 1);
    v4 = *a2;
    v5 = *result;
    v6 = v3;
    v7 = v2;

    v4(&v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000052E8(uint64_t result, uint64_t a2, uint64_t a3, void (**a4)(uint64_t *, uint64_t *, uint64_t *))
{
  if (!a4)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a3)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = *a4;
  v6 = a2;
  v7 = result;
  v5 = a3;

  v4(&v7, &v6, &v5);
}

unint64_t sub_100005358(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000A9F20, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000053A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000053E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005450(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100005498(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000054E4()
{
  v8 = *(v0 + 24);
  v9 = *(v0 + 40);
  v1 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
  Flag.wrappedValue.getter(v1, &v7, v2, v3);
  if (v7)
  {
    return 1;
  }

  v8 = *v0;
  v9 = *(v0 + 16);
  Flag.wrappedValue.getter(v1, &v7, v4, v5);
  if (v7)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

void *sub_100005588()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  *&v27 = *v0;
  *(&v27 + 1) = v2;
  v28 = v3;
  v4 = sub_1000021C0(&qword_1000B4968, &qword_10008F2D8);
  Argument.wrappedValue.getter(v4, &v25, v5, v6);
  if (v26)
  {

    v9 = *(v0 + 64);
    v27 = *(v0 + 3);
    v28 = v9;
    v10 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    Flag.wrappedValue.getter(v10, &v25, v11, v12);
    if (v25)
    {
      goto LABEL_8;
    }
  }

  *&v27 = v1;
  *(&v27 + 1) = v2;
  v28 = v3;
  Argument.wrappedValue.getter(v4, &v25, v7, v8);
  if (v26)
  {

    goto LABEL_6;
  }

  v13 = *(v0 + 64);
  v27 = *(v0 + 3);
  v28 = v13;
  v14 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
  Flag.wrappedValue.getter(v14, &v25, v15, v16);
  if ((v25 & 1) == 0)
  {
LABEL_8:
    sub_10000A4E8();
    swift_allocError();
    *v24 = 0xD000000000000031;
    v24[1] = 0x8000000100097410;
    return swift_willThrow();
  }

LABEL_6:
  v17 = *(v0 + 64);
  v27 = *(v0 + 3);
  v28 = v17;
  v18 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
  result = Flag.wrappedValue.getter(v18, &v25, v19, v20);
  if (v25 == 1)
  {
    LOBYTE(v27) = v25;
    return Option.wrappedValue.setter(&v27, v18, v22, v23);
  }

  return result;
}

uint64_t sub_100005760()
{
  v1 = 0x70726F436B726F66;
  if (*v0 != 1)
  {
    v1 = 7105633;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6950724F656D616ELL;
  }
}

uint64_t sub_1000057BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10000A53C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000057E4(uint64_t a1)
{
  v2 = sub_10000BD38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100005820(uint64_t a1)
{
  v2 = sub_10000BD38();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10000585C@<Q0>(uint64_t a1@<X8>)
{
  sub_10000A664(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1000058C4@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10000A824(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_100005950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x636172746B636162 && a2 == 0xE900000000000065;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x636172746B636162 && a2 == 0xED0000676E6F4C65)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100005A34(uint64_t a1)
{
  v2 = sub_10000BCE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100005A70(uint64_t a1)
{
  v2 = sub_10000BCE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t (*sub_100005AAC@<X0>(uint64_t a1@<X8>))(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v2._object = 0x8000000100097570;
  v2._countAndFlagsBits = 0xD000000000000026;
  ArgumentHelp.init(stringLiteral:)(&v14, v2);
  v17 = v14;
  v3 = static NameSpecification.long.getter();
  v4 = Flag<A>.init(wrappedValue:name:help:)(0, v3, &v17);
  v6 = v5;
  v8 = v7;
  v9._countAndFlagsBits = 0xD00000000000002ELL;
  v9._object = 0x80000001000975A0;
  ArgumentHelp.init(stringLiteral:)(&v15, v9);
  v16 = v15;
  v10 = static NameSpecification.long.getter();
  result = Flag<A>.init(wrappedValue:name:help:)(0, v10, &v16);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = result;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13 & 1;
  return result;
}

double sub_100005BB8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10000ADBC(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_100005BFC()
{
  v1 = 0x64656C676E616DLL;
  v2 = 0x7972616D6D7573;
  if (*v0 != 2)
  {
    v2 = 0x694674757074756FLL;
  }

  if (*v0)
  {
    v1 = 1852797802;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100005C74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10000B23C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100005CA8(uint64_t a1)
{
  v2 = sub_10000BC90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100005CE4(uint64_t a1)
{
  v2 = sub_10000BC90();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100005D20@<D0>(_OWORD *a1@<X8>)
{
  sub_10000B3A8(v5);
  v2 = v5[3];
  a1[2] = v5[2];
  a1[3] = v2;
  a1[4] = v6[0];
  *(a1 + 73) = *(v6 + 9);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

double sub_100005D70@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10000B5E4(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    a1[2] = v7[2];
    a1[3] = v5;
    a1[4] = v8[0];
    *(a1 + 73) = *(v8 + 9);
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    a1[1] = v6;
  }

  return result;
}

unint64_t sub_100005DC4()
{
  sub_1000021C0(&qword_1000B4930, &qword_10008F2D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10008F230;
  v1 = sub_100006294();
  *(v0 + 32) = &type metadata for DumpConformanceCache;
  *(v0 + 40) = v1;
  v2 = sub_1000062E8();
  *(v0 + 48) = &type metadata for DumpRawMetadata;
  *(v0 + 56) = v2;
  v3 = sub_10000633C();
  *(v0 + 64) = &type metadata for DumpGenericMetadata;
  *(v0 + 72) = v3;
  v4 = sub_100006390();
  *(v0 + 80) = &type metadata for DumpCacheNodes;
  *(v0 + 88) = v4;
  v5 = sub_1000063E4();
  *(v0 + 96) = &type metadata for DumpArrays;
  *(v0 + 104) = v5;
  result = sub_100006438();
  *(v0 + 112) = &type metadata for DumpConcurrency;
  *(v0 + 120) = result;
  qword_1000B62A0 = v0;
  return result;
}

double sub_100005E78()
{
  if (qword_1000B46E0 != -1)
  {
    swift_once();
  }

  *&v2 = 0;
  *(&v2 + 1) = 0xE000000000000000;
  CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:groupedSubcommands:defaultSubcommand:helpNames:aliases:)(0, 0, 0xD000000000000018, 0x8000000100097350, 0, 0, 0, 0xE000000000000000, v3, v2, 1, v0, _swiftEmptyArrayStorage, 0, _swiftEmptyArrayStorage);
  xmmword_1000B6308 = v3[6];
  unk_1000B6318 = v3[7];
  xmmword_1000B6328 = v3[8];
  qword_1000B6338 = v4;
  xmmword_1000B62C8 = v3[2];
  unk_1000B62D8 = v3[3];
  xmmword_1000B62E8 = v3[4];
  unk_1000B62F8 = v3[5];
  result = *v3;
  xmmword_1000B62A8 = v3[0];
  unk_1000B62B8 = v3[1];
  return result;
}

uint64_t sub_100005F7C@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1000B46E8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_100002430(&xmmword_1000B62A8, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_1000060E8();
  static ParsableCommand.parseAsRoot(_:)(0, v3, v7);
  v4 = v8;
  v5 = v9;
  sub_100006190(v7, v8);
  (*(v5 + 32))(v4, v5);
  sub_100002B38(v7);
  return 0;
}

unint64_t sub_1000060E8()
{
  result = qword_1000B4918;
  if (!qword_1000B4918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4918);
  }

  return result;
}

unint64_t sub_10000613C()
{
  result = qword_1000B4920;
  if (!qword_1000B4920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4920);
  }

  return result;
}

uint64_t sub_100006190(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1000061F0(uint64_t a1)
{
  result = sub_100006218();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100006218()
{
  result = qword_1000B4928;
  if (!qword_1000B4928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4928);
  }

  return result;
}

unint64_t sub_10000626C(uint64_t a1)
{
  result = sub_10000613C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100006294()
{
  result = qword_1000B4938;
  if (!qword_1000B4938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4938);
  }

  return result;
}

unint64_t sub_1000062E8()
{
  result = qword_1000B4940;
  if (!qword_1000B4940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4940);
  }

  return result;
}

unint64_t sub_10000633C()
{
  result = qword_1000B4948;
  if (!qword_1000B4948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4948);
  }

  return result;
}

unint64_t sub_100006390()
{
  result = qword_1000B4950;
  if (!qword_1000B4950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4950);
  }

  return result;
}

unint64_t sub_1000063E4()
{
  result = qword_1000B4958;
  if (!qword_1000B4958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4958);
  }

  return result;
}

unint64_t sub_100006438()
{
  result = qword_1000B4960;
  if (!qword_1000B4960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4960);
  }

  return result;
}

uint64_t sub_10000648C(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7)
{
  v8 = v7;
  v71 = a1;
  v72 = a2;
  v73 = a3 & 1;
  v10 = sub_1000021C0(&qword_1000B4968, &qword_10008F2D8);
  Argument.wrappedValue.getter(v10, &v75, v11, v12);
  v13 = v76;
  if (v76)
  {
    v14 = v75;
    if (sub_100011618(v75, v76))
    {

      v15 = getpid();
    }

    else
    {
      if (qword_1000B4720 != -1)
      {
        swift_once();
      }

      v50 = off_1000B6510;
      v51 = String._bridgeToObjectiveC()();
      v15 = v50();

      if (!v15)
      {
        sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_10008E640;
        _StringGuts.grow(_:)(28);

        v71 = 0xD00000000000001ALL;
        v72 = 0x80000001000973F0;
        v63._countAndFlagsBits = v14;
        v63._object = v13;
        String.append(_:)(v63);

        *(v62 + 56) = &type metadata for String;
        *(v62 + 32) = 0xD00000000000001ALL;
        *(v62 + 40) = 0x80000001000973F0;
        if (qword_1000B46F8 == -1)
        {
          goto LABEL_34;
        }

        goto LABEL_38;
      }
    }

    v71 = a4;
    v72 = a5;
    v73 = a6 & 1;
    v52 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    Flag.wrappedValue.getter(v52, &v75, v53, v54);
    v55 = v75;
    type metadata accessor for DarwinRemoteProcess();
    swift_allocObject();
    v56 = sub_10000D6A4(v15, v55);
    if (v56)
    {
      sub_10000140C(v56, &off_1000B4C00, a7);
    }

    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_10008E640;
    _StringGuts.grow(_:)(44);

    v71 = 0xD00000000000002ALL;
    v72 = 0x80000001000973C0;
    LODWORD(v75) = v15;
    v61._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v61);

    *(v60 + 56) = &type metadata for String;
    *(v60 + 32) = 0xD00000000000002ALL;
    *(v60 + 40) = 0x80000001000973C0;
    if (qword_1000B46F8 == -1)
    {
LABEL_34:
      swift_beginAccess();
      sub_100007D90();
      print<A>(_:separator:terminator:to:)();
      swift_endAccess();
    }

LABEL_38:
    swift_once();
    goto LABEL_34;
  }

  v16 = sub_1000123E8();
  if (!v16)
  {
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_10008E640;
    v59 = 0x8000000100097370;
    *(v58 + 56) = &type metadata for String;
    *(v58 + 32) = 0xD00000000000001FLL;
LABEL_31:
    *(v58 + 40) = v59;
    if (qword_1000B46F8 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v17 = *(v16 + 2);
  if (!v17)
  {
LABEL_27:

    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_10008E640;
    *(v58 + 56) = &type metadata for String;
    v59 = 0xE000000000000000;
    *(v58 + 32) = 0;
    goto LABEL_31;
  }

  v77 = 0;
  v18 = 0;
  v66 = v16 + 32;
  v67 = a6;
  v65 = v17;
  while (1)
  {
    v19 = *&v66[4 * v18++];
    v71 = 91;
    v72 = 0xE100000000000000;
    v75 = v77;
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    v21._countAndFlagsBits = 47;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v75 = v18;
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 47;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v75 = v17;
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 93;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    v27 = v71;
    v26 = v72;
    v71 = a4;
    v72 = a5;
    v73 = a6 & 1;
    v28 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    Flag.wrappedValue.getter(v28, &v75, v29, v30);
    v31 = v75;
    type metadata accessor for DarwinRemoteProcess();
    swift_allocObject();
    v32 = sub_10000D6A4(v19, v31);
    if (!v32)
    {
      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_10008F240;
      *(v44 + 56) = &type metadata for String;
      *(v44 + 32) = v27;
      *(v44 + 40) = v26;
      v71 = 0;
      v72 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v71 = 0xD00000000000002DLL;
      v72 = 0x8000000100097390;
      LODWORD(v75) = v19;
      v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v45);

      v46 = v71;
      v47 = v72;
      *(v44 + 88) = &type metadata for String;
      *(v44 + 64) = v46;
      *(v44 + 72) = v47;
      if (qword_1000B46F8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_100007D90();
      print<A>(_:separator:terminator:to:)();
      swift_endAccess();

      v17 = v65;
      a6 = v67;
      goto LABEL_17;
    }

    v33 = v32;
    v68 = v8;
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10008F240;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 32) = v27;
    *(v34 + 40) = v26;
    v75 = 0;
    v76 = 0xE000000000000000;
    v35._countAndFlagsBits = sub_10000CFA4();
    String.append(_:)(v35);

    v36._countAndFlagsBits = 40;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    swift_getObjectType();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *sub_100007DE4(&v71) = *(v33 + 20);
    _print_unlocked<A, B>(_:_:)();
    sub_100002B38(&v71);
    v37._countAndFlagsBits = 41;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    v38 = v75;
    v39 = v76;
    *(v34 + 88) = &type metadata for String;
    *(v34 + 64) = v38;
    *(v34 + 72) = v39;
    if (qword_1000B46F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100007D90();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    sub_10000140C(v33, &off_1000B4C00, a7);
    v8 = v68;
    if (!v68)
    {
      break;
    }

    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10008E640;
    v71 = 0;
    v72 = 0xE000000000000000;
    v41._countAndFlagsBits = 2108704;
    v41._object = 0xE300000000000000;
    String.append(_:)(v41);
    v75 = v68;
    sub_1000021C0(&qword_1000B4978, &qword_10008F2E0);
    _print_unlocked<A, B>(_:_:)();
    v42 = v71;
    v43 = v72;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 32) = v42;
    *(v40 + 40) = v43;
    swift_beginAccess();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    v8 = 0;
    a6 = v67;
LABEL_16:

    v17 = v65;
LABEL_17:
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_10008E640;
    *(v49 + 56) = &type metadata for String;
    *(v49 + 32) = 1261460251;
    *(v49 + 40) = 0xE400000000000000;
    if (qword_1000B46F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100007D90();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    if (v17 == v18)
    {
      goto LABEL_27;
    }
  }

  v48 = __OFADD__(v77++, 1);
  a6 = v67;
  if (!v48)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_37:
  swift_once();
LABEL_32:
  swift_beginAccess();
  sub_100007D90();
  print<A>(_:separator:terminator:to:)();
  swift_endAccess();
}

char *sub_100007028(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6)
{
  v85 = a1;
  v86 = a2;
  v87 = a3 & 1;
  v6 = sub_1000021C0(&qword_1000B4968, &qword_10008F2D8);
  Argument.wrappedValue.getter(v6, &v89, v7, v8);
  v9 = v90;
  if (!v90)
  {
    v12 = sub_1000123E8();
    if (!v12)
    {
      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_10008E640;
      *(v74 + 56) = &type metadata for String;
      *(v74 + 32) = 0xD00000000000001FLL;
      *(v74 + 40) = 0x8000000100097370;
      goto LABEL_36;
    }

    v13 = *(v12 + 2);
    if (!v13)
    {
LABEL_30:

      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_10008E640;
      *(v69 + 56) = &type metadata for String;
      *(v69 + 32) = 0;
      *(v69 + 40) = 0xE000000000000000;
      if (qword_1000B46F8 == -1)
      {
        goto LABEL_31;
      }

      goto LABEL_40;
    }

    v84 = 0;
    v14 = 0;
    v80 = v12 + 32;
    v79 = *(v12 + 2);
    while (1)
    {
      v15 = *&v80[4 * v14++];
      v85 = 91;
      v86 = 0xE100000000000000;
      v89 = v84;
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      v17._countAndFlagsBits = 47;
      v17._object = 0xE100000000000000;
      String.append(_:)(v17);
      v89 = v14;
      v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v18);

      v19._countAndFlagsBits = 47;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      v89 = v13;
      v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v20);

      v21._countAndFlagsBits = 93;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      v23 = v85;
      v22 = v86;
      v85 = a4;
      v86 = a5;
      v87 = a6 & 1;
      v24 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
      Flag.wrappedValue.getter(v24, &v89, v25, v26);
      v27 = v89;
      type metadata accessor for DarwinRemoteProcess();
      swift_allocObject();
      v28 = sub_10000D6A4(v15, v27);
      if (v28)
      {
        v29 = v28;
        v9 = sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_10008F240;
        *(v30 + 56) = &type metadata for String;
        *(v30 + 32) = v23;
        *(v30 + 40) = v22;
        v89 = 0;
        v90 = 0xE000000000000000;
        v31._countAndFlagsBits = sub_10000CFA4();
        String.append(_:)(v31);

        v32._countAndFlagsBits = 40;
        v32._object = 0xE100000000000000;
        String.append(_:)(v32);
        swift_getObjectType();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        *sub_100007DE4(&v85) = *(v29 + 5);
        _print_unlocked<A, B>(_:_:)();
        sub_100002B38(&v85);
        v33._countAndFlagsBits = 41;
        v33._object = 0xE100000000000000;
        String.append(_:)(v33);
        v34 = v89;
        v35 = v90;
        *(v30 + 88) = &type metadata for String;
        *(v30 + 64) = v34;
        *(v30 + 72) = v35;
        if (qword_1000B46F8 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v10 = sub_100007D90();
        print<A>(_:separator:terminator:to:)();
        swift_endAccess();

        if (!*(v29 + 5))
        {
          __break(1u);
        }

        v36 = swift_allocObject();
        *(v36 + 16) = v29;
        *(v36 + 24) = &off_1000B4C00;
        v37 = swift_allocObject();
        *(v37 + 16) = sub_100007E80;
        *(v37 + 24) = v36;
        v85 = sub_100007E88;
        v86 = v37;

        v38 = swift_reflection_iterateConformanceCache();

        if (v38)
        {
          v39 = String.init(cString:)();
          v41 = v40;
          sub_100002388();
          v42 = swift_allocError();
          *v43 = v39;
          v43[1] = v41;
          swift_willThrow();

          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_10008E640;
          v85 = 0;
          v86 = 0xE000000000000000;
          v45._countAndFlagsBits = 2108704;
          v45._object = 0xE300000000000000;
          String.append(_:)(v45);
          v89 = v42;
          sub_1000021C0(&qword_1000B4978, &qword_10008F2E0);
          _print_unlocked<A, B>(_:_:)();
          v46 = v85;
          v47 = v86;
          *(v44 + 56) = &type metadata for String;
          *(v44 + 32) = v46;
          *(v44 + 40) = v47;
          swift_beginAccess();
          print<A>(_:separator:terminator:to:)();
          swift_endAccess();
        }

        else
        {

          if (__OFADD__(v84++, 1))
          {
            __break(1u);
LABEL_39:
            swift_once();
LABEL_23:
            v54 = off_1000B6510;
            v55 = String._bridgeToObjectiveC()();
            v11 = v54();

            if (v11)
            {

              goto LABEL_25;
            }

            sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
            v75 = swift_allocObject();
            *(v75 + 16) = xmmword_10008E640;
            v85 = 0;
            v86 = 0xE000000000000000;
            _StringGuts.grow(_:)(28);

            v85 = 0xD00000000000001ALL;
            v86 = 0x80000001000973F0;
            v76._countAndFlagsBits = v10;
            v76._object = v9;
            String.append(_:)(v76);

            v77 = v85;
            v78 = v86;
            *(v75 + 56) = &type metadata for String;
            *(v75 + 32) = v77;
            *(v75 + 40) = v78;
LABEL_36:
            if (qword_1000B46F8 == -1)
            {
LABEL_31:
              swift_beginAccess();
              sub_100007D90();
              print<A>(_:separator:terminator:to:)();
              swift_endAccess();
            }

LABEL_40:
            swift_once();
            goto LABEL_31;
          }
        }

        v13 = v79;
      }

      else
      {
        sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_10008F240;
        *(v48 + 56) = &type metadata for String;
        *(v48 + 32) = v23;
        *(v48 + 40) = v22;
        v85 = 0;
        v86 = 0xE000000000000000;
        _StringGuts.grow(_:)(47);

        v85 = 0xD00000000000002DLL;
        v86 = 0x8000000100097390;
        LODWORD(v89) = v15;
        v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v49);

        v50 = v85;
        v51 = v86;
        *(v48 + 88) = &type metadata for String;
        *(v48 + 64) = v50;
        *(v48 + 72) = v51;
        if (qword_1000B46F8 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        sub_100007D90();
        print<A>(_:separator:terminator:to:)();
        swift_endAccess();
      }

      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_10008E640;
      *(v53 + 56) = &type metadata for String;
      *(v53 + 32) = 1261460251;
      *(v53 + 40) = 0xE400000000000000;
      if (qword_1000B46F8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_100007D90();
      print<A>(_:separator:terminator:to:)();
      swift_endAccess();

      if (v13 == v14)
      {
        goto LABEL_30;
      }
    }
  }

  v10 = v89;
  if ((sub_100011618(v89, v90) & 1) == 0)
  {
    if (qword_1000B4720 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

  v11 = getpid();
LABEL_25:
  v85 = a4;
  v86 = a5;
  v87 = a6 & 1;
  v56 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
  Flag.wrappedValue.getter(v56, &v89, v57, v58);
  v59 = v89;
  type metadata accessor for DarwinRemoteProcess();
  swift_allocObject();
  result = sub_10000D6A4(v11, v59);
  if (!result)
  {
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_10008E640;
    v85 = 0;
    v86 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v85 = 0xD00000000000002ALL;
    v86 = 0x80000001000973C0;
    LODWORD(v89) = v11;
    v71._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v71);

    v72 = v85;
    v73 = v86;
    *(v70 + 56) = &type metadata for String;
    *(v70 + 32) = v72;
    *(v70 + 40) = v73;
    if (qword_1000B46F8 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  v61 = result;
  if (*(result + 5))
  {
    v62 = swift_allocObject();
    *(v62 + 16) = v61;
    *(v62 + 24) = &off_1000B4C00;
    v63 = swift_allocObject();
    *(v63 + 16) = sub_10000C25C;
    *(v63 + 24) = v62;
    v85 = sub_10000C280;
    v86 = v63;

    v64 = swift_reflection_iterateConformanceCache();

    if (v64)
    {
      v65 = String.init(cString:)();
      v67 = v66;
      sub_100002388();
      swift_allocError();
      *v68 = v65;
      v68[1] = v67;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100007D90()
{
  result = qword_1000B4970;
  if (!qword_1000B4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4970);
  }

  return result;
}

uint64_t *sub_100007DE4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100007E48()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007E90()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007F20(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6, void (*a7)(void))
{
  v8 = v7;
  v70 = a1;
  v71 = a2;
  v72 = a3 & 1;
  v10 = sub_1000021C0(&qword_1000B4968, &qword_10008F2D8);
  Argument.wrappedValue.getter(v10, &v74, v11, v12);
  v13 = v75;
  if (v75)
  {
    v14 = v74;
    if (sub_100011618(v74, v75))
    {

      v15 = getpid();
    }

    else
    {
      if (qword_1000B4720 != -1)
      {
        swift_once();
      }

      v50 = off_1000B6510;
      v51 = String._bridgeToObjectiveC()();
      v15 = v50();

      if (!v15)
      {
        sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_10008E640;
        _StringGuts.grow(_:)(28);

        v70 = 0xD00000000000001ALL;
        v71 = 0x80000001000973F0;
        v62._countAndFlagsBits = v14;
        v62._object = v13;
        String.append(_:)(v62);

        *(v61 + 56) = &type metadata for String;
        *(v61 + 32) = 0xD00000000000001ALL;
        *(v61 + 40) = 0x80000001000973F0;
        if (qword_1000B46F8 == -1)
        {
          goto LABEL_34;
        }

        goto LABEL_38;
      }
    }

    v70 = a4;
    v71 = a5;
    v72 = a6 & 1;
    v52 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    Flag.wrappedValue.getter(v52, &v74, v53, v54);
    v55 = v74;
    type metadata accessor for DarwinRemoteProcess();
    swift_allocObject();
    if (sub_10000D6A4(v15, v55))
    {
      a7();
    }

    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_10008E640;
    _StringGuts.grow(_:)(44);

    v70 = 0xD00000000000002ALL;
    v71 = 0x80000001000973C0;
    LODWORD(v74) = v15;
    v60._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v60);

    *(v59 + 56) = &type metadata for String;
    *(v59 + 32) = 0xD00000000000002ALL;
    *(v59 + 40) = 0x80000001000973C0;
    if (qword_1000B46F8 == -1)
    {
LABEL_34:
      swift_beginAccess();
      sub_100007D90();
      print<A>(_:separator:terminator:to:)();
      swift_endAccess();
    }

LABEL_38:
    swift_once();
    goto LABEL_34;
  }

  v16 = sub_1000123E8();
  if (!v16)
  {
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_10008E640;
    v58 = 0x8000000100097370;
    *(v57 + 56) = &type metadata for String;
    *(v57 + 32) = 0xD00000000000001FLL;
LABEL_31:
    *(v57 + 40) = v58;
    if (qword_1000B46F8 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v17 = *(v16 + 2);
  if (!v17)
  {
LABEL_27:

    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_10008E640;
    *(v57 + 56) = &type metadata for String;
    v58 = 0xE000000000000000;
    *(v57 + 32) = 0;
    goto LABEL_31;
  }

  v76 = 0;
  v18 = 0;
  v65 = v16 + 32;
  v66 = a6;
  v64 = v17;
  while (1)
  {
    v19 = *&v65[4 * v18++];
    v70 = 91;
    v71 = 0xE100000000000000;
    v74 = v76;
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    v21._countAndFlagsBits = 47;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v74 = v18;
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 47;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v74 = v17;
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 93;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    v27 = v70;
    v26 = v71;
    v70 = a4;
    v71 = a5;
    v72 = a6 & 1;
    v28 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    Flag.wrappedValue.getter(v28, &v74, v29, v30);
    v31 = v74;
    type metadata accessor for DarwinRemoteProcess();
    swift_allocObject();
    v32 = sub_10000D6A4(v19, v31);
    if (!v32)
    {
      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_10008F240;
      *(v44 + 56) = &type metadata for String;
      *(v44 + 32) = v27;
      *(v44 + 40) = v26;
      v70 = 0;
      v71 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v70 = 0xD00000000000002DLL;
      v71 = 0x8000000100097390;
      LODWORD(v74) = v19;
      v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v45);

      v46 = v70;
      v47 = v71;
      *(v44 + 88) = &type metadata for String;
      *(v44 + 64) = v46;
      *(v44 + 72) = v47;
      if (qword_1000B46F8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_100007D90();
      print<A>(_:separator:terminator:to:)();
      swift_endAccess();

      v17 = v64;
      a6 = v66;
      goto LABEL_17;
    }

    v33 = v32;
    v67 = v8;
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10008F240;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 32) = v27;
    *(v34 + 40) = v26;
    v74 = 0;
    v75 = 0xE000000000000000;
    v35._countAndFlagsBits = sub_10000CFA4();
    String.append(_:)(v35);

    v36._countAndFlagsBits = 40;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    swift_getObjectType();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *sub_100007DE4(&v70) = *(v33 + 20);
    _print_unlocked<A, B>(_:_:)();
    sub_100002B38(&v70);
    v37._countAndFlagsBits = 41;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    v38 = v74;
    v39 = v75;
    *(v34 + 88) = &type metadata for String;
    *(v34 + 64) = v38;
    *(v34 + 72) = v39;
    if (qword_1000B46F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100007D90();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    (a7)(v33, &off_1000B4C00);
    v8 = v67;
    if (!v67)
    {
      break;
    }

    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10008E640;
    v70 = 0;
    v71 = 0xE000000000000000;
    v41._countAndFlagsBits = 2108704;
    v41._object = 0xE300000000000000;
    String.append(_:)(v41);
    v74 = v67;
    sub_1000021C0(&qword_1000B4978, &qword_10008F2E0);
    _print_unlocked<A, B>(_:_:)();
    v42 = v70;
    v43 = v71;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 32) = v42;
    *(v40 + 40) = v43;
    swift_beginAccess();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    v8 = 0;
    a6 = v66;
LABEL_16:

    v17 = v64;
LABEL_17:
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_10008E640;
    *(v49 + 56) = &type metadata for String;
    *(v49 + 32) = 1261460251;
    *(v49 + 40) = 0xE400000000000000;
    if (qword_1000B46F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100007D90();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    if (v17 == v18)
    {
      goto LABEL_27;
    }
  }

  v48 = __OFADD__(v76++, 1);
  a6 = v66;
  if (!v48)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_37:
  swift_once();
LABEL_32:
  swift_beginAccess();
  sub_100007D90();
  print<A>(_:separator:terminator:to:)();
  swift_endAccess();
}

void *sub_100008AC4(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, int a6)
{
  v71 = a6;
  v65 = a1;
  v66 = a2;
  v67 = a3 & 1;
  v6 = sub_1000021C0(&qword_1000B4968, &qword_10008F2D8);
  Argument.wrappedValue.getter(v6, &v69, v7, v8);
  v9 = v70;
  if (v70)
  {
    v10 = v69;
    if ((sub_100011618(v69, v70) & 1) == 0)
    {
      if (qword_1000B4720 != -1)
      {
        goto LABEL_39;
      }

      goto LABEL_22;
    }

    v11 = getpid();
    while (1)
    {
      v65 = a4;
      v66 = a5;
      v67 = v71 & 1;
      v46 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
      Flag.wrappedValue.getter(v46, &v69, v47, v48);
      v49 = v69;
      type metadata accessor for DarwinRemoteProcess();
      swift_allocObject();
      result = sub_10000D6A4(v11, v49);
      if (!result)
      {
        break;
      }

      v9 = result;
      v50 = result[5];
      if (!v50)
      {
        goto LABEL_42;
      }

      if (object_getClass(result) == _TtC13swift_inspect19DarwinRemoteProcess)
      {
        type metadata accessor for ConcurrencyDumper();
        swift_allocObject();
        swift_unknownObjectRetain();
        sub_10001B3A4(v50, v9);
        sub_10001CD2C();
        sub_10001E474();
        sub_10001F3A0();
      }

LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
LABEL_22:
      v44 = off_1000B6510;
      v45 = String._bridgeToObjectiveC()();
      v11 = v44();

      if (!v11)
      {
        sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_10008E640;
        v65 = 0;
        v66 = 0xE000000000000000;
        _StringGuts.grow(_:)(28);

        v65 = 0xD00000000000001ALL;
        v66 = 0x80000001000973F0;
        v58._countAndFlagsBits = v10;
        v58._object = v9;
        String.append(_:)(v58);

        v59 = v65;
        v60 = v66;
        *(v57 + 56) = &type metadata for String;
        *(v57 + 32) = v59;
        *(v57 + 40) = v60;
        goto LABEL_34;
      }
    }

    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_10008E640;
    v65 = 0;
    v66 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v65 = 0xD00000000000002ALL;
    v66 = 0x80000001000973C0;
    LODWORD(v69) = v11;
    v53._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v53);

    v54 = v65;
    v55 = v66;
    *(v52 + 56) = &type metadata for String;
    *(v52 + 32) = v54;
    *(v52 + 40) = v55;
    if (qword_1000B46F8 != -1)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

  v12 = sub_1000123E8();
  if (!v12)
  {
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_10008E640;
    *(v56 + 56) = &type metadata for String;
    *(v56 + 32) = 0xD00000000000001FLL;
    *(v56 + 40) = 0x8000000100097370;
LABEL_34:
    if (qword_1000B46F8 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v13 = *(v12 + 2);
  if (!v13)
  {
LABEL_28:

    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_10008E640;
    *(v51 + 56) = &type metadata for String;
    *(v51 + 32) = 0;
    *(v51 + 40) = 0xE000000000000000;
    if (qword_1000B46F8 == -1)
    {
LABEL_35:
      swift_beginAccess();
      sub_100007D90();
      print<A>(_:separator:terminator:to:)();
      swift_endAccess();
    }

LABEL_29:
    swift_once();
    goto LABEL_35;
  }

  v14 = 0;
  v15 = 0;
  v62 = v12 + 32;
  v10 = &DarwinRemoteProcess;
  v61 = *(v12 + 2);
  while (1)
  {
    v16 = *&v62[4 * v15++];
    v65 = 91;
    v66 = 0xE100000000000000;
    v69 = v14;
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 47;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v69 = v15;
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 47;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v69 = v13;
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22._countAndFlagsBits = 93;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v24 = v65;
    v23 = v66;
    v65 = a4;
    v66 = a5;
    v67 = v71 & 1;
    v25 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    Flag.wrappedValue.getter(v25, &v69, v26, v27);
    v28 = v69;
    type metadata accessor for DarwinRemoteProcess();
    swift_allocObject();
    v29 = sub_10000D6A4(v16, v28);
    if (v29)
    {
      break;
    }

    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_10008F240;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 32) = v24;
    *(v39 + 40) = v23;
    v65 = 0;
    v66 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v65 = 0xD00000000000002DLL;
    v66 = 0x8000000100097390;
    LODWORD(v69) = v16;
    v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v40);

    v41 = v65;
    v42 = v66;
    *(v39 + 88) = &type metadata for String;
    *(v39 + 64) = v41;
    *(v39 + 72) = v42;
    if (qword_1000B46F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100007D90();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    v13 = v61;
LABEL_17:
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_10008E640;
    *(v43 + 56) = &type metadata for String;
    *(v43 + 32) = 1261460251;
    *(v43 + 40) = 0xE400000000000000;
    if (qword_1000B46F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100007D90();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    if (v13 == v15)
    {
      goto LABEL_28;
    }
  }

  v30 = v29;
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v9 = swift_allocObject();
  *(v9 + 1) = xmmword_10008F240;
  v9[7] = &type metadata for String;
  v9[4] = v24;
  v9[5] = v23;
  v69 = 0;
  v70 = 0xE000000000000000;
  v31._countAndFlagsBits = sub_10000CFA4();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 40;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *sub_100007DE4(&v65) = *(v30 + 20);
  _print_unlocked<A, B>(_:_:)();
  sub_100002B38(&v65);
  v33._countAndFlagsBits = 41;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34 = v69;
  v35 = v70;
  v9[11] = &type metadata for String;
  v9[8] = v34;
  v9[9] = v35;
  if (qword_1000B46F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100007D90();
  print<A>(_:separator:terminator:to:)();
  swift_endAccess();

  v37 = *(v30 + 40);
  if (v37)
  {
    v13 = v61;
    if (object_getClass(v30) != _TtC13swift_inspect19DarwinRemoteProcess)
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    type metadata accessor for ConcurrencyDumper();
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_10001B3A4(v37, v30);
    sub_10001CD2C();
    sub_10001E474();
    sub_10001F3A0();

    if (__OFADD__(v14++, 1))
    {
      goto LABEL_37;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_10000957C(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7, Swift::Int *a8, uint64_t *a9)
{
  v10 = v9;
  v74 = a1;
  v75 = a2;
  v76 = a3 & 1;
  v11 = sub_1000021C0(&qword_1000B4968, &qword_10008F2D8);
  Argument.wrappedValue.getter(v11, &v78, v12, v13);
  v14 = v79;
  if (v79)
  {
    v15 = v78;
    if (sub_100011618(v78, v79))
    {

      v16 = getpid();
    }

    else
    {
      if (qword_1000B4720 != -1)
      {
        swift_once();
      }

      v52 = off_1000B6510;
      v53 = String._bridgeToObjectiveC()();
      v16 = v52();

      if (!v16)
      {
        sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_10008E640;
        _StringGuts.grow(_:)(28);

        v74 = 0xD00000000000001ALL;
        v75 = 0x80000001000973F0;
        v65._countAndFlagsBits = v15;
        v65._object = v14;
        String.append(_:)(v65);

        *(v64 + 56) = &type metadata for String;
        *(v64 + 32) = 0xD00000000000001ALL;
        *(v64 + 40) = 0x80000001000973F0;
        if (qword_1000B46F8 == -1)
        {
          goto LABEL_34;
        }

        goto LABEL_38;
      }
    }

    v74 = a4;
    v75 = a5;
    v76 = a6 & 1;
    v54 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    Flag.wrappedValue.getter(v54, &v78, v55, v56);
    v57 = v78;
    type metadata accessor for DarwinRemoteProcess();
    swift_allocObject();
    v58 = sub_10000D6A4(v16, v57);
    if (v58)
    {
      sub_10001416C(v58, &off_1000B4C00, a7, a8, a9);
    }

    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_10008E640;
    _StringGuts.grow(_:)(44);

    v74 = 0xD00000000000002ALL;
    v75 = 0x80000001000973C0;
    LODWORD(v78) = v16;
    v63._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v63);

    *(v62 + 56) = &type metadata for String;
    *(v62 + 32) = 0xD00000000000002ALL;
    *(v62 + 40) = 0x80000001000973C0;
    if (qword_1000B46F8 == -1)
    {
LABEL_34:
      swift_beginAccess();
      sub_100007D90();
      print<A>(_:separator:terminator:to:)();
      swift_endAccess();
    }

LABEL_38:
    swift_once();
    goto LABEL_34;
  }

  v17 = sub_1000123E8();
  if (!v17)
  {
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_10008E640;
    v61 = 0x8000000100097370;
    *(v60 + 56) = &type metadata for String;
    *(v60 + 32) = 0xD00000000000001FLL;
LABEL_31:
    *(v60 + 40) = v61;
    if (qword_1000B46F8 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v18 = *(v17 + 2);
  if (!v18)
  {
LABEL_27:

    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_10008E640;
    *(v60 + 56) = &type metadata for String;
    v61 = 0xE000000000000000;
    *(v60 + 32) = 0;
    goto LABEL_31;
  }

  v73 = 0;
  v19 = 0;
  v69 = v17 + 32;
  v66 = *(v17 + 2);
  while (1)
  {
    v20 = *&v69[4 * v19++];
    v74 = 91;
    v75 = 0xE100000000000000;
    v78 = v73;
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22._countAndFlagsBits = 47;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v78 = v19;
    v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v23);

    v24._countAndFlagsBits = 47;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    v78 = v18;
    v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 93;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    v27 = v74;
    v28 = v75;
    v74 = a4;
    v75 = a5;
    v76 = a6 & 1;
    v29 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    Flag.wrappedValue.getter(v29, &v78, v30, v31);
    v32 = v78;
    type metadata accessor for DarwinRemoteProcess();
    swift_allocObject();
    v33 = sub_10000D6A4(v20, v32);
    v80 = v10;
    if (!v33)
    {
      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_10008F240;
      *(v46 + 56) = &type metadata for String;
      *(v46 + 32) = v27;
      *(v46 + 40) = v28;
      v74 = 0;
      v75 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v74 = 0xD00000000000002DLL;
      v75 = 0x8000000100097390;
      LODWORD(v78) = v20;
      v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v47);

      v48 = v74;
      v49 = v75;
      *(v46 + 88) = &type metadata for String;
      *(v46 + 64) = v48;
      *(v46 + 72) = v49;
      if (qword_1000B46F8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_100007D90();
      print<A>(_:separator:terminator:to:)();
      swift_endAccess();

      v10 = v80;
      goto LABEL_17;
    }

    v34 = v33;
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_10008F240;
    *(v35 + 56) = &type metadata for String;
    *(v35 + 32) = v27;
    *(v35 + 40) = v28;
    v78 = 0;
    v79 = 0xE000000000000000;
    v36._countAndFlagsBits = sub_10000CFA4();
    String.append(_:)(v36);

    v37._countAndFlagsBits = 40;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    swift_getObjectType();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *sub_100007DE4(&v74) = *(v34 + 20);
    _print_unlocked<A, B>(_:_:)();
    sub_100002B38(&v74);
    v38._countAndFlagsBits = 41;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    v39 = v78;
    v40 = v79;
    *(v35 + 88) = &type metadata for String;
    *(v35 + 64) = v39;
    *(v35 + 72) = v40;
    if (qword_1000B46F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100007D90();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    v41 = v80;
    sub_10001416C(v34, &off_1000B4C00, a7, a8, a9);
    v10 = v41;
    if (!v41)
    {
      break;
    }

    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_10008E640;
    v74 = 0;
    v75 = 0xE000000000000000;
    v43._countAndFlagsBits = 2108704;
    v43._object = 0xE300000000000000;
    String.append(_:)(v43);
    v78 = v41;
    sub_1000021C0(&qword_1000B4978, &qword_10008F2E0);
    _print_unlocked<A, B>(_:_:)();
    v44 = v74;
    v45 = v75;
    *(v42 + 56) = &type metadata for String;
    *(v42 + 32) = v44;
    *(v42 + 40) = v45;
    swift_beginAccess();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    v10 = 0;
    v18 = v66;
LABEL_16:

LABEL_17:
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_10008E640;
    *(v51 + 56) = &type metadata for String;
    *(v51 + 32) = 1261460251;
    *(v51 + 40) = 0xE400000000000000;
    if (qword_1000B46F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100007D90();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    if (v18 == v19)
    {
      goto LABEL_27;
    }
  }

  v50 = __OFADD__(v73++, 1);
  v18 = v66;
  if (!v50)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_37:
  swift_once();
LABEL_32:
  swift_beginAccess();
  sub_100007D90();
  print<A>(_:separator:terminator:to:)();
  swift_endAccess();
}

__n128 sub_10000A10C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10000A130(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000A178(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 sub_10000A1E4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000A1F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000A240(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 sub_10000A2A0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10000A2C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000A30C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_10000A374(uint64_t a1)
{
  result = sub_10000A39C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000A39C()
{
  result = qword_1000B4980;
  if (!qword_1000B4980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4980);
  }

  return result;
}

unint64_t sub_10000A3F0(uint64_t a1)
{
  result = sub_10000A418();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000A418()
{
  result = qword_1000B4988;
  if (!qword_1000B4988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4988);
  }

  return result;
}

unint64_t sub_10000A46C(uint64_t a1)
{
  result = sub_10000A494();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000A494()
{
  result = qword_1000B4990;
  if (!qword_1000B4990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4990);
  }

  return result;
}

unint64_t sub_10000A4E8()
{
  result = qword_1000B4998;
  if (!qword_1000B4998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4998);
  }

  return result;
}

uint64_t sub_10000A53C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6950724F656D616ELL && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70726F436B726F66 && a2 == 0xEA00000000006573 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7105633 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t (*sub_10000A664@<X0>(uint64_t a1@<X8>))(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v2._countAndFlagsBits = 0xD00000000000002DLL;
  v2._object = 0x8000000100097450;
  ArgumentHelp.init(stringLiteral:)(&v19, v2);
  v24 = v19;
  Argument.init<A>(help:completion:)(&v24, 0, 0, 255, &type metadata for String, &protocol witness table for String, &v23);
  abstract = v23.abstract;
  countAndFlagsBits = v23.discussion._countAndFlagsBits;
  v5.base = *ArgumentVisibility.default.unsafeMutableAddressor();
  v6._countAndFlagsBits = 0xD000000000000023;
  v6._object = 0x8000000100097480;
  v7._countAndFlagsBits = 0xD000000000000090;
  v7._object = 0x80000001000974B0;
  ArgumentHelp.init(_:discussion:valueName:visibility:)(&v20, v6, v7, 0, v5);
  v23 = v20;
  v8 = static NameSpecification.long.getter();
  v9 = Flag<A>.init(wrappedValue:name:help:)(0, v8, &v23);
  v11 = v10;
  v13 = v12;
  v14._object = 0x8000000100097550;
  v14._countAndFlagsBits = 0xD000000000000014;
  ArgumentHelp.init(stringLiteral:)(&v21, v14);
  v22 = v21;
  v15 = static NameSpecification.long.getter();
  result = Flag<A>.init(wrappedValue:name:help:)(0, v15, &v22);
  *a1 = abstract;
  *(a1 + 16) = countAndFlagsBits;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13 & 1;
  *(a1 + 48) = result;
  *(a1 + 56) = v18;
  *(a1 + 64) = v17 & 1;
  return result;
}

uint64_t sub_10000A824@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v3 = sub_1000021C0(&qword_1000B49D8, &qword_10008F748);
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin();
  v5 = &v33 - v4;
  v6._countAndFlagsBits = 0xD00000000000002DLL;
  v6._object = 0x8000000100097450;
  ArgumentHelp.init(stringLiteral:)(&v53, v6);
  v58 = v53;
  Argument.init<A>(help:completion:)(&v58, 0, 0, 255, &type metadata for String, &protocol witness table for String, &v50);
  v41 = v50;
  v42 = v51;
  LODWORD(v43) = v52;
  v7.base = *ArgumentVisibility.default.unsafeMutableAddressor();
  v8._countAndFlagsBits = 0xD000000000000023;
  v8._object = 0x8000000100097480;
  v9._countAndFlagsBits = 0xD000000000000090;
  v9._object = 0x80000001000974B0;
  ArgumentHelp.init(_:discussion:valueName:visibility:)(&v54, v8, v9, 0, v7);
  v57 = v54;
  v10 = static NameSpecification.long.getter();
  v45 = Flag<A>.init(wrappedValue:name:help:)(0, v10, &v57);
  v59 = v11;
  v39 = v12;
  v13._object = 0x8000000100097550;
  v13._countAndFlagsBits = 0xD000000000000014;
  ArgumentHelp.init(stringLiteral:)(&v55, v13);
  v56 = v55;
  v14 = static NameSpecification.long.getter();
  v15 = Flag<A>.init(wrappedValue:name:help:)(0, v14, &v56);
  v17 = v16;
  v19 = v18;
  v20 = a1[3];
  v44 = a1;
  sub_100002AA0(a1, v20);
  sub_10000BD38();
  v21 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    sub_1000022C8(v15, v17, v19 & 1);
    sub_1000022B8(v41, v42, v43);
    sub_1000022C8(v45, v59, v39 & 1);
    return sub_100002B38(v44);
  }

  else
  {
    v34 = v19;
    v40 = v15;
    v35 = v17;
    v22 = v39;
    sub_1000021C0(&qword_1000B4968, &qword_10008F2D8);
    v49 = 0;
    sub_10000BD8C(&qword_1000B49E8, &qword_1000B4968, &qword_10008F2D8, &protocol conformance descriptor for Argument<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000022B8(v41, v42, v43);
    v23 = v50;
    v43 = v51;
    LODWORD(v42) = v52;
    sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    v49 = 1;
    v24 = v38;
    sub_10000BD8C(&qword_1000B49B0, &qword_1000B47E8, &unk_10008E9A0, &protocol conformance descriptor for Flag<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = v40;
    v41 = v23;
    sub_1000022C8(v45, v59, v22 & 1);
    v28 = v50;
    v27 = v51;
    LODWORD(v59) = v52;
    v49 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v37 + 8))(v5, v24);
    sub_1000022C8(v25, v35, v34 & 1);
    v29 = v50;
    v30 = v51;
    v48 = v42;
    v47 = v59;
    v46 = v52;
    result = sub_100002B38(v44);
    v31 = v36;
    v32 = v43;
    *v36 = v41;
    v31[1] = v32;
    *(v31 + 16) = v48;
    v31[3] = v28;
    v31[4] = v27;
    *(v31 + 40) = v47;
    v31[6] = v29;
    v31[7] = v30;
    *(v31 + 64) = v46;
  }

  return result;
}

uint64_t sub_10000ADBC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v34 = a2;
  v37 = sub_1000021C0(&qword_1000B49C8, &qword_10008F740);
  v36 = *(v37 - 8);
  __chkstk_darwin();
  v4 = &v32 - v3;
  v5._object = 0x8000000100097570;
  v5._countAndFlagsBits = 0xD000000000000026;
  ArgumentHelp.init(stringLiteral:)(&v45, v5);
  v48 = v45;
  v6 = static NameSpecification.long.getter();
  v38 = Flag<A>.init(wrappedValue:name:help:)(0, v6, &v48);
  v39 = v7;
  v9 = v8;
  v10._countAndFlagsBits = 0xD00000000000002ELL;
  v10._object = 0x80000001000975A0;
  ArgumentHelp.init(stringLiteral:)(&v46, v10);
  v47 = v46;
  v11 = static NameSpecification.long.getter();
  v12 = Flag<A>.init(wrappedValue:name:help:)(0, v11, &v47);
  v14 = v13;
  v16 = v15;
  v17 = a1[3];
  v49 = a1;
  sub_100002AA0(a1, v17);
  sub_10000BCE4();
  v35 = v4;
  v18 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    sub_1000022C8(v12, v14, v16 & 1);
    sub_1000022C8(v38, v39, v9 & 1);
    return sub_100002B38(v49);
  }

  else
  {
    HIDWORD(v32) = v16;
    v33 = v12;
    v40 = v14;
    v19 = v38;
    v20 = v39;
    sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    v41 = 0;
    sub_10000BD8C(&qword_1000B49B0, &qword_1000B47E8, &unk_10008E9A0, &protocol conformance descriptor for Flag<A>);
    v21 = v35;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000022C8(v19, v20, v9 & 1);
    v22 = v42;
    v23 = v43;
    v24 = v44;
    v41 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = v33;
    v26 = BYTE4(v32);
    (*(v36 + 8))(v21, v37);
    sub_1000022C8(v25, v40, v26 & 1);
    v28 = v42;
    v29 = v43;
    v30 = v44;
    result = sub_100002B38(v49);
    v31 = v34;
    *v34 = v22;
    v31[1] = v23;
    *(v31 + 16) = v24;
    v31[3] = v28;
    v31[4] = v29;
    *(v31 + 40) = v30;
  }

  return result;
}

uint64_t sub_10000B23C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C676E616DLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852797802 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x694674757074756FLL && a2 == 0xEA0000000000656CLL)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

__n128 sub_10000B3A8@<Q0>(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000020;
  v2._object = 0x80000001000975D0;
  ArgumentHelp.init(stringLiteral:)(&v29, v2);
  v36 = v29;
  v3 = static NameSpecification.long.getter();
  v26 = Flag<A>.init(wrappedValue:name:help:)(0, v3, &v36);
  v5 = v4;
  v7 = v6;
  v8._countAndFlagsBits = 0x4A2074757074754FLL;
  v8._object = 0xEB000000004E4F53;
  ArgumentHelp.init(stringLiteral:)(&v30, v8);
  v35 = v30;
  v9 = static NameSpecification.long.getter();
  v10 = Flag<A>.init(wrappedValue:name:help:)(0, v9, &v35);
  v12 = v11;
  v14 = v13;
  v15._countAndFlagsBits = 0xD00000000000002BLL;
  v15._object = 0x8000000100097600;
  ArgumentHelp.init(stringLiteral:)(&v31, v15);
  v34 = v31;
  v16 = static NameSpecification.long.getter();
  v17 = Flag<A>.init(wrappedValue:name:help:)(0, v16, &v34);
  v19 = v18;
  v21 = v20;
  v22._object = 0x8000000100097630;
  v22._countAndFlagsBits = 0xD000000000000010;
  ArgumentHelp.init(stringLiteral:)(&v32, v22);
  v33 = v32;
  v23 = static NameSpecification.long.getter();
  v24 = static ExitCode.success.getter();
  Option.init<A>(wrappedValue:name:parsing:help:completion:)(v23, v24, &v33, 0, 0, 255, &type metadata for String, &protocol witness table for String, &v27);
  result = v27;
  v37 = v28;
  *a1 = v26;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = v12;
  *(a1 + 40) = v14 & 1;
  *(a1 + 48) = v17;
  *(a1 + 56) = v19;
  *(a1 + 64) = v21 & 1;
  *(a1 + 72) = result;
  *(a1 + 88) = v37;
  return result;
}

uint64_t sub_10000B5E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = sub_1000021C0(&qword_1000B49A0, &unk_10008F730);
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin();
  v5 = &v40 - v4;
  v6._countAndFlagsBits = 0xD000000000000020;
  v6._object = 0x80000001000975D0;
  ArgumentHelp.init(stringLiteral:)(&v64, v6);
  v71 = v64;
  v7 = static NameSpecification.long.getter();
  v50 = Flag<A>.init(wrappedValue:name:help:)(0, v7, &v71);
  v51 = v8;
  v49 = v9;
  v10._countAndFlagsBits = 0x4A2074757074754FLL;
  v10._object = 0xEB000000004E4F53;
  ArgumentHelp.init(stringLiteral:)(&v65, v10);
  v70 = v65;
  v11 = static NameSpecification.long.getter();
  v53 = Flag<A>.init(wrappedValue:name:help:)(0, v11, &v70);
  v54 = v12;
  LODWORD(v52) = v13;
  v14._countAndFlagsBits = 0xD00000000000002BLL;
  v14._object = 0x8000000100097600;
  ArgumentHelp.init(stringLiteral:)(&v66, v14);
  v69 = v66;
  v15 = static NameSpecification.long.getter();
  v47 = Flag<A>.init(wrappedValue:name:help:)(0, v15, &v69);
  v72 = v16;
  v46 = v17;
  v18._object = 0x8000000100097630;
  v18._countAndFlagsBits = 0xD000000000000010;
  ArgumentHelp.init(stringLiteral:)(&v67, v18);
  v68 = v67;
  v19 = static NameSpecification.long.getter();
  v20 = static ExitCode.success.getter();
  Option.init<A>(wrappedValue:name:parsing:help:completion:)(v19, v20, &v68, 0, 0, 255, &type metadata for String, &protocol witness table for String, &v61);
  v22 = v61;
  v21 = v62;
  v23 = v63;
  v24 = a1[3];
  v55 = a1;
  sub_100002AA0(a1, v24);
  sub_10000BC90();
  v25 = v48;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    sub_1000022B8(v22, v21, v23);
    sub_1000022C8(v50, v51, v49 & 1);
    sub_1000022C8(v53, v54, v52 & 1);
    sub_1000022C8(v47, v72, v46 & 1);
    return sub_100002B38(v55);
  }

  else
  {
    v41 = v22;
    v42 = v21;
    LODWORD(v48) = v23;
    v26 = v46;
    v27 = v47;
    sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    v60 = 0;
    sub_10000BD8C(&qword_1000B49B0, &qword_1000B47E8, &unk_10008E9A0, &protocol conformance descriptor for Flag<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000022C8(v50, v51, v49 & 1);
    v50 = v61;
    v51 = v62;
    v49 = v63;
    v60 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000022C8(v53, v54, v52 & 1);
    v29 = v61;
    v28 = v62;
    LODWORD(v54) = v63;
    v60 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v52 = v29;
    v53 = v28;
    sub_1000022C8(v27, v72, v26 & 1);
    v47 = v61;
    v72 = v62;
    v46 = v63;
    sub_1000021C0(&qword_1000B49B8, &unk_1000907E0);
    v60 = 3;
    sub_10000BD8C(&qword_1000B49C0, &qword_1000B49B8, &unk_1000907E0, &protocol conformance descriptor for Option<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    LOBYTE(v27) = v48;
    v32 = v41;
    v31 = v42;
    v34 = v50;
    v33 = v51;
    (*(v44 + 8))(v5, v45);
    sub_1000022B8(v32, v31, v27);
    v35 = v61;
    v36 = v62;
    v59 = v49;
    v58 = v54;
    v57 = v46;
    v56 = v63;
    result = sub_100002B38(v55);
    v37 = v43;
    *v43 = v34;
    v37[1] = v33;
    *(v37 + 16) = v59;
    v38 = v53;
    v37[3] = v52;
    v37[4] = v38;
    *(v37 + 40) = v58;
    v39 = v72;
    v37[6] = v47;
    v37[7] = v39;
    *(v37 + 64) = v57;
    v37[9] = v35;
    v37[10] = v36;
    *(v37 + 88) = v56;
  }

  return result;
}

unint64_t sub_10000BC90()
{
  result = qword_1000B49A8;
  if (!qword_1000B49A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B49A8);
  }

  return result;
}

unint64_t sub_10000BCE4()
{
  result = qword_1000B49D0;
  if (!qword_1000B49D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B49D0);
  }

  return result;
}

unint64_t sub_10000BD38()
{
  result = qword_1000B49E0;
  if (!qword_1000B49E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B49E0);
  }

  return result;
}

uint64_t sub_10000BD8C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002B84(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenericMetadataOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenericMetadataOptions.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000BF48()
{
  result = qword_1000B49F0;
  if (!qword_1000B49F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B49F0);
  }

  return result;
}

unint64_t sub_10000BFA0()
{
  result = qword_1000B49F8;
  if (!qword_1000B49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B49F8);
  }

  return result;
}

unint64_t sub_10000BFF8()
{
  result = qword_1000B4A00;
  if (!qword_1000B4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A00);
  }

  return result;
}

unint64_t sub_10000C050()
{
  result = qword_1000B4A08;
  if (!qword_1000B4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A08);
  }

  return result;
}

unint64_t sub_10000C0A8()
{
  result = qword_1000B4A10;
  if (!qword_1000B4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A10);
  }

  return result;
}

unint64_t sub_10000C100()
{
  result = qword_1000B4A18;
  if (!qword_1000B4A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A18);
  }

  return result;
}

unint64_t sub_10000C158()
{
  result = qword_1000B4A20;
  if (!qword_1000B4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A20);
  }

  return result;
}

unint64_t sub_10000C1B0()
{
  result = qword_1000B4A28;
  if (!qword_1000B4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A28);
  }

  return result;
}

unint64_t sub_10000C208()
{
  result = qword_1000B4A30;
  if (!qword_1000B4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A30);
  }

  return result;
}

double sub_10000C294()
{
  *&v1 = 0;
  *(&v1 + 1) = 0xE000000000000000;
  CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:groupedSubcommands:defaultSubcommand:helpNames:aliases:)(0, 0, 0xD000000000000034, 0x8000000100097660, 0, 0, 0, 0xE000000000000000, v2, v1, 1, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 0, _swiftEmptyArrayStorage);
  xmmword_1000B63A0 = v2[6];
  unk_1000B63B0 = v2[7];
  xmmword_1000B63C0 = v2[8];
  qword_1000B63D0 = v3;
  xmmword_1000B6360 = v2[2];
  unk_1000B6370 = v2[3];
  xmmword_1000B6380 = v2[4];
  unk_1000B6390 = v2[5];
  result = *v2;
  xmmword_1000B6340 = v2[0];
  *algn_1000B6350 = v2[1];
  return result;
}

uint64_t sub_10000C354(uint64_t a1, uint64_t a2)
{
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10008FA80;
  *(v4 + 32) = 0x73736572646441;
  *(v4 + 40) = 0xE700000000000000;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = 1702521171;
  *(v4 + 72) = 0xE400000000000000;
  *(v4 + 88) = &type metadata for String;
  *(v4 + 96) = 0x746E756F43;
  *(v4 + 104) = 0xE500000000000000;
  *(v4 + 152) = &type metadata for String;
  *(v4 + 120) = &type metadata for String;
  *(v4 + 128) = 0x7373616C43207349;
  *(v4 + 136) = 0xE800000000000000;
  print(_:separator:terminator:)();

  v13 = a1;
  v14 = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10000CBB4;
  *(v5 + 24) = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10000CBCC;
  *(v6 + 24) = v5;
  v11[0] = sub_100007E88;
  v11[1] = v6;
  v7 = *(a1 + 16);
  v8 = qword_1000B47A8;

  if (v8 != -1)
  {
    swift_once();
  }

  off_1000B6598(v7, v11, 1, sub_10000E170);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_10000C588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t, uint64_t, uint64_t, void)
{
  result = swift_reflection_metadataForObject();
  if (!result)
  {
    return result;
  }

  if (!*(a3 + 40))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = result;
  result = swift_reflection_typeRefForMetadata();
  if (!result)
  {
    return result;
  }

  result = swift_reflection_copyNameForTypeRef();
  if (!result)
  {
    return result;
  }

  v9 = result;
  String.init(cString:)();
  free(v9);
  v10._object = 0x8000000100097330;
  v10._countAndFlagsBits = 0xD00000000000001DLL;
  LOBYTE(v9) = String.hasPrefix(_:)(v10);

  if ((v9 & 1) == 0)
  {
    return result;
  }

  swift_getObjectType();
  result = (*(a4 + 72))();
  v11 = *(a3 + 40);
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = result;
  swift_unknownObjectRetain();
  result = sub_100005118(v8, v11);
  if (!*(a3 + 40))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = v12(a3, a1, 24, 0);
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10008E640;
  sub_1000023DC();
  v16._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 9;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 9;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  if (v14)
  {
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
  }

  else
  {
    v22 = 0xE90000000000003ELL;
    v20 = 0x6E776F6E6B6E753CLL;
  }

  v23 = v22;
  String.append(_:)(*&v20);

  v24._countAndFlagsBits = 9;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  if (v13)
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (v13)
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  v27 = v26;
  String.append(_:)(*&v25);

  *(v15 + 56) = &type metadata for String;
  *(v15 + 32) = 30768;
  *(v15 + 40) = 0xE200000000000000;
  print(_:separator:terminator:)();
}

uint64_t sub_10000C87C(uint64_t a1)
{
  v2 = sub_10000CE38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000C8B8(uint64_t a1)
{
  v2 = sub_10000CE38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000C8F4@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1000B46F0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_100002430(&xmmword_1000B6340, v2);
}

uint64_t sub_10000C964()
{
  v1 = v0[3];
  v26 = v0[2];
  v27 = v1;
  v28 = v0[4];
  v29 = *(v0 + 10);
  v2 = v0[1];
  v24 = *v0;
  v25 = v2;
  v3 = sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
  OptionGroup.wrappedValue.getter(v3, &v15, v4, v5);
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v30 = v23;
  sub_100007EC8(v15, v16, v17, v18, v19, v20);
  sub_1000022B8(v6, v7, v8);
  sub_1000022C8(v9, v10, v11);
  return sub_1000022C8(v12, v13, v30);
}

double sub_10000CA60@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10000CC0C(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_10000CABC(uint64_t a1)
{
  result = sub_10000CAE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000CAE4()
{
  result = qword_1000B4A38;
  if (!qword_1000B4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A38);
  }

  return result;
}

unint64_t sub_10000CB38(uint64_t a1)
{
  result = sub_10000CB60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000CB60()
{
  result = qword_1000B4A40;
  if (!qword_1000B4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A40);
  }

  return result;
}

uint64_t sub_10000CBD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CC0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1000021C0(&qword_1000B4A48, &qword_10008FC78);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = *ArgumentVisibility.default.unsafeMutableAddressor();
  v9 = sub_10000248C();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v8, &type metadata for UniversalOptions, v9, v26);
  sub_100002AA0(a1, a1[3]);
  sub_10000CE38();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004188(v26);
    return sub_100002B38(a1);
  }

  else
  {
    v10 = v27;
    sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
    sub_1000041F0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    sub_100004188(v26);
    v16 = v22;
    v17 = v23;
    v18 = v24;
    v19 = v25;
    v14 = v20;
    v15 = v21;
    result = sub_100002B38(a1);
    v12 = v17;
    *(v10 + 32) = v16;
    *(v10 + 48) = v12;
    *(v10 + 64) = v18;
    *(v10 + 80) = v19;
    v13 = v15;
    *v10 = v14;
    *(v10 + 16) = v13;
  }

  return result;
}

unint64_t sub_10000CE38()
{
  result = qword_1000B4A50;
  if (!qword_1000B4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A50);
  }

  return result;
}

unint64_t sub_10000CEA0()
{
  result = qword_1000B4A58;
  if (!qword_1000B4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A58);
  }

  return result;
}

unint64_t sub_10000CEF8()
{
  result = qword_1000B4A60;
  if (!qword_1000B4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A60);
  }

  return result;
}

unint64_t sub_10000CF50()
{
  result = qword_1000B4A68;
  if (!qword_1000B4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A68);
  }

  return result;
}

unint64_t sub_10000CFA4()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = sub_100011218(*(v0 + 20));
    if (v3)
    {
      v1 = v2;
    }

    else
    {
      v1 = 0xD000000000000011;
    }

    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0x8000000100097830;
    }

    *(v0 + 24) = v1;
    *(v0 + 32) = v4;
  }

  return v1;
}

char *sub_10000D030()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v1 = sub_10000D08C();
    *(v0 + 96) = v1;
  }

  return v1;
}

char *sub_10000D08C()
{
  v1 = *(v0 + 16);
  type metadata accessor for DarwinRemoteProcess.PortList();
  swift_allocObject();
  v2 = sub_10000E194(v1);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = *(v2 + 2);
  if (!v3 || (v4 = *(v2 + 3)) == 0)
  {

    return _swiftEmptyArrayStorage;
  }

  v5 = 4 * v4;
  v6 = _swiftEmptyArrayStorage;
  do
  {
    v9 = *v3;
    *object_addr = 0;
    v30 = 0;
    v31 = 0;
    thread_info_outCnt = 6;
    v10 = thread_info(v9, 4u, object_addr, &thread_info_outCnt);
    if (v10)
    {
      v11 = v10;
      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_10008E640;
      *object_type = 0;
      v27 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      *object_type = 0xD000000000000023;
      v27 = 0x80000001000977D0;
      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 8250;
      v14._object = 0xE200000000000000;
      String.append(_:)(v14);
      if (!mach_error_string(v11))
      {
        __break(1u);
      }

      v15._countAndFlagsBits = String.init(cString:)();
      String.append(_:)(v15);

      v16._countAndFlagsBits = 2016421920;
      v16._object = 0xE400000000000000;
      String.append(_:)(v16);
      sub_10000F9E8();
      v17._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
      String.append(_:)(v17);

      v18._countAndFlagsBits = 41;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      v19 = *object_type;
      v20 = v27;
      *(v12 + 56) = &type metadata for String;
      *(v12 + 32) = v19;
      *(v12 + 40) = v20;
      print(_:separator:terminator:)();
    }

    else
    {
      v7 = *object_addr;
      v8 = v30;
      object_addr[0] = 0;
      object_type[0] = 0;
      if (!mach_port_kernel_object(mach_task_self_, v9, object_type, object_addr))
      {
        v21 = object_addr[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_10000EBEC(0, *(v6 + 2) + 1, 1, v6);
        }

        v23 = *(v6 + 2);
        v22 = *(v6 + 3);
        if (v23 >= v22 >> 1)
        {
          v6 = sub_10000EBEC((v22 > 1), v23 + 1, 1, v6);
        }

        *(v6 + 2) = v23 + 1;
        v24 = &v6[24 * v23];
        *(v24 + 4) = v7;
        *(v24 + 5) = v8;
        *(v24 + 12) = v21;
        v24[52] = 0;
      }
    }

    ++v3;
    v5 -= 4;
  }

  while (v5);

  return v6;
}

uint64_t sub_10000D3C8(uint64_t a1, uint64_t a2)
{
  String.append(_:)(*&a1);
  v3 = v2[8];
  v4 = v2[9];
  if (qword_1000B4740 != -1)
  {
    swift_once();
  }

  v5 = off_1000B6530;
  v6 = String.utf8CString.getter();
  v7 = v5(v3, v4, v6 + 32);
  v9 = v8;

  if (qword_1000B4780 != -1)
  {
    swift_once();
  }

  if (off_1000B6570(v7, v9))
  {
    v11 = v2[10];
    v10 = v2[11];
    v12 = String.utf8CString.getter();

    v7 = v5(v11, v10, v12 + 32);
    v9 = v13;
  }

  else
  {
  }

  if (qword_1000B4758 != -1)
  {
    swift_once();
  }

  v14 = off_1000B6548;

  return v14(v7, v9);
}

size_t sub_10000D570(size_t result, uint64_t a2)
{
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = *(result + 16);
  v4 = qword_1000B4798;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = off_1000B6588(v3, a2);
  if (v5)
  {
    v6 = strlen(v5);

    result = v6;
    if ((v6 & 0x8000000000000000) == 0)
    {
      return result;
    }

    __break(1u);
  }

  return 0;
}

uint64_t sub_10000D61C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    if (!a2)
    {

      return 0;
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
      v5 = static String._fromUTF8Repairing(_:)();
      v7 = sub_10000D3C8(v5, v6);

      return v7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_10000D6A4(mach_port_t pid, char a2)
{
  v3 = v2;
  *(v3 + 96) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 20) = pid;
  task = 0;
  v6 = task_for_pid(mach_task_self_, pid, &task);
  if (v6)
  {
    v7 = v6;
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10008E640;
    aBlock = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    aBlock = 0xD00000000000001BLL;
    v53 = 0x8000000100097850;
    corpse_task_port = pid;
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 8250;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    result = mach_error_string(v7);
    if (result)
    {
      v12._countAndFlagsBits = String.init(cString:)();
      String.append(_:)(v12);

      v13._countAndFlagsBits = 32;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = 30768;
      v14._object = 0xE200000000000000;
      String.append(_:)(v14);
      corpse_task_port = v7;
      sub_10000F9E8();
LABEL_4:
      v15._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
      String.append(_:)(v15);

      v16 = aBlock;
      v17 = v53;
      *(v8 + 56) = &type metadata for String;
      *(v8 + 32) = v16;
      *(v8 + 40) = v17;
      if (qword_1000B46F8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_100007D90();
      print<A>(_:separator:terminator:to:)();
      swift_endAccess();
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_49;
  }

  if (sub_10000E7A0(0x49636F7250554D56, 0xEB000000006F666ELL))
  {
    v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v19 = [objc_msgSend(v18 initWithTask:{task), "shouldAnalyzeWithCorpse"}];
    swift_unknownObjectRelease();
    if ((a2 & 1) == 0 && (v19 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_32;
  }

  corpse_task_port = 0;
  v20 = task_generate_corpse(task, &corpse_task_port);
  if (v20 == 6)
  {
    sleep(1u);
    v22 = task_generate_corpse(task, &corpse_task_port);
    if (v22)
    {
      LODWORD(v21) = v22;
      if (v22 != 6)
      {
        goto LABEL_45;
      }

      sleep(2u);
      v23 = task_generate_corpse(task, &corpse_task_port);
      if (v23)
      {
        LODWORD(v21) = v23;
        if (v23 != 6)
        {
          goto LABEL_45;
        }

        sleep(4u);
        v24 = task_generate_corpse(task, &corpse_task_port);
        if (v24)
        {
          LODWORD(v21) = v24;
          if (v24 != 6)
          {
            goto LABEL_45;
          }

          sleep(8u);
          v25 = task_generate_corpse(task, &corpse_task_port);
          if (v25)
          {
            LODWORD(v21) = v25;
            if (v25 != 6)
            {
              goto LABEL_45;
            }

            sleep(0x10u);
            v26 = task_generate_corpse(task, &corpse_task_port);
            if (v26)
            {
              LODWORD(v21) = v26;
              if (v26 != 6)
              {
                goto LABEL_45;
              }

              sleep(0x20u);
              goto LABEL_32;
            }
          }
        }
      }
    }
  }

  else
  {
    LODWORD(v21) = v20;
    if (v20)
    {
      goto LABEL_45;
    }
  }

  if (qword_1000B47A0 != -1)
  {
    swift_once();
  }

  off_1000B6590();
  mach_port_deallocate(mach_task_self_, task);
  task = corpse_task_port;
LABEL_32:
  *(v3 + 16) = task;
  if (qword_1000B4730 != -1)
  {
    swift_once();
  }

  *(v3 + 48) = off_1000B6520();
  *(v3 + 56) = v27;
  if (qword_1000B4738 != -1)
  {
    swift_once();
  }

  v28 = off_1000B6528;
  v29 = off_1000B6528();
  *(v3 + 64) = v29;
  *(v3 + 72) = v30;
  if (qword_1000B4780 != -1)
  {
    v48 = v29;
    v49 = v30;
    swift_once();
    v30 = v49;
    v29 = v48;
  }

  if (off_1000B6570(v29, v30))
  {
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10008E640;
    aBlock = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    aBlock = 543451504;
    v53 = 0xE400000000000000;
    corpse_task_port = pid;
    v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 0xD000000000000028;
    v33._object = 0x80000001000978D0;
    String.append(_:)(v33);
    v34 = aBlock;
    v35 = v53;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 32) = v34;
    *(v31 + 40) = v35;
    print(_:separator:terminator:)();
LABEL_7:

    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v3 + 80) = (v28)(*(v3 + 48), *(v3 + 56), "libswift_Concurrency.dylib", 0x8000000000000000);
  *(v3 + 88) = v36;
  sub_100019CF4();

  ReflectionContextWithDataLayout = swift_reflection_createReflectionContextWithDataLayout();
  if (!ReflectionContextWithDataLayout)
  {

    return 0;
  }

  *(v3 + 40) = ReflectionContextWithDataLayout;
  v38 = *(v3 + 48);
  v39 = *(v3 + 56);
  if (qword_1000B4770 != -1)
  {
    swift_once();
  }

  v21 = off_1000B6560;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_10000FAC8;
  *(v40 + 24) = v3;
  v56 = sub_10000FAE0;
  v57 = v40;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_10000E868;
  v55 = &unk_1000AB478;
  v41 = _Block_copy(&aBlock);

  v21(v38, v39, 0x8000000000000000, v41);
  _Block_release(v41);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v3;
  }

  __break(1u);
LABEL_45:
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10008E640;
  aBlock = 0;
  v53 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  aBlock = 0xD00000000000001ELL;
  v53 = 0x8000000100097900;
  v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v43);

  v44._countAndFlagsBits = 8250;
  v44._object = 0xE200000000000000;
  String.append(_:)(v44);
  result = mach_error_string(v21);
  if (result)
  {
    v45._countAndFlagsBits = String.init(cString:)();
    String.append(_:)(v45);

    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    v47._countAndFlagsBits = 30768;
    v47._object = 0xE200000000000000;
    String.append(_:)(v47);
    sub_10000F9E8();
    goto LABEL_4;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_10000DFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000B4778 != -1)
  {
    swift_once();
  }

  v4 = off_1000B6568();
  v5 = *(a3 + 40);

  return _swift_reflection_addImage(v5, v4);
}

uint64_t sub_10000E048()
{
  if (qword_1000B47A0 != -1)
  {
    swift_once();
  }

  off_1000B6590();
  if (qword_1000B4728 != -1)
  {
    swift_once();
  }

  off_1000B6518();
  mach_port_deallocate(mach_task_self_, *(v0 + 16));

  return swift_deallocClassInstance();
}

char *sub_10000E194(task_inspect_t a1)
{
  v2 = v1;
  act_list = 0;
  act_listCnt = 0;
  v3 = task_threads(a1, &act_list, &act_listCnt);
  if (!v3)
  {
    v11 = act_listCnt;
    *(v1 + 16) = act_list;
    *(v1 + 24) = v11;
    return v2;
  }

  v4 = v3;
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10008E640;
  _StringGuts.grow(_:)(47);

  result = mach_error_string(v4);
  if (result)
  {
    v7._countAndFlagsBits = String.init(cString:)();
    String.append(_:)(v7);

    v8._countAndFlagsBits = 2016421920;
    v8._object = 0xE400000000000000;
    String.append(_:)(v8);
    sub_10000F9E8();
    v9._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 41;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = 0xD000000000000026;
    *(v5 + 40) = 0x8000000100097800;
    print(_:separator:terminator:)();

    type metadata accessor for DarwinRemoteProcess.PortList();
    swift_deallocPartialClassInstance();
    return 0;
  }

  __break(1u);
  return result;
}

void sub_10000E368()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (!v1)
  {
LABEL_5:
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v2 >> 62))
    {
      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  if (v2)
  {
    v3 = 4 * v2;
    v4 = *(v0 + 16);
    do
    {
      v5 = *v4++;
      mach_port_deallocate(mach_task_self_, v5);
      v3 -= 4;
    }

    while (v3);
    goto LABEL_5;
  }

LABEL_7:
  vm_deallocate(mach_task_self_, v1, 4 * v2);

  swift_deallocClassInstance();
}

__n128 initializeBufferWithCopyOfBuffer for DarwinRemoteProcess.ThreadInfo(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DarwinRemoteProcess.ThreadInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DarwinRemoteProcess.ThreadInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 21) = v3;
  return result;
}

unint64_t sub_10000E4AC()
{
  result = qword_1000B4BF0;
  if (!qword_1000B4BF0)
  {
    sub_100002B84(&qword_1000B4BF8, qword_10008FE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4BF0);
  }

  return result;
}

uint64_t sub_10000E510@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *(v3 + 24);

  v7 = v4 + 4 * v5;
  if (!v4)
  {
    v7 = 0;
  }

  *a1 = v4;
  a1[1] = v7;
  return result;
}

void *sub_10000E564()
{
  v1 = sub_10000F700(*v0);

  return v1;
}

uint64_t sub_10000E5C0(int **a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);

  v11 = &v8[v9];
  if (!v8)
  {
    v11 = 0;
  }

  if (!a2)
  {
LABEL_13:
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    *a1 = v8;
    a1[1] = v11;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    while (v8 && v8 != v11)
    {
      v13 = *v8++;
      *(a2 + 4 * v12) = v13;
      if (a3 - 1 == v12)
      {
        goto LABEL_15;
      }

      if (__OFADD__(++v12, 1))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    a3 = v12;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E6DC(mach_port_name_t name)
{
  v3 = *(v1 + 16);
  *object_addr = 0;
  if (mach_port_kernel_object(v3, name, object_addr, &object_addr[1]))
  {
    return 0;
  }

  v4 = object_addr[1];
  v5 = sub_10000D030();
  v6 = *(v5 + 2);
  if (!v6)
  {
LABEL_8:

    return 0;
  }

  v7 = v5 + 52;
  while ((*v7 & 1) != 0 || *(v7 - 1) != v4)
  {
    v7 += 24;
    if (!--v6)
    {
      goto LABEL_8;
    }
  }

  v8 = *(v7 - 20);

  return v8;
}

uint64_t sub_10000E7A0(uint64_t a1, uint64_t a2)
{
  v2 = String.utf8CString.getter();
  v3 = objc_getClass((v2 + 32));

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_1000021C0(&qword_1000B4CD8, &qword_10008FF30);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_10000FB2C(v8);
  }

  return 0;
}

char *sub_10000E898(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4CE8, &qword_10008FF40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_10000E9B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4CE0, &qword_10008FF38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 648);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[648 * v8])
    {
      memmove(v12, v13, 648 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 648 * v8);
  }

  return v10;
}

char *sub_10000EAD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4CF0, &qword_10008FF48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_10000EBEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4C80, &qword_10008FED8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_10000ED10(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000021C0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_10000EE0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4CF8, &qword_10008FF50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000EF18(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4D10, &unk_10008FF68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000F038(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000021C0(&qword_1000B4D00, &qword_10008FF58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000021C0(&qword_1000B4D08, &qword_10008FF60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000F180(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000021C0(&qword_1000B4C98, &qword_10008FEF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[15 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 120 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000021C0(&qword_1000B4CA0, &qword_10008FEF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000F2C8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000021C0(&qword_1000B4CA8, &unk_10008FF00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[16 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 7);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000021C0(&qword_1000B4CB0, &qword_100090F80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000F3FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4C88, &qword_10008FEE0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10000F508(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4C90, &qword_10008FEE8);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_10000F5FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4CC8, &qword_10008FF20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10000F700(void *result)
{
  v1 = result[2];
  if (v1)
  {
    v2 = result[3];
    v3 = _swiftEmptyArrayStorage;
    v4 = 0;
    if (v2)
    {
      v5 = &_swiftEmptyArrayStorage[4];
      v6 = 4 * v2;
      while (1)
      {
        v7 = *v1;
        if (!v4)
        {
          v8 = v3[3];
          if (((v8 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_29;
          }

          v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
          if (v9 <= 1)
          {
            v10 = 1;
          }

          else
          {
            v10 = v9;
          }

          sub_1000021C0(&qword_1000B4C70, &unk_10008FEC8);
          v11 = swift_allocObject();
          v12 = j__malloc_size(v11);
          v13 = v12 - 32;
          if (v12 < 32)
          {
            v13 = v12 - 29;
          }

          v14 = v13 >> 2;
          v11[2] = v10;
          v11[3] = 2 * (v13 >> 2);
          v15 = (v11 + 4);
          v16 = v3[3] >> 1;
          if (v3[2])
          {
            if (v11 != v3 || v15 >= v3 + 4 * v16 + 32)
            {
              memmove(v11 + 4, v3 + 4, 4 * v16);
            }

            v3[2] = 0;
          }

          v5 = (v15 + 4 * v16);
          v4 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

          v3 = v11;
        }

        v18 = __OFSUB__(v4--, 1);
        if (v18)
        {
          break;
        }

        ++v1;
        *v5++ = v7;
        v6 -= 4;
        if (!v6)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }
  }

  else
  {
    v4 = 0;
    v3 = _swiftEmptyArrayStorage;
  }

LABEL_24:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v4);
  v21 = v20 - v4;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_10000F86C(unsigned int a1, _BYTE *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      *a2 = 0;
    }

    else
    {
      if (a1 != 4)
      {
        return result;
      }

      *a2 = &_mh_execute_header;
    }

    return 1;
  }

  if (a1 < 2)
  {
    *a2 = 8;
    return 1;
  }

  if (a1 == 2)
  {
    *a2 = sub_10000FB20();
    return 1;
  }

  return result;
}

uint64_t sub_10000F8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    __break(1u);
  }

  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    if (qword_1000B4790 == -1)
    {
      goto LABEL_4;
    }
  }

  swift_once();
LABEL_4:
  v4 = off_1000B6580();

  if (v4)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_10000F9E8()
{
  result = qword_1000B4C78;
  if (!qword_1000B4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C78);
  }

  return result;
}

void (**sub_10000FA3C(void (**result)(uint64_t *, uint64_t *), uint64_t a2, unsigned int a3))(uint64_t *, uint64_t *)
{
  if (result)
  {
    if (a3)
    {
      v4 = *result;
      v5 = a3;

      v6 = (a2 + 8);
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v9 = v7;
        v4(&v9, &v8);
        v6 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000FB08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000FB2C(uint64_t a1)
{
  v2 = sub_1000021C0(&qword_1000B4CD0, &qword_10008FF28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000FB98()
{
  result = qword_1000B4D20;
  if (!qword_1000B4D20)
  {
    sub_100002B84(&qword_1000B4D18, &qword_10008FF78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D20);
  }

  return result;
}

uint64_t sub_10000FBFC(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (a2)
  {
    if (v5)
    {
      swift_unknownObjectRetain_n();
      sub_100022AB4(0, v5, 0);
      v64 = a1 + 24;
      v65 = a3;
      v6 = 1;
      do
      {
        v7 = *(v64 + 8 * v5);
        v8._countAndFlagsBits = 32;
        v8._object = 0xE100000000000000;
        v9 = String.init(repeating:count:)(v8, v6);
        String.append(_:)(v9);

        v10 = *(a3 + 48);
        v11 = *(a3 + 56);
        v12 = qword_1000B4768;
        swift_unknownObjectRetain();
        if (v12 != -1)
        {
          swift_once();
        }

        v13 = off_1000B6558(v10, v11, v7, 0x8000000000000000);
        v15 = v14;
        if (qword_1000B4750 != -1)
        {
          swift_once();
        }

        v16 = off_1000B6540(v13, v15);
        if (qword_1000B4760 != -1)
        {
          v35 = v16;
          swift_once();
          v16 = v35;
        }

        if (off_1000B6550(v16))
        {
          v17 = String.init(cString:)();
          v19 = v18;
        }

        else
        {
          v17 = 0;
          v19 = 0;
        }

        if (qword_1000B4748 != -1)
        {
          swift_once();
        }

        if (off_1000B6538(v13, v15))
        {
          v20 = String.init(cString:)();
          v22 = v21;
        }

        else
        {
          v20 = 0;
          v22 = 0;
        }

        sub_1000023DC();
        v23._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
        String.append(_:)(v23);

        v24._countAndFlagsBits = 10272;
        v24._object = 0xE200000000000000;
        String.append(_:)(v24);
        if (v19)
        {
          v25 = v17;
        }

        else
        {
          v25 = 0x6E776F6E6B6E753CLL;
        }

        if (v19)
        {
          v26 = v19;
        }

        else
        {
          v26 = 0xE90000000000003ELL;
        }

        v27 = v26;
        String.append(_:)(*&v25);

        v28._countAndFlagsBits = 8233;
        v28._object = 0xE200000000000000;
        String.append(_:)(v28);
        if (v22)
        {
          v29 = v20;
        }

        else
        {
          v29 = 0x6E776F6E6B6E753CLL;
        }

        if (!v22)
        {
          v22 = 0xE90000000000003ELL;
        }

        v30 = v22;
        String.append(_:)(*&v29);
        a3 = v65;
        swift_unknownObjectRelease();

        v31._countAndFlagsBits = 30768;
        v31._object = 0xE200000000000000;
        String.append(_:)(v31);

        v33 = _swiftEmptyArrayStorage[2];
        v32 = _swiftEmptyArrayStorage[3];
        if (v33 >= v32 >> 1)
        {
          sub_100022AB4((v32 > 1), v33 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v33 + 1;
        v34 = &_swiftEmptyArrayStorage[2 * v33];
        v34[4] = 32;
        v34[5] = 0xE100000000000000;
        ++v6;
        --v5;
      }

      while (v5);
      goto LABEL_65;
    }

LABEL_64:
    swift_unknownObjectRetain_n();
    goto LABEL_65;
  }

  if (!v5)
  {
    goto LABEL_64;
  }

  swift_unknownObjectRetain_n();
  sub_100022AB4(0, v5, 0);
  do
  {
    v36 = *(a1 + 24 + 8 * v5);
    v37 = *(a3 + 48);
    v38 = *(a3 + 56);
    v39 = qword_1000B4768;
    swift_unknownObjectRetain();
    if (v39 != -1)
    {
      swift_once();
    }

    v40 = off_1000B6558(v37, v38, v36, 0x8000000000000000);
    v42 = v41;
    if (qword_1000B4750 != -1)
    {
      swift_once();
    }

    v43 = off_1000B6540(v40, v42);
    if (qword_1000B4760 != -1)
    {
      v61 = v43;
      swift_once();
      v43 = v61;
    }

    if (off_1000B6550(v43))
    {
      v44 = String.init(cString:)();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    if (qword_1000B4748 != -1)
    {
      swift_once();
    }

    if (off_1000B6538(v40, v42))
    {
      v47 = String.init(cString:)();
      v49 = v48;
    }

    else
    {
      v47 = 0;
      v49 = 0;
    }

    sub_1000023DC();
    v50._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v50);

    v51._countAndFlagsBits = 10272;
    v51._object = 0xE200000000000000;
    String.append(_:)(v51);
    if (v46)
    {
      v52 = v44;
    }

    else
    {
      v52 = 0x6E776F6E6B6E753CLL;
    }

    if (!v46)
    {
      v46 = 0xE90000000000003ELL;
    }

    v53 = v46;
    String.append(_:)(*&v52);

    v54._countAndFlagsBits = 8233;
    v54._object = 0xE200000000000000;
    String.append(_:)(v54);
    if (v49)
    {
      v55 = v47;
    }

    else
    {
      v55 = 0x6E776F6E6B6E753CLL;
    }

    if (v49)
    {
      v56 = v49;
    }

    else
    {
      v56 = 0xE90000000000003ELL;
    }

    v57 = v56;
    String.append(_:)(*&v55);
    swift_unknownObjectRelease();

    v59 = _swiftEmptyArrayStorage[2];
    v58 = _swiftEmptyArrayStorage[3];
    if (v59 >= v58 >> 1)
    {
      sub_100022AB4((v58 > 1), v59 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v59 + 1;
    v60 = &_swiftEmptyArrayStorage[2 * v59];
    v60[4] = 30768;
    v60[5] = 0xE200000000000000;
    --v5;
  }

  while (v5);
LABEL_65:
  sub_1000021C0(&qword_1000B4D18, &qword_10008FF78);
  sub_10000FB98();
  v62 = BidirectionalCollection<>.joined(separator:)();
  swift_unknownObjectRelease_n();

  return v62;
}

uint64_t sub_100010300(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = String.utf8CString.getter();
  fputs((v4 + 32), v3);
}

uint64_t sub_10001034C()
{
  result = stderr.getter();
  qword_1000B63D8 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Std.File(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for Std.File(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

double sub_100010418()
{
  *&v1 = 0;
  *(&v1 + 1) = 0xE000000000000000;
  CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:groupedSubcommands:defaultSubcommand:helpNames:aliases:)(0, 0, 0xD000000000000028, 0x8000000100097920, 0, 0, 0, 0xE000000000000000, v2, v1, 1, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 0, _swiftEmptyArrayStorage);
  xmmword_1000B6440 = v2[6];
  unk_1000B6450 = v2[7];
  xmmword_1000B6460 = v2[8];
  qword_1000B6470 = v3;
  xmmword_1000B6400 = v2[2];
  unk_1000B6410 = v2[3];
  xmmword_1000B6420 = v2[4];
  unk_1000B6430 = v2[5];
  result = *v2;
  xmmword_1000B63E0 = v2[0];
  *algn_1000B63F0 = v2[1];
  return result;
}

uint64_t sub_1000104D8(uint64_t a1, uint64_t a2)
{
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10008F230;
  *(v3 + 32) = 0x73736572646441;
  *(v3 + 40) = 0xE700000000000000;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = 6775124;
  *(v3 + 72) = 0xE300000000000000;
  *(v3 + 88) = &type metadata for String;
  *(v3 + 96) = 0x656D614E20676154;
  *(v3 + 104) = 0xE800000000000000;
  *(v3 + 120) = &type metadata for String;
  *(v3 + 128) = 1702521171;
  *(v3 + 136) = 0xE400000000000000;
  *(v3 + 152) = &type metadata for String;
  *(v3 + 160) = 1952867660;
  *(v3 + 168) = 0xE400000000000000;
  *(v3 + 216) = &type metadata for String;
  *(v3 + 184) = &type metadata for String;
  *(v3 + 192) = 0x7468676952;
  *(v3 + 200) = 0xE500000000000000;
  print(_:separator:terminator:)();

  if (!*(a1 + 40))
  {
    goto LABEL_10;
  }

  v4 = swift_allocObject();
  *(v4 + 16) = _swiftEmptyArrayStorage;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100002310;
  *(v5 + 24) = v4;
  v21 = sub_100010E78;
  v22 = v5;
  swift_retain_n();
  v6 = swift_reflection_iterateMetadataAllocations();

  if (v6)
  {
    v7 = String.init(cString:)();
    v9 = v8;
    sub_100002388();
    swift_allocError();
    *v10 = v7;
    v10[1] = v9;
    swift_willThrow();
  }

  swift_beginAccess();
  v12 = *(v4 + 16);

  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (v12 + 48);
    while (v14 < *(v12 + 16))
    {
      ++v14;
      v16 = *v15;
      v17 = *(v15 - 1);
      v18 = *(v15 - 4);
      v19 = v17;
      v20 = v16;
      sub_1000107C0(&v18, a1);
      v15 += 6;
      if (v13 == v14)
      {
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

uint64_t sub_1000107C0(unsigned int *a1, uint64_t a2)
{
  result = swift_reflection_metadataAllocationCacheNode();
  if (result)
  {
    result = *(a2 + 40);
    if (result)
    {
      if (swift_reflection_metadataAllocationTagName())
      {
        v4 = String.init(cString:)();
        v6 = v5;
      }

      else
      {
        v6 = 0xE90000000000003ELL;
        v4 = 0x6E776F6E6B6E753CLL;
      }

      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_10008E640;
      _StringGuts.grow(_:)(17);

      sub_1000023DC();
      v8._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
      String.append(_:)(v8);

      v9._countAndFlagsBits = 9;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);
      v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v10);

      v11._countAndFlagsBits = 9;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
      v12._countAndFlagsBits = v4;
      v12._object = v6;
      String.append(_:)(v12);

      v13._countAndFlagsBits = 9;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 9;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      v16._countAndFlagsBits = 30768;
      v16._object = 0xE200000000000000;
      String.append(_:)(v16);
      v17._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
      String.append(_:)(v17);

      v18._countAndFlagsBits = 9;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      v19._countAndFlagsBits = 30768;
      v19._object = 0xE200000000000000;
      String.append(_:)(v19);
      v20._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
      String.append(_:)(v20);

      *(v7 + 56) = &type metadata for String;
      *(v7 + 32) = 30768;
      *(v7 + 40) = 0xE200000000000000;
      print(_:separator:terminator:)();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100010AD0(uint64_t a1)
{
  v2 = sub_1000110AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100010B0C(uint64_t a1)
{
  v2 = sub_1000110AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100010B48@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1000B4700 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_100002430(&xmmword_1000B63E0, v2);
}

uint64_t sub_100010BB8()
{
  v1 = v0[3];
  v26 = v0[2];
  v27 = v1;
  v28 = v0[4];
  v29 = *(v0 + 10);
  v2 = v0[1];
  v24 = *v0;
  v25 = v2;
  v3 = sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
  OptionGroup.wrappedValue.getter(v3, &v15, v4, v5);
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v30 = v23;
  sub_100007EF4(v15, v16, v17, v18, v19, v20);
  sub_1000022B8(v6, v7, v8);
  sub_1000022C8(v9, v10, v11);
  return sub_1000022C8(v12, v13, v30);
}

double sub_100010CB4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100010E80(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_100010D10(uint64_t a1)
{
  result = sub_100010D38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100010D38()
{
  result = qword_1000B4D28;
  if (!qword_1000B4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D28);
  }

  return result;
}

unint64_t sub_100010D8C(uint64_t a1)
{
  result = sub_100010DB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100010DB4()
{
  result = qword_1000B4D30;
  if (!qword_1000B4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D30);
  }

  return result;
}

uint64_t sub_100010E08()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010E40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010E80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1000021C0(&qword_1000B4D38, &qword_1000901D8);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = *ArgumentVisibility.default.unsafeMutableAddressor();
  v9 = sub_10000248C();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v8, &type metadata for UniversalOptions, v9, v26);
  sub_100002AA0(a1, a1[3]);
  sub_1000110AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004188(v26);
    return sub_100002B38(a1);
  }

  else
  {
    v10 = v27;
    sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
    sub_1000041F0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    sub_100004188(v26);
    v16 = v22;
    v17 = v23;
    v18 = v24;
    v19 = v25;
    v14 = v20;
    v15 = v21;
    result = sub_100002B38(a1);
    v12 = v17;
    *(v10 + 32) = v16;
    *(v10 + 48) = v12;
    *(v10 + 64) = v18;
    *(v10 + 80) = v19;
    v13 = v15;
    *v10 = v14;
    *(v10 + 16) = v13;
  }

  return result;
}

unint64_t sub_1000110AC()
{
  result = qword_1000B4D40;
  if (!qword_1000B4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D40);
  }

  return result;
}

unint64_t sub_100011114()
{
  result = qword_1000B4D48;
  if (!qword_1000B4D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D48);
  }

  return result;
}

unint64_t sub_10001116C()
{
  result = qword_1000B4D50;
  if (!qword_1000B4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D50);
  }

  return result;
}

unint64_t sub_1000111C4()
{
  result = qword_1000B4D58;
  if (!qword_1000B4D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D58);
  }

  return result;
}

uint64_t sub_100011218(int a1)
{
  v4 = 0;
  memset(buffer, 0, sizeof(buffer));
  v1 = proc_pidinfo(a1, 3, 0, buffer, 136);
  result = 0;
  if (v1 == 136)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  return result;
}

unint64_t sub_100011618(uint64_t a1, void *a2)
{
  v4 = static CommandLine.arguments.getter();
  if (!v4[2])
  {
    goto LABEL_9;
  }

  v6 = v4[4];
  v5 = v4[5];

  v7 = v6 == a1 && v5 == a2;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 1;
    return v8 & 1;
  }

  v23[0] = 47;
  v23[1] = 0xE100000000000000;
  __chkstk_darwin();
  v22[2] = v23;
  v9 = sub_100012214(sub_100012318, v22, v6, v5);
  if (v10)
  {
LABEL_9:

    v8 = 0;
    return v8 & 1;
  }

  sub_1000117E4(v9, v6, v5);
  v13 = v12;

  result = Substring.index(_:offsetBy:limitedBy:)();
  if (v14)
  {
    result = v13;
  }

  if (v13 >> 14 >= result >> 14)
  {
    v15 = Substring.subscript.getter();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v8 = sub_100012370(v15, v17, v19, v21, a1, a2);

    return v8 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000117E4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t sub_100011830(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100024A6C(v2);
  }

  v3 = *(v2 + 2);
  v15[0] = (v2 + 32);
  v15[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2;
      do
      {
        v11 = v8;
        v12 = v10;
        do
        {
          if (*(v12 + 18) >= *(v12 + 180))
          {
            break;
          }

          memcpy(__dst, v12 + 680, sizeof(__dst));
          memcpy(v12 + 680, v12 + 32, 0x288uLL);
          result = memcpy(v12 + 32, __dst, 0x288uLL);
          v12 -= 648;
        }

        while (!__CFADD__(v11++, 1));
        ++v9;
        v10 += 648;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for kinfo_proc(0);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    __dst[0] = v7 + 4;
    __dst[1] = v6;
    sub_1000119B8(__dst, v16, v15, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1000119B8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v88 = a3;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_90:
    v86 = *v85;
    if (!*v85)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_10002299C(v7);
      v7 = result;
    }

    v76 = v7 + 2;
    v77 = v7[2];
    if (v77 >= 2)
    {
      while (*v88)
      {
        v78 = &v7[2 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_100011FA4((*v88 + 648 * *v78), (*v88 + 648 * *v80), (*v88 + 648 * v81), v86);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_116;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_117;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_118;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_128;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*v88 + 648 * v6 + 40);
      v10 = 648 * v8;
      v11 = *v88 + 648 * v8;
      v12 = *(v11 + 40);
      v13 = v8 + 2;
      v14 = (v11 + 1336);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v17 = (v12 < v9) ^ (v15 >= *v14);
        ++v13;
        v14 += 162;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_121;
      }

      if (v8 < v6)
      {
        v18 = 648 * v6 - 648;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v21 = *v88;
            if (!*v88)
            {
              goto LABEL_127;
            }

            memcpy(__dst, (v21 + v10), sizeof(__dst));
            memmove((v21 + v10), (v21 + v18), 0x288uLL);
            result = memcpy((v21 + v18), __dst, 0x288uLL);
          }

          ++v20;
          v18 -= 648;
          v10 += 648;
        }

        while (v20 < v19);
        v5 = v88[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_120;
      }

      if (v6 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v6 < v8)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000E99C(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v29 = v7[2];
    v28 = v7[3];
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_10000E99C((v28 > 1), v29 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v30;
    v31 = v7 + 4;
    v32 = &v7[2 * v29 + 4];
    *v32 = v8;
    v32[1] = v6;
    v86 = *v85;
    if (!*v85)
    {
      goto LABEL_129;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = v7[4];
          v35 = v7[5];
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_59:
          if (v37)
          {
            goto LABEL_106;
          }

          v50 = &v7[2 * v30];
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_108;
          }

          v56 = &v31[2 * v33];
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_113;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v30 < 2)
        {
          goto LABEL_114;
        }

        v60 = &v7[2 * v30];
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_74:
        if (v55)
        {
          goto LABEL_110;
        }

        v63 = &v31[2 * v33];
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_112;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_81:
        if (v33 - 1 >= v30)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v88)
        {
          goto LABEL_126;
        }

        v71 = &v31[2 * v33 - 2];
        v72 = *v71;
        v73 = &v31[2 * v33];
        v74 = v73[1];
        sub_100011FA4((*v88 + 648 * *v71), (*v88 + 648 * *v73), (*v88 + 648 * v74), v86);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_101;
        }

        if (v33 > v7[2])
        {
          goto LABEL_102;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = v7[2];
        if (v33 >= v75)
        {
          goto LABEL_103;
        }

        v30 = v75 - 1;
        result = memmove(&v31[2 * v33], v73 + 2, 16 * (v75 - 1 - v33));
        v7[2] = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v31[2 * v30];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_104;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_105;
      }

      v45 = &v7[2 * v30];
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_107;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_109;
      }

      if (v49 >= v41)
      {
        v67 = &v31[2 * v33];
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_115;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_3:
    v5 = v88[1];
    if (v6 >= v5)
    {
      goto LABEL_90;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_122;
  }

  v86 = v7;
  if (v8 + a4 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = (v8 + a4);
  }

  if (v7 < v8)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v6 == v7)
  {
LABEL_38:
    v7 = v86;
    goto LABEL_39;
  }

  v22 = *v88;
  v23 = *v88 + 648 * v6 - 648;
  v83 = v8;
  v24 = v8 - v6;
LABEL_31:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (v26[10] >= v26[172])
    {
LABEL_30:
      ++v6;
      v23 += 648;
      --v24;
      if (v6 != v7)
      {
        goto LABEL_31;
      }

      v6 = v7;
      v8 = v83;
      goto LABEL_38;
    }

    if (!v22)
    {
      break;
    }

    memcpy(__dst, v26 + 162, sizeof(__dst));
    memcpy(v26 + 162, v26, 0x288uLL);
    result = memcpy(v26, __dst, 0x288uLL);
    v26 -= 162;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}