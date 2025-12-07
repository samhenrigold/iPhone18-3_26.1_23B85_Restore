uint64_t sub_1D339FDB4(void **a1, void **a2, void **a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v104 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v103 = (&v98 - v12);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v106 = (&v98 - v14);
  MEMORY[0x1EEE9AC00](v13);
  v102 = (&v98 - v15);
  v16 = sub_1D33DDD34();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v101 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v109 = &v98 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v100 = &v98 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v111 = &v98 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v108 = &v98 - v26;
  v27 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v27 = a2 - a1;
  }

  v28 = v27 >> 3;
  v113 = a3;
  v29 = a3 - a2;
  v30 = v29 / 8;
  if (v27 >> 3 >= v29 / 8)
  {
    v110 = a1;
    if (a4 != a2 || &a2[v30] <= a4)
    {
      memmove(a4, a2, 8 * v30);
    }

    v31 = &a4[v30];
    v62 = v103;
    if (v29 >= 8 && a2 > v110)
    {
      v63 = v17;
      v64 = (v17 + 32);
      v108 = (v63 + 56);
      v99 = (v63 + 48);
      v100 = (v63 + 8);
      v65 = &off_1E843B000;
      v112 = a4;
LABEL_32:
      v107 = a2;
      v66 = a2 - 1;
      --v113;
      v67 = v31;
      v102 = a2 - 1;
      do
      {
        v68 = *(v67 - 8);
        v105 = (v67 - 8);
        v106 = v31;
        v69 = *v66;
        v70 = v68;
        v71 = v69;
        v72 = [v70 v65[423]];
        if (v72)
        {
          v73 = v111;
          v74 = v72;
          sub_1D33DDCF4();

          v75 = *v64;
          (*v64)(v62, v73, v16);
          v76 = *v108;
          (*v108)(v62, 0, 1, v16);
          v75(v109, v62, v16);
        }

        else
        {
          v76 = *v108;
          (*v108)(v62, 1, 1, v16);
          v77 = [v70 receivedAt];
          sub_1D33DDCF4();

          if ((*v99)(v62, 1, v16) != 1)
          {
            sub_1D33A1104(v62);
          }
        }

        v78 = [v71 v65[423]];
        v79 = v71;
        if (v78)
        {
          v80 = v71;
          v81 = v70;
          v82 = v111;
          v83 = v78;
          sub_1D33DDCF4();

          v84 = *v64;
          v85 = v64;
          v86 = v104;
          v84(v104, v82, v16);
          v76(v86, 0, 1, v16);
          v87 = v101;
          v88 = v86;
          v64 = v85;
          v84(v101, v88, v16);
        }

        else
        {
          v81 = v70;
          v89 = v104;
          v76(v104, 1, 1, v16);
          v80 = v79;
          v90 = [v79 receivedAt];
          v91 = v101;
          sub_1D33DDCF4();

          v92 = v89;
          v87 = v91;
          if ((*v99)(v92, 1, v16) != 1)
          {
            sub_1D33A1104(v104);
          }
        }

        v93 = v109;
        v94 = sub_1D33DDD14();
        v95 = *v100;
        (*v100)(v87, v16);
        v95(v93, v16);

        if (v94 == -1)
        {
          v31 = v106;
          a4 = v112;
          v65 = &off_1E843B000;
          v96 = v102;
          if (v113 + 1 != v107)
          {
            *v113 = *v102;
          }

          v62 = v103;
          if (v31 <= a4 || (a2 = v96, v96 <= v110))
          {
            a2 = v96;
            goto LABEL_51;
          }

          goto LABEL_32;
        }

        v67 = v105;
        a4 = v112;
        v65 = &off_1E843B000;
        v66 = v102;
        if (v113 + 1 != v106)
        {
          *v113 = *v105;
        }

        --v113;
        v31 = v67;
        v62 = v103;
      }

      while (v67 > a4);
      v31 = v67;
      a2 = v107;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v28] <= a4)
    {
      memmove(a4, a1, 8 * v28);
    }

    v31 = &a4[v28];
    if (a2 - a1 >= 8 && a2 < v113)
    {
      v32 = a2;
      v109 = (v17 + 56);
      v103 = (v17 + 48);
      v104 = (v17 + 8);
      v105 = (v17 + 32);
      v33 = &off_1E843B000;
      v34 = v102;
      do
      {
        v110 = a1;
        v107 = v32;
        v35 = *v32;
        v112 = a4;
        v36 = *a4;
        v37 = v35;
        v38 = v36;
        v39 = [v37 v33[423]];
        if (v39)
        {
          v40 = v111;
          v41 = v39;
          sub_1D33DDCF4();

          v42 = *v105;
          (*v105)(v34, v40, v16);
          v43 = *v109;
          (*v109)(v34, 0, 1, v16);
          v42(v108, v34, v16);
        }

        else
        {
          v43 = *v109;
          (*v109)(v34, 1, 1, v16);
          v44 = [v37 receivedAt];
          sub_1D33DDCF4();

          if ((*v103)(v34, 1, v16) != 1)
          {
            sub_1D33A1104(v34);
          }
        }

        v45 = [v38 v33[423]];
        if (v45)
        {
          v46 = v31;
          v47 = v111;
          v48 = v45;
          sub_1D33DDCF4();

          v49 = v106;
          v50 = *v105;
          v51 = v47;
          v31 = v46;
          v52 = v100;
          (*v105)(v106, v51, v16);
          v43(v49, 0, 1, v16);
          v50(v52, v49, v16);
          v53 = v52;
        }

        else
        {
          v54 = v106;
          v43(v106, 1, 1, v16);
          v55 = [v38 receivedAt];
          v53 = v100;
          sub_1D33DDCF4();

          if ((*v103)(v54, 1, v16) != 1)
          {
            sub_1D33A1104(v106);
          }
        }

        v56 = v108;
        v57 = sub_1D33DDD14();
        v58 = *v104;
        (*v104)(v53, v16);
        v58(v56, v16);

        if (v57 == -1)
        {
          v59 = v107;
          v32 = v107 + 1;
          v60 = v110;
          v61 = v110 == v107;
          a4 = v112;
        }

        else
        {
          v59 = v112;
          a4 = v112 + 1;
          v60 = v110;
          v61 = v110 == v112;
          v32 = v107;
        }

        v34 = v102;
        v33 = &off_1E843B000;
        if (!v61)
        {
          *v60 = *v59;
        }

        a1 = v60 + 1;
      }

      while (a4 < v31 && v32 < v113);
    }

    a2 = a1;
  }

LABEL_51:
  if (a2 != a4 || a2 >= (a4 + ((v31 - a4 + (v31 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v31 - a4));
  }

  return 1;
}

uint64_t sub_1D33A0780(unint64_t a1)
{
  if (a1)
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
LABEL_17:
      v3 = sub_1D33DEE14();
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = 0;
    while (v3 != v4)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D38B75D0](v4, a1);
      }

      else
      {
        if (v4 >= *(v2 + 16))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = [v6 value];
      if (!v8)
      {
        sub_1D33DE7B4();
        v8 = sub_1D33DE784();
      }

      v5 = [v8 destinationIdIsTemporary];

      ++v4;
      if (v5)
      {
        break;
      }
    }
  }

  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_1D33DDB74();

  return v11;
}

uint64_t sub_1D33A096C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1D3363B24(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1D33A09DC(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = [v3 invitedMemberHandles];
  if (v5)
  {
    v6 = v5;
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
    v7 = sub_1D33DEA54();
  }

  else
  {
    v7 = 0;
  }

  v44 = v7;
  if (([v3 isLocallyCreated] & 1) == 0)
  {
    v8 = [v3 originatorHandle];
    if (v8)
    {
      if (!v7)
      {

        if (!a2)
        {
          goto LABEL_12;
        }

        goto LABEL_9;
      }

      sub_1D3363C74(&v43, v8);
    }
  }

  if (!a2)
  {
LABEL_12:
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

LABEL_9:
  v9 = [a2 localMember];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v9 handles];

  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v12 = sub_1D33DEA54();

  sub_1D339A780(v12);
  v14 = v13;

LABEL_13:
  v15 = sub_1D3367844(v14);

  v43 = v15;
  v16 = [objc_opt_self() sharedController];
  [v16 blockUntilConnected];

  v17 = [objc_opt_self() sharedInstance];
  if (!v17 || (sub_1D331DA18(0, &qword_1EC761A78, 0x1E69A5CA0), ObjCClassFromMetadata = swift_getObjCClassFromMetadata(), v19 = v17, v20 = [ObjCClassFromMetadata facetimeService], v21 = objc_msgSend(v19, sel_bestAccountForService_, v20), v19, v20, !v21) || (v22 = objc_msgSend(v21, sel_aliases), v21, !v22) || (v23 = sub_1D33DE8B4(), v22, v24 = sub_1D337BCA4(v23), , !v24))
  {

    v24 = MEMORY[0x1E69E7CC0];
  }

  sub_1D33A096C(v24);

  if (v44)
  {

    v26 = sub_1D339D9CC(v25, &v43);

    sub_1D33A6A18(v26, v4);
    v28 = v27;

    v29 = *(v28 + 16);
    if (v29)
    {
      goto LABEL_20;
    }

LABEL_24:

    v30 = 0;
    goto LABEL_28;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v29 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v29)
  {
    goto LABEL_24;
  }

LABEL_20:
  v30 = *(v28 + 40);
  v31 = *(v28 + 48);
  v32 = *(v28 + 32);

  if (v29 == 2)
  {
    type metadata accessor for BundleClass();
    v33 = swift_getObjCClassFromMetadata();
    v42 = v32;
    v34 = [objc_opt_self() bundleForClass_];
    sub_1D33DDB74();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C8, &unk_1D33E3B50);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1D33E2410;
    *(v35 + 56) = MEMORY[0x1E69E6158];
    *(v35 + 64) = sub_1D3387AE4();
    *(v35 + 32) = v30;
    *(v35 + 40) = v31;
LABEL_27:

    v30 = sub_1D33DE7D4();

    goto LABEL_28;
  }

  if (v29 != 1)
  {
    type metadata accessor for BundleClass();
    v36 = swift_getObjCClassFromMetadata();
    v42 = v32;
    v37 = [objc_opt_self() bundleForClass_];
    sub_1D33DDB74();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C8, &unk_1D33E3B50);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1D33E3DA0;
    *(v38 + 56) = MEMORY[0x1E69E6158];
    v39 = sub_1D3387AE4();
    *(v38 + 32) = v30;
    *(v38 + 40) = v31;
    v40 = MEMORY[0x1E69E65A8];
    *(v38 + 96) = MEMORY[0x1E69E6530];
    *(v38 + 104) = v40;
    *(v38 + 64) = v39;
    *(v38 + 72) = v29 - 1;
    goto LABEL_27;
  }

LABEL_28:

  return v30;
}

unint64_t sub_1D33A1038()
{
  result = qword_1EC761A68;
  if (!qword_1EC761A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761A68);
  }

  return result;
}

unint64_t sub_1D33A1090()
{
  result = qword_1EC761A70;
  if (!qword_1EC761A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761A70);
  }

  return result;
}

uint64_t sub_1D33A1104(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D33A116C(unint64_t a1, id a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1D38B75D0](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * i + 32);
        }

        a2 = v5;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_1D336389C(&v10, v5);

        if (v6 == v3)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a2;
      v9 = sub_1D33DEE14();
      a2 = v8;
      v3 = v9;
    }

    while (v9);
  }

  return a2;
}

uint64_t RecentsItem.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 32);
  v5 = 1;
  if (((1 << v4) & 0x1BB) == 0)
  {
    if (v4 == 2)
    {
      v6 = *v1;
      v8 = *(v1 + 16);
      v7 = *(v1 + 24);
      v9 = *v1;
      sub_1D33DE0B4();
      sub_1D332B1DC(v6, v3, v8, v7, 2u);
    }

    else
    {
      v10 = v3;
      sub_1D33DE0B4();
    }

    v5 = 0;
  }

  v11 = sub_1D33DDDB4();
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, v5, 1, v11);
}

void *sub_1D33A1350(uint64_t a1)
{
  v1 = a1;
  v22 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
    result = sub_1D33DEA94();
    v1 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_20:
      sub_1D331FEEC(v1);
      return v10;
    }

    while (1)
    {
      [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];

      MEMORY[0x1D38B6F20]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D33DE8D4();
      }

      result = sub_1D33DE8F4();
      v10 = v22;
      v5 = v13;
      v6 = v14;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D33DEE54())
      {
        sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
        swift_dynamicCast();
        v15 = v16;
        v13 = v5;
        v14 = v6;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *RecentsItem.message.getter()
{
  result = 0;
  v2 = *(v0 + 32);
  if (v2 > 8)
  {
    goto LABEL_5;
  }

  if (((1 << v2) & 0x1B0) != 0)
  {
    return result;
  }

  v3 = *(v0 + 8);
  if (v2 != 3 && v2 != 6)
  {
LABEL_5:
    if (v2 < 2)
    {
      return result;
    }

    v3 = *v0;
  }

  v4 = v3;
  return v3;
}

uint64_t RecentsItem.messageUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = 1;
  if (v3 > 8)
  {
    goto LABEL_5;
  }

  if (((1 << v3) & 0x1B0) != 0)
  {
    goto LABEL_8;
  }

  v5 = *(v1 + 8);
  if (v3 != 3 && v3 != 6)
  {
LABEL_5:
    if (v3 < 2)
    {
      goto LABEL_8;
    }

    v5 = *v1;
  }

  v6 = v5;
  sub_1D33DE0B4();

  v4 = 0;
LABEL_8:
  v7 = sub_1D33DDDB4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v4, 1, v7);
}

uint64_t RecentsItem.init(link:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v88 = &v85 - v5;
  v87 = sub_1D33DDD34();
  v6 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v85 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v85 - v15;
  v17 = type metadata accessor for RecentsItem(0);
  v92 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[1];
  v22 = a1[2];
  v95 = *a1;
  v96 = v22;
  v23 = &v20[v18[9]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v20[v18[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v93 = v18;
  v25 = v18[11];
  v26 = type metadata accessor for ReminderStatus(0);
  v27 = 1;
  (*(*(v26 - 8) + 56))(&v20[v25], 1, 1, v26);
  v28 = [v21 URL];
  v94 = a2;
  v91 = v6;
  if (v28)
  {
    v29 = v28;
    sub_1D33DDC24();

    v27 = 0;
  }

  v30 = sub_1D33DDC44();
  v31 = *(v30 - 1);
  (*(v31 + 56))(v14, v27, 1, v30);
  sub_1D333842C(v14, v16, &unk_1EC760EA0, &qword_1D33E2210);
  v32 = (*(v31 + 48))(v16, 1, v30);
  sub_1D331E880(v16, &unk_1EC760EA0, &qword_1D33E2210);
  if (v32 == 1)
  {

    sub_1D331E880(&v20[v25], &unk_1EC761320, &unk_1D33E28D0);
    return (*(v92 + 56))(v94, 1, 1, v93);
  }

  v35 = v95;
  v34 = v96;
  *v20 = v95;
  *(v20 + 1) = v21;
  *(v20 + 2) = v34;
  *(v20 + 3) = 0;
  v20[32] = 7;

  v36 = v21;

  v90 = v36;
  v37 = [v36 invitedMemberHandles];
  v38 = MEMORY[0x1E69E7CC0];
  if (v37)
  {
    v39 = v37;
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
    v40 = sub_1D33DEA54();

    v16 = 0;
    sub_1D33A6A18(v40, v35);
    v42 = v41;
    v85 = 0;
  }

  else
  {
    v85 = 0;
    v42 = MEMORY[0x1E69E7CC0];
  }

  v43 = 0;
  v100 = v38;
  v44 = *(v42 + 16);
  v45 = 32;
  v46 = v38;
LABEL_9:
  v47 = v45 + 56 * v43;
  while (v44 != v43)
  {
    if (v43 >= *(v42 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    ++v43;
    v48 = *(v42 + v47);
    v47 += 56;
    if (v48)
    {
      v86 = v45;
      v16 = v35;
      v30 = v48;
      MEMORY[0x1D38B6F20]();
      if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      v46 = v100;
      v45 = v86;
      goto LABEL_9;
    }
  }

  *(v20 + 5) = v46;
  v49 = v90;
  v100 = v35;
  v101 = v90;
  v102 = v96;
  v30 = ConversationLink.displayName.getter();
  v16 = v50;
  v51 = [v49 invitedMemberHandles];
  if (v51)
  {
    v52 = v51;
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
    v53 = sub_1D33DEA54();

    v44 = v88;
    v54 = v89;
    goto LABEL_21;
  }

  v44 = v88;
  if (!(v38 >> 62))
  {
LABEL_19:
    v53 = MEMORY[0x1E69E7CD0];
    goto LABEL_20;
  }

LABEL_34:
  if (!sub_1D33DEE14())
  {
    goto LABEL_19;
  }

  sub_1D33A6E14(MEMORY[0x1E69E7CC0], qword_1EC7611D8, &unk_1D33E4370, &unk_1EDEC0120, 0x1E69D8C00);
  v53 = v84;
LABEL_20:
  v54 = v89;
LABEL_21:
  v55 = sub_1D3321CEC(v53, sub_1D33D6CA4, sub_1D33D3AC8);

  v56 = sub_1D33A0780(v55);
  v58 = v57;

  v100 = v35;
  v101 = v90;
  v102 = v96;
  v59 = sub_1D33A09DC(&v100, 0);
  if (!v60)
  {
    if (!v16)
    {
      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v62 = objc_opt_self();
      v63 = [v62 bundleForClass_];
      v64 = sub_1D33DDB74();
      v66 = v65;

      *(v20 + 6) = v64;
      *(v20 + 7) = v66;
      v54 = v89;
      v67 = [v62 bundleForClass_];
      v35 = v95;
      v44 = v88;
      v30 = sub_1D33DDB74();
      v58 = v68;

      goto LABEL_28;
    }

    *(v20 + 6) = v30;
    *(v20 + 7) = v16;
    goto LABEL_26;
  }

  *(v20 + 6) = v59;
  *(v20 + 7) = v60;
  if (!v16)
  {
LABEL_26:
    v30 = v56;
    goto LABEL_28;
  }

  v58 = v16;
LABEL_28:
  *(v20 + 8) = v30;
  *(v20 + 9) = v58;
  v69 = v90;
  v100 = v35;
  v101 = v90;
  v70 = v96;
  v102 = v96;
  v71 = ConversationLink.uniqueId.getter();
  v73 = v72;
  v97 = v35;
  v98 = v69;
  v99 = v70;
  ConversationLink.date.getter(v44);

  v74 = v91;
  v75 = *(v91 + 48);
  v76 = v87;
  if (v75(v44, 1, v87) == 1)
  {
    sub_1D33DDD24();
    v77 = v75(v44, 1, v76) == 1;
    v78 = v44;
    v80 = v93;
    v79 = v94;
    v81 = v92;
    if (!v77)
    {
      sub_1D331E880(v78, &qword_1EC760E10, &unk_1D33E1A90);
    }
  }

  else
  {
    (*(v74 + 32))(v54, v44, v76);
    v80 = v93;
    v79 = v94;
    v81 = v92;
  }

  *v10 = v71;
  *(v10 + 1) = v73;
  v10[16] = 0;
  v82 = type metadata accessor for CallInfo(0);
  (*(v91 + 32))(&v10[v82[6]], v54, v76);
  *&v10[v82[7]] = 0;
  v83 = &v10[v82[8]];
  *v83 = 0;
  *(v83 + 1) = 0;
  v10[v82[9]] = 0;
  *&v10[v82[10]] = 0;
  v10[v82[11]] = 0;
  v10[v82[12]] = 0;
  v10[v82[13]] = 0;
  (*(*(v82 - 1) + 56))(v10, 0, 1, v82);
  sub_1D333842C(v10, &v20[v80[8]], &unk_1EC761DE0, &unk_1D33E50F0);
  sub_1D332A828(v20, v79);
  (*(v81 + 56))(v79, 0, 1, v80);
  return sub_1D3337AB4(v20, type metadata accessor for RecentsItem);
}

id RecentsItem.recentCall.getter()
{
  if (*(v0 + 32) - 4 > 2)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t CallInfo.init(uniqueId:missed:date:numberOfOccurrences:senderIdentity:isOutgoing:duration:isVerified:isJunk:isBlocked:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, char a11, char a12, char a13)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  v19 = type metadata accessor for CallInfo(0);
  v20 = v19[6];
  v21 = sub_1D33DDD34();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a4, v21);
  *(a9 + v19[7]) = a5;
  v23 = (a9 + v19[8]);
  *v23 = a6;
  v23[1] = a7;
  *(a9 + v19[9]) = a8;
  *(a9 + v19[10]) = a10;
  *(a9 + v19[11]) = a11;
  *(a9 + v19[12]) = a12;
  *(a9 + v19[13]) = a13;
  return result;
}

uint64_t RecentsItem.init(type:title:subtitle:callInfo:contacts:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *(a1 + 32);
  v16 = type metadata accessor for RecentsItem(0);
  v17 = (a8 + v16[9]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a8 + v16[10]);
  *v18 = 0;
  v18[1] = 0;
  v19 = v16[11];
  v20 = type metadata accessor for ReminderStatus(0);
  v22 = a1[1];
  v23 = *a1;
  (*(*(v20 - 8) + 56))(a8 + v19, 1, 1, v20);
  *a8 = v23;
  *(a8 + 16) = v22;
  *(a8 + 32) = v15;
  *(a8 + 48) = a2;
  *(a8 + 56) = a3;
  *(a8 + 64) = a4;
  *(a8 + 72) = a5;
  result = sub_1D333842C(a6, a8 + v16[8], &unk_1EC761DE0, &unk_1D33E50F0);
  *(a8 + 40) = a7;
  return result;
}

uint64_t sub_1D33A23D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RecentsItem(0);
  v5 = (a2 + v4[9]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4[10]);
  *v6 = 0;
  v6[1] = 0;
  v7 = v4[11];
  v8 = type metadata accessor for ReminderStatus(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = [a1 remoteMembers];
  sub_1D331DA18(0, &unk_1EC761E40, 0x1E69D8B80);
  sub_1D33565AC(&unk_1EC7619C0, &unk_1EC761E40, 0x1E69D8B80);
  v10 = sub_1D33DEA54();

  v11 = sub_1D33A3924(v10);

  v12 = sub_1D33678DC(v11);

  v13 = [a1 link];
  if (v13)
  {
    v14 = v13;
    if (MEMORY[0x1E69E7CC0] >> 62 && sub_1D33DEE14())
    {
      sub_1D33A6E14(MEMORY[0x1E69E7CC0], &qword_1EC7611C0, &qword_1D33E26F0, &qword_1EC761170, 0x1E69992A8);
      v15 = v39;
    }

    else
    {
      v15 = MEMORY[0x1E69E7CD0];
    }

    v40 = v4;
    v41 = v12;
    if (qword_1EDEC0138 != -1)
    {
      swift_once();
    }

    v16 = qword_1EDEC0110;
    *a2 = a1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    v42[3] = v16;
    v42[4] = v14;
    v42[5] = v15;
    swift_retain_n();
    v17 = a1;
    v18 = v14;

    v19 = ConversationLink.displayName.getter();
    if (v20 || (v42[0] = v16, v42[1] = v18, v42[2] = v15, v19 = sub_1D33A09DC(v42, a1), v20))
    {
      v21 = v19;
      v22 = v20;
    }

    else
    {
      v35 = [v17 remoteMembers];
      v36 = sub_1D33DEA54();

      v37 = sub_1D339AAE8(v36);

      v21 = sub_1D33A0780(v37);
      v22 = v38;
    }

    v4 = v40;
    v12 = v41;
  }

  else
  {
    *a2 = a1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    v23 = [a1 displayName];
    v21 = sub_1D33DE7B4();
    v22 = v24;

    v16 = 0;
    v14 = 0;
    v15 = 0;
  }

  *(a2 + 48) = v21;
  *(a2 + 56) = v22;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass_];
  v27 = sub_1D33DDB74();
  v29 = v28;

  *(a2 + 64) = v27;
  *(a2 + 72) = v29;
  v30 = sub_1D33A1350(v12);
  sub_1D33A7638(v16, v14, v15);

  *(a2 + 40) = v30;
  v31 = v4[8];
  v32 = type metadata accessor for CallInfo(0);
  v33 = *(*(v32 - 8) + 56);

  return v33(a2 + v31, 1, 1, v32);
}

uint64_t CallInfo.uniqueId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CallInfo.uniqueId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CallInfo.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CallInfo(0) + 24);
  v4 = sub_1D33DDD34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecentsItem.BackingType.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (v2 <= 3)
  {
    if (*(v1 + 32) > 1u)
    {
      if (v2 != 2)
      {
        v4 = 3;
        goto LABEL_19;
      }

      v3 = 2;
    }

    else
    {
      if (*(v1 + 32))
      {
        v4 = 1;
        goto LABEL_19;
      }

      v3 = 0;
    }

LABEL_13:
    MEMORY[0x1D38B7920](v3);
    return sub_1D33DEC84();
  }

  if (*(v1 + 32) <= 5u)
  {
    if (v2 != 4)
    {
      v4 = 5;
      goto LABEL_19;
    }

    v3 = 4;
    goto LABEL_13;
  }

  if (v2 == 6)
  {
    v4 = 6;
LABEL_19:
    MEMORY[0x1D38B7920](v4);
    sub_1D33DEC84();
    return sub_1D33DEC84();
  }

  if (v2 != 7)
  {
    return MEMORY[0x1D38B7920](8);
  }

  MEMORY[0x1D38B7920](7);
  return sub_1D33DEC84();
}

uint64_t RecentsItem.BackingType.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1D33DF284();
  RecentsItem.BackingType.hash(into:)(v4);
  return sub_1D33DF2C4();
}

