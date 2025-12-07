uint64_t sub_1ABE097E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ResultGraph();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = sub_1ABF239C4();
  *(v7 + 24) = v8;
  v9 = sub_1ABE713BC();
  v10 = sub_1ABE8AE5C(v9);
  v11 = sub_1ABE713BC();
  result = sub_1ABE8AE5C(v11);
  v13 = result;
  v109 = v7;
  switch(*(a2 + 64))
  {
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
      v14 = sub_1ABE713BC();
      v15 = sub_1ABE8AE5C(v14);
      v107 = *(a3 + 16);
      if (v107)
      {
        v16 = 0;
        v105 = a3 + 32;
        v110 = v13 + 56;
        v102 = xmmword_1ABF34740;
        while (1)
        {
          v17 = memcpy(__dst, (v105 + 88 * v16), 0x58uLL);
          if (*(v15 + 16))
          {
            v25 = __dst[4];
            v26 = sub_1ABF25234();
            sub_1ABA7EB0C(v26, v27, v28, v29, v30, v31, v32, v33, v91, v92, v94, v96, v98, v100, v102, *(&v102 + 1), v105, v107, v109, v110, v112, v113, v114, v115, v116, v117, v118, v119, v120);

            sub_1ABF23D34();
            sub_1ABF25294();
            sub_1ABA7D2C8();
            while (1)
            {
              sub_1ABA7F820();
              if (((*(v15 + 56 + v34) >> v3) & 1) == 0)
              {
                break;
              }

              v35 = sub_1ABA7DE50(*(v15 + 48));
              v37 = v37 && v36 == v25;
              if (v37 || (sub_1ABA81050(v35, v36) & 1) != 0)
              {

                goto LABEL_14;
              }
            }

            sub_1ABB24250(__dst);
          }

          else
          {
            sub_1ABA7EB0C(v17, v18, v19, v20, v21, v22, v23, v24, v91, v92, v94, v96, v98, v100, v102, *(&v102 + 1), v105, v107, v109, v110, v112, v113, v114, v115, v116, v117, v118, v119, v120);
LABEL_14:
            v38 = __dst[7];
            if (__dst[7] && *(v10 + 16))
            {
              sub_1ABF25234();

              sub_1ABF23D34();
              sub_1ABF25294();
              sub_1ABA7D2C8();
              while (1)
              {
                sub_1ABA7F820();
                if (((*(v10 + 56 + v39) >> v3) & 1) == 0)
                {
                  break;
                }

                v40 = sub_1ABA7DE50(*(v10 + 48));
                v42 = v37 && v38 == v41;
                if (v42 || (sub_1ABA81050(v40, v41) & 1) != 0)
                {

                  goto LABEL_24;
                }
              }

LABEL_36:
              sub_1ABB24250(__dst);
            }

            else
            {
LABEL_24:
              v43 = __dst[9];
              if (__dst[9] && *(v13 + 16))
              {
                sub_1ABF25234();

                sub_1ABF23D34();
                sub_1ABF25294();
                sub_1ABA7D2C8();
                do
                {
                  sub_1ABA7F820();
                  if (((*(v110 + v44) >> v3) & 1) == 0)
                  {
                    goto LABEL_36;
                  }

                  v45 = sub_1ABA7DE50(*(v13 + 48));
                  v47 = v37 && v43 == v46;
                }

                while (!v47 && (sub_1ABA81050(v45, v46) & 1) == 0);
              }

              sub_1ABAD219C(&qword_1EB4D10A0, &qword_1ABF33228);
              v48 = swift_allocObject();
              *(v48 + 16) = v102;
              memcpy((v48 + 32), __dst, 0x58uLL);
              v121[0] = 0;
              sub_1ABE489A8(v48, v121);
              swift_setDeallocating();
              sub_1ABB4DB0C();
            }
          }

          if (++v16 == v107)
          {

            return sub_1ABE491D0();
          }
        }
      }

      goto LABEL_79;
    case 2:
      if (*(a1 + 8))
      {
        result = sub_1ABE48AE8(result);
        v49 = result;
      }

      else
      {
        v49 = MEMORY[0x1E69E7CC0];
      }

      v97 = *(v49 + 16);
      if (!v97)
      {
        goto LABEL_78;
      }

      v50 = 0;
      v93 = v49;
      v95 = v49 + 32;
      break;
    default:

      return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    if (v50 >= *(v49 + 16))
    {
      goto LABEL_83;
    }

    v51 = (v95 + 40 * v50);
    v52 = v51[1];
    v106 = *v51;
    v53 = v51[2];

    swift_bridgeObjectRetain_n();
    sub_1ABE7A35C(v53);
    v55 = v54;

    v56 = v55;
    v57 = *(v55 + 16);
    if (v57)
    {
      break;
    }

LABEL_77:
    if (++v50 == v97)
    {
LABEL_78:

LABEL_79:

      return sub_1ABE491D0();
    }
  }

  v99 = v50;
  v101 = v56;
  v58 = 0;
  v108 = v56 + 32;
  v59 = v57;
  v103 = v52;
  v60 = v56;
  v111 = v53;
  while (v58 < v59)
  {
    v61 = memcpy(__dst, (v108 + 88 * v58), 0x58uLL);
    v69 = __dst[7];
    if (__dst[7] && *(v10 + 16))
    {
      v70 = __dst[6];
      v71 = sub_1ABF25234();
      sub_1ABA7EB0C(v71, v72, v73, v74, v75, v76, v77, v78, v91, v93, v95, v97, v99, v101, v103, v104, v106, v108, v109, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);

      sub_1ABF23D34();
      sub_1ABF25294();
      sub_1ABA7D2C8();
      while (1)
      {
        v80 = v79 & &v112;
        if (((*(v10 + 56 + (((v79 & &v112) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v79 & &v112)) & 1) == 0)
        {
          break;
        }

        v81 = (*(v10 + 48) + 16 * v80);
        if (*v81 != v70 || v69 != v81[1])
        {
          v83 = sub_1ABF25054();
          v79 = v80 + 1;
          if ((v83 & 1) == 0)
          {
            continue;
          }
        }

        v7 = v109;
        v60 = v101;
        v52 = v103;
        goto LABEL_61;
      }
    }

    else
    {
      sub_1ABA7EB0C(v61, v62, v63, v64, v65, v66, v67, v68, v91, v93, v95, v97, v99, v101, v103, v104, v106, v108, v109, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
LABEL_61:
      v84 = __dst[9];
      if (!__dst[9] || !*(v13 + 16))
      {
LABEL_71:
        memcpy(v121, __dst, sizeof(v121));
        sub_1ABE09EA4(v7, v121, v106, v52);
        result = sub_1ABB24250(__dst);
        goto LABEL_73;
      }

      v85 = __dst[8];
      sub_1ABF25234();

      sub_1ABF23D34();
      sub_1ABF25294();
      sub_1ABA7D2C8();
      while (1)
      {
        v87 = v86 & v121;
        if (((*(v13 + 56 + (((v86 & v121) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v86 & v121)) & 1) == 0)
        {
          break;
        }

        v88 = (*(v13 + 48) + 16 * v87);
        if (*v88 != v85 || v84 != v88[1])
        {
          v90 = sub_1ABF25054();
          v86 = v87 + 1;
          if ((v90 & 1) == 0)
          {
            continue;
          }
        }

        v7 = v109;
        v60 = v101;
        v52 = v103;
        goto LABEL_71;
      }
    }

    sub_1ABB24250(__dst);

    v7 = v109;
    v60 = v101;
    v52 = v103;
LABEL_73:
    if (++v58 == v57)
    {

      v49 = v93;
      v50 = v99;
      goto LABEL_77;
    }

    v59 = *(v60 + 16);
  }

  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_1ABE09EA4(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, a2, sizeof(__dst));
  v6 = __dst[3] == a3 && __dst[4] == a4;
  if (v6 || (result = sub_1ABF25054(), (result & 1) != 0))
  {
    sub_1ABAD219C(&qword_1EB4D10A0, &qword_1ABF33228);
    inited = swift_initStackObject();
    sub_1ABA93930(inited, xmmword_1ABF34740);
    v11 = 0;
LABEL_7:
    sub_1ABB242A4(__dst, v10);
    sub_1ABE489A8(inited, &v11);
    swift_setDeallocating();
    return sub_1ABB4DB0C();
  }

  if (__dst[9])
  {
    v9 = __dst[8] == a3 && __dst[9] == a4;
    if (v9 || (result = sub_1ABF25054(), (result & 1) != 0))
    {
      sub_1ABAD219C(&qword_1EB4D10A0, &qword_1ABF33228);
      inited = swift_initStackObject();
      sub_1ABA93930(inited, xmmword_1ABF34740);
      v11 = 2;
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t Embedding.value.getter()
{
  sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  sub_1ABA7BBB0();
  v0 = sub_1ABA7D000();

  return v1(v0);
}

uint64_t Embedding.identifiers.getter()
{
  type metadata accessor for Embedding(0);
}

uint64_t type metadata accessor for Embedding(uint64_t a1)
{
  result = qword_1EB4DA758;
  if (!qword_1EB4DA758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Embedding.identifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Embedding(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1ABE0A15C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEB00000000737265)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABE0A224(char a1)
{
  if (a1)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1ABE0A268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE0A15C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE0A290(uint64_t a1)
{
  v2 = sub_1ABE0A6C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE0A2CC(uint64_t a1)
{
  v2 = sub_1ABE0A6C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Embedding.init(value:identifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  sub_1ABA7BBB0();
  (*(v6 + 32))(a3, a1);
  result = type metadata accessor for Embedding(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t Embedding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  sub_1ABA7BB64();
  v23 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  sub_1ABAD219C(&qword_1EB4DA738, &unk_1ABF673F8);
  sub_1ABA7BB64();
  v24 = v8;
  v25 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v10 = type metadata accessor for Embedding(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE0A6C4();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  v20 = v10;
  v21 = v13;
  v14 = v23;
  v29 = 0;
  sub_1ABDFF8CC(&qword_1EB4DA4B8);
  v15 = v26;
  sub_1ABF24E64();
  v16 = v21;
  (*(v14 + 32))(v21, v7, v15);
  sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
  v28 = 1;
  sub_1ABE0A718(&unk_1ED86B980);
  sub_1ABF24E64();
  v17 = sub_1ABA93950();
  v18(v17);
  *(v16 + *(v20 + 20)) = v27;
  sub_1ABE0A774(v16, v22);
  sub_1ABA84B54(a1);
  return sub_1ABE0A7D8(v16);
}

unint64_t sub_1ABE0A6C4()
{
  result = qword_1EB4DA740;
  if (!qword_1EB4DA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA740);
  }

  return result;
}

uint64_t sub_1ABE0A718(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = sub_1ABAE2850(&unk_1EB4D2E60, &qword_1ABF4D8A0);
    result = sub_1ABA83BEC(v3);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABE0A774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Embedding(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE0A7D8(uint64_t a1)
{
  v2 = type metadata accessor for Embedding(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Embedding.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1ABAD219C(&qword_1EB4DA748, &qword_1ABF67408);
  sub_1ABA7BB64();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE0A6C4();
  sub_1ABF252E4();
  v15 = 0;
  sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  sub_1ABDFF8CC(&qword_1EB4DA4A8);
  sub_1ABA8EC60(v3, &v15);
  if (!v2)
  {
    v14 = *(v3 + *(type metadata accessor for Embedding(0) + 20));
    v13 = 1;
    sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
    sub_1ABE0A718(&qword_1EB4CF7F8);
    sub_1ABA8EC60(&v14, &v13);
  }

  return (*(v7 + 8))(v10, v5);
}

Swift::Void __swiftcall Embedding.updateIdsWith(identifier:)(Swift::String identifier)
{
  v1 = HIBYTE(identifier._object) & 0xF;
  if ((identifier._object & 0x2000000000000000) == 0)
  {
    v1 = identifier._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
    object = identifier._object;
    countAndFlagsBits = identifier._countAndFlagsBits;
    type metadata accessor for Embedding(0);

    sub_1ABB1840C(&v4, countAndFlagsBits, object);
  }
}

IntelligencePlatform::FileString __swiftcall FileString.init(filename:type:)(Swift::String filename, Swift::String type)
{
  *v2 = filename;
  v2[1] = type;
  result.type = type;
  result.filename = filename;
  return result;
}

uint64_t static FileString.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1ABF25054(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      sub_1ABA7D000();

      return sub_1ABF25054();
    }
  }

  return result;
}

uint64_t FileString.hash(into:)(uint64_t a1)
{
  sub_1ABF23D34();

  return sub_1ABF23D34();
}

uint64_t FileString.hashValue.getter()
{
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

uint64_t sub_1ABE0AC7C(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_1ABF25234();
  FileString.hash(into:)(v5);
  return sub_1ABF25294();
}

void sub_1ABE0ACD0()
{
  qword_1EB4DA6F8 = 0xD000000000000018;
  unk_1EB4DA700 = 0x80000001ABF91FF0;
  qword_1EB4DA708 = 0x636C65646F6D6C6DLL;
  unk_1EB4DA710 = 0xE800000000000000;
}

uint64_t static ModelKey.nameToName.getter()
{
  if (qword_1EB4D03C8 != -1)
  {
    swift_once();
  }

  sub_1ABA81BC0(&qword_1EB4DA6F8);
}

void sub_1ABE0AD80()
{
  qword_1EB4DA718 = 0xD000000000000019;
  unk_1EB4DA720 = 0x80000001ABF91FD0;
  qword_1EB4DA728 = 0x636C65646F6D6C6DLL;
  unk_1EB4DA730 = 0xE800000000000000;
}

uint64_t static ModelKey.nameToEmail.getter()
{
  if (qword_1EB4D03D0 != -1)
  {
    swift_once();
  }

  sub_1ABA81BC0(&qword_1EB4DA718);
}

id ModelKey.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ModelKey.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ModelKey.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1ABE0AEFC(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v7 = *(v1 + 112);

  sub_1ABAD5AC8(v7, &v32);

  if (v33 == 1)
  {
    sub_1ABE0BD58(&v32);
    goto LABEL_9;
  }

  sub_1ABAFF124(&v32, &v30);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1ABE0BDE4(&v30);
LABEL_9:
    v32 = v4;
    v33 = v3;
    v34 = v6;
    v35 = v5;
    type metadata accessor for MatcherModel();
    v9 = swift_allocObject();

    MatcherModel.init(key:)(&v32);
    if (!v2)
    {
      swift_weakInit();
      v31 = 0;
      swift_beginAccess();

      sub_1ABD25B1C(&v30, v4, v3, v6, v5);
      swift_endAccess();
      if (qword_1ED871B38 != -1)
      {
        sub_1ABA7D178(&qword_1ED871B38);
      }

      v19 = sub_1ABF237F4();
      sub_1ABA7AA24(v19, qword_1ED871B40);

      v20 = sub_1ABF237D4();
      v21 = sub_1ABF24654();

      if (os_log_type_enabled(v20, v21))
      {
        v29 = v21;
        v22 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v22 = 136315394;
        v32 = v9;

        v23 = sub_1ABF23C74();
        sub_1ABADD6D8(v23, v24, &v30);

        sub_1ABA8106C();

        v25 = sub_1ABF23C74();
        v27 = sub_1ABADD6D8(v25, v26, &v30);

        *(v22 + 14) = v27;
        _os_log_impl(&dword_1ABA78000, v20, v29, "MatcherModel: caching model %s for %s", v22, 0x16u);
        swift_arrayDestroy();
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }
    }

    return v9;
  }

  v9 = Strong;
  if (qword_1ED86B410 != -1)
  {
    swift_once();
  }

  v10 = sub_1ABF237F4();
  sub_1ABA7AA24(v10, qword_1ED86B418);

  v11 = sub_1ABF237D4();
  v12 = sub_1ABF24654();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v13 = 136315394;
    v32 = v9;
    type metadata accessor for MatcherModel();

    v14 = sub_1ABF23C74();
    sub_1ABADD6D8(v14, v15, &v36);

    sub_1ABA8106C();

    v16 = sub_1ABF23C74();
    v18 = sub_1ABADD6D8(v16, v17, &v36);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_1ABA78000, v11, v12, "MatcherModel: using cached model %s for %s", v13, 0x16u);
    swift_arrayDestroy();
    sub_1ABA7BC34();
    sub_1ABA7BC34();
  }

  sub_1ABE0BDE4(&v30);
  return v9;
}

uint64_t MatcherModel.__allocating_init(key:)(unint64_t *a1)
{
  v2 = swift_allocObject();
  MatcherModel.init(key:)(a1);
  return v2;
}

uint64_t MatcherModelCache.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MatcherModelCache.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t MatcherModel.key.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_1ABE0B4D8()
{
  type metadata accessor for MatcherModelCache();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1ABC2633C();
  result = sub_1ABF239C4();
  *(v0 + 112) = result;
  qword_1EB5498C8 = v0;
  return result;
}

uint64_t static MatcherModel.sharedModel(for:)(uint64_t a1)
{
  *(v1 + 48) = *a1;
  *(v1 + 56) = *(a1 + 8);
  *(v1 + 72) = *(a1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1ABE0B578, 0, 0);
}

uint64_t sub_1ABE0B578()
{
  if (qword_1EB4D03D8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  *(v0 + 80) = qword_1EB5498C8;
  *(v0 + 16) = v3;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1ABE0B620);
}

void sub_1ABE0B620()
{
  sub_1ABE0AEFC(v0 + 2);
  v0[11] = 0;
  v1 = v0[1];

  __asm { BRAA            X2, X16 }
}

uint64_t *MatcherModel.init(key:)(unint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v1[2] = *a1;
  v1[3] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v9[0] = v3;
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = static MatcherModel.loadModel(key:)(v9);
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[6] = v7;
  }

  return v1;
}

id static MatcherModel.loadModel(key:)(unint64_t *a1)
{
  sub_1ABF21CF4();
  sub_1ABA7BB64();
  v41 = v3;
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  if (qword_1ED871B38 != -1)
  {
    sub_1ABA7D178(&qword_1ED871B38);
  }

  v12 = sub_1ABF237F4();
  sub_1ABA7AA24(v12, qword_1ED871B40);

  v13 = sub_1ABF237D4();
  v14 = sub_1ABF24654();

  v15 = os_log_type_enabled(v13, v14);
  v38 = v11;
  v39 = v10;
  v36 = v9;
  v37 = v8;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35 = v7;
    v18 = v17;
    v47 = v17;
    *v16 = 136315138;
    v43 = v8;
    v44 = v9;
    v45 = v10;
    v46 = v11;

    v19 = sub_1ABF23C74();
    v21 = sub_1ABADD6D8(v19, v20, &v47);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1ABA78000, v13, v14, "MatcherModel: loadModel: %s", v16, 0xCu);
    sub_1ABA84B54(v18);
    v7 = v35;
    sub_1ABA7BC34();
    sub_1ABA7BC34();
  }

  if (qword_1ED871EA0 != -1)
  {
    swift_once();
  }

  v23 = v36;
  v22 = v37;
  v25 = v38;
  v24 = v39;
  v26 = sub_1ABE0BE14(v37, v36, v39, v38, qword_1ED871EA8);
  if (v26)
  {
    v27 = v26;
    sub_1ABF21CA4();

    v28 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
    [v28 setComputeUnits_];
    [v28 setAllowBackgroundGPUCompute_];
    v29 = objc_autoreleasePoolPush();
    sub_1ABD32890();
    v30 = v40;
    (*(v41 + 16))(v40, v7, v42);
    v31 = v28;
    v32 = sub_1ABE0BB90(v30, v31);
    objc_autoreleasePoolPop(v29);

    (*(v41 + 8))(v7, v42);
    return v32;
  }

  else
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1ABF24AB4();

    v43 = 0xD000000000000025;
    v44 = 0x80000001ABF91F10;
    MEMORY[0x1AC5A9410](v22, v23);
    MEMORY[0x1AC5A9410](46, 0xE100000000000000);
    MEMORY[0x1AC5A9410](v24, v25);
    MEMORY[0x1AC5A9410](46, 0xE100000000000000);
    result = sub_1ABF24CD4();
    __break(1u);
  }

  return result;
}

id sub_1ABE0BB90(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1ABF21C54();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_1ABF21CF4();
    sub_1ABA7BBB0();
    v9 = *(v8 + 8);
    v10 = v6;
    v9(a1, v7);
  }

  else
  {
    v11 = v14[0];
    sub_1ABF21BE4();

    swift_willThrow();
    sub_1ABF21CF4();
    sub_1ABA7BBB0();
    (*(v12 + 8))(a1);
  }

  return v5;
}

uint64_t MatcherModel.deinit()
{

  return v0;
}

uint64_t MatcherModel.__deallocating_deinit()
{
  MatcherModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABE0BD58(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D8188, &qword_1ABF67410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1ABE0BE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1ABF23BD4();
  v7 = sub_1ABF23BD4();
  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

unint64_t sub_1ABE0BE90()
{
  result = qword_1EB4DA750;
  if (!qword_1EB4DA750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA750);
  }

  return result;
}

void sub_1ABE0BF0C(uint64_t a1)
{
  sub_1ABE0BFE8(319, &qword_1EB4CE770, MEMORY[0x1E69E6448], MEMORY[0x1E695FD58], MEMORY[0x1E695FCE8]);
  if (v1 <= 0x3F)
  {
    sub_1ABE0BFE8(319, &qword_1EB4DA768, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1ABE0BFE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Embedding.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE0C214()
{
  result = qword_1EB4DA770;
  if (!qword_1EB4DA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA770);
  }

  return result;
}

unint64_t sub_1ABE0C26C()
{
  result = qword_1EB4DA778;
  if (!qword_1EB4DA778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA778);
  }

  return result;
}

unint64_t sub_1ABE0C2C4()
{
  result = qword_1EB4DA780;
  if (!qword_1EB4DA780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA780);
  }

  return result;
}

unint64_t sub_1ABE0C318(uint64_t a1)
{
  v1 = sub_1ABF24D84();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1ABE0C364(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x6C65646F6DLL;
}

unint64_t sub_1ABE0C3E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABE0C318(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1ABE0C418@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABE0C364(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABE0C4F4(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1;
  }

  v6 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v6 = 11;
  }

  v7 = v6 | (v5 << 16);
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABAD219C(&qword_1EB4D1940, &qword_1ABF33AD0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1ABF34740;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 48) = 15;
  *(v9 + 56) = v7;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0;
  *(v9 + 88) = v8;
  *(v9 + 96) = 0;
  *(v9 + 104) = 1;

  return v9;
}

uint64_t sub_1ABE0C5E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1ABAD219C(&qword_1EB4D3EC8, &unk_1ABF41180);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v52 - v7;
  v64 = a1;
  v65 = a2;
  v68 = 9;
  v69 = 0xE100000000000000;
  v59 = sub_1ABAE28EC();
  v9 = sub_1ABF24884();
  result = sub_1ABE8AE5C(v9);
  v11 = 0;
  v13 = result + 56;
  v12 = *(result + 56);
  v57 = result;
  v14 = 1 << *(result + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v18 = HIBYTE(a2) & 0xF;
  v70 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v19 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v19 = 11;
  }

  v62 = v19 | (v18 << 16);
  v63 = a1;
  v60 = 4 * v18;
  v55 = result + 56;
  v56 = a3;
  if (a3)
  {
    v20 = a3;
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v53 = v20;
  v54 = v17;
  v58 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v21 = v11;
  if (!v16)
  {
    goto LABEL_13;
  }

  do
  {
    v11 = v21;
LABEL_16:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = (*(v57 + 48) + ((v11 << 10) | (16 * v22)));
    v24 = v23[1];
    v61 = *v23;

    v25 = 15;
    v26 = MEMORY[0x1E69E7CC0];
    while (v60 > v25 >> 14)
    {
      v64 = sub_1ABF23EC4();
      v65 = v27;
      v66 = v28;
      v67 = v29;
      v68 = v61;
      v69 = v24;
      v30 = sub_1ABF21F54();
      sub_1ABA7B9B4(v8, 1, 1, v30);
      sub_1ABBA2890();
      v31 = sub_1ABF248C4();
      v25 = v32;
      v34 = v33;
      sub_1ABA925A4(v8, &qword_1EB4D3EC8, &unk_1ABF41180);

      if (v34)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABADA538();
        v26 = v39;
      }

      v35 = v26[2];
      if (v35 >= v26[3] >> 1)
      {
        sub_1ABADA538();
        v26 = v40;
      }

      v26[2] = v35 + 1;
      v36 = &v26[2 * v35];
      v36[4] = v31;
      v36[5] = v25;
      if (v31 >> 14 >= v25 >> 14)
      {
        v25 = v62;
        v37 = sub_1ABF23D74();
        if ((v38 & 1) == 0)
        {
          v25 = v37;
        }
      }
    }

    v41 = v26[2];
    if (v41)
    {
      v42 = v41 - 1;
      for (i = v26 + 5; ; i += 2)
      {
        v44 = *i;
        v61 = *(i - 1);
        LOBYTE(v64) = 1;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABADA5F4();
          v58 = v50;
        }

        v45 = *(v58 + 16);
        if (v45 >= *(v58 + 24) >> 1)
        {
          sub_1ABADA5F4();
          v58 = v51;
        }

        v46 = v58;
        *(v58 + 16) = v45 + 1;
        v47 = v46 + 80 * v45;
        v48 = v70;
        *(v47 + 32) = v63;
        *(v47 + 40) = v48;
        *(v47 + 48) = v61;
        *(v47 + 56) = v44;
        *(v47 + 64) = 0;
        *(v47 + 72) = 0;
        v49 = v53;
        *(v47 + 80) = 0;
        *(v47 + 88) = v49;
        *(v47 + 96) = 0;
        *(v47 + 104) = 1;
        if (!v42)
        {
          break;
        }

        --v42;
      }

      v17 = v54;
      v13 = v55;
      goto LABEL_11;
    }

    v21 = v11;
    v17 = v54;
    v13 = v55;
  }

  while (v16);
LABEL_13:
  while (1)
  {
    v11 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v11 >= v17)
    {

      return v58;
    }

    v16 = *(v13 + 8 * v11);
    ++v21;
    if (v16)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE0CA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1ABE0CBF8(a1, a2);
  if (!v4)
  {
    v10 = v7;
    v11 = v8;
    v12 = v9;
    v13 = objc_autoreleasePoolPush();
    type metadata accessor for MentionGeneratorModel();
    swift_allocObject();
    v3 = sub_1ABE0E35C();
    if (*(v3 + 24) >= *(v11 + 16))
    {
      sub_1ABE0E2DC(v11);
      v17 = v15;

      objc_autoreleasePoolPop(v13);
      v3 = sub_1ABE0D4A0(a1, a2, v17, v10, v11, v12);
    }

    else
    {
      sub_1ABB32C5C();
      swift_allocError();
      *v14 = 0xD00000000000003FLL;
      *(v14 + 8) = 0x80000001ABF92010;
      *(v14 + 16) = 3;
      swift_willThrow();

      objc_autoreleasePoolPop(v13);
    }
  }

  return v3;
}

unint64_t *sub_1ABE0CBF8(uint64_t a1, uint64_t isUniquelyReferenced_nonNull_native)
{
  v6 = sub_1ABE858D0();
  v7 = v2;
  if (!v2)
  {
    v76 = v6;
    v77 = a1;
    v83 = a1;
    v84 = isUniquelyReferenced_nonNull_native;
    sub_1ABAE28EC();
    v8 = &v83;
    v9 = sub_1ABF24884();
    v78 = *(v9 + 16);
    v80 = v9;
    v3 = (v9 + 40);
    v10 = MEMORY[0x1E69E7CC0];
    for (i = isUniquelyReferenced_nonNull_native; ; isUniquelyReferenced_nonNull_native = i)
    {
      v11 = *(v80 + 16);
      if (v78 == v7)
      {
        break;
      }

      if (v7 >= v11)
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        sub_1ABD8EE6C();
        v81 = v72;
        goto LABEL_27;
      }

      v8 = *(v3 - 1);
      v11 = *v3;
      v12 = *(v10 + 16);
      if (v12)
      {
        v13 = v10;
        v10 = *(v10 + 16 + 16 * v12 + 8);

        v14 = sub_1ABF23D84();
        if (__OFADD__(sub_1ABF23D44(), 1))
        {
          goto LABEL_65;
        }

        v15 = sub_1ABF23D84();
        if (v15 >> 14 < v14 >> 14)
        {
          goto LABEL_66;
        }

        v8 = v15;
        v10 = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABADA538();
          v10 = v20;
        }

        v16 = *(v10 + 16);
        v17 = v16 + 1;
        if (v16 >= *(v10 + 24) >> 1)
        {
          sub_1ABADA538();
          v10 = v18;
        }
      }

      else
      {

        sub_1ABF23D44();
        v8 = sub_1ABF23D84();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABADA538();
          v10 = v21;
        }

        v16 = *(v10 + 16);
        v17 = v16 + 1;
        if (v16 >= *(v10 + 24) >> 1)
        {
          sub_1ABADA538();
          v10 = v22;
        }

        v14 = 15;
      }

      *(v10 + 16) = v17;
      v19 = (v10 + 16 * v16);
      v19[4] = v14;
      v19[5] = v8;

      v3 += 2;
      ++v7;
    }

    if (v11)
    {
      v82 = MEMORY[0x1E69E7CC0];
      sub_1ABADDBD4(0, v11, 0);
      v23 = v82;
      v24 = (v80 + 40);
      do
      {
        v25 = *(v24 - 1);
        v26 = *v24;
        v83 = 32;
        v84 = 0xE100000000000000;

        MEMORY[0x1AC5A9410](v25, v26);

        v27 = v83;
        v3 = v84;
        v29 = v82[2];
        v28 = v82[3];
        if (v29 >= v28 >> 1)
        {
          sub_1ABADDBD4(v28 > 1, v29 + 1, 1);
        }

        v82[2] = v29 + 1;
        v30 = &v82[2 * v29];
        v30[4] = v27;
        v30[5] = v3;
        v24 += 2;
        --v11;
      }

      while (v11);

      isUniquelyReferenced_nonNull_native = i;
    }

    else
    {

      v23 = MEMORY[0x1E69E7CC0];
    }

    v10 = v76;
    if (!v23[2])
    {

      sub_1ABB32C5C();
      swift_allocError();
      *v67 = xmmword_1ABF67750;
      *(v67 + 16) = 3;
      swift_willThrow();
LABEL_62:

      return v3;
    }

    v32 = v23[4];
    v31 = v23[5];

    v33 = sub_1ABAA958C(1uLL, v32, v31);
    v11 = MEMORY[0x1AC5A9330](v33);
    v34 = v23;
    v8 = v35;

    v81 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_27:
    if (!v81[2])
    {
      __break(1u);
LABEL_74:
      result = sub_1ABF25104();
      __break(1u);
      return result;
    }

    v36 = v81 + 5;
    v81[4] = v11;
    v81[5] = v8;

    swift_bridgeObjectRetain_n();
    v3 = sub_1ABF239C4();
    v37 = 0;
    v38 = 0;
    v79 = v81[2];
LABEL_29:
    v8 = &v36[2 * v37];
    while (v79 != v37)
    {
      if (v37 >= v81[2])
      {
        goto LABEL_67;
      }

      v39 = *(v8 - 1);
      v40 = *v8;

      sub_1ABE85A28(v39, v40, v10);
      v11 = v41;
      v42 = *(v41 + 16);
      if (v42)
      {
        v74 = v36;
        v43 = 0;
        v73 = v37 + 1;
        v8 = v38;
        v75 = v37;
        while (v43 < *(v11 + 16))
        {
          v44 = v11;
          v11 = v42;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v83 = v3;
          v45 = v8;
          v46 = v8;
          v8 = v3;
          v47 = sub_1ABAFF5A4(v46);
          if (__OFADD__(v3[2], (v48 & 1) == 0))
          {
            goto LABEL_69;
          }

          v10 = v47;
          v49 = v48;
          sub_1ABAD219C(&qword_1EB4DA7A0, &qword_1ABF67788);
          if (sub_1ABF24C64())
          {
            v50 = sub_1ABAFF5A4(v45);
            isUniquelyReferenced_nonNull_native = i;
            if ((v49 & 1) != (v51 & 1))
            {
              goto LABEL_74;
            }

            v10 = v50;
          }

          else
          {
            isUniquelyReferenced_nonNull_native = i;
          }

          v42 = v11;
          v8 = v45;
          v3 = v83;
          v11 = v44;
          if (v49)
          {
            *(*(v83 + 56) + 8 * v10) = v75;
          }

          else
          {
            *(v83 + 8 * (v10 >> 6) + 64) |= 1 << v10;
            *(v3[6] + 8 * v10) = v45;
            *(v3[7] + 8 * v10) = v75;
            v52 = v3[2];
            v53 = __OFADD__(v52, 1);
            v54 = v52 + 1;
            if (v53)
            {
              goto LABEL_71;
            }

            v3[2] = v54;
          }

          v10 = v76;
          if (v45 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_70;
          }

          ++v43;
          v8 = (v45 + 1);
          if (v42 == v43)
          {
            v38 = (v45 + 1);

            v37 = v73;
            v36 = v74;
            goto LABEL_29;
          }
        }

        goto LABEL_68;
      }

      v8 += 2;
      ++v37;
    }

    v83 = v81;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABAAA5C0();
    v55 = sub_1ABF23B54();
    v57 = v56;

    v58 = v55 == v77 && v57 == isUniquelyReferenced_nonNull_native;
    if (!v58 && (sub_1ABF25054() & 1) == 0)
    {

      v83 = 0;
      v84 = 0xE000000000000000;
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD00000000000002CLL, 0x80000001ABF92110);
      MEMORY[0x1AC5A9410](v77, isUniquelyReferenced_nonNull_native);
      MEMORY[0x1AC5A9410](0xD000000000000029, 0x80000001ABF92140);
      MEMORY[0x1AC5A9410](v55, v57);

      v68 = v83;
      v69 = v84;
      sub_1ABB32C5C();
      swift_allocError();
      *v70 = v68;
      *(v70 + 8) = v69;
      *(v70 + 16) = 6;
      swift_willThrow();
      goto LABEL_62;
    }

    sub_1ABE85A28(v55, v57, v10);
    v60 = v59;

    v61 = *(v60 + 16);
    if (v61)
    {
      v83 = MEMORY[0x1E69E7CC0];
      sub_1ABADDE7C(0, v61, 0);
      v62 = v83;
      v63 = *(v83 + 16);
      v64 = 32;
      do
      {
        v65 = *(v60 + v64);
        v83 = v62;
        v66 = *(v62 + 24);
        if (v63 >= v66 >> 1)
        {
          sub_1ABADDE7C((v66 > 1), v63 + 1, 1);
          v62 = v83;
        }

        *(v62 + 16) = v63 + 1;
        *(v62 + 4 * v63 + 32) = v65;
        v64 += 4;
        ++v63;
        --v61;
      }

      while (v61);
    }

    else
    {
    }
  }

  return v3;
}

uint64_t sub_1ABE0D4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1ABAD219C(&qword_1EB4DA788, &qword_1ABF67760);
  v8 = sub_1ABF239C4();
  v9 = 0;
  v74 = *(a3 + 16);
  v10 = (a3 + 36);
  v73 = a4;
  while (v74 != v9)
  {
    if (!*(a4 + 16) || (v11 = *(v10 - 1), v12 = *v10, v13 = sub_1ABAFF5A4(v9), (v14 & 1) == 0))
    {
      v27 = 0x80000001ABF92050;
      sub_1ABB32C5C();
      swift_allocError();
      v29 = 0xD000000000000030;
LABEL_34:
      *v28 = v29;
      *(v28 + 8) = v27;
      *(v28 + 16) = 3;
      swift_willThrow();
    }

    v15 = *(*(a4 + 56) + 8 * v13);
    swift_isUniquelyReferenced_nonNull_native();
    *&__dst[0] = v8;
    v16 = sub_1ABAFF5A4(v15);
    if (__OFADD__(v8[2], (v17 & 1) == 0))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v18 = v16;
    v19 = v17;
    sub_1ABAD219C(&qword_1EB4DA790, &qword_1ABF67768);
    if (sub_1ABF24C64())
    {
      v20 = sub_1ABAFF5A4(v15);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_52;
      }

      v18 = v20;
    }

    v8 = *&__dst[0];
    if (v19)
    {
      v22 = (*(*&__dst[0] + 56) + 8 * v18);
      *v22 = v11;
      v22[1] = v12;
    }

    else
    {
      *(*&__dst[0] + 8 * (v18 >> 6) + 64) |= 1 << v18;
      *(v8[6] + 8 * v18) = v15;
      v23 = (v8[7] + 8 * v18);
      *v23 = v11;
      v23[1] = v12;
      v24 = v8[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_44;
      }

      v8[2] = v26;
    }

    v10 += 2;
    ++v9;
    a4 = v73;
  }

  sub_1ABAD219C(&qword_1EB4DA798, &unk_1ABF67770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF3BFB0;
  *(inited + 32) = 1;
  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_48;
  }

  v31 = inited;
  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), __dst);
  v32 = __dst[1];
  v33 = __dst[2];
  *(v31 + 40) = __dst[0];
  *(v31 + 56) = v32;
  *(v31 + 72) = v33;
  *(v31 + 80) = 2;
  if (!_Records_GDEntityClass_records)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA8), *(_Records_GDEntityClass_records + 0xB0), *(_Records_GDEntityClass_records + 0xB0 + 8), __dst);
  v34 = __dst[1];
  v35 = __dst[2];
  *(v31 + 88) = __dst[0];
  *(v31 + 104) = v34;
  *(v31 + 120) = v35;
  *(v31 + 128) = 3;
  if (!_Records_GDEntityClass_records)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x2E8), *(_Records_GDEntityClass_records + 0x2F0), *(_Records_GDEntityClass_records + 0x2F8), __dst);
  v36 = __dst[1];
  v37 = __dst[2];
  *(v31 + 136) = __dst[0];
  *(v31 + 152) = v36;
  *(v31 + 168) = v37;
  *(v31 + 176) = 4;
  if (_Records_GDEntityClass_records)
  {
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xD8), *(_Records_GDEntityClass_records + 0xE0), *(_Records_GDEntityClass_records + 0xE0 + 8), __dst);
    v38 = __dst[1];
    v39 = __dst[2];
    *(v31 + 184) = __dst[0];
    *(v31 + 200) = v38;
    *(v31 + 216) = v39;
    v40 = sub_1ABF239C4();
    v41 = 0;
    v42 = *(a6 + 16);
    v43 = a6 + 32;
    v44 = MEMORY[0x1E69E7CC0];
    v45 = MEMORY[0x1E69E7CC0];
    while (v42 != v41)
    {
      if (v41 >= v42)
      {
        goto LABEL_45;
      }

      v46 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_46;
      }

      if (!v8[2] || (v75 = *(v43 + 16 * v41), v47 = sub_1ABAFF5A4(v41), (v48 & 1) == 0))
      {

        v27 = 0x80000001ABF92090;
        sub_1ABB32C5C();
        swift_allocError();
        v29 = 0xD00000000000002DLL;
        goto LABEL_34;
      }

      if (*(v40 + 16) && (v49 = v8[7] + 8 * v47, v50 = *(v49 + 4), v51 = sub_1ABAF88A0(*v49), (v52 & 1) != 0))
      {
        v53 = *(v40 + 56) + 40 * v51;
        v54 = *(v53 + 8);
        v72 = *v53;
        v55 = *(v53 + 24);
        v67 = *(v53 + 16);
        v66 = *(v53 + 32);
        sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_1ABF34740;
        *(v56 + 32) = v72;
        *(v56 + 40) = v54;
        *(v56 + 48) = v67;
        *(v56 + 56) = v55;
        *(v56 + 64) = v66;
        LOBYTE(__dst[0]) = 0;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABADA5F4();
          v45 = v59;
        }

        v57 = *(v45 + 16);
        if (v57 >= *(v45 + 24) >> 1)
        {
          sub_1ABADA5F4();
          v45 = v60;
        }

        *(v45 + 16) = v57 + 1;
        v58 = v45 + 80 * v57;
        *(v58 + 32) = a1;
        *(v58 + 40) = a2;
        *(v58 + 48) = v75;
        *(v58 + 64) = 0;
        *(v58 + 72) = 0;
        *(v58 + 80) = 0;
        *(v58 + 88) = v56;
        *(v58 + 96) = v50;
        *(v58 + 104) = 0;
        v41 = v46;
        v44 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        ++v41;
      }
    }

    v62 = v44;
    v63 = 0;
    v79 = v62;
    v64 = *(v45 + 16);
    for (i = 32; ; i += 80)
    {
      if (v64 == v63)
      {

        return v79;
      }

      if (v63 >= *(v45 + 16))
      {
        goto LABEL_47;
      }

      memcpy(__dst, (v45 + i), 0x49uLL);
      memcpy(__src, __dst, 0x49uLL);
      sub_1ABB3E11C(__dst, v76);
      sub_1ABE0DB4C(&v79, __src, a1, a2);
      if (v68)
      {
        break;
      }

      ++v63;
      memcpy(v76, __src, 0x49uLL);
      sub_1ABBC3DD0(v76);
    }

    memcpy(v76, __src, 0x49uLL);
    sub_1ABBC3DD0(v76);
  }

LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

void sub_1ABE0DB4C(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, a2, 0x49uLL);
  if (!*(*a1 + 16))
  {
    sub_1ABB3E11C(__dst, __src);
    sub_1ABB4DDD0();
    v24 = *(*a1 + 16);
    sub_1ABB4E1D4(v24);
    v25 = *a1;
    *(v25 + 16) = v24 + 1;
    v26 = v25 + 80 * v24;
LABEL_21:
    memcpy((v26 + 32), __dst, 0x49uLL);
    *a1 = v25;
    return;
  }

  sub_1ABE0DEF4(__src);
  v7 = __src[1];
  v45 = a3;
  if (__src[1] != 1)
  {
    v18 = __src[0];
    v23 = __src[2];
    v19 = __src[3];
    v16 = __src[4];
    v14 = __src[5];
    v15 = __src[6];
    v21 = __src[7];
    v22 = __src[8];
    v20 = __src[9];
    goto LABEL_9;
  }

  memcpy(v48, __src, 0x49uLL);
  sub_1ABA925A4(v48, &qword_1EB4D4C60, &qword_1ABF67780);
  v8 = *a1;
  v9 = *(*a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABD8F164();
    v8 = v41;
  }

  v10 = *(v8 + 16);
  if (v9 - 1 < v10)
  {
    v44 = a4;
    v43 = v10 - 1;
    v11 = v10 - v9;
    v12 = v8 + 80 * v9;
    v46 = *(v12 + 24);
    v13 = *(v12 + 8);
    v51 = *(v12 + 16);
    v14 = *(v12 - 8);
    v15 = *v12;
    v17 = *(v12 - 24);
    v16 = *(v12 - 16);
    v7 = *(v12 - 40);
    v42 = *(v12 - 32);
    v18 = *(v12 - 48);
    sub_1ABADD4E4((v12 + 32), v11, (v12 - 48));
    v19 = v17;
    v20 = v46;
    v21 = v13;
    v22 = v51;
    *(v8 + 16) = v43;
    a4 = v44;
    *a1 = v8;
    v23 = v42;
LABEL_9:
    __src[0] = v18;
    __src[1] = v7;
    __src[2] = v23;
    __src[3] = v19;
    __src[4] = v16;
    __src[5] = v14;
    __src[6] = v15;
    __src[7] = v21;
    __src[8] = v22;
    LOBYTE(__src[9]) = v20 & 1;
    if (!v7 || !__dst[1])
    {
      sub_1ABBC3DD0(__src);
      sub_1ABB32C5C();
      swift_allocError();
      *v31 = 0xD000000000000041;
      *(v31 + 8) = 0x80000001ABF920C0;
      *(v31 + 16) = 3;
      swift_willThrow();
      return;
    }

    v47 = v20;
    v27 = v23;
    v51 = v22;
    v28 = __dst[3];
    if (v21)
    {
      if (!__dst[7])
      {
        goto LABEL_20;
      }

      v29 = v21;
      v30 = sub_1ABB49178(v21, __dst[7]);
      v21 = v29;
      if ((v30 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else if (__dst[7])
    {
      goto LABEL_20;
    }

    v32 = v21;

    v33 = a4;
    v34 = sub_1ABF23E34();

    if (v34 <= 1)
    {
      if (v28 >> 14 >= v27 >> 14)
      {

        sub_1ABBC3DD0(__src);
        v48[0] = v47 & 1;
        sub_1ABB4DDD0();
        v35 = *(*a1 + 16);
        sub_1ABB4E1D4(v35);
        v36 = *a1;
        *(v36 + 16) = v35 + 1;
        v37 = v36 + 80 * v35;
        *(v37 + 32) = v45;
        *(v37 + 40) = v33;
        *(v37 + 48) = v27;
        *(v37 + 56) = v28;
        *(v37 + 64) = 0;
        *(v37 + 72) = 0;
        *(v37 + 80) = 0;
        *(v37 + 88) = v32;
        *(v37 + 96) = v51;
        *(v37 + 104) = v47 & 1;
        *a1 = v36;
        return;
      }

      goto LABEL_23;
    }

LABEL_20:
    sub_1ABB4DDD0();
    v38 = *(*a1 + 16);
    sub_1ABB4E1D4(v38);
    v39 = *a1;
    *(v39 + 16) = v38 + 1;
    memcpy((v39 + 80 * v38 + 32), __src, 0x49uLL);
    *a1 = v39;
    sub_1ABB3E11C(__dst, v48);
    sub_1ABB4DDD0();
    v40 = *(*a1 + 16);
    sub_1ABB4E1D4(v40);
    v25 = *a1;
    *(v25 + 16) = v40 + 1;
    v26 = v25 + 80 * v40;
    goto LABEL_21;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1ABE0DEF4(void *a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABD8F164();
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    memcpy(a1, (v3 + 80 * v4 - 48), 0x49uLL);
    *(v3 + 16) = v5;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }
}

_BYTE *storeEnumTagSinglePayload for MentionGenerationAlgorithm(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE0E04C()
{
  result = qword_1EB4DA7A8;
  if (!qword_1EB4DA7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA7A8);
  }

  return result;
}

unint64_t sub_1ABE0E0A0()
{
  result = qword_1ED871610;
  if (!qword_1ED871610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871610);
  }

  return result;
}

uint64_t sub_1ABE0E0F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v32 = MEMORY[0x1E69E7CC0];
  sub_1ABADEBEC(0, v6, 0);
  result = v32;
  v30 = a1;
  v31 = a2;
  if (!v6)
  {
    v13 = v4;
    v14 = v5;
    goto LABEL_13;
  }

  v8 = (a1 + 32);
  v9 = (a2 + 32);
  v10 = v6;
  v11 = v4;
  v12 = v5;
  v13 = v4;
  v14 = v5;
  while (v11)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    v15 = *v8;
    v16 = *v9;
    v33 = result;
    v18 = *(result + 16);
    v17 = *(result + 24);
    if (v18 >= v17 >> 1)
    {
      v28 = v14;
      v29 = v13;
      v27 = *v8;
      sub_1ABADEBEC((v17 > 1), v18 + 1, 1);
      v15 = v27;
      v14 = v28;
      v13 = v29;
      result = v33;
    }

    *(result + 16) = v18 + 1;
    v19 = result + 8 * v18;
    --v12;
    *(v19 + 32) = v15;
    *(v19 + 36) = v16;
    --v11;
    ++v9;
    ++v8;
    if (!--v10)
    {
LABEL_13:
      while (v13 != v6)
      {
        if (v6 >= v13)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_25;
        }

        if (v14 == v6)
        {
          return result;
        }

        if (v6 >= v14)
        {
          goto LABEL_26;
        }

        v20 = *(v30 + 32 + 4 * v6);
        v21 = *(v31 + 32 + 4 * v6);
        v34 = result;
        v23 = *(result + 16);
        v22 = *(result + 24);
        if (v23 >= v22 >> 1)
        {
          v25 = v13;
          v26 = v14;
          sub_1ABADEBEC((v22 > 1), v23 + 1, 1);
          v14 = v26;
          v13 = v25;
          result = v34;
        }

        *(result + 16) = v23 + 1;
        v24 = result + 8 * v23;
        *(v24 + 32) = v20;
        *(v24 + 36) = v21;
        ++v6;
      }

      return result;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1ABE0E2DC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1ABE0E7A0(a1, &v3, &v4);
  objc_autoreleasePoolPop(v2);
}

unsigned __int8 *sub_1ABE0E35C()
{
  type metadata accessor for MentionGenerationModel();
  v2 = sub_1ABED4DD0([objc_allocWithZone(MEMORY[0x1E695FEB0]) initWithComputeUnits_]);
  if (v1)
  {
    goto LABEL_79;
  }

  *(v0 + 16) = v2;
  v3 = [*(v2 + 16) modelDescription];
  v4 = [v3 metadata];

  type metadata accessor for MLModelMetadataKey(0);
  sub_1ABBA4FB8();
  v5 = sub_1ABF23974();

  sub_1ABAD56C8(*MEMORY[0x1E695FDB0], v5);

  if (v33[3])
  {
    sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
    if (swift_dynamicCast())
    {
      v6 = sub_1ABA94FF4(0x74676E654C78616DLL, 0xE900000000000068);
      v8 = v7;

      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    sub_1ABB384B8(v33);
  }

  v6 = 0;
  v8 = 0xE000000000000000;
LABEL_8:
  v10 = HIBYTE(v8) & 0xF;
  v11 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v12 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

LABEL_78:
    sub_1ABBA4EBC();
    swift_allocError();
    *v31 = 5;
    swift_willThrow();

LABEL_79:
    swift_deallocPartialClassInstance();
    return v0;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    v14 = sub_1ABB81A68(v6, v8, 10);
    v30 = v32;
LABEL_77:

    if ((v30 & 1) == 0)
    {
      *(v0 + 24) = v14;
      return v0;
    }

    goto LABEL_78;
  }

  if ((v8 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1ABF24B74();
    }

    v13 = *result;
    if (v13 == 43)
    {
      if (v11 >= 1)
      {
        if (v11 != 1)
        {
          v14 = 0;
          if (result)
          {
            while (1)
            {
              sub_1ABA7D44C();
              if (!v16 & v15)
              {
                goto LABEL_75;
              }

              sub_1ABA8F22C();
              if (!v16)
              {
                goto LABEL_75;
              }

              v14 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                goto LABEL_75;
              }

              sub_1ABA7E4F0();
              if (v16)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_66;
        }

        goto LABEL_75;
      }

      goto LABEL_87;
    }

    if (v13 != 45)
    {
      if (v11)
      {
        v14 = 0;
        if (result)
        {
          while (1)
          {
            v26 = *result - 48;
            if (v26 > 9)
            {
              goto LABEL_75;
            }

            v27 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              goto LABEL_75;
            }

            v14 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              goto LABEL_75;
            }

            ++result;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_66;
      }

LABEL_75:
      v14 = 0;
      v19 = 1;
      goto LABEL_76;
    }

    if (v11 >= 1)
    {
      if (v11 != 1)
      {
        v14 = 0;
        if (result)
        {
          while (1)
          {
            sub_1ABA7D44C();
            if (!v16 & v15)
            {
              goto LABEL_75;
            }

            sub_1ABA8F22C();
            if (!v16)
            {
              goto LABEL_75;
            }

            v14 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              goto LABEL_75;
            }

            sub_1ABA7E4F0();
            if (v16)
            {
              goto LABEL_76;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_76:
        v30 = v19;
        goto LABEL_77;
      }

      goto LABEL_75;
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v33[0] = v6;
  v33[1] = v8 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v10)
      {
        while (1)
        {
          sub_1ABA7D44C();
          if (!v16 & v15)
          {
            break;
          }

          sub_1ABA8F22C();
          if (!v16)
          {
            break;
          }

          v14 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            break;
          }

          sub_1ABA7E4F0();
          if (v16)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_75;
    }

    if (v10)
    {
      if (v10 != 1)
      {
        sub_1ABA8095C();
        while (1)
        {
          sub_1ABA7D44C();
          if (!v16 & v15)
          {
            break;
          }

          sub_1ABA8F22C();
          if (!v16)
          {
            break;
          }

          v14 = v21 - v20;
          if (__OFSUB__(v21, v20))
          {
            break;
          }

          sub_1ABA7E4F0();
          if (v16)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_75;
    }

    goto LABEL_86;
  }

  if (v10)
  {
    if (v10 != 1)
    {
      sub_1ABA8095C();
      while (1)
      {
        sub_1ABA7D44C();
        if (!v16 & v15)
        {
          break;
        }

        sub_1ABA8F22C();
        if (!v16)
        {
          break;
        }

        v14 = v25 + v24;
        if (__OFADD__(v25, v24))
        {
          break;
        }

        sub_1ABA7E4F0();
        if (v16)
        {
          goto LABEL_76;
        }
      }
    }

    goto LABEL_75;
  }

LABEL_88:
  __break(1u);
  return result;
}

void sub_1ABE0E7A0(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1ABF3BF80;
  sub_1ABB373C8();
  *(v7 + 32) = sub_1ABF24794();
  v8 = *(a1 + 16);
  *(v7 + 40) = sub_1ABF24404();
  v9 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v10 = sub_1ABE0F040(v7, 131104);
  if (v3)
  {

LABEL_3:
    sub_1ABBA4EBC();
    v11 = swift_allocError();
    *v12 = 1;
    swift_willThrow();
    v13 = a2;
LABEL_14:
    *v13 = v11;
    return;
  }

  if (!v10)
  {
    goto LABEL_3;
  }

  v54 = a3;
  v14 = v10;
  v15 = [v10 count];
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v16 = v15;
  v17 = v14;
  if (!v15)
  {
    goto LABEL_11;
  }

  if (!v8)
  {
    goto LABEL_44;
  }

  if (v15 > v8)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v18 = 0;
  v19 = a1 + 32;
  v17 = v14;
  do
  {
    v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
    [v17 setObject:v20 atIndexedSubscript:v18];

    ++v18;
  }

  while (v16 != v18);
LABEL_11:

  sub_1ABED5398(v17);

  v22 = sub_1ABED467C(0x615F656375646572, 0xEF305F78616D6772);

  v13 = a2;
  if (!v22 || (v23 = [v22 multiArrayValue], v22, !v23))
  {
    sub_1ABBA4EBC();
    v11 = swift_allocError();
    *v21 = 6;
    swift_willThrow();

    goto LABEL_13;
  }

  v24 = [v23 count];
  if ((v24 & 0x8000000000000000) != 0)
  {
    goto LABEL_46;
  }

  v25 = v24;
  v53 = v17;
  v55 = v23;
  v26 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v27 = 0;
    v28 = MEMORY[0x1E69E7CC0];
    do
    {
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1ABF3BF80;
      *(v29 + 32) = sub_1ABF24794();
      *(v29 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v30 = sub_1ABF240C4();

      v31 = [v55 objectForKeyedSubscript_];

      v32 = sub_1ABF251B4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAD9278();
        v28 = v34;
      }

      v33 = *(v28 + 16);
      if (v33 >= *(v28 + 24) >> 1)
      {
        sub_1ABAD9278();
        v28 = v35;
      }

      ++v27;
      *(v28 + 16) = v33 + 1;
      *(v28 + 4 * v33 + 32) = v32;
    }

    while (v25 != v27);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v36 = sub_1ABED467C(0x6D5F656375646572, 0xEC000000305F7861);

  if (!v36 || (v37 = [v36 multiArrayValue], v36, !v37))
  {

    sub_1ABBA4EBC();
    v11 = swift_allocError();
    *v50 = 6;
    swift_willThrow();

    goto LABEL_13;
  }

  v38 = [v37 count];
  if ((v38 & 0x8000000000000000) == 0)
  {
    v39 = v38;
    if (v38)
    {
      v40 = 0;
      v26 = MEMORY[0x1E69E7CC0];
      do
      {
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1ABF3BF80;
        *(v41 + 32) = sub_1ABF24794();
        *(v41 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        v42 = sub_1ABF240C4();

        v43 = [v37 objectForKeyedSubscript_];

        sub_1ABF24364();
        v45 = v44;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABADA2B4();
          v26 = v48;
        }

        v46 = *(v26 + 16);
        v47 = v46 + 1;
        if (v46 >= *(v26 + 24) >> 1)
        {
          sub_1ABADA2B4();
          v26 = v49;
        }

        ++v40;
        *(v26 + 16) = v47;
        *(v26 + 4 * v46 + 32) = v45;
      }

      while (v39 != v40);
    }

    else
    {
      v47 = *(v26 + 16);
    }

    if (v47 == *(v28 + 16))
    {

      v51 = sub_1ABE0E0F4(v28, v26);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      *v54 = v51;
      return;
    }

    sub_1ABBA4EBC();
    v11 = swift_allocError();
    *v52 = 6;
    swift_willThrow();

LABEL_13:

    goto LABEL_14;
  }

LABEL_47:
  __break(1u);
}

id sub_1ABE0EF20(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x64695F6E656B6F74 && a2 == 0xE900000000000073;
  if (v3 || (sub_1ABF25054()) && (v4 = *(v2 + 16)) != 0)
  {
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  else
  {
    return 0;
  }
}

id sub_1ABE0F040(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  sub_1ABB373C8();
  v4 = sub_1ABF240C4();

  v9[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  return v5;
}

uint64_t MLFeatureProvider.dictionary.getter(uint64_t a1)
{
  v2 = [v1 featureNames];
  v3 = sub_1ABF24394();

  sub_1ABBA043C();
  v14 = sub_1ABF239C4();
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 56);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; i = v9)
  {
    v9 = i;
LABEL_8:
    v10 = (*(v3 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v6)))));
    v11 = v10[1];
    v13[0] = *v10;
    v13[1] = v11;

    sub_1ABE0F2D8(&v14, v13, v1);
    v6 &= v6 - 1;
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v14;
    }

    v6 = *(v3 + 56 + 8 * v9);
    ++i;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_1ABE0F2D8(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = sub_1ABF23BD4();
  v8 = [a3 featureValueForName_];

  if (v8)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *a1;
    sub_1ABAFBF70(v8, v5, v6, isUniquelyReferenced_nonNull_native);
    *a1 = v16;
  }

  else
  {
  }
}

uint64_t ModelError.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

unint64_t sub_1ABE0F438()
{
  result = qword_1EB4DA7B0;
  if (!qword_1EB4DA7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA7B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ModelError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        break;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

void sub_1ABE0F568(void (*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  while (v7 != v6)
  {
    if (v6 >= v7)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v9 = *(type metadata accessor for KGQ.Value(0) - 8);
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_15;
    }

    a1(&v17, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {

      return;
    }

    v11 = v18;
    ++v6;
    if (v18)
    {
      v19 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABAAA4F4();
        v8 = v15;
      }

      v12 = *(v8 + 16);
      v13 = v12 + 1;
      if (v12 >= *(v8 + 24) >> 1)
      {
        sub_1ABAAA4F4();
        v13 = v12 + 1;
        v8 = v16;
      }

      *(v8 + 16) = v13;
      v14 = v8 + 16 * v12;
      *(v14 + 32) = v19;
      *(v14 + 40) = v11;
      v6 = v10;
    }
  }
}

uint64_t sub_1ABE0F6E0(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    while (1)
    {
      v21 = *v6;

      a1(&v17, &v21);
      if (v3)
      {
        break;
      }

      if (*(&v18 + 1))
      {
        v13 = v17;
        v14 = v18;
        v15 = v19;
        v16 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABADBA0C();
          v7 = v10;
        }

        v8 = *(v7 + 16);
        if (v8 >= *(v7 + 24) >> 1)
        {
          sub_1ABADBA0C();
          v7 = v11;
        }

        *(v7 + 16) = v8 + 1;
        v9 = (v7 + (v8 << 6));
        v9[4] = v15;
        v9[5] = v16;
        v9[2] = v13;
        v9[3] = v14;
      }

      else
      {
        sub_1ABAB480C(&v17, &qword_1EB4D9310, &unk_1ABF5FD70);
      }

      ++v6;
      if (!--v5)
      {
        return v7;
      }
    }
  }

  return v7;
}

void sub_1ABE0F86C()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v35 = v4;
  v6 = v5;
  v7 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7AB80(v7);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8176C();
  v9 = sub_1ABF22424();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7AC18();
  v34 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v30 = &v29 - v14;
  v31 = v15;
  v16 = *(v3 + 16);
  v17 = (v3 + 32);
  v33 = (v15 + 32);
  v39 = MEMORY[0x1E69E7CC0];
  v32 = v6;
  if (v16)
  {
    while (1)
    {
      memcpy(v38, v17, 0x69uLL);
      memcpy(v37, v17, 0x69uLL);
      sub_1ABE10DCC(v38, v36);
      v6(v37);
      if (v0)
      {
        break;
      }

      memcpy(v36, v37, 0x69uLL);
      sub_1ABE10E28(v36);
      v18 = sub_1ABA9A69C();
      if (sub_1ABA7E1E0(v18, v19, v9) == 1)
      {
        sub_1ABAB480C(v1, &qword_1EB4DB820, &qword_1ABF500A0);
      }

      else
      {
        v20 = v9;
        v21 = *v33;
        v22 = v30;
        (*v33)(v30, v1, v20);
        v23 = v22;
        v24 = v20;
        v21(v34, v23, v20);
        v25 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABADC9D0();
          v25 = v27;
        }

        v26 = *(v25 + 16);
        v39 = v25;
        if (v26 >= *(v25 + 24) >> 1)
        {
          sub_1ABADC9D0();
          v39 = v28;
        }

        *(v39 + 16) = v26 + 1;
        v21((v39 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26), v34, v24);
        v9 = v24;
        v6 = v32;
      }

      v17 += 112;
      if (!--v16)
      {
        goto LABEL_13;
      }
    }

    memcpy(v36, v37, 0x69uLL);
    sub_1ABE10E28(v36);
  }

LABEL_13:
  sub_1ABA7BC90();
}

uint64_t sub_1ABE0FC54()
{
  sub_1ABAD219C(&qword_1EB4DA7E0, &qword_1ABF67A68);
  v0 = sub_1ABF22F54();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABF3BF90;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69B28F8], v0);
  v6(v5 + v2, *MEMORY[0x1E69B2898], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E69B28C8], v0);
  v6(v5 + 3 * v2, *MEMORY[0x1E69B28A0], v0);
  v6(v5 + 4 * v2, *MEMORY[0x1E69B28D8], v0);
  result = (v6)(v5 + 5 * v2, *MEMORY[0x1E69B28D0], v0);
  qword_1ED870AD8 = v4;
  return result;
}

