uint64_t sub_1390(uint64_t a1, uint64_t a2)
{
  v102 = a2;
  v112 = a1;
  v107 = sub_2B68();
  sub_2A00();
  __chkstk_darwin(v2);
  sub_2A60();
  sub_2A50(v4 - v3);
  v100 = sub_2B88();
  sub_2A00();
  __chkstk_darwin(v5);
  sub_2A70();
  sub_2A40();
  __chkstk_darwin(v6);
  sub_2A40();
  __chkstk_darwin(v7);
  v109 = &v96 - v8;
  v101 = sub_2B08();
  sub_2A00();
  __chkstk_darwin(v9);
  sub_2A60();
  sub_2A50(v11 - v10);
  v99 = sub_2B38();
  sub_2A00();
  __chkstk_darwin(v12);
  sub_2A60();
  sub_2A50(v14 - v13);
  sub_2BC8();
  sub_2AC4();
  v110 = v16;
  v111 = v15;
  __chkstk_darwin(v15);
  sub_2A70();
  v108 = v17 - v18;
  __chkstk_darwin(v19);
  sub_2A40();
  __chkstk_darwin(v20);
  sub_2A40();
  __chkstk_darwin(v21);
  v97 = &v96 - v22;
  v23 = sub_20C0(&qword_8130, &qword_2E38);
  __chkstk_darwin(v23 - 8);
  sub_2A50(&v96 - v24);
  v25 = sub_2AE8();
  sub_2A00();
  __chkstk_darwin(v26);
  sub_2A70();
  sub_2A40();
  __chkstk_darwin(v27);
  sub_2A50(&v96 - v28);
  sub_2B28();
  sub_2A00();
  __chkstk_darwin(v29);
  sub_2A60();
  v32 = v31 - v30;
  v33 = sub_2BA8();
  sub_2AC4();
  v35 = v34;
  __chkstk_darwin(v36);
  sub_2A70();
  v39 = v37 - v38;
  __chkstk_darwin(v40);
  v42 = &v96 - v41;
  sub_2AD8();
  sub_2A00();
  __chkstk_darwin(v43);
  sub_2A60();
  v46 = v45 - v44;
  sub_2878(v112, v45 - v44, &type metadata accessor for MailPluginModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v71 = *v46;
      v72 = *(*v46 + 16) == 1;
      v74 = v110;
      v73 = v111;
      v75 = v104;
      if (!v72)
      {
        goto LABEL_12;
      }

      sub_2AB8();
      sub_1F3C(v71, v76);
      if (sub_2798(v32, 1, v25) == 1)
      {
        sub_27C0(v32, &qword_8130, &qword_2E38);
LABEL_12:
        v77 = sub_2B98();
        (*(v74 + 16))(v75, v77, v73);
        v78 = sub_2BB8();
        v79 = sub_2C08();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          *v80 = 0;
          _os_log_impl(&dword_0, v78, v79, "Picking ReadMessagesView", v80, 2u);
          sub_2A80(v80);
        }

        (*(v74 + 8))(v75, v73);
        sub_2AB8();
        sub_2AF8();
        sub_28D8(&qword_8150, &type metadata accessor for MessageListView, &protocol conformance descriptor for MessageListView);
        v47 = sub_2BD8();
        v81 = sub_2AAC();
        goto LABEL_17;
      }

      v88 = v98;
      sub_2818(v32, v98, &type metadata accessor for WidgetMessage);
      v89 = sub_2B98();
      v90 = v97;
      (*(v74 + 16))(v97, v89, v73);
      v91 = sub_2BB8();
      v92 = sub_2C08();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_0, v91, v92, "Picking MessageDetailView", v93, 2u);
        sub_2A80(v93);
      }

      (*(v74 + 8))(v90, v73);
      sub_2878(v88, v96, &type metadata accessor for WidgetMessage);
      sub_2AB8();
      sub_2B48();
      sub_28D8(&qword_8158, &type metadata accessor for MessageDetailView, &protocol conformance descriptor for MessageDetailView);
      v47 = sub_2BD8();
      v94 = sub_2AAC();
      sub_2920(v94, v95);
      v82 = &type metadata accessor for WidgetMessage;
      v81 = v88;