uint64_t sub_1D33A2B40()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1D33DF284();
  RecentsItem.BackingType.hash(into:)(v4);
  return sub_1D33DF2C4();
}

uint64_t sub_1D33A2B98(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_1D33DF284();
  RecentsItem.BackingType.hash(into:)(v5);
  return sub_1D33DF2C4();
}

uint64_t RecentsItem.title.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t RecentsItem.subtitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t RecentsItem.messageSummary.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecentsItem(0) + 36));

  return v1;
}

uint64_t RecentsItem.messageSummary.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecentsItem(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecentsItem.messageTranscript.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecentsItem(0) + 40));

  return v1;
}

uint64_t RecentsItem.messageTranscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecentsItem(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecentsItem.reminderStatus.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RecentsItem(0) + 44);

  return sub_1D3394050(a1, v3);
}

uint64_t RecentsItem.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D33DDD34();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v33 - v7;
  v38 = type metadata accessor for ReminderStatus(0);
  v8 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761320, &unk_1D33E28D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for CallInfo(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v33 - v18;
  v20 = RecentsItem.dataSourceId.getter();
  v21 = MEMORY[0x1D38B6F00](v20);

  MEMORY[0x1D38B7920](v21);
  v22 = *(v1 + 32);
  if (v22 > 8)
  {
    goto LABEL_5;
  }

  if (((1 << v22) & 0x1B0) != 0)
  {
    goto LABEL_8;
  }

  v23 = *(v1 + 8);
  if (v22 != 3 && v22 != 6)
  {
LABEL_5:
    if (v22 < 2)
    {
      goto LABEL_8;
    }

    v23 = *v1;
  }

  v24 = v23;
  sub_1D33DE164();

  sub_1D33DF2A4();
LABEL_8:
  sub_1D33DF2A4();
  if (*(v2 + 56))
  {
    sub_1D33DE824();
  }

  if (*(v2 + 72))
  {
    sub_1D33DE824();
  }

  v25 = type metadata accessor for RecentsItem(0);
  sub_1D331E818(v2 + v25[8], v19, &unk_1EC761DE0, &unk_1D33E50F0);
  if ((*(v14 + 48))(v19, 1, v13) != 1)
  {
    sub_1D33A7100(v19, v16, type metadata accessor for CallInfo);
    CallInfo.hash(into:)(a1);
    sub_1D3337AB4(v16, type metadata accessor for CallInfo);
  }

  v26 = v38;
  if (*(v2 + v25[9] + 8))
  {
    sub_1D33DE824();
  }

  if (*(v2 + v25[10] + 8))
  {
    sub_1D33DE824();
  }

  sub_1D331E818(v2 + v25[11], v12, &unk_1EC761320, &unk_1D33E28D0);
  result = (*(v8 + 48))(v12, 1, v26);
  if (result != 1)
  {
    v28 = v35;
    sub_1D33A7100(v12, v35, type metadata accessor for ReminderStatus);
    MEMORY[0x1D38B7920](*v28);
    v29 = v34;
    sub_1D331E818(&v28[*(v26 + 20)], v34, &qword_1EC760E10, &unk_1D33E1A90);
    v31 = v36;
    v30 = v37;
    if ((*(v36 + 48))(v29, 1, v37) == 1)
    {
      sub_1D33DF2A4();
    }

    else
    {
      v32 = v33;
      (*(v31 + 32))(v33, v29, v30);
      sub_1D33DF2A4();
      sub_1D332C29C(&unk_1EDEBFD40, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1D33DE734();
      (*(v31 + 8))(v32, v30);
    }

    sub_1D33DF2A4();
    return sub_1D3337AB4(v28, type metadata accessor for ReminderStatus);
  }

  return result;
}

uint64_t sub_1D33A34A8(uint64_t (*a1)(void *))
{
  sub_1D33DF284();
  a1(v3);
  return sub_1D33DF2C4();
}

uint64_t sub_1D33A3508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1D33DF284();
  a3(v5);
  return sub_1D33DF2C4();
}

uint64_t sub_1D33A356C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1D33DF284();
  a4(v6);
  return sub_1D33DF2C4();
}