uint64_t sub_1ABE0FDF0()
{
  sub_1ABAD219C(&qword_1EB4DA7E0, &qword_1ABF67A68);
  v0 = sub_1ABF22F54();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABF3EB10;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69B28F8], v0);
  v6(v5 + v2, *MEMORY[0x1E69B28C8], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E69B28A0], v0);
  v6(v5 + 3 * v2, *MEMORY[0x1E69B28D8], v0);
  result = (v6)(v5 + 4 * v2, *MEMORY[0x1E69B28D0], v0);
  qword_1ED870AC0 = v4;
  return result;
}

void sub_1ABE0FF74()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v53 = v3;
  v55[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  sub_1ABA7AB80(v4);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v54 = v52 - v6;
  v7 = sub_1ABF21F54();
  sub_1ABA7BB64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  v13 = v12 - v11;
  v14 = sub_1ABC2F83C(0xD000000000000016, 0x80000001ABF92210);
  p_cache = &OBJC_METACLASS____TtC20IntelligencePlatform3Add.cache;
  if (v0)
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7D4EC();
      swift_once();
    }

    v17 = sub_1ABF237F4();
    sub_1ABA7AA24(v17, qword_1ED871B20);
    v18 = v0;
    v19 = sub_1ABF237D4();
    v20 = sub_1ABF24664();

    if (os_log_type_enabled(v19, v20))
    {
      sub_1ABA8C938();
      v21 = swift_slowAlloc();
      v22 = v7;
      v23 = swift_slowAlloc();
      *v21 = 138412290;
      v24 = v0;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1ABA78000, v19, v20, "MorphunTokenizer: Failed to check app id entitlement: %@. Will use XPC to request asset.", v21, 0xCu);
      sub_1ABAB480C(v23, &unk_1EB4D57F0, &qword_1ABF390C0);
      v7 = v22;
      p_cache = (&OBJC_METACLASS____TtC20IntelligencePlatform3Add + 16);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    else
    {
    }

    goto LABEL_14;
  }

  if (v15)
  {
    if (v14 == 0xD00000000000001FLL && v15 == 0x80000001ABF92230)
    {

LABEL_26:
      static MorphunTokenizer.requestAssetDownloadInProcess(locale:)(v53, v2);
      goto LABEL_27;
    }

    v27 = sub_1ABF25054();

    if (v27)
    {
      goto LABEL_26;
    }
  }

