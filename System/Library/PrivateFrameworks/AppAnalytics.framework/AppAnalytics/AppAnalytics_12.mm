id BridgedEventProperty.init(dataType:requirement:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___AAEventProperty_dataType] = a1;
  *&v2[OBJC_IVAR___AAEventProperty_requirement] = a2;
  v3 = [swift_getObjCClassFromMetadata() dataName];
  v4 = sub_1B6AB92E0();
  v6 = v5;

  v7 = &v2[OBJC_IVAR___AAEventProperty_dataKey];
  *v7 = v4;
  v7[1] = v6;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for BridgedEventProperty();
  return objc_msgSendSuper2(&v9, sel_init);
}

id BridgedEventProperty.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedEventProperty.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedEventProperty();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6A9F26C()
{
  v26 = type metadata accessor for SequenceEntry.Kind(0);
  MEMORY[0x1EEE9AC00](v26);
  v2 = (&v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for SequenceEntry(0);
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + *(type metadata accessor for Sequence(0) + 28));
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1B69E4D4C(0, v7, 0);
    v8 = v33;
    v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1B69BFCF0(v9, v5, type metadata accessor for SequenceEntry);
      v11 = *v5;
      v12 = v5[1];
      sub_1B69BFCF0(v5 + *(v25 + 20), v2, type metadata accessor for SequenceEntry.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          sub_1B699A784(v2, v27);
          goto LABEL_9;
        }

        v28 = type metadata accessor for EventData(0);
        v29 = sub_1B69BFD58(&qword_1EDBCAAC0, type metadata accessor for EventData, &protocol conformance descriptor for EventData);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
        v15 = type metadata accessor for EventData;
      }

      else
      {
        v28 = type metadata accessor for TimedData(0);
        v29 = sub_1B69BFD58(&qword_1EDBCB008, type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
        v15 = type metadata accessor for TimedData;
      }

      sub_1B69BFE08(v2, boxed_opaque_existential_1, v15);
LABEL_9:
      v16 = v28;
      v17 = __swift_project_boxed_opaque_existential_1(v27, v28);
      *(&v32 + 1) = v16;
      v18 = __swift_allocate_boxed_opaque_existential_1(&v31);
      (*(*(v16 - 8) + 16))(v18, v17, v16);

      sub_1B69C1618(v5, type metadata accessor for SequenceEntry);
      *&v30 = v11;
      *(&v30 + 1) = v12;
      __swift_destroy_boxed_opaque_existential_1(v27);
      v33 = v8;
      v20 = *(v8 + 16);
      v19 = *(v8 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B69E4D4C((v19 > 1), v20 + 1, 1);
        v8 = v33;
      }

      *(v8 + 16) = v20 + 1;
      v21 = (v8 + 48 * v20);
      v22 = v30;
      v23 = v32;
      v21[3] = v31;
      v21[4] = v23;
      v21[2] = v22;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

id sub_1B6A9F5F4(uint64_t a1)
{
  v72 = type metadata accessor for SequenceEntry.Kind(0);
  MEMORY[0x1EEE9AC00](v72);
  v83 = (&v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = type metadata accessor for SequenceEntry(0);
  v4 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v6 = (&v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = type metadata accessor for Sequence(0);
  v7 = *(v1 + *(v71 + 28));
  v78 = *(v7 + 16);
  if (v78)
  {
    v8 = 0;
    v77 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v79 = MEMORY[0x1E69E7CC8];
    v9 = v1[1];
    v69 = *v1;
    v70 = v1;
    v68 = v9;
    v73 = a1;
    v76 = *(a1 + 16);
    v67 = xmmword_1B6ABD530;
    v66 = xmmword_1B6ABF500;
    v81 = v6;
    v82 = v4;
    v75 = v7;
    while (v8 < *(v7 + 16))
    {
      sub_1B69BFCF0(v77 + *(v4 + 72) * v8, v6, type metadata accessor for SequenceEntry);
      v11 = v6[1];
      v85 = *v6;
      if (!v76)
      {
        goto LABEL_11;
      }

      v12 = *(v73 + 24);
      sub_1B6980A90(0, &qword_1EDBC7FF8, &type metadata for DenylistDescriptor, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = v67;
      if (qword_1EDBC8130 != -1)
      {
        swift_once();
      }

      v14 = unk_1EDBC8140;
      v15 = qword_1EDBC8148;
      v16 = unk_1EDBC8150;
      v17 = qword_1EDBC8158;
      v18 = unk_1EDBC8160;
      *(inited + 32) = qword_1EDBC8138;
      *(inited + 40) = v14;
      *(inited + 48) = v15;
      *(inited + 56) = v16;
      *(inited + 64) = v17;
      *(inited + 72) = v18;
      v19 = v68;
      v20 = v69;
      *(inited + 80) = v69;
      *(inited + 88) = v19;
      *(inited + 96) = 42;
      *(inited + 104) = 0xE100000000000000;
      *(inited + 112) = 42;
      *(inited + 120) = 0xE100000000000000;
      *(inited + 128) = v20;
      *(inited + 136) = v19;
      *(inited + 144) = v85;
      *(inited + 152) = v11;
      *(inited + 160) = 42;
      *(inited + 168) = 0xE100000000000000;
      swift_bridgeObjectRetain_n();

      v21 = sub_1B69C2608(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1B69C292C(v21, *(v12 + 16));
      v23 = v22;

      v6 = v81;
      v4 = v82;
      if (v23)
      {
LABEL_11:
        sub_1B69BFCF0(v6 + *(v80 + 20), v83, type metadata accessor for SequenceEntry.Kind);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          v25 = v84;
          if (EnumCaseMultiPayload == 1)
          {
            v91 = type metadata accessor for EventData(0);
            v92 = sub_1B69BFD58(&qword_1EDBCAAC0, type metadata accessor for EventData, &protocol conformance descriptor for EventData);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v90);
            sub_1B69BFE08(v83, boxed_opaque_existential_1, type metadata accessor for EventData);
          }

          else
          {
            sub_1B699A784(v83, &v90);
          }
        }

        else
        {
          v91 = type metadata accessor for TimedData(0);
          v92 = sub_1B69BFD58(&qword_1EDBCB008, type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
          v27 = __swift_allocate_boxed_opaque_existential_1(&v90);
          sub_1B69BFE08(v83, v27, type metadata accessor for TimedData);
          v25 = v84;
        }

        v28 = v91;
        v29 = v92;
        __swift_project_boxed_opaque_existential_1(&v90, v91);
        v30 = v70;
        v31 = v70 + *(v71 + 24);
        v32 = *v31;
        v33 = *(v31 + 1);
        v34 = v31[16];
        LOBYTE(v31) = v31[17];
        LOBYTE(v86) = v32;
        *(&v86 + 1) = v33;
        v87 = v34;
        v88 = v31;
        v35 = (*(v29 + 56))(&v86, v28, v29);
        if (v25)
        {
          v85 = v8;
          __swift_destroy_boxed_opaque_existential_1(&v90);
          if (qword_1EDBCCEE0 != -1)
          {
            swift_once();
          }

          v84 = qword_1EDBCCB28;
          v74 = sub_1B6AB98F0();
          sub_1B69990B4(0);
          v36 = swift_allocObject();
          *(v36 + 16) = v66;
          *&v90 = 0;
          *(&v90 + 1) = 0xE000000000000000;
          *&v86 = v25;
          sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
          sub_1B6AB9DF0();
          v37 = v90;
          v38 = MEMORY[0x1E69E6158];
          *(v36 + 56) = MEMORY[0x1E69E6158];
          v39 = sub_1B698CEC0();
          *(v36 + 64) = v39;
          *(v36 + 32) = v37;
          *&v90 = 0;
          *(&v90 + 1) = 0xE000000000000000;
          v40 = v81;
          sub_1B6AB9DF0();
          v41 = v90;
          *(v36 + 96) = v38;
          *(v36 + 104) = v39;
          v6 = v40;
          *(v36 + 72) = v41;
          sub_1B6AB8F70("Failed to convert event data into JSON dict, error=%@, eventData=%@", 67, 2, &dword_1B697C000, v84, v74, v36);

          v84 = 0;
          v4 = v82;
          v8 = v85;
        }

        else
        {
          v42 = v35;
          v43 = __swift_destroy_boxed_opaque_existential_1(&v90);
          MEMORY[0x1EEE9AC00](v43);
          *(&v66 - 4) = v73;
          *(&v66 - 3) = v6;
          *(&v66 - 2) = v30;
          v44 = sub_1B69C0EB0(v42, sub_1B6AA00E8, (&v66 - 3));

          sub_1B697EFC4();
          v91 = v45;
          *&v90 = v44;
          sub_1B69979CC(&v90, &v86);
          v46 = v79;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v93 = v46;
          v49 = sub_1B6993940(v85, v11);
          v50 = v46[2];
          v51 = (v48 & 1) == 0;
          v52 = v50 + v51;
          if (__OFADD__(v50, v51))
          {
            goto LABEL_32;
          }

          v53 = v48;
          v54 = v46[3];
          v84 = 0;
          if (v54 >= v52)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1B69DDC84();
            }
          }

          else
          {
            sub_1B69976F8(v52, isUniquelyReferenced_nonNull_native);
            v55 = sub_1B6993940(v85, v11);
            if ((v53 & 1) != (v56 & 1))
            {
              goto LABEL_34;
            }

            v49 = v55;
          }

          v79 = v93;
          if (v53)
          {
            v10 = (v93[7] + 32 * v49);
            __swift_destroy_boxed_opaque_existential_1(v10);
            sub_1B69979CC(&v86, v10);
          }

          else
          {
            v93[(v49 >> 6) + 8] |= 1 << v49;
            v57 = (v79[6] + 16 * v49);
            *v57 = v85;
            v57[1] = v11;
            sub_1B69979CC(&v86, (v79[7] + 32 * v49));
            v58 = v79[2];
            v59 = __OFADD__(v58, 1);
            v60 = v58 + 1;
            if (v59)
            {
              goto LABEL_33;
            }

            v79[2] = v60;
          }

          v6 = v81;
          v4 = v82;
        }
      }

      ++v8;
      sub_1B69C1618(v6, type metadata accessor for SequenceEntry);
      v7 = v75;
      if (v78 == v8)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    result = sub_1B6ABA190();
    __break(1u);
  }

  else
  {
    v79 = MEMORY[0x1E69E7CC8];
LABEL_30:
    sub_1B697EFC4();
    v91 = v61;
    *&v90 = v79;
    v62 = type metadata accessor for JSON();
    v63 = objc_allocWithZone(v62);
    sub_1B69C1678(&v90, v63 + OBJC_IVAR___AAJSON_value);
    v89.receiver = v63;
    v89.super_class = v62;
    v64 = objc_msgSendSuper2(&v89, sel_init);
    sub_1B6981634(&v90);
    return v64;
  }

  return result;
}

uint64_t sub_1B6A9FE70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for TimedData(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EventData(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SequenceEntry.Kind(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SequenceEntry(0);
  sub_1B69BFCF0(a1 + *(v17 + 20), v16, type metadata accessor for SequenceEntry.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1B69BFCF0(a1, a4, type metadata accessor for SequenceEntry);
      return sub_1B69C1618(v16, type metadata accessor for SequenceEntry.Kind);
    }

    v20 = *a1;
    v19 = a1[1];
    sub_1B69BFCF0(a2, v13, type metadata accessor for EventData);
    *a4 = v20;
    a4[1] = v19;
    sub_1B69BFE08(v13, a4 + *(v17 + 20), type metadata accessor for EventData);
  }

  else
  {
    v22 = *a1;
    v21 = a1[1];
    sub_1B69BFCF0(a3, v10, type metadata accessor for TimedData);
    *a4 = v22;
    a4[1] = v21;
    sub_1B69BFE08(v10, a4 + *(v17 + 20), type metadata accessor for TimedData);
  }

  swift_storeEnumTagMultiPayload();

  return sub_1B69C1618(v16, type metadata accessor for SequenceEntry.Kind);
}

unint64_t *sub_1B6AA0140(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1B69C1030(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1B6AA01D0(uint64_t a1)
{
  v2 = sub_1B6AB8EE0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1B6AA0760(0);
    v9 = sub_1B6AB9C60();
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
      sub_1B69BFD58(&qword_1EB95C718, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v16 = sub_1B6AB9250();
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
          sub_1B69BFD58(&qword_1EB95C720, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v23 = sub_1B6AB92A0();
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

uint64_t sub_1B6AA04E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B6AA06CC(0);
    v3 = sub_1B6AB9C60();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1B6AB92E0();
      sub_1B6ABA1F0();
      v27 = v7;
      sub_1B6AB9380();
      v8 = sub_1B6ABA230();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_1B6AB92E0();
        v18 = v17;
        if (v16 == sub_1B6AB92E0() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1B6ABA0F0();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1B6AA06CC(uint64_t a1)
{
  if (!qword_1EDBC8CC8)
  {
    type metadata accessor for URLResourceKey(255);
    sub_1B69BFD58(&qword_1EDBC8CD0, type metadata accessor for URLResourceKey, &unk_1B6ABD044);
    v1 = sub_1B6AB9C70();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBC8CC8);
    }
  }
}

void sub_1B6AA0760(uint64_t a1)
{
  if (!qword_1EB95C710)
  {
    sub_1B6AB8EE0();
    sub_1B69BFD58(&qword_1EB95C718, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
    v1 = sub_1B6AB9C70();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95C710);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1B6AA099C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v76 = a4;
  v77 = a5;
  v74 = a2;
  *&v75 = a3;
  v68 = type metadata accessor for Session(0);
  MEMORY[0x1EEE9AC00](v68);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v73);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B6AB90F0();
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(*(v6 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  v18 = sub_1B6AB9110();
  (*(v13 + 8))(v15, v12);
  if (v18)
  {
    v19 = *(a1 + 16);
    v18 = *(a1 + 17);
    v20 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks;
    swift_beginAccess();
    v21 = *(v6 + v20);
    if (*(v21 + 16) && (v22 = sub_1B6993940(v19, v18), (v23 & 1) != 0))
    {
      sub_1B6982544(*(v21 + 56) + 40 * v22, &v104);
    }

    else
    {
      *&v106 = 0;
      v104 = 0u;
      v105 = 0u;
    }

    swift_endAccess();
    v71 = v19;
    v72 = v11;
    if (*(&v105 + 1))
    {
      sub_1B6A3FE48();
      sub_1B6AA9A94(0);
      if (swift_dynamicCast())
      {
        v12 = v79;
        v69 = v80;
        v70 = *(&v79 + 1);
        goto LABEL_11;
      }
    }

    else
    {
      sub_1B699835C(&v104);
    }

    v12 = MEMORY[0x1E69E7CC0];
    v69 = v18;
    v70 = v19;
LABEL_11:
    v24 = a1[5];
    v25 = a1[3];
    v118 = a1[4];
    v119 = v24;
    v26 = a1[5];
    v120[0] = a1[6];
    *(v120 + 9) = *(a1 + 105);
    v27 = a1[1];
    v115[0] = *a1;
    v115[1] = v27;
    v28 = a1[3];
    v30 = *a1;
    v29 = a1[1];
    v116 = a1[2];
    v117 = v28;
    *(v103 + 9) = *(a1 + 105);
    v31 = a1[6];
    v102 = v26;
    v103[0] = v31;
    LOBYTE(v15) = *(a1 + 144);
    LOBYTE(v11) = *(a1 + 145);
    v100 = v25;
    v101 = v118;
    v97 = v30;
    v98 = v29;
    v99 = v116;
    v104 = v30;
    v105 = v29;
    v106 = v116;
    v107 = v25;
    v110 = v31;
    v111 = v103[1];
    v108 = v118;
    v109 = v26;
    *&v112 = v74;
    BYTE8(v112) = v15;
    BYTE9(v112) = v11;
    *&v113 = v75;
    *(&v113 + 1) = v76;
    v114 = v77;
    sub_1B6AA9804(v115, &v79, &qword_1EB95AF00, sub_1B69E8D48, &type metadata for AppAnalyticsUserData);

    sub_1B69805B0(&v104, &v79, sub_1B69E8C14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_21:
  v12 = sub_1B69E3A64(0, v12[2] + 1, 1, v12);
LABEL_12:
  v34 = v12[2];
  v33 = v12[3];
  if (v34 >= v33 >> 1)
  {
    v12 = sub_1B69E3A64((v33 > 1), v34 + 1, 1, v12);
  }

  v83 = v101;
  v84 = v102;
  v85 = v103[0];
  v86 = v103[1];
  v79 = v97;
  v80 = v98;
  v81 = v99;
  v82 = v100;
  v87 = v74;
  v88 = v15;
  v89 = v11;
  v91 = v96;
  v90 = v95;
  v92 = v75;
  v93 = v76;
  v94 = v77;
  sub_1B698C78C(&v79, sub_1B69E8C14);
  v12[2] = v34 + 1;
  v35 = &v12[21 * v34];
  v37 = v105;
  v36 = v106;
  *(v35 + 2) = v104;
  *(v35 + 3) = v37;
  *(v35 + 4) = v36;
  v38 = v110;
  v40 = v107;
  v39 = v108;
  *(v35 + 7) = v109;
  *(v35 + 8) = v38;
  *(v35 + 5) = v40;
  *(v35 + 6) = v39;
  v42 = v112;
  v41 = v113;
  v43 = v111;
  v35[24] = v114;
  *(v35 + 10) = v42;
  *(v35 + 11) = v41;
  *(v35 + 9) = v43;
  sub_1B6AA9A94(0);
  v78[3] = v44;
  v78[4] = &off_1F2E77398;
  v78[0] = v12;
  v78[1] = v70;
  v78[2] = v69;
  swift_beginAccess();

  sub_1B699A480(v78, v71, v18);
  swift_endAccess();
  v45 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  v46 = v6 + v45;
  v47 = v72;
  sub_1B69805B0(v46, v72, type metadata accessor for SessionManager.SessionState);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v50 = type metadata accessor for SessionManager.SessionState;
    v51 = v47;
  }

  else
  {
    v52 = *v47;
    v53 = *(v6 + 24);
    v54 = *(*v47 + 24);
    v76 = *(*v47 + 16);
    v77 = v53;
    v74 = v54;
    v55 = *&v52[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8];
    v56 = *(v52 + 4);
    v57 = *(v52 + 5);
    v58 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_startDate;
    v59 = v68;
    v60 = *(v68 + 28);
    *&v49 = *&v52[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier];
    v75 = v49;
    v61 = sub_1B6AB8DB0();
    v62 = v67;
    (*(*(v61 - 8) + 16))(&v67[v60], &v52[v58], v61);

    v63 = v74;

    sub_1B6992E2C(v56, v57);
    v64 = sub_1B699696C(v52);
    *&v65 = v75;
    *(&v65 + 1) = v55;
    *&v66 = v56;
    *(&v66 + 1) = v57;
    *v62 = v76;
    *(v62 + 8) = v63;
    *(v62 + 16) = v65;
    *(v62 + 32) = v66;
    *(v62 + *(v59 + 32)) = v64;
    sub_1B69A5404(v62);

    v50 = type metadata accessor for Session;
    v51 = v62;
  }

  return sub_1B698C78C(v51, v50);
}

uint64_t sub_1B6AA1014(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v65 = a4;
  v66 = a5;
  *&v64 = a3;
  v58 = type metadata accessor for Session(0);
  MEMORY[0x1EEE9AC00](v58);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B6AB90F0();
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(*(v6 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  v18 = sub_1B6AB9110();
  (*(v13 + 8))(v15, v12);
  if (v18)
  {
    v19 = *(a1 + 4);
    v18 = *(a1 + 5);
    v20 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks;
    swift_beginAccess();
    v21 = *(v6 + v20);
    if (*(v21 + 16) && (v22 = sub_1B6993940(v19, v18), (v23 & 1) != 0))
    {
      sub_1B6982544(*(v21 + 56) + 40 * v22, &v82);
    }

    else
    {
      *&v84 = 0;
      v82 = 0u;
      v83 = 0u;
    }

    swift_endAccess();
    v61 = v19;
    if (*(&v83 + 1))
    {
      sub_1B6A3FE48();
      sub_1B6AA997C(0);
      if (swift_dynamicCast())
      {
        v12 = v68;
        v59 = v69;
        v60 = *(&v68 + 1);
        goto LABEL_11;
      }
    }

    else
    {
      sub_1B699835C(&v82);
    }

    v12 = MEMORY[0x1E69E7CC0];
    v59 = v18;
    v60 = v19;
LABEL_11:
    LOBYTE(v15) = *(a1 + 48);
    LOBYTE(v16) = *(a1 + 49);
    v24 = a1[1];
    v87[0] = *a1;
    v87[1] = v24;
    v25 = a1[1];
    v80 = *a1;
    v81 = v25;
    v82 = v80;
    v83 = v25;
    *&v84 = a2;
    BYTE8(v84) = v15;
    BYTE9(v84) = v16;
    *&v85 = v64;
    *(&v85 + 1) = v65;
    v86 = v66;
    sub_1B6AA9804(v87, &v68, &qword_1EB95AED0, sub_1B69E8B54, &type metadata for EssentialUserData);

    sub_1B69805B0(&v82, &v68, sub_1B69E8A88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v10;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_21:
  v12 = sub_1B69E3BD0(0, v12[2] + 1, 1, v12);
LABEL_12:
  v28 = v12[2];
  v27 = v12[3];
  if (v28 >= v27 >> 1)
  {
    v12 = sub_1B69E3BD0((v27 > 1), v28 + 1, 1, v12);
  }

  v68 = v80;
  v69 = v81;
  v70 = a2;
  v71 = v15;
  v72 = v16;
  v73 = v78;
  v74 = v79;
  v75 = v64;
  v76 = v65;
  v77 = v66;
  sub_1B698C78C(&v68, sub_1B69E8A88);
  v12[2] = v28 + 1;
  v29 = &v12[9 * v28];
  *(v29 + 2) = v82;
  v31 = v84;
  v30 = v85;
  v32 = v83;
  v29[12] = v86;
  *(v29 + 4) = v31;
  *(v29 + 5) = v30;
  *(v29 + 3) = v32;
  sub_1B6AA997C(0);
  v67[3] = v33;
  v67[4] = &off_1F2E77398;
  v67[0] = v12;
  v67[1] = v60;
  v67[2] = v59;
  swift_beginAccess();

  sub_1B699A480(v67, v61, v18);
  swift_endAccess();
  v34 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  v35 = v6 + v34;
  v36 = v63;
  sub_1B69805B0(v35, v63, type metadata accessor for SessionManager.SessionState);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v39 = type metadata accessor for SessionManager.SessionState;
    v40 = v36;
  }

  else
  {
    v41 = *v36;
    v42 = *(v6 + 24);
    v43 = *(*v36 + 24);
    v65 = *(*v36 + 16);
    v66 = v42;
    v63 = v43;
    v44 = *&v41[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8];
    v45 = *(v41 + 4);
    v46 = *(v41 + 5);
    v47 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_startDate;
    v48 = v58;
    v49 = *(v58 + 28);
    *&v38 = *&v41[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier];
    v64 = v38;
    v50 = sub_1B6AB8DB0();
    v51 = v57;
    (*(*(v50 - 8) + 16))(&v57[v49], &v41[v47], v50);

    v52 = v63;

    sub_1B6992E2C(v45, v46);
    v53 = sub_1B699696C(v41);
    *&v54 = v64;
    *(&v54 + 1) = v44;
    *&v55 = v45;
    *(&v55 + 1) = v46;
    *v51 = v65;
    *(v51 + 8) = v52;
    *(v51 + 16) = v54;
    *(v51 + 32) = v55;
    *(v51 + *(v48 + 32)) = v53;
    sub_1B69A5404(v51);

    v39 = type metadata accessor for Session;
    v40 = v51;
  }

  return sub_1B698C78C(v40, v39);
}

uint64_t sub_1B6AA1608(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *&v63 = a4;
  *(&v63 + 1) = a5;
  *&v62 = a3;
  v56 = type metadata accessor for Session(0);
  MEMORY[0x1EEE9AC00](v56);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B6AB90F0();
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(*(v6 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  v18 = sub_1B6AB9110();
  (*(v13 + 8))(v15, v12);
  if (v18)
  {
    v19 = *(a1 + 3);
    v18 = *(a1 + 4);
    v20 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks;
    swift_beginAccess();
    v21 = *(v6 + v20);
    if (*(v21 + 16) && (v22 = sub_1B6993940(v19, v18), (v23 & 1) != 0))
    {
      sub_1B6982544(*(v21 + 56) + 40 * v22, &v78);
    }

    else
    {
      *&v80 = 0;
      v78 = 0u;
      v79 = 0u;
    }

    swift_endAccess();
    v59 = v19;
    if (*(&v79 + 1))
    {
      sub_1B6A3FE48();
      sub_1B6AA9874(0);
      if (swift_dynamicCast())
      {
        v12 = v65;
        v57 = v66;
        v58 = *(&v65 + 1);
        goto LABEL_11;
      }
    }

    else
    {
      sub_1B699835C(&v78);
    }

    v12 = MEMORY[0x1E69E7CC0];
    v57 = v18;
    v58 = v19;
LABEL_11:
    LOBYTE(v15) = *(a1 + 40);
    LOBYTE(v16) = *(a1 + 41);
    v82 = *a1;
    v83 = *(a1 + 2);
    v76 = *a1;
    v77 = *(a1 + 2);
    v78 = v76;
    *&v79 = v77;
    *(&v79 + 1) = a2;
    LOBYTE(v80) = v15;
    BYTE1(v80) = v16;
    *(&v80 + 1) = v62;
    v81 = v63;

    sub_1B6AA9804(&v82, &v65, &qword_1EDBC9970, sub_1B69E85A4, &type metadata for BridgedDataEvent);
    sub_1B69805B0(&v78, &v65, sub_1B69E84D8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v10;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_21:
  v12 = sub_1B69E4AE0(0, v12[2] + 1, 1, v12);
LABEL_12:
  v26 = v12[2];
  v25 = v12[3];
  if (v26 >= v25 >> 1)
  {
    v12 = sub_1B69E4AE0((v25 > 1), v26 + 1, 1, v12);
  }

  v65 = v76;
  v66 = v77;
  v67 = a2;
  v68 = v15;
  v69 = v16;
  v70 = v74;
  v71 = v75;
  v72 = v62;
  v73 = v63;
  sub_1B698C78C(&v65, sub_1B69E84D8);
  v12[2] = v26 + 1;
  v27 = &v12[8 * v26];
  v28 = v81;
  v29 = v78;
  v30 = v79;
  v27[4] = v80;
  v27[5] = v28;
  v27[2] = v29;
  v27[3] = v30;
  sub_1B6AA9874(0);
  v64[3] = v31;
  v64[4] = &off_1F2E77398;
  v64[0] = v12;
  v64[1] = v58;
  v64[2] = v57;
  swift_beginAccess();

  sub_1B699A480(v64, v59, v18);
  swift_endAccess();
  v32 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  v33 = v6 + v32;
  v34 = v61;
  sub_1B69805B0(v33, v61, type metadata accessor for SessionManager.SessionState);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v37 = type metadata accessor for SessionManager.SessionState;
    v38 = v34;
  }

  else
  {
    v39 = *v34;
    v40 = *(v6 + 24);
    v41 = *(*v34 + 24);
    *&v63 = *(*v34 + 16);
    *(&v63 + 1) = v40;
    v61 = v41;
    v42 = *&v39[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8];
    v43 = *(v39 + 4);
    v44 = *(v39 + 5);
    v45 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_startDate;
    v46 = v56;
    v47 = *(v56 + 28);
    *&v36 = *&v39[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier];
    v62 = v36;
    v48 = sub_1B6AB8DB0();
    v49 = v55;
    (*(*(v48 - 8) + 16))(&v55[v47], &v39[v45], v48);

    v50 = v61;

    sub_1B6992E2C(v43, v44);
    v51 = sub_1B699696C(v39);
    *&v52 = v62;
    *(&v52 + 1) = v42;
    *&v53 = v43;
    *(&v53 + 1) = v44;
    *v49 = v63;
    *(v49 + 8) = v50;
    *(v49 + 16) = v52;
    *(v49 + 32) = v53;
    *(v49 + *(v46 + 32)) = v51;
    sub_1B69A5404(v49);

    v37 = type metadata accessor for Session;
    v38 = v49;
  }

  return sub_1B698C78C(v38, v37);
}

id BridgedSessionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedSessionManager.init()()
{
  v1 = type metadata accessor for SummaryEventConfiguration(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DiagnosticsConsentProvider(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBCB568 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDBCB570;
  type metadata accessor for SessionGroupManager();
  v8 = swift_allocObject();
  v9 = v7;
  v10 = MEMORY[0x1E69E7CC0];
  *(v8 + 24) = sub_1B6987D80(MEMORY[0x1E69E7CC0]);
  *(v8 + 32) = sub_1B6987D80(v10);
  *(v8 + 16) = v9;
  if (qword_1EDBC8A18 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDBC8A20;
  v12 = type metadata accessor for BridgedPrivacyValidationProvider();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation] = v11;
  v34.receiver = v13;
  v34.super_class = v12;
  v14 = v11;
  v15 = objc_msgSendSuper2(&v34, sel_init);
  v16 = dispatch_group_create();
  type metadata accessor for FlushProcessor();
  v17 = swift_allocObject();
  swift_weakInit();
  v17[4] = 13;
  v17[5] = 0x404E000000000000;
  v17[6] = 0;
  v17[3] = dispatch_group_create();
  sub_1B6AB8E30();
  v18 = &v6[*(v4 + 20)];
  *v18 = sub_1B69A3378;
  *(v18 + 1) = 0;
  if (qword_1EDBCAC70 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v1, qword_1EDBCA728);
  sub_1B69805B0(v19, v3, type metadata accessor for SummaryEventConfiguration);
  v20 = sub_1B6AA70FC(v16, v8, 0, v17, 0, 0, 1, v15, v6, v3);

  *&v0[OBJC_IVAR___AASessionManager_sessionManager] = v20;

  v22 = sub_1B6A3FD68(v21);
  *&v0[OBJC_IVAR___AASessionManager_tracker] = v22;
  v23 = v20[3];
  v24 = type metadata accessor for BridgedProcessorManager();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR___AAProcessorManager_processorManager] = v23;
  v33.receiver = v25;
  v33.super_class = v24;
  v26 = v22;

  v27 = objc_msgSendSuper2(&v33, sel_init);
  *&v0[OBJC_IVAR___AASessionManager_processorManager] = v27;
  v28 = type metadata accessor for BridgedSessionManager();
  v32.receiver = v0;
  v32.super_class = v28;
  v29 = v27;
  v30 = objc_msgSendSuper2(&v32, sel_init);

  return v30;
}

id BridgedSessionManager.init(privacyValidationProvider:)(void *a1)
{
  v3 = type metadata accessor for SummaryEventConfiguration(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DiagnosticsConsentProvider(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBCB568 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDBCB570;
  type metadata accessor for SessionGroupManager();
  v10 = swift_allocObject();
  v11 = v9;
  v12 = MEMORY[0x1E69E7CC0];
  *(v10 + 24) = sub_1B6987D80(MEMORY[0x1E69E7CC0]);
  *(v10 + 32) = sub_1B6987D80(v12);
  *(v10 + 16) = v11;
  v13 = dispatch_group_create();
  type metadata accessor for FlushProcessor();
  v14 = swift_allocObject();
  swift_weakInit();
  v14[4] = 13;
  v14[5] = 0x404E000000000000;
  v14[6] = 0;
  v14[3] = dispatch_group_create();
  sub_1B6AB8E30();
  v15 = &v8[*(v6 + 20)];
  *v15 = sub_1B69A3378;
  *(v15 + 1) = 0;
  if (qword_1EDBCAC70 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v3, qword_1EDBCA728);
  sub_1B69805B0(v16, v5, type metadata accessor for SummaryEventConfiguration);
  v17 = a1;
  v18 = sub_1B6AA70FC(v13, v10, 0, v14, 0, 0, 1, v17, v8, v5);

  *&v1[OBJC_IVAR___AASessionManager_sessionManager] = v18;

  v20 = sub_1B6A3FD68(v19);
  *&v1[OBJC_IVAR___AASessionManager_tracker] = v20;
  v21 = v18[3];
  v22 = type metadata accessor for BridgedProcessorManager();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR___AAProcessorManager_processorManager] = v21;
  v31.receiver = v23;
  v31.super_class = v22;
  v24 = v20;

  v25 = objc_msgSendSuper2(&v31, sel_init);
  *&v1[OBJC_IVAR___AASessionManager_processorManager] = v25;
  v26 = type metadata accessor for BridgedSessionManager();
  v30.receiver = v1;
  v30.super_class = v26;
  v27 = v25;
  v28 = objc_msgSendSuper2(&v30, sel_init);

  return v28;
}

id BridgedSessionManager.init(accessQueue:)(void *a1)
{
  v2 = type metadata accessor for SummaryEventDatabaseManager.StorageOptions(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v117 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v121 = &v115 - v5;
  v119 = type metadata accessor for SummaryEventConfiguration(0);
  v6 = MEMORY[0x1EEE9AC00](v119);
  v116 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v126 = &v115 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v128 = &v115 - v10;
  v11 = type metadata accessor for DiagnosticsConsentProvider(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v124 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v125 = &v115 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v129 = &v115 - v16;
  v17 = sub_1B6AB9090();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v115 - v22;
  v24 = type metadata accessor for AccessQueue();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR___AAAccessQueue_queue] = a1;
  v122 = a1;
  sub_1B6AB9050();
  v26 = OBJC_IVAR___AAAccessQueue__qos;
  swift_beginAccess();
  (*(v18 + 16))(v21, v23, v17);
  sub_1B698E4D0(0, qword_1EDBCB0E0, MEMORY[0x1E69E7FB0], type metadata accessor for Atomic);
  v27 = swift_allocObject();
  v120 = type metadata accessor for UnfairLock();
  v28 = swift_allocObject();
  v29 = swift_slowAlloc();
  *(v28 + 16) = v29;
  *v29 = 0;
  *(v28 + 24) = 0x10000;
  (*(v18 + 8))(v23, v17);
  *(v27 + 2) = v28;
  (*(v18 + 32))(&v27[*(*v27 + 96)], v21, v17);
  *&v25[v26] = v27;
  swift_endAccess();
  v138.receiver = v25;
  v138.super_class = v24;
  v30 = objc_msgSendSuper2(&v138, sel_init);
  type metadata accessor for SessionGroupManager();
  v31 = swift_allocObject();
  v32 = v30;
  v33 = MEMORY[0x1E69E7CC0];
  v31[3] = sub_1B6987D80(MEMORY[0x1E69E7CC0]);
  v31[4] = sub_1B6987D80(v33);
  v127 = v31;
  v31[2] = v32;
  if (qword_1EDBC8A18 != -1)
  {
    swift_once();
  }

  v34 = qword_1EDBC8A20;
  v35 = type metadata accessor for BridgedPrivacyValidationProvider();
  v36 = objc_allocWithZone(v35);
  *&v36[OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation] = v34;
  v137.receiver = v36;
  v137.super_class = v35;
  v37 = v34;
  v118 = objc_msgSendSuper2(&v137, sel_init);
  v38 = dispatch_group_create();
  type metadata accessor for FlushProcessor();
  v39 = swift_allocObject();
  swift_weakInit();
  v39[4] = 13;
  v39[5] = 0x404E000000000000;
  v39[6] = 0;
  v39[3] = dispatch_group_create();
  v40 = v129;
  sub_1B6AB8E30();
  v41 = (v40 + *(v11 + 20));
  *v41 = sub_1B69A3378;
  v41[1] = 0;
  if (qword_1EDBCAC70 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v119, qword_1EDBCA728);
  v43 = v128;
  sub_1B69805B0(v42, v128, type metadata accessor for SummaryEventConfiguration);
  type metadata accessor for SessionManager(0);
  v44 = swift_allocObject();
  v135 = &type metadata for TimestampJitter;
  v136 = &protocol witness table for TimestampJitter;
  v133[0] = 0;
  v133[1] = 0;
  v134 = 1;
  v44[5] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for SessionManager.SessionState(0);
  swift_storeEnumTagMultiPayload();
  *(v44 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks) = MEMORY[0x1E69E7CC8];
  *(v44 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_observers) = v33;
  v45 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
  v46 = v32;
  *(v44 + v45) = sub_1B6987EC8(v33);
  v47 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pinnedVersionTokenByKey;
  *(v44 + v47) = sub_1B69F76A4(v33);
  v48 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pendingSessionDataByKey;
  *(v44 + v48) = sub_1B69F77E8(v33);
  *(v44 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind) = xmmword_1B6ABF700;
  v44[6] = v46;
  v44[7] = v38;
  v44[8] = v127;
  type metadata accessor for ProcessorManager();
  v49 = swift_allocObject();
  v49[3] = 0;
  swift_unknownObjectWeakInit();
  v49[5] = v38;
  v49[6] = v33;
  v49[4] = v46;
  v44[3] = v49;
  v50 = v125;
  sub_1B69805B0(v129, v125, type metadata accessor for DiagnosticsConsentProvider);
  v51 = v126;
  sub_1B69805B0(v43, v126, type metadata accessor for SummaryEventConfiguration);
  v52 = qword_1EDBCB498;
  v53 = v46;
  v54 = v38;
  v55 = v53;
  v56 = v54;
  v57 = v55;
  v58 = v56;

  v119 = v118;
  if (v52 != -1)
  {
    swift_once();
  }

  v59 = qword_1EDBCB4A0;
  type metadata accessor for EventMirrorStore();
  v60 = swift_allocObject();
  *(v60 + 16) = MEMORY[0x1E69E7CC8];
  sub_1B69805B0(v50, v124, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6987BC4(0);
  v62 = v61;
  v63 = *(v61 + 48);
  v64 = sub_1B6AB8BB0();
  v65 = v121;
  (*(*(v64 - 8) + 56))(v121, 1, 1, v64);
  *(v65 + v63) = 0;
  (*(*(v62 - 8) + 56))(v65, 0, 1, v62);
  if (*(v51 + 8))
  {
    v66 = type metadata accessor for DisabledSummaryEventManager();
    v67 = swift_allocObject();
    v68 = &off_1F2E7D3E0;
  }

  else
  {
    v69 = v51;
    v70 = v116;
    sub_1B69805B0(v69, v116, type metadata accessor for SummaryEventConfiguration);
    v71 = v117;
    sub_1B69805B0(v65, v117, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
    v66 = type metadata accessor for SummaryEventManager(0);
    v72 = swift_allocObject();
    v67 = sub_1B698A71C(v70, v71, v72);
    v68 = &off_1F2E7C028;
  }

  v132[3] = v66;
  v132[4] = v68;
  v132[0] = v67;
  sub_1B698C78C(v65, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
  type metadata accessor for Tracker(0);
  v73 = swift_allocObject();
  *(v73 + 80) = 0;
  *(v73 + 56) = 0;
  *(v73 + 64) = 0;
  swift_unknownObjectWeakInit();
  v74 = MEMORY[0x1E69E7CC8];
  *(v73 + 112) = MEMORY[0x1E69E7CC8];
  *(v73 + 120) = v74;
  *(v73 + 128) = v74;
  *(v73 + 136) = v74;
  *(v73 + 144) = v74;
  *(v73 + 160) = v74;
  v75 = MEMORY[0x1E69E7CC0];
  *(v73 + 168) = MEMORY[0x1E69E7CC0];
  *(v73 + 176) = v75;
  *(v73 + 192) = v75;
  *(v73 + 200) = 0;
  v76 = OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock;
  v77 = swift_allocObject();
  v78 = swift_slowAlloc();
  *(v77 + 16) = v78;
  *v78 = 0;
  *(v77 + 24) = 0x10000;
  *(v73 + v76) = v77;
  *(v73 + 16) = xmmword_1B6ABF710;
  *(v73 + 201) = 0;
  *(v73 + 96) = v58;
  *(v73 + 104) = v60;
  *(v73 + 152) = 0;
  *(v73 + 80) = 0;
  *(v73 + 88) = v57;
  swift_unknownObjectWeakAssign();
  *(v73 + 184) = v75;
  *(v73 + 40) = 0;
  *(v73 + 48) = 0;
  *(v73 + 56) = 0;
  *(v73 + 64) = 0;
  v79 = v57;
  v80 = v58;

  v81 = v119;
  *(v73 + 208) = v119;
  *(v73 + 216) = &protocol witness table for BridgedPrivacyValidationProvider;
  v82 = v124;
  sub_1B69805B0(v124, v73 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v132, v73 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager);
  *(v73 + 32) = v59;
  v83 = v81;
  v119 = v59;
  sub_1B6989974();
  Strong = swift_unknownObjectWeakLoadStrong();
  v121 = v79;
  v120 = v80;
  if (Strong)
  {
    swift_unknownObjectRelease();
    v85 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v85);

    sub_1B698C78C(v82, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B698C78C(v126, type metadata accessor for SummaryEventConfiguration);
    sub_1B698C78C(v125, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v132);
  }

  else
  {

    sub_1B698C78C(v82, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B698C78C(v126, type metadata accessor for SummaryEventConfiguration);
    sub_1B698C78C(v125, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v132);
  }

  v86 = v129;
  v44[2] = v73;
  *(v44 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_options) = 0;
  *(v44 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_flushProcessor) = v39;
  sub_1B6982544(v133, v44 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider);
  *(v44 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timeDurationGranularity) = 0;
  v87 = OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation;
  swift_beginAccess();
  v88 = *&v83[v87];
  if (v88[OBJC_IVAR___AAPrivacyValidation_enabled] == 1)
  {
    v89 = *&v88[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors];

    v90 = v88;
    sub_1B6A930EC(v89);
    v92 = sub_1B6A94B10(v91);

    type metadata accessor for PrivacyValidator();
    v93 = swift_allocObject();
    *(v93 + 16) = 1;
  }

  else
  {
    type metadata accessor for PrivacyValidator();
    v93 = swift_allocObject();
    *(v93 + 16) = 0;

    v92 = MEMORY[0x1E69E7CD0];
  }

  v94 = v121;
  v95 = v120;
  type metadata accessor for DenylistDescriptorMatcher();
  v96 = swift_allocObject();
  *(v96 + 16) = v92;
  *(v93 + 24) = v96;
  *(v44 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_privacyValidator) = v93;
  v97 = v119;
  *(v44 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_trackingConsent) = v119;
  *(v44 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_userDataManager) = 0;
  swift_beginAccess();
  swift_weakAssign();
  *(v44[2] + 80) = &off_1F2E76000;
  swift_unknownObjectWeakAssign();
  v98 = v97;

  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v99 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE1C, v99);
  }

  *(v44[3] + 24) = &off_1F2E76070;
  swift_unknownObjectWeakAssign();
  v100 = v44[3];
  v101 = *(v100 + 32);
  v102 = swift_allocObject();
  v102[2] = v100;
  v102[3] = v39;
  v102[4] = &protocol witness table for FlushProcessor;
  swift_retain_n();

  sub_1B69877A4(v101, sub_1B698E578, v102);

  sub_1B698C78C(v128, type metadata accessor for SummaryEventConfiguration);
  sub_1B698C78C(v86, type metadata accessor for DiagnosticsConsentProvider);
  __swift_destroy_boxed_opaque_existential_1(v133);
  v103 = v123;
  *&v123[OBJC_IVAR___AASessionManager_sessionManager] = v44;

  v105 = sub_1B6A3FD68(v104);
  *&v103[OBJC_IVAR___AASessionManager_tracker] = v105;
  v106 = v44[3];
  v107 = type metadata accessor for BridgedProcessorManager();
  v108 = objc_allocWithZone(v107);
  *&v108[OBJC_IVAR___AAProcessorManager_processorManager] = v106;
  v131.receiver = v108;
  v131.super_class = v107;
  v109 = v105;

  v110 = objc_msgSendSuper2(&v131, sel_init);
  *&v103[OBJC_IVAR___AASessionManager_processorManager] = v110;
  v111 = type metadata accessor for BridgedSessionManager();
  v130.receiver = v103;
  v130.super_class = v111;
  v112 = v110;
  v113 = objc_msgSendSuper2(&v130, sel_init);

  return v113;
}

id BridgedSessionManager.init(accessQueue:privacyValidationProvider:)(void *a1, void *a2)
{
  v119 = a2;
  v3 = type metadata accessor for SummaryEventDatabaseManager.StorageOptions(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v113 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v118 = &v112 - v6;
  v115 = type metadata accessor for SummaryEventConfiguration(0);
  v7 = MEMORY[0x1EEE9AC00](v115);
  v112 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v126 = &v112 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v124 = &v112 - v11;
  v12 = type metadata accessor for DiagnosticsConsentProvider(0);
  v13 = v12 - 8;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v122 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v125 = &v112 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v123 = &v112 - v18;
  v19 = sub_1B6AB9090();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v112 - v24;
  v26 = type metadata accessor for AccessQueue();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR___AAAccessQueue_queue] = a1;
  v120 = a1;
  sub_1B6AB9050();
  v28 = OBJC_IVAR___AAAccessQueue__qos;
  swift_beginAccess();
  (*(v20 + 16))(v23, v25, v19);
  sub_1B698E4D0(0, qword_1EDBCB0E0, MEMORY[0x1E69E7FB0], type metadata accessor for Atomic);
  v29 = swift_allocObject();
  v117 = type metadata accessor for UnfairLock();
  v30 = swift_allocObject();
  v31 = swift_slowAlloc();
  *(v30 + 16) = v31;
  *v31 = 0;
  *(v30 + 24) = 0x10000;
  (*(v20 + 8))(v25, v19);
  *(v29 + 2) = v30;
  (*(v20 + 32))(&v29[*(*v29 + 96)], v23, v19);
  *&v27[v28] = v29;
  v32 = v123;
  swift_endAccess();
  v134.receiver = v27;
  v134.super_class = v26;
  v33 = objc_msgSendSuper2(&v134, sel_init);
  type metadata accessor for SessionGroupManager();
  v34 = swift_allocObject();
  v35 = v33;
  v36 = MEMORY[0x1E69E7CC0];
  v34[3] = sub_1B6987D80(MEMORY[0x1E69E7CC0]);
  v34[4] = sub_1B6987D80(v36);
  v34[2] = v35;
  v37 = dispatch_group_create();
  type metadata accessor for FlushProcessor();
  v38 = swift_allocObject();
  swift_weakInit();
  v38[4] = 13;
  v38[5] = 0x404E000000000000;
  v38[6] = 0;
  v39 = dispatch_group_create();
  v116 = v38;
  v38[3] = v39;
  sub_1B6AB8E30();
  v40 = (v32 + *(v13 + 28));
  *v40 = sub_1B69A3378;
  v40[1] = 0;
  if (qword_1EDBCAC70 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v115, qword_1EDBCA728);
  v42 = v124;
  sub_1B69805B0(v41, v124, type metadata accessor for SummaryEventConfiguration);
  type metadata accessor for SessionManager(0);
  v43 = swift_allocObject();
  v132 = &type metadata for TimestampJitter;
  v133 = &protocol witness table for TimestampJitter;
  v130[0] = 0;
  v130[1] = 0;
  v131 = 1;
  v43[5] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for SessionManager.SessionState(0);
  swift_storeEnumTagMultiPayload();
  *(v43 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks) = MEMORY[0x1E69E7CC8];
  *(v43 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_observers) = v36;
  v44 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
  v45 = v35;
  v46 = v119;
  *(v43 + v44) = sub_1B6987EC8(v36);
  v47 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pinnedVersionTokenByKey;
  *(v43 + v47) = sub_1B69F76A4(v36);
  v48 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pendingSessionDataByKey;
  *(v43 + v48) = sub_1B69F77E8(v36);
  *(v43 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind) = xmmword_1B6ABF700;
  v43[6] = v45;
  v43[7] = v37;
  v43[8] = v34;
  type metadata accessor for ProcessorManager();
  v49 = swift_allocObject();
  v49[3] = 0;
  swift_unknownObjectWeakInit();
  v49[5] = v37;
  v49[6] = v36;
  v49[4] = v45;
  v43[3] = v49;
  sub_1B69805B0(v32, v125, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B69805B0(v42, v126, type metadata accessor for SummaryEventConfiguration);
  v50 = qword_1EDBCB498;
  v51 = v45;
  v52 = v37;
  v53 = v51;
  v54 = v52;
  v55 = v53;
  v115 = v46;
  v56 = v54;
  v119 = v34;

  if (v50 != -1)
  {
    swift_once();
  }

  v114 = qword_1EDBCB4A0;
  type metadata accessor for EventMirrorStore();
  v57 = swift_allocObject();
  v58 = MEMORY[0x1E69E7CC8];
  *(v57 + 16) = MEMORY[0x1E69E7CC8];
  sub_1B69805B0(v125, v122, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6987BC4(0);
  v60 = v59;
  v61 = *(v59 + 48);
  v62 = sub_1B6AB8BB0();
  v63 = v118;
  (*(*(v62 - 8) + 56))(v118, 1, 1, v62);
  *&v63[v61] = 0;
  (*(*(v60 - 8) + 56))(v63, 0, 1, v60);
  if (*(v126 + 8))
  {
    v64 = type metadata accessor for DisabledSummaryEventManager();
    v65 = swift_allocObject();
    v66 = &off_1F2E7D3E0;
  }

  else
  {
    v67 = v112;
    sub_1B69805B0(v126, v112, type metadata accessor for SummaryEventConfiguration);
    v68 = v113;
    sub_1B69805B0(v63, v113, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
    v64 = type metadata accessor for SummaryEventManager(0);
    v69 = swift_allocObject();
    v65 = sub_1B698A71C(v67, v68, v69);
    v66 = &off_1F2E7C028;
    v36 = MEMORY[0x1E69E7CC0];
  }

  v70 = v116;
  v129[3] = v64;
  v129[4] = v66;
  v129[0] = v65;
  sub_1B698C78C(v63, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
  type metadata accessor for Tracker(0);
  v71 = swift_allocObject();
  *(v71 + 80) = 0;
  *(v71 + 56) = 0;
  *(v71 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v71 + 112) = v58;
  *(v71 + 120) = v58;
  *(v71 + 128) = v58;
  *(v71 + 136) = v58;
  *(v71 + 144) = v58;
  *(v71 + 160) = v58;
  *(v71 + 168) = v36;
  *(v71 + 176) = v36;
  *(v71 + 192) = v36;
  *(v71 + 200) = 0;
  v72 = OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock;
  v73 = swift_allocObject();
  v74 = swift_slowAlloc();
  *(v73 + 16) = v74;
  *v74 = 0;
  *(v73 + 24) = 0x10000;
  *(v71 + v72) = v73;
  *(v71 + 16) = xmmword_1B6ABF710;
  *(v71 + 201) = 0;
  *(v71 + 96) = v56;
  *(v71 + 104) = v57;
  *(v71 + 152) = 0;
  *(v71 + 80) = 0;
  *(v71 + 88) = v55;
  swift_unknownObjectWeakAssign();
  *(v71 + 184) = v36;
  *(v71 + 40) = 0;
  *(v71 + 48) = 0;
  *(v71 + 56) = 0;
  *(v71 + 64) = 0;
  v75 = v55;
  v76 = v56;

  v77 = v115;
  *(v71 + 208) = v115;
  *(v71 + 216) = &protocol witness table for BridgedPrivacyValidationProvider;
  v78 = v122;
  sub_1B69805B0(v122, v71 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v129, v71 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager);
  v79 = v114;
  *(v71 + 32) = v114;
  v80 = v77;
  v116 = v79;
  sub_1B6989974();
  Strong = swift_unknownObjectWeakLoadStrong();
  v118 = v76;
  v117 = v75;
  if (Strong)
  {
    swift_unknownObjectRelease();
    v82 = v76;
    v83 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v83);

    sub_1B698C78C(v78, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B698C78C(v126, type metadata accessor for SummaryEventConfiguration);
    sub_1B698C78C(v125, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v129);
  }

  else
  {

    sub_1B698C78C(v78, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B698C78C(v126, type metadata accessor for SummaryEventConfiguration);
    sub_1B698C78C(v125, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v129);
  }

  v43[2] = v71;
  *(v43 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_options) = 0;
  *(v43 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_flushProcessor) = v70;
  sub_1B6982544(v130, v43 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider);
  *(v43 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timeDurationGranularity) = 0;
  v84 = OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation;
  swift_beginAccess();
  v85 = *&v80[v84];
  v86 = v124;
  if (v85[OBJC_IVAR___AAPrivacyValidation_enabled] == 1)
  {
    v87 = *&v85[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors];

    v88 = v85;
    sub_1B6A930EC(v87);
    v91 = sub_1B6A94B10(v89);

    type metadata accessor for PrivacyValidator();
    v90 = swift_allocObject();
    *(v90 + 16) = 1;
  }

  else
  {
    type metadata accessor for PrivacyValidator();
    v90 = swift_allocObject();
    *(v90 + 16) = 0;

    v91 = MEMORY[0x1E69E7CD0];
  }

  v92 = v117;
  type metadata accessor for DenylistDescriptorMatcher();
  v93 = swift_allocObject();
  *(v93 + 16) = v91;
  *(v90 + 24) = v93;
  *(v43 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_privacyValidator) = v90;
  v94 = v116;
  *(v43 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_trackingConsent) = v116;
  *(v43 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_userDataManager) = 0;
  swift_beginAccess();
  swift_weakAssign();
  *(v43[2] + 80) = &off_1F2E76000;
  swift_unknownObjectWeakAssign();
  v95 = v94;

  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v96 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v96);
  }

  *(v43[3] + 24) = &off_1F2E76070;
  swift_unknownObjectWeakAssign();
  v97 = v43[3];
  v98 = *(v97 + 32);
  v99 = swift_allocObject();
  v99[2] = v97;
  v99[3] = v70;
  v99[4] = &protocol witness table for FlushProcessor;
  swift_retain_n();

  sub_1B69877A4(v98, sub_1B69916A8, v99);

  sub_1B698C78C(v86, type metadata accessor for SummaryEventConfiguration);
  sub_1B698C78C(v123, type metadata accessor for DiagnosticsConsentProvider);
  __swift_destroy_boxed_opaque_existential_1(v130);
  v100 = v121;
  *&v121[OBJC_IVAR___AASessionManager_sessionManager] = v43;

  v102 = sub_1B6A3FD68(v101);
  *&v100[OBJC_IVAR___AASessionManager_tracker] = v102;
  v103 = v43[3];
  v104 = type metadata accessor for BridgedProcessorManager();
  v105 = objc_allocWithZone(v104);
  *&v105[OBJC_IVAR___AAProcessorManager_processorManager] = v103;
  v128.receiver = v105;
  v128.super_class = v104;
  v106 = v102;

  v107 = objc_msgSendSuper2(&v128, sel_init);
  *&v100[OBJC_IVAR___AASessionManager_processorManager] = v107;
  v108 = type metadata accessor for BridgedSessionManager();
  v127.receiver = v100;
  v127.super_class = v108;
  v109 = v107;
  v110 = objc_msgSendSuper2(&v127, sel_init);

  return v110;
}

id BridgedSessionManager.__allocating_init(accessQueue:privacyValidationProvider:diagnosticsConsentProvider:)(void *a1, void *a2, char *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1B6AA8300(a1, a2, a3);

  return v8;
}

id BridgedSessionManager.init(accessQueue:privacyValidationProvider:diagnosticsConsentProvider:)(void *a1, void *a2, char *a3)
{
  v4 = sub_1B6AA8300(a1, a2, a3);

  return v4;
}

id BridgedSessionManager.__allocating_init(privacyValidationProvider:diagnosticsConsentProvider:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1B6AA92C0(a1, a2);

  return v6;
}

id BridgedSessionManager.init(privacyValidationProvider:diagnosticsConsentProvider:)(void *a1, void *a2)
{
  v3 = sub_1B6AA92C0(a1, a2);

  return v3;
}

id BridgedSessionManager.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BridgedSessionManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void BridgedSessionManager.push(_:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(type metadata accessor for BridgedDataEventTraits()) init];
  [v1 pushSessionData:a1 traits:v3];
}

uint64_t BridgedSessionManager.push(_:traits:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + OBJC_IVAR___AASessionData_key + 8);
  v20 = *(a1 + OBJC_IVAR___AASessionData_key);
  v4 = *(a1 + OBJC_IVAR___AASessionData_data);
  ObjectType = swift_getObjectType();

  swift_unknownObjectRetain();
  v19 = sub_1B6A46A3C(ObjectType);
  v7 = v6;
  sub_1B6A46A3C(ObjectType);
  v9 = v8;

  sub_1B6A46A3C(ObjectType);
  v11 = v10;

  v12 = v9 & 1;
  v13 = (v11 >> 8) & 1;
  v14 = *(v2 + OBJC_IVAR___AASessionManager_sessionManager);
  v15 = sub_1B69D821C();
  v16 = *(v14 + 48);
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v20;
  *(v17 + 32) = v3;
  *(v17 + 40) = v4;
  *(v17 + 48) = v19;
  *(v17 + 56) = v7;
  *(v17 + 64) = v12;
  *(v17 + 65) = v13;
  *(v17 + 72) = v15;
  *(v17 + 80) = 0xD00000000000006ALL;
  *(v17 + 88) = 0x80000001B6ACEF80;
  *(v17 + 96) = 194;

  swift_unknownObjectRetain();

  sub_1B69877A4(v16, sub_1B6AA95F8, v17);

  swift_unknownObjectRelease();
}

void BridgedSessionManager.push(_:submitEventQueues:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(type metadata accessor for BridgedDataEventTraits()) init];
  [v1 pushSessionData:a1 traits:v3];
}

uint64_t BridgedSessionManager.transaction(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___AASessionManager_sessionManager);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(v5 + 48);
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = sub_1B6AA9648;
  v8[4] = v6;

  sub_1B69877A4(v7, sub_1B6998560, v8);
}

void sub_1B6AA4BFC(uint64_t a1, void (*a2)(id, uint64_t))
{
  v4 = type metadata accessor for BridgedAccessSessionManager();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___AAAccessSessionManager_accessSessionManager] = a1;
  v8.receiver = v5;
  v8.super_class = v4;

  v6 = objc_msgSendSuper2(&v8, sel_init);
  a2(v6, v7);
}

void BridgedSessionManager.start(for:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B6AB8DB0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B6AB8E40();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v13 = sub_1B6AB92B0();
  }

  else
  {
    v13 = 0;
  }

  sub_1B6AB8E30();
  sub_1B6AB8DD0();
  (*(v10 + 8))(v12, v9);
  v14 = sub_1B6AB92B0();

  sub_1B6AB8DA0();
  v15 = sub_1B6AB8D20();
  (*(v6 + 8))(v8, v5);
  [v16[1] startSessionForKind:a1 withName:v13 identifier:v14 startDate:v15];
}

void BridgedSessionManager.start(for:name:identifier:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_1B6AB8DB0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    a3 = sub_1B6AB92B0();
  }

  v13 = sub_1B6AB92B0();
  sub_1B6AB8DA0();
  v14 = sub_1B6AB8D20();
  (*(v10 + 8))(v12, v9);
  [v6 startSessionForKind:a1 withName:a3 identifier:v13 startDate:v14];
}

void BridgedSessionManager.start(for:name:startDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1B6AB8E40();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v11 = sub_1B6AB92B0();
  }

  else
  {
    v11 = 0;
  }

  sub_1B6AB8E30();
  sub_1B6AB8DD0();
  (*(v8 + 8))(v10, v7);
  v12 = sub_1B6AB92B0();

  v13 = sub_1B6AB8D20();
  [v4 startSessionForKind:a1 withName:v11 identifier:v12 startDate:v13];
}

void BridgedSessionManager.start(for:name:identifier:startDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = sub_1B6AB92B0();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1B6AB92B0();
  v9 = sub_1B6AB8D20();
  if (qword_1EDBC8A30 != -1)
  {
    swift_once();
  }

  [v5 startSessionForKind:a1 withName:v7 identifier:v8 startDate:? timestampJitter:?];
}

void BridgedSessionManager.start(for:name:identifier:startDate:timestampJitter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v10 = sub_1B6AB92B0();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1B6AB92B0();
  v12 = sub_1B6AB8D20();
  [v7 startSessionForKind:a1 withName:v10 identifier:v11 startDate:v12 timestampJitter:a7 timeDurationGranularity:0];
}

uint64_t BridgedSessionManager.start(for:name:identifier:startDate:timestampJitter:timeDurationGranularity:)(int64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v29 = a6;
  v30 = a4;
  v31 = a8;
  v13 = sub_1B6AB8DB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a7;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      if (a3)
      {
        a1 = a3;
      }

      else
      {
        a2 = 0;
        a1 = 0xE000000000000000;
      }

      goto LABEL_12;
    }
  }

  else
  {
    if (!a1)
    {
      a2 = 0;
LABEL_12:
      v17 = *(v28 + OBJC_IVAR___AASessionManager_sessionManager);
      v18 = *(v17 + 56);
      v27 = *(v17 + 48);
      v28 = v18;
      (*(v14 + 16))(&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v13);
      v19 = (*(v14 + 80) + 73) & ~*(v14 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      *(v20 + 24) = a2;
      v22 = v30;
      v21 = v31;
      *(v20 + 32) = a1;
      *(v20 + 40) = v22;
      v23 = v32;
      *(v20 + 48) = a5;
      *(v20 + 56) = v23;
      *(v20 + 64) = v21;
      *(v20 + 72) = 0;
      (*(v14 + 32))(v20 + v19, v16, v13);

      sub_1B6992E2C(a2, a1);

      v24 = v23;
      sub_1B69877A4(v27, sub_1B69944F4, v20);
      sub_1B69C2E8C(a2, a1);
    }

    if (a1 == 1)
    {
LABEL_11:
      a2 = 0;
      goto LABEL_12;
    }
  }

  v33 = a1;
  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

Swift::Void __swiftcall BridgedSessionManager.end()()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = *(v0 + OBJC_IVAR___AASessionManager_sessionManager);
  sub_1B6AB8DA0();
  sub_1B6A2ACC8();
  v9 = *(v8 + 48);
  (*(v2 + 16))(v5, v7, v1);
  v10 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  (*(v2 + 32))(v12 + v10, v5, v1);
  v13 = (v12 + v11);
  *v13 = 0;
  v13[1] = 0;

  sub_1B69877A4(v9, sub_1B6AA9650, v12);

  (*(v2 + 8))(v7, v1);
}

uint64_t BridgedSessionManager.end(completion:)(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v10 = *(v2 + OBJC_IVAR___AASessionManager_sessionManager);
  sub_1B6AB8DA0();
  sub_1B6A2ACC8();
  v11 = *(v10 + 48);
  (*(v4 + 16))(v7, v9, v3);
  v12 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  (*(v4 + 32))(v14 + v12, v7, v3);
  v15 = (v14 + v13);
  v16 = v19;
  *v15 = v18;
  v15[1] = v16;

  sub_1B69877A4(v11, sub_1B6AA9B4C, v14);

  return (*(v4 + 8))(v9, v3);
}

uint64_t BridgedSessionManager.end(endDate:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = *(v3 + OBJC_IVAR___AASessionManager_sessionManager);
  sub_1B6A2ACC8();
  v10 = *(v9 + 48);
  (*(v7 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  (*(v7 + 32))(v12 + v11, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v13 = (v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v16;
  v13[1] = a3;

  sub_1B69877A4(v10, sub_1B6AA9B4C, v12);
}

uint64_t BridgedSessionManager.flush(callbackQueue:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(v3 + OBJC_IVAR___AASessionManager_sessionManager) + 48);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;

  v10 = a1;
  sub_1B69A18C0(a2);
  sub_1B69877A4(v7, sub_1B69A4190, v9);
}

uint64_t BridgedAccessSessionManager.isActive.getter()
{
  v1 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B6AB90F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(v0 + OBJC_IVAR___AAAccessSessionManager_accessSessionManager) + 16);
  v9 = *(*(v8 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v7 = v9;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = sub_1B6AB9110();
  result = (*(v5 + 8))(v7, v4);
  if (v9)
  {
    v12 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
    swift_beginAccess();
    sub_1B69805B0(v8 + v12, v3, type metadata accessor for SessionManager.SessionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B698C78C(v3, type metadata accessor for SessionManager.SessionState);
      }

      return 0;
    }

    else
    {

      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void BridgedAccessSessionManager.push(_:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for BridgedDataEventTraits()) init];
  BridgedAccessSessionManager.push(_:traits:)(a1);
}

uint64_t BridgedAccessSessionManager.push(_:traits:)(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___AASessionData_key);
  v1 = *(a1 + OBJC_IVAR___AASessionData_key + 8);
  v3 = *(a1 + OBJC_IVAR___AASessionData_data);
  ObjectType = swift_getObjectType();

  swift_unknownObjectRetain();
  v5 = sub_1B6A46A3C(ObjectType);
  v7 = v6;
  sub_1B6A46A3C(ObjectType);
  v9 = v8;

  sub_1B6A46A3C(ObjectType);
  BYTE1(ObjectType) = v10;

  *&v13 = v2;
  *(&v13 + 1) = v1;
  v14 = v3;
  v15 = v5;
  v16 = v7;
  v17 = v9 & 1;
  v18 = BYTE1(ObjectType) & 1;
  v11 = sub_1B69D821C();
  sub_1B6AA1608(&v13, v11, 0xD00000000000006ALL, 0x80000001B6ACEF80, 407);

  return sub_1B698C78C(&v13, sub_1B6AA9654);
}

void BridgedAccessSessionManager.push(_:submitEventQueues:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for BridgedDataEventTraits()) init];
  BridgedAccessSessionManager.push(_:traits:)(a1);
}

id BridgedAccessSessionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B6AA700C(uint64_t a1)
{
  *&v1[OBJC_IVAR___AASessionManager_sessionManager] = a1;

  v4 = sub_1B6A3FD68(v3);
  *&v1[OBJC_IVAR___AASessionManager_tracker] = v4;
  v5 = *(a1 + 24);
  v6 = type metadata accessor for BridgedProcessorManager();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___AAProcessorManager_processorManager] = v5;
  v14.receiver = v7;
  v14.super_class = v6;
  v8 = v4;

  v9 = objc_msgSendSuper2(&v14, sel_init);
  *&v1[OBJC_IVAR___AASessionManager_processorManager] = v9;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for BridgedSessionManager();
  v10 = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

void *sub_1B6AA70FC(unint64_t a1, char *a2, void (**a3)(char *, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, uint64_t a9, uint64_t a10)
{
  v130 = a8;
  v127 = a4;
  v126 = a3;
  v17 = sub_1B6AB9030();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v133 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1B6AB9090();
  v120 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SummaryEventDatabaseManager.StorageOptions(0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v119 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v117 - v23);
  v25 = type metadata accessor for SummaryEventConfiguration(0);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v118 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  *&v137 = &v117 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v117 - v30;
  v32 = type metadata accessor for DiagnosticsConsentProvider(0);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v129 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v135 = &v117 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = (&v117 - v37);
  v146 = &type metadata for TimestampJitter;
  v147 = &protocol witness table for TimestampJitter;
  v144[0] = a5;
  v144[1] = a6;
  v145 = a7 & 1;
  if (qword_1EDBCB568 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v124 = v24;
    v39 = qword_1EDBCB570;
    sub_1B6982544(v144, &v143);
    v122 = a9;
    sub_1B69805B0(a9, v38, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B69805B0(a10, v31, type metadata accessor for SummaryEventConfiguration);
    v40 = v38;
    if (qword_1EDBCB498 != -1)
    {
      swift_once();
    }

    v125 = qword_1EDBCB4A0;
    type metadata accessor for SessionManager(0);
    v41 = swift_allocObject();
    v41[5] = 0;
    swift_unknownObjectWeakInit();
    type metadata accessor for SessionManager.SessionState(0);
    swift_storeEnumTagMultiPayload();
    v42 = MEMORY[0x1E69E7CC8];
    *(v41 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks) = MEMORY[0x1E69E7CC8];
    v43 = MEMORY[0x1E69E7CC0];
    *(v41 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_observers) = MEMORY[0x1E69E7CC0];
    v44 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
    *(v41 + v44) = sub_1B6987EC8(v43);
    v45 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pinnedVersionTokenByKey;
    *(v41 + v45) = sub_1B69F76A4(v43);
    v46 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pendingSessionDataByKey;
    *(v41 + v46) = sub_1B69F77E8(v43);
    *(v41 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind) = xmmword_1B6ABF700;
    v41[6] = v39;
    v41[7] = a1;
    v123 = a2;
    v41[8] = a2;
    type metadata accessor for ProcessorManager();
    v47 = v39;
    v48 = swift_allocObject();
    v48[3] = 0;
    swift_unknownObjectWeakInit();
    v48[5] = a1;
    v48[6] = v43;
    v49 = v42;
    v48[4] = v47;
    v136 = v41;
    v41[3] = v48;
    v121 = v40;
    v50 = v135;
    sub_1B69805B0(v40, v135, type metadata accessor for DiagnosticsConsentProvider);
    v134 = v31;
    v51 = v137;
    sub_1B69805B0(v31, v137, type metadata accessor for SummaryEventConfiguration);
    type metadata accessor for EventMirrorStore();
    v31 = swift_allocObject();
    *(v31 + 2) = v42;
    sub_1B69805B0(v50, v129, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B6987BC4(0);
    v53 = v52;
    v54 = *(v52 + 48);
    v55 = sub_1B6AB8BB0();
    v56 = v124;
    (*(*(v55 - 8) + 56))(v124, 1, 1, v55);
    *(v56 + v54) = 0;
    (*(*(v53 - 8) + 56))(v56, 0, 1, v53);
    if (*(v51 + 8))
    {
      v57 = type metadata accessor for DisabledSummaryEventManager();
      v58 = swift_allocObject();
      v59 = a1;
      v60 = v47;
      v61 = v59;
      v62 = v60;

      v63 = v130;
      v64 = v130;
      v65 = &off_1F2E7D3E0;
    }

    else
    {
      v66 = v118;
      sub_1B69805B0(v51, v118, type metadata accessor for SummaryEventConfiguration);
      v117 = v31;
      v67 = v119;
      sub_1B69805B0(v56, v119, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
      v57 = type metadata accessor for SummaryEventManager(0);
      v68 = swift_allocObject();
      v69 = a1;
      v70 = v47;
      v71 = v69;
      v72 = v70;

      v63 = v130;
      v73 = v130;
      v74 = v66;
      v49 = MEMORY[0x1E69E7CC8];
      v75 = v67;
      v31 = v117;
      v58 = sub_1B698A71C(v74, v75, v68);
      v65 = &off_1F2E7C028;
    }

    v141 = v65;
    v140 = v57;
    aBlock[0] = v58;
    sub_1B698C78C(v56, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
    type metadata accessor for Tracker(0);
    v76 = swift_allocObject();
    *(v76 + 80) = 0;
    *(v76 + 56) = 0;
    *(v76 + 64) = 0;
    swift_unknownObjectWeakInit();
    *(v76 + 112) = v49;
    *(v76 + 120) = v49;
    *(v76 + 128) = v49;
    *(v76 + 136) = v49;
    *(v76 + 144) = v49;
    *(v76 + 160) = v49;
    v77 = MEMORY[0x1E69E7CC0];
    *(v76 + 168) = MEMORY[0x1E69E7CC0];
    *(v76 + 176) = v77;
    *(v76 + 192) = v77;
    *(v76 + 200) = 0;
    v78 = OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock;
    type metadata accessor for UnfairLock();
    v79 = swift_allocObject();
    v80 = swift_slowAlloc();
    *(v79 + 16) = v80;
    *v80 = 0;
    *(v79 + 24) = 0x10000;
    *(v76 + v78) = v79;
    *(v76 + 16) = xmmword_1B6ABF710;
    v81 = v126;
    *(v76 + 201) = (v126 & 2) != 0;
    *(v76 + 96) = a1;
    *(v76 + 104) = v31;
    *(v76 + 152) = 0;
    *(v76 + 80) = 0;
    *(v76 + 88) = v47;
    swift_unknownObjectWeakAssign();
    *(v76 + 184) = v77;
    *(v76 + 40) = 0;
    *(v76 + 48) = 0;
    *(v76 + 56) = 0;
    *(v76 + 64) = 0;
    v82 = a1;
    v83 = v47;

    *(v76 + 208) = v63;
    *(v76 + 216) = &protocol witness table for BridgedPrivacyValidationProvider;
    a2 = v129;
    sub_1B69805B0(v129, v76 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B6982544(aBlock, v76 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager);
    v84 = v125;
    *(v76 + 32) = v125;
    v24 = v63;
    v125 = v84;
    sub_1B6989974();
    Strong = swift_unknownObjectWeakLoadStrong();
    v86 = v127;
    v130 = v82;
    if (Strong)
    {
      swift_unknownObjectRelease();
      v87 = v82;
      v88 = swift_allocObject();
      swift_weakInit();

      Tracker.onSessionChange(block:)(sub_1B6A0BE30, v88);

      sub_1B698C78C(a2, type metadata accessor for DiagnosticsConsentProvider);
      sub_1B698C78C(v137, type metadata accessor for SummaryEventConfiguration);
      sub_1B698C78C(v135, type metadata accessor for DiagnosticsConsentProvider);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
    }

    else
    {

      sub_1B698C78C(a2, type metadata accessor for DiagnosticsConsentProvider);
      sub_1B698C78C(v137, type metadata accessor for SummaryEventConfiguration);
      sub_1B698C78C(v135, type metadata accessor for DiagnosticsConsentProvider);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
    }

    v89 = v136;
    v136[2] = v76;
    *(v89 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_options) = v81;
    *(v89 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_flushProcessor) = v86;
    sub_1B6982544(&v143, v89 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider);
    *(v89 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timeDurationGranularity) = 0;
    v90 = OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation;
    swift_beginAccess();
    v91 = *(v24 + v90);
    v92 = v134;
    if (v91[OBJC_IVAR___AAPrivacyValidation_enabled] == 1)
    {
      v93 = *&v91[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors];

      v94 = v91;
      sub_1B6A930EC(v93);
      v97 = sub_1B6A94B10(v95);

      type metadata accessor for PrivacyValidator();
      v96 = swift_allocObject();
      *(v96 + 16) = 1;
    }

    else
    {
      type metadata accessor for PrivacyValidator();
      v96 = swift_allocObject();
      *(v96 + 16) = 0;

      v97 = MEMORY[0x1E69E7CD0];
    }

    v98 = v125;
    type metadata accessor for DenylistDescriptorMatcher();
    v99 = swift_allocObject();
    *(v99 + 16) = v97;
    *(v96 + 24) = v99;
    v100 = v136;
    *(v136 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_privacyValidator) = v96;
    *(v100 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_trackingConsent) = v98;
    *(v100 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_userDataManager) = 0;
    swift_beginAccess();
    swift_weakAssign();
    *(v100[2] + 80) = &off_1F2E76000;
    swift_unknownObjectWeakAssign();
    v101 = v98;

    sub_1B6989974();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v102 = swift_allocObject();
      swift_weakInit();

      Tracker.onSessionChange(block:)(sub_1B6A0BE30, v102);
    }

    v103 = v136;

    *(v103[3] + 24) = &off_1F2E76070;
    swift_unknownObjectWeakAssign();
    v104 = v103[3];
    v38 = *(v104 + 32);
    v105 = swift_allocObject();
    v105[2] = v104;
    v105[3] = v86;
    v105[4] = &protocol witness table for FlushProcessor;
    swift_retain_n();
    swift_retain_n();
    sub_1B69877A4(v38, sub_1B69916A8, v105);

    if (qword_1EDBC9580 != -1)
    {
      swift_once();
    }

    a9 = qword_1EDBCFD18;
    os_unfair_lock_lock((qword_1EDBCFD18 + 32));
    v106 = *(a9 + 24);

    os_unfair_lock_unlock((a9 + 32));

    v135 = v106;
    v129 = *(v106 + 16);
    if (!v129)
    {
      break;
    }

    a1 = 0;
    v127 = v135 + 32;
    v126 = (v120 + 16);
    v125 = &v139;
    v128 = a10;
    while (a1 < *(v135 + 16))
    {
      v107 = swift_allocObject();
      v137 = *(v127 + 16 * a1);
      *(v107 + 16) = v137;
      type metadata accessor for AccessSessionManager();
      v108 = swift_allocObject();
      v109 = v136;
      *(v108 + 16) = v136;
      type metadata accessor for AccessTracker();
      v38 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      v38[3] = 0;
      v38[4] = 0;
      v38[5] = sub_1B6A55214;
      v38[6] = 0;
      v110 = swift_allocObject();
      v110[2] = v109;
      v110[3] = sub_1B6A0BE04;
      v110[4] = v107;
      v110[5] = v108;
      v110[6] = v38;
      v111 = qword_1EDBCAA18;
      swift_retain_n();
      *&v137 = *(&v137 + 1);
      swift_retain_n();

      if (v111 != -1)
      {
        swift_once();
      }

      ++a1;
      v112 = qword_1EDBCFD78;
      v24 = swift_allocObject();
      v24[2] = sub_1B6A0BE0C;
      v24[3] = v110;
      v113 = OBJC_IVAR___AAAccessQueue__qos;
      swift_beginAccess();
      v114 = *(v112 + v113);

      os_unfair_lock_lock_with_options();
      v115 = *(*v114 + 96);
      swift_beginAccess();
      (*v126)(v131, &v114[v115], v132);
      os_unfair_lock_unlock(*(*(v114 + 2) + 16));

      a2 = v133;
      sub_1B6AB9020();
      v141 = sub_1B69B6F90;
      v142 = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v139 = sub_1B698E534;
      v140 = &block_descriptor_16;
      _Block_copy(aBlock);
      sub_1B6AB90E0();
      swift_allocObject();

      v31 = sub_1B6AB90D0();

      a9 = v130;
      sub_1B6AB9940();

      a10 = v128;
      v92 = v134;
      if (v129 == a1)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

LABEL_23:

  sub_1B698C78C(a10, type metadata accessor for SummaryEventConfiguration);
  sub_1B698C78C(v122, type metadata accessor for DiagnosticsConsentProvider);
  __swift_destroy_boxed_opaque_existential_1(v144);
  sub_1B698C78C(v92, type metadata accessor for SummaryEventConfiguration);
  sub_1B698C78C(v121, type metadata accessor for DiagnosticsConsentProvider);
  __swift_destroy_boxed_opaque_existential_1(&v143);
  return v136;
}

id sub_1B6AA8300(void *a1, void *a2, char *a3)
{
  v126 = a3;
  v122 = a2;
  v4 = type metadata accessor for SummaryEventDatabaseManager.StorageOptions(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v118 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v121 = &v115 - v7;
  v119 = type metadata accessor for SummaryEventConfiguration(0);
  v8 = MEMORY[0x1EEE9AC00](v119);
  v117 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v129 = &v115 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v127 = &v115 - v12;
  v13 = type metadata accessor for DiagnosticsConsentProvider(0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v125 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v128 = &v115 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v115 - v18;
  v20 = sub_1B6AB9090();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v115 - v25;
  v27 = type metadata accessor for AccessQueue();
  v28 = objc_allocWithZone(v27);
  *&v28[OBJC_IVAR___AAAccessQueue_queue] = a1;
  v123 = a1;
  sub_1B6AB9050();
  v29 = OBJC_IVAR___AAAccessQueue__qos;
  swift_beginAccess();
  (*(v21 + 16))(v24, v26, v20);
  sub_1B698E4D0(0, qword_1EDBCB0E0, MEMORY[0x1E69E7FB0], type metadata accessor for Atomic);
  v30 = swift_allocObject();
  v120 = type metadata accessor for UnfairLock();
  v31 = swift_allocObject();
  v32 = swift_slowAlloc();
  *(v31 + 16) = v32;
  *v32 = 0;
  *(v31 + 24) = 0x10000;
  (*(v21 + 8))(v26, v20);
  *(v30 + 2) = v31;
  (*(v21 + 32))(&v30[*(*v30 + 96)], v24, v20);
  *&v28[v29] = v30;
  swift_endAccess();
  v137.receiver = v28;
  v137.super_class = v27;
  v33 = objc_msgSendSuper2(&v137, sel_init);
  type metadata accessor for SessionGroupManager();
  v34 = swift_allocObject();
  v35 = v33;
  v36 = MEMORY[0x1E69E7CC0];
  v34[3] = sub_1B6987D80(MEMORY[0x1E69E7CC0]);
  v34[4] = sub_1B6987D80(v36);
  v34[2] = v35;
  v37 = &v126[OBJC_IVAR___AADiagnosticsConsentProvider_provider];
  v126 = v19;
  sub_1B69805B0(v37, v19, type metadata accessor for DiagnosticsConsentProvider);
  v38 = dispatch_group_create();
  type metadata accessor for FlushProcessor();
  v39 = swift_allocObject();
  swift_weakInit();
  v39[4] = 13;
  v39[5] = 0x404E000000000000;
  v39[6] = 0;
  v39[3] = dispatch_group_create();
  if (qword_1EDBCAC70 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v119, qword_1EDBCA728);
  v41 = v127;
  sub_1B69805B0(v40, v127, type metadata accessor for SummaryEventConfiguration);
  type metadata accessor for SessionManager(0);
  v42 = swift_allocObject();
  v135 = &type metadata for TimestampJitter;
  v136 = &protocol witness table for TimestampJitter;
  v133[0] = 0;
  v133[1] = 0;
  v134 = 1;
  v42[5] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for SessionManager.SessionState(0);
  swift_storeEnumTagMultiPayload();
  *(v42 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks) = MEMORY[0x1E69E7CC8];
  *(v42 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_observers) = v36;
  v43 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
  v44 = v35;
  v45 = v122;
  *(v42 + v43) = sub_1B6987EC8(v36);
  v46 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pinnedVersionTokenByKey;
  *(v42 + v46) = sub_1B69F76A4(v36);
  v47 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pendingSessionDataByKey;
  *(v42 + v47) = sub_1B69F77E8(v36);
  *(v42 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind) = xmmword_1B6ABF700;
  v42[6] = v44;
  v42[7] = v38;
  v42[8] = v34;
  type metadata accessor for ProcessorManager();
  v48 = swift_allocObject();
  v48[3] = 0;
  swift_unknownObjectWeakInit();
  v48[5] = v38;
  v48[6] = v36;
  v48[4] = v44;
  v42[3] = v48;
  sub_1B69805B0(v126, v128, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B69805B0(v41, v129, type metadata accessor for SummaryEventConfiguration);
  v49 = qword_1EDBCB498;
  v50 = v44;
  v51 = v38;
  v52 = v50;
  v53 = v51;
  v54 = v52;
  v55 = v45;
  v56 = v53;
  v122 = v34;

  if (v49 != -1)
  {
    swift_once();
  }

  v119 = qword_1EDBCB4A0;
  type metadata accessor for EventMirrorStore();
  v57 = swift_allocObject();
  v58 = MEMORY[0x1E69E7CC8];
  *(v57 + 16) = MEMORY[0x1E69E7CC8];
  sub_1B69805B0(v128, v125, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6987BC4(0);
  v60 = v59;
  v61 = *(v59 + 48);
  v62 = sub_1B6AB8BB0();
  v63 = v121;
  (*(*(v62 - 8) + 56))(v121, 1, 1, v62);
  *&v63[v61] = 0;
  (*(*(v60 - 8) + 56))(v63, 0, 1, v60);
  if (*(v129 + 8))
  {
    v64 = type metadata accessor for DisabledSummaryEventManager();
    v65 = swift_allocObject();
    v66 = &off_1F2E7D3E0;
  }

  else
  {
    v116 = v57;
    v67 = v39;
    v68 = v56;
    v69 = v54;
    v70 = v55;
    v71 = v117;
    sub_1B69805B0(v129, v117, type metadata accessor for SummaryEventConfiguration);
    v72 = v118;
    sub_1B69805B0(v63, v118, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
    v64 = type metadata accessor for SummaryEventManager(0);
    v73 = swift_allocObject();
    v74 = v71;
    v55 = v70;
    v54 = v69;
    v56 = v68;
    v39 = v67;
    v57 = v116;
    v65 = sub_1B698A71C(v74, v72, v73);
    v66 = &off_1F2E7C028;
  }

  v132[3] = v64;
  v132[4] = v66;
  v132[0] = v65;
  sub_1B698C78C(v63, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
  type metadata accessor for Tracker(0);
  v75 = swift_allocObject();
  *(v75 + 80) = 0;
  *(v75 + 56) = 0;
  *(v75 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v75 + 112) = v58;
  *(v75 + 120) = v58;
  *(v75 + 128) = v58;
  *(v75 + 136) = v58;
  *(v75 + 144) = v58;
  *(v75 + 160) = v58;
  v76 = MEMORY[0x1E69E7CC0];
  *(v75 + 168) = MEMORY[0x1E69E7CC0];
  *(v75 + 176) = v76;
  *(v75 + 192) = v76;
  *(v75 + 200) = 0;
  v77 = OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock;
  v78 = swift_allocObject();
  v79 = swift_slowAlloc();
  *(v78 + 16) = v79;
  *v79 = 0;
  *(v78 + 24) = 0x10000;
  *(v75 + v77) = v78;
  *(v75 + 16) = xmmword_1B6ABF710;
  *(v75 + 201) = 0;
  *(v75 + 96) = v56;
  *(v75 + 104) = v57;
  *(v75 + 152) = 0;
  *(v75 + 80) = 0;
  *(v75 + 88) = v54;
  swift_unknownObjectWeakAssign();
  *(v75 + 184) = v76;
  *(v75 + 40) = 0;
  *(v75 + 48) = 0;
  *(v75 + 56) = 0;
  *(v75 + 64) = 0;
  v80 = v54;
  v81 = v56;

  *(v75 + 208) = v55;
  *(v75 + 216) = &protocol witness table for BridgedPrivacyValidationProvider;
  v82 = v125;
  sub_1B69805B0(v125, v75 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v132, v75 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager);
  v83 = v119;
  *(v75 + 32) = v119;
  v84 = v55;
  v85 = v83;
  sub_1B6989974();
  Strong = swift_unknownObjectWeakLoadStrong();
  v121 = v81;
  v120 = v80;
  if (Strong)
  {
    swift_unknownObjectRelease();
    v87 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v87);

    sub_1B698C78C(v82, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B698C78C(v129, type metadata accessor for SummaryEventConfiguration);
    sub_1B698C78C(v128, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v132);
  }

  else
  {

    sub_1B698C78C(v82, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B698C78C(v129, type metadata accessor for SummaryEventConfiguration);
    sub_1B698C78C(v128, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v132);
  }

  v88 = v126;
  v42[2] = v75;
  *(v42 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_options) = 0;
  *(v42 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_flushProcessor) = v39;
  sub_1B6982544(v133, v42 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider);
  *(v42 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timeDurationGranularity) = 0;
  v89 = OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation;
  swift_beginAccess();
  v90 = *&v84[v89];
  if (v90[OBJC_IVAR___AAPrivacyValidation_enabled] == 1)
  {
    v91 = *&v90[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors];

    v92 = v90;
    sub_1B6A930EC(v91);
    v95 = sub_1B6A94B10(v93);

    type metadata accessor for PrivacyValidator();
    v94 = swift_allocObject();
    *(v94 + 16) = 1;
  }

  else
  {
    type metadata accessor for PrivacyValidator();
    v94 = swift_allocObject();
    *(v94 + 16) = 0;

    v95 = MEMORY[0x1E69E7CD0];
  }

  v96 = v120;
  type metadata accessor for DenylistDescriptorMatcher();
  v97 = swift_allocObject();
  *(v97 + 16) = v95;
  *(v94 + 24) = v97;
  *(v42 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_privacyValidator) = v94;
  *(v42 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_trackingConsent) = v85;
  *(v42 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_userDataManager) = 0;
  swift_beginAccess();
  swift_weakAssign();
  *(v42[2] + 80) = &off_1F2E76000;
  swift_unknownObjectWeakAssign();
  v98 = v85;

  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v99 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v99);
  }

  *(v42[3] + 24) = &off_1F2E76070;
  swift_unknownObjectWeakAssign();
  v100 = v42[3];
  v101 = *(v100 + 32);
  v102 = swift_allocObject();
  v102[2] = v100;
  v102[3] = v39;
  v102[4] = &protocol witness table for FlushProcessor;
  swift_retain_n();

  sub_1B69877A4(v101, sub_1B69916A8, v102);

  sub_1B698C78C(v127, type metadata accessor for SummaryEventConfiguration);
  sub_1B698C78C(v88, type metadata accessor for DiagnosticsConsentProvider);
  __swift_destroy_boxed_opaque_existential_1(v133);
  v103 = v124;
  *&v124[OBJC_IVAR___AASessionManager_sessionManager] = v42;

  v105 = sub_1B6A3FD68(v104);
  *&v103[OBJC_IVAR___AASessionManager_tracker] = v105;
  v106 = v42[3];
  v107 = type metadata accessor for BridgedProcessorManager();
  v108 = objc_allocWithZone(v107);
  *&v108[OBJC_IVAR___AAProcessorManager_processorManager] = v106;
  v131.receiver = v108;
  v131.super_class = v107;
  v109 = v105;

  v110 = objc_msgSendSuper2(&v131, sel_init);
  *&v103[OBJC_IVAR___AASessionManager_processorManager] = v110;
  v111 = type metadata accessor for BridgedSessionManager();
  v130.receiver = v103;
  v130.super_class = v111;
  v112 = v110;
  v113 = objc_msgSendSuper2(&v130, sel_init);

  return v113;
}

id sub_1B6AA92C0(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for SummaryEventConfiguration(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DiagnosticsConsentProvider(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBCB568 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDBCB570;
  type metadata accessor for SessionGroupManager();
  v12 = swift_allocObject();
  v13 = v11;
  v14 = MEMORY[0x1E69E7CC0];
  *(v12 + 24) = sub_1B6987D80(MEMORY[0x1E69E7CC0]);
  *(v12 + 32) = sub_1B6987D80(v14);
  *(v12 + 16) = v13;
  sub_1B69805B0(a2 + OBJC_IVAR___AADiagnosticsConsentProvider_provider, v10, type metadata accessor for DiagnosticsConsentProvider);
  v15 = dispatch_group_create();
  type metadata accessor for FlushProcessor();
  v16 = swift_allocObject();
  swift_weakInit();
  v16[4] = 13;
  v16[5] = 0x404E000000000000;
  v16[6] = 0;
  v16[3] = dispatch_group_create();
  if (qword_1EDBCAC70 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v5, qword_1EDBCA728);
  sub_1B69805B0(v17, v7, type metadata accessor for SummaryEventConfiguration);
  v18 = a1;
  v19 = sub_1B6AA70FC(v15, v12, 0, v16, 0, 0, 1, v18, v10, v7);

  *&v2[OBJC_IVAR___AASessionManager_sessionManager] = v19;

  v21 = sub_1B6A3FD68(v20);
  *&v2[OBJC_IVAR___AASessionManager_tracker] = v21;
  v22 = v19[3];
  v23 = type metadata accessor for BridgedProcessorManager();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR___AAProcessorManager_processorManager] = v22;
  v32.receiver = v24;
  v32.super_class = v23;
  v25 = v21;

  v26 = objc_msgSendSuper2(&v32, sel_init);
  *&v2[OBJC_IVAR___AASessionManager_processorManager] = v26;
  v27 = type metadata accessor for BridgedSessionManager();
  v31.receiver = v2;
  v31.super_class = v27;
  v28 = v26;
  v29 = objc_msgSendSuper2(&v31, sel_init);

  return v29;
}

uint64_t sub_1B6AA95F8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8[0] = v5;
  *(v8 + 10) = *(v0 + 50);
  return sub_1B6AA1608(&v7, v1, v2, v3, v4);
}

void sub_1B6AA9654(uint64_t a1)
{
  if (!qword_1EB95C748)
  {
    sub_1B6AA9A34(255, &qword_1EDBC9970, sub_1B69E85A4, &type metadata for BridgedDataEvent);
    v3 = v2;
    v4 = sub_1B6AA992C(qword_1EDBC9978, &qword_1EDBC9970, sub_1B69E85A4, &type metadata for BridgedDataEvent);
    v6 = type metadata accessor for PushEvent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB95C748);
    }
  }
}

uint64_t objectdestroy_21Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B6AA9804(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_1B6AA9A34(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1B6AA9874(uint64_t a1)
{
  if (!qword_1EDBC98D8)
  {
    sub_1B6AA9A34(255, &qword_1EDBC9970, sub_1B69E85A4, &type metadata for BridgedDataEvent);
    v3 = v2;
    v4 = sub_1B6AA992C(qword_1EDBC9978, &qword_1EDBC9970, sub_1B69E85A4, &type metadata for BridgedDataEvent);
    v6 = type metadata accessor for DataEventStack(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDBC98D8);
    }
  }
}

uint64_t sub_1B6AA992C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B6AA9A34(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B6AA997C(uint64_t a1)
{
  if (!qword_1EB95C750)
  {
    sub_1B6AA9A34(255, &qword_1EB95AED0, sub_1B69E8B54, &type metadata for EssentialUserData);
    v3 = v2;
    v4 = sub_1B6AA992C(&qword_1EB95AEE0, &qword_1EB95AED0, sub_1B69E8B54, &type metadata for EssentialUserData);
    v6 = type metadata accessor for DataEventStack(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB95C750);
    }
  }
}

void sub_1B6AA9A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for SessionData(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B6AA9A94(uint64_t a1)
{
  if (!qword_1EB95C758)
  {
    sub_1B6AA9A34(255, &qword_1EB95AF00, sub_1B69E8D48, &type metadata for AppAnalyticsUserData);
    v3 = v2;
    v4 = sub_1B6AA992C(&qword_1EB95AF10, &qword_1EB95AF00, sub_1B69E8D48, &type metadata for AppAnalyticsUserData);
    v6 = type metadata accessor for DataEventStack(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB95C758);
    }
  }
}

uint64_t sub_1B6AA9B74()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1B6AA9BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RotationMode(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LegacyStoredUserIDComponents(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v7) == 1)
  {
    sub_1B6AAAC3C(a1, sub_1B6AAAB7C);
    v11 = type metadata accessor for StoredUserIDComponents(0);
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 1, 1, v11);
  }

  else
  {
    sub_1B6AAABD4(a1, v9, type metadata accessor for LegacyStoredUserIDComponents);
    sub_1B698114C(0);
    v15 = *(v14 + 48);
    v24 = *(v14 + 64);
    v16 = sub_1B6AB8E40();
    (*(*(v16 - 8) + 16))(v6, v9, v16);
    v17 = v7[6];
    v18 = sub_1B6AB8DB0();
    v19 = *(*(v18 - 8) + 16);
    v19(&v6[v15], &v9[v17], v18);
    v19(&v6[v24], &v9[v7[7]], v18);
    swift_storeEnumTagMultiPayload();
    v20 = *&v9[v7[5]];
    sub_1B6AAAC3C(v9, type metadata accessor for LegacyStoredUserIDComponents);
    sub_1B6AAABD4(v6, a2, type metadata accessor for RotationMode);
    v21 = type metadata accessor for StoredUserIDComponents(0);
    v22 = (a2 + *(v21 + 20));
    *v22 = v20;
    v22[1] = 0;
    return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }
}

uint64_t StoredUserIDComponents.description.getter()
{
  sub_1B6AB9CA0();
  MEMORY[0x1B8C97BE0](0xD00000000000001DLL, 0x80000001B6ACEE10);
  type metadata accessor for RotationMode(0);
  sub_1B6AB9DF0();
  MEMORY[0x1B8C97BE0](0xD000000000000012, 0x80000001B6ACEE30);
  type metadata accessor for StoredUserIDComponents(0);
  sub_1B6AB9DF0();
  MEMORY[0x1B8C97BE0](41, 0xE100000000000000);
  return 0;
}

uint64_t type metadata accessor for StoredUserIDComponents(uint64_t a1)
{
  result = qword_1EB95C798;
  if (!qword_1EB95C798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 StoredUserIDComponents.rotationPeriod.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for StoredUserIDComponents(0) + 20));
  *a1 = result;
  return result;
}

BOOL static StoredUserIDComponents.== infix(_:_:)(uint64_t a1, char *a2)
{
  if ((_s12AppAnalytics12RotationModeO2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for StoredUserIDComponents(0) + 20);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v7 = &a2[v4];
  v9 = *v7;
  v8 = *(v7 + 1);
  return v6 == v9 && v5 == v8;
}

uint64_t sub_1B6AAA0F4()
{
  if (*v0)
  {
    return 0x6E6F697461746F72;
  }

  else
  {
    return 1701080941;
  }
}

uint64_t sub_1B6AAA134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B6ABA0F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xEE00646F69726550)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B6ABA0F0();

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

uint64_t sub_1B6AAA218(uint64_t a1)
{
  v2 = sub_1B6AAA824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6AAA254(uint64_t a1)
{
  v2 = sub_1B6AAA824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StoredUserIDComponents.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1B6AAA8CC(0, &qword_1EB95C760, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6AAA824();
  sub_1B6ABA2D0();
  LOBYTE(v12) = 0;
  type metadata accessor for RotationMode(0);
  sub_1B6AAA930(&qword_1EB95C770, &protocol conformance descriptor for RotationMode);
  sub_1B6ABA040();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for StoredUserIDComponents(0) + 20));
    v11[15] = 1;
    sub_1B6AAA878();
    sub_1B6ABA040();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t StoredUserIDComponents.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for RotationMode(0);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AAA8CC(0, &qword_1EB95C780, MEMORY[0x1E69E6F48]);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for StoredUserIDComponents(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6AAA824();
  sub_1B6ABA2A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v17;
  LOBYTE(v20) = 0;
  sub_1B6AAA930(&qword_1EB95C788, &protocol conformance descriptor for RotationMode);
  v14 = v18;
  sub_1B6AB9F90();
  sub_1B6AAABD4(v19, v12, type metadata accessor for RotationMode);
  v21 = 1;
  sub_1B6AAA974();
  sub_1B6AB9F90();
  (*(v13 + 8))(v8, v14);
  *(v12 + *(v9 + 20)) = v20;
  sub_1B6A91A18(v12, v16, type metadata accessor for StoredUserIDComponents);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B6AAAC3C(v12, type metadata accessor for StoredUserIDComponents);
}

BOOL sub_1B6AAA7C0(uint64_t a1, char *a2, uint64_t a3)
{
  if ((_s12AppAnalytics12RotationModeO2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v8 = *(a1 + v6);
  v7 = *(a1 + v6 + 8);
  v9 = &a2[v6];
  v11 = *v9;
  v10 = *(v9 + 1);
  return v8 == v11 && v7 == v10;
}

unint64_t sub_1B6AAA824()
{
  result = qword_1EB95C768;
  if (!qword_1EB95C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C768);
  }

  return result;
}

unint64_t sub_1B6AAA878()
{
  result = qword_1EB95C778;
  if (!qword_1EB95C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C778);
  }

  return result;
}

void sub_1B6AAA8CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6AAA824();
    v7 = a3(a1, &type metadata for StoredUserIDComponents.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B6AAA930(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RotationMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B6AAA974()
{
  result = qword_1EB95C790;
  if (!qword_1EB95C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C790);
  }

  return result;
}

uint64_t sub_1B6AAA9F0(uint64_t a1)
{
  result = type metadata accessor for RotationMode(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B6AAAA78()
{
  result = qword_1EB95C7A8;
  if (!qword_1EB95C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C7A8);
  }

  return result;
}

unint64_t sub_1B6AAAAD0()
{
  result = qword_1EB95C7B0;
  if (!qword_1EB95C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C7B0);
  }

  return result;
}

unint64_t sub_1B6AAAB28()
{
  result = qword_1EB95C7B8;
  if (!qword_1EB95C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C7B8);
  }

  return result;
}

void sub_1B6AAAB7C(uint64_t a1)
{
  if (!qword_1EB95B250)
  {
    type metadata accessor for LegacyStoredUserIDComponents(255);
    v1 = sub_1B6AB9B30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95B250);
    }
  }
}

uint64_t sub_1B6AAABD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B6AAAC3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id BridgedUserIDResetFlag.__allocating_init(suiteName:userDataIDsResetKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id BridgedUserIDResetFlag.init(suiteName:userDataIDsResetKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id BridgedUserIDResetFlag.__allocating_init(suiteName:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag];
  *v6 = a1;
  *(v6 + 1) = a2;
  *(v6 + 2) = 0xD00000000000001CLL;
  *(v6 + 3) = 0x80000001B6ACCC40;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id BridgedUserIDResetFlag.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag];
  *v6 = a1;
  *(v6 + 1) = a2;
  *(v6 + 2) = 0xD00000000000001CLL;
  *(v6 + 3) = 0x80000001B6ACCC40;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id BridgedUserIDResetFlag.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedUserIDResetFlag.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Action.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  if (v4 <= 1)
  {
    v5 = v4 != 0;
LABEL_5:
    MEMORY[0x1B8C98A40](v5);

    return sub_1B6AB9380();
  }

  if (v4 == 2)
  {
    v5 = 2;
    goto LABEL_5;
  }

  if (v3 | v2)
  {
    if (v3 ^ 1 | v2)
    {
      v7 = 5;
    }

    else
    {
      v7 = 4;
    }
  }

  else
  {
    v7 = 3;
  }

  return MEMORY[0x1B8C98A40](v7);
}

uint64_t Action.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1B6ABA1F0();
  if (v3 <= 1)
  {
    v4 = v3 != 0;
LABEL_5:
    MEMORY[0x1B8C98A40](v4);
    sub_1B6AB9380();
    return sub_1B6ABA230();
  }

  if (v3 == 2)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (v2 | v1)
  {
    if (v2 ^ 1 | v1)
    {
      v5 = 5;
    }

    else
    {
      v5 = 4;
    }
  }

  else
  {
    v5 = 3;
  }

  MEMORY[0x1B8C98A40](v5);
  return sub_1B6ABA230();
}

uint64_t sub_1B6AAB378(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  if (v4 <= 1)
  {
    v5 = v4 != 0;
LABEL_5:
    MEMORY[0x1B8C98A40](v5);

    return sub_1B6AB9380();
  }

  if (v4 == 2)
  {
    v5 = 2;
    goto LABEL_5;
  }

  if (v3 | v2)
  {
    if (v3 ^ 1 | v2)
    {
      v7 = 5;
    }

    else
    {
      v7 = 4;
    }
  }

  else
  {
    v7 = 3;
  }

  return MEMORY[0x1B8C98A40](v7);
}

uint64_t sub_1B6AAB434()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1B6ABA1F0();
  if (v3 <= 1)
  {
    v4 = v3 != 0;
LABEL_5:
    MEMORY[0x1B8C98A40](v4);
    sub_1B6AB9380();
    return sub_1B6ABA230();
  }

  if (v3 == 2)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (v2 | v1)
  {
    if (v2 ^ 1 | v1)
    {
      v5 = 5;
    }

    else
    {
      v5 = 4;
    }
  }

  else
  {
    v5 = 3;
  }

  MEMORY[0x1B8C98A40](v5);
  return sub_1B6ABA230();
}

Swift::Bool __swiftcall ActionSequence.match(lastActions:)(Swift::OpaquePointer lastActions)
{
  v3 = *(lastActions._rawValue + 2);
  if (!v3)
  {
    return 0;
  }

  v4 = *v1;
  if (*(v4 + 16) < v3)
  {
    return 0;
  }

  rawValue = lastActions._rawValue;
  result = sub_1B6A54BFC(v3, v4);
  v9 = v8 >> 1;
  v10 = (v8 >> 1) - v7;
  if (__OFSUB__(v8 >> 1, v7))
  {
    goto LABEL_19;
  }

  if (v10)
  {
    v11 = v6;
    v12 = v7;
    v26 = MEMORY[0x1E69E7CC0];

    result = sub_1B69E4DAC(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v13 = v26;
    if (v12 <= v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = v12;
    }

    v15 = v14 - v12;
    v16 = (v11 + 40 * v12 + 16);
    while (v15)
    {
      v17 = *(v16 - 2);
      v18 = *(v16 - 1);
      v19 = *v16;
      sub_1B6A110A8(v17, v18, *v16);
      v21 = *(v26 + 16);
      v20 = *(v26 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1B69E4DAC((v20 > 1), v21 + 1, 1);
      }

      *(v26 + 16) = v21 + 1;
      v22 = v26 + 24 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v18;
      *(v22 + 48) = v19;
      --v15;
      v16 += 40;
      if (!--v10)
      {
        swift_unknownObjectRelease();
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  swift_unknownObjectRelease();
  v13 = MEMORY[0x1E69E7CC0];
LABEL_17:
  sub_1B6AAB6B4(v13, rawValue);
  v24 = v23;

  return v24 & 1;
}

void sub_1B6AAB6B4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = *(a1 + 16);
  v28 = a2 + 32;
  for (i = (a1 + 48); ; i += 24)
  {
    if (v2 == v3)
    {
      if (!v4)
      {
        return;
      }

      v11 = 0;
      v12 = 0;
      v13 = 255;
      v2 = v3;
      goto LABEL_14;
    }

    if (v2 >= v3)
    {
      break;
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_90;
    }

    v14 = v28 + 24 * v2;
    v13 = *(v14 + 16);
    v12 = *v14;
    v11 = *(v14 + 8);
    sub_1B6A110A8(*v14, v11, *(v14 + 16));
    if (!v4)
    {
      if (v13 == 255)
      {
        return;
      }

LABEL_83:
      v25 = v12;
      v26 = v11;
      v27 = v13;
      goto LABEL_84;
    }

    ++v2;
LABEL_14:
    v15 = *i;
    v17 = *(i - 2);
    v16 = *(i - 1);
    sub_1B6A110A8(v17, v16, *i);
    if (v13 == 255)
    {
      if (v15 == 255)
      {
        return;
      }

LABEL_81:
      v25 = v17;
      v26 = v16;
      v27 = v15;
LABEL_84:
      sub_1B6AABF7C(v25, v26, v27);
      return;
    }

    if (v15 == 255)
    {
      goto LABEL_83;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        if (v15 != 2)
        {
          sub_1B6AABF7C(v17, v16, v15);
          v25 = v12;
          v26 = v11;
          v27 = 2;
          goto LABEL_84;
        }

        if (v12 == v17 && v11 == v16)
        {
          v6 = v12;
          v7 = v11;
          goto LABEL_3;
        }

        if (sub_1B6ABA0F0())
        {
          goto LABEL_2;
        }

        if (v12 == 42 && v11 == 0xE100000000000000)
        {
          sub_1B6AABF7C(v17, v16, 2u);
          v8 = 42;
          v9 = 0xE100000000000000;
          goto LABEL_4;
        }

        if (sub_1B6ABA0F0())
        {
LABEL_2:
          v6 = v17;
          v7 = v16;
LABEL_3:
          sub_1B6AABF7C(v6, v7, 2u);
          v8 = v12;
          v9 = v11;
LABEL_4:
          v10 = 2;
          goto LABEL_5;
        }

        if (v17 == 42 && v16 == 0xE100000000000000)
        {
          v6 = 42;
          v7 = 0xE100000000000000;
          goto LABEL_3;
        }

        v22 = sub_1B6ABA0F0();
        sub_1B6AABF7C(v17, v16, 2u);
        sub_1B6AABF7C(v12, v11, 2u);
        if ((v22 & 1) == 0)
        {
          return;
        }
      }

      else if (v12 | v11)
      {
        if (v12 ^ 1 | v11)
        {
          if (v15 != 3 || v16 || v17 != 2)
          {
            goto LABEL_81;
          }
        }

        else if (v15 != 3 || v16 || v17 != 1)
        {
          goto LABEL_81;
        }
      }

      else if (v15 != 3 || v17 | v16)
      {
        goto LABEL_81;
      }
    }

    else if (v13)
    {
      if (v15 != 1)
      {
        sub_1B6AABF7C(v17, v16, v15);
        v25 = v12;
        v26 = v11;
        v27 = 1;
        goto LABEL_84;
      }

      if (v12 == v17 && v11 == v16)
      {
        v20 = v12;
        v21 = v11;
LABEL_47:
        sub_1B6AABF7C(v20, v21, 1u);
        v8 = v12;
        v9 = v11;
        goto LABEL_48;
      }

      if (sub_1B6ABA0F0())
      {
        goto LABEL_46;
      }

      if (v12 == 42 && v11 == 0xE100000000000000)
      {
        sub_1B6AABF7C(v17, v16, 1u);
        v8 = 42;
        v9 = 0xE100000000000000;
LABEL_48:
        v10 = 1;
LABEL_5:
        sub_1B6AABF7C(v8, v9, v10);
        goto LABEL_6;
      }

      if (sub_1B6ABA0F0())
      {
LABEL_46:
        v20 = v17;
        v21 = v16;
        goto LABEL_47;
      }

      if (v17 == 42 && v16 == 0xE100000000000000)
      {
        v20 = 42;
        v21 = 0xE100000000000000;
        goto LABEL_47;
      }

      v24 = sub_1B6ABA0F0();
      sub_1B6AABF7C(v17, v16, 1u);
      sub_1B6AABF7C(v12, v11, 1u);
      if ((v24 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      if (v15)
      {
        sub_1B6AABF7C(v17, v16, v15);
        v25 = v12;
        v26 = v11;
        v27 = 0;
        goto LABEL_84;
      }

      if (v12 == v17 && v11 == v16)
      {
        v18 = v12;
        v19 = v11;
LABEL_39:
        sub_1B6AABF7C(v18, v19, 0);
        v8 = v12;
        v9 = v11;
LABEL_40:
        v10 = 0;
        goto LABEL_5;
      }

      if (sub_1B6ABA0F0())
      {
        goto LABEL_38;
      }

      if (v12 == 42 && v11 == 0xE100000000000000)
      {
        sub_1B6AABF7C(v17, v16, 0);
        v8 = 42;
        v9 = 0xE100000000000000;
        goto LABEL_40;
      }

      if (sub_1B6ABA0F0())
      {
LABEL_38:
        v18 = v17;
        v19 = v16;
        goto LABEL_39;
      }

      if (v17 == 42 && v16 == 0xE100000000000000)
      {
        v18 = 42;
        v19 = 0xE100000000000000;
        goto LABEL_39;
      }

      v23 = sub_1B6ABA0F0();
      sub_1B6AABF7C(v17, v16, 0);
      sub_1B6AABF7C(v12, v11, 0);
      if ((v23 & 1) == 0)
      {
        return;
      }
    }

LABEL_6:
    --v4;
  }

  __break(1u);
LABEL_90:
  __break(1u);
}

uint64_t _s12AppAnalytics6ActionO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) == 2)
    {
      if (v6 == 2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (v3 | v2)
      {
        if (v3 ^ 1 | v2)
        {
          if (v6 != 3 || v5 != 2 || v4)
          {
            return 0;
          }
        }

        else if (v6 != 3 || v5 != 1 || v4)
        {
          return 0;
        }

        return 1;
      }

      if (v6 == 3 && (v4 | v5) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*(a1 + 16))
  {
    if (v6 == 1)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

LABEL_9:
  v7 = v3 == v5 && v2 == v4;
  if (v7 || (sub_1B6ABA0F0() & 1) != 0 || v3 == 42 && v2 == 0xE100000000000000 || (sub_1B6ABA0F0() & 1) != 0 || v5 == 42 && v4 == 0xE100000000000000)
  {
    return 1;
  }

  return sub_1B6ABA0F0();
}

unint64_t sub_1B6AABD40()
{
  result = qword_1EB95C7C8;
  if (!qword_1EB95C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C7C8);
  }

  return result;
}

uint64_t sub_1B6AABD94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B6AABDDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B6AABE20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1B6AABE68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B6AABEB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1B6AABF10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1B6AABF7C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B69F8F30(a1, a2, a3);
  }

  return a1;
}

void sub_1B6AABFA0(uint64_t a1, uint64_t *a2, char a3, void *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for StoredUserIDComponents(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v11 = a2[1];
  sub_1B69F4778(a1, v10);
  v13 = type metadata accessor for BridgedStoredUserIDComponents(0);
  v14 = objc_allocWithZone(v13);
  sub_1B69F4778(v10, v14 + OBJC_IVAR___AAStoredUserIDComponents_storedUserIDComponents);
  v34.receiver = v14;
  v34.super_class = v13;
  v15 = objc_msgSendSuper2(&v34, sel_init);
  sub_1B69E9E60(v10);
  switch(v11)
  {
    case 0:
      if (qword_1EB95A9A8 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB95BAE0;
      goto LABEL_13;
    case 1:
      if (qword_1EB95A9B0 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB95BAE8;
      goto LABEL_13;
    case 2:
      if (qword_1EB95A9B8 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB95BAF0;
LABEL_13:
      v17 = v16;
      goto LABEL_15;
  }

  v18 = type metadata accessor for BridgedIDSessionKind();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR___AAIDSessionKind_kind] = 3;
  v20 = &v19[OBJC_IVAR___AAIDSessionKind_name];
  *v20 = v12;
  *(v20 + 1) = v11;
  v33.receiver = v19;
  v33.super_class = v18;

  v17 = objc_msgSendSuper2(&v33, sel_init);
LABEL_15:
  v21 = v17;
  v32 = 0;
  v22 = [a4 storeUserIDComponents:v15 kind:v17 isDiagnosticSubmissionAllowed:a3 & 1 error:&v32];

  if (v22)
  {
    v23 = v32;
    return;
  }

  v24 = v32;
  v25 = sub_1B6AB8A70();

  swift_willThrow();
  v26 = sub_1B6AB8A60();
  if (![v26 code])
  {
    goto LABEL_22;
  }

  v27 = [v26 domain];
  v28 = sub_1B6AB92E0();
  v30 = v29;

  if (v28 == 0xD00000000000001CLL && 0x80000001B6AC9360 == v30)
  {

LABEL_22:

    return;
  }

  v31 = sub_1B6ABA0F0();

  if (v31)
  {
    goto LABEL_22;
  }

  swift_willThrow();
}

double TimestampJitter.lowerBound.getter()
{
  result = *v0;
  if (*(v0 + 16))
  {
    return 0.0;
  }

  return result;
}

double TimestampJitter.upperBound.getter()
{
  result = *(v0 + 8);
  if (*(v0 + 16))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1B6AAC370(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

id sub_1B6AAC3AC()
{
  result = [objc_allocWithZone(type metadata accessor for BridgedTimeDurationGranularityFactory()) init];
  qword_1EB95C7D0 = result;
  return result;
}

id BridgedTimeDurationGranularityFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static BridgedTimeDurationGranularityFactory.sharedInstance.getter()
{
  if (qword_1EB95AA00 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB95C7D0;

  return v1;
}

id BridgedTimeDurationGranularityFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BridgedTimeDurationGranularityFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12AppAnalytics37BridgedTimeDurationGranularityFactoryC04makedeF0yAA0cdeF0OSSF_0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B6AB9340();
  v4 = v2;
  if (v3 == 0x6473646E6F636573 && v2 == 0xEB000000006E776FLL || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (v3 == 0x7573646E6F636573 && v4 == 0xE900000000000070 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 2;
  }

  else if (v3 == 0x73646E6F636573 && v4 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t sub_1B6AAC720()
{
  result = qword_1EB95C7D8;
  if (!qword_1EB95C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C7D8);
  }

  return result;
}

uint64_t DiagnosticsConsentRequired.wrappedValue.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_1B6AB9B30();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

BOOL static DiagnosticsConsentRequired<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v25 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B6AB9B30();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v24 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v24 - v14;
  v16 = *(v13 + 48);
  v28 = v10;
  v17 = *(v10 + 16);
  v17(&v24 - v14, a1, v9);
  v17(&v15[v16], a2, v9);
  v18 = *(v7 + 48);
  if (v18(v15, 1, a3) != 1)
  {
    v17(v29, v15, v9);
    if (v18(&v15[v16], 1, a3) != 1)
    {
      v20 = v25;
      (*(v7 + 32))(v25, &v15[v16], a3);
      v21 = v29;
      v22 = sub_1B6AB92A0();
      v23 = *(v7 + 8);
      v23(v20, a3);
      v23(v21, a3);
      (*(v28 + 8))(v15, v9);
      return (v22 & 1) != 0;
    }

    (*(v7 + 8))(v29, a3);
LABEL_6:
    (*(v27 + 8))(v15, TupleTypeMetadata2);
    return 0;
  }

  if (v18(&v15[v16], 1, a3) != 1)
  {
    goto LABEL_6;
  }

  (*(v28 + 8))(v15, v9);
  return 1;
}

uint64_t DiagnosticsConsentRequired<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B6AB9B30();

  return sub_1B6AB9B50();
}

uint64_t DiagnosticsConsentRequired<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B6ABA1F0();
  sub_1B6AB9B30();
  sub_1B6AB9B50();
  return sub_1B6ABA230();
}

uint64_t sub_1B6AACC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1B6ABA1F0();
  DiagnosticsConsentRequired<A>.hash(into:)(v6, a2, v4);
  return sub_1B6ABA230();
}

uint64_t DiagnosticsConsentRequired<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v8 = sub_1B6AB9B30();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17[-v10 - 8];
  (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  sub_1B6982544(a1, v17);
  sub_1B6AB9B60();
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v4)
  {
    return (*(v9 + 40))(a4, v11, v8);
  }

  v14 = type metadata accessor for DiagnosticsConsentRequired(0, a2, v12, v13);
  return (*(*(v14 - 8) + 8))(a4, v14);
}

uint64_t KeyedDecodingContainer.decode<A>(_:forKey:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_1B6AB9B30();
  v18 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v17 - v8;
  v10 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v20;
  result = sub_1B6AB9F40();
  if (!v13)
  {
    v16 = v18;
    v15 = v19;
    if ((*(v10 + 48))(v9, 1, a1) == 1)
    {
      (*(v16 + 8))(v9, v3);
      (*(v10 + 56))(v6, 1, 1, a1);
      return DiagnosticsConsentRequired.init(wrappedValue:)(v6, a1, v15);
    }

    else
    {
      (*(v10 + 32))(v12, v9, a1);
      (*(v10 + 16))(v6, v12, a1);
      (*(v10 + 56))(v6, 0, 1, a1);
      DiagnosticsConsentRequired.init(wrappedValue:)(v6, a1, v15);
      return (*(v10 + 8))(v12, a1);
    }
  }

  return result;
}

uint64_t DiagnosticsConsentRequired<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B6AB9B30();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  sub_1B69A67E0(a2, &v9 - v6);
  sub_1B6AB9B40();
  return (*(v5 + 8))(v7, v4);
}

id BridgedDiagnosticsConsentRequired.__allocating_init(data:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___AADiagnosticsConsentRequired_data] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id BridgedDiagnosticsConsentRequired.init(data:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___AADiagnosticsConsentRequired_data] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1B6AAD340(_OWORD *a1@<X8>)
{
  v18[3] = *MEMORY[0x1E69E9840];
  sub_1B69A31EC(v18);
  if (LOBYTE(v18[0]) == 2 || (v18[0] & 1) != 0)
  {
    *a1 = 0u;
    a1[1] = 0u;
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR___AADiagnosticsConsentRequired_data);
    v18[2] = &unk_1F2E86290;
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      v7 = [v5 toDict];
      v18[0] = 0;
      v8 = [v7 toJsonValueAndReturnError_];
      v9 = v18[0];
      if (v8)
      {
        sub_1B6AB9BC0();

        swift_unknownObjectRelease();
      }

      else
      {
        v15 = v9;
        sub_1B6AB8A70();

        swift_willThrow();
      }
    }

    else
    {
      v18[1] = &unk_1F2E88D68;
      v10 = swift_dynamicCastObjCProtocolConditional();
      if (v10)
      {
        v11 = v10;
        v18[0] = 0;
        v12 = v3;
        v13 = [v11 toJsonValueAndReturnError_];
        v14 = v18[0];
        if (v13)
        {
          sub_1B6AB9BC0();

          swift_unknownObjectRelease();
        }

        else
        {
          v17 = v14;
          sub_1B6AB8A70();

          swift_willThrow();
        }
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v16 = 2;
        swift_willThrow();
      }
    }
  }
}

id BridgedDiagnosticsConsentRequired.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedDiagnosticsConsentRequired.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void BridgedDiagnosticsConsentRequired.toJsonValue()(uint64_t a1@<X8>)
{
  sub_1B6AAD340(&v4);
  if (!v1)
  {
    if (v5)
    {
      sub_1B69979CC(&v4, a1);
    }

    else
    {
      v3 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      *(a1 + 24) = sub_1B69E0520();
      *a1 = v3;
    }
  }
}

uint64_t sub_1B6AAD818(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1B6AAD998(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t *sub_1B6AADC14()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t sub_1B6AADC94()
{
  sub_1B6AADC14();

  return swift_deallocClassInstance();
}

void sub_1B6AADCEC(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1B6AAE0B4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B6AADD84(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1B6AADECC(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1B6AAE0B4(uint64_t a1)
{
  if (!qword_1EB95C868)
  {
    type metadata accessor for Tracker.Timer(255);
    v1 = sub_1B6AB9240();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95C868);
    }
  }
}

uint64_t sub_1B6AAE11C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, void *), uint64_t a6)
{
  v66 = a3;
  v68 = a6;
  v69 = a4;
  v65 = a5;
  v70 = a2;
  v62 = a1;
  v6 = sub_1B6AB90F0();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DiagnosticsConsentProvider(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B6AB8E40();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC(0);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6987C8C(0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v54 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v54 - v25;
  if (qword_1EDBC9F60 != -1)
  {
    swift_once();
  }

  v67 = v17;
  v57 = v21;
  v63 = v10;
  v58 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v64 = v71;
  if (v71)
  {
    v27 = *(v12 + 16);
    v27(v26, v71 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, v11);
    v28 = *(v12 + 56);
    v28(v26, 0, 1, v11);
  }

  else
  {
    v28 = *(v12 + 56);
    v28(v26, 1, 1, v11);
    v27 = *(v12 + 16);
  }

  v27(v24, v70, v11);
  v28(v24, 0, 1, v11);
  v29 = *(v15 + 48);
  v30 = v67;
  sub_1B699A394(v26, v67, sub_1B6987C8C);
  sub_1B699A394(v24, v30 + v29, sub_1B6987C8C);
  v31 = *(v12 + 48);
  if (v31(v30, 1, v11) == 1)
  {
    sub_1B6984DF8(v24, sub_1B6987C8C);
    sub_1B6984DF8(v26, sub_1B6987C8C);
    if (v31(v30 + v29, 1, v11) == 1)
    {
      sub_1B6984DF8(v30, sub_1B6987C8C);
LABEL_15:
      type metadata accessor for AccessTracker();
      v52 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      v52[3] = 0;
      v52[4] = 0;
      v52[5] = sub_1B6A55214;
      v52[6] = 0;
      v53 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      v53[3] = 0;
      v53[4] = 0;
      v53[5] = sub_1B6A55214;
      v53[6] = 0;
      v65(v52, v53);

      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v55 = v26;
  v32 = v30;
  v33 = v30;
  v34 = v57;
  sub_1B699A394(v32, v57, sub_1B6987C8C);
  if (v31(v33 + v29, 1, v11) == 1)
  {
    sub_1B6984DF8(v24, sub_1B6987C8C);
    sub_1B6984DF8(v55, sub_1B6987C8C);
    (*(v12 + 8))(v34, v11);
    v30 = v33;
LABEL_11:
    sub_1B6984DF8(v30, sub_1B6992BDC);
    v35 = v63;
    goto LABEL_12;
  }

  v49 = v56;
  (*(v12 + 32))(v56, v33 + v29, v11);
  sub_1B6AAFDD0();
  v50 = sub_1B6AB92A0();
  v51 = *(v12 + 8);
  v51(v49, v11);
  sub_1B6984DF8(v24, sub_1B6987C8C);
  sub_1B6984DF8(v55, sub_1B6987C8C);
  v51(v34, v11);
  sub_1B6984DF8(v33, sub_1B6987C8C);
  v35 = v63;
  if (v50)
  {
    goto LABEL_15;
  }

LABEL_12:
  sub_1B699A394(v70, v35, type metadata accessor for DiagnosticsConsentProvider);
  type metadata accessor for LazyDiagnosticStatus(0);
  v36 = swift_allocObject();
  *(v36 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v38 = v61;
  v37 = v62;
  v39 = v35;
  v40 = *&v62[OBJC_IVAR___AAAccessQueue_queue];
  v42 = v59;
  v41 = v60;
  *v59 = v40;
  (*(v41 + 104))(v42, *MEMORY[0x1E69E8020], v38);
  v43 = v40;
  v44 = sub_1B6AB9110();
  result = (*(v41 + 8))(v42, v38);
  if (v44)
  {
    sub_1B6980F64(v39, v36 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider);
    *(v36 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v37;
    v71 = v36;
    sub_1B69930AC(0);
    v46 = v37;

    swift_task_localValuePush();
    type metadata accessor for AccessTracker();
    v47 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v47[3] = 0;
    v47[4] = 0;
    v47[5] = sub_1B6A55214;
    v47[6] = 0;
    v48 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v48[3] = 0;
    v48[4] = 0;
    v48[5] = sub_1B6A55214;
    v48[6] = 0;
    v65(v47, v48);

    swift_task_localValuePop();

LABEL_16:
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6AAE978(char *a1, uint64_t a2, void (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5)
{
  v62 = a4;
  v64 = a5;
  v65 = a2;
  v61 = a3;
  v59 = a1;
  v5 = sub_1B6AB90F0();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v56 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DiagnosticsConsentProvider(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B6AB8E40();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6987C8C(0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v51 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v51 - v23;
  if (qword_1EDBC9F60 != -1)
  {
    swift_once();
  }

  v63 = v15;
  v53 = v19;
  v54 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v60 = v66;
  if (v66)
  {
    v25 = *(v10 + 16);
    v25(v24, v66 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, v9);
    v26 = *(v10 + 56);
    v26(v24, 0, 1, v9);
  }

  else
  {
    v26 = *(v10 + 56);
    v26(v24, 1, 1, v9);
    v25 = *(v10 + 16);
  }

  v25(v22, v65, v9);
  v26(v22, 0, 1, v9);
  v27 = *(v13 + 48);
  v28 = v63;
  sub_1B699A394(v24, v63, sub_1B6987C8C);
  sub_1B699A394(v22, v28 + v27, sub_1B6987C8C);
  v29 = *(v10 + 48);
  if (v29(v28, 1, v9) == 1)
  {
    sub_1B6984DF8(v22, sub_1B6987C8C);
    sub_1B6984DF8(v24, sub_1B6987C8C);
    if (v29(v28 + v27, 1, v9) == 1)
    {
      sub_1B6984DF8(v28, sub_1B6987C8C);
LABEL_15:
      type metadata accessor for AccessSessionManager();
      v49 = swift_allocObject();
      *(v49 + 16) = v64;
      type metadata accessor for AccessTracker();
      v50 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      v50[3] = 0;
      v50[4] = 0;
      v50[5] = sub_1B6A55214;
      v50[6] = 0;

      v61(v49, v50);

      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v51 = v24;
  v30 = v28;
  v31 = v28;
  v32 = v53;
  sub_1B699A394(v30, v53, sub_1B6987C8C);
  if (v29(v31 + v27, 1, v9) == 1)
  {
    sub_1B6984DF8(v22, sub_1B6987C8C);
    sub_1B6984DF8(v51, sub_1B6987C8C);
    (*(v10 + 8))(v32, v9);
    v28 = v31;
LABEL_11:
    sub_1B6984DF8(v28, sub_1B6992BDC);
    goto LABEL_12;
  }

  v46 = v52;
  (*(v10 + 32))(v52, v31 + v27, v9);
  sub_1B6AAFDD0();
  v47 = sub_1B6AB92A0();
  v48 = *(v10 + 8);
  v48(v46, v9);
  sub_1B6984DF8(v22, sub_1B6987C8C);
  sub_1B6984DF8(v51, sub_1B6987C8C);
  v48(v32, v9);
  sub_1B6984DF8(v31, sub_1B6987C8C);
  if (v47)
  {
    goto LABEL_15;
  }

LABEL_12:
  v33 = v55;
  sub_1B699A394(v65, v55, type metadata accessor for DiagnosticsConsentProvider);
  type metadata accessor for LazyDiagnosticStatus(0);
  v34 = swift_allocObject();
  *(v34 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v36 = v58;
  v35 = v59;
  v37 = *&v59[OBJC_IVAR___AAAccessQueue_queue];
  v39 = v56;
  v38 = v57;
  *v56 = v37;
  (*(v38 + 104))(v39, *MEMORY[0x1E69E8020], v36);
  v40 = v37;
  LOBYTE(v37) = sub_1B6AB9110();
  result = (*(v38 + 8))(v39, v36);
  v42 = v64;
  if (v37)
  {
    sub_1B6980F64(v33, v34 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider);
    *(v34 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v35;
    v66 = v34;
    sub_1B69930AC(0);
    v43 = v35;

    swift_task_localValuePush();
    type metadata accessor for AccessSessionManager();
    v44 = swift_allocObject();
    *(v44 + 16) = v42;
    type metadata accessor for AccessTracker();
    v45 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v45[3] = 0;
    v45[4] = 0;
    v45[5] = sub_1B6A55214;
    v45[6] = 0;

    v61(v44, v45);

    swift_task_localValuePop();

LABEL_16:
  }

  __break(1u);
  return result;
}

uint64_t DiagnosticsConsentStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](v1);
  return sub_1B6ABA230();
}

id sub_1B6AAF2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v5 = type metadata accessor for DiagnosticsConsentProvider(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8E30();
  v9 = &v8[*(v6 + 28)];
  *v9 = a3;
  *(v9 + 1) = 0;
  v10 = objc_allocWithZone(ObjCClassMetadata);
  sub_1B699A394(v8, v10 + OBJC_IVAR___AADiagnosticsConsentProvider_provider, type metadata accessor for DiagnosticsConsentProvider);
  v13.receiver = v10;
  v13.super_class = ObjCClassMetadata;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_1B6984DF8(v8, type metadata accessor for DiagnosticsConsentProvider);

  return v11;
}

id sub_1B6AAF410(uint64_t a1)
{
  v3 = type metadata accessor for DiagnosticsConsentProvider(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8E30();
  v7 = &v6[*(v4 + 28)];
  *v7 = a1;
  *(v7 + 1) = 0;
  v8 = objc_allocWithZone(v1);
  sub_1B699A394(v6, v8 + OBJC_IVAR___AADiagnosticsConsentProvider_provider, type metadata accessor for DiagnosticsConsentProvider);
  v11.receiver = v8;
  v11.super_class = v1;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_1B6984DF8(v6, type metadata accessor for DiagnosticsConsentProvider);
  return v9;
}

id static BridgedDiagnosticsConsentProvider.custom(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DiagnosticsConsentProvider(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  sub_1B6AB8E30();
  v10 = &v8[*(v6 + 28)];
  *v10 = sub_1B6AAF8F0;
  v10[1] = v9;
  v11 = objc_allocWithZone(v2);
  sub_1B699A394(v8, v11 + OBJC_IVAR___AADiagnosticsConsentProvider_provider, type metadata accessor for DiagnosticsConsentProvider);
  v14.receiver = v11;
  v14.super_class = v2;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  sub_1B6984DF8(v8, type metadata accessor for DiagnosticsConsentProvider);
  return v12;
}

id BridgedDiagnosticsConsentProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedDiagnosticsConsentProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6AAF8F0@<X0>(BOOL *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = (result & 1) == 0;
  return result;
}

uint64_t sub_1B6AAF928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x80000001B6ACF4C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B6AAF9BC(uint64_t a1)
{
  v2 = sub_1B69A3D44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6AAF9F8(uint64_t a1)
{
  v2 = sub_1B69A3D44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6AAFA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B6ABA0F0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B6AAFAB8(uint64_t a1)
{
  v2 = sub_1B69A3FE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6AAFAF4(uint64_t a1)
{
  v2 = sub_1B69A3FE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6AAFB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7463697274736572 && a2 == 0xEE006C6F6F426465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B6ABA0F0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B6AAFBC0(uint64_t a1)
{
  v2 = sub_1B69A39F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6AAFBFC(uint64_t a1)
{
  v2 = sub_1B69A39F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B6AAFC70()
{
  result = qword_1EB95C870;
  if (!qword_1EB95C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C870);
  }

  return result;
}

uint64_t sub_1B6AAFD04(uint64_t a1)
{
  result = type metadata accessor for DiagnosticsConsentProvider(319);
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

unint64_t sub_1B6AAFDD0()
{
  result = qword_1EDBCA470;
  if (!qword_1EDBCA470)
  {
    sub_1B6AB8E40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCA470);
  }

  return result;
}

unint64_t sub_1B6AAFE5C()
{
  result = qword_1EB95C888;
  if (!qword_1EB95C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C888);
  }

  return result;
}

uint64_t sub_1B6AAFEC0(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1B6AAFF74()
{
  result = qword_1EB95C890;
  if (!qword_1EB95C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C890);
  }

  return result;
}

unint64_t sub_1B6AAFFDC()
{
  result = qword_1EB95C898;
  if (!qword_1EB95C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C898);
  }

  return result;
}

void *sub_1B6AB0048(int a1, id a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = [a2 toDict];
  v3 = sub_1B6AB9210();

  v4 = 0;
  v5 = v3 + 64;
  v44 = v3;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = MEMORY[0x1E69E7CC8];
  for (i = v9; ; v9 = i)
  {
    if (!v8)
    {
      if (v9 <= v4 + 1)
      {
        v14 = v4 + 1;
      }

      else
      {
        v14 = v9;
      }

      v15 = v14 - 1;
      while (1)
      {
        v13 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v13 >= v9)
        {
          v8 = 0;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          goto LABEL_16;
        }

        v8 = *(v5 + 8 * v13);
        ++v4;
        if (v8)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }

    v13 = v4;
LABEL_15:
    v16 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v17 = v16 | (v13 << 6);
    v18 = (*(v44 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    sub_1B698FE74(*(v44 + 56) + 32 * v17, v46);
    *&v47 = v20;
    *(&v47 + 1) = v19;
    sub_1B69979CC(v46, &v48);

    v15 = v13;
LABEL_16:
    v50 = v47;
    v51[0] = v48;
    v51[1] = v49;
    v21 = *(&v47 + 1);
    if (!*(&v47 + 1))
    {
      break;
    }

    v22 = v50;
    sub_1B69979CC(v51, &v47);
    sub_1B6AB0618();
    if (!swift_dynamicCast())
    {

      sub_1B69E69F4();
      swift_allocError();
      *v41 = 2;
      swift_willThrow();
      break;
    }

    v23 = v46[0];
    v46[0] = 0;
    v24 = [v23 toJsonValueAndReturnError_];
    v25 = v46[0];
    if (!v24)
    {
      v42 = v25;

      sub_1B6AB8A70();

      swift_willThrow();
      swift_unknownObjectRelease();
      break;
    }

    v26 = v5;
    v27 = v15;
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
    sub_1B69979CC(&v47, v46);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = sub_1B6993940(v22, v21);
    v31 = v10[2];
    v32 = (v30 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      goto LABEL_35;
    }

    v35 = v30;
    if (v10[3] < v34)
    {
      sub_1B69976F8(v34, isUniquelyReferenced_nonNull_native);
      v29 = sub_1B6993940(v22, v21);
      if ((v35 & 1) != (v36 & 1))
      {
        result = sub_1B6ABA190();
        __break(1u);
        return result;
      }

LABEL_24:
      if (v35)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v40 = v29;
    sub_1B69DDC84();
    v29 = v40;
    if (v35)
    {
LABEL_4:
      v11 = v29;

      v12 = (v10[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_1(v12);
      sub_1B69979CC(v46, v12);
      swift_unknownObjectRelease();
      goto LABEL_5;
    }

LABEL_25:
    v10[(v29 >> 6) + 8] |= 1 << v29;
    v37 = (v10[6] + 16 * v29);
    *v37 = v22;
    v37[1] = v21;
    sub_1B69979CC(v46, (v10[7] + 32 * v29));
    swift_unknownObjectRelease();
    v38 = v10[2];
    v33 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v33)
    {
      goto LABEL_36;
    }

    v10[2] = v39;
LABEL_5:
    v4 = v27;
    v5 = v26;
  }

  return v10;
}

uint64_t sub_1B6AB0494(void *a1)
{
  sub_1B69E69F4();
  swift_allocError();
  *v2 = 1;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B6AB04F0()
{
  sub_1B69E69F4();
  swift_allocError();
  *v0 = 1;
  return swift_willThrow();
}

unint64_t sub_1B6AB0540(uint64_t a1)
{
  *(a1 + 8) = sub_1B6AB0570();
  result = sub_1B6AB05C4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6AB0570()
{
  result = qword_1EDBC98C0;
  if (!qword_1EDBC98C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC98C0);
  }

  return result;
}

unint64_t sub_1B6AB05C4()
{
  result = qword_1EDBC98C8;
  if (!qword_1EDBC98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC98C8);
  }

  return result;
}

unint64_t sub_1B6AB0618()
{
  result = qword_1EDBCA298[0];
  if (!qword_1EDBCA298[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDBCA298);
  }

  return result;
}

id sub_1B6AB067C(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  v6 = v5;
  v7 = (*(a2 + 24))(a1, a2);
  v9 = v8;
  v10 = (*(a2 + 32))(a1, a2);
  v11 = (*(a2 + 48))(a1, a2);
  v13 = v12;
  v14 = type metadata accessor for BridgedProcessEvent();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR___AAProcessEvent_name];
  *v16 = v4;
  v16[1] = v6;
  v17 = &v15[OBJC_IVAR___AAProcessEvent_version];
  *v17 = v7;
  v17[1] = v9;
  *&v15[OBJC_IVAR___AAProcessEvent_json] = v10;
  v18 = &v15[OBJC_IVAR___AAProcessEvent_groupName];
  *v18 = v11;
  v18[1] = v13;
  v20.receiver = v15;
  v20.super_class = v14;
  return objc_msgSendSuper2(&v20, sel_init);
}

double ProcessEvent.init(name:json:nonJitteredEventTimestamp:groupName:groupContentType:userInfo:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, _OWORD *a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 3) = 0x302E312E30;
  *(a9 + 4) = 0xE500000000000000;
  *(a9 + 2) = a3;
  v18 = type metadata accessor for ProcessEvent(0, a11, a12, a4);
  v19 = v18[11];
  v20 = sub_1B6AB8DB0();
  (*(*(v20 - 8) + 32))(&a9[v19], a4, v20);
  v21 = &a9[v18[12]];
  *v21 = a5;
  *(v21 + 1) = a6;
  v22 = &a9[v18[13]];
  *v22 = a7;
  v22[8] = a8 & 1;
  v23 = &a9[v18[14]];
  v24 = a10[1];
  *v23 = *a10;
  *(v23 + 1) = v24;
  *&result = 5;
  *&a9[v18[15]] = xmmword_1B6AC0320;
  return result;
}

uint64_t ProcessEventType.payload()(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t))
{
  v5 = sub_1B6AB8DB0();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v31 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7CA0];
  sub_1B6AB0D54(0, &qword_1EDBCB610, &qword_1EDBCAFF8, MEMORY[0x1E69E7CA0] + 8);
  inited = swift_initStackObject();
  *(inited + 32) = 1635017060;
  *(inited + 16) = xmmword_1B6ABD530;
  *(inited + 40) = 0xE400000000000000;
  v9 = a2[4];
  v32 = a1;
  v10 = v9(a1, a2);
  v11 = JSON.payload()();
  if (v2)
  {
    v12 = v2;

    swift_setDeallocating();
    sub_1B69B49CC(0, &qword_1EDBCAFF8, v7 + 8);
    swift_arrayDestroy();
    return v12;
  }

  v13 = v11;
  v30[0] = inited + 32;
  v30[1] = 0;

  sub_1B6988294(0, &qword_1EDBCCC60, v7 + 8);
  *(inited + 48) = v13;
  *(inited + 72) = v14;
  *(inited + 80) = 0x617461646174656DLL;
  *(inited + 88) = 0xE800000000000000;
  v15 = MEMORY[0x1E69E6158];
  sub_1B6AB0D54(0, &qword_1EDBCAFB8, &qword_1EDBCB000, MEMORY[0x1E69E6158]);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1B6ABF500;
  *(v16 + 32) = 1701667182;
  *(v16 + 40) = 0xE400000000000000;
  v17 = v32;
  *(v16 + 48) = a2[2](v32, a2);
  *(v16 + 56) = v18;
  *(v16 + 64) = 0x6E6F6973726576;
  *(v16 + 72) = 0xE700000000000000;
  *(v16 + 80) = a2[3](v17, a2);
  *(v16 + 88) = v19;
  v20 = sub_1B69A7EF8(v16);
  swift_setDeallocating();
  sub_1B69B49CC(0, &qword_1EDBCB000, v15);
  swift_arrayDestroy();
  sub_1B6988294(0, &qword_1EDBCB668, v15);
  *(inited + 96) = v20;
  *(inited + 120) = v21;
  *(inited + 128) = 0x4D65746176697270;
  *(inited + 136) = 0xEF61746164617465;
  sub_1B6AB0D54(0, &qword_1EDBC9B68, &qword_1EDBC9BE0, MEMORY[0x1E69E7360]);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1B6ABD890;
  *(v22 + 32) = 0xD000000000000019;
  *(v22 + 40) = 0x80000001B6ACAC30;
  v23 = v31;
  a2[5](v17, a2);
  sub_1B6AB8D60();
  v25 = v24;
  result = (*(v33 + 8))(v23, v34);
  v27 = v25 * 1000.0;
  if (COERCE__INT64(fabs(v25 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v27 < 9.22337204e18)
  {
    *(v22 + 48) = v27;
    v28 = sub_1B69F7164(v22);
    swift_setDeallocating();
    sub_1B6AB1298(v22 + 32);
    sub_1B6988294(0, &qword_1EDBC9BE8, MEMORY[0x1E69E7360]);
    *(inited + 168) = v29;
    *(inited + 144) = v28;
    v12 = sub_1B69B4888(inited);
    swift_setDeallocating();
    sub_1B69B49CC(0, &qword_1EDBCAFF8, MEMORY[0x1E69E7CA0] + 8);
    swift_arrayDestroy();
    return v12;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1B6AB0D54(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1B69B49CC(255, a3, a4);
    v5 = sub_1B6ABA090();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t ProcessEvent.name.getter()
{
  v0 = sub_1B6AB1270();

  return v0;
}

id ProcessEvent.json.getter()
{
  v0 = sub_1B6AB1280();

  return v0;
}

uint64_t ProcessEvent.version.getter()
{
  v0 = sub_1B6AB1278();

  return v0;
}

uint64_t ProcessEvent.nonJitteredEventTimestamp.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1B6AB8DB0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ProcessEvent.groupName.getter(uint64_t a1)
{
  v1 = sub_1B6AB1288(a1);

  return v1;
}

__n128 ProcessEvent.timestampConfiguration.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(v2 + *(a1 + 60));
  *a2 = result;
  return result;
}

double ProcessEvent.init(name:json:groupName:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[3] = 0x302E312E30;
  a8[4] = 0xE500000000000000;
  a8[2] = a3;
  v11 = type metadata accessor for ProcessEvent(0, a6, a7, a4);
  sub_1B6AB8DA0();
  v12 = (a8 + v11[12]);
  *v12 = a4;
  v12[1] = a5;
  v13 = a8 + v11[13];
  *v13 = 0;
  v13[8] = 1;
  v14 = (a8 + v11[14]);
  *v14 = 0u;
  v14[1] = 0u;
  *&result = 5;
  *(a8 + v11[15]) = xmmword_1B6AC0320;
  return result;
}

double ProcessEvent.init(name:json:groupName:groupContentType:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  a9[3] = 0x302E312E30;
  a9[4] = 0xE500000000000000;
  a9[2] = a3;
  v15 = type metadata accessor for ProcessEvent(0, a8, a10, a4);
  sub_1B6AB8DA0();
  v16 = (a9 + v15[12]);
  *v16 = a4;
  v16[1] = a5;
  v17 = a9 + v15[13];
  *v17 = a6;
  v17[8] = a7 & 1;
  v18 = (a9 + v15[14]);
  *v18 = 0u;
  v18[1] = 0u;
  *&result = 5;
  *(a9 + v15[15]) = xmmword_1B6AC0320;
  return result;
}

double ProcessEvent.init(name:json:groupName:groupContentType:userInfo:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, _OWORD *a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  a9[3] = 0x302E312E30;
  a9[4] = 0xE500000000000000;
  a9[2] = a3;
  v17 = type metadata accessor for ProcessEvent(0, a10, a11, a4);
  sub_1B6AB8DA0();
  v18 = (a9 + v17[12]);
  *v18 = a4;
  v18[1] = a5;
  v19 = a9 + v17[13];
  *v19 = a6;
  v19[8] = a7 & 1;
  v20 = (a9 + v17[14]);
  v21 = a8[1];
  *v20 = *a8;
  v20[1] = v21;
  *&result = 5;
  *(a9 + v17[15]) = xmmword_1B6AC0320;
  return result;
}

uint64_t sub_1B6AB115C()
{
  v0 = sub_1B6AB1270();

  return v0;
}

uint64_t sub_1B6AB1194()
{
  v0 = sub_1B6AB1278();

  return v0;
}

id sub_1B6AB11CC()
{
  v0 = sub_1B6AB1280();

  return v0;
}

uint64_t sub_1B6AB11F8(uint64_t a1)
{
  v1 = sub_1B6AB1288(a1);

  return v1;
}

uint64_t sub_1B6AB1298(uint64_t a1)
{
  sub_1B69B49CC(0, &qword_1EDBC9BE0, MEMORY[0x1E69E7360]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B6AB13D8(uint64_t a1, uint64_t a2)
{
  if (a1 >= 1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithInteger_];
    v4 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v4 setNumberStyle_];
    [v4 setUsesSignificantDigits_];
    [v4 setMaximumSignificantDigits_];
    v5 = [v4 stringFromNumber_];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1B6AB92E0();
      v9 = v8;

      v10 = HIBYTE(v9) & 0xF;
      v11 = v7 & 0xFFFFFFFFFFFFLL;
      if ((v9 & 0x2000000000000000) != 0)
      {
        v12 = HIBYTE(v9) & 0xF;
      }

      else
      {
        v12 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        if ((v9 & 0x1000000000000000) != 0)
        {
          v39 = 0;
          sub_1B6AB1B98(v7, v9, 10);
          goto LABEL_65;
        }

        if ((v9 & 0x2000000000000000) != 0)
        {
          v38[0] = v7;
          v38[1] = v9 & 0xFFFFFFFFFFFFFFLL;
          if (v7 == 43)
          {
            if (v10)
            {
              if (--v10)
              {
                v27 = 0;
                v28 = v38 + 1;
                while (1)
                {
                  v29 = *v28 - 48;
                  if (v29 > 9)
                  {
                    break;
                  }

                  v30 = 10 * v27;
                  if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                  {
                    break;
                  }

                  v27 = v30 + v29;
                  if (__OFADD__(v30, v29))
                  {
                    break;
                  }

                  ++v28;
                  if (!--v10)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_63;
            }

            goto LABEL_74;
          }

          if (v7 != 45)
          {
            if (v10)
            {
              v34 = 0;
              v35 = v38;
              while (1)
              {
                v36 = *v35 - 48;
                if (v36 > 9)
                {
                  break;
                }

                v37 = 10 * v34;
                if ((v34 * 10) >> 64 != (10 * v34) >> 63)
                {
                  break;
                }

                v34 = v37 + v36;
                if (__OFADD__(v37, v36))
                {
                  break;
                }

                ++v35;
                if (!--v10)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

          if (v10)
          {
            if (--v10)
            {
              v19 = 0;
              v20 = v38 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  break;
                }

                v22 = 10 * v19;
                if ((v19 * 10) >> 64 != (10 * v19) >> 63)
                {
                  break;
                }

                v19 = v22 - v21;
                if (__OFSUB__(v22, v21))
                {
                  break;
                }

                ++v20;
                if (!--v10)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }
        }

        else
        {
          if ((v7 & 0x1000000000000000) != 0)
          {
            v13 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v13 = sub_1B6AB9D40();
          }

          v14 = *v13;
          if (v14 == 43)
          {
            if (v11 >= 1)
            {
              v10 = v11 - 1;
              if (v11 != 1)
              {
                v23 = 0;
                if (v13)
                {
                  v24 = v13 + 1;
                  while (1)
                  {
                    v25 = *v24 - 48;
                    if (v25 > 9)
                    {
                      goto LABEL_63;
                    }

                    v26 = 10 * v23;
                    if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                    {
                      goto LABEL_63;
                    }

                    v23 = v26 + v25;
                    if (__OFADD__(v26, v25))
                    {
                      goto LABEL_63;
                    }

                    ++v24;
                    if (!--v10)
                    {
                      goto LABEL_64;
                    }
                  }
                }

                goto LABEL_55;
              }

              goto LABEL_63;
            }

            goto LABEL_73;
          }

          if (v14 != 45)
          {
            if (v11)
            {
              v31 = 0;
              if (v13)
              {
                while (1)
                {
                  v32 = *v13 - 48;
                  if (v32 > 9)
                  {
                    goto LABEL_63;
                  }

                  v33 = 10 * v31;
                  if ((v31 * 10) >> 64 != (10 * v31) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v31 = v33 + v32;
                  if (__OFADD__(v33, v32))
                  {
                    goto LABEL_63;
                  }

                  ++v13;
                  if (!--v11)
                  {
                    goto LABEL_55;
                  }
                }
              }

              goto LABEL_55;
            }

LABEL_63:
            LOBYTE(v10) = 1;
            goto LABEL_64;
          }

          if (v11 >= 1)
          {
            v10 = v11 - 1;
            if (v11 != 1)
            {
              v15 = 0;
              if (v13)
              {
                v16 = v13 + 1;
                while (1)
                {
                  v17 = *v16 - 48;
                  if (v17 > 9)
                  {
                    goto LABEL_63;
                  }

                  v18 = 10 * v15;
                  if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v15 = v18 - v17;
                  if (__OFSUB__(v18, v17))
                  {
                    goto LABEL_63;
                  }

                  ++v16;
                  if (!--v10)
                  {
                    goto LABEL_64;
                  }
                }
              }

LABEL_55:
              LOBYTE(v10) = 0;
LABEL_64:
              v39 = v10;
LABEL_65:

              return;
            }

            goto LABEL_63;
          }

          __break(1u);
        }

        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        return;
      }
    }
  }
}

uint64_t sub_1B6AB17A0(uint64_t a1, unint64_t a2)
{
  v2 = sub_1B6AB9460();
  v6 = sub_1B6AB1820(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1B6AB1820(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1B6AB9B70();
    if (!v9 || (v10 = v9, v11 = sub_1B699004C(v9, 0), v12 = sub_1B6AB1978(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1B6AB9370();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B6AB9370();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1B6AB9D40();
LABEL_4:

  return sub_1B6AB9370();
}

unint64_t sub_1B6AB1978(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1B69D5E18(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B6AB9400();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1B6AB9D40();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1B69D5E18(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1B6AB93D0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1B6AB1B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1B6AB9450();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B6AB17A0(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B6AB9D40();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

void sub_1B6AB2124()
{
  if (!qword_1EDBCAFB0)
  {
    v0 = sub_1B6ABA090();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBCAFB0);
    }
  }
}

id sub_1B6AB2174()
{
  v0 = type metadata accessor for BridgedPrivacyValidation();
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR___AAPrivacyValidation_enabled] = 0;
  *&v1[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors] = MEMORY[0x1E69E7CD0];
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, sel_init);
  qword_1EDBC8A20 = result;
  return result;
}

id BridgedPrivacyValidation.__allocating_init(enabled:denylistDescriptors:)(char a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR___AAPrivacyValidation_enabled] = a1;
  *&v5[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id static BridgedPrivacyValidation.default.getter()
{
  if (qword_1EDBC8A18 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBC8A20;

  return v1;
}

id BridgedPrivacyValidation.init(enabled:denylistDescriptors:)(char a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR___AAPrivacyValidation_enabled] = a1;
  *&v2[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id BridgedPrivacyValidation.with(enabled:)(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR___AAPrivacyValidation_denylistDescriptors);
  v5 = objc_allocWithZone(ObjectType);
  v5[OBJC_IVAR___AAPrivacyValidation_enabled] = a1;
  *&v5[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors] = v4;
  v7.receiver = v5;
  v7.super_class = ObjectType;

  return objc_msgSendSuper2(&v7, sel_init);
}

id BridgedPrivacyValidation.with(denylistDescriptors:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR___AAPrivacyValidation_enabled);
  v5 = objc_allocWithZone(ObjectType);
  v5[OBJC_IVAR___AAPrivacyValidation_enabled] = v4;
  *&v5[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors] = a1;
  v7.receiver = v5;
  v7.super_class = ObjectType;

  return objc_msgSendSuper2(&v7, sel_init);
}

id BridgedPrivacyValidation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedPrivacyValidation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SummaryEventMetaData(uint64_t a1)
{
  result = qword_1EDBC90B0;
  if (!qword_1EDBC90B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6AB2844(uint64_t a1)
{
  result = sub_1B6AB8DB0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B6AB28B0(void *a1)
{
  sub_1B6AB3180(0, &qword_1EB95C8C0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6AB306C();
  sub_1B6ABA2D0();
  v9[15] = 0;
  sub_1B6AB8DB0();
  sub_1B6AB31E4(&qword_1EDBCB5B0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1B6ABA040();
  if (!v1)
  {
    type metadata accessor for SummaryEventMetaData(0);
    v9[14] = 1;
    sub_1B6ABA040();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B6AB2A84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v30 = sub_1B6AB8DB0();
  v26 = *(v30 - 8);
  v4 = MEMORY[0x1EEE9AC00](v30);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v21 - v7;
  sub_1B6AB3180(0, &qword_1EB95C8B0, MEMORY[0x1E69E6F48]);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for SummaryEventMetaData(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6AB306C();
  sub_1B6ABA2A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v12;
  v23 = v6;
  v24 = v14;
  v15 = v26;
  v32 = 0;
  sub_1B6AB31E4(&qword_1EDBC8C70, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v16 = v27;
  v17 = v28;
  sub_1B6AB9F90();
  v27 = *(v15 + 32);
  (v27)(v24, v16, v30);
  v31 = 1;
  v18 = v23;
  sub_1B6AB9F90();
  (*(v29 + 8))(v11, v17);
  v19 = v24;
  (v27)(&v24[*(v22 + 20)], v18, v30);
  sub_1B6AB30C0(v19, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B6AB3124(v19);
}

uint64_t sub_1B6AB2E30()
{
  if (*v0)
  {
    return 0x6465646E65;
  }

  else
  {
    return 0x64657472617473;
  }
}

uint64_t sub_1B6AB2E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657472617473 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B6ABA0F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465646E65 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B6ABA0F0();

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

uint64_t sub_1B6AB2F40(uint64_t a1)
{
  v2 = sub_1B6AB306C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6AB2F7C(uint64_t a1)
{
  v2 = sub_1B6AB306C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6AB2FE8(uint64_t a1)
{
  *(a1 + 8) = sub_1B6AB31E4(&qword_1EB95C5E0, type metadata accessor for SummaryEventMetaData, &unk_1B6AC7D00);
  result = sub_1B6AB31E4(&qword_1EB95BA10, type metadata accessor for SummaryEventMetaData, &unk_1B6AC7CD8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6AB306C()
{
  result = qword_1EB95C8B8;
  if (!qword_1EB95C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C8B8);
  }

  return result;
}

uint64_t sub_1B6AB30C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryEventMetaData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6AB3124(uint64_t a1)
{
  v2 = type metadata accessor for SummaryEventMetaData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B6AB3180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6AB306C();
    v7 = a3(a1, &type metadata for SummaryEventMetaData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B6AB31E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B6AB3240()
{
  result = qword_1EB95C8C8;
  if (!qword_1EB95C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C8C8);
  }

  return result;
}

unint64_t sub_1B6AB3298()
{
  result = qword_1EB95C8D0;
  if (!qword_1EB95C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C8D0);
  }

  return result;
}

unint64_t sub_1B6AB32F0()
{
  result = qword_1EB95C8D8;
  if (!qword_1EB95C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C8D8);
  }

  return result;
}

uint64_t dispatch thunk of StorefrontProviderType.storefrontID()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B6AB345C;

  return v7(a1, a2);
}

uint64_t sub_1B6AB345C(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DataEventFormatter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DataEventFormatter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void (*sub_1B6AB360C(void (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;
      swift_unknownObjectRetain();
      v5(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1B6AB3740(void (*a1)(char *), uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v20 = a1;
  sub_1B69ABFCC(0, a4, a5, MEMORY[0x1E69E8660]);
  v22 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v19 = v8 + 16;
  v21 = (v8 + 8);
  v23 = a3;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
      v18 = v22;
LABEL_9:
      (*(v8 + 16))(v10, *(v23 + 56) + *(v8 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v18);
      v20(v10);
      if (v5)
      {
        break;
      }

      v14 &= v14 - 1;
      (*v21)(v10, v18);
      v16 = v17;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    (*v21)(v10, v18);
LABEL_13:
  }

  else
  {
LABEL_5:
    v18 = v22;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
        goto LABEL_13;
      }

      v14 = *(v11 + 8 * v17);
      ++v16;
      if (v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

void (*sub_1B6AB3954(void (*result)(uint64_t *), uint64_t a2, unint64_t a3))(uint64_t *)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B8C98510](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_1B6AB9E60();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1B6AB3A74()
{
  if ([objc_opt_self() isMainThread])
  {
    sub_1B6AB9660();
    return sub_1B6AB3BA0(sub_1B6AB4938, v0, "AppAnalytics/LazyEventProcessor.swift", 37, 2, 52);
  }

  else
  {
    v2 = *(v0 + 32);
    os_unfair_lock_lock((v2 + 24));
    sub_1B6AB491C((v2 + 16), &v3);
    os_unfair_lock_unlock((v2 + 24));
    return v3;
  }
}

double sub_1B6AB3B2C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = (*(a1 + 16))();
    *(a1 + 40) = v5;
  }

  *a2 = v5;

  return result;
}

uint64_t sub_1B6AB3BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B6AB9650();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    sub_1B6AB4954(v15);
    if (v6)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v15[0];
    v12 = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_1B6AB9CA0();
  MEMORY[0x1B8C97BE0](0xD00000000000003FLL, 0x80000001B6ACF680);
  v14 = sub_1B6ABA330();
  MEMORY[0x1B8C97BE0](v14);

  MEMORY[0x1B8C97BE0](46, 0xE100000000000000);
  result = sub_1B6AB9E40();
  __break(1u);
  return result;
}

double sub_1B6AB3D58@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    if ([objc_opt_self() isMainThread])
    {
      sub_1B6AB9660();
      v7 = sub_1B6AB3BA0(sub_1B6AB4998, a2, "AppAnalytics/LazyEventProcessor.swift", 37, 2, 183);
    }

    else
    {
      sub_1B698C854();
      v8 = sub_1B6AB9990();
      sub_1B69AB940(0);
      sub_1B6AB99A0();

      v7 = v10;
    }

    *a1 = v7;
  }

  *a3 = v4;

  return result;
}

double sub_1B6AB3E70@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = a1;
    v5 = (*(a1 + 16))();
    *(v6 + 40) = v5;
  }

  *a2 = v5;

  return result;
}

void *LazyEventProcessor.__allocating_init(underlyingProcessorProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[5] = 0;
  v4[2] = a1;
  v4[3] = a2;
  sub_1B69AB9AC(0);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  v4[4] = v5;
  return v4;
}

Swift::Void __swiftcall LazyEventProcessor.resolve()()
{
  sub_1B6AB3A74();
}

uint64_t LazyEventProcessor.deinit()
{

  return v0;
}

uint64_t LazyEventProcessor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t LazyEventProcessor.process<A>(processEvent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6AB3A74();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  sub_1B6AB360C(sub_1B6AB406C, v8, v6);
}

uint64_t sub_1B6AB406C(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = a1[1];
  ObjectType = swift_getObjectType();
  return (*(v5 + 8))(v4, v2, v3, ObjectType, v5);
}

uint64_t LazyEventProcessor.didEnterGroup(_:)(uint64_t a1)
{
  result = sub_1B6AB3A74();
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (result + 40);
    while (v5 < *(v3 + 16))
    {
      ++v5;
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 16);
      swift_unknownObjectRetain();
      v9(a1, ObjectType, v7);
      result = swift_unknownObjectRelease();
      v6 += 2;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }

  return result;
}

uint64_t LazyEventProcessor.didLeaveGroup(_:)(uint64_t a1)
{
  result = sub_1B6AB3A74();
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (result + 40);
    while (v5 < *(v3 + 16))
    {
      ++v5;
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 24);
      swift_unknownObjectRetain();
      v9(a1, ObjectType, v7);
      result = swift_unknownObjectRelease();
      v6 += 2;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }

  return result;
}

uint64_t sub_1B6AB42C0(uint64_t a1, void (*a2)(__int128 *))
{
  v4 = sub_1B6AB3A74();
  v6[2] = a1;
  sub_1B6AB360C(a2, v6, v4);
}

uint64_t LazyEventProcessor.didEndSession(_:endDate:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB3A74();
  v6[2] = a1;
  v6[3] = a2;
  sub_1B6AB360C(sub_1B6AB43A0, v6, v4);
}

uint64_t sub_1B6AB43F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *))
{
  v6 = sub_1B6AB3A74();
  v8[2] = a1;
  sub_1B6AB360C(a4, v8, v6);
}

uint64_t sub_1B6AB4450(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB3A74();
  v6[2] = a1;
  v6[3] = a2;
  sub_1B6AB360C(sub_1B6AB49A0, v6, v4);
}

void LazyEventProcessor.flush(callbackQueue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = dispatch_group_create();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1B6AB3A74();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v4 + 32;
    while (v7 < *(v5 + 16))
    {
      aBlock[6] = &unk_1F2E868A0;
      v12 = swift_dynamicCastObjCProtocolConditional();
      if (v12)
      {
        v13 = v12;
        swift_unknownObjectRetain();
        if (v3)
        {
          dispatch_group_enter(v3);
        }

        v9 = swift_allocObject();
        *(v9 + 16) = v3;
        aBlock[4] = sub_1B6AB46C8;
        aBlock[5] = v9;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B698E534;
        aBlock[3] = &block_descriptor_17;
        v10 = _Block_copy(aBlock);
        v11 = v3;

        [v13 flushWithCallbackQueue:a1 completion:v10];
        _Block_release(v10);
        swift_unknownObjectRelease();
      }

      ++v7;
      v8 += 16;
      if (v6 == v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    if (v3)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = a2;
      *(v14 + 24) = a3;
      v15 = v3;
      sub_1B69A18C0(a2);
      sub_1B69877A4(a1, sub_1B6A0A80C, v14);
    }
  }
}

void sub_1B6AB46C8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

uint64_t sub_1B6AB47F0(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(v3, v2, ObjectType, v4);
}

uint64_t sub_1B6AB485C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  ObjectType = swift_getObjectType();
  return (*(v3 + 40))(v2, ObjectType, v3);
}

uint64_t sub_1B6AB48BC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  ObjectType = swift_getObjectType();
  return (*(v3 + 32))(v2, ObjectType, v3);
}

void *sub_1B6AB4954@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

double CrashDetectorType.lastSessionCrashDetails.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1B6AC3610;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t static CrashDetector.shared.setter(uint64_t a1)
{
  if (qword_1EDBCADE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDBCADE8 = a1;
}

uint64_t (*static CrashDetector.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDBCADE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B6AB4B20@<X0>(void *a1@<X8>)
{
  if (qword_1EDBCADE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EDBCADE8;
}

uint64_t sub_1B6AB4BA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EDBCADE0;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDBCADE8 = v1;
}

uint64_t CrashDetector.crashDetected.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 72));
  return v2;
}

void CrashDetector.lastSessionCrashDetails.getter(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  v9 = *(v3 + 64);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  sub_1B69EC458(v4, v5, v6, v7, v8, v9);

  os_unfair_lock_unlock((v3 + 72));
}

uint64_t sub_1B6AB4CBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_1B6AB92B0();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
    sub_1B6981634(v7);
    v4 = sub_1B6AB92B0();
    v5 = [v1 BOOLForKey_];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    sub_1B6981634(v7);
    return 1;
  }

  return v5;
}

uint64_t sub_1B6AB4D9C(char a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    v11 = *(Strong + 24);

    os_unfair_lock_lock((v11 + 72));
    *(v11 + 17) = a1 & 1;
    v33 = a1;
    v13 = *(v11 + 24);
    v12 = *(v11 + 32);
    v14 = *(v11 + 40);
    v31 = *(v11 + 56);
    v32 = *(v11 + 48);
    v30 = *(v11 + 64);
    *(v11 + 24) = v4;
    *(v11 + 32) = v5;
    *(v11 + 40) = v6;
    *(v11 + 48) = v7;
    *(v11 + 56) = v8;
    *(v11 + 64) = v9;
    sub_1B69EC458(v4, v5, v6, v7, v8, v9);
    sub_1B6AB6730(v13, v12, v14, v32, v31, v30);
    os_unfair_lock_unlock((v11 + 72));

    v15 = *(v34 + 24);
    os_unfair_lock_lock((v15 + 72));
    v16 = *(v15 + 16);
    os_unfair_lock_unlock((v15 + 72));
    if (qword_1EB95A9D8 != -1)
    {
      swift_once();
    }

    v17 = qword_1EB95C350;
    v18 = sub_1B6AB9900();
    sub_1B69868C0(0, &qword_1EDBCCC50, sub_1B6994A40, MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1B6ABF500;
    v20 = sub_1B698CEC0();
    v21 = MEMORY[0x1E69E6158];
    v22 = 1702195828;
    if (v16)
    {
      v23 = 1702195828;
    }

    else
    {
      v23 = 0x65736C6166;
    }

    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = v20;
    if (v16)
    {
      v24 = 0xE400000000000000;
    }

    else
    {
      v24 = 0xE500000000000000;
    }

    *(v19 + 32) = v23;
    *(v19 + 40) = v24;
    if (v33)
    {
      v25 = 0xE400000000000000;
    }

    else
    {
      v22 = 0x65736C6166;
      v25 = 0xE500000000000000;
    }

    *(v19 + 96) = v21;
    *(v19 + 104) = v20;
    *(v19 + 72) = v22;
    *(v19 + 80) = v25;
    sub_1B6AB8F70("Crash detection comparison - Defaults: %{public}@, Biome: %{public}@", 68, 2, &dword_1B697C000, v17, v18, v19, v30, v31, v32);

    v26 = sub_1B6AB9900();
    if (v33)
    {
      sub_1B6AB8F70("Biome crash detection - crash detected from prior session", 57, 2, &dword_1B697C000, v17, v26, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      sub_1B6AB8F70("Biome crash detection - no crash detected in prior session", 58, 2, &dword_1B697C000, v17, v26, MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    if (qword_1EB95A9D8 != -1)
    {
      swift_once();
    }

    v27 = qword_1EB95C350;
    v28 = sub_1B6AB98E0();
    return sub_1B6AB8F70("Self was deallocated during Biome crash stream query", 52, 2, &dword_1B697C000, v27, v28, MEMORY[0x1E69E7CC0]);
  }
}

void sub_1B6AB509C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B69868C0(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v26 - v6;
  v8 = [BiomeLibrary() OSAnalytics];
  swift_unknownObjectRelease();
  v9 = [v8 Stability];
  swift_unknownObjectRelease();
  v10 = [v9 Crash];
  swift_unknownObjectRelease();
  v11 = sub_1B6AB8DB0();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v7, 1, 1, v11);
  v13 = sub_1B6AB8D20();
  v14 = 0;
  if ((*(v12 + 48))(v7, 1, v11) != 1)
  {
    v14 = sub_1B6AB8D20();
    (*(v12 + 8))(v7, v11);
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E698F2D0]) initWithStartDate:v13 endDate:v14 maxEvents:1 lastN:1 reversed:0];

  v16 = sub_1B6AB92B0();
  v17 = [v10 publisherWithUseCase:v16 options:v15];

  sub_1B6AB66D0();
  v18 = sub_1B6AB9500();
  v31 = sub_1B6AB5520;
  v32 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1B6AB568C;
  v30 = &block_descriptor_18;
  v19 = _Block_copy(&aBlock);
  v20 = [v17 reduceWithInitial:v18 nextPartialResult:v19];
  _Block_release(v19);

  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  v31 = sub_1B6AB671C;
  v32 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1B6AB5A9C;
  v30 = &block_descriptor_8_0;
  v22 = _Block_copy(&aBlock);

  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = v26[1];
  v31 = sub_1B6AB6724;
  v32 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1B6AB6250;
  v30 = &block_descriptor_14_0;
  v24 = _Block_copy(&aBlock);

  v25 = [v20 sinkWithCompletion:v22 receiveInput:v24];
  _Block_release(v24);
  _Block_release(v22);
}

void sub_1B6AB5520(id a1@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v5 = [a1 eventBody];
  if (v5)
  {
    v6 = v5;
    sub_1B698FE74(a2, v12);
    sub_1B69868C0(0, &qword_1EB95C8F0, sub_1B6AB66D0, MEMORY[0x1E69E62F8]);
    v8 = v7;
    if (swift_dynamicCast())
    {
      v13 = v11;
      v9 = v6;
      MEMORY[0x1B8C97D30]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B6AB9540();
      }

      sub_1B6AB9580();
      v10 = v13;
      a3[3] = v8;

      *a3 = v10;
    }

    else
    {

      sub_1B698FE74(a2, a3);
    }
  }

  else
  {

    sub_1B698FE74(a2, a3);
  }
}

id sub_1B6AB568C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v10[3] = swift_getObjectType();
  v10[0] = a2;

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v9, v10, v6);

  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v7 = sub_1B6ABA0E0();
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_destroy_boxed_opaque_existential_1(v10);

  return v7;
}

uint64_t sub_1B6AB5750(void *a1, uint64_t (*a2)(void, _OWORD *))
{
  v4 = [a1 state];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = [a1 error];
      if (v5)
      {
        v6 = v5;
        if (qword_1EB95A9D8 != -1)
        {
          swift_once();
        }

        v7 = qword_1EB95C350;
        v8 = sub_1B6AB98E0();
        sub_1B69868C0(0, &qword_1EDBCCC50, sub_1B6994A40, MEMORY[0x1E69E6F90]);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1B6ABD890;
        swift_getErrorValue();
        v10 = sub_1B6ABA1A0();
        v12 = v11;
        *(v9 + 56) = MEMORY[0x1E69E6158];
        *(v9 + 64) = sub_1B698CEC0();
        *(v9 + 32) = v10;
        *(v9 + 40) = v12;
        sub_1B6AB8F70("Error querying Biome crash stream: %{public}@", 45, 2, &dword_1B697C000, v7, v8, v9);
      }

      v21[0] = xmmword_1B6AC3610;
      memset(&v21[1], 0, 32);
      return a2(0, v21);
    }

    else
    {
      if (qword_1EB95A9D8 != -1)
      {
        swift_once();
      }

      sub_1B6AB98E0();
      sub_1B69868C0(0, &qword_1EDBCCC50, sub_1B6994A40, MEMORY[0x1E69E6F90]);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1B6ABD890;
      v18 = [a1 state];
      v19 = MEMORY[0x1E69E65A8];
      *(v17 + 56) = MEMORY[0x1E69E6530];
      *(v17 + 64) = v19;
      *(v17 + 32) = v18;
      sub_1B6AB8F70("Biome completion result had unknown state %d", v20);
    }
  }

  else
  {
    if (qword_1EB95A9D8 != -1)
    {
      swift_once();
    }

    v14 = qword_1EB95C350;
    v15 = sub_1B6AB9900();
    v16 = MEMORY[0x1E69E7CC0];

    return sub_1B6AB8F70("Biome crash stream query completed", 34, 2, &dword_1B697C000, v14, v15, v16);
  }
}

void sub_1B6AB5A9C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1B6AB5B04(uint64_t a1, double (*a2)(BOOL, __int128 *))
{
  *&v45 = a1;
  sub_1B69868C0(0, &qword_1EB95C8F0, sub_1B6AB66D0, MEMORY[0x1E69E62F8]);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v44 = a2;
    *&v45 = MEMORY[0x1E69E7CC0];
    if (v48 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B6AB9E60())
    {
      v4 = 0;
      while (1)
      {
        if ((v48 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1B8C98510](v4, v48);
        }

        else
        {
          if (v4 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v5 = *(v48 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v8 = [v5 bundleID];
        if (v8)
        {
          v9 = v8;
          v10 = sub_1B6AB92E0();
          v12 = v11;
        }

        else
        {
          v10 = 0;
          v12 = 0;
        }

        v13 = [objc_opt_self() mainBundle];
        v14 = [v13 bundleIdentifier];

        if (v14)
        {
          v15 = sub_1B6AB92E0();
          v17 = v16;

          if (v12)
          {
            if (!v17)
            {
              goto LABEL_23;
            }

            if (v10 == v15 && v12 == v17)
            {
            }

            else
            {
              v18 = sub_1B6ABA0F0();

              if ((v18 & 1) == 0)
              {
                goto LABEL_26;
              }
            }
          }

          else if (v17)
          {

LABEL_26:

            goto LABEL_7;
          }
        }

        else if (v12)
        {
LABEL_23:

          goto LABEL_7;
        }

        sub_1B6AB9D50();
        sub_1B6AB9D90();
        sub_1B6AB9DA0();
        sub_1B6AB9D60();
LABEL_7:
        ++v4;
        if (v7 == i)
        {
          v21 = v45;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

    v21 = MEMORY[0x1E69E7CC0];
LABEL_36:

    v22 = v21 < 0 || (v21 & 0x4000000000000000) != 0;
    if (v22)
    {
      v23 = sub_1B6AB9E60();
    }

    else
    {
      v23 = *(v21 + 16);
    }

    if (qword_1EB95A9D8 != -1)
    {
      swift_once();
    }

    v24 = qword_1EB95C350;
    v25 = sub_1B6AB9900();
    sub_1B69868C0(0, &qword_1EDBCCC50, sub_1B6994A40, MEMORY[0x1E69E6F90]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1B6ABF500;
    if (v22)
    {
      v27 = sub_1B6AB9E60();
    }

    else
    {
      v27 = *(v21 + 16);
    }

    v28 = MEMORY[0x1E69E65A8];
    *(v26 + 56) = MEMORY[0x1E69E6530];
    *(v26 + 64) = v28;
    *(v26 + 32) = v27;
    v29 = [objc_opt_self() mainBundle];
    v30 = [v29 bundleIdentifier];

    if (v30)
    {
      v31 = sub_1B6AB92E0();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    *(v26 + 96) = MEMORY[0x1E69E6158];
    *(v26 + 104) = sub_1B698CEC0();
    v34 = 0x6E776F6E6B6E75;
    if (v33)
    {
      v34 = v31;
    }

    v35 = 0xE700000000000000;
    if (v33)
    {
      v35 = v33;
    }

    *(v26 + 72) = v34;
    *(v26 + 80) = v35;
    sub_1B6AB8F70("Found %d crashes from current app (%{public}@) after last app instance", 70, 2, &dword_1B697C000, v24, v25, v26);

    if (!v23)
    {

      v38 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v39 = 2;
      goto LABEL_59;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x1B8C98510](0, v21);
      goto LABEL_57;
    }

    if (*(v21 + 16))
    {
      v36 = *(v21 + 32);
LABEL_57:
      v37 = v36;

      sub_1B6AB60DC(v37, &v45);

      v39 = *(&v45 + 1);
      v38 = v45;
      v41 = *(&v46 + 1);
      v40 = v46;
      v43 = *(&v47 + 1);
      v42 = v47;
LABEL_59:
      *&v45 = v38;
      *(&v45 + 1) = v39;
      *&v46 = v40;
      *(&v46 + 1) = v41;
      *&v47 = v42;
      *(&v47 + 1) = v43;
      v44(v23 != 0, &v45);
      sub_1B6AB6730(v38, v39, v40, v41, v42, v43);
      return;
    }

    __break(1u);
  }

  else
  {
    if (qword_1EB95A9D8 != -1)
    {
      swift_once();
    }

    v19 = qword_1EB95C350;
    v20 = sub_1B6AB98E0();
    sub_1B6AB8F70("Error casting crashes to expected type", 38, 2, &dword_1B697C000, v19, v20, MEMORY[0x1E69E7CC0]);
    v45 = xmmword_1B6AC3610;
    v46 = 0u;
    v47 = 0u;
    a2(0, &v45);
  }
}

void sub_1B6AB60DC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 exception];
  if (v4)
  {
    v5 = v4;
    v6 = [v5 type];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B6AB92E0();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v13 = [v5 signal];
    if (v13)
    {
      v14 = v13;
      v12 = sub_1B6AB92E0();
      v11 = v15;
    }

    else
    {

      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v8 = 0;
    v10 = 1;
  }

  v16 = [a1 terminationReason];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 namespaceName];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1B6AB92E0();
      v22 = v21;
    }

    else
    {

      v20 = 0;
      v22 = 0;
    }
  }

  else
  {
    v20 = 0;
    v22 = 1;
  }

  *a2 = v8;
  a2[1] = v10;
  a2[2] = v12;
  a2[3] = v11;
  a2[4] = v20;
  a2[5] = v22;
}

uint64_t sub_1B6AB6250(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t CrashDetector.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return v0;
}

uint64_t CrashDetector.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return swift_deallocClassInstance();
}

uint64_t sub_1B6AB6484()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 72));
  return v2;
}

void sub_1B6AB64C0(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 24);
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  v9 = *(v3 + 64);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  sub_1B69EC458(v4, v5, v6, v7, v8, v9);

  os_unfair_lock_unlock((v3 + 72));
}

uint64_t get_enum_tag_for_layout_string_12AppAnalytics12CrashDetailsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B6AB6584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 56))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 2;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1B6AB65F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

void sub_1B6AB6668(uint64_t a1)
{
  if (!qword_1EB95C8E0)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1B6AB9D30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95C8E0);
    }
  }
}

unint64_t sub_1B6AB66D0()
{
  result = qword_1EB95C8E8;
  if (!qword_1EB95C8E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB95C8E8);
  }

  return result;
}

void sub_1B6AB6730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 2)
  {
    sub_1B6AB677C(a1, a2, a3, a4);

    sub_1B6AB67C4(a5, a6);
  }
}

void sub_1B6AB677C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_1B6AB67C4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1B6AB67E0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1B8C98510](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1B6AB9E60();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t ViewingSession.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAViewingSession_identifier);

  return v1;
}

id ViewingSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ViewingSessionManagerType.viewingSession(for:object:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B6AB92B0();
  v6 = [v3 viewingSessionForContentIdentifier:v5 object:a3 onEnd:0];

  return v6;
}

void *sub_1B6AB6AC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B6AB8E40();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8E30();
  v10 = sub_1B6AB8DD0();
  v12 = v11;
  v13 = *(v7 + 8);
  v13(v9, v6);
  v3[2] = v10;
  v3[3] = v12;
  v14 = [objc_opt_self() hashTableWithOptions_];
  v15 = MEMORY[0x1E69E7CC0];
  v3[6] = v14;
  v3[7] = v15;
  sub_1B6AB8E30();
  v16 = sub_1B6AB8DD0();
  v18 = v17;
  v13(v9, v6);
  v19 = type metadata accessor for ViewingSession();
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR___AAViewingSession_identifier];
  *v21 = v16;
  v21[1] = v18;
  v23.receiver = v20;
  v23.super_class = v19;
  v3[8] = objc_msgSendSuper2(&v23, sel_init);
  v3[4] = a1;
  v3[5] = a2;
  return v3;
}

void sub_1B6AB6C50()
{
  v1 = v0;
  v21 = sub_1B6AB8E40();
  v2 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v5 = *(v0 + 56);
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    v8 = v5 + 40;
    while (v7 < *(v5 + 16))
    {
      ++v7;
      v9 = *(v8 - 8);
      v23 = *(v0 + 64);
      v10 = v23;

      v11 = v10;
      v9(&v23);

      v8 += 16;
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    *(v0 + 56) = MEMORY[0x1E69E7CC0];

    sub_1B6AB8E30();
    v12 = sub_1B6AB8DD0();
    v14 = v13;
    (*(v2 + 8))(v4, v21);
    v15 = type metadata accessor for ViewingSession();
    v16 = objc_allocWithZone(v15);
    v17 = &v16[OBJC_IVAR___AAViewingSession_identifier];
    *v17 = v12;
    v17[1] = v14;
    v22.receiver = v16;
    v22.super_class = v15;
    v18 = objc_msgSendSuper2(&v22, sel_init);
    v19 = *(v1 + 64);
    *(v1 + 64) = v18;
  }
}

uint64_t sub_1B6AB6E1C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B6AB6E74(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1B6ABA0F0();
  }
}

id ViewingSessionManager.viewingSession(for:object:onEnd:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B6AB7000();
  v11 = sub_1B6AB7274(v5, a3, a1, a2);
  if (a4)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a4;
    *(v12 + 24) = a5;
    swift_beginAccess();
    v13 = v11[7];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11[7] = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1B69E4C2C(0, v13[2] + 1, 1, v13);
      v11[7] = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1B69E4C2C((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1B6AB8138;
    v17[5] = v12;
    v11[7] = v13;
    swift_endAccess();
  }

  v18 = sub_1B6AB8098(v11);

  v19 = *(v18 + 64);

  return v19;
}

uint64_t sub_1B6AB7000()
{
  v1 = OBJC_IVAR___AAViewingSessionManager_sessions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v16 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    goto LABEL_26;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v3)
  {
    v14 = v1;
    v15 = v0;
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B8C98510](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          v3 = sub_1B6AB9E60();
          goto LABEL_3;
        }
      }

      v7 = [*(v5 + 48) allObjects];
      v1 = sub_1B6AB9510();

      if (v1 >> 62)
      {
        v0 = sub_1B6AB9E60();
      }

      else
      {
        v0 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v0)
      {
        v0 = &v16;
        sub_1B6AB9D50();
        v1 = *(v16 + 16);
        sub_1B6AB9D90();
        sub_1B6AB9DA0();
        sub_1B6AB9D60();
      }

      else
      {
      }

      ++v4;
      if (v6 == v3)
      {
        v8 = v16;
        v1 = v14;
        v0 = v15;
        goto LABEL_20;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_20:

  *(v0 + v1) = v8;

  v10 = OBJC_IVAR___AAViewingSessionManager_activeSession;
  if (*(v0 + OBJC_IVAR___AAViewingSessionManager_activeSession))
  {
    v11 = *(v0 + v1);
    v16 = *(v0 + OBJC_IVAR___AAViewingSessionManager_activeSession);
    MEMORY[0x1EEE9AC00](result);
    v13[2] = &v16;

    v12 = sub_1B6AB67E0(sub_1B6AB8768, v13, v11);

    if ((v12 & 1) == 0)
    {
      *(v0 + v10) = 0;
    }
  }

  return result;
}

void *sub_1B6AB7274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR___AAViewingSessionManager_sessions;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v22 = a3;
  v23 = a4;
  if (v9 >> 62)
  {
LABEL_42:
    v10 = sub_1B6AB9E60();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v10)
  {
LABEL_14:

    v12 = *(a1 + OBJC_IVAR___AAViewingSessionManager_activeSession);
    v14 = v22;
    v15 = v23;
    if (v12)
    {
      if (*(v12 + 32) == v22 && *(v12 + 40) == v23)
      {
        goto LABEL_21;
      }

      if (sub_1B6ABA0F0())
      {
        if ((sub_1B6ABA0F0() & 1) == 0)
        {

LABEL_40:
          v21 = sub_1B6AB7550(v14, v15, a2);

          return v21;
        }

LABEL_21:
        v17 = *(v12 + 48);

        [v17 addObject_];
        return v12;
      }
    }

    return sub_1B6AB7550(v14, v15, a2);
  }

  v11 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1B8C98510](v11, v9);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_42;
      }

      v12 = *(v9 + 8 * v11 + 32);

      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_13;
      }
    }

    if ([*(v12 + 48) containsObject_])
    {
      break;
    }

    ++v11;
    if (v13 == v10)
    {
      goto LABEL_14;
    }
  }

  v18 = *(a1 + OBJC_IVAR___AAViewingSessionManager_activeSession);
  v14 = v22;
  v15 = v23;
  if (v18)
  {
    v19 = *(v12 + 16) == *(v18 + 16) && *(v12 + 24) == *(v18 + 24);
    if (v19 || (sub_1B6ABA0F0()) && (*(v12 + 32) == v22 && *(v12 + 40) == v23 || (sub_1B6ABA0F0()))
    {

      return v18;
    }
  }

  if ((*(v12 + 32) != v22 || *(v12 + 40) != v23) && (sub_1B6ABA0F0() & 1) == 0)
  {
    if ((sub_1B6ABA0F0() & 1) == 0)
    {
      goto LABEL_40;
    }

    return sub_1B6AB7550(v14, v15, a2);
  }

  return v12;
}

void *sub_1B6AB7550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for ViewingSessionManager.Session();
  swift_allocObject();

  v8 = sub_1B6AB6AC4(a1, a2);
  [v8[6] addObject_];
  v9 = OBJC_IVAR___AAViewingSessionManager_sessions;
  swift_beginAccess();

  MEMORY[0x1B8C97D30](v10);
  if (*((*(v4 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B6AB9540();
  }

  sub_1B6AB9580();
  swift_endAccess();
  return v8;
}

uint64_t ViewingSessionManager.remove(object:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR___AAViewingSessionManager_sessions;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (v7 >> 62)
  {
LABEL_21:
    v8 = sub_1B6AB9E60();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1B8C98510](v9, v7);
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_18:
          __break(1u);
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v11 = *(v7 + 8 * v9 + 32);

        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_18;
        }
      }

      v13 = *(v11 + 32) == a2 && *(v11 + 40) == a3;
      if (v13 || (sub_1B6ABA0F0() & 1) != 0)
      {
        v10 = *(v11 + 48);
        [v10 removeObject_];
      }

      ++v9;
    }

    while (v12 != v8);
  }
}

Swift::Void __swiftcall ViewingSessionManager.endSession(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = OBJC_IVAR___AAViewingSessionManager_sessions;
  swift_beginAccess();

  v5 = sub_1B6AB8280((v1 + v4), countAndFlagsBits, object);

  v6 = *(v1 + v4);
  if (v6 >> 62)
  {
    v7 = sub_1B6AB9E60();
    if (v7 >= v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= v5)
    {
LABEL_3:
      sub_1B6AB860C(v5, v7);
      swift_endAccess();
      return;
    }
  }

  __break(1u);
  swift_endAccess();
  __break(1u);
}

Swift::Void __swiftcall ViewingSessionManager.endActiveViewingSession()()
{
  v1 = OBJC_IVAR___AAViewingSessionManager_activeSession;
  if (*(v0 + OBJC_IVAR___AAViewingSessionManager_activeSession))
  {

    sub_1B6AB6C50();
  }

  *(v0 + v1) = 0;
}

Swift::Void __swiftcall ViewingSessionManager.endAllViewingSessions()()
{
  v1 = v0;
  v2 = OBJC_IVAR___AAViewingSessionManager_activeSession;
  if (*(v0 + OBJC_IVAR___AAViewingSessionManager_activeSession))
  {

    sub_1B6AB6C50();
  }

  *(v0 + v2) = 0;

  v3 = OBJC_IVAR___AAViewingSessionManager_sessions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
LABEL_17:
    v5 = sub_1B6AB9E60();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B8C98510](v6, v4);
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_14;
        }
      }

      sub_1B6AB6C50();

      ++v6;
    }

    while (v7 != v5);
  }
}

id ViewingSessionManager.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___AAViewingSessionManager_sessions] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___AAViewingSessionManager_activeSession] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1B6AB7D5C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1B6AB9E60();
LABEL_9:
  result = sub_1B6AB9CE0();
  *v2 = result;
  return result;
}

uint64_t sub_1B6AB7E3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1B6AB9E60();
  }

  return sub_1B6AB9CE0();
}

uint64_t sub_1B6AB7EA0(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1B6ABA0F0() & 1;
  }
}

unint64_t sub_1B6AB7EF4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = *v3 + 32;
  v9 = v8 + 8 * result;
  sub_1B69E865C(0);
  result = swift_arrayDestroy();
  v10 = __OFSUB__(a3, v4);
  v11 = a3 - v4;
  if (v10)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = *(v7 + 16);
  if (__OFSUB__(v12, a2))
  {
    goto LABEL_19;
  }

  result = v9 + 8 * a3;
  v13 = v8 + 8 * a2;
  if (result < v13 || result >= v13 + 8 * (v12 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v13)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v15 = *(v7 + 16);
  v10 = __OFADD__(v15, v11);
  v16 = v15 + v11;
  if (v10)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v16;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B6AB7FD8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1B69E3D38(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1B6AB7EF4(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1B6AB8098(uint64_t a1)
{
  v3 = OBJC_IVAR___AAViewingSessionManager_activeSession;
  v4 = *(v1 + OBJC_IVAR___AAViewingSessionManager_activeSession);
  if (v4)
  {
    v5 = *(a1 + 16) == *(v4 + 16) && *(a1 + 24) == *(v4 + 24);
    if (!v5 && (sub_1B6ABA0F0() & 1) == 0)
    {

      sub_1B6AB6C50();
    }
  }

  *(v1 + v3) = a1;
}

unint64_t sub_1B6AB8164(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v7 = sub_1B6AB9E60();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B8C98510](v8, a1);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = *(a1 + 8 * v8 + 32);
    }

    if (*(v9 + 32) == a2 && *(v9 + 40) == a3)
    {
      break;
    }

    v11 = sub_1B6ABA0F0();

    if (v11)
    {
      return v8;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_21;
    }
  }

  return v8;
}

uint64_t sub_1B6AB8280(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *a1;
  v8 = sub_1B6AB8164(*a1, a2, a3);
  v10 = v8;
  if (v3)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_1B6AB9E60();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_1B6AB9E60())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1B8C98510](v11, v7);
      goto LABEL_16;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    v13 = *(v7 + 8 * v11 + 32);

LABEL_16:
    if (*(v13 + 32) == a2 && *(v13 + 40) == a3)
    {
LABEL_8:
    }

    else
    {
      v14 = sub_1B6ABA0F0();

      if ((v14 & 1) == 0)
      {
        if (v10 != v11)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1B8C98510](v10, v7);
            v15 = MEMORY[0x1B8C98510](v11, v7);
          }

          else
          {
            if ((v10 & 0x8000000000000000) != 0)
            {
              goto LABEL_50;
            }

            v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v10 >= v16)
            {
              goto LABEL_51;
            }

            if (v11 >= v16)
            {
              goto LABEL_52;
            }

            v15 = *(v7 + 32 + 8 * v11);
            v21 = *(v7 + 32 + 8 * v10);
          }

          v17 = v6;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
          {
            v7 = sub_1B6AB7E3C(v7);
            v18 = (v7 >> 62) & 1;
          }

          else
          {
            LODWORD(v18) = 0;
          }

          v19 = v7 & 0xFFFFFFFFFFFFFF8;
          *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v15;

          if ((v7 & 0x8000000000000000) != 0 || v18)
          {
            v7 = sub_1B6AB7E3C(v7);
            v19 = v7 & 0xFFFFFFFFFFFFFF8;
            if ((v11 & 0x8000000000000000) != 0)
            {
LABEL_43:
              __break(1u);
              return v10;
            }
          }

          else if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          if (v11 >= *(v19 + 16))
          {
            goto LABEL_49;
          }

          v6 = v17;
          *(v19 + 8 * v11 + 32) = v21;

          *v17 = v7;
        }

        v12 = __OFADD__(v10++, 1);
        if (v12)
        {
          goto LABEL_48;
        }
      }
    }

    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return sub_1B6AB9E60();
}

uint64_t sub_1B6AB850C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ViewingSessionManager.Session();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1B6AB9E60();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1B6AB9E60();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B6AB860C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1B6AB9E60();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_1B6AB9E60();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1B6AB7D5C(result, 1);

  return sub_1B6AB850C(v5, v3, 0);
}