uint64_t sub_1D33A35B0@<X0>(uint64_t *a1@<X8>)
{
  result = RecentsItem.dataSourceId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D33A35D8@<X0>(char *a1@<X8>)
{
  v3 = sub_1D33DDDB4();
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v10 = *v1;
  v9 = *(v1 + 8);
  v11 = *(v1 + 32);
  if (v11 <= 3)
  {
    if (v11 < 2)
    {
      v15 = v10;
      v16 = [v15 UUID];

      sub_1D33DDD84();
LABEL_10:
      v12 = *(v26 + 56);
      v13 = a1;
      v14 = 0;
      goto LABEL_11;
    }

    if (v11 == 2)
    {
      v9 = *v1;
    }

LABEL_9:
    v17 = v9;
    sub_1D33DE184();

    goto LABEL_10;
  }

  if (v11 - 4 >= 2)
  {
    if (v11 - 7 < 2)
    {
      v12 = *(v26 + 56);
      v13 = a1;
      v14 = 1;
LABEL_11:

      return v12(v13, v14, 1, v3);
    }

    goto LABEL_9;
  }

  v19 = v10;
  v20 = [v19 conversationID];
  if (v20)
  {
    v21 = v20;
    sub_1D33DDD84();

    v22 = *(v26 + 32);
    v22(v8, v5, v3);
    v23 = *(v26 + 56);
    v26 += 56;
    v23(v8, 0, 1, v3);
    v22(a1, v8, v3);
    return (v23)(a1, 0, 1, v3);
  }

  else
  {
    (*(v26 + 56))(v8, 1, 1, v3);
    v24 = [v19 uniqueId];
    sub_1D33DE7B4();

    sub_1D33DDD44();

    result = (*(v26 + 48))(v8, 1, v3);
    if (result != 1)
    {
      return sub_1D331E880(v8, &qword_1EC7612B0, qword_1D33E2830);
    }
  }

  return result;
}

void *sub_1D33A3924(uint64_t a1)
{
  v1 = a1;
  v24 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &unk_1EC761E40, 0x1E69D8B80);
    sub_1D33565AC(&unk_1EC7619C0, &unk_1EC761E40, 0x1E69D8B80);
    result = sub_1D33DEA94();
    v1 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
    v6 = v23;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v17 = v4;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_1D331FEEC(v1);
      return v24;
    }

    while (1)
    {
      v15 = [v14 handles];
      sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
      sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
      v16 = sub_1D33DEA54();

      result = sub_1D33CCCBC(v16);
      v5 = v12;
      v6 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D33DEE54())
      {
        sub_1D331DA18(0, &unk_1EC761E40, 0x1E69D8B80);
        swift_dynamicCast();
        v14 = v18;
        v12 = v5;
        v13 = v6;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

char *RecentsItem.init(recentConversationItem:linkItem:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v145 = a2;
  v146 = a1;
  v144 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v138 = (&v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v137 = (&v120 - v6);
  v7 = sub_1D33DDDB4();
  v8 = *(v7 - 8);
  v139 = v7;
  v140 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761A90, &qword_1D33E3F98);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v120 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v120 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v120 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v120 - v24;
  v26 = type metadata accessor for RecentsItem(0);
  v142 = *(v26 - 8);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = &v29[v27[9]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = &v29[v27[10]];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = v27[11];
  v33 = type metadata accessor for ReminderStatus(0);
  v34 = *(*(v33 - 8) + 56);
  v143 = v29;
  v141 = v32;
  v35 = &v29[v32];
  v36 = v146;
  v34(v35, 1, 1, v33);
  if (*(v36 + 32))
  {
    v37 = v145;
LABEL_6:
    sub_1D3337AB4(v37, type metadata accessor for RecentsItem);
    sub_1D3337AB4(v36, type metadata accessor for RecentsItem);
    v58 = v143;
    v59 = v144;
LABEL_7:
    sub_1D331E880(&v58[v141], &unk_1EC761320, &unk_1D33E28D0);
    return (*(v142 + 56))(v59, 1, 1, v26);
  }

  v131 = v20;
  v132 = v11;
  v133 = v17;
  v135 = v23;
  v136 = v25;
  v127 = v10;
  v134 = v13;
  v38 = v139;
  v37 = v145;
  if (*(v145 + 32) != 7)
  {
    goto LABEL_6;
  }

  v125 = v26;
  v39 = *v36;
  v40 = *(v36 + 16);
  v41 = *(v36 + 24);
  v42 = *v145;
  v43 = *(v145 + 8);
  v44 = *(v145 + 16);
  v45 = *(v145 + 24);
  v46 = *v36;
  v123 = *(v36 + 8);
  v122 = v40;
  v121 = v41;
  sub_1D332B0D0(v46, v123, v40, v41, 0);
  v128 = v42;
  v130 = v44;
  v126 = v45;
  sub_1D332B0D0(v42, v43, v44, v45, 7u);
  v124 = v39;
  v47 = [v39 groupUUID];
  v48 = v136;
  sub_1D33DDD84();

  v49 = *(v140 + 56);
  v50 = 1;
  v51 = v38;
  v49(v48, 0, 1, v38);
  v129 = v43;
  v52 = [v43 groupUUID];
  if (v52)
  {
    v53 = v52;
    v54 = v131;
    sub_1D33DDD84();

    v50 = 0;
    v55 = v132;
    v56 = v133;
    v57 = v135;
  }

  else
  {
    v55 = v132;
    v56 = v133;
    v57 = v135;
    v54 = v131;
  }

  v49(v54, v50, 1, v51);
  sub_1D333842C(v54, v57, &qword_1EC7612B0, qword_1D33E2830);
  v61 = *(v55 + 48);
  v62 = v134;
  sub_1D331E818(v48, v134, &qword_1EC7612B0, qword_1D33E2830);
  sub_1D331E818(v57, v62 + v61, &qword_1EC7612B0, qword_1D33E2830);
  v63 = v140;
  v64 = *(v140 + 48);
  if (v64(v62, 1, v51) == 1)
  {
    sub_1D331E880(v57, &qword_1EC7612B0, qword_1D33E2830);
    sub_1D331E880(v48, &qword_1EC7612B0, qword_1D33E2830);
    v65 = v64(v62 + v61, 1, v51);
    v59 = v144;
    v66 = v146;
    v67 = v130;
    if (v65 == 1)
    {
      sub_1D331E880(v62, &qword_1EC7612B0, qword_1D33E2830);
      v58 = v143;
      v68 = v124;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  sub_1D331E818(v62, v56, &qword_1EC7612B0, qword_1D33E2830);
  v69 = v64(v62 + v61, 1, v51);
  v70 = v51;
  v59 = v144;
  v67 = v130;
  if (v69 == 1)
  {
    sub_1D331E880(v135, &qword_1EC7612B0, qword_1D33E2830);
    sub_1D331E880(v136, &qword_1EC7612B0, qword_1D33E2830);
    (*(v63 + 8))(v56, v70);
    v66 = v146;
LABEL_14:
    sub_1D331E880(v62, &qword_1EC761A90, &qword_1D33E3F98);
    v58 = v143;
    v68 = v124;
LABEL_15:
    sub_1D3337AB4(v145, type metadata accessor for RecentsItem);
    sub_1D332B1DC(v68, v123, v122, v121, 0);
    sub_1D332B1DC(v128, v129, v67, v126, 7u);
    sub_1D3337AB4(v66, type metadata accessor for RecentsItem);
LABEL_16:
    v26 = v125;
    goto LABEL_7;
  }

  v71 = v127;
  (*(v63 + 32))(v127, v62 + v61, v70);
  sub_1D332C29C(&qword_1EDEBFD30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v72 = v63;
  v73 = sub_1D33DE774();
  v74 = *(v72 + 8);
  v74(v71, v70);
  sub_1D331E880(v135, &qword_1EC7612B0, qword_1D33E2830);
  sub_1D331E880(v136, &qword_1EC7612B0, qword_1D33E2830);
  v74(v56, v70);
  sub_1D331E880(v62, &qword_1EC7612B0, qword_1D33E2830);
  v66 = v146;
  v58 = v143;
  v68 = v124;
  if ((v73 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  if (*(v145 + 56))
  {
    v75 = *(v145 + 48);
    v76 = *(v145 + 56);
  }

  else
  {
    v75 = v66[8];
    v76 = v66[9];
  }

  *(v58 + 8) = v75;
  *(v58 + 9) = v76;

  v77 = [v68 remoteMembers];
  sub_1D331DA18(0, &unk_1EC761E40, 0x1E69D8B80);
  sub_1D33565AC(&unk_1EC7619C0, &unk_1EC761E40, 0x1E69D8B80);
  v78 = sub_1D33DEA54();

  v79 = sub_1D33A3924(v78);

  v80 = sub_1D33678DC(v79);

  if ((v80 & 0xC000000000000001) != 0)
  {
    v81 = sub_1D33DEE14();
  }

  else
  {
    v81 = v80[2];
  }

  if (v81 < 1)
  {
    sub_1D3337AB4(v145, type metadata accessor for RecentsItem);
    sub_1D332B1DC(v68, v123, v122, v121, 0);
    sub_1D332B1DC(v128, v129, v130, v126, 7u);
    sub_1D3337AB4(v66, type metadata accessor for RecentsItem);

    goto LABEL_16;
  }

  v82 = v128;
  *v58 = v68;
  *(v58 + 1) = v82;
  v83 = v130;
  *(v58 + 2) = v129;
  *(v58 + 3) = v83;
  v58[32] = 1;
  v84 = v66[7];
  *(v58 + 6) = v66[6];
  *(v58 + 7) = v84;
  v85 = v66[5];
  *(v58 + 5) = v85;
  if (v85 >> 62)
  {
    v86 = sub_1D33DEE14();
    if (v86)
    {
      goto LABEL_27;
    }

LABEL_41:
    sub_1D332B0D0(v128, v129, v130, v126, 7u);

    v88 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

  v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v86)
  {
    goto LABEL_41;
  }

LABEL_27:
  sub_1D332B0D0(v128, v129, v130, v126, 7u);
  v149 = MEMORY[0x1E69E7CC0];

  result = sub_1D334A9E0(0, v86 & ~(v86 >> 63), 0);
  if (v86 < 0)
  {
    __break(1u);
    return result;
  }

  v87 = 0;
  v88 = v149;
  do
  {
    if ((v85 & 0xC000000000000001) != 0)
    {
      v89 = MEMORY[0x1D38B75D0](v87, v85);
    }

    else
    {
      v89 = *(v85 + 8 * v87 + 32);
    }

    v90 = v89;
    if ([v89 hasBeenPersisted])
    {
      v91 = [v90 identifier];
      v92 = sub_1D33DE7B4();
      v94 = v93;
    }

    else
    {

      v92 = 0;
      v94 = 0xE000000000000000;
    }

    v149 = v88;
    v96 = v88[2];
    v95 = v88[3];
    if (v96 >= v95 >> 1)
    {
      sub_1D334A9E0((v95 > 1), v96 + 1, 1);
      v88 = v149;
    }

    ++v87;
    v88[2] = v96 + 1;
    v97 = &v88[2 * v96];
    v97[4] = v92;
    v97[5] = v94;
    v66 = v146;
  }

  while (v86 != v87);
LABEL_42:
  v149 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B0, &qword_1D33E3DD0);
  sub_1D339E988();
  v98 = sub_1D33DE764();
  v100 = v99;

  v141 = *(v125 + 32);
  v101 = v137;
  sub_1D331E818(v66 + v141, v137, &unk_1EC761DE0, &unk_1D33E50F0);
  v102 = type metadata accessor for CallInfo(0);
  v140 = *(*(v102 - 8) + 48);
  if ((v140)(v101, 1, v102) == 1)
  {
    sub_1D331E880(v101, &unk_1EC761DE0, &unk_1D33E50F0);
    v103 = 0;
    v104 = 0xE000000000000000;
  }

  else
  {
    v103 = *v101;
    v104 = v101[1];

    sub_1D3337AB4(v101, type metadata accessor for CallInfo);
  }

  v149 = v103;
  v150 = v104;

  MEMORY[0x1D38B6ED0](v98, v100);

  v106 = v149;
  v105 = v150;
  v107 = v128;
  v108 = v129;
  v149 = v128;
  v150 = v129;
  v109 = v130;
  v151 = v130;
  v110 = ConversationLink.uniqueId.getter();
  v112 = v111;
  sub_1D332B1DC(v107, v108, v109, v126, 7u);
  v147 = v106;
  v148 = v105;

  MEMORY[0x1D38B6ED0](v110, v112);

  v114 = v147;
  v113 = v148;
  sub_1D3337AB4(v145, type metadata accessor for RecentsItem);
  v115 = v146;
  v116 = v138;
  sub_1D331E818(v146 + v141, v138, &unk_1EC761DE0, &unk_1D33E50F0);
  sub_1D3337AB4(v115, type metadata accessor for RecentsItem);
  if (!(v140)(v116, 1, v102))
  {
    *v116 = v114;
    v116[1] = v113;
  }

  v118 = v143;
  v117 = v144;
  v119 = v125;

  sub_1D333842C(v116, v118 + *(v119 + 32), &unk_1EC761DE0, &unk_1D33E50F0);
  sub_1D332A828(v118, v117);
  (*(v142 + 56))(v117, 0, 1, v119);
  return sub_1D3337AB4(v118, type metadata accessor for RecentsItem);
}

uint64_t RecentsItem.init(recentHistoryItem:linkItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D33DDDB4();
  v93 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v88 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761A90, &qword_1D33E3F98);
  MEMORY[0x1EEE9AC00](v90);
  v9 = &v72 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v89 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v72 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v91 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v72 - v18;
  v19 = type metadata accessor for RecentsItem(0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &v23[v21[9]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = &v23[v21[10]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = v21[11];
  v27 = type metadata accessor for ReminderStatus(0);
  v28 = *(*(v27 - 8) + 56);
  v94 = v26;
  v28(&v23[v26], 1, 1, v27);
  if (*(a1 + 32) != 4 || *(a2 + 32) != 7)
  {
    sub_1D3337AB4(a2, type metadata accessor for RecentsItem);
    sub_1D3337AB4(a1, type metadata accessor for RecentsItem);
    goto LABEL_6;
  }

  v78 = v9;
  v79 = v6;
  v80 = v19;
  v85 = a3;
  v29 = *a1;
  v30 = *(a1 + 16);
  v31 = *(a1 + 24);
  v33 = *a2;
  v32 = *(a2 + 8);
  v34 = *(a2 + 16);
  v35 = *(a2 + 24);
  v36 = *a1;
  v73 = *(a1 + 8);
  v74 = v30;
  v75 = v31;
  sub_1D332B0D0(v36, v73, v30, v31, 4u);
  v81 = v33;
  v82 = v34;
  v87 = v32;
  v76 = v35;
  sub_1D332B0D0(v33, v32, v34, v35, 7u);
  v77 = v29;
  v37 = [v29 participantGroupUUID];
  v86 = a2;
  v83 = v20;
  v84 = a1;
  if (v37)
  {
    v38 = v92;
    v39 = v37;
    sub_1D33DDD84();

    v40 = 0;
    v41 = v79;
  }

  else
  {
    v40 = 1;
    v41 = v79;
    v38 = v92;
  }

  v43 = *(v93 + 56);
  v44 = 1;
  v43(v38, v40, 1, v41);
  v45 = [v87 groupUUID];
  v46 = v78;
  if (v45)
  {
    v47 = v45;
    sub_1D33DDD84();

    v44 = 0;
  }

  v43(v15, v44, 1, v41);
  v48 = v15;
  v49 = v91;
  sub_1D333842C(v48, v91, &qword_1EC7612B0, qword_1D33E2830);
  v50 = *(v90 + 48);
  v51 = v92;
  sub_1D331E818(v92, v46, &qword_1EC7612B0, qword_1D33E2830);
  sub_1D331E818(v49, v46 + v50, &qword_1EC7612B0, qword_1D33E2830);
  v52 = *(v93 + 48);
  if (v52(v46, 1, v41) != 1)
  {
    v55 = v89;
    sub_1D331E818(v46, v89, &qword_1EC7612B0, qword_1D33E2830);
    v56 = v52(v46 + v50, 1, v41);
    v54 = v84;
    if (v56 != 1)
    {
      v57 = v55;
      v58 = v93;
      v59 = v88;
      (*(v93 + 32))(v88, v46 + v50, v41);
      sub_1D332C29C(&qword_1EDEBFD30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v60 = sub_1D33DE774();
      v61 = *(v58 + 8);
      v61(v59, v41);
      sub_1D331E880(v91, &qword_1EC7612B0, qword_1D33E2830);
      sub_1D331E880(v92, &qword_1EC7612B0, qword_1D33E2830);
      v61(v57, v41);
      sub_1D331E880(v46, &qword_1EC7612B0, qword_1D33E2830);
      a3 = v85;
      if (v60)
      {
        goto LABEL_19;
      }

LABEL_17:
      sub_1D332B1DC(v77, v73, v74, v75, 4u);
      sub_1D332B1DC(v81, v87, v82, v76, 7u);
      sub_1D3337AB4(v86, type metadata accessor for RecentsItem);
      sub_1D3337AB4(v54, type metadata accessor for RecentsItem);
      v20 = v83;
      v19 = v80;
      goto LABEL_6;
    }

    sub_1D331E880(v91, &qword_1EC7612B0, qword_1D33E2830);
    sub_1D331E880(v92, &qword_1EC7612B0, qword_1D33E2830);
    (*(v93 + 8))(v55, v41);
    a3 = v85;
LABEL_16:
    sub_1D331E880(v46, &qword_1EC761A90, &qword_1D33E3F98);
    goto LABEL_17;
  }

  sub_1D331E880(v49, &qword_1EC7612B0, qword_1D33E2830);
  sub_1D331E880(v51, &qword_1EC7612B0, qword_1D33E2830);
  v53 = v52(v46 + v50, 1, v41);
  v54 = v84;
  a3 = v85;
  if (v53 != 1)
  {
    goto LABEL_16;
  }

  sub_1D331E880(v46, &qword_1EC7612B0, qword_1D33E2830);
LABEL_19:
  v62 = v77;
  if (*(v86 + 72))
  {
    v63 = *(v86 + 64);
    v64 = *(v86 + 72);
  }

  else
  {
    v63 = v54[8];
    v64 = v54[9];
  }

  *(v23 + 8) = v63;
  *(v23 + 9) = v64;

  v65 = [v62 remoteParticipantHandles];
  if (v65)
  {
    v66 = v65;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v67 = sub_1D33DEA54();

    if ((v67 & 0xC000000000000001) != 0)
    {
      v68 = sub_1D33DEE14();

      sub_1D3337AB4(v86, type metadata accessor for RecentsItem);
    }

    else
    {
      sub_1D3337AB4(v86, type metadata accessor for RecentsItem);
      v68 = *(v67 + 16);
    }

    v19 = v80;
    if (v68 > 0)
    {
      v69 = v81;
      *v23 = v62;
      *(v23 + 1) = v69;
      v70 = v82;
      *(v23 + 2) = v87;
      *(v23 + 3) = v70;
      v23[32] = 5;
      v71 = v54[7];
      *(v23 + 6) = v54[6];
      *(v23 + 7) = v71;
      *(v23 + 5) = v54[5];
      sub_1D331E818(v54 + *(v19 + 32), &v23[*(v19 + 32)], &unk_1EC761DE0, &unk_1D33E50F0);

      sub_1D3337AB4(v54, type metadata accessor for RecentsItem);
      sub_1D332A828(v23, a3);
      (*(v83 + 56))(a3, 0, 1, v19);
      return sub_1D3337AB4(v23, type metadata accessor for RecentsItem);
    }

    sub_1D332B1DC(v62, v73, v74, v75, 4u);
    sub_1D332B1DC(v81, v87, v82, v76, 7u);
  }

  else
  {
    sub_1D332B1DC(v62, v73, v74, v75, 4u);
    sub_1D332B1DC(v81, v87, v82, v76, 7u);
    sub_1D3337AB4(v86, type metadata accessor for RecentsItem);
    v19 = v80;
  }

  sub_1D3337AB4(v54, type metadata accessor for RecentsItem);

  v20 = v83;
LABEL_6:
  sub_1D331E880(&v23[v94], &unk_1EC761320, &unk_1D33E28D0);
  return (*(v20 + 56))(a3, 1, 1, v19);
}

uint64_t RecentsItem.init(historyItem:messageItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RecentsItem(0);
  v7 = *(v6 - 1);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 44);
  v12 = type metadata accessor for ReminderStatus(0);
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  if (*(a1 + 32) == 4 && *(a2 + 32) == 2)
  {
    v14 = *a1;
    v13 = *(a1 + 8);
    v15 = *(a1 + 24);
    v33 = *(a1 + 16);
    v16 = *(a2 + 8);
    v36 = *a2;
    v17 = v36;
    v37 = v16;
    v34 = *(a2 + 16);
    v35 = v13;
    v18 = *(a2 + 24);
    v31 = v15;
    v32 = v18;
    *v10 = v14;
    *(v10 + 1) = v17;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    v10[32] = 6;
    v19 = *(a1 + 56);
    *(v10 + 6) = *(a1 + 48);
    *(v10 + 7) = v19;
    v38 = v19;
    if (*(a1 + 72))
    {
      v20 = *(a1 + 64);
      v21 = *(a1 + 72);
    }

    else
    {
      v20 = *(a2 + 64);
    }

    v23 = &v10[v6[9]];
    v39 = &v10[v6[10]];
    *(v10 + 8) = v20;
    *(v10 + 9) = v21;
    *(v10 + 5) = *(a1 + 40);
    sub_1D331E818(a1 + v6[8], &v10[v6[8]], &unk_1EC761DE0, &unk_1D33E50F0);
    sub_1D332B0D0(v14, v35, v33, v31, 4u);
    sub_1D332B0D0(v36, v37, v34, v32, 2u);

    sub_1D3337AB4(a1, type metadata accessor for RecentsItem);
    v24 = (a2 + v6[9]);
    v25 = v24[1];
    *v23 = *v24;
    *(v23 + 1) = v25;
    v26 = (a2 + v6[10]);
    v28 = *v26;
    v27 = v26[1];

    sub_1D3337AB4(a2, type metadata accessor for RecentsItem);
    v29 = v39;
    *v39 = v28;
    *(v29 + 1) = v27;
    sub_1D332A828(v10, a3);
    (*(v7 + 56))(a3, 0, 1, v6);
    return sub_1D3337AB4(v10, type metadata accessor for RecentsItem);
  }

  else
  {
    sub_1D3337AB4(a2, type metadata accessor for RecentsItem);
    sub_1D3337AB4(a1, type metadata accessor for RecentsItem);
    sub_1D331E880(&v10[v11], &unk_1EC761320, &unk_1D33E28D0);
    return (*(v7 + 56))(a3, 1, 1, v6);
  }
}

BOOL RecentsItem.isVideo.getter()
{
  v1 = *(v0 + 32);
  if (v1 <= 3)
  {
    return v1 < 2 || v1 != 2;
  }

  if (v1 - 4 >= 3)
  {
    return v1 == 7;
  }

  else
  {
    v2 = *v0;
    v3 = [v2 mediaType];

    return v3 == 2;
  }
}

BOOL RecentsItem.isUnusedLink.getter()
{
  if (*(v0 + 32) != 7)
  {
    return 0;
  }

  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  v5 = v1;

  v6 = [v5 invitedMemberHandles];
  if (v6)
  {
    v7 = v6;
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
    v8 = sub_1D33DEA54();

    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = sub_1D33DEE14();
      sub_1D332B1DC(v2, v1, v4, v3, 7u);
    }

    else
    {
      sub_1D332B1DC(v2, v1, v4, v3, 7u);
      v9 = *(v8 + 16);
    }

    return v9 == 0;
  }

  else
  {
    sub_1D332B1DC(v2, v1, v4, v3, 7u);
    return 1;
  }
}

uint64_t RecentsItem.handleValue.getter()
{
  result = 0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 32);
  if (v3 <= 3)
  {
    if (v3 < 2)
    {
      return result;
    }

    if (v3 == 2)
    {
      v2 = *v0;
    }

LABEL_12:
    v9 = v2;
    v7 = sub_1D33DE124();

    if (v7)
    {
      v8 = [v7 normalizedValue];
      if (!v8)
      {
LABEL_14:
        v8 = [v7 value];
      }

LABEL_15:
      v10 = v8;
      v11 = sub_1D33DE7B4();

      return v11;
    }

    return 0;
  }

  if (v3 - 4 >= 3)
  {
    return result;
  }

  v4 = *v0;
  v5 = [v4 remoteParticipantHandles];

  if (v5)
  {
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v6 = sub_1D33DEA54();

    v7 = sub_1D335DC7C(v6);

    if (v7)
    {
      v8 = [v7 normalizedValue];
      if (!v8)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }
  }

  if (v3 == 6)
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t _s16CallsAppServices11RecentsItemV11BackingTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v33[0] = *a1;
  v33[1] = v2;
  v33[2] = v5;
  v33[3] = v4;
  v34 = v6;
  v35 = v8;
  v36 = v7;
  v37 = v10;
  v38 = v9;
  v39 = v11;
  if (v6 > 3)
  {
    if (v6 > 5)
    {
      if (v6 != 6)
      {
        if (v6 == 7)
        {
          if (v11 == 7)
          {
            sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
            sub_1D332B0D0(v8, v7, v10, v9, 7u);
            sub_1D332B0D0(v3, v2, v5, v4, 7u);
            sub_1D332B0D0(v8, v7, v10, v9, 7u);
            sub_1D332B0D0(v3, v2, v5, v4, 7u);
            v12 = sub_1D33DEC74();
            sub_1D331E880(v33, &qword_1EC761AC8, &unk_1D33E4358);
            sub_1D332B1DC(v8, v7, v10, v9, 7u);
            sub_1D332B1DC(v3, v2, v5, v4, 7u);
            return v12 & 1;
          }
        }

        else if (v11 == 8 && !(v7 | v8 | v10 | v9))
        {
          sub_1D331E880(v33, &qword_1EC761AC8, &unk_1D33E4358);
          return 1;
        }

        goto LABEL_33;
      }

      if (v11 == 6)
      {
        sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
        sub_1D332B0D0(v8, v7, v10, v9, 6u);
        v19 = v3;
        v20 = v2;
        v21 = v5;
        v22 = v4;
        v23 = 6;
        goto LABEL_24;
      }

LABEL_33:
      sub_1D332B0D0(v8, v7, v10, v9, v11);
      sub_1D332B0D0(v3, v2, v5, v4, v6);
      goto LABEL_34;
    }

    if (v6 == 4)
    {
      if (v11 != 4)
      {
        goto LABEL_33;
      }

      sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
      sub_1D332B0D0(v8, v7, v10, v9, 4u);
      v14 = v3;
      v15 = v2;
      v16 = v5;
      v17 = v4;
      v18 = 4;
      goto LABEL_17;
    }

    if (v11 != 5)
    {
      goto LABEL_33;
    }

    sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
    sub_1D332B0D0(v8, v7, v10, v9, 5u);
    v24 = v3;
    v25 = v2;
    v26 = v5;
    v27 = v4;
    v28 = 5;
LABEL_31:
    sub_1D332B0D0(v24, v25, v26, v27, v28);

    v30 = v5;

    v31 = v10;

    if (sub_1D33DEC74())
    {
      v32 = sub_1D33DEC74();
      sub_1D331E880(v33, &qword_1EC761AC8, &unk_1D33E4358);

      return v32 & 1;
    }

    goto LABEL_34;
  }

  if (v6 <= 1)
  {
    if (v6)
    {
      if (v11 != 1)
      {
        goto LABEL_33;
      }

      sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
      sub_1D332B0D0(v8, v7, v10, v9, 1u);
      v24 = v3;
      v25 = v2;
      v26 = v5;
      v27 = v4;
      v28 = 1;
      goto LABEL_31;
    }

    if (v11)
    {
      goto LABEL_33;
    }

    sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
    sub_1D332B0D0(v8, v7, v10, v9, 0);
    v14 = v3;
    v15 = v2;
    v16 = v5;
    v17 = v4;
    v18 = 0;
LABEL_17:
    sub_1D332B0D0(v14, v15, v16, v17, v18);
LABEL_25:
    v29 = sub_1D33DEC74();
    sub_1D331E880(v33, &qword_1EC761AC8, &unk_1D33E4358);
    return v29 & 1;
  }

  if (v6 == 2)
  {
    if (v11 != 2)
    {
      goto LABEL_33;
    }

    sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
    sub_1D332B0D0(v8, v7, v10, v9, 2u);
    v14 = v3;
    v15 = v2;
    v16 = v5;
    v17 = v4;
    v18 = 2;
    goto LABEL_17;
  }

  if (v11 != 3)
  {
    goto LABEL_33;
  }

  sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
  sub_1D332B0D0(v8, v7, v10, v9, 3u);
  v19 = v3;
  v20 = v2;
  v21 = v5;
  v22 = v4;
  v23 = 3;
LABEL_24:
  sub_1D332B0D0(v19, v20, v21, v22, v23);
  if (sub_1D33DEC74())
  {
    goto LABEL_25;
  }

LABEL_34:
  sub_1D331E880(v33, &qword_1EC761AC8, &unk_1D33E4358);
  return 0;
}

uint64_t _s16CallsAppServices8CallInfoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1D33DF1B4() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_22;
  }

  v5 = type metadata accessor for CallInfo(0);
  if ((sub_1D33DDCE4() & 1) == 0 || *(a1 + v5[7]) != *(a2 + v5[7]))
  {
    goto LABEL_22;
  }

  v6 = v5[8];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      goto LABEL_22;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_1D33DF1B4() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v10)
  {
    goto LABEL_22;
  }

  if (*(a1 + v5[9]) == *(a2 + v5[9]) && *(a1 + v5[10]) == *(a2 + v5[10]) && *(a1 + v5[11]) == *(a2 + v5[11]) && *(a1 + v5[12]) == *(a2 + v5[12]))
  {
    v12 = *(a1 + v5[13]) ^ *(a2 + v5[13]) ^ 1;
    return v12 & 1;
  }

LABEL_22:
  v12 = 0;
  return v12 & 1;
}

uint64_t _s16CallsAppServices11RecentsItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderStatus(0);
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761320, &unk_1D33E28D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v67 = &v65 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761AB8, &qword_1D33E4348);
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v65 - v8;
  v9 = type metadata accessor for CallInfo(0);
  v72 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v65 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761AC0, &qword_1D33E4350);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v65 - v16;
  v18 = RecentsItem.dataSourceId.getter();
  v20 = v19;
  if (v18 == RecentsItem.dataSourceId.getter() && v20 == v21)
  {
  }

  else
  {
    v22 = sub_1D33DF1B4();

    if ((v22 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v23 = *(a1 + 56);
  v24 = *(a2 + 56);
  if (v23)
  {
    if (!v24 || (*(a1 + 48) != *(a2 + 48) || v23 != v24) && (sub_1D33DF1B4() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v24)
  {
    goto LABEL_26;
  }

  v25 = *(a1 + 72);
  v26 = *(a2 + 72);
  if (!v25)
  {
    if (!v26)
    {
      goto LABEL_19;
    }

LABEL_26:
    v33 = 0;
    return v33 & 1;
  }

  if (!v26 || (*(a1 + 64) != *(a2 + 64) || v25 != v26) && (sub_1D33DF1B4() & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_19:
  v65 = type metadata accessor for RecentsItem(0);
  v27 = *(v65 + 32);
  v28 = *(v15 + 48);
  sub_1D331E818(a1 + v27, v17, &unk_1EC761DE0, &unk_1D33E50F0);
  sub_1D331E818(a2 + v27, &v17[v28], &unk_1EC761DE0, &unk_1D33E50F0);
  v29 = *(v72 + 48);
  if (v29(v17, 1, v9) == 1)
  {
    if (v29(&v17[v28], 1, v9) == 1)
    {
      sub_1D331E880(v17, &unk_1EC761DE0, &unk_1D33E50F0);
      goto LABEL_29;
    }

LABEL_24:
    v30 = &qword_1EC761AC0;
    v31 = &qword_1D33E4350;
    v32 = v17;
LABEL_25:
    sub_1D331E880(v32, v30, v31);
    goto LABEL_26;
  }

  sub_1D331E818(v17, v14, &unk_1EC761DE0, &unk_1D33E50F0);
  if (v29(&v17[v28], 1, v9) == 1)
  {
    sub_1D3337AB4(v14, type metadata accessor for CallInfo);
    goto LABEL_24;
  }

  sub_1D33A7100(&v17[v28], v11, type metadata accessor for CallInfo);
  v35 = _s16CallsAppServices8CallInfoV2eeoiySbAC_ACtFZ_0(v14, v11);
  sub_1D3337AB4(v11, type metadata accessor for CallInfo);
  sub_1D3337AB4(v14, type metadata accessor for CallInfo);
  sub_1D331E880(v17, &unk_1EC761DE0, &unk_1D33E50F0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_29:
  v36 = v65;
  v37 = *(v65 + 36);
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41 || (*v38 != *v40 || v39 != v41) && (sub_1D33DF1B4() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v41)
  {
    goto LABEL_26;
  }

  v42 = *(v36 + 40);
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (!v46 || (*v43 != *v45 || v44 != v46) && (sub_1D33DF1B4() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v46)
  {
    goto LABEL_26;
  }

  v47 = *(a1 + 32);
  v48 = 2;
  if (v47 <= 8)
  {
    if (((1 << v47) & 0x1B0) != 0)
    {
      goto LABEL_50;
    }

    v49 = *(a1 + 8);
    if (v47 == 3 || v47 == 6)
    {
      goto LABEL_49;
    }
  }

  if (v47 >= 2)
  {
    v49 = *a1;
LABEL_49:
    v50 = v49;
    v51 = sub_1D33DE164();

    v48 = v51 & 1;
  }

LABEL_50:
  v52 = *(a2 + 32);
  v53 = 2;
  if (v52 > 8)
  {
    goto LABEL_54;
  }

  if (((1 << v52) & 0x1B0) != 0)
  {
    goto LABEL_57;
  }

  v54 = *(a2 + 8);
  if (v52 != 3 && v52 != 6)
  {
LABEL_54:
    if (v52 < 2)
    {
      goto LABEL_57;
    }

    v54 = *a2;
  }

  v55 = v54;
  v56 = sub_1D33DE164();

  v53 = v56 & 1;
LABEL_57:
  if (v48 == 2)
  {
    if (v53 != 2)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

  v33 = 0;
  if (v53 != 2 && ((v53 ^ v48) & 1) == 0)
  {
LABEL_62:
    v57 = *(v36 + 44);
    v58 = *(v68 + 48);
    v59 = v71;
    sub_1D331E818(a1 + v57, v71, &unk_1EC761320, &unk_1D33E28D0);
    sub_1D331E818(a2 + v57, v59 + v58, &unk_1EC761320, &unk_1D33E28D0);
    v60 = v70;
    v61 = *(v69 + 48);
    if (v61(v59, 1, v70) == 1)
    {
      if (v61(v59 + v58, 1, v60) == 1)
      {
        sub_1D331E880(v59, &unk_1EC761320, &unk_1D33E28D0);
        v33 = 1;
        return v33 & 1;
      }
    }

    else
    {
      v62 = v67;
      sub_1D331E818(v59, v67, &unk_1EC761320, &unk_1D33E28D0);
      if (v61(v59 + v58, 1, v60) != 1)
      {
        v63 = v59 + v58;
        v64 = v66;
        sub_1D33A7100(v63, v66, type metadata accessor for ReminderStatus);
        v33 = _s16CallsAppServices14ReminderStatusV2eeoiySbAC_ACtFZ_0(v62, v64);
        sub_1D3337AB4(v64, type metadata accessor for ReminderStatus);
        sub_1D3337AB4(v62, type metadata accessor for ReminderStatus);
        sub_1D331E880(v59, &unk_1EC761320, &unk_1D33E28D0);
        return v33 & 1;
      }

      sub_1D3337AB4(v62, type metadata accessor for ReminderStatus);
    }

    v30 = &qword_1EC761AB8;
    v31 = &qword_1D33E4348;
    v32 = v59;
    goto LABEL_25;
  }

  return v33 & 1;
}

void sub_1D33A6A18(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
    isUniquelyReferenced_nonNull_native = sub_1D33DEA94();
    v2 = v38[7];
    v4 = v38[8];
    v5 = v38[9];
    v6 = v38[10];
    v7 = v38[11];
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = (a1 + 56);
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = (v10 & *(a1 + 56));

    v6 = 0;
  }

  v36 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v2 < 0)
    {
      v14 = sub_1D33DEE54();
      if (!v14 || (v38[14] = v14, sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00), swift_dynamicCast(), (v13 = v38[0]) == 0))
      {
LABEL_27:
        sub_1D331FEEC(v2);
        return;
      }

      goto LABEL_17;
    }

    v11 = v6;
    v12 = v7;
    if (!v7)
    {
      break;
    }

LABEL_13:
    v7 = ((v12 - 1) & v12);
    v13 = *(*(v2 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_27;
    }

LABEL_17:
    v15 = [v13 value];
    if (!v15)
    {
      sub_1D33DE7B4();
      v15 = sub_1D33DE784();
    }

    v16 = [v15 destinationIdIsTemporary];

    if (v16)
    {
    }

    else
    {

      sub_1D332786C(v13, 0, 0, v38);
      v17 = v38[0];
      v18 = v38[2];
      v33 = v38[3];
      v34 = v38[1];
      v19 = v38[4];
      v29 = v38[0];
      v30 = v18;

      v21 = MEMORY[0x1D38B7A70](v20);
      v35 = v17;
      sub_1D3328D7C(v17, v38);
      isUniquelyReferenced_nonNull_native = v21;
      if (v37)
      {
        goto LABEL_29;
      }

      objc_autoreleasePoolPop(v21);
      sub_1D3328AF4();
      v22 = sub_1D33DED14();
      v31 = v23;
      v32 = v22;

      v24 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1D3359C88(0, *(v36 + 16) + 1, 1, v36);
        v24 = isUniquelyReferenced_nonNull_native;
      }

      v26 = *(v24 + 16);
      v25 = *(v24 + 24);
      v27 = v19;
      if (v26 >= v25 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1D3359C88((v25 > 1), v26 + 1, 1, v24);
        v24 = isUniquelyReferenced_nonNull_native;
        v27 = v19;
      }

      *(v24 + 16) = v26 + 1;
      v36 = v24;
      v28 = (v24 + 56 * v26);
      v28[4] = v35;
      v28[5] = v34;
      v28[6] = v30;
      v28[7] = v33;
      v28[8] = v27;
      v28[9] = v32;
      v28[10] = v31;
    }
  }

  while (1)
  {
    v6 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v6 >= ((v5 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v12 = v4[v6];
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_29:
  objc_autoreleasePoolPop(isUniquelyReferenced_nonNull_native);
  __break(1u);
}

void sub_1D33A6E14(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = sub_1D33DEE14();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = sub_1D33DEF04();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_1D33DEE14();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x1E69E7CD0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v46 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v42 = v5;
    while (1)
    {
      v15 = MEMORY[0x1D38B75D0](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = sub_1D33DEC64();
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v13 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_1D331DA18(0, a4, a5);
        while (1)
        {
          v25 = *(*(v7 + 48) + 8 * v20);
          v26 = sub_1D33DEC74();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v13 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            v5 = v42;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        v5 = v42;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v21) = v23 | v22;
        *(*(v7 + 48) + 8 * v20) = v17;
        v27 = *(v7 + 16);
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = *(v5 + 32 + 8 * v29);
      v31 = sub_1D33DEC64();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v13 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) != 0)
      {
        v37 = ~v32;
        sub_1D331DA18(0, a4, a5);
        while (1)
        {
          v38 = *(*(v7 + 48) + 8 * v33);
          v39 = sub_1D33DEC74();

          if (v39)
          {
            break;
          }

          v33 = (v33 + 1) & v37;
          v34 = v33 >> 6;
          v35 = *(v13 + 8 * (v33 >> 6));
          v36 = 1 << v33;
          if (((1 << v33) & v35) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v34) = v36 | v35;
        *(*(v7 + 48) + 8 * v33) = v30;
        v40 = *(v7 + 16);
        v16 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v41;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1D33A7100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D33A716C()
{
  result = qword_1EC761A98;
  if (!qword_1EC761A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761A98);
  }

  return result;
}

void sub_1D33A71C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D33DECF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D33A7214(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 33))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 32);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D33A725C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D33A72A4(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    LOBYTE(a2) = 8;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1D33A7318(uint64_t a1)
{
  v2 = sub_1D33DDE74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761AA0, &qword_1D33E4340);
    v9 = sub_1D33DEF04();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1D332C29C(&qword_1EC761AA8, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v16 = sub_1D33DE724();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1D332C29C(&qword_1EC761AB0, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v23 = sub_1D33DE774();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D33A7638(uint64_t result, void *a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

id Message.dialRequest(with:)(void *a1)
{
  v2 = sub_1D33DDDB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D33DE1A4();
  v8 = v7;
  v9 = [a1 telephonyProvider];
  v10 = [v9 identifier];

  v11 = sub_1D33DE7B4();
  v13 = v12;

  if (v6 == v11 && v8 == v13)
  {

    v16 = &selRef_telephonyProvider;
  }

  else
  {
    v15 = sub_1D33DF1B4();

    v16 = &selRef_faceTimeProvider;
    if (v15)
    {
      v16 = &selRef_telephonyProvider;
    }
  }

  v17 = [a1 *v16];
  v18 = [objc_allocWithZone(MEMORY[0x1E69D8BD0]) initWithProvider_];
  v19 = sub_1D33DE124();
  [v18 setHandle_];

  [v18 setOriginatingUIType_];
  v20 = sub_1D33DE134();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 isoCountryCode];
    if (v22)
    {
      v23 = v22;
      v24 = [v21 canonicalHandleForISOCountryCode_];

      v25 = [v17 senderIdentityForHandle_];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 accountUUID];

        sub_1D33DDD84();
        v28 = sub_1D33DDD64();
        (*(v3 + 8))(v5, v2);
      }

      else
      {
        v28 = 0;
      }

      [v18 setLocalSenderIdentityAccountUUID_];
    }

    else
    {
    }
  }

  return v18;
}

void PrioritizedCallObserver.delegate.setter(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

void (*PrioritizedCallObserver.delegate.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D33A7ABC;
}

void sub_1D33A7ABC(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  *((*a1)[6] + (*a1)[5] + 8) = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id PrioritizedCallObserver.__allocating_init(delegate:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate];
  *&v5[OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_cancellables] = MEMORY[0x1E69E7CD0];
  v7 = &v5[OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_previousCallStates;
  *&v5[v8] = sub_1D336C188(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  *(v6 + 1) = a2;
  swift_unknownObjectWeakAssign();
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

id PrioritizedCallObserver.init(delegate:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate];
  *&v2[OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_cancellables] = MEMORY[0x1E69E7CD0];
  v7 = &v2[OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_previousCallStates;
  *&v2[v8] = sub_1D336C188(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  *(v6 + 1) = a2;
  swift_unknownObjectWeakAssign();
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

Swift::Void __swiftcall PrioritizedCallObserver.observeCalls()()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID);
  *v2 = 0;
  v2[1] = 0;

  v3 = OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_previousCallStates;
  swift_beginAccess();
  *(v1 + v3) = MEMORY[0x1E69E7CC8];

  sub_1D33A7F18();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761AF8, qword_1D33E4380);
  sub_1D334CB54(&qword_1EC761B00, &qword_1EC761AF8, qword_1D33E4380, MEMORY[0x1E695BED8]);
  sub_1D33DE644();

  swift_beginAccess();
  sub_1D33DE484();
  swift_endAccess();

  sub_1D33A941C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D33DE644();

  swift_beginAccess();
  sub_1D33DE484();
  swift_endAccess();
}

uint64_t sub_1D33A7F18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v30 - v1;
  v3 = sub_1D33DEC24();
  v4 = *(v3 - 8);
  v30 = v3;
  v31 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B08, &qword_1D33E4400);
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B10, &qword_1D33E4408);
  v38 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B18, &qword_1D33E4410);
  v14 = *(v13 - 8);
  v36 = v13;
  v37 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = [objc_opt_self() defaultCenter];
  sub_1D33DEC34();

  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v18 = sub_1D33DEB94();
  v39 = v18;
  v19 = sub_1D33DEB34();
  (*(*(v19 - 8) + 56))(v2, 1, 1, v19);
  sub_1D33AB4A4(&qword_1EDEC0050, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1D3357A1C(&qword_1EDEBEED8, &qword_1EDEBEEC8, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v20 = v30;
  sub_1D33DE604();
  sub_1D331E880(v2, &qword_1EC760F20, &qword_1D33E2290);

  (*(v31 + 8))(v6, v20);
  v21 = swift_allocObject();
  v22 = v34;
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1D33A9AAC;
  *(v23 + 24) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B20, &unk_1D33E4418);
  sub_1D334CB54(&qword_1EC761B28, &qword_1EC761B08, &qword_1D33E4400, MEMORY[0x1E695BE98]);
  v24 = v32;
  sub_1D33DE5B4();

  (*(v33 + 8))(v10, v24);
  *(swift_allocObject() + 16) = v22;
  sub_1D334CB54(&qword_1EC761B30, &qword_1EC761B10, &qword_1D33E4408, MEMORY[0x1E695BC80]);
  v25 = v22;
  v26 = v35;
  sub_1D33DE5C4();

  (*(v38 + 8))(v12, v26);
  sub_1D334CB54(&qword_1EC761B48, &qword_1EC761B18, &qword_1D33E4410, MEMORY[0x1E695BD38]);
  v27 = v36;
  v28 = sub_1D33DE5A4();
  (*(v37 + 8))(v16, v27);
  return v28;
}

void sub_1D33A850C(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      if (v2)
      {
        v8 = *(v5 + 8);
        swift_getObjectType();
        v9 = *(v8 + 8);
        v10 = v2;
        v9();

        v4 = v7;
        v7 = v10;
      }

      v4 = v7;
    }
  }
}

void sub_1D33A85F4(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      if (v2)
      {
        v8 = *(v5 + 8);
        swift_getObjectType();
        v9 = *(v8 + 16);
        v10 = v2;
        v9();

        v4 = v7;
        v7 = v10;
      }

      v4 = v7;
    }
  }
}

id sub_1D33A86DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = sub_1D33A8748();

  return v4;
}

id sub_1D33A8748()
{
  sub_1D33DDAD4();
  if (!v7)
  {
    sub_1D331E880(v6, &qword_1EC7616D0, &unk_1D33E2890);
    return 0;
  }

  sub_1D331DA18(0, &qword_1EC761FD0, 0x1E69D8A40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_1D33A88C8(v5);
  v0 = [v5 callCenter];
  v1 = sub_1D33A8A1C(v0);

  if (!v1)
  {
LABEL_13:

    return 0;
  }

  if (v1 >> 62)
  {
    result = sub_1D33DEE14();
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_6:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1D38B75D0](0, v1);
    goto LABEL_9;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);
LABEL_9:
    v4 = v3;

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D33A8898@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D33A8D6C();
  if (result <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1D33A88C8(void *a1)
{
  v2 = v1;
  v4 = [a1 callUUID];
  v5 = sub_1D33DE7B4();
  v7 = v6;

  v8 = OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_previousCallStates;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (*(v9 + 16) && (v10 = sub_1D33378A8(v5, v7), (v11 & 1) != 0))
  {
    v12 = 0;
    v13 = *(*(v9 + 56) + 4 * v10);
  }

  else
  {
    v13 = 0;
    v12 = 1;
  }

  swift_endAccess();
  v14 = [a1 status];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v2 + v8);
  *(v2 + v8) = 0x8000000000000000;
  sub_1D339913C(v14, v5, v7, isUniquelyReferenced_nonNull_native);
  *(v2 + v8) = v17;
  swift_endAccess();
  sub_1D33A8C24(v5, v7, v13 | (v12 << 32), v14);
}

void *sub_1D33A8A1C(void *result)
{
  if (result)
  {
    v2 = result;
    v3 = [v2 currentCalls];
    sub_1D331DA18(0, &qword_1EC761FD0, 0x1E69D8A40);
    v4 = sub_1D33DE8B4();

    v13 = MEMORY[0x1E69E7CC0];
    if (v4 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
    {
      v11 = v1;
      v12 = v2;
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1D38B75D0](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v2 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ([v7 isVideo])
        {
        }

        else
        {
          sub_1D33DEF84();
          sub_1D33DEFB4();
          sub_1D33DEFC4();
          v1 = &v13;
          sub_1D33DEF94();
        }

        ++v6;
        if (v2 == i)
        {
          v9 = v13;
          v1 = v11;
          v2 = v12;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v9 = MEMORY[0x1E69E7CC0];
LABEL_19:

    swift_retain_n();
    v10 = v1;
    v13 = sub_1D33A9344(v9);
    sub_1D33AADC8(&v13, v10, v9);

    return v13;
  }

  return result;
}

uint64_t sub_1D33A8C24(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v7 = result;
  if ((a3 & 0x100000000) == 0 && (a3 - 3) <= 1 && a4 == 1)
  {
    v8 = (v4 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID);
    *v8 = result;
    v8[1] = a2;
  }

  v9 = (v4 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID);
  v10 = *(v4 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID + 8);
  if (!v10)
  {
    goto LABEL_15;
  }

  result = *v9;
  if (*v9 == v7 && v10 == a2)
  {
    if (a4 == 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  result = sub_1D33DF1B4();
  if ((result & 1) != 0 && a4 != 1)
  {
LABEL_14:
    *v9 = 0;
    v9[1] = 0;
  }

LABEL_15:
  if (a4 == 6)
  {
    swift_beginAccess();
    sub_1D334BD88(v7, a2);
    result = swift_endAccess();
    v12 = v9[1];
    if (v12)
    {
      v13 = *v9 == v7 && v12 == a2;
      if (v13 || (result = sub_1D33DF1B4(), (result & 1) != 0))
      {
        *v9 = 0;
        v9[1] = 0;
      }
    }
  }

  return result;
}

id sub_1D33A8D6C()
{
  sub_1D33DDAD4();
  if (v3)
  {
    sub_1D331DA18(0, &qword_1EC761FD0, 0x1E69D8A40);
    if (swift_dynamicCast())
    {
      if ([v1 status] == 6)
      {
        return v1;
      }
    }
  }

  else
  {
    sub_1D331E880(v2, &qword_1EC7616D0, &unk_1D33E2890);
  }

  return 0;
}

BOOL sub_1D33A8E28(void **a1, void **a2, uint64_t a3, unint64_t a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a3 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID + 8);
  v7 = &selRef_setOriginatingUIType_;
  if (!v6)
  {
LABEL_25:
    v25 = [v4 v7[124]];
    if (v25 > 4)
    {
      v26 = 0;
    }

    else
    {
      v26 = qword_1D33E4428[v25];
    }

    v27 = [v5 v7[124]];
    if (v27 > 4)
    {
      v28 = 0;
    }

    else
    {
      v28 = qword_1D33E4428[v27];
    }

    return v28 < v26;
  }

  v37 = *(a3 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID);
  v35 = *a2;
  v34 = *a1;
  if (a4 >> 62)
  {
LABEL_41:
    v9 = sub_1D33DEE14();
  }

  else
  {
    v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v9)
  {
LABEL_24:

    v5 = v35;
    v7 = &selRef_setOriginatingUIType_;
    v4 = v34;
    goto LABEL_25;
  }

  v10 = 0;
  while (1)
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1D38B75D0](v10, a4);
    }

    else
    {
      if (v10 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v11 = *(a4 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v14 = [v11 callUUID];
    v15 = sub_1D33DE7B4();
    v17 = v16;

    if (v15 == v37 && v6 == v17)
    {
      break;
    }

    v19 = sub_1D33DF1B4();

    if (v19)
    {
      goto LABEL_19;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_24;
    }
  }

LABEL_19:
  v7 = &selRef_setOriginatingUIType_;
  if ([v12 status] != 1)
  {

    goto LABEL_24;
  }

  v4 = v34;
  v20 = [v34 callUUID];
  v21 = sub_1D33DE7B4();
  v23 = v22;

  v5 = v35;
  if (v21 == v37 && v6 == v23)
  {

    return 1;
  }

  v29 = sub_1D33DF1B4();

  if (v29)
  {

    return 1;
  }

  v30 = [v35 callUUID];
  v31 = sub_1D33DE7B4();
  v36 = v32;

  if (v31 == v37 && v6 == v36)
  {

    return 0;
  }

  v33 = sub_1D33DF1B4();

  result = 0;
  if ((v33 & 1) == 0)
  {
    goto LABEL_25;
  }

  return result;
}

id PrioritizedCallObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PrioritizedCallObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D33A92A4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D33A9330(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_1D33A9344(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1D33DEE14();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1D33D6CA4();
  sub_1D33D33A4(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D33A941C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v24 - v1;
  v3 = sub_1D33DEC24();
  v4 = *(v3 - 8);
  v25 = v3;
  v26 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B08, &qword_1D33E4400);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B10, &qword_1D33E4408);
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v24 - v11;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B18, &qword_1D33E4410);
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v14 = &v24 - v13;
  v15 = [objc_opt_self() defaultCenter];
  sub_1D33DEC34();

  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v16 = sub_1D33DEB94();
  v33 = v16;
  v17 = sub_1D33DEB34();
  (*(*(v17 - 8) + 56))(v2, 1, 1, v17);
  sub_1D33AB4A4(&qword_1EDEC0050, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1D3357A1C(&qword_1EDEBEED8, &qword_1EDEBEEC8, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v18 = v25;
  sub_1D33DE604();
  sub_1D331E880(v2, &qword_1EC760F20, &qword_1D33E2290);

  (*(v26 + 8))(v6, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B20, &unk_1D33E4418);
  sub_1D334CB54(&qword_1EC761B28, &qword_1EC761B08, &qword_1D33E4400, MEMORY[0x1E695BE98]);
  v19 = v27;
  sub_1D33DE5B4();
  (*(v28 + 8))(v10, v19);
  sub_1D334CB54(&qword_1EC761B30, &qword_1EC761B10, &qword_1D33E4408, MEMORY[0x1E695BC80]);
  sub_1D33A99FC();
  v20 = v30;
  sub_1D33DE624();
  (*(v32 + 8))(v12, v20);
  sub_1D334CB54(&qword_1EC761B48, &qword_1EC761B18, &qword_1D33E4410, MEMORY[0x1E695BD38]);
  v21 = v29;
  v22 = sub_1D33DE5A4();
  (*(v31 + 8))(v14, v21);
  return v22;
}

unint64_t sub_1D33A99FC()
{
  result = qword_1EC761B38;
  if (!qword_1EC761B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC761B20, &unk_1D33E4418);
    sub_1D3357A1C(&qword_1EC761B40, &qword_1EC761FD0, 0x1E69D8A40, MEMORY[0x1E69E81C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761B38);
  }

  return result;
}

unint64_t sub_1D33A9AB4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (result <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = result;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D33A9AF8(char *__src, void **a2, void **a3, unint64_t __dst, void *a5, unint64_t a6)
{
  v7 = a3;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    v15 = a2;
    v16 = __dst;
    if (__dst != __src || &__src[8 * v11] <= __dst)
    {
      memmove(__dst, __src, 8 * v11);
    }

    v17 = &v16[v11];
    if (v9 < 8)
    {
LABEL_10:
      v18 = v8;
      goto LABEL_51;
    }

    while (1)
    {
      if (v15 >= v7)
      {
        goto LABEL_10;
      }

      v56 = *v15;
      v55 = *v16;
      v21 = v55;
      v22 = v56;
      v23 = v21;
      v24 = sub_1D33A8E28(&v56, &v55, a5, a6);
      if (v6)
      {

        v47 = v17 - v16 + 7;
        if (v17 - v16 >= 0)
        {
          v47 = v17 - v16;
        }

        if (v8 < v16 || v8 >= v16 + (v47 & 0xFFFFFFFFFFFFFFF8) || v8 != v16)
        {
          v46 = 8 * (v47 >> 3);
          v18 = v8;
          goto LABEL_57;
        }

        goto LABEL_59;
      }

      v25 = v24;

      if (v25)
      {
        break;
      }

      v19 = v16;
      v20 = v8 == v16++;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 8;
      if (v16 >= v17)
      {
        goto LABEL_10;
      }
    }

    v19 = v15;
    v20 = v8 == v15++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v19;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v14] <= __dst)
  {
    v26 = a2;
    v27 = __dst;
    memmove(__dst, a2, 8 * v14);
    a2 = v26;
    __dst = v27;
  }

  v18 = a2;
  v17 = (__dst + 8 * v14);
  v28 = v12 < 8;
  v16 = __dst;
  if (!v28 && a2 > v8)
  {
    v52 = __dst;
    v29 = -__dst;
    v50 = -__dst;
LABEL_26:
    v51 = v18;
    v30 = v18 - 1;
    v31 = v17 + v29;
    --v7;
    v32 = v17;
    v33 = v17;
    while (1)
    {
      v34 = *--v33;
      v56 = v34;
      v35 = v30;
      v55 = *v30;
      v36 = v55;
      v37 = v34;
      v38 = v36;
      v39 = sub_1D33A8E28(&v56, &v55, a5, a6);
      if (v6)
      {
        break;
      }

      v40 = v39;

      v41 = v7 + 1;
      if (v40)
      {
        v42 = v35;
        if (v41 != v51)
        {
          *v7 = *v35;
        }

        v16 = v52;
        v17 = v32;
        if (v32 <= v52 || (v18 = v42, v29 = v50, v42 <= v8))
        {
          v18 = v42;
          goto LABEL_51;
        }

        goto LABEL_26;
      }

      if (v41 != v32)
      {
        *v7 = *v33;
      }

      v31 -= 8;
      --v7;
      v32 = v33;
      v30 = v35;
      if (v33 <= v52)
      {
        v17 = v33;
        v18 = v51;
        v16 = v52;
        goto LABEL_51;
      }
    }

    if (v31 >= 0)
    {
      v43 = v31;
    }

    else
    {
      v43 = v31 + 7;
    }

    v44 = v43 >> 3;
    v18 = v51;
    v45 = v52;
    if (v51 < v52 || v51 >= (v52 + (v43 & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v51, v52, 8 * v44);
      goto LABEL_59;
    }

    if (v51 == v52)
    {
      goto LABEL_59;
    }

    v46 = 8 * v44;
    goto LABEL_58;
  }

LABEL_51:
  v48 = v17 - v16 + 7;
  if (v17 - v16 >= 0)
  {
    v48 = v17 - v16;
  }

  if (v18 < v16 || v18 >= (v16 + (v48 & 0xFFFFFFFFFFFFFFF8)) || v18 != v16)
  {
    v46 = 8 * (v48 >> 3);
LABEL_57:
    v45 = v16;
LABEL_58:
    memmove(v18, v45, v46);
  }

LABEL_59:

  return 1;
}

uint64_t sub_1D33A9E84(char *a1, unint64_t a2, uint64_t *a3, void *a4, unint64_t a5)
{
  v7 = a1;
  v8 = *a1;
  v22 = a4;
  v23 = a5;

  v24 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_1D33A9330(v24);
  }

  v19 = v7;
  *v7 = v24;
  v10 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v19 = v24;

    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v7 = &v24[16 * v9];
      v12 = *v7;
      v13 = &v10[2 * v9];
      v14 = v13[1];
      __src = (v11 + 8 * *v7);
      v25 = (v11 + 8 * v14);
      v26 = (v11 + 8 * *v13);
      v15 = v22;

      sub_1D33A9AF8(__src, v26, v25, a2, v15, v23);

      if (v5)
      {
        *v19 = v24;

        return 1;
      }

      if (v14 < v12)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v16 = *v10;
      if (v9 - 2 >= *v10)
      {
        goto LABEL_13;
      }

      *v7 = v12;
      *(v7 + 1) = v14;
      v17 = v16 - v9;
      if (v16 < v9)
      {
        goto LABEL_14;
      }

      v9 = v16 - 1;
      memmove(v13, v13 + 2, 16 * v17);
      *v10 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v24;

    __break(1u);
  }

  return result;
}

void sub_1D33AA050(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5, unint64_t a6)
{
  v6 = a6;
  v155 = MEMORY[0x1E69E7CC0];
  v7 = a3[1];
  if (v7 < 1)
  {
    v11 = a5;
    swift_bridgeObjectRetain_n();
    v12 = v11;
LABEL_4:
    v13 = *a1;
    if (!*a1)
    {
      goto LABEL_175;
    }

    v14 = a5;

    sub_1D33A9E84(&v155, v13, a3, v14, v6);
    if (v144)
    {

      goto LABEL_146;
    }

    swift_bridgeObjectRelease_n();

    goto LABEL_147;
  }

  v140 = &a5[OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID];
  v151 = a6 & 0xFFFFFFFFFFFFFF8;
  v150 = a6 & 0xC000000000000001;
  v9 = a5;
  swift_bridgeObjectRetain_n();
  v142 = v9;
  v143 = MEMORY[0x1E69E7CC0];
  v10 = 0;
  v152 = v6;
  v132 = a4;
  while (1)
  {
    v15 = v10;
    v16 = v10 + 1;
    v141 = v15;
    if (v16 < v7)
    {
      v17 = *a3;
      v18 = *(*a3 + 8 * v16);
      v153 = *(*a3 + 8 * v15);
      v19 = v153;
      v154[0] = v18;
      v20 = v18;
      v21 = v19;
      v22 = sub_1D33A8E28(v154, &v153, v142, v6);
      if (!v144)
      {
        v23 = v22;

        v24 = v15;
        v25 = v15 + 2;
        v26 = 8 * v24;
        v27 = (v17 + 8 * v24 + 16);
        while (v7 != v25)
        {
          v28 = *v27;
          v153 = *(v27 - 1);
          v29 = v153;
          v154[0] = v28;
          v30 = v28;
          v31 = v29;
          LODWORD(v29) = sub_1D33A8E28(v154, &v153, v142, v6);

          ++v25;
          ++v27;
          if ((v23 ^ v29))
          {
            v7 = v25 - 1;
            break;
          }
        }

        a4 = v132;
        v15 = v141;
        if (v23)
        {
          if (v7 < v141)
          {
            goto LABEL_170;
          }

          if (v141 < v7)
          {
            v32 = 8 * v7 - 8;
            v33 = v7;
            v34 = v141;
            do
            {
              if (v34 != --v33)
              {
                v35 = *a3;
                if (!*a3)
                {
                  goto LABEL_173;
                }

                v36 = *(v35 + v26);
                *(v35 + v26) = *(v35 + v32);
                *(v35 + v32) = v36;
              }

              ++v34;
              v32 -= 8;
              v26 += 8;
            }

            while (v34 < v33);
          }
        }

        goto LABEL_24;
      }

LABEL_146:
      swift_bridgeObjectRelease_n();

LABEL_147:

      return;
    }

    v7 = v16;
LABEL_24:
    v37 = a3[1];
    if (v7 >= v37)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v7, v15))
    {
      goto LABEL_167;
    }

    v38 = v7;
    if (v7 - v15 >= a4)
    {
      goto LABEL_32;
    }

    if (__OFADD__(v15, a4))
    {
      goto LABEL_168;
    }

    if (v15 + a4 < v37)
    {
      v37 = v15 + a4;
    }

    v39 = v140;
    v40 = &selRef_setOriginatingUIType_;
    if (v37 < v15)
    {
      goto LABEL_169;
    }

    if (v7 == v37)
    {
LABEL_32:
      if (v7 < v15)
      {
        goto LABEL_166;
      }

      goto LABEL_33;
    }

    v131 = v37;
    v95 = *a3;
    v138 = *a3;
LABEL_85:
    v97 = *(v95 + 8 * v38);
    v136 = v38;
LABEL_86:
    v146 = v38;
    v147 = v97;
    v98 = *(v39 + 1);
    v145 = v38 - 1;
    v149 = *(v95 + 8 * (v38 - 1));
    if (!v98)
    {
      v112 = v97;
      v113 = *(v95 + 8 * (v38 - 1));
      v114 = v97;
      v115 = v113;
      goto LABEL_114;
    }

    v99 = *v39;
    if (v6 >> 62)
    {
      v100 = sub_1D33DEE14();
    }

    else
    {
      v100 = *(v151 + 16);
    }

    v101 = v147;
    v102 = v149;

    if (!v100)
    {
LABEL_105:

      v39 = v140;
      v40 = &selRef_setOriginatingUIType_;
      goto LABEL_112;
    }

    v137 = v101;
    v103 = 0;
    while (1)
    {
      if (v150)
      {
        v104 = MEMORY[0x1D38B75D0](v103, v6);
      }

      else
      {
        if (v103 >= *(v151 + 16))
        {
          goto LABEL_150;
        }

        v104 = *(v6 + 8 * v103 + 32);
      }

      v96 = v104;
      v105 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      v106 = [v104 callUUID];
      v107 = sub_1D33DE7B4();
      v109 = v108;

      v110 = v107 == v99 && v98 == v109;
      if (v110)
      {
        break;
      }

      v111 = sub_1D33DF1B4();

      if (v111)
      {
        goto LABEL_107;
      }

      ++v103;
      v110 = v105 == v100;
      v6 = v152;
      if (v110)
      {
        goto LABEL_105;
      }
    }

LABEL_107:
    v40 = &selRef_setOriginatingUIType_;
    if ([v96 status] != 1)
    {

      v6 = v152;
      v39 = v140;
LABEL_112:
      v15 = v141;
      v95 = v138;
LABEL_113:
      v112 = v147;
LABEL_114:
      v120 = [v112 v40[124]];
      if (v120 > 4)
      {
        v121 = 0;
      }

      else
      {
        v121 = qword_1D33E4428[v120];
      }

      v122 = [v149 v40[124]];
      if (v122 > 1)
      {
        if (v122 == 2)
        {
          v123 = 2;
          goto LABEL_126;
        }

        if ((v122 - 3) < 2)
        {

          v96 = v149;
          goto LABEL_83;
        }
      }

      else
      {
        if (!v122)
        {
          v123 = 1;
          goto LABEL_126;
        }

        if (v122 == 1)
        {
          v123 = 3;
LABEL_126:

          v124 = v146;
          if (v123 >= v121)
          {
            goto LABEL_84;
          }

          if (!v95)
          {
            goto LABEL_171;
          }

          goto LABEL_128;
        }
      }

      v123 = 0;
      goto LABEL_126;
    }

    v116 = [v137 callUUID];
    v117 = sub_1D33DE7B4();
    v119 = v118;

    v95 = v138;
    if (v117 == v99 && v98 == v119)
    {

      goto LABEL_132;
    }

    v125 = sub_1D33DF1B4();

    if (v125)
    {
      break;
    }

    v126 = [v102 callUUID];
    v127 = sub_1D33DE7B4();
    v129 = v128;

    v6 = v152;
    if (v127 == v99 && v98 == v129)
    {
    }

    else
    {
      v130 = sub_1D33DF1B4();

      if ((v130 & 1) == 0)
      {
        v39 = v140;
        v15 = v141;
        v40 = &selRef_setOriginatingUIType_;
        goto LABEL_113;
      }

      v96 = v102;
    }

    v39 = v140;
    v15 = v141;
    v40 = &selRef_setOriginatingUIType_;
LABEL_83:

LABEL_84:
    v38 = v136 + 1;
    if (v136 + 1 != v131)
    {
      goto LABEL_85;
    }

    v7 = v131;
    if (v131 < v15)
    {
      goto LABEL_166;
    }

LABEL_33:
    v135 = v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_1D3359A14(0, *(v143 + 2) + 1, 1, v143);
    }

    v42 = *(v143 + 2);
    v41 = *(v143 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v143 = sub_1D3359A14((v41 > 1), v42 + 1, 1, v143);
    }

    *(v143 + 2) = v43;
    v44 = v143 + 32;
    v45 = &v143[16 * v42 + 32];
    *v45 = v15;
    *(v45 + 1) = v7;
    v155 = v143;
    v148 = *a1;
    if (!*a1)
    {
      goto LABEL_174;
    }

    if (v42)
    {
      while (2)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          v51 = &v44[16 * v43];
          v52 = *(v51 - 8);
          v53 = *(v51 - 7);
          v57 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          if (v57)
          {
            goto LABEL_155;
          }

          v56 = *(v51 - 6);
          v55 = *(v51 - 5);
          v57 = __OFSUB__(v55, v56);
          v49 = v55 - v56;
          v50 = v57;
          if (v57)
          {
            goto LABEL_156;
          }

          v58 = &v143[16 * v43];
          v60 = *v58;
          v59 = *(v58 + 1);
          v57 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v57)
          {
            goto LABEL_158;
          }

          v57 = __OFADD__(v49, v61);
          v62 = v49 + v61;
          if (v57)
          {
            goto LABEL_161;
          }

          if (v62 >= v54)
          {
            v80 = &v44[16 * v46];
            v82 = *v80;
            v81 = *(v80 + 1);
            v57 = __OFSUB__(v81, v82);
            v83 = v81 - v82;
            if (v57)
            {
              goto LABEL_165;
            }

            if (v49 < v83)
            {
              v46 = v43 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v50)
            {
              goto LABEL_157;
            }

            v63 = &v143[16 * v43];
            v65 = *v63;
            v64 = *(v63 + 1);
            v66 = __OFSUB__(v64, v65);
            v67 = v64 - v65;
            v68 = v66;
            if (v66)
            {
              goto LABEL_160;
            }

            v69 = &v44[16 * v46];
            v71 = *v69;
            v70 = *(v69 + 1);
            v57 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v57)
            {
              goto LABEL_163;
            }

            if (__OFADD__(v67, v72))
            {
              goto LABEL_164;
            }

            if (v67 + v72 < v49)
            {
              goto LABEL_66;
            }

            if (v49 < v72)
            {
              v46 = v43 - 2;
            }
          }
        }

        else
        {
          if (v43 == 3)
          {
            v47 = *(v143 + 4);
            v48 = *(v143 + 5);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
            goto LABEL_52;
          }

          v73 = &v143[16 * v43];
          v75 = *v73;
          v74 = *(v73 + 1);
          v57 = __OFSUB__(v74, v75);
          v67 = v74 - v75;
          v68 = v57;
LABEL_66:
          if (v68)
          {
            goto LABEL_159;
          }

          v76 = &v44[16 * v46];
          v78 = *v76;
          v77 = *(v76 + 1);
          v57 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v57)
          {
            goto LABEL_162;
          }

          if (v79 < v67)
          {
            goto LABEL_7;
          }
        }

        if (v46 - 1 >= v43)
        {
          goto LABEL_151;
        }

        v84 = *a3;
        if (!*a3)
        {
          goto LABEL_172;
        }

        v85 = &v44[16 * v46 - 16];
        v86 = *v85;
        v87 = v46;
        v88 = &v44[16 * v46];
        v89 = *(v88 + 1);
        v90 = (v84 + 8 * *v85);
        v91 = (v84 + 8 * *v88);
        v92 = (v84 + 8 * v89);
        v93 = v142;

        sub_1D33A9AF8(v90, v91, v92, v148, v93, v152);
        if (v144)
        {

          goto LABEL_146;
        }

        if (v89 < v86)
        {
          goto LABEL_152;
        }

        v144 = 0;
        v94 = *(v143 + 2);
        if (v87 > v94)
        {
          goto LABEL_153;
        }

        *v85 = v86;
        *(v85 + 1) = v89;
        if (v87 >= v94)
        {
          goto LABEL_154;
        }

        v43 = v94 - 1;
        memmove(v88, v88 + 16, 16 * (v94 - 1 - v87));
        *(v143 + 2) = v94 - 1;
        v6 = v152;
        v44 = v143 + 32;
        if (v94 <= 2)
        {
LABEL_7:
          v155 = v143;
          break;
        }

        continue;
      }
    }

    v7 = a3[1];
    v10 = v135;
    a4 = v132;
    if (v135 >= v7)
    {
      goto LABEL_4;
    }
  }

LABEL_132:
  v6 = v152;

  v39 = v140;
  v15 = v141;
  v40 = &selRef_setOriginatingUIType_;
  v124 = v146;
  if (v138)
  {
LABEL_128:
    v97 = *(v95 + 8 * v124);
    *(v95 + 8 * v124) = *(v95 + 8 * v145);
    *(v95 + 8 * v145) = v97;
    v38 = v145;
    if (v145 == v15)
    {
      goto LABEL_84;
    }

    goto LABEL_86;
  }

LABEL_171:
  swift_bridgeObjectRelease_n();

  __break(1u);
LABEL_172:
  swift_bridgeObjectRelease_n();

  __break(1u);
LABEL_173:
  swift_bridgeObjectRelease_n();

  __break(1u);
LABEL_174:
  swift_bridgeObjectRelease_n();

  __break(1u);
LABEL_175:
  swift_bridgeObjectRelease_n();

  __break(1u);
}