LABEL_14:
  if (p_cache[355] != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  v28 = sub_1ABF237F4();
  sub_1ABA7AA24(v28, qword_1ED871B20);
  v29 = *(v9 + 16);
  v52[1] = v2;
  v29(v13, v2, v7);
  v30 = sub_1ABF237D4();
  v31 = sub_1ABF24664();
  if (os_log_type_enabled(v30, v31))
  {
    sub_1ABA8C938();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v55[0] = v33;
    *v32 = 136315138;
    sub_1ABA7F830();
    sub_1ABAAA2F8(v34, v35, MEMORY[0x1E6969798]);
    v36 = sub_1ABF24FF4();
    v37 = v7;
    v39 = v38;
    (*(v9 + 8))(v13, v37);
    v40 = sub_1ABADD6D8(v36, v39, v55);

    *(v32 + 4) = v40;
    _os_log_impl(&dword_1ABA78000, v30, v31, "MorphunTokenizer: requesting asset path %s via entity resolution XPC service.", v32, 0xCu);
    sub_1ABA84B54(v33);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  else
  {

    (*(v9 + 8))(v13, v7);
  }

  v41 = [objc_allocWithZone(GDXPCEntityResolutionService) init];
  v42 = sub_1ABF23BD4();
  sub_1ABF21F24();
  v43 = sub_1ABF23BD4();

  v55[0] = 0;
  v44 = [v41 requestAssetDownloadForAssetType:v42 localeIdentifier:v43 error:v55];

  v45 = v54;
  if (v44)
  {
    v46 = v55[0];
    [v44 isEmbedded];
    v47 = [v44 filepathURL];
    if (v47)
    {
      v48 = v47;
      sub_1ABF21CA4();

      v49 = 0;
      v44 = v48;
    }

    else
    {
      v49 = 1;
    }

    v51 = sub_1ABF21CF4();
    sub_1ABA7B9B4(v45, v49, 1, v51);
    sub_1ABE10E7C(v45, v53);
  }

  else
  {
    v50 = v55[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

LABEL_27:
  sub_1ABA7BC90();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MorphunTokenizer.process(_:separator:noWordNormalization:)(Swift::String _, Swift::String separator, Swift::Bool noWordNormalization)
{
  v5 = noWordNormalization;
  object = separator._object;
  v7 = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v9 = objc_autoreleasePoolPush();
  MorphunTokenizer.tokenize(_:noWordNormalization:)(countAndFlagsBits, v7, v5);
  if (!v4)
  {
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABAAA5C0();
    v3 = sub_1ABF23B54();
    object = v10;
  }

  objc_autoreleasePoolPop(v9);
  v11 = v3;
  v12 = object;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

unint64_t static MorphunTokenizer.requestAssetDownloadInProcess(locale:)(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v3 = sub_1ABF21F54();
  sub_1ABA7BB64();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7AC18();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - v11;
  v13 = sub_1ABF21CF4();
  sub_1ABA7BB64();
  v55 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BC58();
  v18 = v17 - v16;
  v19 = objc_opt_self();
  v20 = sub_1ABF21F34();
  v21 = [v19 isLocaleEmbedded_];

  if (v21)
  {
    sub_1ABA7B9B4(v56, 1, 1, v13);
  }

  else
  {
    v53 = 0;
    v54 = v13;
    v22 = sub_1ABF21F34();
    v23 = [v19 getAssetPathForLocale_];

    if (v23)
    {
      sub_1ABF21CA4();

      if (qword_1ED871B18 != -1)
      {
        sub_1ABA7D4EC();
        swift_once();
      }

      v24 = sub_1ABF237F4();
      sub_1ABA7AA24(v24, qword_1ED871B20);
      (*(v5 + 16))(v12, a2, v3);
      v25 = sub_1ABF237D4();
      v26 = sub_1ABF24684();
      if (os_log_type_enabled(v25, v26))
      {
        sub_1ABA8C938();
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v57 = v28;
        *v27 = 136315138;
        sub_1ABA7F830();
        sub_1ABAAA2F8(v29, v30, MEMORY[0x1E6969798]);
        v31 = sub_1ABF24FF4();
        v33 = v32;
        (*(v5 + 8))(v12, v3);
        v34 = sub_1ABADD6D8(v31, v33, &v57);

        *(v27 + 4) = v34;
        _os_log_impl(&dword_1ABA78000, v25, v26, "MorphunTokenizer: asset URL path %s", v27, 0xCu);
        sub_1ABA84B54(v28);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      else
      {

        (*(v5 + 8))(v12, v3);
      }

      v45 = v54;
      v46 = v56;
      (v55[4])(v56, v18, v54);
      v47 = v46;
      v48 = 0;
      v49 = v45;
    }

    else
    {
      if (qword_1ED871B18 != -1)
      {
        sub_1ABA7D4EC();
        swift_once();
      }

      v35 = sub_1ABF237F4();
      sub_1ABA7AA24(v35, qword_1ED871B20);
      (*(v5 + 16))(v9, a2, v3);
      v36 = sub_1ABF237D4();
      v37 = sub_1ABF24684();
      if (os_log_type_enabled(v36, v37))
      {
        sub_1ABA8C938();
        v38 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v57 = v55;
        *v38 = 136315138;
        sub_1ABA7F830();
        sub_1ABAAA2F8(v39, v40, MEMORY[0x1E6969798]);
        v41 = sub_1ABF24FF4();
        v43 = v42;
        (*(v5 + 8))(v9, v3);
        v44 = sub_1ABADD6D8(v41, v43, &v57);

        *(v38 + 4) = v44;
        _os_log_impl(&dword_1ABA78000, v36, v37, "MorphunTokenizer: asking MorphunAssets to download %s locale for future requests.", v38, 0xCu);
        sub_1ABA84B54(v55);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      else
      {

        (*(v5 + 8))(v9, v3);
      }

      v50 = sub_1ABF21F34();
      [v19 onDemandDownloadForLocale:v50 withProgress:0 withCompletion:0];

      v47 = v56;
      v48 = 1;
      v49 = v54;
    }

    sub_1ABA7B9B4(v47, v48, 1, v49);
    return v53;
  }

  return v21;
}

uint64_t sub_1ABE10B70(uint64_t a1)
{
  result = sub_1ABF22F44();
  if (v2 <= 0x3F)
  {
    result = sub_1ABF21F54();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABE10BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DA7B8, &qword_1ABF67A38);

  return sub_1ABA7E1E0(a1, a2, v4);
}

uint64_t sub_1ABE10C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABAD219C(&qword_1EB4DA7B8, &qword_1ABF67A38);

  return sub_1ABA7B9B4(a1, a2, a3, v6);
}

uint64_t sub_1ABE10CCC(uint64_t a1)
{
  sub_1ABE10D84();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_1ABF21F54();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_1ABE10D84()
{
  if (!qword_1EB4DA7D0)
  {
    v0 = sub_1ABF21F54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4DA7D0);
    }
  }
}

uint64_t sub_1ABE10E7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE10EEC()
{
  v0 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABB9009C(v0, qword_1EB4DA800);
  sub_1ABA7AA24(v0, qword_1EB4DA800);
  return sub_1ABF22CE4();
}

uint64_t sub_1ABE110B8@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t **a3@<X8>)
{
  v56 = a1;
  v51 = a3;
  v4 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - v6;
  if (qword_1EB4D03E0 != -1)
  {
LABEL_31:
    swift_once();
  }

  v8 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7AA24(v8, qword_1EB4DA800);
  v66 = a2;
  v60 = sub_1ABF22D14();
  v61 = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(&v58);
  sub_1ABF22D24();
  v64 = sub_1ABF22424();
  v65 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(&v62);
  sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
  sub_1ABAB47C4(&qword_1ED86B990, &unk_1EB4D2E60, &qword_1ABF4D8A0, MEMORY[0x1E69E6508]);
  sub_1ABF23EE4();
  sub_1ABA84B54(&v58);
  sub_1ABF22CA4();
  sub_1ABA84B54(&v62);
  sub_1ABAB47C4(&qword_1ED870CC0, &qword_1EB4D50F0, &unk_1ABF3A620, MEMORY[0x1E699FF60]);
  v9 = v57;
  a2 = v7;
  v10 = sub_1ABF22294();
  v11 = v9;
  v12 = *(v5 + 8);
  v5 += 8;
  result = v12(v7, v4);
  if (!v9)
  {
    v14 = sub_1ABAAB7C8(v10);
    v15 = 0;
    v55 = v10 & 0xC000000000000001;
    v56 = v14;
    v4 = MEMORY[0x1E69E7CC8];
    v54 = v10 & 0xFFFFFFFFFFFFFF8;
    v7 = 0x6E6564496469756DLL;
    v52 = v10;
    while (1)
    {
      if (v56 == v15)
      {

        *v51 = v4;
        return result;
      }

      if (v55)
      {
        v5 = MEMORY[0x1AC5AA170](v15, v10);
      }

      else
      {
        if (v15 >= *(v54 + 16))
        {
          goto LABEL_28;
        }

        v5 = *(v10 + 8 * v15 + 32);
      }

      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_1ABB32E40();
      if (v11)
      {
        break;
      }

      v18 = v16;
      v19 = v17;
      sub_1ABB370C4(&v62);
      v57 = 0;
      if (v63)
      {
        sub_1ABA94FC8(v18, v19, v20, v21, v22, v23, v24, v25, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
        a2 = v26;

        if (a2)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v58 = v4;
          sub_1ABAD219C(&qword_1EB4D80A0, &unk_1ABF3A630);
          a2 = &v58;
          v10 = v52;
          sub_1ABF24C64();
          v4 = v58;

          sub_1ABF24C84();
        }
      }

      else
      {
        v53 = v62;
        swift_isUniquelyReferenced_nonNull_native();
        a2 = v4;
        v33 = sub_1ABA94FC8(v18, v19, v27, v28, v29, v30, v31, v32, v50, v51, v52, v53, v54, v55, v56, v57, v4, v59);
        v35 = v4[2];
        v36 = (v34 & 1) == 0;
        v4 = (v35 + v36);
        if (__OFADD__(v35, v36))
        {
          goto LABEL_29;
        }

        v7 = v33;
        v37 = v34;
        sub_1ABAD219C(&qword_1EB4D80A0, &unk_1ABF3A630);
        a2 = &v58;
        if (sub_1ABF24C64())
        {
          a2 = v58;
          v44 = sub_1ABA94FC8(v18, v19, v38, v39, v40, v41, v42, v43, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
          if ((v37 & 1) != (v45 & 1))
          {
            goto LABEL_33;
          }

          v7 = v44;
        }

        if (v37)
        {

          v4 = v58;
          *(v58[7] + 8 * v7) = v53;
        }

        else
        {
          v4 = v58;
          v58[(v7 >> 6) + 8] |= 1 << v7;
          v46 = (v4[6] + 16 * v7);
          *v46 = v18;
          v46[1] = v19;
          *(v4[7] + 8 * v7) = v53;

          v47 = v4[2];
          v48 = __OFADD__(v47, 1);
          v49 = v47 + 1;
          if (v48)
          {
            goto LABEL_30;
          }

          v4[2] = v49;
        }

        v7 = 0x6E6564496469756DLL;
        v10 = v52;
      }

      v11 = v57;
      ++v15;
    }

    swift_unexpectedError();
    __break(1u);
LABEL_33:
    result = sub_1ABF25104();
    __break(1u);
  }

  return result;
}

uint64_t MUIDIdentifierMapView.muidIdentifier(for:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *v1;
  sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  *(inited + 32) = v3;
  sub_1ABB2C288();
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4DA830, qword_1ABF67A78);
  v6 = v4;
  sub_1ABF22464();

  if (!v2)
  {
    v6 = sub_1ABB2BBF4(v8);
  }

  return v6;
}

uint64_t sub_1ABE117B8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  swift_getObjectType();
  sub_1ABAD219C(a2, a3);
  result = sub_1ABF22464();
  if (!v4)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1ABE11860@<X0>(char *a1@<X0>, char *a2@<X1>, char **a3@<X8>)
{
  v37 = a1;
  v32 = a3;
  v4 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  isUniquelyReferenced_nonNull_native = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - v6;
  if (qword_1EB4D03E0 != -1)
  {
LABEL_31:
    swift_once();
  }

  v8 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7AA24(v8, qword_1EB4DA800);
  v40[6] = a2;
  v39[3] = sub_1ABF22D14();
  v39[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v39);
  sub_1ABF22D24();
  v40[3] = sub_1ABF22424();
  v40[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v40);
  sub_1ABAD219C(&unk_1EB4DB8E0, &unk_1ABF50A20);
  sub_1ABAB47C4(&qword_1EB4CF810, &unk_1EB4DB8E0, &unk_1ABF50A20, MEMORY[0x1E69E6508]);
  sub_1ABB3E45C();
  sub_1ABF23EE4();
  sub_1ABA84B54(v39);
  sub_1ABF22CA4();
  sub_1ABA84B54(v40);
  sub_1ABAB47C4(&qword_1ED870CC0, &qword_1EB4D50F0, &unk_1ABF3A620, MEMORY[0x1E699FF60]);
  v9 = v38;
  a2 = v7;
  v10 = sub_1ABF22294();
  v11 = *(isUniquelyReferenced_nonNull_native + 8);
  isUniquelyReferenced_nonNull_native += 8;
  v12 = v4;
  v4 = v9;
  result = v11(v7, v12);
  if (!v9)
  {
    v14 = sub_1ABAAB7C8(v10);
    v7 = 0;
    v35 = v10 & 0xC000000000000001;
    v36 = v14;
    v15 = MEMORY[0x1E69E7CC8];
    v33 = v10;
    v34 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v36 == v7)
      {

        *v32 = v15;
        return result;
      }

      if (v35)
      {
        MEMORY[0x1AC5AA170](v7, v10);
      }

      else
      {
        if (v7 >= *(v34 + 16))
        {
          goto LABEL_28;
        }
      }

      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_1ABB33F2C(25705, 0xE200000000000000);
      if (v4)
      {
        break;
      }

      v16 = v40[0];
      v17 = sub_1ABB36D74(0x6E6564496469756DLL, 0xEE00726569666974);
      if (v18)
      {
        v19 = v18;
        v37 = v7;
        v38 = 0;
        v7 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39[0] = v15;
        a2 = v15;
        v20 = sub_1ABAF81A8();
        if (__OFADD__(*(v15 + 16), (v21 & 1) == 0))
        {
          goto LABEL_29;
        }

        v22 = v20;
        v4 = v21;
        sub_1ABAD219C(&qword_1EB4D90F0, &qword_1ABF5E7D0);
        a2 = v39;
        if (sub_1ABF24C64())
        {
          a2 = v39[0];
          v23 = sub_1ABAF81A8();
          if ((v4 & 1) != (v24 & 1))
          {
            goto LABEL_33;
          }

          v22 = v23;
        }

        v15 = v39[0];
        if (v4)
        {
          v25 = (*(v39[0] + 56) + 16 * v22);
          a2 = v25[1];
          *v25 = v7;
          v25[1] = v19;
        }

        else
        {
          *(v39[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
          *(*(v15 + 48) + 8 * v22) = v16;
          v27 = (*(v15 + 56) + 16 * v22);
          *v27 = v7;
          v27[1] = v19;

          v28 = *(v15 + 16);
          v29 = __OFADD__(v28, 1);
          v30 = v28 + 1;
          if (v29)
          {
            goto LABEL_30;
          }

          *(v15 + 16) = v30;
        }

        v7 = v37;
        v4 = v38;
        v10 = v33;
      }

      else
      {
        a2 = v15;
        sub_1ABAF81A8();
        if (v26)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39[0] = v15;
          sub_1ABAD219C(&qword_1EB4D90F0, &qword_1ABF5E7D0);
          a2 = v39;
          v10 = v33;
          sub_1ABF24C64();
          v15 = v39[0];

          sub_1ABB668FC();
          sub_1ABF24C84();
        }
      }

      ++v7;
    }

    swift_unexpectedError();
    __break(1u);
LABEL_33:
    result = sub_1ABF25104();
    __break(1u);
  }

  return result;
}

double sub_1ABE11E40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 1.0;
  }

  v2 = (a1 + 32);
  result = 1.0;
  do
  {
    v4 = *v2++;
    result = result * v4;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1ABE11E90(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 34) != 1)
  {
    a2[5] = 0u;
    a2[6] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    return;
  }

  v2 = *a1;
  v3 = a1[10];
  v4 = *(a1 + 96);
  v5 = a1[11];
  v7 = a1[5];
  v6 = a1[6];
  v8 = *(a1 + 16);
  v9 = a1[3];
  v115 = *(a1 + 1);

  sub_1ABAD219C(&qword_1EB4D92F8, &unk_1ABF5FD60);
  sub_1ABAE4254();
  v10 = MEMORY[0x1E69E7CC0];
  v113 = v2;
  v124[0] = v2;
  *&v124[1] = v115;
  v124[3] = v9;
  LOWORD(v124[4]) = v8;
  BYTE2(v124[4]) = 1;
  v124[5] = v7;
  v124[6] = v6;
  v124[9] = sub_1ABF239C4();
  v124[10] = v10;
  v124[11] = v5;
  LOBYTE(v124[12]) = v4;
  v124[13] = v10;
  v124[8] = 0;
  v124[7] = 0;
  if (!*(v3 + 16))
  {
    v100 = v10;
    goto LABEL_107;
  }

  v11 = 0;
  v110 = v3 + 32;
  v12 = *(v3 + 16);
  v111 = MEMORY[0x1E69E7CC0];
  v105 = MEMORY[0x1E69E7CC0];
  v106 = MEMORY[0x1E69E7CC0];
  v108 = v3;
  v109 = v12;
  while (2)
  {
    if (v11 >= v12)
    {
      goto LABEL_121;
    }

    memcpy(__dst, (v110 + 112 * v11), sizeof(__dst));
    v13 = __dst[9];
    v112 = v11 + 1;
    v14 = __dst[9] + 64;
    v15 = 1 << *(__dst[9] + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(__dst[9] + 64);
    swift_bridgeObjectRetain_n();
    sub_1ABAE441C(__dst, __src);
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    while (v17)
    {
LABEL_14:
      v21 = *(*(v13 + 56) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
      v22 = *(v21 + 16);
      v23 = *(v19 + 16);
      if (__OFADD__(v23, v22))
      {
        goto LABEL_116;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v23 + v22 > *(v19 + 24) >> 1)
      {
        sub_1ABAD88DC();
        v19 = v24;
      }

      v17 &= v17 - 1;
      if (*(v21 + 16))
      {
        if ((*(v19 + 24) >> 1) - *(v19 + 16) < v22)
        {
          goto LABEL_119;
        }

        swift_arrayInitWithCopy();

        if (v22)
        {
          v25 = *(v19 + 16);
          v26 = __OFADD__(v25, v22);
          v27 = v25 + v22;
          if (v26)
          {
            goto LABEL_120;
          }

          *(v19 + 16) = v27;
        }
      }

      else
      {

        if (v22)
        {
          goto LABEL_117;
        }
      }
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_112:
        __break(1u);
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
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
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
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
        return;
      }

      if (v20 >= ((v15 + 63) >> 6))
      {
        break;
      }

      v17 = *(v14 + 8 * v20);
      ++v18;
      if (v17)
      {
        v18 = v20;
        goto LABEL_14;
      }
    }

    sub_1ABC6D404(__dst);

    v28 = 0;
    v114 = *(v19 + 16);
    while (2)
    {
      v29 = 144 * v28 + 32;
LABEL_27:
      if (v114 != v28)
      {
        if (v28 >= *(v19 + 16))
        {
          goto LABEL_112;
        }

        memcpy(__src, (v19 + v29), sizeof(__src));
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_122;
        }

        if (*(_Records_GDEntityPredicate_records + 25) >= 3481)
        {
          goto LABEL_113;
        }

        if (*(_Records_GDEntityPredicate_records + 26) >= 4281)
        {
          goto LABEL_114;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_123;
        }

        v30 = __src[7];
        v31 = __src[8];
        sub_1ABAE42A8(__src, v121);

        v32 = sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_124;
        }

        v34 = v32;
        v35 = v33;
        sub_1ABF23DD4();
        if (v30 == v34 && v31 == v35)
        {
        }

        else
        {
          v37 = sub_1ABF25054();

          if ((v37 & 1) == 0)
          {
LABEL_56:
            if (BYTE2(__src[6]) == 1 && __src[2] == v113)
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v81 = v111;
              }

              else
              {
                sub_1ABA7C494();
                sub_1ABAD88DC();
                v81 = v94;
              }

              v82 = v81[2];
              if (v82 >= v81[3] >> 1)
              {
                sub_1ABA7F848();
                v81 = v95;
              }

              ++v28;
              v81[2] = v82 + 1;
              v111 = v81;
              memcpy(&v81[18 * v82 + 4], __src, 0x90uLL);
              continue;
            }

            sub_1ABAE4304(__src);
            v29 += 144;
            ++v28;
            goto LABEL_27;
          }
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_125;
        }

        if (*(_Records_GDEntityPredicate_records + 136) >= 3481 || *(_Records_GDEntityPredicate_records + 137) >= 4281)
        {
          goto LABEL_115;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_126;
        }

        v39 = _Records_GDEntityPredicate_records[540];
        v40 = sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_127;
        }

        v42 = v40;
        v43 = v41;
        v44 = __src[17];
        v45 = sub_1ABF23DD4();
        v127[0] = v42;
        v127[1] = v43;
        v127[2] = v45;
        v127[3] = v46;
        v128 = v39;
        if (*(v44 + 16))
        {
          v47 = sub_1ABAF8208();
          v49 = v48;
          sub_1ABAE4478(v127);
          if (v49)
          {
            v50 = *(*(v44 + 56) + 8 * v47);
            if (*(v50 + 16))
            {
              memcpy(v121, (v50 + 32), sizeof(v121));
              v51 = v121[12];
              v52 = v121[13];
              switch(BYTE2(v121[16]))
              {
                case 1:
                  v63 = 3826797;
                  if ((v121[12] & 0x80000000000000) == 0)
                  {
                    v63 = 3828069;
                  }

                  v117 = v121[12];
                  v118 = v63;
                  v119 = 0xE300000000000000;
                  v64 = sub_1ABA7DE60();
                  sub_1ABAE42A8(v64, v65);
                  v66 = sub_1ABF24FF4();
                  MEMORY[0x1AC5A9410](v66);

                  v51 = v118;
                  v52 = v119;
                  goto LABEL_64;
                case 2:
                case 3:
                  v53 = sub_1ABA7DE60();
                  sub_1ABAE42A8(v53, v54);

                  goto LABEL_64;
                case 4:
                  v56 = sub_1ABA7DE60();
                  sub_1ABAE42A8(v56, v57);
                  goto LABEL_68;
                default:
                  v58 = v121[15];
                  v59 = v121[14];
                  v60 = LOWORD(v121[16]);
                  v61 = sub_1ABA7DE60();
                  sub_1ABAE42A8(v61, v62);
                  sub_1ABAE4358(v51, v52, v59, v58, v60, 0);
LABEL_64:
                  if (v51 == 0x44495F6D616441 && v52 == 0xE700000000000000)
                  {

                    sub_1ABAE4304(v121);
                  }

                  else
                  {
LABEL_68:
                    v68 = sub_1ABF25054();

                    sub_1ABAE4304(v121);
                    if ((v68 & 1) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  if (!_Records_GDEntityPredicate_records)
                  {
                    goto LABEL_128;
                  }

                  if (*(_Records_GDEntityPredicate_records + 70) >= 3481 || *(_Records_GDEntityPredicate_records + 71) >= 4281)
                  {
                    goto LABEL_118;
                  }

                  if (!_Records_GDEntityPredicate_predicateIds)
                  {
                    goto LABEL_130;
                  }

                  v70 = _Records_GDEntityPredicate_records[276];
                  v71 = sub_1ABF23DD4();
                  if (!_Records_GDEntityPredicate_labels)
                  {
                    goto LABEL_129;
                  }

                  v73 = v71;
                  v74 = v72;
                  v75 = sub_1ABF23DD4();
                  v125[0] = v73;
                  v125[1] = v74;
                  v125[2] = v75;
                  v125[3] = v76;
                  v126 = v70;
                  if (!*(v44 + 16))
                  {
                    v55 = v125;
                    goto LABEL_55;
                  }

                  v77 = sub_1ABAF8208();
                  v79 = v78;
                  sub_1ABAE4478(v125);
                  if ((v79 & 1) == 0)
                  {
                    goto LABEL_56;
                  }

                  v80 = *(*(v44 + 56) + 8 * v77);
                  if (!*(v80 + 16))
                  {
                    goto LABEL_56;
                  }

                  memcpy(v120, (v80 + 32), sizeof(v120));
                  sub_1ABAE42A8(v120, &v118);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_1ABA7C494();
                    sub_1ABAD88DC();
                    v106 = v96;
                  }

                  v84 = v106;
                  v85 = v106[2];
                  if (v85 >= v106[3] >> 1)
                  {
                    sub_1ABA7F848();
                    v84 = v97;
                  }

                  ++v28;
                  v86 = v120[12];
                  v87 = v120[13];
                  v88 = BYTE2(v120[16]);
                  v106 = v84;
                  v84[2] = v85 + 1;
                  memcpy(&v84[18 * v85 + 4], __src, 0x90uLL);
                  v89 = 0xE000000000000000;
                  v90 = 0;
                  switch(v88)
                  {
                    case 1:
                      v118 = v86;
                      v90 = EntityIdentifier.stringValue.getter();
                      v89 = v91;
                      break;
                    case 4:
                      break;
                    default:

                      v90 = v86;
                      v89 = v87;
                      break;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1ABA7C494();
                    sub_1ABAAA4F4();
                    v105 = v98;
                  }

                  v92 = *(v105 + 16);
                  if (v92 >= *(v105 + 24) >> 1)
                  {
                    sub_1ABAAA4F4();
                    v105 = v99;
                  }

                  sub_1ABAE4304(v120);
                  *(v105 + 16) = v92 + 1;
                  v93 = v105 + 16 * v92;
                  *(v93 + 32) = v90;
                  *(v93 + 40) = v89;
                  v124[13] = v105;
                  break;
              }

              continue;
            }
          }
        }

        else
        {
          v55 = v127;
LABEL_55:
          sub_1ABAE4478(v55);
        }

        goto LABEL_56;
      }

      break;
    }

    v11 = v112;
    if (v112 != v109)
    {
      v12 = *(v108 + 16);
      continue;
    }

    break;
  }

  v10 = v106;
  v100 = v111;
LABEL_107:
  sub_1ABD88954(v100);

  if (v10[2])
  {
    v101 = MEMORY[0x1E69E7CC0];
    memset(v116, 0, 34);
    BYTE2(v116[2]) = 4;
    *(&v116[2] + 1) = 0;
    memset(&v116[3], 0, 24);
    *(&v116[4] + 1) = sub_1ABF239C4();
    v116[5] = v101;
    LOBYTE(v116[6]) = 0;
    *(&v116[6] + 1) = v101;
    sub_1ABD88954(v10);

    sub_1ABAD219C(&qword_1EB4D17D0, &qword_1ABF33960);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_1ABF34740;
    memcpy((v102 + 32), v116, 0x70uLL);

    v124[10] = v102;
  }

  else
  {
  }

  memcpy(v121, v124, 0x70uLL);
  memcpy(a2, v124, 0x70uLL);
  memcpy(__src, v124, 0x70uLL);
  v103 = sub_1ABA7DE60();
  sub_1ABAE441C(v103, v104);
  sub_1ABC6D404(__src);
}

Swift::String __swiftcall Double.toString(decimalPlaces:)(Swift::Int decimalPlaces)
{
  v2 = v1;
  sub_1ABA81BE0();
  v3 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v3);

  MEMORY[0x1AC5A9410](102, 0xE100000000000000);
  sub_1ABAD219C(&qword_1EB4DA838, &qword_1ABF67B10);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E63B0];
  *(v4 + 16) = xmmword_1ABF34740;
  v6 = MEMORY[0x1E69E6438];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v2;
  v7 = sub_1ABF23C34();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::String __swiftcall Float.toString(decimalPlaces:)(Swift::Int decimalPlaces)
{
  v2 = v1;
  sub_1ABA81BE0();
  v3 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v3);

  MEMORY[0x1AC5A9410](102, 0xE100000000000000);
  sub_1ABAD219C(&qword_1EB4DA838, &qword_1ABF67B10);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E6448];
  *(v4 + 16) = xmmword_1ABF34740;
  v6 = MEMORY[0x1E69E64A8];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v2;
  v7 = sub_1ABF23C34();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t static RuntimeNumericError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      if (v3 != v5 || v2 != v4)
      {
        v7 = sub_1ABF25054();
        sub_1ABA7BE8C();
        sub_1ABA7DE6C();
        sub_1ABA7DE6C();
        sub_1ABB95F08();
        sub_1ABA7BE8C();
        goto LABEL_16;
      }

      sub_1ABA7DE6C();
      sub_1ABA7DE6C();
      sub_1ABB95F08();
      sub_1ABB95F08();
      return 1;
    }

LABEL_9:
    sub_1ABA7BE8C();
    sub_1ABA7DE6C();
    sub_1ABA7DE6C();
    sub_1ABB95F08();
    sub_1ABA7BE8C();
    sub_1ABB95F08();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v8 = 1;
    sub_1ABA7D230();
    sub_1ABD3C1AC();
    sub_1ABA7D230();
    sub_1ABD3C1AC();
    sub_1ABA7D230();
    sub_1ABB95F08();
    sub_1ABA7D230();
    sub_1ABB95F08();
    return v8;
  }

  v7 = sub_1ABF25054();
  sub_1ABA7BE8C();
  sub_1ABD3C1AC();
  sub_1ABA7D230();
  sub_1ABD3C1AC();
  sub_1ABA7D230();
  sub_1ABB95F08();
  sub_1ABA7BE8C();
LABEL_16:
  sub_1ABB95F08();
  return v7 & 1;
}

void Array<A>.dotProduct(with:)()
{
  sub_1ABA7EB24();
  if (v0)
  {
    sub_1ABA7F868();
    sub_1ABE130BC(v1, v3, v2);
  }

  else
  {
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD00000000000004DLL, 0x80000001ABF922E0);
    v4 = sub_1ABA93964();
    MEMORY[0x1AC5A9410](v4);

    sub_1ABA83C48();
    v5 = sub_1ABA93964();
    MEMORY[0x1AC5A9410](v5);

    v6 = sub_1ABE13524();
    v7 = sub_1ABA7BD00(&type metadata for RuntimeNumericError, v6);
    sub_1ABA81094(v7, v8);
  }
}

void Array<A>.cosineSimilarity(with:)()
{
  __C[2] = *MEMORY[0x1E69E9840];
  sub_1ABA7EB24();
  if (v3)
  {
    v4 = v2;
    v5 = v1;
    LODWORD(__C[0]) = 2143289344;
    vDSP_svesq((v2 + 32), 1, __C, v0);
    LODWORD(__C[0]) = 2143289344;
    vDSP_svesq((v5 + 32), 1, __C, v0);
    sub_1ABA7F868();
    sub_1ABE130BC(v4, v5, v6);
  }

  else
  {
    __C[0] = 0;
    __C[1] = 0xE000000000000000;
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000053, 0x80000001ABF92330);
    v7 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v7);

    sub_1ABA83C48();
    v8 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v8);

    v9 = sub_1ABE13524();
    v10 = sub_1ABA7BD00(&type metadata for RuntimeNumericError, v9);
    sub_1ABA81094(v10, v11);
  }
}

void Array<A>.euclideanDistance(with:)()
{
  sub_1ABA7EB24();
  if (v2)
  {
    v3 = sub_1ABE130BC(v1, v0, MEMORY[0x1E6958C10]);
    sqrtf(v3);
  }

  else
  {
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000054, 0x80000001ABF92390);
    v4 = sub_1ABA93964();
    MEMORY[0x1AC5A9410](v4);

    sub_1ABA83C48();
    v5 = sub_1ABA93964();
    MEMORY[0x1AC5A9410](v5);

    v6 = sub_1ABE13524();
    v7 = sub_1ABA7BD00(&type metadata for RuntimeNumericError, v6);
    sub_1ABA81094(v7, v8);
  }
}

float sub_1ABE130BC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, float *))
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) != *(a2 + 16))
  {
    __break(1u);
  }

  v4 = NAN;
  a3(a1 + 32, 1, a2 + 32, 1, &v4);
  return v4;
}

uint64_t Array<A>.padding(totalSize:padValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = *(a3 + 16);
  v6 = a1 - v5;
  if (a1 <= v5)
  {

    return v4;
  }

  if (a1 - v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_4;
    }
  }

  sub_1ABADA1CC();
  v4 = v10;
LABEL_4:
  v7 = *(v4 + 16);
  do
  {
    if (v7 >= *(v4 + 24) >> 1)
    {
      sub_1ABADA1CC();
      v4 = v8;
    }

    *(v4 + 16) = v7 + 1;
    *(v4 + 8 * v7++ + 32) = v3;
    --v6;
  }

  while (v6);
  return v4;
}