LABEL_17:
      sub_2920(v81, v82);
      return v47;
    case 2u:
      sub_2B98();
      sub_2A98();
      v50 = v103;
      v51(v103);
      v52 = sub_2BB8();
      v53 = sub_2C08();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_0, v52, v53, "Picking DisambiguationRecipientView", v54, 2u);
        sub_2A80(v54);
      }

      (*(v35 + 8))(v50, v46);
      sub_2B78();
      v117 = *&v116[8];
      v118 = *&v116[24];
      v119 = *v116;
      v113 = *v116;
      v114 = *&v116[16];
      v115 = *&v116[32];
      sub_26C4();
      v47 = sub_2BD8();
      sub_2718(&v119);
      sub_2744(&v117);
      sub_27C0(&v118, &qword_8148, &qword_2E40);
      return v47;
    case 3u:
      v55 = v109;
      sub_2818(v46, v109, &type metadata accessor for DisambiguateHandlesDataModel);
      sub_2B98();
      sub_2A98();
      v56 = v108;
      v57(v108);
      sub_2A28();
      v58 = v105;
      sub_2878(v55, v105, v59);
      v60 = sub_2BB8();
      v61 = sub_2C08();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v116 = v63;
        *v62 = 136315138;
        sub_2A28();
        v64 = v106;
        sub_2878(v58, v106, v65);
        v66 = sub_2BE8();
        v68 = v67;
        sub_2A10();
        sub_2920(v58, v69);
        v70 = sub_2108(v66, v68, v116);
        v55 = v109;

        *(v62 + 4) = v70;
        _os_log_impl(&dword_0, v60, v61, "Picking DisambiguationHandleView: %s", v62, 0xCu);
        sub_2678(v63);
        sub_2A80(v63);
        sub_2A80(v62);

        (*(v35 + 8))(v108, v111);
      }

      else
      {

        sub_2A10();
        sub_2920(v58, v83);
        (*(v35 + 8))(v56, v46);
        v64 = v106;
      }

      sub_2A28();
      sub_2878(v55, v64, v84);
      sub_2AB8();
      sub_2B58();
      sub_28D8(&qword_8138, &type metadata accessor for DisambiguateHandlesView, &protocol conformance descriptor for DisambiguateHandlesView);
      v47 = sub_2BD8();
      v85 = sub_2AAC();
      sub_2920(v85, v86);
      sub_2A10();
      v81 = v55;
      goto LABEL_17;
    default:
      (*(v35 + 32))(v42, v46, v33);
      (*(v35 + 16))(v39, v42, v33);
      sub_2B18();
      sub_28D8(&qword_8160, &type metadata accessor for SendMessageView, &protocol conformance descriptor for SendMessageView);
      v47 = sub_2BD8();
      v48 = sub_2AAC();
      sub_2920(v48, v49);
      (*(v35 + 8))(v42, v33);
      return v47;
  }
}

uint64_t sub_1F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_2AE8();
  v6 = v5;
  if (v4)
  {
    sub_2878(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, &type metadata accessor for WidgetMessage);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_2978(a2, v7, 1, v6);
}

uint64_t sub_2080@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2028();
  *a1 = result;
  return result;
}

uint64_t sub_20C0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2108(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21CC(v11, 0, 0, 1, a1, a2);
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
    sub_29A0(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_2678(v11);
  return v7;
}

unint64_t sub_21CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22CC(a5, a6);
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
    result = sub_2C28();
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

char *sub_22CC(uint64_t a1, unint64_t a2)
{
  v3 = sub_2318(a1, a2);
  sub_2430(&off_4318);
  return v3;
}

char *sub_2318(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_2BF8())
  {
    result = sub_2514(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2C18();
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
          result = sub_2C28();
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

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_2430(uint64_t result)
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

    result = sub_2584(result, v7, 1, v3);
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

void *sub_2514(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_20C0(&qword_8168, qword_2E48);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2584(char *result, int64_t a2, char a3, char *a4)
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
    sub_20C0(&qword_8168, qword_2E48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_2678(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_26C4()
{
  result = qword_8140;
  if (!qword_8140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8140);
  }

  return result;
}

uint64_t sub_27C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_20C0(a2, a3);
  sub_2A00();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  sub_2A00();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  sub_2A00();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_28D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2920(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_2A00();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_29A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2A80(uint64_t a1)
{

  return _swift_slowDealloc(a1, -1, -1);
}