void sub_1D33AAB28(uint64_t *a1, void *a2, unint64_t a3)
{
  v6 = a1[1];
  v7 = a2;
  swift_bridgeObjectRetain_n();
  v8 = v7;
  v9 = sub_1D33DF164();
  if (v9 < v6)
  {
    if (v6 >= -1)
    {
      v10 = v9;
      if (v6 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D331DA18(0, &qword_1EC761FD0, 0x1E69D8A40);
        v11 = sub_1D33DE8E4();
        *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6 / 2;
      }

      v33[0] = ((v11 & 0xFFFFFFFFFFFFFF8) + 32);
      v33[1] = (v6 / 2);
      v12 = v8;

      sub_1D33AA050(v33, &v34, a1, v10, v12, a3);

      *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
      swift_bridgeObjectRelease_n();

LABEL_25:

      return;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
    goto LABEL_27;
  }

  if (v6)
  {
    if (v6 == 1)
    {
    }

    else
    {
      v13 = *a1;
      v28 = v8;
      v14 = v8;

      v15 = -1;
      v16 = 1;
      v17 = v13;
      v29 = v6;
      while (2)
      {
        v31 = v16;
        v32 = v15;
        v18 = *(v13 + 8 * v16);
        v30 = v17;
        v19 = v17;
        while (1)
        {
          v33[0] = v18;
          v34 = *v19;
          v20 = v34;
          v21 = v18;
          v22 = v20;
          v23 = a3;
          v24 = sub_1D33A8E28(v33, &v34, v14, a3);
          if (v3)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_25;
          }

          v25 = v24;

          if (!v25)
          {
            break;
          }

          if (!v13)
          {
            goto LABEL_28;
          }

          v26 = *v19;
          v18 = *(v19 + 8);
          *v19 = v18;
          *(v19 + 8) = v26;
          v19 -= 8;
          v27 = __CFADD__(v15++, 1);
          a3 = v23;
          if (v27)
          {
            goto LABEL_22;
          }
        }

        a3 = v23;
LABEL_22:
        v16 = v31 + 1;
        v17 = v30 + 8;
        v15 = v32 - 1;
        if (v31 + 1 != v29)
        {
          continue;
        }

        break;
      }

      swift_bridgeObjectRelease_n();
      v8 = v28;
    }
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }
}