void Array<A>.to2D(numRows:numColumns:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result * a2) >> 64 != (result * a2) >> 63)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = a2;
  v5 = *(a3 + 16);
  if (v5 != result * a2)
  {
    sub_1ABF24AB4();

    v20 = sub_1ABA8EC80();
    MEMORY[0x1AC5A9410](v20);

    MEMORY[0x1AC5A9410](540877088, 0xE400000000000000);
    v21 = sub_1ABA8EC80();
    MEMORY[0x1AC5A9410](v21);

    MEMORY[0x1AC5A9410](2107936, 0xE300000000000000);
    v22 = sub_1ABA8EC80();
    MEMORY[0x1AC5A9410](v22);

    v23 = sub_1ABE13524();
    sub_1ABA7BD00(&type metadata for RuntimeNumericError, v23);
    *v24 = 0xD000000000000025;
    *(v24 + 8) = 0x80000001ABF923F0;
    *(v24 + 16) = 0;
    swift_willThrow();
    return;
  }

  if (result < 0)
  {
    goto LABEL_25;
  }

  if (result)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1ABADEC0C(0, result, 0);
    if (v4 < 0)
    {
LABEL_26:
      __break(1u);
      return;
    }

    v6 = 0;
    v7 = 0;
    v8 = v30;
    v9 = result;
    v10 = MEMORY[0x1E69E7CC0];
    v25 = v4;
    while (!v4)
    {
      v11 = v10;
LABEL_16:
      v31 = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        v19 = v6;
        sub_1ABADEC0C(v17 > 1, v18 + 1, 1);
        v6 = v19;
        v10 = MEMORY[0x1E69E7CC0];
        v9 = result;
        v8 = v31;
      }

      ++v7;
      *(v8 + 16) = v18 + 1;
      *(v8 + 8 * v18 + 32) = v11;
      v6 += v4;
      if (v7 == v9)
      {
        return;
      }
    }

    v27 = v8;
    v28 = v6;
    v29 = v10;
    sub_1ABADE0CC(0, v4, 0);
    if ((v7 * v4) >> 64 == (v7 * v4) >> 63)
    {
      v6 = v28;
      v11 = v29;
      v12 = v4;
      v13 = v28;
      v9 = result;
      v8 = v27;
      v10 = MEMORY[0x1E69E7CC0];
      while (v13 < v5)
      {
        v14 = *(a3 + 32 + 4 * v13);
        v16 = *(v29 + 16);
        v15 = *(v29 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1ABADE0CC((v15 > 1), v16 + 1, 1);
          v8 = v27;
          v6 = v28;
          v10 = MEMORY[0x1E69E7CC0];
          v9 = result;
        }

        *(v29 + 16) = v16 + 1;
        *(v29 + 4 * v16 + 32) = v14;
        ++v13;
        if (!--v12)
        {
          v4 = v25;
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }
}

unint64_t sub_1ABE13524()
{
  result = qword_1EB4DA840;
  if (!qword_1EB4DA840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA840);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VectorSimilarity(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void *ObjectSynthesisDictionaryMapping.init()@<X0>(void *a1@<X8>)
{
  sub_1ABAD219C(&qword_1EB4DA848, &qword_1ABF67C28);
  result = swift_allocObject();
  *(result + 1) = xmmword_1ABF3EBB0;
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_46;
  }

  v3 = result;
  v4 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x378), *(_Records_GDEntityClass_records + 0x380), *(_Records_GDEntityClass_records + 0x388), v594);
  *(v3 + 2) = sub_1ABA7DE88(v4, v5, v6, v7, v8, v9, v10, v11, v551, v594[0]);
  v3[6] = v12;
  v3[7] = v13;
  *(v3 + 64) = v14;
  v15 = type metadata accessor for CustomGraphEvent(0);
  result = sub_1ABE149F0(&qword_1ED86DAF8, type metadata accessor for CustomGraphEvent, &protocol conformance descriptor for CustomGraphEvent);
  v3[9] = v15;
  v3[10] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v16 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x510), *(_Records_GDEntityClass_records + 0x518), *(_Records_GDEntityClass_records + 0x520), v594);
  *(v3 + 11) = sub_1ABA7DE88(v16, v17, v18, v19, v20, v21, v22, v23, v552, v594[0]);
  v3[13] = v24;
  v3[14] = v25;
  *(v3 + 120) = v26;
  v27 = type metadata accessor for CustomGraphActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86D278, type metadata accessor for CustomGraphActivityEvent, &protocol conformance descriptor for CustomGraphActivityEvent);
  v3[16] = v27;
  v3[17] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v28 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xC78), *(_Records_GDEntityClass_records + 0xC80), *(_Records_GDEntityClass_records + 0xC88), v594);
  *(v3 + 9) = sub_1ABA7DE88(v28, v29, v30, v31, v32, v33, v34, v35, v553, v594[0]);
  v3[20] = v36;
  v3[21] = v37;
  *(v3 + 176) = v38;
  v39 = type metadata accessor for CustomGraphSportsGameEvent(0);
  result = sub_1ABE149F0(&qword_1ED86D1D0, type metadata accessor for CustomGraphSportsGameEvent, &protocol conformance descriptor for CustomGraphSportsGameEvent);
  v3[23] = v39;
  v3[24] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v40 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x690), *(_Records_GDEntityClass_records + 0x698), *(_Records_GDEntityClass_records + 0x6A0), v594);
  *(v3 + 25) = sub_1ABA7DE88(v40, v41, v42, v43, v44, v45, v46, v47, v554, v594[0]);
  v3[27] = v48;
  v3[28] = v49;
  *(v3 + 232) = v50;
  v51 = type metadata accessor for CustomGraphTransportationActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C5D0, type metadata accessor for CustomGraphTransportationActivityEvent, &protocol conformance descriptor for CustomGraphTransportationActivityEvent);
  v3[30] = v51;
  v3[31] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v52 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6A8), *(_Records_GDEntityClass_records + 0x6B0), *(_Records_GDEntityClass_records + 0x6B8), v594);
  *(v3 + 16) = sub_1ABA7DE88(v52, v53, v54, v55, v56, v57, v58, v59, v555, v594[0]);
  v3[34] = v60;
  v3[35] = v61;
  *(v3 + 288) = v62;
  v63 = type metadata accessor for CustomGraphWorkingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CA68, type metadata accessor for CustomGraphWorkingActivityEvent, &protocol conformance descriptor for CustomGraphWorkingActivityEvent);
  v3[37] = v63;
  v3[38] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v64 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6C0), *(_Records_GDEntityClass_records + 0x6C8), *(_Records_GDEntityClass_records + 0x6D0), v594);
  sub_1ABA8F96C(v64, v65, v66, v67, v68, v69, v70, v71, v72, v556, v73);
  v3[41] = v74;
  v3[42] = v75;
  *(v3 + 344) = v76;
  v77 = type metadata accessor for CustomGraphMeetingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CB80, type metadata accessor for CustomGraphMeetingActivityEvent, &protocol conformance descriptor for CustomGraphMeetingActivityEvent);
  v3[44] = v77;
  v3[45] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v78 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6D8), *(_Records_GDEntityClass_records + 0x6E0), *(_Records_GDEntityClass_records + 0x6E8), v594);
  *(v3 + 23) = sub_1ABA7DE88(v78, v79, v80, v81, v82, v83, v84, v85, v557, v594[0]);
  v3[48] = v86;
  v3[49] = v87;
  *(v3 + 400) = v88;
  v89 = type metadata accessor for CustomGraphEatingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CDB8, type metadata accessor for CustomGraphEatingActivityEvent, &protocol conformance descriptor for CustomGraphEatingActivityEvent);
  v3[51] = v89;
  v3[52] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v90 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6F0), *(_Records_GDEntityClass_records + 0x6F8), *(_Records_GDEntityClass_records + 0x700), v594);
  sub_1ABA8F96C(v90, v91, v92, v93, v94, v95, v96, v97, v98, v558, v99);
  v3[55] = v100;
  v3[56] = v101;
  *(v3 + 456) = v102;
  v103 = type metadata accessor for CustomGraphWatchingTVActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C810, type metadata accessor for CustomGraphWatchingTVActivityEvent, &protocol conformance descriptor for CustomGraphWatchingTVActivityEvent);
  v3[58] = v103;
  v3[59] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v104 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x708), *(_Records_GDEntityClass_records + 0x710), *(_Records_GDEntityClass_records + 0x718), v594);
  *(v3 + 30) = sub_1ABA7DE88(v104, v105, v106, v107, v108, v109, v110, v111, v559, v594[0]);
  v3[62] = v112;
  v3[63] = v113;
  *(v3 + 512) = v114;
  v115 = type metadata accessor for CustomGraphCommunicatingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C618, type metadata accessor for CustomGraphCommunicatingActivityEvent, &protocol conformance descriptor for CustomGraphCommunicatingActivityEvent);
  v3[65] = v115;
  v3[66] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v116 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x720), *(_Records_GDEntityClass_records + 0x728), *(_Records_GDEntityClass_records + 0x730), v594);
  sub_1ABA8F96C(v116, v117, v118, v119, v120, v121, v122, v123, v124, v560, v125);
  v3[69] = v126;
  v3[70] = v127;
  *(v3 + 568) = v128;
  v129 = type metadata accessor for CustomGraphShoppingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CA00, type metadata accessor for CustomGraphShoppingActivityEvent, &protocol conformance descriptor for CustomGraphShoppingActivityEvent);
  v3[72] = v129;
  v3[73] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v130 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x810), *(_Records_GDEntityClass_records + 0x818), *(_Records_GDEntityClass_records + 0x820), v594);
  *(v3 + 37) = sub_1ABA7DE88(v130, v131, v132, v133, v134, v135, v136, v137, v561, v594[0]);
  v3[76] = v138;
  v3[77] = v139;
  *(v3 + 624) = v140;
  v141 = type metadata accessor for CustomGraphMindfulnessActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C7E8, type metadata accessor for CustomGraphMindfulnessActivityEvent, &protocol conformance descriptor for CustomGraphMindfulnessActivityEvent);
  v3[79] = v141;
  v3[80] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v142 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7E0), *(_Records_GDEntityClass_records + 0x7E8), *(_Records_GDEntityClass_records + 0x7F0), v594);
  sub_1ABA8F96C(v142, v143, v144, v145, v146, v147, v148, v149, v150, v562, v151);
  v3[83] = v152;
  v3[84] = v153;
  *(v3 + 680) = v154;
  v155 = type metadata accessor for CustomGraphSleepingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C9E0, type metadata accessor for CustomGraphSleepingActivityEvent, &protocol conformance descriptor for CustomGraphSleepingActivityEvent);
  v3[86] = v155;
  v3[87] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v156 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x738), *(_Records_GDEntityClass_records + 0x740), *(_Records_GDEntityClass_records + 0x748), v594);
  *(v3 + 44) = sub_1ABA7DE88(v156, v157, v158, v159, v160, v161, v162, v163, v563, v594[0]);
  v3[90] = v164;
  v3[91] = v165;
  *(v3 + 736) = v166;
  v167 = type metadata accessor for CustomGraphTravelingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C8F8, type metadata accessor for CustomGraphTravelingActivityEvent, &protocol conformance descriptor for CustomGraphTravelingActivityEvent);
  v3[93] = v167;
  v3[94] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v168 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x750), *(_Records_GDEntityClass_records + 0x758), *(_Records_GDEntityClass_records + 0x760), v594);
  sub_1ABA8F96C(v168, v169, v170, v171, v172, v173, v174, v175, v176, v564, v177);
  v3[97] = v178;
  v3[98] = v179;
  *(v3 + 792) = v180;
  v181 = type metadata accessor for CustomGraphReadingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CB50, type metadata accessor for CustomGraphReadingActivityEvent, &protocol conformance descriptor for CustomGraphReadingActivityEvent);
  v3[100] = v181;
  v3[101] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v182 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x768), *(_Records_GDEntityClass_records + 0x770), *(_Records_GDEntityClass_records + 0x778), v594);
  *(v3 + 51) = sub_1ABA7DE88(v182, v183, v184, v185, v186, v187, v188, v189, v565, v594[0]);
  v3[104] = v190;
  v3[105] = v191;
  *(v3 + 848) = v192;
  v193 = type metadata accessor for CustomGraphVacationingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C798, type metadata accessor for CustomGraphVacationingActivityEvent, &protocol conformance descriptor for CustomGraphVacationingActivityEvent);
  v3[107] = v193;
  v3[108] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v194 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x780), *(_Records_GDEntityClass_records + 0x788), *(_Records_GDEntityClass_records + 0x790), v594);
  sub_1ABA8F96C(v194, v195, v196, v197, v198, v199, v200, v201, v202, v566, v203);
  v3[111] = v204;
  v3[112] = v205;
  *(v3 + 904) = v206;
  v207 = type metadata accessor for CustomGraphGamingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CD90, type metadata accessor for CustomGraphGamingActivityEvent, &protocol conformance descriptor for CustomGraphGamingActivityEvent);
  v3[114] = v207;
  v3[115] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v208 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x798), *(_Records_GDEntityClass_records + 0x7A0), *(_Records_GDEntityClass_records + 0x7A8), v594);
  *(v3 + 58) = sub_1ABA7DE88(v208, v209, v210, v211, v212, v213, v214, v215, v567, v594[0]);
  v3[118] = v216;
  v3[119] = v217;
  *(v3 + 960) = v218;
  v219 = type metadata accessor for CustomGraphSocializingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C7C0, type metadata accessor for CustomGraphSocializingActivityEvent, &protocol conformance descriptor for CustomGraphSocializingActivityEvent);
  v3[121] = v219;
  v3[122] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v220 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7B0), *(_Records_GDEntityClass_records + 0x7B8), *(_Records_GDEntityClass_records + 0x7C0), v594);
  sub_1ABA8F96C(v220, v221, v222, v223, v224, v225, v226, v227, v228, v568, v229);
  v3[125] = v230;
  v3[126] = v231;
  *(v3 + 1016) = v232;
  v233 = type metadata accessor for CustomGraphWakingUpActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C9B8, type metadata accessor for CustomGraphWakingUpActivityEvent, &protocol conformance descriptor for CustomGraphWakingUpActivityEvent);
  v3[128] = v233;
  v3[129] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v234 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7C8), *(_Records_GDEntityClass_records + 0x7D0), *(_Records_GDEntityClass_records + 0x7D8), v594);
  *(v3 + 65) = sub_1ABA7DE88(v234, v235, v236, v237, v238, v239, v240, v241, v569, v594[0]);
  v3[132] = v242;
  v3[133] = v243;
  *(v3 + 1072) = v244;
  v245 = type metadata accessor for CustomGraphGoingToBedActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C880, type metadata accessor for CustomGraphGoingToBedActivityEvent, &protocol conformance descriptor for CustomGraphGoingToBedActivityEvent);
  v3[135] = v245;
  v3[136] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v246 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7F8), *(_Records_GDEntityClass_records + 0x800), *(_Records_GDEntityClass_records + 0x808), v594);
  sub_1ABA8F96C(v246, v247, v248, v249, v250, v251, v252, v253, v254, v570, v255);
  v3[139] = v256;
  v3[140] = v257;
  *(v3 + 1128) = v258;
  v259 = type metadata accessor for CustomGraphExercisingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C8A8, type metadata accessor for CustomGraphExercisingActivityEvent, &protocol conformance descriptor for CustomGraphExercisingActivityEvent);
  v3[142] = v259;
  v3[143] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v260 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB28), *(_Records_GDEntityClass_records + 0xB30), *(_Records_GDEntityClass_records + 0xB38), v594);
  *(v3 + 72) = sub_1ABA7DE88(v260, v261, v262, v263, v264, v265, v266, v267, v571, v594[0]);
  v3[146] = v268;
  v3[147] = v269;
  *(v3 + 1184) = v270;
  v271 = type metadata accessor for CustomGraphCommuteActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CC50, type metadata accessor for CustomGraphCommuteActivityEvent, &protocol conformance descriptor for CustomGraphCommuteActivityEvent);
  v3[149] = v271;
  v3[150] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v272 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB40), *(_Records_GDEntityClass_records + 0xB48), *(_Records_GDEntityClass_records + 0xB50), v594);
  sub_1ABA8F96C(v272, v273, v274, v275, v276, v277, v278, v279, v280, v572, v281);
  v3[153] = v282;
  v3[154] = v283;
  *(v3 + 1240) = v284;
  v285 = type metadata accessor for CustomGraphDiningActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CDD8, type metadata accessor for CustomGraphDiningActivityEvent, &protocol conformance descriptor for CustomGraphDiningActivityEvent);
  v3[156] = v285;
  v3[157] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v286 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB58), *(_Records_GDEntityClass_records + 0xB60), *(_Records_GDEntityClass_records + 0xB68), v594);
  *(v3 + 79) = sub_1ABA7DE88(v286, v287, v288, v289, v290, v291, v292, v293, v573, v594[0]);
  v3[160] = v294;
  v3[161] = v295;
  *(v3 + 1296) = v296;
  v297 = type metadata accessor for CustomGraphAttendingAPerformanceActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C3B0, type metadata accessor for CustomGraphAttendingAPerformanceActivityEvent, &protocol conformance descriptor for CustomGraphAttendingAPerformanceActivityEvent);
  v3[163] = v297;
  v3[164] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v298 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB70), *(_Records_GDEntityClass_records + 0xB78), *(_Records_GDEntityClass_records + 0xB80), v594);
  sub_1ABA8F96C(v298, v299, v300, v301, v302, v303, v304, v305, v306, v574, v307);
  v3[167] = v308;
  v3[168] = v309;
  *(v3 + 1352) = v310;
  v311 = type metadata accessor for CustomGraphStationaryActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C830, type metadata accessor for CustomGraphStationaryActivityEvent, &protocol conformance descriptor for CustomGraphStationaryActivityEvent);
  v3[170] = v311;
  v3[171] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v312 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xBE8), *(_Records_GDEntityClass_records + 0xBF0), *(_Records_GDEntityClass_records + 0xBF8), v594);
  *(v3 + 86) = sub_1ABA7DE88(v312, v313, v314, v315, v316, v317, v318, v319, v575, v594[0]);
  v3[174] = v320;
  v3[175] = v321;
  *(v3 + 1408) = v322;
  v323 = type metadata accessor for CustomGraphLocationVisitActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C5F0, type metadata accessor for CustomGraphLocationVisitActivityEvent, &protocol conformance descriptor for CustomGraphLocationVisitActivityEvent);
  v3[177] = v323;
  v3[178] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v324 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x858), *(_Records_GDEntityClass_records + 0x860), *(_Records_GDEntityClass_records + 0x868), v594);
  sub_1ABA8F96C(v324, v325, v326, v327, v328, v329, v330, v331, v332, v576, v333);
  v3[181] = v334;
  v3[182] = v335;
  *(v3 + 1464) = v336;
  v337 = type metadata accessor for CustomGraphWalkingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CA88, type metadata accessor for CustomGraphWalkingActivityEvent, &protocol conformance descriptor for CustomGraphWalkingActivityEvent);
  v3[184] = v337;
  v3[185] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v338 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x870), *(_Records_GDEntityClass_records + 0x878), *(_Records_GDEntityClass_records + 0x880), v594);
  *(v3 + 93) = sub_1ABA7DE88(v338, v339, v340, v341, v342, v343, v344, v345, v577, v594[0]);
  v3[188] = v346;
  v3[189] = v347;
  *(v3 + 1520) = v348;
  v349 = type metadata accessor for CustomGraphRunningActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CB30, type metadata accessor for CustomGraphRunningActivityEvent, &protocol conformance descriptor for CustomGraphRunningActivityEvent);
  v3[191] = v349;
  v3[192] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v350 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x888), *(_Records_GDEntityClass_records + 0x890), *(_Records_GDEntityClass_records + 0x898), v594);
  sub_1ABA8F96C(v350, v351, v352, v353, v354, v355, v356, v357, v358, v578, v359);
  v3[195] = v360;
  v3[196] = v361;
  *(v3 + 1576) = v362;
  v363 = type metadata accessor for CustomGraphBicyclingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C998, type metadata accessor for CustomGraphBicyclingActivityEvent, &protocol conformance descriptor for CustomGraphBicyclingActivityEvent);
  v3[198] = v363;
  v3[199] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v364 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x8A0), *(_Records_GDEntityClass_records + 0x8A8), *(_Records_GDEntityClass_records + 0x8B0), v594);
  *(v3 + 100) = sub_1ABA7DE88(v364, v365, v366, v367, v368, v369, v370, v371, v579, v594[0]);
  v3[202] = v372;
  v3[203] = v373;
  *(v3 + 1632) = v374;
  v375 = type metadata accessor for CustomGraphHikingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CD70, type metadata accessor for CustomGraphHikingActivityEvent, &protocol conformance descriptor for CustomGraphHikingActivityEvent);
  v3[205] = v375;
  v3[206] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v376 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x828), *(_Records_GDEntityClass_records + 0x830), *(_Records_GDEntityClass_records + 0x838), v594);
  sub_1ABA8F96C(v376, v377, v378, v379, v380, v381, v382, v383, v384, v580, v385);
  v3[209] = v386;
  v3[210] = v387;
  *(v3 + 1688) = v388;
  v389 = type metadata accessor for CustomGraphOnThePhoneActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86C858, type metadata accessor for CustomGraphOnThePhoneActivityEvent, &protocol conformance descriptor for CustomGraphOnThePhoneActivityEvent);
  v3[212] = v389;
  v3[213] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v390 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x840), *(_Records_GDEntityClass_records + 0x848), *(_Records_GDEntityClass_records + 0x850), v594);
  *(v3 + 107) = sub_1ABA7DE88(v390, v391, v392, v393, v394, v395, v396, v397, v581, v594[0]);
  v3[216] = v398;
  v3[217] = v399;
  *(v3 + 1744) = v400;
  v401 = type metadata accessor for CustomGraphFacetimeActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CA20, type metadata accessor for CustomGraphFacetimeActivityEvent, &protocol conformance descriptor for CustomGraphFacetimeActivityEvent);
  v3[219] = v401;
  v3[220] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v402 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCA8), *(_Records_GDEntityClass_records + 0xCB0), *(_Records_GDEntityClass_records + 0xCB8), v594);
  sub_1ABA8F96C(v402, v403, v404, v405, v406, v407, v408, v409, v410, v582, v411);
  v3[223] = v412;
  v3[224] = v413;
  *(v3 + 1800) = v414;
  v415 = type metadata accessor for CustomGraphDrivingActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CC28, type metadata accessor for CustomGraphDrivingActivityEvent, &protocol conformance descriptor for CustomGraphDrivingActivityEvent);
  v3[226] = v415;
  v3[227] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v416 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCD8), *(_Records_GDEntityClass_records + 0xCE0), *(_Records_GDEntityClass_records + 0xCE8), v594);
  *(v3 + 114) = sub_1ABA7DE88(v416, v417, v418, v419, v420, v421, v422, v423, v583, v594[0]);
  v3[230] = v424;
  v3[231] = v425;
  *(v3 + 1856) = v426;
  v427 = type metadata accessor for CustomGraphBehaviorActivityEvent(0);
  result = sub_1ABE149F0(&qword_1ED86CA40, type metadata accessor for CustomGraphBehaviorActivityEvent, &protocol conformance descriptor for CustomGraphBehaviorActivityEvent);
  v3[233] = v427;
  v3[234] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v428 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x420), *(_Records_GDEntityClass_records + 0x428), *(_Records_GDEntityClass_records + 0x430), v594);
  sub_1ABA8F96C(v428, v429, v430, v431, v432, v433, v434, v435, v436, v584, v437);
  v3[237] = v438;
  v3[238] = v439;
  *(v3 + 1912) = v440;
  result = sub_1ABC6B7C4();
  v3[240] = &type metadata for CustomGraphCalendarEvent;
  v3[241] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v441 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA8), *(_Records_GDEntityClass_records + 0xB0), *(_Records_GDEntityClass_records + 0xB0 + 8), v594);
  *(v3 + 121) = sub_1ABA7DE88(v441, v442, v443, v444, v445, v446, v447, v448, v585, v594[0]);
  v3[244] = v449;
  v3[245] = v450;
  *(v3 + 1968) = v451;
  result = sub_1ABC6B898();
  v3[247] = &type metadata for CustomGraphLocation;
  v3[248] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v452 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x2E8), *(_Records_GDEntityClass_records + 0x2F0), *(_Records_GDEntityClass_records + 0x2F8), v594);
  sub_1ABA8F96C(v452, v453, v454, v455, v456, v457, v458, v459, v460, v586, v461);
  v3[251] = v462;
  v3[252] = v463;
  *(v3 + 2024) = v464;
  result = sub_1ABC6B914();
  v3[254] = &type metadata for CustomGraphOrganization;
  v3[255] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v465 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xC90), *(_Records_GDEntityClass_records + 0xC98), *(_Records_GDEntityClass_records + 0xCA0), v594);
  *(v3 + 128) = sub_1ABA7DE88(v465, v466, v467, v468, v469, v470, v471, v472, v587, v594[0]);
  v3[258] = v473;
  v3[259] = v474;
  *(v3 + 2080) = v475;
  result = sub_1ABC6B990();
  v3[261] = &type metadata for CustomGraphSportsTeam;
  v3[262] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v476 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), v594);
  sub_1ABA8F96C(v476, v477, v478, v479, v480, v481, v482, v483, v484, v588, v485);
  v3[265] = v486;
  v3[266] = v487;
  *(v3 + 2136) = v488;
  v489 = type metadata accessor for CustomGraphPerson(0);
  result = sub_1ABE149F0(&qword_1ED86D6C8, type metadata accessor for CustomGraphPerson, &protocol conformance descriptor for CustomGraphPerson);
  v3[268] = v489;
  v3[269] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v490 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xD8), *(_Records_GDEntityClass_records + 0xE0), *(_Records_GDEntityClass_records + 0xE0 + 8), v594);
  *(v3 + 135) = sub_1ABA7DE88(v490, v491, v492, v493, v494, v495, v496, v497, v589, v594[0]);
  v3[272] = v498;
  v3[273] = v499;
  *(v3 + 2192) = v500;
  result = sub_1ABC6BA64();
  v3[275] = &type metadata for CustomGraphTopic;
  v3[276] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v501 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x570), *(_Records_GDEntityClass_records + 0x578), *(_Records_GDEntityClass_records + 0x580), v594);
  sub_1ABA8F96C(v501, v502, v503, v504, v505, v506, v507, v508, v509, v590, v510);
  v3[279] = v511;
  v3[280] = v512;
  *(v3 + 2248) = v513;
  result = sub_1ABC6BAE0();
  v3[282] = &type metadata for CustomGraphSong;
  v3[283] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v514 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x4F8), *(_Records_GDEntityClass_records + 0x500), *(_Records_GDEntityClass_records + 0x508), v594);
  *(v3 + 142) = sub_1ABA7DE88(v514, v515, v516, v517, v518, v519, v520, v521, v591, v594[0]);
  v3[286] = v522;
  v3[287] = v523;
  *(v3 + 2304) = v524;
  result = sub_1ABC6BB5C();
  v3[289] = &type metadata for CustomGraphActivityEventType;
  v3[290] = result;
  if (!_Records_GDEntityClass_records)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v525 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x8B8), *(_Records_GDEntityClass_records + 0x8C0), *(_Records_GDEntityClass_records + 0x8C8), v594);
  sub_1ABA8F96C(v525, v526, v527, v528, v529, v530, v531, v532, v533, v592, v534);
  v3[293] = v535;
  v3[294] = v536;
  *(v3 + 2360) = v537;
  result = sub_1ABC6BBD8();
  v3[296] = &type metadata for CustomGraphModeOfTransportation;
  v3[297] = result;
  if (_Records_GDEntityClass_records)
  {
    v538 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x468), *(_Records_GDEntityClass_records + 0x470), *(_Records_GDEntityClass_records + 0x478), v594);
    *(v3 + 149) = sub_1ABA7DE88(v538, v539, v540, v541, v542, v543, v544, v545, v593, v594[0]);
    v3[300] = v546;
    v3[301] = v547;
    *(v3 + 2416) = v548;
    v549 = sub_1ABC6BC54();
    v3[303] = &type metadata for CustomGraphSoftware;
    v3[304] = v549;
    sub_1ABAD219C(&qword_1EB4DA850, &unk_1ABF67C30);
    sub_1ABBD8A8C();
    v550 = sub_1ABF239C4();
    result = ObjectSynthesisDictionaryMapping.init(mapping:)(v550, v594);
    *a1 = *&v594[0];
    return result;
  }