void sub_1D33AADC8(uint64_t *a1, void *a2, unint64_t a3)
{
  v5 = *a1;
  v6 = a2;
  swift_bridgeObjectRetain_n();
  v7 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1D333A70C(v5);
    *a1 = v5;
  }

  v9 = *(v5 + 16);
  v11[0] = v5 + 32;
  v11[1] = v9;
  v10 = v7;

  sub_1D33AAB28(v11, v10, a3);

  sub_1D33DEF94();
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1D33AAEA4(void *a1, void *a2)
{
  v4 = sub_1D33DDDB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761A90, &qword_1D33E3F98);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v53 - v18;
  if (!a1 || !a2)
  {
    return 1;
  }

  v55 = v10;
  v56 = v5;
  v54 = v4;
  v20 = a1;
  v21 = a2;
  v58 = v20;
  v22 = [v20 callUUID];
  v23 = sub_1D33DE7B4();
  v25 = v24;

  v57 = v21;
  v26 = [v21 callUUID];
  v27 = sub_1D33DE7B4();
  v29 = v28;

  if (v23 != v27 || v25 != v29)
  {
    v30 = sub_1D33DF1B4();

    if (v30)
    {

      return 1;
    }

    v32 = v58;
    v33 = [v58 isConferenced];
    v34 = v57;
    if (v33 && ([v57 isConferenced] & 1) != 0)
    {
      v35 = [v32 callGroupUUID];
      if (v35)
      {
        v36 = v35;
        sub_1D33DDD84();

        v37 = *(v56 + 56);
        v38 = v19;
        v39 = 0;
      }

      else
      {
        v37 = *(v56 + 56);
        v38 = v19;
        v39 = 1;
      }

      v40 = v54;
      v37(v38, v39, 1, v54);
      v41 = [v34 callGroupUUID];
      if (v41)
      {
        v42 = v41;
        sub_1D33DDD84();

        v43 = 0;
      }

      else
      {
        v43 = 1;
      }

      v44 = v56;
      v37(v17, v43, 1, v40);
      v45 = *(v8 + 48);
      v46 = v55;
      sub_1D33383BC(v19, v55);
      sub_1D33383BC(v17, v46 + v45);
      v47 = *(v44 + 48);
      if (v47(v46, 1, v40) == 1)
      {

        sub_1D331E880(v17, &qword_1EC7612B0, qword_1D33E2830);
        v48 = v55;
        sub_1D331E880(v19, &qword_1EC7612B0, qword_1D33E2830);
        if (v47(v48 + v45, 1, v40) == 1)
        {
          sub_1D331E880(v48, &qword_1EC7612B0, qword_1D33E2830);
          return 1;
        }

LABEL_25:
        sub_1D331E880(v48, &qword_1EC761A90, &qword_1D33E3F98);
        return 0;
      }

      sub_1D33383BC(v46, v14);
      if (v47(v46 + v45, 1, v40) == 1)
      {

        sub_1D331E880(v17, &qword_1EC7612B0, qword_1D33E2830);
        v48 = v55;
        sub_1D331E880(v19, &qword_1EC7612B0, qword_1D33E2830);
        (*(v56 + 8))(v14, v40);
        goto LABEL_25;
      }

      v49 = v56;
      (*(v56 + 32))(v7, v46 + v45, v40);
      sub_1D33AB4A4(&qword_1EDEBFD30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v50 = v46;
      v51 = sub_1D33DE774();

      v52 = *(v49 + 8);
      v52(v7, v40);
      sub_1D331E880(v17, &qword_1EC7612B0, qword_1D33E2830);
      sub_1D331E880(v19, &qword_1EC7612B0, qword_1D33E2830);
      v52(v14, v40);
      sub_1D331E880(v50, &qword_1EC7612B0, qword_1D33E2830);
      if (v51)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D33AB4A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D33AB4F0(uint64_t a1)
{
  v1 = a1;
  v23 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D331F514();
    sub_1D33DEA94();
    v1 = v18;
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v16 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1D33DEE54() || (sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578), swift_dynamicCast(), v13 = v17, v4 = v9, v5 = v10, !v17))
      {
LABEL_22:
        sub_1D331FEEC(v1);
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = [v13 normalizedValue];
    v15 = TUHandleForIDSCanonicalAddress();

    v9 = v4;
    v10 = v5;
    if (v15)
    {
      MEMORY[0x1D38B6F20]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

char *sub_1D33AB770()
{
  v1 = [v0 validRemoteParticipantHandles];
  if (v1)
  {
    v2 = v1;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D331F514();
    v3 = sub_1D33DEA54();

    sub_1D33AB4F0(v3);
    v5 = v4;

    if (v5 >> 62)
    {
LABEL_23:
      v6 = sub_1D33DEE14();
      if (v6)
      {
LABEL_4:
        v7 = 0;
        v8 = MEMORY[0x1E69E7CC0];
        do
        {
          v9 = v7;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x1D38B75D0](v9, v5);
            }

            else
            {
              if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v10 = *(v5 + 8 * v9 + 32);
            }

            v11 = v10;
            v7 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            v12 = TUCopyIDSFromIDForHandle();
            if (v12)
            {
              break;
            }

            ++v9;
            if (v7 == v6)
            {
              goto LABEL_25;
            }
          }

          v13 = v12;
          v14 = sub_1D33DE7B4();
          v16 = v15;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1D3359DD4(0, *(v8 + 2) + 1, 1, v8);
          }

          v18 = *(v8 + 2);
          v17 = *(v8 + 3);
          if (v18 >= v17 >> 1)
          {
            v8 = sub_1D3359DD4((v17 > 1), v18 + 1, 1, v8);
          }

          *(v8 + 2) = v18 + 1;
          v19 = &v8[16 * v18];
          *(v19 + 4) = v14;
          *(v19 + 5) = v16;
        }

        while (v7 != v6);
        goto LABEL_25;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v8 = MEMORY[0x1E69E7CC0];
LABEL_25:

    return v8;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D33AB974()
{
  v1 = v0;
  v2 = sub_1D336C04C(MEMORY[0x1E69E7CC0]);
  v24 = v2;
  *&v21 = 0x616E2D7473726966;
  *(&v21 + 1) = 0xEA0000000000656DLL;
  v3 = MEMORY[0x1E69E6158];
  sub_1D33DEEB4();
  v4 = v1[18];
  if (v4)
  {
    v5 = v1[17];
    v22 = v3;
    *&v21 = v5;
    *(&v21 + 1) = v4;
    sub_1D334CCF4(&v21, v20);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v20, v23, isUniquelyReferenced_nonNull_native);
    sub_1D334CCA0(v23);
    v24 = v2;
  }

  else
  {
    sub_1D334BCE4(&v21, v23);
    sub_1D331E880(&v21, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v23);
  }

  *&v21 = 0x6D616E2D7473616CLL;
  *(&v21 + 1) = 0xE900000000000065;
  v7 = MEMORY[0x1E69E6158];
  sub_1D33DEEB4();
  v8 = v1[20];
  if (v8)
  {
    v9 = v1[19];
    v22 = v7;
    *&v21 = v9;
    *(&v21 + 1) = v8;
    sub_1D334CCF4(&v21, v20);

    v10 = v24;
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v20, v23, v11);
    sub_1D334CCA0(v23);
    v24 = v10;
  }

  else
  {
    sub_1D334BCE4(&v21, v23);
    sub_1D331E880(&v21, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v23);
  }

  *&v21 = 0x644964726F636572;
  *(&v21 + 1) = 0xE800000000000000;
  sub_1D33DEEB4();
  v12 = v1[22];
  if (v12)
  {
    v13 = v1[21];
    v22 = v7;
    *&v21 = v13;
    *(&v21 + 1) = v12;
    sub_1D334CCF4(&v21, v20);

    v14 = v24;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v20, v23, v15);
    sub_1D334CCA0(v23);
    v24 = v14;
  }

  else
  {
    sub_1D334BCE4(&v21, v23);
    sub_1D331E880(&v21, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v23);
  }

  *&v21 = 0xD000000000000017;
  *(&v21 + 1) = 0x80000001D33E7470;
  sub_1D33DEEB4();
  v16 = v1[23];
  if (v16)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B78, &qword_1D33E4538);
    *&v21 = v16;
    sub_1D334CCF4(&v21, v20);

    v17 = v24;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v20, v23, v18);
    sub_1D334CCA0(v23);
    return v17;
  }

  else
  {
    sub_1D334BCE4(&v21, v23);
    sub_1D331E880(&v21, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v23);
    return v24;
  }
}