LABEL_87:
  __break(1u);
  return result;
}

uint64_t sub_1ABE149F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ObjectSynthesisDictionaryMapping.init(mapping:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4DA858, &unk_1ABF67C40);
  sub_1ABBD8A8C();
  result = sub_1ABF239C4();
  v6 = 0;
  v7 = *(a1 + 64);
  v26 = result;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  v11 = (v8 + 63) >> 6;
  if ((v9 & v7) != 0)
  {
    do
    {
      v12 = v6;
LABEL_9:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = v13 | (v12 << 6);
      v15 = *(a1 + 48) + 40 * v14;
      v16 = *v15;
      v17 = *(v15 + 16);
      v18 = *(v15 + 24);
      LOBYTE(v15) = *(v15 + 32);
      v19 = (*(a1 + 56) + 16 * v14);
      v20 = *v19;
      v21 = v19[1];
      v22 = v16;
      v23 = v17;
      v24 = v18;
      v25 = v15;
      result = ObjectSynthesisDictionaryMapping.set<A>(entityClass:graphObjectType:)(&v22, v5, v20, v21);
    }

    while (v10);
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      *a2 = v26;
      return result;
    }

    v10 = *(a1 + 64 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t ObjectSynthesisDictionaryMapping.set<A>(entityClass:graphObjectType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v8;
  v18 = *(a1 + 32);
  sub_1ABA7D9B8();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  sub_1ABA7D9B8();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  sub_1ABA7D9B8();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1ABE14FCC;
  *(v11 + 24) = v9;
  sub_1ABA7D9B8();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1ABE15120;
  *(v12 + 24) = v10;
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *v5;
  v15[5] = v12;
  v16 = v13;
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = sub_1ABE1513C;
  v15[3] = v11;
  v15[4] = sub_1ABE15168;
  result = sub_1ABAFAB44(v15, v17);
  *v5 = v16;
  return result;
}

uint64_t sub_1ABE14CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1ABF247E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1ABAE2BF0(a1, v10);
  if (swift_dynamicCast())
  {
    sub_1ABA7B9B4(v8, 0, 1, AssociatedTypeWitness);
    return (*(*(AssociatedTypeWitness - 8) + 32))(a2, v8, AssociatedTypeWitness);
  }

  else
  {
    sub_1ABA7B9B4(v8, 1, 1, AssociatedTypeWitness);
    (*(v6 + 8))(v8, v5);
    result = sub_1ABF24CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABE14E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v13 = &v18 - v12;
  v19 = a1;

  sub_1ABE14CA8(a2, v13);
  v14 = *(a4 + 48);
  a5[3] = a3;
  a5[4] = a4;
  sub_1ABA93DC0(a5);
  v15 = sub_1ABAD219C(&qword_1EB4DA860, &qword_1ABF67CB8);
  v16 = sub_1ABE15B54();
  result = v14(&v19, v13, v15, &type metadata for ExtendedTriple, v16, &protocol witness table for ExtendedTriple, a3, a4);
  if (v5)
  {
    return sub_1ABD5B8D0(a5);
  }

  return result;
}

uint64_t sub_1ABE14FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v15 = &v18[-v14];
  v19 = a1;
  v20 = a2;
  sub_1ABE14CA8(a3, &v18[-v14]);
  v16 = *(a5 + 56);
  a6[3] = a4;
  a6[4] = a5;
  sub_1ABA93DC0(a6);
  result = v16(sub_1ABE15B38, v18, v15, &type metadata for ExtendedTriple, &protocol witness table for ExtendedTriple, a4, a5);
  if (v6)
  {
    return sub_1ABD5B8D0(a6);
  }

  return result;
}

uint64_t sub_1ABE15168(_OWORD *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[1] = *a1;
  return v3(sub_1ABE15AE4, v5, a2);
}

uint64_t sub_1ABE151BC(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_1ABE15B00;
  v8[1] = v6;
  a3(v8);
}

Swift::Void __swiftcall ObjectSynthesisDictionaryMapping.clear()()
{

  sub_1ABAD219C(&qword_1EB4DA858, &unk_1ABF67C40);
  sub_1ABBD8A8C();
  *v0 = sub_1ABF239C4();
}

uint64_t ObjectSynthesisDictionaryMapping.remove(entityClass:)()
{
  result = sub_1ABAF8328();
  if (v2)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v3 = *v0;
    sub_1ABAD219C(&qword_1EB4D1F88, &qword_1ABF35178);
    sub_1ABF24C64();

    sub_1ABAD219C(&qword_1EB4DA858, &unk_1ABF67C40);
    sub_1ABBD8A8C();
    sub_1ABF24C84();

    *v0 = v3;
  }

  return result;
}

uint64_t ObjectSynthesisDictionaryMapping.type(for:)()
{
  if (!*(*v0 + 16))
  {
    return 0;
  }

  sub_1ABAF8328();
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  sub_1ABA8EE70();
  return *v2;
}

uint64_t ObjectSynthesisDictionaryMapping.factory<A, B>(for:triples:initializationResources:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a2;
  v27 = a6;
  v33 = a3;
  v29 = a7;
  v8 = *(a1 + 32);
  v32 = v8;
  v9 = *(a1 + 1);
  v31[0] = *a1;
  v31[1] = v9;
  v10 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  if (*(*v7 + 16) && (sub_1ABAF8328(), (v16 & 1) != 0))
  {
    sub_1ABA8EE70();
    v18 = *(v17 + 16);
    MEMORY[0x1EEE9AC00](v19);
    v26[2] = a4;
    v26[3] = a5;
    v26[4] = v27;
    v26[5] = v20;

    v22 = sub_1ABB444E4(sub_1ABE159A0, v26, a4, &type metadata for ExtendedTriple, MEMORY[0x1E69E73E0], v27, MEMORY[0x1E69E7410], v21);
    sub_1ABAD219C(&qword_1EB4D94F0, &qword_1ABF67C50);
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    v30[0] = v23;
    v18(v30, v33);
  }

  else
  {
    sub_1ABC8229C();
    swift_allocError();
    *v25 = v10;
    *(v25 + 8) = v11;
    *(v25 + 16) = v13;
    *(v25 + 24) = v12;
    *(v25 + 32) = v8;
    swift_willThrow();
    return sub_1ABAFF06C(v31, v30);
  }
}

uint64_t ObjectSynthesisDictionaryMapping.factory<A>(for:enumerator:initializationResources:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v26 = a6;
  v27 = a3;
  v7 = *(a1 + 32);
  v30 = *(a1 + 32);
  v8 = *(a1 + 1);
  v29[0] = *a1;
  v29[1] = v8;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  if (*(*v6 + 16) && (v25 = v7, sub_1ABAF8328(), (v16 & 1) != 0))
  {
    sub_1ABA8EE70();
    v18 = *(v17 + 32);
    MEMORY[0x1EEE9AC00](v19);
    v24[2] = a4;
    v24[3] = a5;
    v24[4] = v20;
    v24[5] = a2;
    sub_1ABA7D9B8();
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1ABE159D8;
    *(v21 + 24) = v24;
    v28[0] = sub_1ABE159F8;
    v28[1] = v21;

    v18(v28, v27);
  }

  else
  {
    sub_1ABC8229C();
    swift_allocError();
    *v23 = v9;
    *(v23 + 8) = v10;
    *(v23 + 16) = v11;
    *(v23 + 24) = v12;
    *(v23 + 32) = v7;
    swift_willThrow();
    return sub_1ABAFF06C(v29, v28);
  }
}

uint64_t sub_1ABE157C4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(), void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = sub_1ABE15A94;
  v16[5] = v12;
  a3(sub_1ABE15AC0, v16);
  if (v6)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v15 = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABE158DC(uint64_t a1, uint64_t (*a2)(_BYTE *, __n128), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1ABC3D5B8(a5, __src);
  v7 = a2(__src, v6);
  memcpy(v9, __src, sizeof(v9));
  sub_1ABB34634(v9);
  return v7 & 1;
}

uint64_t sub_1ABE159F8(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v4[1] = *a1;
  return v2(sub_1ABE15A58, v4);
}

uint64_t sub_1ABE15A58()
{
  (*(v0 + 16))(&var1);
  if (!v1)
  {
    v2 = var1;
  }

  return v2 & 1;
}

uint64_t sub_1ABE15B00@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

unint64_t sub_1ABE15B54()
{
  result = qword_1EB4DA868[0];
  if (!qword_1EB4DA868[0])
  {
    sub_1ABAE2850(&qword_1EB4DA860, &qword_1ABF67CB8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4DA868);
  }

  return result;
}

unint64_t sub_1ABE15BB8(uint64_t a1)
{
  result = sub_1ABC8229C();
  *(a1 + 8) = result;
  return result;
}

uint64_t OneOf.init(_:potentiallyPreferred:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1ABF247E4();
  sub_1ABA7BB64();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  *a4 = a1;
  (*(v10 + 16))(v13, a2, v8, v15);
  if (sub_1ABA7E1E0(v13, 1, a3) == 1)
  {

    sub_1ABE15EF8(v18, a3);

    v19 = *(v10 + 8);
    v19(a2, v8);
    if (sub_1ABA7E1E0(v13, 1, a3) != 1)
    {
      v19(v13, v8);
    }
  }

  else
  {
    (*(v10 + 8))(a2, v8);
    (*(*(a3 - 8) + 32))(v17, v13, a3);
    sub_1ABA7B9B4(v17, 0, 1, a3);
  }

  v22 = type metadata accessor for OneOf(0, a3, v20, v21);
  return (*(v10 + 32))(&a4[*(v22 + 28)], v17, v8);
}

uint64_t OneOf.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1ABF247E4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1ABE15EF8(uint64_t a1, uint64_t a2)
{
  sub_1ABF241F4();
  swift_getWitnessTable();
  return sub_1ABF23F84();
}

uint64_t OneOf.init(_:preferred:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v8 = *(type metadata accessor for OneOf(0, a3, a3, a4) + 28);
  (*(*(a3 - 8) + 32))(&a5[v8], a2, a3);

  return sub_1ABA7B9B4(&a5[v8], 0, 1, a3);
}