unint64_t sub_1D33ABCE4()
{
  v1 = v0;
  v2 = sub_1D336C04C(MEMORY[0x1E69E7CC0]);
  *&v60 = 0x2D64657469766E69;
  *(&v60 + 1) = 0xEF737265626D656DLL;
  v3 = MEMORY[0x1E69E6158];
  sub_1D33DEEB4();
  v4 = *v1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B0, &qword_1D33E3DD0);
  *&v60 = v4;
  sub_1D334CCF4(&v60, v59);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D3398C48(v59, v62, isUniquelyReferenced_nonNull_native);
  sub_1D334CCA0(v62);
  v63 = v2;
  if (v1[14])
  {

    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v6 = sub_1D33DE464();
    __swift_project_value_buffer(v6, qword_1EC762130);
    v7 = sub_1D33DE444();
    v8 = sub_1D33DEAF4();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_25;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "call date is nil, kIDSGeneralSpamReportTimeOfMessageKey is required to report spams";
LABEL_24:
    _os_log_impl(&dword_1D331A000, v7, v8, v10, v9, 2u);
    MEMORY[0x1D38B81C0](v9, -1, -1);
LABEL_25:

    return 0;
  }

  v11 = v1[12];
  if (!v11)
  {

    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v36 = sub_1D33DE464();
    __swift_project_value_buffer(v36, qword_1EC762130);
    v7 = sub_1D33DE444();
    v8 = sub_1D33DEAF4();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_25;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "message id is nil, kIDSGeneralSpamReportMessageIDKey is required to report spams";
    goto LABEL_24;
  }

  if (!v1[10])
  {

LABEL_20:
    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v37 = sub_1D33DE464();
    __swift_project_value_buffer(v37, qword_1EC762130);
    v7 = sub_1D33DE444();
    v8 = sub_1D33DEAF4();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_25;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "senderHandleValue is nil, kIDSGeneralSpamReportSenderURIKey is required to report spams";
    goto LABEL_24;
  }

  v12 = v1[13];
  v13 = v1[11];

  v14 = sub_1D33DE784();
  v15 = TUHandleForIDSCanonicalAddress();

  if (!v15)
  {

LABEL_19:

    goto LABEL_20;
  }

  v16 = TUCopyIDSFromIDForHandle();
  if (!v16)
  {

    goto LABEL_19;
  }

  v17 = v16;
  v18 = sub_1D33DE7B4();
  v57 = v19;
  v58 = v18;

  v20 = sub_1D33DE784();
  v21 = TUHandleForIDSCanonicalAddress();

  *&v60 = sub_1D33DE7B4();
  *(&v60 + 1) = v22;
  sub_1D33DEEB4();
  v23 = v1[15];
  v24 = v1[16];
  v61 = v3;
  *&v60 = v23;
  *(&v60 + 1) = v24;
  sub_1D334CCF4(&v60, v59);

  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D3398C48(v59, v62, v25);
  sub_1D334CCA0(v62);
  *&v60 = sub_1D33DE7B4();
  *(&v60 + 1) = v26;
  sub_1D33DEEB4();
  v61 = MEMORY[0x1E69E63B0];
  *&v60 = v12;
  v27 = v21;
  sub_1D334CCF4(&v60, v59);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D3398C48(v59, v62, v28);
  sub_1D334CCA0(v62);
  v63 = v2;
  *&v60 = sub_1D33DE7B4();
  *(&v60 + 1) = v29;
  sub_1D33DEEB4();
  v30 = TUCopyIDSFromIDForHandle();
  if (v30)
  {
    v31 = v30;
    v32 = sub_1D33DE7B4();
    v34 = v33;

    v61 = v3;
    *&v60 = v32;
    *(&v60 + 1) = v34;
    sub_1D334CCF4(&v60, v59);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v59, v62, v35);
    sub_1D334CCA0(v62);
    v63 = v2;
  }

  else
  {
    sub_1D334BCE4(&v60, v62);
    sub_1D331E880(&v60, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v62);
    v2 = v63;
  }

  *&v60 = sub_1D33DE7B4();
  *(&v60 + 1) = v39;
  sub_1D33DEEB4();
  v61 = v3;
  *&v60 = v13;
  *(&v60 + 1) = v11;
  sub_1D334CCF4(&v60, v59);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D3398C48(v59, v62, v40);
  sub_1D334CCA0(v62);
  *&v60 = sub_1D33DE7B4();
  *(&v60 + 1) = v41;
  sub_1D33DEEB4();
  v61 = v3;
  *&v60 = v58;
  *(&v60 + 1) = v57;
  sub_1D334CCF4(&v60, v59);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D3398C48(v59, v62, v42);
  sub_1D334CCA0(v62);
  v63 = v2;
  *&v60 = 0x7079742D6C6C6163;
  *(&v60 + 1) = 0xE900000000000065;
  sub_1D33DEEB4();
  v43 = v1[2];
  if (v43)
  {
    v44 = v1[1];
    v61 = v3;
    *&v60 = v44;
    *(&v60 + 1) = v43;
    sub_1D334CCF4(&v60, v59);

    v45 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v59, v62, v45);
    sub_1D334CCA0(v62);
    v63 = v2;
  }

  else
  {
    sub_1D334BCE4(&v60, v62);
    sub_1D331E880(&v60, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v62);
  }

  *&v60 = 0x6E656C2D6C6C6163;
  *(&v60 + 1) = 0xEB00000000687467;
  sub_1D33DEEB4();
  if (v1[4])
  {
    sub_1D334BCE4(&v60, v62);
    sub_1D331E880(&v60, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v62);
    v46 = v63;
  }

  else
  {
    v47 = v1[3];
    v61 = MEMORY[0x1E69E63B0];
    *&v60 = v47;
    sub_1D334CCF4(&v60, v59);
    v46 = v63;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v59, v62, v48);
    sub_1D334CCA0(v62);
    v63 = v46;
  }

  *&v60 = 0x6B6E696C2D736168;
  *(&v60 + 1) = 0xE800000000000000;
  sub_1D33DEEB4();
  v49 = *(v1 + 33);
  v61 = MEMORY[0x1E69E6370];
  LOBYTE(v60) = v49;
  sub_1D334CCF4(&v60, v59);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D3398C48(v59, v62, v50);
  sub_1D334CCA0(v62);
  v63 = v46;
  *&v60 = 0x6174732D6C6C6163;
  *(&v60 + 1) = 0xEB00000000737574;
  sub_1D33DEEB4();
  v51 = v1[6];
  if (v51)
  {
    v52 = v1[5];
    v61 = v3;
    *&v60 = v52;
    *(&v60 + 1) = v51;
    sub_1D334CCF4(&v60, v59);

    v53 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v59, v62, v53);
    sub_1D334CCA0(v62);
    v54 = v46;
  }

  else
  {
    sub_1D334BCE4(&v60, v62);
    sub_1D331E880(&v60, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v62);
    v54 = v63;
  }

  *&v60 = 0xD00000000000001CLL;
  *(&v60 + 1) = 0x80000001D33E7450;
  sub_1D33DEEB4();
  v55 = sub_1D33AB974();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B70, qword_1D33E4450);
  *&v60 = v55;
  sub_1D334CCF4(&v60, v59);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D3398C48(v59, v62, v56);

  sub_1D334CCA0(v62);
  return v54;
}

id FaceTimeSpamReportManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void FaceTimeSpamReportManager.init()()
{
  ObjectType = swift_getObjectType();
  sub_1D33DE7B4();
  v1 = objc_allocWithZone(MEMORY[0x1E69A48A8]);
  v2 = sub_1D33DE784();

  v3 = [v1 initWithService_];

  if (v3)
  {
    v4 = [objc_opt_self() sharedInstance];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_opt_self() sharedController];
      v7 = objc_allocWithZone(ObjectType);
      v8 = OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_imNicknameProvider;
      *&v7[v8] = [objc_allocWithZone(MEMORY[0x1E69A5C18]) init];
      *&v7[OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_idsService] = v3;
      *&v7[OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_imAccountController] = v5;
      *&v7[OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_imDaemonController] = v6;
      v9.receiver = v7;
      v9.super_class = ObjectType;
      objc_msgSendSuper2(&v9, sel_init);
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void FaceTimeSpamReportManager.reportSpam(call:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D33ACE9C();
  v5 = sub_1D335DDB8(v4);
  if (v6)
  {
    v7 = v5;
    v8 = v6;

    v9 = [a1 validRemoteParticipantHandles];
    if (v9)
    {
      v10 = v9;
      sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
      sub_1D331F514();
      v11 = sub_1D33DEA54();

      v12 = sub_1D335DC7C(v11);

      if (v12)
      {
        v13 = [v12 value];

        v14 = sub_1D33DE7B4();
        v16 = v15;

        v9 = v14;
        goto LABEL_14;
      }

      v9 = 0;
    }

    v16 = 0;
LABEL_14:
    v25 = sub_1D33AD3C0(v9, v16);

    v26 = [a1 validRemoteParticipantHandles];
    if (v26)
    {
      v27 = v26;
      sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
      sub_1D331F514();
      v28 = sub_1D33DEA54();

      v29 = sub_1D335DC7C(v28);

      if (v29)
      {
        v30 = [v29 value];

        v31 = sub_1D33DE7B4();
        v33 = v32;

        v26 = v31;
        goto LABEL_19;
      }

      v26 = 0;
    }

    v33 = 0;
LABEL_19:
    v34 = sub_1D33AD608(v26, v33);

    v35 = v25;
    sub_1D33ADD9C(a1, v25, v7, v8, v34, v56);
    v36 = sub_1D33ABCE4();
    sub_1D33AE21C(v56);
    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v37 = sub_1D33DE464();
    __swift_project_value_buffer(v37, qword_1EC762130);

    v38 = sub_1D33DE444();
    v39 = sub_1D33DEAF4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v55 = v41;
      *v40 = 136315138;
      if (v36)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B70, qword_1D33E4450);
        v42 = sub_1D33DE804();
        v44 = v43;
      }

      else
      {
        v44 = 0xE300000000000000;
        v42 = 7104878;
      }

      v45 = sub_1D3328B48(v42, v44, &v55);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_1D331A000, v38, v39, "ReportSpamManager: report spam, model.dictionary: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x1D38B81C0](v41, -1, -1);
      MEMORY[0x1D38B81C0](v40, -1, -1);
    }

    v46 = *(v2 + OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_idsService);
    if (v36)
    {
      v47 = sub_1D33DE6E4();
    }

    else
    {
      v47 = 0;
    }

    v48 = [v46 reportSpamMessage_];

    v49 = sub_1D33DE444();
    v50 = sub_1D33DEAF4();
    v51 = os_log_type_enabled(v49, v50);
    if (v48)
    {
      if (v51)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        v53 = "ReportSpamManager: report spam was sent successfully";
LABEL_34:
        _os_log_impl(&dword_1D331A000, v49, v50, v53, v52, 2u);
        MEMORY[0x1D38B81C0](v52, -1, -1);
      }
    }

    else if (v51)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = "ReportSpamManager: report spam was rejected for some reason";
      goto LABEL_34;
    }

    return;
  }

  if (qword_1EC760990 != -1)
  {
    swift_once();
  }

  v17 = sub_1D33DE464();
  __swift_project_value_buffer(v17, qword_1EC762130);

  oslog = sub_1D33DE444();
  v18 = sub_1D33DEAF4();

  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v56[0] = v20;
    *v19 = 136315138;
    v21 = sub_1D33DEA64();
    v23 = v22;

    v24 = sub_1D3328B48(v21, v23, v56);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_1D331A000, oslog, v18, "Could not report facetime call spam due to zero registered facetime service IMAccount %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1D38B81C0](v20, -1, -1);
    MEMORY[0x1D38B81C0](v19, -1, -1);
  }

  else
  {
  }
}

id sub_1D33ACE9C()
{
  [*(v0 + OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_imDaemonController) blockUntilConnected];
  v1 = OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_imAccountController;
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_imAccountController);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = &selRef_setOriginatingUIType_;
  v6 = [v3 facetimeService];
  v7 = &selRef_setOriginatingUIType_;
  v8 = [v4 accountsForService_];

  if (!v8)
  {
    if (qword_1EC760990 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_17;
  }

  sub_1D331DA18(0, &qword_1EC761B80, 0x1E69A5A78);
  v9 = sub_1D33DE8B4();

  v39 = MEMORY[0x1E69E7CC0];
  if (v9 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D33DEE14())
  {
    v11 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v12 = 0;
      v5 = v9 & 0xC000000000000001;
      v7 = (v9 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v5)
        {
          v13 = MEMORY[0x1D38B75D0](v12, v9);
        }

        else
        {
          if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v13 = *(v9 + 8 * v12 + 32);
        }

        v3 = v13;
        v1 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if ([v13 registrationStatus] == 5)
        {
          sub_1D33DEF84();
          sub_1D33DEFB4();
          sub_1D33DEFC4();
          sub_1D33DEF94();
        }

        else
        {
        }

        ++v12;
        if (v1 == i)
        {
          v14 = v39;
          v11 = MEMORY[0x1E69E7CC0];
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v14 = MEMORY[0x1E69E7CC0];
LABEL_21:

    if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
    {
      v9 = sub_1D33DEE14();
      if (!v9)
      {
LABEL_44:

        v38 = sub_1D3367844(v11);

        return v38;
      }
    }

    else
    {
      v9 = *(v14 + 16);
      if (!v9)
      {
        goto LABEL_44;
      }
    }

    v39 = v11;
    v0 = &v39;
    sub_1D334A9E0(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
      break;
    }

    v24 = 0;
    v11 = v39;
    v7 = (v14 & 0xC000000000000001);
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v7)
      {
        v26 = MEMORY[0x1D38B75D0](v24, v14);
      }

      else
      {
        if (v24 >= *(v14 + 16))
        {
          goto LABEL_41;
        }

        v26 = *(v14 + 8 * v24 + 32);
      }

      v27 = v26;
      result = [v26 strippedLogin];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v29 = result;
      sub_1D33DE7B4();

      v30 = sub_1D33DE7F4();
      v1 = v31;

      v39 = v11;
      v5 = *(v11 + 16);
      v32 = *(v11 + 24);
      v3 = (v5 + 1);
      if (v5 >= v32 >> 1)
      {
        sub_1D334A9E0((v32 > 1), v5 + 1, 1);
        v11 = v39;
      }

      *(v11 + 16) = v3;
      v33 = v11 + 16 * v5;
      *(v33 + 32) = v30;
      *(v33 + 40) = v1;
      ++v24;
      if (v25 == v9)
      {
        goto LABEL_44;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_17:
  v15 = sub_1D33DE464();
  __swift_project_value_buffer(v15, qword_1EC762130);
  v16 = v0;
  v17 = sub_1D33DE444();
  v18 = sub_1D33DEAF4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v39 = v20;
    *v19 = 136315138;
    v21 = *(v0 + v1);
    v22 = [v3 *(v5 + 872)];
    v23 = [v21 v7[138]];

    if (v23)
    {
      sub_1D331DA18(0, &qword_1EC761B80, 0x1E69A5A78);
      sub_1D33DE8B4();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761E20, qword_1D33E4540);
    v34 = sub_1D33DECE4();
    v36 = v35;

    v37 = sub_1D3328B48(v34, v36, &v39);

    *(v19 + 4) = v37;
    _os_log_impl(&dword_1D331A000, v17, v18, "Could not find any facetime service IMAccount in IMAccountController %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1D38B81C0](v20, -1, -1);
    MEMORY[0x1D38B81C0](v19, -1, -1);
  }

  return MEMORY[0x1E69E7CD0];
}

id sub_1D33AD3C0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = *(v2 + OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_imNicknameProvider);
    v6 = sub_1D33DE784();
    v7 = [v4 nicknameForHandleID_];

    result = v7;
    if (v7)
    {
      return result;
    }

    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v9 = sub_1D33DE464();
    __swift_project_value_buffer(v9, qword_1EC762130);

    v10 = sub_1D33DE444();
    v11 = sub_1D33DEAD4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1D3328B48(a1, a2, &v18);
      _os_log_impl(&dword_1D331A000, v10, v11, "Could not find a pending or previously handled IMNickname for handle %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1D38B81C0](v13, -1, -1);
      MEMORY[0x1D38B81C0](v12, -1, -1);
    }
  }

  else
  {
    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v14 = sub_1D33DE464();
    __swift_project_value_buffer(v14, qword_1EC762130);
    v15 = sub_1D33DE444();
    v16 = sub_1D33DEAD4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D331A000, v15, v16, "Could not handle id is nil so unable to get imnicknames", v17, 2u);
      MEMORY[0x1D38B81C0](v17, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_1D33AD608(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_imNicknameProvider);
    v4 = sub_1D33DE784();
    v5 = [v3 unknownSenderRecordInfoFor_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B70, qword_1D33E4450);
    v6 = sub_1D33DE8B4();
  }

  else
  {
    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v7 = sub_1D33DE464();
    __swift_project_value_buffer(v7, qword_1EC762130);
    v8 = sub_1D33DE444();
    v9 = sub_1D33DEAF4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D331A000, v8, v9, "unknownSenderRecordInfo is nil", v10, 2u);
      MEMORY[0x1D38B81C0](v10, -1, -1);
    }

    return 0;
  }

  return v6;
}

void FaceTimeSpamReportManager.reportSpam(item:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RecentsItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1D33ACE9C();
  v8 = sub_1D335DDB8(v7);
  if (v9)
  {
    v10 = v8;
    v11 = v9;

    v12 = RecentsItem.handleValue.getter();
    v14 = sub_1D33AD3C0(v12, v13);

    v15 = RecentsItem.handleValue.getter();
    v17 = sub_1D33AD608(v15, v16);

    sub_1D332A828(a1, v6);
    v18 = v14;
    sub_1D33AE24C(v6, v14, v10, v11, v17, v48);
    v19 = sub_1D33ABCE4();
    sub_1D33AE21C(v48);
    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v20 = sub_1D33DE464();
    __swift_project_value_buffer(v20, qword_1EC762130);

    v21 = sub_1D33DE444();
    v22 = sub_1D33DEAF4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v47 = v24;
      *v23 = 136315138;
      if (v19)
      {
        v46[1] = v19;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B70, qword_1D33E4450);
        v25 = sub_1D33DE804();
        v27 = v26;
      }

      else
      {
        v27 = 0xE300000000000000;
        v25 = 7104878;
      }

      v37 = sub_1D3328B48(v25, v27, &v47);

      *(v23 + 4) = v37;
      _os_log_impl(&dword_1D331A000, v21, v22, "ReportSpamManager: report spam, model.dictionary: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1D38B81C0](v24, -1, -1);
      MEMORY[0x1D38B81C0](v23, -1, -1);
    }

    v38 = *(v2 + OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_idsService);
    if (v19)
    {
      v39 = sub_1D33DE6E4();
    }

    else
    {
      v39 = 0;
    }

    v40 = [v38 reportSpamMessage_];

    v41 = sub_1D33DE444();
    v42 = sub_1D33DEAF4();
    v43 = os_log_type_enabled(v41, v42);
    if (v40)
    {
      if (v43)
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        v45 = "ReportSpamManager: report spam was sent successfully";
LABEL_24:
        _os_log_impl(&dword_1D331A000, v41, v42, v45, v44, 2u);
        MEMORY[0x1D38B81C0](v44, -1, -1);
      }
    }

    else if (v43)
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = "ReportSpamManager: report spam was rejected for some reason";
      goto LABEL_24;
    }

    return;
  }

  if (qword_1EC760990 != -1)
  {
    swift_once();
  }

  v28 = sub_1D33DE464();
  __swift_project_value_buffer(v28, qword_1EC762130);

  v46[0] = sub_1D33DE444();
  v29 = sub_1D33DEAF4();

  if (os_log_type_enabled(v46[0], v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v48[0] = v31;
    *v30 = 136315138;
    v32 = sub_1D33DEA64();
    v34 = v33;

    v35 = sub_1D3328B48(v32, v34, v48);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_1D331A000, v46[0], v29, "Could not report facetime call spam due to zero registered facetime service IMAccount %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1D38B81C0](v31, -1, -1);
    MEMORY[0x1D38B81C0](v30, -1, -1);
  }

  else
  {

    v36 = v46[0];
  }
}

id FaceTimeSpamReportManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D33ADD9C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v66 = a4;
  v67 = a5;
  v65 = a3;
  v9 = sub_1D33DDD34();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v56 - v17;
  v64 = sub_1D33AB770();
  v19 = sub_1D335D988();
  v62 = v20;
  v63 = v19;
  [a1 duration];
  v22 = v21;
  v69 = 0;
  v23 = sub_1D33C8614([a1 callStatus]);
  v60 = v24;
  v61 = v23;
  v25 = [a1 initiator];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 value];

LABEL_4:
    v28 = sub_1D33DE7B4();
    v58 = v29;
    v59 = v28;

    goto LABEL_5;
  }

  v27 = [a1 callerId];
  if (v27)
  {
    goto LABEL_4;
  }

  v58 = 0;
  v59 = 0;
LABEL_5:
  v30 = [a1 uniqueId];
  v31 = sub_1D33DE7B4();
  v56 = v32;
  v57 = v31;

  v33 = [a1 date];
  if (v33)
  {
    v34 = v33;
    sub_1D33DDCF4();

    (*(v10 + 56))(v16, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v16, 1, 1, v9);
  }

  sub_1D339E918(v16, v18);
  v35 = (*(v10 + 48))(v18, 1, v9);
  if (v35)
  {
    sub_1D331E880(v18, &qword_1EC760E10, &unk_1D33E1A90);
    v36 = 0;
  }

  else
  {
    (*(v10 + 16))(v12, v18, v9);
    sub_1D331E880(v18, &qword_1EC760E10, &unk_1D33E1A90);
    sub_1D33DDCD4();
    v36 = v37;
    (*(v10 + 8))(v12, v9);
  }

  v68 = v35 != 0;
  if (a2)
  {
    v38 = [a2 firstName];
    v39 = sub_1D33DE7B4();
    v41 = v40;

    v42 = [a2 lastName];
    v43 = sub_1D33DE7B4();
    v45 = v44;

    v46 = [a2 recordID];
    v47 = sub_1D33DE7B4();
    v49 = v48;
  }

  else
  {

    v39 = 0;
    v41 = 0;
    v43 = 0;
    v45 = 0;
    v47 = 0;
    v49 = 0;
  }

  v50 = v69;
  v51 = v68;
  *a6 = v64;
  *(a6 + 8) = v63;
  *(a6 + 16) = v62;
  *(a6 + 24) = v22;
  *(a6 + 32) = v50;
  *(a6 + 33) = 0;
  v52 = v60;
  *(a6 + 40) = v61;
  *(a6 + 48) = v52;
  v53 = v66;
  *(a6 + 56) = v65;
  *(a6 + 64) = v53;
  v54 = v58;
  *(a6 + 72) = v59;
  *(a6 + 80) = v54;
  v55 = v56;
  *(a6 + 88) = v57;
  *(a6 + 96) = v55;
  *(a6 + 104) = v36;
  *(a6 + 112) = v51;
  *(a6 + 120) = 0xD000000000000010;
  *(a6 + 128) = 0x80000001D33E6240;
  *(a6 + 136) = v39;
  *(a6 + 144) = v41;
  *(a6 + 152) = v43;
  *(a6 + 160) = v45;
  *(a6 + 168) = v47;
  *(a6 + 176) = v49;
  *(a6 + 184) = v67;
}

uint64_t sub_1D33AE24C@<X0>(void **a1@<X0>, void *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char **a6@<X8>)
{
  v76 = a6;
  v77 = a5;
  v74 = a3;
  v75 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v68 - v9;
  v11 = sub_1D33DDDB4();
  v70 = *(v11 - 8);
  v71 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D33C8784();
  v14 = v13;
  if (v13 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D33DEE14())
  {
    v72 = v10;
    v73 = a2;
    v78 = a1;
    if (!i)
    {
      break;
    }

    v16 = 0;
    v79 = v14 & 0xC000000000000001;
    a2 = (v14 & 0xFFFFFFFFFFFFFF8);
    v17 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v79)
      {
        v18 = MEMORY[0x1D38B75D0](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v18 = *(v14 + 8 * v16 + 32);
      }

      a1 = v18;
      v10 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v19 = [v18 value];
      v20 = sub_1D33DE7B4();
      v22 = v21;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1D3359DD4(0, *(v17 + 2) + 1, 1, v17);
      }

      v24 = *(v17 + 2);
      v23 = *(v17 + 3);
      a1 = (v24 + 1);
      if (v24 >= v23 >> 1)
      {
        v17 = sub_1D3359DD4((v23 > 1), v24 + 1, 1, v17);
      }

      *(v17 + 2) = a1;
      v25 = &v17[16 * v24];
      *(v25 + 4) = v20;
      *(v25 + 5) = v22;
      ++v16;
      if (v10 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_17:

  v26 = 0;
  v81 = 1;
  v27 = v78;
  v29 = *v78;
  v28 = v78[1];
  v30 = *(v78 + 32);
  v31 = v72;
  if (v30 > 8)
  {
    goto LABEL_23;
  }

  if (((1 << v30) & 0x1B0) != 0)
  {
    v32 = 0;
    goto LABEL_28;
  }

  if (v30 == 3 || v30 == 6)
  {
    v29 = v78[1];
  }

  else
  {
LABEL_23:
    v32 = 0;
    if (v30 < 2)
    {
      goto LABEL_28;
    }
  }

  v33 = v29;
  v34 = sub_1D33DE124();

  if (v34)
  {
    v35 = [v34 value];

    v26 = sub_1D33DE7B4();
    v32 = v36;
  }

  else
  {
    v26 = 0;
    v32 = 0;
  }

  v30 = *(v27 + 32);
  v29 = *v27;
  v28 = v27[1];
LABEL_28:
  v37 = 0;
  if (v30 <= 8)
  {
    if (((1 << v30) & 0x1B0) != 0)
    {
      v38 = 0;
      goto LABEL_35;
    }

    if (v30 == 3 || v30 == 6)
    {
      goto LABEL_34;
    }
  }

  v28 = v29;
  v38 = 0;
  if (v30 >= 2)
  {
LABEL_34:
    v39 = v28;
    v40 = v69;
    sub_1D33DE184();

    v37 = sub_1D33DDD54();
    v38 = v41;
    (*(v70 + 8))(v40, v71);
  }

LABEL_35:
  v71 = v37;
  v79 = v32;
  RecentsItem.date.getter(v31);
  v42 = sub_1D33DDD34();
  v43 = *(v42 - 8);
  v44 = (*(v43 + 48))(v31, 1, v42);
  if (v44 == 1)
  {
    sub_1D331E880(v31, &qword_1EC760E10, &unk_1D33E1A90);
    v45 = 0;
  }

  else
  {
    sub_1D33DDCD4();
    v45 = v46;
    (*(v43 + 8))(v31, v42);
  }

  v72 = v38;
  v80 = v44 == 1;
  v47 = v73;
  if (v73)
  {
    v48 = [v73 firstName];
    v49 = sub_1D33DE7B4();
    v51 = v50;

    v52 = [v47 lastName];
    v53 = sub_1D33DE7B4();
    v55 = v54;

    v56 = v26;
    v57 = [v47 recordID];
    v58 = sub_1D33DE7B4();
    v60 = v59;

    v26 = v56;
  }

  else
  {
    v49 = 0;
    v51 = 0;
    v53 = 0;
    v55 = 0;
    v58 = 0;
    v60 = 0;
  }

  result = sub_1D332B2E8(v78);
  v62 = v81;
  v63 = v80;
  v64 = v76;
  *v76 = v17;
  v64[1] = 0xD000000000000013;
  v64[2] = 0x80000001D33E6260;
  v64[3] = 0;
  *(v64 + 32) = v62;
  *(v64 + 33) = 0;
  v64[5] = 0;
  v64[6] = 0;
  v65 = v75;
  v64[7] = v74;
  v64[8] = v65;
  v66 = v79;
  v64[9] = v26;
  v64[10] = v66;
  v67 = v72;
  v64[11] = v71;
  v64[12] = v67;
  v64[13] = v45;
  *(v64 + 112) = v63;
  v64[15] = 0xD000000000000010;
  v64[16] = 0x80000001D33E6240;
  v64[17] = v49;
  v64[18] = v51;
  v64[19] = v53;
  v64[20] = v55;
  v64[21] = v58;
  v64[22] = v60;
  v64[23] = v77;
  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1D33AE880(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_1D33AE8C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D33AE988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v45 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v42 = &v40 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  v14 = type metadata accessor for RecentsItem(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v40 - v20);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v43 = &v40 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v40 - v24;
  sub_1D3325720(a1, &v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761080, &qword_1D33E1B00);
  v26 = swift_dynamicCast();
  v27 = *(v15 + 56);
  if ((v26 & 1) == 0)
  {
    v27(v13, 1, 1, v14);
    v35 = v13;
LABEL_9:
    result = sub_1D331E880(v35, &unk_1EC760EE0, &qword_1D33E4CE0);
    v36 = v45;
    *(v45 + 32) = 0;
    *v36 = 0u;
    v36[1] = 0u;
    return result;
  }

  v27(v13, 0, 1, v14);
  sub_1D33302BC(v13, v25);
  sub_1D3325720(v44, &v46);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27(v11, 1, 1, v14);
    sub_1D33379F4(v25, type metadata accessor for RecentsItem);
    v35 = v11;
    goto LABEL_9;
  }

  v27(v11, 0, 1, v14);
  v28 = v11;
  v29 = v43;
  sub_1D33302BC(v28, v43);
  sub_1D332A828(v25, v21);
  sub_1D332A828(v29, v18);
  v30 = v42;
  RecentsItem.init(recentConversationItem:linkItem:)(v21, v18, v42);
  v31 = *(v15 + 48);
  if (v31(v30, 1, v14) != 1)
  {
    *(&v47 + 1) = v14;
    v48 = &off_1F4EE6FD8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v46);
    sub_1D33302BC(v30, boxed_opaque_existential_1);
    sub_1D33379F4(v29, type metadata accessor for RecentsItem);
    sub_1D33379F4(v25, type metadata accessor for RecentsItem);
    return sub_1D331E6AC(&v46, v45);
  }

  sub_1D331E880(v30, &unk_1EC760EE0, &qword_1D33E4CE0);
  v46 = 0u;
  v47 = 0u;
  v48 = 0;
  sub_1D332A828(v25, v21);
  sub_1D332A828(v29, v18);
  v32 = v41;
  RecentsItem.init(recentHistoryItem:linkItem:)(v21, v18, v41);
  if (v31(v32, 1, v14) == 1)
  {
    sub_1D33379F4(v29, type metadata accessor for RecentsItem);
    sub_1D33379F4(v25, type metadata accessor for RecentsItem);
    result = sub_1D331E880(v32, &unk_1EC760EE0, &qword_1D33E4CE0);
    v34 = v45;
    *v45 = 0u;
    *(v34 + 16) = 0u;
    *(v34 + 32) = 0;
    if (!*(&v47 + 1))
    {
      return result;
    }

    return sub_1D331E880(&v46, &qword_1EC761B88, &unk_1D33E4580);
  }

  v38 = v45;
  *(v45 + 24) = v14;
  v38[4] = &off_1F4EE6FD8;
  v39 = __swift_allocate_boxed_opaque_existential_1(v38);
  sub_1D33302BC(v32, v39);
  sub_1D33379F4(v29, type metadata accessor for RecentsItem);
  result = sub_1D33379F4(v25, type metadata accessor for RecentsItem);
  if (*(&v47 + 1))
  {
    return sub_1D331E880(&v46, &qword_1EC761B88, &unk_1D33E4580);
  }

  return result;
}

id static ContactToHandleHelper.contactFrom(_:)(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695CF18]);

  return [v2 _initWithHandle_];
}

unint64_t sub_1D33AEF28()
{
  result = qword_1EC761B90;
  if (!qword_1EC761B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC761B90);
  }

  return result;
}

id sub_1D33AEF74(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = [a1 type];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = [a1 value];
      if (!v4)
      {
        sub_1D33DE7B4();
        v4 = sub_1D33DE784();
      }

      v5 = [objc_allocWithZone(MEMORY[0x1E695CF50]) initWithStringValue_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1D33E1DE0;
      *(v6 + 32) = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:0 value:v5];
      v7 = &selRef_setPhoneNumbers_;
      goto LABEL_13;
    }

    if (v3 == 3)
    {
      v12 = [a1 value];
      if (v12)
      {
        v5 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1D33E1DE0;
        *(v13 + 32) = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:0 value:v5];
        v7 = &selRef_setEmailAddresses_;
        goto LABEL_13;
      }

      __break(1u);
    }
  }

  else
  {
    if (!v3)
    {

      return 0;
    }

    if (v3 == 1)
    {
      v8 = [a1 value];
      sub_1D33DE7B4();

      v9 = objc_allocWithZone(MEMORY[0x1E695CFA0]);
      v10 = sub_1D33DE784();

      v5 = [v9 initWithUrlString:0 username:v10 userIdentifier:0 service:0];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1D33E1DE0;
      *(v11 + 32) = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:0 value:v5];
      v7 = &selRef_setSocialProfiles_;
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7620A0, "8x");
      v14 = sub_1D33DE8A4();

      [v2 *v7];

      return v2;
    }
  }

  sub_1D33DEF24();
  MEMORY[0x1D38B6ED0](0xD000000000000015, 0x80000001D33E7530);
  [a1 type];
  type metadata accessor for CHHandleType(0);
  sub_1D33DF004();
  result = sub_1D33DF0D4();
  __break(1u);
  return result;
}

id sub_1D33AF32C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 handle];
  v6 = [a1 _initWithHandle_];

  return v6;
}

id sub_1D33AF398(NSObject *a1)
{
  v2 = v1;
  v4 = [v2 init];
  v5 = [a1 type];
  if (v5 == 1)
  {
    v13 = [a1 value];
    if (!v13)
    {
      sub_1D33DE7B4();
      v13 = sub_1D33DE784();
    }

    v7 = [objc_allocWithZone(MEMORY[0x1E695CFA0]) initWithUrlString:0 username:v13 userIdentifier:0 service:0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D33E1DE0;
    *(v14 + 32) = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:0 value:v7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7620A0, "8x");
    v9 = sub_1D33DE8A4();

    [v4 setSocialProfiles_];
    goto LABEL_12;
  }

  if (v5 == 2)
  {
    v10 = [a1 value];
    if (!v10)
    {
      sub_1D33DE7B4();
      v10 = sub_1D33DE784();
    }

    v11 = [a1 isoCountryCode];
    v7 = [objc_opt_self() phoneNumberWithDigits:v10 countryCode:v11];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D33E1DE0;
    *(v12 + 32) = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:0 value:v7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7620A0, "8x");
    v9 = sub_1D33DE8A4();

    [v4 setPhoneNumbers_];
    goto LABEL_12;
  }

  if (v5 != 3)
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v15 = sub_1D33DE464();
    __swift_project_value_buffer(v15, qword_1EDEC1480);
    v16 = a1;
    a1 = sub_1D33DE444();
    v17 = sub_1D33DEAE4();

    if (os_log_type_enabled(a1, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136446210;
      [v16 type];
      type metadata accessor for TUHandleType(0);
      v20 = sub_1D33DE804();
      v22 = sub_1D3328B48(v20, v21, &v23);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1D331A000, a1, v17, "Unknown default: handle type %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1D38B81C0](v19, -1, -1);
      MEMORY[0x1D38B81C0](v18, -1, -1);

      return v4;
    }

LABEL_13:
    return v4;
  }

  result = [a1 value];
  if (result)
  {
    v7 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D33E1DE0;
    *(v8 + 32) = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:0 value:v7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7620A0, "8x");
    v9 = sub_1D33DE8A4();

    [v4 setEmailAddresses_];
LABEL_12:

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t ReminderStatus.dueDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReminderStatus(0) + 20);

  return sub_1D33AF9B4(v3, a1);
}

uint64_t sub_1D33AF9B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ReminderStatus.isOverdue.setter(char a1)
{
  result = type metadata accessor for ReminderStatus(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t ReminderStatus.hash(into:)(uint64_t a1)
{
  v2 = sub_1D33DDD34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  MEMORY[0x1D38B7920](*v1);
  v9 = type metadata accessor for ReminderStatus(0);
  sub_1D33AF9B4(&v1[*(v9 + 20)], v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D33DF2A4();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1D33DF2A4();
    sub_1D33B04FC(&unk_1EDEBFD40, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D33DE734();
    (*(v3 + 8))(v5, v2);
  }

  return sub_1D33DF2A4();
}

uint64_t ReminderStatus.hashValue.getter()
{
  v1 = sub_1D33DDD34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1D33DF284();
  MEMORY[0x1D38B7920](*v0);
  v8 = type metadata accessor for ReminderStatus(0);
  sub_1D33AF9B4(&v0[*(v8 + 20)], v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D33DF2A4();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1D33DF2A4();
    sub_1D33B04FC(&unk_1EDEBFD40, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D33DE734();
    (*(v2 + 8))(v4, v1);
  }

  sub_1D33DF2A4();
  return sub_1D33DF2C4();
}

uint64_t sub_1D33AFED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D33DDD34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1D33DF284();
  MEMORY[0x1D38B7920](*v2);
  sub_1D33AF9B4(&v2[*(a2 + 20)], v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D33DF2A4();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1D33DF2A4();
    sub_1D33B04FC(&unk_1EDEBFD40, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D33DE734();
    (*(v5 + 8))(v7, v4);
  }

  sub_1D33DF2A4();
  return sub_1D33DF2C4();
}

uint64_t _s16CallsAppServices14ReminderStatusV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1D33DDD34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761BA0, &qword_1D33E4748);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v22 = type metadata accessor for ReminderStatus(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  sub_1D33AF9B4(&a1[v14], v13);
  sub_1D33AF9B4(&a2[v14], &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D331E880(v13, &qword_1EC760E10, &unk_1D33E1A90);
LABEL_11:
      v17 = a1[*(v22 + 24)] ^ a2[*(v22 + 24)] ^ 1;
      return v17 & 1;
    }

    goto LABEL_7;
  }

  sub_1D33AF9B4(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1D331E880(v13, &qword_1EC761BA0, &qword_1D33E4748);
    goto LABEL_8;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1D33B04FC(&qword_1EC761BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v19 = sub_1D33DE774();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  sub_1D331E880(v13, &qword_1EC760E10, &unk_1D33E1A90);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_1D33B04A8()
{
  result = qword_1EC761B98;
  if (!qword_1EC761B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761B98);
  }

  return result;
}

uint64_t sub_1D33B04FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D33B056C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();
}

uint64_t sub_1D33B0610@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  *a4 = *(v6 + *a3);
}

uint64_t sub_1D33B06C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
    sub_1D33DDEC4();
  }
}

uint64_t type metadata accessor for CallStatusTextObserver(uint64_t a1)
{
  result = qword_1EC761C98;
  if (!qword_1EC761C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*CallStatusTextObserver.primaryStatusText.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver___observationRegistrar;
  v4[2] = v1;
  v4[6] = sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  v4[7] = OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__primaryStatusSubject;

  sub_1D33DE4F4();

  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_1D33B0998;
}

uint64_t sub_1D33B09CC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  sub_1D33DE4F4();

  return v2;
}

uint64_t sub_1D33B0AD4@<X0>(uint64_t *a1@<X0>, void *a4@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  sub_1D33DE4F4();

  *a4 = v5;
  a4[1] = v7;
  return result;
}

uint64_t sub_1D33B0BA4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  sub_1D33DE4E4();
}

uint64_t sub_1D33B0C84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  sub_1D33DE4E4();
}

void (*CallStatusTextObserver.secondaryStatusText.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver___observationRegistrar;
  v4[2] = v1;
  v4[6] = sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  v4[7] = OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__secondaryStatusSubject;

  sub_1D33DE4F4();

  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_1D33B0E84;
}

void sub_1D33B0E90(uint64_t **a1, char a2, uint64_t a3)
{
  v4 = *a1;
  v6 = **a1;
  v5 = (*a1)[1];
  swift_getKeyPath();
  v4[2] = v4[4];
  if (a2)
  {

    sub_1D33DDED4();

    v4[2] = v6;
    v4[3] = v5;

    sub_1D33DE4E4();
  }

  else
  {
    sub_1D33DDED4();

    v4[2] = v6;
    v4[3] = v5;

    sub_1D33DE4E4();
  }

  free(v4);
}