uint64_t sub_1ABE16038(uint64_t a1)
{
  v1 = sub_1ABF24D84();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABE16090(char a1)
{
  if (a1)
  {
    return 0x6572726566657270;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_1ABE160C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1ABE16138(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1ABE161A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1ABE16214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1ABE16284@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABE16038(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1ABE162B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABE16090(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABE162E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABE1608C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1ABE16310(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABE16364(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t OneOf<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[0] = a2;
  _s10CodingKeysOMa(255, *(a2 + 16), a3, a4);
  sub_1ABA7DE98();
  swift_getWitnessTable();
  v6 = sub_1ABF24FC4();
  sub_1ABA7BB64();
  v16 = v7;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  sub_1ABA93E20(a1, a1[3]);
  v11 = v15[1];
  sub_1ABF252E4();
  v20 = *v11;
  v19 = 0;
  sub_1ABF241F4();
  v18 = a4;
  swift_getWitnessTable();
  v12 = v17;
  sub_1ABF24F84();
  if (v12)
  {
    return (*(v16 + 8))(v10, v6);
  }

  v14 = v16;
  LOBYTE(v20) = 1;
  sub_1ABF24F14();
  return (*(v14 + 8))(v10, v6);
}

uint64_t OneOf<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  sub_1ABF247E4();
  sub_1ABA7BB64();
  v30 = v10;
  v31 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v28 - v12;
  v35 = a3;
  _s10CodingKeysOMa(255, a2, a3, a4);
  sub_1ABA7DE98();
  swift_getWitnessTable();
  v36 = sub_1ABF24EB4();
  sub_1ABA7BB64();
  v33 = v13;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v17 = type metadata accessor for OneOf(0, a2, v15, v16);
  sub_1ABA7BB64();
  v29 = v18;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  sub_1ABA93E20(a1, a1[3]);
  v22 = v37;
  sub_1ABF252C4();
  if (v22)
  {
    return sub_1ABA84B54(a1);
  }

  v37 = a1;
  v23 = v34;
  sub_1ABF241F4();
  v39 = 0;
  v38 = v35;
  swift_getWitnessTable();
  sub_1ABF24E64();
  *v21 = v40;
  LOBYTE(v40) = 1;
  sub_1ABF24DF4();
  v24 = sub_1ABA7F880();
  v25(v24);
  (*(v30 + 32))(&v21[*(v17 + 28)], v23, v31);
  v26 = v29;
  (*(v29 + 16))(v32, v21, v17);
  sub_1ABA84B54(v37);
  return (*(v26 + 8))(v21, v17);
}

uint64_t sub_1ABE1696C(uint64_t a1)
{
  result = sub_1ABF241F4();
  if (v2 <= 0x3F)
  {
    result = sub_1ABF247E4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABE169FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 8) & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        v19 = sub_1ABA7E1E0((a1 + v9 + 8) & ~v9, v6, v4);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_1ABE16BB0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 8) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_62:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v10 & 0x80000000) != 0)
          {
            v25 = (&a1[v12 + 8] & ~v12);
            if (v10 >= a2)
            {
              v29 = a2 + 1;
              v30 = &a1[v12 + 8] & ~v12;

              sub_1ABA7B9B4(v30, v29, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v26 = ~(-1 << (8 * v14));
              }

              else
              {
                v26 = -1;
              }

              if (v14)
              {
                v27 = v26 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v28 = v14;
                }

                else
                {
                  v28 = 4;
                }

                bzero(v25, v14);
                switch(v28)
                {
                  case 2:
                    *v25 = v27;
                    break;
                  case 3:
                    *v25 = v27;
                    v25[2] = BYTE2(v27);
                    break;
                  case 4:
                    *v25 = v27;
                    break;
                  default:
                    *v25 = v27;
                    break;
                }
              }
            }
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v24 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v24 = a2 - 1;
            }

            *a1 = v24;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_62;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_1ABE16E9C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABE16FCC(uint64_t *a1, uint64_t a2)
{
  result = MEMORY[0x1E69E7CD0];
  if (*(a2 + 8))
  {
    v86 = *a1;
    v99 = *(a2 + 40);
    v94 = *(a2 + 48);
    HIDWORD(v90) = *(a2 + 56);
    v108 = *(a2 + 64);
    v5 = *(a2 + 16);
    v154 = MEMORY[0x1E69E7CD0];
    v140 = MEMORY[0x1E69E7CD0];
    v6 = sub_1ABF239C4();
    v7 = v5 + 56;
    v8 = 1 << *(v5 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v5 + 56);
    v11 = (v8 + 63) >> 6;
    v112 = v5;

    v12 = 0;
    while (1)
    {
      v117 = v6;
      if (!v10)
      {
        break;
      }

      v13 = v12;
LABEL_11:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = (*(v112 + 48) + ((v13 << 11) | (32 * v14)));
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = v15[3];
      swift_bridgeObjectRetain_n();

      sub_1ABB1840C(v128, v18, v19);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v128[0] = v6;
      sub_1ABAFB0A4(v16, v17, v18, v19, isUniquelyReferenced_nonNull_native);

      v6 = v128[0];
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v13 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_11;
      }
    }

    v21 = v140;
    sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
    result = swift_allocObject();
    *(result + 16) = xmmword_1ABF34740;
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_32;
    }

    v22 = result;
    sub_1ABA91D48(_Records_GDEntityPredicate_records[156], *(_Records_GDEntityPredicate_records + 40), *(_Records_GDEntityPredicate_records + 41), v139);
    v23 = v139[0];
    v24 = v139[1];

    *(v22 + 32) = v23;
    *(v22 + 40) = v24;
    sub_1ABB2C7F4(v22, v25, v26, v27, v28, v29, v30, v31, v82, v86, v90, v94, v99, v2, v108, v112, v117, v121[0], v121[1], v121[2], v121[3], v121[4], v121[5], v121[6], v121[7], v121[8], v121[9], v121[10], v122, v123);
    LOBYTE(v130[0]) = 0;
    v130[1] = v21;
    LOBYTE(v131) = 0;
    v132 = v32;
    LOBYTE(v133) = 0;
    v134 = 0;
    LOBYTE(v135) = 0;
    v136 = 0;
    LOBYTE(v137) = 0;
    v138 = 0;
    v122 = v87;
    LOBYTE(__src[0]) = 1;
    __src[1] = -50;
    __src[2] = MEMORY[0x1E69E7CC0];
    __src[3] = v100;
    __src[4] = v95;
    LOBYTE(__src[5]) = BYTE4(v91);
    __src[6] = v109;
    v128[0] = v130[0];
    v128[1] = v21;
    v128[2] = v131;
    v128[3] = v32;
    v128[4] = v133;
    v128[5] = 0;
    v128[6] = v135;
    v128[7] = 0;
    v128[8] = v137;
    v128[9] = 0;
    v128[11] = 0;
    v129 = 32;

    sub_1ABB3F4DC(v100, v95, BYTE4(v91));

    sub_1ABD25C88(__src, v128, v121);
    v33 = __src[3];
    v34 = __src[4];
    v35 = __src[5];

    sub_1ABB3F860(v33, v34, v35);
    if (v104)
    {

      sub_1ABB420A4(v130);
    }

    sub_1ABB420A4(v130);
    v36 = v121[0];

    v37 = v118;
    if (!v36)
    {

      v36 = MEMORY[0x1E69E7CC0];
    }

    v38 = *(v36 + 16);
    if (!v38)
    {
LABEL_27:

      return v154;
    }

    v101 = *(v36 + 16);
    v105 = 0;
    v39 = 0;
    v40 = (v36 + 32);
    v96 = v36;
    while (v39 < *(v36 + 16))
    {
      result = memcpy(__dst, v40, sizeof(__dst));
      if (*(v37 + 16))
      {
        v41 = *&__dst[24];
        v42 = *&__dst[32];
        sub_1ABB242A4(__dst, v128);

        v49 = sub_1ABA94FC8(v41, v42, v43, v44, v45, v46, v47, v48, v83, v87, v91, v96, v101, v105, v109, v113, v118, v121[0]);
        v51 = v50;

        if ((v51 & 1) != 0 && (v153 = *&__dst[64], *&__dst[72]))
        {
          v114 = *(&v153 + 1);
          v52 = (*(v37 + 56) + 16 * v49);
          v53 = *v52;
          v54 = v52[1];
          v55 = v153;

          sub_1ABE175C4(&v153, v128);
          sub_1ABB18D34();
          memcpy(v128, __src, 0x58uLL);
          result = sub_1ABB24250(v128);
          if (!_Records_GDEntityPredicate_records)
          {
            goto LABEL_31;
          }

          sub_1ABA91D48(_Records_GDEntityPredicate_records[156], *(_Records_GDEntityPredicate_records + 40), *(_Records_GDEntityPredicate_records + 41), &v122);
          v57 = v122;
          v56 = v123;

          __src[0] = v53;
          __src[1] = v54;

          v58 = MEMORY[0x1AC5A9410](126, 0xE100000000000000);
          sub_1ABA8F980(v58, v59, v60, v61, v62, v63, v64, v65, v83, v87, v91, v96, v101, v105, v54, v114, v118, v121[0], v121[1], v121[2], v121[3], v121[4], v121[5], v121[6], v121[7], v121[8], v121[9], v121[10], v122, v123, v124, v125, v126, __src[0], __src[1]);
          MEMORY[0x1AC5A9410](v57, v56);

          sub_1ABA8F980(v66, v67, v68, v69, v70, v71, v72, v73, v84, v88, v92, v97, v102, v106, v110, v115, v119, v121[0], v121[1], v121[2], v121[3], v121[4], v121[5], v121[6], v121[7], v121[8], v121[9], v121[10], v122, v123, v124, v125, v126, __src[0], __src[1]);
          MEMORY[0x1AC5A9410](126, 0xE100000000000000);

          sub_1ABA8F980(v74, v75, v76, v77, v78, v79, v80, v81, v85, v89, v93, v98, v103, v107, v111, v116, v120, v121[0], v121[1], v121[2], v121[3], v121[4], v121[5], v121[6], v121[7], v121[8], v121[9], v121[10], v122, v123, v124, v125, v126, __src[0], __src[1]);
          MEMORY[0x1AC5A9410](v55, v113);

          v141 = __src[0];
          v142 = __src[1];
          v143 = 0;
          v144 = v53;
          v145 = v109;
          v146 = 0;
          v147 = v57;
          v148 = v56;
          v149 = v55;
          v150 = v113;
          v151 = MEMORY[0x1E69E7CC0];
          sub_1ABB18D34();
          memcpy(v121, __src, sizeof(v121));
          result = sub_1ABB24250(v121);
          v37 = v118;
          v36 = v96;
          v38 = v101;
        }

        else
        {
          result = sub_1ABB24250(__dst);
        }
      }

      ++v39;
      v40 += 88;
      if (v38 == v39)
      {
        goto LABEL_27;
      }
    }

LABEL_30:
    __break(1u);
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABE175C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABE17650(uint64_t a1, uint64_t a2, char a3)
{
  v3 = 0xE900000000000072;
  v4 = 0x6F72724574696E69;
  switch(a3)
  {
    case 1:
      v3 = 0xEC000000726F7272;
      v4 = 0x45656D69746E7572;
      break;
    case 2:
      v3 = 0x80000001ABF924A0;
      v4 = 0xD000000000000015;
      break;
    case 3:
      v3 = 0x80000001ABF92480;
      v4 = 0xD000000000000013;
      break;
    case 4:
      v3 = 0xE800000000000000;
      v4 = 0x726F727245677261;
      break;
    default:
      break;
  }

  sub_1ABF24AB4();

  MEMORY[0x1AC5A9410](v4, v3);

  MEMORY[0x1AC5A9410](58, 0xE100000000000000);
  MEMORY[0x1AC5A9410](a1, a2);
  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t sub_1ABE177BC(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 >= 25)
  {
    sub_1ABF24AB4();

    *&__dst[0] = 0xD00000000000001BLL;
    *(&__dst[0] + 1) = 0x80000001ABF8DBE0;
    __src[0] = 25;
    v20 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v20);

    MEMORY[0x1AC5A9410](0x6465686361657220, 0xE800000000000000);
    sub_1ABAF2860();
    swift_allocError();
    *v21 = 0xD00000000000001BLL;
    *(v21 + 8) = 0x80000001ABF8DBE0;
    *(v21 + 16) = 1;
    swift_willThrow();
LABEL_6:

    return v9;
  }

  v9 = a7;
  sub_1ABE1AB8C(a3, a7, v160);
  if (v8)
  {
    goto LABEL_6;
  }

  v164 = a4;
  v146 = a1;
  v148 = a5;
  sub_1ABA7DEB0();
  v17 = sub_1ABA810B4();
  v19 = v18(v17);
  v23 = a6;
  if ((v19 & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = *(*a3 + 16);
  v24 = *(*a3 + 24);

  sub_1ABE1A204(__dst, v25, v24, a6, v9, a8);

  if (*(&__dst[1] + 1))
  {
    sub_1ABA84B54(v160);
    sub_1ABA946C0(__dst, v160);
LABEL_10:
    v26 = *a3;
    switch(*(*a3 + 64))
    {
      case 2:

        break;
      default:
        v27 = sub_1ABF25054();

        if ((v27 & 1) == 0)
        {
          sub_1ABA93E20(v160, v161);
          v28 = sub_1ABA810B4();
          v29(v28);
          *(v26 + 64) = __dst[0];
        }

        break;
    }

    if (qword_1ED86BE18 != -1)
    {
      swift_once();
    }

    sub_1ABB130E0();
    v31 = v30;

    if ((v31 & 1) == 0)
    {
      v32 = v161;
      v33 = v162;
      sub_1ABA93E20(v160, v161);
      v122 = v33;
      (*(v33 + 56))(a2, v23, v9, a8, v26, v164, v148, v32);
    }

    v34 = sub_1ABE71478();
    v36 = v35;
    sub_1ABA810B4();
    v37 = sub_1ABEBF1A0();
    if (v37)
    {
      v45 = sub_1ABA8F99C(v37, v38, v39, v40, v41, v42, v43, v44, v122, v123, v124, v126, v128, v131, v134, v136, v142, v144, v9, v146, v148, v149, v150, v151, *v152, *&v152[8], *&v152[16], *&v152[24], *&v152[32], *&v152[40], *&v152[48], *&v152[56], *&v152[64], *&v152[72], *&v152[80], *&v152[88], *&v152[96], *&v152[104], *v153, *&v153[8], *&v153[16], *&v153[24], *&v153[32], *&v153[40], *&v153[48], *&v153[56], *&v153[64], *&v153[72], *&v153[80], *&v153[88], *&v153[96], *&v153[104], v154, v155, v156, v157, __src[0]);
      sub_1ABEBF224(v45, v46, v47, v48, v49, v50);
      v52 = v51;
      v145 = v34;
    }

    else
    {
      v53 = sub_1ABA7DEB0();
      v61 = sub_1ABA8F99C(v53, v54, v55, v56, v57, v58, v59, v60, v9, v123, v124, v126, v128, v131, v134, v136, v142, v34, v9, v146, v148, v149, v150, v151, *v152, *&v152[8], *&v152[16], *&v152[24], *&v152[32], *&v152[40], *&v152[48], *&v152[56], *&v152[64], *&v152[72], *&v152[80], *&v152[88], *&v152[96], *&v152[104], *v153, *&v153[8], *&v153[16], *&v153[24], *&v153[32], *&v153[40], *&v153[48], *&v153[56], *&v153[64], *&v153[72], *&v153[80], *&v153[88], *&v153[96], *&v153[104], v154, v155, v156, v157, __src[0]);
      v52 = v62(v61);
    }

    memcpy(__dst, __src, 0x69uLL);
    if (v52)
    {
      v63 = a2 + *(type metadata accessor for QueryContext(0) + 32);
      if (*(v63 + 88) >> 1 == 0xFFFFFFFFLL && (*(v63 + 104) & 0x1E) == 0)
      {
        memcpy(__src, v63, 0x69uLL);
        sub_1ABB52954(__dst, v153);
        sub_1ABE1859C(__src);
        memcpy(v63, __dst, 0x69uLL);
      }
    }

    sub_1ABA7DEB0();
    v64 = sub_1ABA810B4();
    v66 = v65(v64);
    v143 = v26;
    v164 = a2;
    v132 = v66;
    if (*(&__dst[5] + 1) >> 1 != 0xFFFFFFFFLL || (BYTE8(__dst[6]) & 0x1E) != 0) && (memcpy(v163, __dst, 0x58uLL), v163[11] = *(&__dst[5] + 1), v163[12] = *&__dst[6], LOBYTE(v163[13]) = BYTE8(__dst[6]), (v66))
    {
      sub_1ABD92104();
      v135 = v67;
      v69 = v68;
      memcpy(v153, v163, 0x69uLL);
      sub_1ABE3D210(v143, v153, v152);
      sub_1ABE1859C(__dst);
      v70 = *v152;
      v71 = *&v152[8];
      strcpy(v152, "indexResult: ");
      *&v152[14] = -4864;
      v72 = v70;
      *v153 = v70;
      *&v153[8] = v71;
      v137 = v71;
      v129 = *&v152[16];
      *&v153[16] = *&v152[16];
      v73 = IndexResult.description.getter();
      MEMORY[0x1AC5A9410](v73);

      v125 = *&v152[8];
      v127 = *v152;
      sub_1ABAAA4F4();
      v75 = v74;
      v76 = *(v74 + 16);
      if (v76 >= *(v74 + 24) >> 1)
      {
        sub_1ABAAA4F4();
        v75 = v121;
      }

      *(v75 + 16) = v76 + 1;
      v77 = v75 + 16 * v76;
      *(v77 + 32) = v127;
      *(v77 + 40) = v125;
      v79 = v161;
      v78 = v162;
      sub_1ABA93E20(v160, v161);
      *v152 = v72;
      *&v152[8] = v137;
      *&v152[16] = v129;
      v141 = (*(v78 + 72))(v164, v143, v152, v79, v78);

      v106 = (v164 + *(type metadata accessor for QueryContext(0) + 32));
      memcpy(v153, v106, 0x69uLL);
      sub_1ABE1859C(v153);
      *v106 = 0u;
      v106[1] = 0u;
      v106[2] = 0u;
      v106[3] = 0u;
      v106[4] = 0u;
      *(v106 + 10) = 0;
      *(v106 + 88) = xmmword_1ABF34940;
      *(v106 + 104) = 0;
      memset(__src, 0, 88);
      *&__src[11] = xmmword_1ABF34940;
      LOBYTE(__src[13]) = 0;
    }

    else
    {
      if (*(v164 + 8))
      {
        v141 = sub_1ABE491D0();
      }

      else
      {
        v141 = MEMORY[0x1E69E7CC0];
      }

      memcpy(__src, __dst, 0x69uLL);
      v135 = 0;
      v75 = MEMORY[0x1E69E7CC0];
      v69 = 0xE000000000000000;
    }

    v80 = v161;
    v81 = v162;
    sub_1ABA93E20(v160, v161);
    v82 = (*(v81 + 80))(v164, v143, v141, v80, v81);
    v9 = v83;
    v130 = v82;

    v84 = v143[6];

    sub_1ABE48E88(v84);

    if (v132)
    {
      sub_1ABE4933C();
      swift_beginAccess();
      v84 = v143[11];
      v143[11] = *(v9 + 24);
    }

    v85 = *(v130 + 16);

    if (!v85 && sub_1ABE47EF0())
    {
      type metadata accessor for ResultGraph();
      v86 = swift_allocObject();
      v87 = MEMORY[0x1E69E7CC0];
      *(v86 + 16) = sub_1ABF239C4();
      *(v86 + 24) = v87;
      v88 = v164;

      *(v88 + 8) = v86;
    }

    if (!*(v164 + 8) || sub_1ABE47EF0())
    {

      *(v164 + 8) = v9;
    }

    strcpy(v153, "entities: ");
    v153[11] = 0;
    *&v153[12] = -369098752;
    swift_beginAccess();

    v138 = MEMORY[0x1AC5A9750](v89, MEMORY[0x1E69E6158]);
    v91 = v90;

    MEMORY[0x1AC5A9410](v138, v91);

    v133 = *&v153[8];
    v139 = *v153;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABAAA4F4();
      v75 = v119;
    }

    v92 = *(v75 + 16);
    if (v92 >= *(v75 + 24) >> 1)
    {
      sub_1ABAAA4F4();
      v75 = v120;
    }

    *(v75 + 16) = v92 + 1;
    v93 = v75 + 16 * v92;
    *(v93 + 32) = v139;
    *(v93 + 40) = v133;
    v94 = v164 + *(type metadata accessor for QueryContext(0) + 48);

    sub_1ABB4DCC8();
    v140 = *(*(v94 + 16) + 16);
    sub_1ABB4E0B4(v140);
    v95 = *(v94 + 16);
    *(v95 + 16) = v140 + 1;
    v96 = (v95 + 40 * v140);
    v96[4] = v145;
    v96[5] = v36;
    v96[6] = v135;
    v96[7] = v69;
    v96[8] = v75;
    *(v94 + 16) = v95;
    v97 = v143[5];
    if (v97)
    {

      sub_1ABE1859C(__src);
      v154 = v97;

      *(v164 + 8) = v9;
      sub_1ABA7F890();
      sub_1ABE18AE8(v98, v99, v100, v101, v102, v103, v104, v105);
      if (v84)
      {

        sub_1ABA84B54(v160);
      }

      else
      {
        sub_1ABA7F890();
        v115 = sub_1ABE177BC(v107, v108, v109, v110, v111, v112, v113, v114);
        memcpy(v152, v153, 0x69uLL);
        type metadata accessor for ResultGraph();
        v116 = swift_allocObject();
        v117 = MEMORY[0x1E69E7CC0];
        *(v116 + 16) = sub_1ABF239C4();
        *(v116 + 24) = v117;

        sub_1ABA84B54(v160);
        v118 = v164;

        *(v118 + 8) = v116;
        memcpy(v147, v152, 0x69uLL);
        v9 = v115;
      }
    }

    else
    {
      sub_1ABA84B54(v160);
      memcpy(v147, __src, 0x69uLL);
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE18470(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  sub_1ABE18604(a1, a2, 1, a3, a4, a5);
  if (!v5)
  {
    type metadata accessor for KnosisQueryParam();
    v11 = sub_1ABF239C4();
    type metadata accessor for QueryNode();
    swift_initStackObject();
    v12 = sub_1ABE73A74(0, 0xE000000000000000, v11);
    v6 = sub_1ABE177BC(__src, a1, a2, v12, 1, a3, a4, v6);
    memcpy(v14, __src, 0x69uLL);
    sub_1ABE1859C(v14);
  }

  return v6;
}

uint64_t sub_1ABE1859C(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D3430, &unk_1ABF6B740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABE18604(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 >= 25)
  {
    sub_1ABF24AB4();

    sub_1ABA81C08();
    v69 = v42;
    v70 = v41;
    *&v67 = 25;
    v43 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v43);

    v44 = sub_1ABA84340();
    v45 = 0xE800000000000000;
  }

  else
  {
    result = sub_1ABE190A8(a2, a4, a5, a6);
    if (v6)
    {
      return result;
    }

    v73 = a1;
    sub_1ABA7F8A4();
    sub_1ABE19420(v14, v15, v16, v17, v18);
    v19 = *a2;
    if (!*(*a2 + 48))
    {
      v19[6] = 20;
    }

    sub_1ABA7ECFC();
    sub_1ABA7F8A4();
    sub_1ABE1A204(v25, v20, v21, v22, v23, v24);

    if (v68)
    {
      v65 = a3;
      sub_1ABA946C0(&v67, &v69);
      v27 = v71;
      v26 = v72;
      sub_1ABA93E20(&v69, v71);
      v28 = v73;
      if ((*(v26 + 24))(v73, a4, a5, a6, a2, v27, v26))
      {

        sub_1ABA7ECFC();
        sub_1ABA7F8A4();
        sub_1ABE1A204(v34, v29, v30, v31, v32, v33);

        if (!v68)
        {
LABEL_38:
          __break(1u);
          return result;
        }

        sub_1ABA84B54(&v69);
        sub_1ABA946C0(&v67, &v69);
        sub_1ABA7F8A4();
        sub_1ABE19420(v35, v36, v37, v38, v39);
      }

      v40 = *a2;
      switch(*(v40 + 64))
      {
        case 1:
          sub_1ABA8A488();
          break;
        case 2:

          goto LABEL_25;
        case 3:
          v52 = sub_1ABA8C3E0();
          goto LABEL_21;
        case 4:
          sub_1ABA7EB34();
          sub_1ABA947B0();
          break;
        case 5:
          sub_1ABA7C6F4();
          break;
        case 6:
          v52 = sub_1ABA903A8();
LABEL_21:
          sub_1ABA80704(v52);
          break;
        case 7:
          sub_1ABA8A488();
          sub_1ABA81BF4();
          break;
        case 8:
          sub_1ABA8A488();
          sub_1ABA99674();
          break;
        default:
          break;
      }

      sub_1ABA8BE94();
      sub_1ABAA61B4();
      v53 = sub_1ABF25054();

      if ((v53 & 1) == 0)
      {
        v54 = v71;
        v55 = v72;
        sub_1ABA93E20(&v69, v71);
        (*(v55 + 32))(&v67, v28, v40, v54, v55);
        *(v40 + 64) = v67;
      }

LABEL_25:
      sub_1ABA7EF0C();
      swift_beginAccess();
      if (*(v40 + 32))
      {
        v66 = *(v40 + 32);
      }

      else
      {
        type metadata accessor for KnosisQueryParam();
        v66 = sub_1ABF239C4();
      }

      sub_1ABA7D32C();
      v58 = v57 & v56;
      v60 = (v59 + 63) >> 6;

      v61 = 0;
      while (v58)
      {
LABEL_34:
        v63 = __clz(__rbit64(v58));
        v58 &= v58 - 1;
        v64 = *(*(v66 + 56) + ((v61 << 9) | (8 * v63)));
        sub_1ABA7EF0C();
        result = swift_beginAccess();
        if (*(v64 + 24))
        {
          sub_1ABAA5A3C();
          swift_beginAccess();

          sub_1ABE18604(v73, (v64 + 24), v65 + 1, a4, a5, a6);
          swift_endAccess();
        }
      }

      while (1)
      {
        v62 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          break;
        }

        if (v62 >= v60)
        {

          return sub_1ABA84B54(&v69);
        }

        v58 = *(v66 + 64 + 8 * v62);
        ++v61;
        if (v58)
        {
          v61 = v62;
          goto LABEL_34;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

    sub_1ABE19D0C(&v67);
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_1ABF24AB4();

    sub_1ABA810C0();
    v69 = v48;
    v70 = v49;
    v51 = v19[2];
    v50 = v19[3];

    MEMORY[0x1AC5A9410](v51, v50);

    v44 = sub_1ABA8F9BC();
  }

  MEMORY[0x1AC5A9410](v44, v45);
  sub_1ABAF2860();
  v46 = swift_allocError();
  return sub_1ABA7C6A8(v46, v47);
}

uint64_t sub_1ABE18AE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 >= 25)
  {
    sub_1ABF24AB4();

    sub_1ABA81C08();
    v70 = v24;
    v71 = v23;
    *&v68 = 25;
    v25 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v25);

    v26 = sub_1ABA84340();
    v27 = 0xE800000000000000;
LABEL_11:
    MEMORY[0x1AC5A9410](v26, v27);
    sub_1ABAF2860();
    v32 = swift_allocError();
    return sub_1ABA7C6A8(v32, v33);
  }

  v9 = v8;
  LOBYTE(v13) = a5;
  v15 = a2;
  v74 = a1;
  sub_1ABE19420(a1, a2, a6, a7, a8);
  v16 = *v15;
  if (!*(*v15 + 48))
  {
    *(v16 + 48) = 20;
  }

  v17 = *(v16 + 16);
  v18 = *(v16 + 24);

  sub_1ABE1A204(&v68, v17, v18, a6, a7, a8);

  if (!v69)
  {
    sub_1ABE19D0C(&v68);
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_1ABF24AB4();

    sub_1ABA810C0();
    v70 = v28;
    v71 = v29;
    v31 = *(v16 + 16);
    v30 = *(v16 + 24);

    MEMORY[0x1AC5A9410](v31, v30);

    v26 = sub_1ABA8F9BC();
    goto LABEL_11;
  }

  v67 = a8;
  sub_1ABA946C0(&v68, &v70);
  v19 = qword_1ED86D348;

  if (v19 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    sub_1ABB130E0();
    v21 = v20;

    if (v21 & 1) != 0 || ((v35 = *(a3 + 40), v16 == v35) ? (v36 = v35 == 0) : (v36 = 1), !v36 || (v13))
    {
      v22 = v74;
      sub_1ABE196D8(v74, v15, a6, a7, v67);
      if (v9)
      {
        return sub_1ABA84B54(&v70);
      }
    }

    else
    {
      v22 = v74;
    }

    v37 = v72;
    v38 = v73;
    sub_1ABA93E20(&v70, v72);
    v39 = (*(v38 + 24))(v22, a6, a7, v67, v15, v37, v38);
    if (v9)
    {
      return sub_1ABA84B54(&v70);
    }

    if (v39)
    {
      break;
    }

LABEL_24:
    v15 = *v15;
    v51 = v74;
    switch(*(v15 + 64))
    {
      case 1:
        sub_1ABA8A488();
        break;
      case 2:

        goto LABEL_36;
      case 3:
        v52 = sub_1ABA8C3E0();
        goto LABEL_32;
      case 4:
        sub_1ABA7EB34();
        sub_1ABA947B0();
        break;
      case 5:
        sub_1ABA7C6F4();
        break;
      case 6:
        v52 = sub_1ABA903A8();
LABEL_32:
        sub_1ABA80704(v52);
        break;
      case 7:
        sub_1ABA8A488();
        sub_1ABA81BF4();
        break;
      case 8:
        sub_1ABA8A488();
        sub_1ABA99674();
        break;
      default:
        break;
    }

    sub_1ABA8BE94();
    sub_1ABAA61B4();
    v53 = sub_1ABF25054();

    if ((v53 & 1) == 0)
    {
      v54 = v72;
      v55 = v73;
      sub_1ABA93E20(&v70, v72);
      (*(v55 + 32))(&v68, v51, v15, v54, v55);
      *(v15 + 64) = v68;
    }

LABEL_36:
    if (*(v15 + 16) == 0x68636165726F66 && *(v15 + 24) == 0xE700000000000000)
    {
      return sub_1ABA84B54(&v70);
    }

    sub_1ABAA61B4();
    if (sub_1ABF25054())
    {
      return sub_1ABA84B54(&v70);
    }

    sub_1ABA7EF0C();
    swift_beginAccess();
    if (*(v15 + 32))
    {
      v57 = *(v15 + 32);
    }

    else
    {
      type metadata accessor for KnosisQueryParam();
      v57 = sub_1ABF239C4();
    }

    v65 = v57;
    v58 = v57 + 64;
    sub_1ABA7D32C();
    v16 = v60 & v59;
    v62 = (v61 + 63) >> 6;

    v13 = 0;
    while (v16)
    {
LABEL_50:
      v64 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      a3 = *(*(v65 + 56) + ((v13 << 9) | (8 * v64)));
      sub_1ABA7EF0C();
      swift_beginAccess();
      if (*(a3 + 24))
      {
        sub_1ABAA5A3C();
        swift_beginAccess();

        sub_1ABE18AE8(v74, a3 + 24, v15, a4 + 1, 0, a6, a7, v67);
        swift_endAccess();
      }
    }

    while (1)
    {
      v63 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v63 >= v62)
      {

        return sub_1ABA84B54(&v70);
      }

      v16 = *(v58 + 8 * v63);
      ++v13;
      if (v16)
      {
        v13 = v63;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_54:
    swift_once();
  }

  sub_1ABA7ECFC();
  sub_1ABA7F8A4();
  sub_1ABE1A204(v45, v40, v41, v42, v43, v44);

  if (v69)
  {
    sub_1ABA84B54(&v70);
    sub_1ABA946C0(&v68, &v70);
    sub_1ABA7F8A4();
    sub_1ABE19420(v46, v47, v48, v49, v50);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1ABE190A8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *result;
  v6 = *(*result + 40);
  if (v6)
  {
    v10 = result;

    if (sub_1ABE19B58(v5, v6))
    {

      v11 = sub_1ABA7ECFC();
      sub_1ABE1A204(v13, v11, v12, a2, a3, a4);

      if (v41)
      {
        v38 = a4;
        v39 = v10;
        v36 = a2;
        v37 = a3;
        sub_1ABA946C0(&v40, &v42);
        v14 = v4;
        v15 = v44;
        v16 = v45;
        sub_1ABA93E20(&v42, v44);
        v17 = v6[2];
        v18 = v6[3];
        v19 = *(v16 + 8);
        v20 = *(v19 + 8);

        v20(v46, v17, v18, v15, v19);
        if (v14)
        {

          return sub_1ABA84B54(&v42);
        }

        v29 = v46[3];
        v30 = v46[4];
        v31 = sub_1ABE719F4();
        if (v31 && (v32 = v31, sub_1ABA7EF0C(), swift_beginAccess(), v33 = *(v32 + 24), , , v33))
        {
        }

        else
        {
          *(v5 + 40) = 0;

          swift_beginAccess();
          if (!v6[4])
          {
            type metadata accessor for KnosisQueryParam();
            v6[4] = sub_1ABF239C4();
          }

          type metadata accessor for KnosisQueryParam();
          swift_allocObject();
          v34 = sub_1ABE75D88(v5);
          sub_1ABAA5A3C();
          result = swift_beginAccess();
          if (!v6[4])
          {
            __break(1u);
            return result;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v47 = v6[4];
          sub_1ABAFAC94(v34, v29, v30, isUniquelyReferenced_nonNull_native);
          v6[4] = v47;
          swift_endAccess();

          *v39 = v6;
          if (!v6[5])
          {
            sub_1ABB5137C(v46);
            return sub_1ABA84B54(&v42);
          }

          sub_1ABE190A8(v39, v36, v37, v38);
        }

        sub_1ABB5137C(v46);

        return sub_1ABA84B54(&v42);
      }

      sub_1ABE19D0C(&v40);
      v42 = 0;
      v43 = 0xE000000000000000;
      sub_1ABF24AB4();

      sub_1ABA810C0();
      v42 = v21;
      v43 = v22;
      v24 = v6[2];
      v23 = v6[3];

      MEMORY[0x1AC5A9410](v24, v23);

      v25 = sub_1ABA8F9BC();
      MEMORY[0x1AC5A9410](v25);
      v26 = v42;
      v27 = v43;
      sub_1ABAF2860();
      swift_allocError();
      *v28 = v26;
      *(v28 + 8) = v27;
      *(v28 + 16) = 1;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1ABE19420(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a4;
  v52 = a5;
  v49 = a1;
  v50 = a3;
  v5 = *a2;
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (*(v5 + 32))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    type metadata accessor for KnosisQueryParam();
    v6 = sub_1ABF239C4();
  }

  v7 = v6 + 64;
  sub_1ABA7D32C();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;

  v13 = 0;
  v45 = v12;
  v46 = v6 + 64;
  v47 = v6;
  v48 = v5;
  if (v10)
  {
LABEL_9:
    while (1)
    {
      v15 = __clz(__rbit64(v10)) | (v13 << 6);
      v16 = (*(v6 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(*(v6 + 56) + 8 * v15);
      v55 = v19;
      swift_retain_n();

      sub_1ABE19970(v49, &v55, v50);
      sub_1ABAA5A3C();
      swift_beginAccess();
      if (!*(v5 + 32))
      {
        break;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v20 = *(v5 + 32);
      *(v5 + 32) = 0x8000000000000000;
      v27 = sub_1ABA94FC8(v17, v18, v21, v22, v23, v24, v25, v26, v45, v46, v47, v48, v49, v50, v51, v52, v20, v54);
      if (__OFADD__(*(v20 + 16), (v28 & 1) == 0))
      {
        goto LABEL_22;
      }

      v29 = v27;
      v30 = v28;
      sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
      if (sub_1ABF24C64())
      {
        v37 = sub_1ABA94FC8(v17, v18, v31, v32, v33, v34, v35, v36, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
        if ((v30 & 1) != (v38 & 1))
        {
          goto LABEL_25;
        }

        v29 = v37;
      }

      if (v30)
      {

        v39 = v53;
        *(v53[7] + 8 * v29) = v19;
      }

      else
      {
        v39 = v53;
        v53[(v29 >> 6) + 8] |= 1 << v29;
        v40 = (v53[6] + 16 * v29);
        *v40 = v17;
        v40[1] = v18;
        *(v53[7] + 8 * v29) = v19;
        v41 = v53[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_23;
        }

        v53[2] = v43;
      }

      v10 &= v10 - 1;
      v5 = v48;
      *(v48 + 32) = v39;
      swift_endAccess();

      v7 = v46;
      v6 = v47;
      v12 = v45;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        v13 = v14;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
LABEL_25:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABE196D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a2;
  result = swift_beginAccess();
  if (v11[4])
  {
    v13 = v11[2];
    v14 = v11[3];

    sub_1ABE1A204(&v31, v13, v14, a3, a4, a5);

    if (!v32)
    {
      sub_1ABE19D0C(&v31);
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_1ABF24AB4();

      v33 = 0x726F74617265706FLL;
      v34 = 0xE900000000000020;
      v25 = v11[2];
      v24 = v11[3];

      MEMORY[0x1AC5A9410](v25, v24);

      MEMORY[0x1AC5A9410](0x6F6E2073656F6420, 0xEF74736978652074);
      v26 = v33;
      v27 = v34;
      sub_1ABAF2860();
      swift_allocError();
      *v28 = v26;
      *(v28 + 8) = v27;
      *(v28 + 16) = 1;
      return swift_willThrow();
    }

    sub_1ABA946C0(&v31, &v33);
    v15 = v35;
    v16 = v36;
    sub_1ABA93E20(&v33, v35);
    v17 = v11[2];
    v18 = v11[3];
    v19 = *(v16 + 8);
    v20 = *(v19 + 8);

    v20(v37, v17, v18, v15, v19);

    if (!v6)
    {
      result = swift_beginAccess();
      if (!v11[4])
      {
        __break(1u);
        return result;
      }

      v21 = v37[3];
      v22 = v37[4];
      v23 = sub_1ABAE305C();
      swift_endAccess();
      if (v23)
      {
      }

      else
      {
        v29 = *(a1 + 8);
        if (v29)
        {
          sub_1ABE4933C();
          swift_beginAccess();
          v30 = *(v29 + 24);
        }

        else
        {
          v30 = MEMORY[0x1E69E7CC0];
        }

        sub_1ABE71DD8(v21, v22, v30);
      }

      sub_1ABB5137C(v37);
    }

    return sub_1ABA84B54(&v33);
  }

  return result;
}

uint64_t sub_1ABE19970(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v32 = a1;
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {

    swift_beginAccess();
    v31 = v5;
    v7 = (v5 + 40);
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v11 = *(a3 + 16);

      if (v11)
      {
        v18 = sub_1ABA94FC8(v10, v9, v12, v13, v14, v15, v16, v17, v30, v31, v32, v33, v34, v35, v36[0], v36[1], v36[2], v37[0]);
        if (v19)
        {
          v20 = *(*(a3 + 56) + 16 * v18);

          v20(&v33, v32);

          v22 = v33;
          v21 = v34;
          v23 = v35;
          if (v35)
          {

            *(v4 + 24) = v23;

            v10 = 0;
            v9 = 0xE000000000000000;
          }

          if (v21)
          {

            v10 = v22;
            v9 = v21;
          }
        }
      }

      v24 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABAAA4F4();
          v8 = v27;
        }

        v25 = *(v8 + 16);
        if (v25 >= *(v8 + 24) >> 1)
        {
          sub_1ABAAA4F4();
          v8 = v28;
        }

        *(v8 + 16) = v25 + 1;
        v26 = v8 + 16 * v25;
        *(v26 + 32) = v10;
        *(v26 + 40) = v9;
      }

      else
      {
      }

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  *(v4 + 16) = v8;
}

uint64_t sub_1ABE19B58(uint64_t a1, uint64_t a2)
{
  switch(*(a2 + 64))
  {
    case 2:

      return 0;
    case 3:
      sub_1ABA8C3E0();
      break;
    case 4:
      sub_1ABA7EB34();
      break;
    case 5:
      sub_1ABA7C6F4();
      break;
    case 6:
      sub_1ABA903A8();
      break;
    case 7:
      sub_1ABA81BF4();
      break;
    case 8:
      sub_1ABA99674();
      break;
    default:
      break;
  }

  sub_1ABA8BE94();
  sub_1ABAA61B4();
  v4 = sub_1ABF25054();

  if (v4)
  {
    return 0;
  }

  if (*(a2 + 16) != 0x7463656C657371 || *(a2 + 24) != 0xE700000000000000)
  {
    sub_1ABAA61B4();
    if ((sub_1ABF25054() & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 16) == 7370352 && *(a1 + 24) == 0xE300000000000000)
  {
    return 1;
  }

  return sub_1ABF25054();
}

uint64_t sub_1ABE19D0C(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D3438, &qword_1ABF3C4C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1ABE19E30(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_1ABA93E20(a1, v4);
  (*(v5 + 16))(v43, v4, v5);
  if (v2)
  {
    return;
  }

  v6 = v45;
  v7 = v44;
  v8 = *(v44 + 16);
  if ((v45 & 1) == 0 && v8 >= 6)
  {
    sub_1ABAD219C(&qword_1EB4D94E8, &unk_1ABF60F00);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1ABF34740;
    sub_1ABF24AB4();

    v10 = *(a2 + 16);
    v11 = *(a2 + 24);

    MEMORY[0x1AC5A9410](v10, v11);

    MEMORY[0x1AC5A9410](0xD000000000000025, 0x80000001ABF924C0);
    v46 = 5;
    v12 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v12);

    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 32) = 0x2065646F4E71676BLL;
    *(v9 + 40) = 0xE800000000000000;
    sub_1ABF25204();

LABEL_30:
    sub_1ABB5137C(v43);
    return;
  }

  if (!v8)
  {
    goto LABEL_30;
  }

  v13 = 0;
  v39 = v44 + 32;
  v40 = v8 - 1;
  v14 = MEMORY[0x1E69E7CC0];
  v37 = 16 * v8;
  v15 = 5;
  v36 = v45;
  v34 = *(v44 + 16);
  v35 = v44;
  while (1)
  {
    if (v13 >= *(v7 + 16))
    {
      goto LABEL_33;
    }

    v16 = (v39 + 16 * v13);
    v17 = v16[1];
    v42 = *v16;
    if (v13 != v40 || (v6 & 1) == 0)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAAA4F4();
        v14 = v32;
      }

      v30 = *(v14 + 16);
      if (v30 >= *(v14 + 24) >> 1)
      {
        sub_1ABA7EB48();
        v14 = v33;
      }

      *(v14 + 16) = v30 + 1;
      v31 = v14 + 16 * v30;
      *(v31 + 32) = v42;
      *(v31 + 40) = v17;
      goto LABEL_29;
    }

    if (v8 <= 5)
    {
      break;
    }

LABEL_29:
    ++v13;
    --v15;
    if (v13 == v8)
    {
      goto LABEL_30;
    }
  }

  v38 = v13;

  v18 = 0;
  v19 = v37;
  v20 = v40;
  v41 = v15;
  while (1)
  {
    v46 = v18;

    v21 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v21);

    v22 = *(v14 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v20 >= v22)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABAAA4F4();
        v14 = v28;
      }

      v25 = *(v14 + 16);
      if (v25 >= *(v14 + 24) >> 1)
      {
        sub_1ABA7EB48();
        v14 = v29;
      }

      *(v14 + 16) = v25 + 1;
      v26 = v14 + 16 * v25;
      *(v26 + 32) = v42;
      *(v26 + 40) = v17;
      v15 = v41;
      goto LABEL_22;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1ABD8EE6C();
      v14 = v27;
    }

    if (v20 >= *(v14 + 16))
    {
      break;
    }

    v24 = v14 + v19;
    *(v24 + 16) = v42;
    *(v24 + 24) = v17;

LABEL_22:
    ++v18;
    ++v20;
    v19 += 16;
    if (v15 == v18)
    {

      v6 = v36;
      v8 = v34;
      v7 = v35;
      v13 = v38;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_1ABE1A26C(uint64_t a1)
{
  v113 = a1;
  sub_1ABF21CF4();
  sub_1ABA7BD7C();
  v110 = v4;
  v111 = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v109 = v6 - v5;
  v112 = sub_1ABD64274();
  v135 = MEMORY[0x1E69E7CD0];
  sub_1ABAD219C(&qword_1EB4DA8F8, &qword_1ABF68178);
  v133 = sub_1ABF239C4();
  if (qword_1ED86D3A8 != -1)
  {
LABEL_39:
    sub_1ABA7DED8();
    swift_once();
  }

  sub_1ABA7F8B4();
  v9 = v8 & v7;
  v114 = (v10 + 63) >> 6;
  v115 = v11;

  v12 = 0;
  if (!v9)
  {
    goto LABEL_4;
  }

  do
  {
    v13 = v12;
LABEL_8:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v13 << 6);
    v16 = (v115[6] + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    sub_1ABA93E64(v115[7] + 40 * v15, &v122);
    *&v125 = v18;
    *(&v125 + 1) = v17;
    sub_1ABA946C0(&v122, &v126);

LABEL_9:
    v129 = v125;
    v130 = v126;
    v131 = v127;
    v132 = v128;
    if (!*(&v125 + 1))
    {

      v30 = type metadata accessor for Virtual();
      v31 = v109;
      v32 = v113;
      (*(v110 + 16))(v109, v113, v111);
      v33 = v117;
      sub_1ABEBFA34(v31, v135, v34, v35, v36, v37, v38, v39, v106, v107);
      if (v33)
      {
        sub_1ABE1B2C0(v32);
      }

      v42 = v40;
      v117 = 0;
      swift_beginAccess();
      sub_1ABA7F8B4();
      v45 = v44 & v43;
      v1 = v133;
      v47 = (v46 + 63) >> 6;
      v114 = v48;

      v49 = 0;
      v109 = v47;
      v110 = v42;
      v50 = v30;
      v108 = v30;
      v111 = v2;
      if (!v45)
      {
        goto LABEL_19;
      }

      while (1)
      {
LABEL_23:
        v52 = (*(v114 + 48) + ((v49 << 10) | (16 * __clz(__rbit64(v45)))));
        v53 = *v52;
        v54 = v52[1];
        v55 = v1[2];

        if (v55)
        {
          sub_1ABA94FC8(v53, v54, v56, v57, v58, v59, v60, v61, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
          if (v62)
          {
            goto LABEL_37;
          }
        }

        *&v131 = 0;
        v129 = 0u;
        v130 = 0u;
        sub_1ABE19D0C(&v129);
        *(&v130 + 1) = v50;
        *&v131 = &off_1F20885C8;
        v116 = v53;
        *&v129 = v42;
        sub_1ABA946C0(&v129, &v125);
        sub_1ABA94E50(&v125, *(&v126 + 1));
        v115 = &v106;
        sub_1ABA7BD7C();
        MEMORY[0x1EEE9AC00](v63);
        sub_1ABA7BC58();
        v65 = sub_1ABA8EC9C(v64);
        v66(v65);
        v67 = *v2;

        swift_isUniquelyReferenced_nonNull_native();
        v121 = v1;
        v123 = v50;
        v124 = &off_1F20885C8;
        *&v122 = v67;
        v74 = sub_1ABA94FC8(v116, v54, v68, v69, v70, v71, v72, v73, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
        if (__OFADD__(v1[2], (v75 & 1) == 0))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          result = sub_1ABF25104();
          __break(1u);
          return result;
        }

        v76 = v74;
        v77 = v75;
        sub_1ABAD219C(qword_1EB4DA900, &unk_1ABF68180);
        if (sub_1ABF24C64())
        {
          v84 = sub_1ABA94FC8(v116, v54, v78, v79, v80, v81, v82, v83, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
          v2 = v111;
          if ((v77 & 1) != (v85 & 1))
          {
            goto LABEL_42;
          }

          v76 = v84;
          if ((v77 & 1) == 0)
          {
LABEL_29:
            v1 = v121;
            sub_1ABA94E50(&v122, v123);
            v107 = v54;
            sub_1ABA7BD7C();
            MEMORY[0x1EEE9AC00](v86);
            sub_1ABA7BC58();
            v89 = (v88 - v87);
            (*(v90 + 16))(v88 - v87);
            v91 = *v89;
            v50 = v108;
            v119 = v108;
            v120 = &off_1F20885C8;
            *&v118 = v91;
            v1[(v76 >> 6) + 8] |= 1 << v76;
            v92 = (v1[6] + 16 * v76);
            v93 = v107;
            *v92 = v116;
            v92[1] = v93;
            sub_1ABA7F8DC();
            sub_1ABA946C0(&v118, v94 + v76 * v95);
            v96 = v1[2];
            v97 = __OFADD__(v96, 1);
            v98 = v96 + 1;
            if (v97)
            {
              goto LABEL_41;
            }

            v1[2] = v98;
            sub_1ABA84B54(&v122);
            goto LABEL_33;
          }
        }

        else
        {
          v2 = v111;
          if ((v77 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v1 = v121;
        sub_1ABA7F8DC();
        v101 = (v99 + v76 * v100);
        sub_1ABA84B54(v101);
        sub_1ABA946C0(&v122, v101);
        v50 = v108;
LABEL_33:
        v45 &= v45 - 1;
        sub_1ABA84B54(&v125);
        v32 = v113;
        v47 = v109;
        v42 = v110;
        if (!v45)
        {
LABEL_19:
          while (1)
          {
            v51 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
              break;
            }

            if (v51 >= v47)
            {
              sub_1ABE1B2C0(v32);

              return v112;
            }

            v45 = v2[v51];
            ++v49;
            if (v45)
            {
              v49 = v51;
              goto LABEL_23;
            }
          }

          __break(1u);
          goto LABEL_39;
        }
      }
    }

    sub_1ABA946C0(&v130, &v125);
    v19 = *(&v126 + 1);
    v20 = v127;
    sub_1ABA93E20(&v125, *(&v126 + 1));
    v21 = v117;
    (*(v20 + 16))(v134, v19, v20);
    if (v21)
    {

      sub_1ABE1B2C0(v113);

      sub_1ABA84B54(&v125);
    }

    v117 = 0;
    v22 = v134[0];
    v23 = v134[1];
    sub_1ABA93E64(&v125, &v122);
    v24 = v123;
    v25 = v124;
    sub_1ABA94E50(&v122, v123);
    v116 = &v106;
    sub_1ABA7BD7C();
    MEMORY[0x1EEE9AC00](v26);
    sub_1ABA7BC58();
    v28 = sub_1ABA8EC9C(v27);
    v29(v28);
    sub_1ABE1B31C(v2, v22, v23, &v133, v24, v25);
    sub_1ABA84B54(&v122);

    v1 = &v135;
    sub_1ABB1840C(&v122, v22, v23);
    sub_1ABB5137C(v134);

    sub_1ABA84B54(&v125);
  }

  while (v9);
LABEL_4:
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v114)
    {
      v9 = 0;
      v128 = 0;
      v126 = 0u;
      v127 = 0u;
      v125 = 0u;
      goto LABEL_9;
    }

    v9 = v2[v13];
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_37:
  v133 = v1;
  sub_1ABA7F8DC();
  sub_1ABA93E64(v103 + v102 * v104, &v129);

  sub_1ABE19D0C(&v129);
  sub_1ABAF2860();
  swift_allocError();
  *v105 = 0xD000000000000020;
  *(v105 + 8) = 0x80000001ABF924F0;
  *(v105 + 16) = 0;
  swift_willThrow();

  sub_1ABE1B2C0(v113);
}

void *sub_1ABE1AAD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1ABADCEA8();
  v3 = sub_1ABB6628C();

  sub_1ABAB4C48(v5);
  if (v3 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1ABE1AB8C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(a2 + 16) && (v5 = *(v4 + 16), v6 = *(v4 + 24), , v13 = sub_1ABA94FC8(v5, v6, v7, v8, v9, v10, v11, v12, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31), v15 = v14, , (v15 & 1) != 0))
  {
    sub_1ABA7F8DC();
    return sub_1ABA93E64(v16 + v13 * v17, a3);
  }

  else
  {
    sub_1ABF24AB4();

    v20 = *(v4 + 16);
    v19 = *(v4 + 24);

    MEMORY[0x1AC5A9410](v20, v19);

    sub_1ABAF2860();
    swift_allocError();
    *v21 = 0xD000000000000023;
    *(v21 + 8) = 0x80000001ABF91DE0;
    *(v21 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1ABE1ACB8()
{
  sub_1ABAD219C(&qword_1EB4DA8F0, &qword_1ABF68170);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1ABF5EB80;
  *(v1 + 32) = 6579297;
  *(v1 + 40) = 0xE300000000000000;
  v2 = type metadata accessor for Add();
  sub_1ABA8F9E0(v2);
  v3 = sub_1ABAF1D84();
  *(v1 + 72) = v0;
  *(v1 + 80) = &off_1F20885C8;
  *(v1 + 48) = v3;
  *(v1 + 88) = 7105633;
  *(v1 + 96) = 0xE300000000000000;
  v4 = type metadata accessor for All();
  sub_1ABA8F9E0(v4);
  v5 = sub_1ABAE47C0();
  *(v1 + 128) = v0;
  *(v1 + 136) = &off_1F20885C8;
  *(v1 + 104) = v5;
  *(v1 + 144) = 0x796C7069746C756DLL;
  *(v1 + 152) = 0xE800000000000000;
  v6 = type metadata accessor for Multiply();
  sub_1ABA8F9E0(v6);
  v7 = sub_1ABAF1D84();
  *(v1 + 184) = v0;
  *(v1 + 192) = &off_1F20885C8;
  *(v1 + 160) = v7;
  *(v1 + 200) = 0x656469766964;
  *(v1 + 208) = 0xE600000000000000;
  v8 = type metadata accessor for Divide();
  sub_1ABA8F9E0(v8);
  v9 = sub_1ABAF1D84();
  *(v1 + 240) = v0;
  *(v1 + 248) = &off_1F20885C8;
  *(v1 + 216) = v9;
  *(v1 + 256) = 6581857;
  *(v1 + 264) = 0xE300000000000000;
  v10 = type metadata accessor for And();
  sub_1ABA8F9E0(v10);
  v11 = sub_1ABAE4DC8();
  *(v1 + 296) = v0;
  *(v1 + 304) = &off_1F20885C8;
  *(v1 + 272) = v11;
  *(v1 + 312) = 6780513;
  *(v1 + 320) = 0xE300000000000000;
  v12 = type metadata accessor for Avg();
  sub_1ABA8F9E0(v12);
  v13 = sub_1ABAF1D84();
  *(v1 + 352) = v0;
  *(v1 + 360) = &off_1F20885C8;
  *(v1 + 328) = v13;
  *(v1 + 368) = 0x746E756F63;
  *(v1 + 376) = 0xE500000000000000;
  v14 = type metadata accessor for Count();
  sub_1ABA8F9E0(v14);
  v15 = sub_1ABB50FC4();
  *(v1 + 408) = v0;
  *(v1 + 416) = &off_1F20885C8;
  *(v1 + 384) = v15;
  *(v1 + 424) = 0x797469746E65;
  *(v1 + 432) = 0xE600000000000000;
  v16 = type metadata accessor for EntityOperator();
  sub_1ABA8F9E0(v16);
  v17 = sub_1ABB826E4();
  *(v1 + 464) = v0;
  *(v1 + 472) = &off_1F20885C8;
  *(v1 + 440) = v17;
  *(v1 + 480) = 0x68636165726F66;
  *(v1 + 488) = 0xE700000000000000;
  v18 = type metadata accessor for ForEach();
  sub_1ABA8F9E0(v18);
  v19 = sub_1ABC459B8();
  *(v1 + 520) = v0;
  *(v1 + 528) = &off_1F20885C8;
  *(v1 + 496) = v19;
  *(v1 + 536) = 7628135;
  *(v1 + 544) = 0xE300000000000000;
  v20 = type metadata accessor for Get();
  sub_1ABA8F9E0(v20);
  v21 = sub_1ABC79FD0();
  *(v1 + 576) = v0;
  *(v1 + 584) = &off_1F20885C8;
  *(v1 + 552) = v21;
  *(v1 + 592) = 0x686374616DLL;
  *(v1 + 600) = 0xE500000000000000;
  v22 = type metadata accessor for Match();
  sub_1ABA8F9E0(v22);
  v23 = sub_1ABE09294();
  *(v1 + 632) = v0;
  *(v1 + 640) = &off_1F20885C8;
  *(v1 + 608) = v23;
  *(v1 + 648) = 29295;
  *(v1 + 656) = 0xE200000000000000;
  v24 = type metadata accessor for Or();
  sub_1ABA8F9E0(v24);
  v25 = sub_1ABE1B794();
  *(v1 + 688) = v0;
  *(v1 + 696) = &off_1F20885C8;
  *(v1 + 664) = v25;
  *(v1 + 704) = 7370352;
  *(v1 + 712) = 0xE300000000000000;
  v26 = type metadata accessor for Pvp();
  sub_1ABA8F9E0(v26);
  v27 = sub_1ABE36518();
  *(v1 + 744) = v0;
  *(v1 + 752) = &off_1F20885C8;
  *(v1 + 720) = v27;
  *(v1 + 760) = 1952802673;
  *(v1 + 768) = 0xE400000000000000;
  v28 = type metadata accessor for Qget();
  sub_1ABA8F9E0(v28);
  v29 = sub_1ABE3701C();
  *(v1 + 800) = v0;
  *(v1 + 808) = &off_1F20885C8;
  *(v1 + 776) = v29;
  *(v1 + 816) = 0x746567706F727071;
  *(v1 + 824) = 0xE800000000000000;
  v30 = type metadata accessor for Qpropget();
  sub_1ABA8F9E0(v30);
  v31 = sub_1ABE37324();
  *(v1 + 856) = v0;
  *(v1 + 864) = &off_1F20885C8;
  *(v1 + 832) = v31;
  *(v1 + 872) = 0x7463656C657371;
  *(v1 + 880) = 0xE700000000000000;
  v32 = type metadata accessor for Qselect();
  sub_1ABA8F9E0(v32);
  v33 = sub_1ABE37880();
  *(v1 + 912) = v0;
  *(v1 + 920) = &off_1F20885C8;
  *(v1 + 888) = v33;
  *(v1 + 928) = 6452595;
  *(v1 + 936) = 0xE300000000000000;
  v34 = type metadata accessor for Sub();
  sub_1ABA8F9E0(v34);
  v35 = sub_1ABAF1D84();
  *(v1 + 968) = v0;
  *(v1 + 976) = &off_1F20885C8;
  *(v1 + 944) = v35;
  *(v1 + 984) = 1954047348;
  *(v1 + 992) = 0xE400000000000000;
  v36 = type metadata accessor for Text();
  sub_1ABA8F9E0(v36);
  v37 = sub_1ABE84428();
  *(v1 + 1024) = v0;
  *(v1 + 1032) = &off_1F20885C8;
  *(v1 + 1000) = v37;
  *(v1 + 1040) = 0x656C70697274;
  *(v1 + 1048) = 0xE600000000000000;
  v38 = type metadata accessor for Triple();
  sub_1ABA8F9E0(v38);
  v39 = sub_1ABE905D0();
  *(v1 + 1080) = v0;
  *(v1 + 1088) = &off_1F20885C8;
  *(v1 + 1056) = v39;
  strcpy((v1 + 1096), "renderDateTime");
  *(v1 + 1111) = -18;
  v40 = type metadata accessor for RenderDateTime();
  sub_1ABA8F9E0(v40);
  v41 = sub_1ABE422E4();
  *(v1 + 1136) = v0;
  *(v1 + 1144) = &off_1F20885C8;
  *(v1 + 1112) = v41;
  *(v1 + 1152) = 29799;
  *(v1 + 1160) = 0xE200000000000000;
  v42 = type metadata accessor for GreaterThan();
  sub_1ABA8F9E0(v42);
  v43 = sub_1ABD1E73C();
  *(v1 + 1192) = v0;
  *(v1 + 1200) = &off_1F20885C8;
  *(v1 + 1168) = v43;
  *(v1 + 1208) = 6648935;
  *(v1 + 1216) = 0xE300000000000000;
  v44 = type metadata accessor for GreaterThanEqual();
  sub_1ABA8F9E0(v44);
  v45 = sub_1ABD1E7FC();
  *(v1 + 1248) = v0;
  *(v1 + 1256) = &off_1F20885C8;
  *(v1 + 1224) = v45;
  *(v1 + 1264) = 29804;
  *(v1 + 1272) = 0xE200000000000000;
  v46 = type metadata accessor for LessThan();
  sub_1ABA8F9E0(v46);
  v47 = sub_1ABDEBF38();
  *(v1 + 1304) = v0;
  *(v1 + 1312) = &off_1F20885C8;
  *(v1 + 1280) = v47;
  *(v1 + 1320) = 6648940;
  *(v1 + 1328) = 0xE300000000000000;
  v48 = type metadata accessor for LessThanEqual();
  sub_1ABA8F9E0(v48);
  v49 = sub_1ABDEBFF8();
  *(v1 + 1360) = v0;
  *(v1 + 1368) = &off_1F20885C8;
  *(v1 + 1336) = v49;
  *(v1 + 1376) = 0x6373615F74726F73;
  *(v1 + 1384) = 0xE800000000000000;
  v50 = type metadata accessor for SortAsc();
  sub_1ABA8F9E0(v50);
  v51 = sub_1ABE65CEC();
  *(v1 + 1416) = v0;
  *(v1 + 1424) = &off_1F20885C8;
  *(v1 + 1392) = v51;
  *(v1 + 1432) = 0x7365645F74726F73;
  *(v1 + 1440) = 0xE900000000000063;
  v52 = type metadata accessor for SortDesc();
  sub_1ABA8F9E0(v52);
  v53 = sub_1ABE65CEC();
  *(v1 + 1472) = v0;
  *(v1 + 1480) = &off_1F20885C8;
  *(v1 + 1448) = v53;
  sub_1ABAD219C(&qword_1EB4DA8F8, &qword_1ABF68178);
  result = sub_1ABF239C4();
  qword_1ED87C3F8 = result;
  return result;
}