uint64_t sub_1D33B0FB8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761BE0, &qword_1D33E4778);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  swift_getKeyPath();
  v11 = v2;
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  v11 = *(v2 + *a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761BE8, &qword_1D33E4780);
  sub_1D334CB54(&qword_1EC761BF0, &qword_1EC761BE8, &qword_1D33E4780, MEMORY[0x1E695BFB0]);
  sub_1D33DE624();
  sub_1D334CB54(&qword_1EC761BF8, &qword_1EC761BE0, &qword_1D33E4778, MEMORY[0x1E695BD38]);
  v8 = sub_1D33DE5A4();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t CallStatusTextObserver.call.getter()
{
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D33B126C@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_1D33B1320(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D33B1350(v1);
}

void sub_1D33B1350(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
    sub_1D33DDEC4();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_1D331DA18(0, &qword_1EC761FD0, 0x1E69D8A40);
  v3 = v2;
  v4 = sub_1D33DEC74();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D33B1500()
{
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  return *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__showDuration);
}

uint64_t sub_1D33B15A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  *a2 = *(v3 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__showDuration);
  return result;
}

uint64_t sub_1D33B1658(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__showDuration) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__showDuration) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
    sub_1D33DDEC4();
  }

  return result;
}

uint64_t sub_1D33B1798(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a2;
  if (*(v4 + *a2))
  {
    if (a1)
    {
      sub_1D33DE4A4();
      sub_1D33B47F0(&unk_1EC760FF0, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);

      v8 = sub_1D33DE774();

      if (v8)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
    sub_1D33DDEC4();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v5 + v7) = a1;
}

uint64_t CallStatusTextObserver.retrieveStatus.getter()
{
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  v1 = (v0 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__retrieveStatus);
  swift_beginAccess();
  v2 = *v1;
  sub_1D331FEDC(*v1, v1[1]);
  return v2;
}

uint64_t sub_1D33B1A14@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  v4 = (v3 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__retrieveStatus);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_1D33B49F8;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_1D331FEDC(v5, v6);
}

uint64_t sub_1D33B1B20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1D33B49F0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D331FEDC(v2, v3);
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDEC4();
  sub_1D331EEDC(v5, v4);
}

uint64_t sub_1D33B1C7C(void *a1, char a2, char a3, void (*a4)(uint64_t *__return_ptr, void **))
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v5 = a1;
  a4(&v7, &v8);

  return v7;
}

uint64_t CallStatusTextObserver.retrieveStatus.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDEC4();
  sub_1D331EEDC(a1, a2);
}

uint64_t sub_1D33B1DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__retrieveStatus);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a2;
  v5[1] = a3;
  sub_1D331FEDC(a2, a3);
  return sub_1D331EEDC(v6, v7);
}

uint64_t (*CallStatusTextObserver.retrieveStatus.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D33DDEF4();

  swift_beginAccess();
  return sub_1D33B1FAC;
}

void sub_1D33B1FAC(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1D33DDEE4();

  free(v1);
}

uint64_t sub_1D33B2030()
{
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  return *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__initialCallStatus);
}

uint64_t sub_1D33B20D8@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  *a2 = *(v3 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__initialCallStatus);
  return result;
}

uint64_t sub_1D33B2188(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__initialCallStatus) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
    sub_1D33DDEC4();
  }

  return result;
}

id CallStatusTextObserver.__allocating_init(call:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1D33B45A4(a1);

  return v4;
}

id CallStatusTextObserver.init(call:)(void *a1)
{
  v2 = sub_1D33B45A4(a1);

  return v2;
}

Swift::Void __swiftcall CallStatusTextObserver.updateCallDurationVisibility(showDuration:)(Swift::Bool showDuration)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EC760948 != -1)
    {
      swift_once();
    }

    v6 = sub_1D33DE464();
    __swift_project_value_buffer(v6, qword_1EC761BB0);
    v7 = sub_1D33DE444();
    v8 = sub_1D33DEAF4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D331A000, v7, v8, "Updating call duration visibility.", v9, 2u);
      MEMORY[0x1D38B81C0](v9, -1, -1);
    }

    if (*(v2 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__showDuration) == showDuration)
    {
      *(v2 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__showDuration) = showDuration;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D33DDEC4();
    }

    sub_1D33B2548([v5 status]);
  }
}

void sub_1D33B2548(int a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v17 = a1;
    swift_getKeyPath();
    v6 = v5;
    sub_1D33DDED4();

    v7 = OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__showDuration;
    v8 = *(v2 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__showDuration);
    swift_getKeyPath();
    sub_1D33DDED4();

    v16 = *(v2 + v7);
    swift_getKeyPath();
    sub_1D33DDED4();

    v9 = v2 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__retrieveStatus;
    swift_beginAccess();
    v10 = *v9;
    if (*v9)
    {
      v11 = *(v9 + 8);
      v12 = v6;
      sub_1D331FEDC(v10, v11);
      v10(v12, v8, 0);

      sub_1D331EEDC(v10, v11);
    }

    swift_getKeyPath();
    sub_1D33DDED4();

    sub_1D33DE4E4();

    swift_getKeyPath();
    sub_1D33DDED4();

    v13 = *v9;
    if (*v9)
    {
      v14 = *(v9 + 8);
      v15 = v6;
      sub_1D331FEDC(v13, v14);
      v13(v15, v16, 1);

      sub_1D331EEDC(v13, v14);
    }

    swift_getKeyPath();
    sub_1D33DDED4();

    sub_1D33DE4E4();

    if (v17 == 1)
    {
      sub_1D33B356C();
    }

    else
    {
      swift_getKeyPath();
      sub_1D33DDED4();

      if (*(v2 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__timer))
      {

        sub_1D33DE494();
      }

      sub_1D33B1798(0, &OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__timer, &unk_1D33E4998, sub_1D33B49D0);
    }
  }
}

Swift::Void __swiftcall CallStatusTextObserver.startObservingCallStatus()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761C20, &qword_1D33E4830);
  v14 = *(v3 - 8);
  v15 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - v4;
  if (qword_1EC760948 != -1)
  {
    swift_once();
  }

  v6 = sub_1D33DE464();
  __swift_project_value_buffer(v6, qword_1EC761BB0);
  v7 = sub_1D33DE444();
  v8 = sub_1D33DEAF4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D331A000, v7, v8, "Start observing call status.", v9, 2u);
    MEMORY[0x1D38B81C0](v9, -1, -1);
  }

  v17 = CallStatusTextObserver.callStatusPublisher.getter();
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v10 = sub_1D33DEB94();
  v16 = v10;
  v11 = sub_1D33DEB34();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761C28, &unk_1D33E4838);
  sub_1D334CB54(&qword_1EC761C30, &qword_1EC761C28, &unk_1D33E4838, MEMORY[0x1E695BED8]);
  sub_1D3357A1C(&qword_1EDEBEED8, &qword_1EDEBEEC8, 0x1E69E9610, MEMORY[0x1E69E8028]);
  sub_1D33DE604();
  sub_1D331E880(v2, &qword_1EC760F20, &qword_1D33E2290);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D334CB54(&qword_1EC761C38, &qword_1EC761C20, &qword_1D33E4830, MEMORY[0x1E695BE98]);
  v12 = v15;
  v13 = sub_1D33DE644();

  (*(v14 + 8))(v5, v12);
  sub_1D33B1798(v13, &OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__callStatusCancellable, &unk_1D33E4970, sub_1D33B4964);
}

uint64_t CallStatusTextObserver.callStatusPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v30 - v1;
  v3 = sub_1D33DEC24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B08, &qword_1D33E4400);
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761C40, &qword_1D33E4848);
  v12 = *(v11 - 8);
  v37 = v11;
  v38 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v30 - v13;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761C48, &qword_1D33E4850);
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v34 = &v30 - v14;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761C50, &qword_1D33E4858);
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v30 - v15;
  v16 = [objc_opt_self() defaultCenter];
  sub_1D33DEC34();

  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v17 = sub_1D33DEB94();
  v43 = v17;
  v18 = sub_1D33DEB34();
  (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
  sub_1D33B47F0(&qword_1EDEC0050, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1D3357A1C(&qword_1EDEBEED8, &qword_1EDEBEEC8, 0x1E69E9610, MEMORY[0x1E69E8028]);
  sub_1D33DE604();
  sub_1D331E880(v2, &qword_1EC760F20, &qword_1D33E2290);

  (*(v4 + 8))(v6, v3);
  swift_allocObject();
  v19 = v35;
  swift_unknownObjectWeakInit();
  type metadata accessor for TUCallStatus(0);
  sub_1D334CB54(&qword_1EC761B28, &qword_1EC761B08, &qword_1D33E4400, MEMORY[0x1E695BE98]);
  v21 = v31;
  v20 = v32;
  sub_1D33DE5B4();

  (*(v33 + 8))(v10, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761C58, &qword_1D33E4860);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D33E2410;
  swift_getKeyPath();
  v43 = v19;
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  *(v22 + 32) = *&v19[OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__initialCallStatus];
  sub_1D334CB54(&qword_1EC761C68, &qword_1EC761C40, &qword_1D33E4848, MEMORY[0x1E695BC80]);
  v23 = v34;
  v24 = v37;
  sub_1D33DE5F4();

  (*(v38 + 8))(v21, v24);
  sub_1D334CB54(&qword_1EC761C70, &qword_1EC761C48, &qword_1D33E4850, MEMORY[0x1E695BCA8]);
  sub_1D33B47F0(&qword_1EC761C78, type metadata accessor for TUCallStatus, &unk_1D33E12C0);
  v25 = v36;
  v26 = v40;
  sub_1D33DE624();
  (*(v42 + 8))(v23, v26);
  sub_1D334CB54(&qword_1EC761C80, &qword_1EC761C50, &qword_1D33E4858, MEMORY[0x1E695BD38]);
  v27 = v39;
  v28 = sub_1D33DE5A4();
  (*(v41 + 8))(v25, v27);
  return v28;
}

void sub_1D33B3474(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
    sub_1D33DDED4();

    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      sub_1D33B2548([v4 status]);

      v3 = v5;
    }
  }
}

uint64_t sub_1D33B356C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7617E0, &unk_1D33E3210);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761CA8, &qword_1D33E49C8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  swift_getKeyPath();
  v22 = v0;
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  if (!*(v0 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__timer))
  {
    sub_1D331DA18(0, &qword_1EC761CB0, 0x1E695DFF0);
    v12 = [objc_opt_self() mainRunLoop];
    v20 = v8;
    v13 = sub_1D33DEC94();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v14 = sub_1D33DEC54();

    sub_1D331E880(v6, &unk_1EC7617E0, &unk_1D33E3210);
    v22 = v14;
    sub_1D33DEC44();
    sub_1D33B47F0(&qword_1EC761CB8, MEMORY[0x1E6969F70], MEMORY[0x1E6969F60]);
    v15 = sub_1D33DE514();

    v22 = v15;
    sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
    v16 = sub_1D33DEB94();
    v21 = v16;
    v17 = sub_1D33DEB34();
    (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761CC0, &unk_1D33E49D0);
    sub_1D334CB54(&qword_1EC761CC8, &qword_1EC761CC0, &unk_1D33E49D0, MEMORY[0x1E695BCA0]);
    sub_1D3357A1C(&qword_1EDEBEED8, &qword_1EDEBEEC8, 0x1E69E9610, MEMORY[0x1E69E8028]);
    sub_1D33DE604();
    sub_1D331E880(v3, &qword_1EC760F20, &qword_1D33E2290);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D334CB54(&qword_1EC761CD0, &qword_1EC761CA8, &qword_1D33E49C8, MEMORY[0x1E695BE98]);
    v18 = sub_1D33DE644();

    (*(v20 + 8))(v10, v7);
    return sub_1D33B1798(v18, &OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__timer, &unk_1D33E4998, sub_1D33B49D0);
  }

  return result;
}

void sub_1D33B3A7C(uint64_t a2@<X8>)
{
  sub_1D33DDAD4();
  if (!v23)
  {
    sub_1D331E880(v22, &qword_1EC7616D0, &unk_1D33E2890);
    goto LABEL_18;
  }

  sub_1D331DA18(0, &qword_1EC761FD0, 0x1E69D8A40);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v19 = 0;
    v20 = 1;
    goto LABEL_19;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_10:

    goto LABEL_18;
  }

  v4 = Strong;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {

    goto LABEL_10;
  }

  v6 = v5;
  v7 = [v21 callUUID];
  v8 = sub_1D33DE7B4();
  v10 = v9;

  v11 = [v6 callUUID];
  v12 = sub_1D33DE7B4();
  v14 = v13;

  if (v8 == v12 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D33DF1B4();
  }

  v16 = [v21 remoteParticipantHandles];
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D3357A1C(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00, MEMORY[0x1E69E81B8]);
  v17 = sub_1D33DEA54();

  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = sub_1D33DEE14();
  }

  else
  {
    v18 = *(v17 + 16);
  }

  if ((v15 & (v18 == 1)) != 1)
  {

    goto LABEL_18;
  }

  v19 = [v21 status];

  v20 = 0;
LABEL_19:
  *a2 = v19;
  *(a2 + 4) = v20;
}

id CallStatusTextObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CallStatusTextObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*sub_1D33B3F70(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = CallStatusTextObserver.primaryStatusText.modify(v2);
  return sub_1D33B3FE4;
}

uint64_t sub_1D33B4020(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *v4;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  sub_1D33DE4F4();

  return v5;
}

uint64_t sub_1D33B40F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  sub_1D33DE4E4();
}

uint64_t (*sub_1D33B41CC(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = CallStatusTextObserver.secondaryStatusText.modify(v2);
  return sub_1D33B4AD4;
}

uint64_t sub_1D33B42AC()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDED4();

  v2 = (v1 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__retrieveStatus);
  swift_beginAccess();
  v3 = *v2;
  sub_1D331FEDC(*v2, v2[1]);
  return v3;
}

uint64_t sub_1D33B4380(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver, &protocol conformance descriptor for CallStatusTextObserver);
  sub_1D33DDEC4();
  sub_1D331EEDC(a1, a2);
}

uint64_t (*sub_1D33B4468(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = CallStatusTextObserver.retrieveStatus.modify(v2);
  return sub_1D33B4AD4;
}

void sub_1D33B44DC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1D33B4524()
{
  v0 = sub_1D33DE464();
  __swift_allocate_value_buffer(v0, qword_1EC761BB0);
  __swift_project_value_buffer(v0, qword_1EC761BB0);
  return sub_1D33DE454();
}

id sub_1D33B45A4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761BE8, &qword_1D33E4780);
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__primaryStatusSubject] = sub_1D33DE504();
  v15 = 0;
  v16 = 0xE000000000000000;
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__secondaryStatusSubject] = sub_1D33DE504();
  v5 = OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__call;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__showDuration] = 1;
  *&v1[OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__callStatusCancellable] = 0;
  *&v1[OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__timer] = 0;
  v6 = &v1[OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__retrieveStatus];
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_1D33DDF04();
  if (qword_1EC760948 != -1)
  {
    swift_once();
  }

  v7 = sub_1D33DE464();
  __swift_project_value_buffer(v7, qword_1EC761BB0);
  v8 = sub_1D33DE444();
  v9 = sub_1D33DEAF4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D331A000, v8, v9, "Initializing call status text observer.", v10, 2u);
    MEMORY[0x1D38B81C0](v10, -1, -1);
  }

  v11 = a1;
  MEMORY[0x1D38B82A0](&v2[v5]);
  swift_unknownObjectWeakInit();

  v12 = [v11 status];
  *&v2[OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__initialCallStatus] = v12;
  v14.receiver = v2;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_1D33B47F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D33B4848(uint64_t a1)
{
  result = sub_1D33DDF14();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D33B49F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8), *(a1 + 9));
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t static RecentsReminderCache.shared.getter()
{
  if (qword_1EDEBF9C0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D33B4B8C(uint64_t a1, uint64_t a2)
{
  v100 = sub_1D33DDD34();
  v4 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v80 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v75 - v7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761BA0, &qword_1D33E4748);
  MEMORY[0x1EEE9AC00](v86);
  v101 = &v75 - v9;
  v10 = type metadata accessor for ReminderStatus(0);
  v95 = *(v10 - 8);
  v96 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v98 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v75 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v75 - v16;
  v97 = sub_1D33DDDB4();
  v88 = *(v97 - 8);
  v17 = MEMORY[0x1EEE9AC00](v97);
  v87 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v83 = &v75 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761CF8, &qword_1D33E4A70);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v21);
  v26 = &v75 - v25;
  v90 = a1;
  v99 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(v90 + 16) != *(v99 + 16))
  {
    return 0;
  }

  v79 = v8;
  v27 = 0;
  v28 = *(v90 + 64);
  v76 = v90 + 64;
  v29 = 1 << *(v90 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v75 = (v29 + 63) >> 6;
  v93 = (v88 + 32);
  v81 = v88 + 16;
  v82 = (v88 + 8);
  v32 = (v4 + 48);
  v77 = (v4 + 32);
  v78 = (v4 + 8);
  v33 = &qword_1EC761D00;
  v94 = v15;
  v85 = v23;
  v91 = &v75 - v25;
  while (1)
  {
    if (!v31)
    {
      if (v75 <= v27 + 1)
      {
        v40 = v27 + 1;
      }

      else
      {
        v40 = v75;
      }

      v41 = v40 - 1;
      while (1)
      {
        v42 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v42 >= v75)
        {
          v73 = __swift_instantiateConcreteTypeFromMangledNameV2(v33, &qword_1D33E4A78);
          (*(*(v73 - 8) + 56))(v23, 1, 1, v73);
          v92 = 0;
          v27 = v41;
          goto LABEL_19;
        }

        v43 = *(v76 + 8 * v42);
        ++v27;
        if (v43)
        {
          v92 = (v43 - 1) & v43;
          v39 = __clz(__rbit64(v43)) | (v42 << 6);
          v27 = v42;
          goto LABEL_18;
        }
      }

      __break(1u);
      return result;
    }

    v92 = (v31 - 1) & v31;
    v39 = __clz(__rbit64(v31)) | (v27 << 6);
LABEL_18:
    v44 = v90;
    v45 = v88;
    (*(v88 + 16))(v83, *(v90 + 48) + *(v88 + 72) * v39, v97);
    v46 = v84;
    sub_1D332CE34(*(v44 + 56) + *(v95 + 72) * v39, v84, type metadata accessor for ReminderStatus);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(v33, &qword_1D33E4A78);
    v48 = *(v47 + 48);
    v23 = v85;
    (*(v45 + 32))();
    sub_1D33B6048(v46, &v23[v48]);
    (*(*(v47 - 8) + 56))(v23, 0, 1, v47);
    v26 = v91;
LABEL_19:
    sub_1D333842C(v23, v26, &qword_1EC761CF8, &qword_1D33E4A70);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(v33, &qword_1D33E4A78);
    v50 = (*(*(v49 - 8) + 48))(v26, 1, v49);
    v38 = v50 == 1;
    if (v50 == 1)
    {
      return v38;
    }

    v51 = v33;
    v52 = v32;
    v53 = *(v49 + 48);
    v54 = v87;
    v55 = v97;
    (*v93)(v87, v26, v97);
    v56 = v94;
    sub_1D33B6048(&v26[v53], v94);
    v57 = sub_1D33B926C(v54);
    v59 = v58;
    (*v82)(v54, v55);
    if ((v59 & 1) == 0)
    {
      v74 = v56;
      goto LABEL_35;
    }

    v60 = *(v99 + 56) + *(v95 + 72) * v57;
    v61 = v98;
    sub_1D332CE34(v60, v98, type metadata accessor for ReminderStatus);
    v62 = v61;
    if (*v61 != *v56)
    {
      break;
    }

    v89 = v38;
    v63 = *(v96 + 20);
    v64 = *(v86 + 48);
    v65 = v101;
    sub_1D331E818(&v62[v63], v101, &qword_1EC760E10, &unk_1D33E1A90);
    sub_1D331E818(&v56[v63], v65 + v64, &qword_1EC760E10, &unk_1D33E1A90);
    v32 = v52;
    v66 = *v52;
    if ((*v52)(v65, 1, v100) == 1)
    {
      if (v66(v101 + v64, 1, v100) != 1)
      {
        sub_1D3337A54(v98, type metadata accessor for ReminderStatus);
        sub_1D3337A54(v56, type metadata accessor for ReminderStatus);
LABEL_34:
        sub_1D331E880(v101, &qword_1EC761BA0, &qword_1D33E4748);
        return 0;
      }

      sub_1D331E880(v101, &qword_1EC760E10, &unk_1D33E1A90);
    }

    else
    {
      v67 = v101;
      v68 = v79;
      sub_1D331E818(v101, v79, &qword_1EC760E10, &unk_1D33E1A90);
      if (v66(v67 + v64, 1, v100) == 1)
      {
        sub_1D3337A54(v98, type metadata accessor for ReminderStatus);
        sub_1D3337A54(v94, type metadata accessor for ReminderStatus);
        (*v78)(v68, v100);
        goto LABEL_34;
      }

      v69 = v100;
      v70 = v80;
      (*v77)(v80, v101 + v64, v100);
      sub_1D33B850C(&qword_1EC761BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v71 = sub_1D33DE774();
      v72 = *v78;
      (*v78)(v70, v69);
      v72(v68, v69);
      v32 = v52;
      sub_1D331E880(v101, &qword_1EC760E10, &unk_1D33E1A90);
      v23 = v85;
      if ((v71 & 1) == 0)
      {
        sub_1D3337A54(v98, type metadata accessor for ReminderStatus);
        v74 = v94;
        goto LABEL_35;
      }
    }

    v34 = v96;
    v35 = v98[*(v96 + 24)];
    sub_1D3337A54(v98, type metadata accessor for ReminderStatus);
    v36 = v94[*(v34 + 24)];
    result = sub_1D3337A54(v94, type metadata accessor for ReminderStatus);
    v37 = v35 == v36;
    v26 = v91;
    v31 = v92;
    v33 = v51;
    v38 = v89;
    if (!v37)
    {
      return v38;
    }
  }

  sub_1D3337A54(v61, type metadata accessor for ReminderStatus);
  v74 = v56;
LABEL_35:
  sub_1D3337A54(v74, type metadata accessor for ReminderStatus);
  return 0;
}