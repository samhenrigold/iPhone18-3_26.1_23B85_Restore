uint64_t sub_1C47812D8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4781348(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_1C44157D4(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_1C44157D4(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C4781484(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C440BAA8(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C47816A0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C47816F8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4781734(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4781770(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t EventDates.mapLocation.getter()
{
  v1 = *v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C47817FC()
{
  if (qword_1EC0B7110 != -1)
  {
    swift_once();
  }

  qword_1EC0BC590 = qword_1EC0C3848;
  unk_1EC0BC598 = *&qword_1EC0C3850;
  qword_1EC0BC5A8 = qword_1EC0C3860;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t static EventDates.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B6980 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC0BC5A8;
  *a1 = qword_1EC0BC590;
  *(a1 + 8) = unk_1EC0BC598;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t EventDates.identifier.getter()
{
  v1 = *(v0 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

void EventDates.init(mapLocation:identifier:isAllDay:start:end:occurenceDate:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v113 = a8;
  v123 = a7;
  v122 = a5;
  v118 = a3;
  v119 = a4;
  v115 = a1;
  v116 = a2;
  v117 = a9;
  v10 = sub_1C4EF9F88();
  sub_1C43FCDF8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  v17 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  sub_1C43FBFDC();
  v112 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v109 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v109 - v23;
  v25 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBFDC();
  v121 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v109 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v109 - v34;
  v114 = a6;
  sub_1C4467FE0(a6, v24);
  sub_1C4410BC4(v24);
  v124 = v27;
  v120 = v12;
  if (v36)
  {
    sub_1C44686E4(v24);
    v37 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v38 = *(v27 + 32);
    v110 = v25;
    v38(v35, v24, v25);
    sub_1C4EF9F58();
    v39 = Date.dateComponentsJSONString(isAllDay:calendar:)(v122 & 1);
    v41 = v40;
    v42 = *(v12 + 8);
    v111 = v10;
    v43 = v42(v16, v10);
    sub_1C440F5E0(v43, v44, v45, MEMORY[0x1E69E7CC0]);
    v37 = v46;
    v48 = *(v46 + 16);
    v47 = *(v46 + 24);
    if (v48 >= v47 >> 1)
    {
      v95 = sub_1C43FCFE8(v47);
      sub_1C43FD690(v95, v48 + 1);
      v37 = v96;
    }

    *(v37 + 16) = v48 + 1;
    sub_1C440E214(v37 + (v48 << 6));
    v49[6] = v39;
    v49[7] = v41;
    sub_1C440AA40(v49);
    *(v50 + 88) = 1;
    sub_1C4EF9AD8();
    v51 = sub_1C4F019E8();
    v53 = v52;
    v55 = *(v37 + 16);
    v54 = *(v37 + 24);
    v25 = v110;
    if (v55 >= v54 >> 1)
    {
      v97 = sub_1C43FCFE8(v54);
      sub_1C43FD690(v97, v55 + 1);
      v37 = v98;
    }

    (*(v124 + 8))(v35, v25);
    *(v37 + 16) = v55 + 1;
    sub_1C4411C4C();
    v57[4] = v56 & 0xFFFFFFFFFFFFLL | 0x5364000000000000;
    v57[5] = 0xEC00000074726174;
    v57[6] = v51;
    v57[7] = v53;
    sub_1C440AA40(v57);
    *(v58 + 88) = 1;
    v10 = v111;
  }

  v59 = v122;
  sub_1C4467FE0(v123, v21);
  sub_1C4410BC4(v21);
  v60 = v120;
  if (v36)
  {
    sub_1C44686E4(v21);
  }

  else
  {
    (*(v124 + 32))(v32, v21, v25);
    sub_1C4EF9F58();
    v61 = Date.dateComponentsJSONString(isAllDay:calendar:)(v59 & 1);
    v63 = v62;
    (*(v60 + 8))(v16, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C458A900();
      v37 = v99;
    }

    v66 = *(v37 + 16);
    v65 = *(v37 + 24);
    if (v66 >= v65 >> 1)
    {
      v100 = sub_1C43FCFE8(v65);
      sub_1C43FD690(v100, v66 + 1);
      v37 = v101;
    }

    *(v37 + 16) = v66 + 1;
    v67 = (v37 + (v66 << 6));
    v67[4] = 6581861;
    v67[5] = 0xE300000000000000;
    v67[6] = v61;
    v67[7] = v63;
    sub_1C440AA40(v67);
    *(v68 + 88) = 1;
    sub_1C4EF9AD8();
    sub_1C4F019E8();
    sub_1C440D158();
    v70 = *(v37 + 16);
    v69 = *(v37 + 24);
    if (v70 >= v69 >> 1)
    {
      v102 = sub_1C43FCFE8(v69);
      sub_1C43FD690(v102, v70 + 1);
      v37 = v103;
    }

    (*(v124 + 8))(v32, v25);
    *(v37 + 16) = v70 + 1;
    sub_1C4411C4C();
    sub_1C441F8B8(v71);
    *(v72 + 88) = 1;
    v59 = v122;
    v60 = v120;
  }

  v73 = v112;
  v74 = v113;
  sub_1C4467FE0(v113, v112);
  sub_1C4410BC4(v73);
  if (v36)
  {
    sub_1C44686E4(v74);
    sub_1C44686E4(v123);
    sub_1C44686E4(v114);
    sub_1C44686E4(v73);
  }

  else
  {
    (*(v124 + 32))(v121, v73, v25);
    sub_1C4EF9F58();
    v75 = Date.dateComponentsJSONString(isAllDay:calendar:)(v59 & 1);
    v77 = v76;
    (*(v60 + 8))(v16, v10);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    if ((v78 & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C458A900();
      v37 = v104;
    }

    v80 = *(v37 + 16);
    v79 = *(v37 + 24);
    v81 = v80 + 1;
    if (v80 >= v79 >> 1)
    {
      v105 = sub_1C43FCFE8(v79);
      sub_1C43FD690(v105, v80 + 1);
      v37 = v106;
    }

    *(v37 + 16) = v81;
    sub_1C44030F4();
    v83[4] = v84;
    v83[5] = v82 | 0xEE00657461440000;
    v83[6] = v75;
    v83[7] = v77;
    sub_1C440AA40(v83);
    *(v85 + 88) = 1;
    v86 = v121;
    sub_1C4EF9AD8();
    sub_1C4F019E8();
    sub_1C440D158();
    v88 = *(v37 + 16);
    v87 = *(v37 + 24);
    if (v88 >= v87 >> 1)
    {
      v107 = sub_1C43FCFE8(v87);
      sub_1C43FD690(v107, v88 + 1);
      v37 = v108;
    }

    sub_1C44686E4(v74);
    sub_1C44686E4(v123);
    sub_1C44686E4(v114);
    (*(v124 + 8))(v121, v25);
    *(v37 + 16) = v88 + 1;
    v89 = (v37 + (v88 << 6));
    v89[4] = 0xD000000000000015;
    v89[5] = 0x80000001C4F99CE0;
    v89[6] = v81;
    v89[7] = v86;
    sub_1C440AA40(v89);
    *(v90 + 88) = 1;
  }

  v91 = v117;
  v92 = v116;
  *v117 = v115;
  v91[1] = v92;
  v94 = v118;
  v93 = v119;
  v91[2] = v37;
  v91[3] = v94;
  v91[4] = v93;
}

void __swiftcall EventDates.init(mapLocation:identifier:startTimeIntervalSinceReferenceDate:endTimeIntervalSinceReferenceDate:)(IntelligencePlatformCore::EventDates *__return_ptr retstr, Swift::String mapLocation, Swift::String_optional identifier, Swift::Double_optional startTimeIntervalSinceReferenceDate, Swift::Double_optional endTimeIntervalSinceReferenceDate)
{
  v60 = v5;
  is_nil = endTimeIntervalSinceReferenceDate.is_nil;
  v8 = sub_1C4EF9648();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  sub_1C4EF9F88();
  sub_1C43FCDF8();
  v61 = v16;
  v62 = v15;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v59 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v25 = v24 - v23;
  if (is_nil)
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C4EF9AC8();
    sub_1C4EF9F58();
    if (qword_1EDDF4920 != -1)
    {
      sub_1C4406C64(&qword_1EDDF4920);
    }

    sub_1C4EF9EA8();
    v27 = sub_1C44CDAD4();
    v29 = v28;
    v58 = v8;
    (*(v10 + 8))(v14, v8);
    (*(v61 + 8))(v19, v62);
    v30 = (*(v21 + 8))(v25, v59);
    sub_1C440F5E0(v30, v31, v32, MEMORY[0x1E69E7CC0]);
    v26 = v33;
    v35 = v33[2];
    v34 = v33[3];
    if (v35 >= v34 >> 1)
    {
      v49 = sub_1C43FCFE8(v34);
      sub_1C44089B0(v49, v35 + 1);
      v26 = v50;
    }

    v26[2] = v35 + 1;
    sub_1C440E214(&v26[8 * v35]);
    v36[6] = v27;
    v36[7] = v29;
    sub_1C440AA40(v36);
    *(v37 + 88) = 1;
    sub_1C4F019E8();
    sub_1C440D158();
    v39 = v26[2];
    v38 = v26[3];
    if (v39 >= v38 >> 1)
    {
      v51 = sub_1C43FCFE8(v38);
      sub_1C44089B0(v51, v39 + 1);
      v26 = v52;
    }

    v26[2] = v39 + 1;
    sub_1C4411C4C();
    sub_1C441F8B8(v40);
    *(v41 + 88) = 1;
    v8 = v58;
  }

  if ((v60 & 1) == 0)
  {
    sub_1C4EF9AC8();
    sub_1C4EF9F58();
    if (qword_1EDDF4920 != -1)
    {
      sub_1C4406C64(&qword_1EDDF4920);
    }

    sub_1C4EF9EA8();
    sub_1C44CDAD4();
    sub_1C440D158();
    (*(v10 + 8))(v14, v8);
    (*(v61 + 8))(v19, v62);
    (*(v21 + 8))(v25, v59);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C458A900();
      v26 = v53;
    }

    v43 = v26[2];
    v42 = v26[3];
    if (v43 >= v42 >> 1)
    {
      v54 = sub_1C43FCFE8(v42);
      sub_1C44089B0(v54, v43 + 1);
      v26 = v55;
    }

    v26[2] = v43 + 1;
    sub_1C441F8B8(&v26[8 * v43]);
    *(v44 + 88) = 1;
    sub_1C4F019E8();
    sub_1C440D158();
    v46 = v26[2];
    v45 = v26[3];
    if (v46 >= v45 >> 1)
    {
      v56 = sub_1C43FCFE8(v45);
      sub_1C44089B0(v56, v46 + 1);
      v26 = v57;
    }

    v26[2] = v46 + 1;
    sub_1C4411C4C();
    sub_1C441F8B8(v47);
    *(v48 + 88) = 1;
  }

  retstr->mapLocation = mapLocation;
  retstr->basicProperties._rawValue = v26;
  retstr->identifier = identifier;
}

void __swiftcall EventDates.init(mapLocation:identifier:occurenceTimeIntervalSince1970:)(IntelligencePlatformCore::EventDates *__return_ptr retstr, Swift::String mapLocation, Swift::String_optional identifier, Swift::Double_optional occurenceTimeIntervalSince1970)
{
  v5 = v4;
  object = identifier.value._object;
  countAndFlagsBits = identifier.value._countAndFlagsBits;
  sub_1C4EF9648();
  sub_1C43FCDF8();
  v51 = v10;
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  sub_1C4EF9F88();
  sub_1C43FCDF8();
  v49 = v15;
  v50 = v14;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  v19 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v25 = v24 - v23;
  if (v5)
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v48 = object;
    sub_1C4EF9C48();
    sub_1C4EF9AD8();
    v47 = *(v21 + 8);
    v47(v25, v19);
    v46 = sub_1C4F019E8();
    v28 = v27;
    sub_1C440F5E0(v46, v27, v29, MEMORY[0x1E69E7CC0]);
    v26 = v30;
    v32 = v30[2];
    v31 = v30[3];
    if (v32 >= v31 >> 1)
    {
      sub_1C43FCFE8(v31);
      sub_1C458A900();
      v26 = v44;
    }

    v26[2] = v32 + 1;
    sub_1C44030F4();
    v34[4] = v35;
    v34[5] = v33 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    v34[6] = v46;
    v34[7] = v28;
    sub_1C440AA40(v34);
    *(v36 + 88) = 1;
    sub_1C4EF9C48();
    sub_1C4EF9F58();
    if (qword_1EDDF4920 != -1)
    {
      sub_1C4406C64(&qword_1EDDF4920);
    }

    sub_1C4EF9EA8();
    v37 = sub_1C44CDAD4();
    v39 = v38;
    (*(v51 + 8))(v13, v52);
    (*(v49 + 8))(v18, v50);
    v47(v25, v19);
    v41 = v26[2];
    v40 = v26[3];
    if (v41 >= v40 >> 1)
    {
      sub_1C43FCFE8(v40);
      sub_1C458A900();
      v26 = v45;
    }

    v26[2] = v41 + 1;
    v42 = &v26[8 * v41];
    v42[4] = 0xD000000000000011;
    v42[5] = 0x80000001C4F99D00;
    v42[6] = v37;
    v42[7] = v39;
    sub_1C440AA40(v42);
    *(v43 + 88) = 1;
    object = v48;
  }

  retstr->mapLocation = mapLocation;
  retstr->basicProperties._rawValue = v26;
  retstr->identifier.value._countAndFlagsBits = countAndFlagsBits;
  retstr->identifier.value._object = object;
}

uint64_t sub_1C47827B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636F4C70616DLL && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F72506369736162 && a2 == 0xEF73656974726570;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C47828DC(char a1)
{
  if (!a1)
  {
    return 0x7461636F4C70616DLL;
  }

  if (a1 == 1)
  {
    return 0x6F72506369736162;
  }

  return 0x696669746E656469;
}

uint64_t sub_1C4782954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C47827B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C478297C(uint64_t a1)
{
  v2 = sub_1C4782EE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47829B8(uint64_t a1)
{
  v2 = sub_1C4782EE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventDates.encode(to:)(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0BC5B0, &unk_1C4F28BA8);
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  v9 = v1[2];
  v12[2] = v1[3];
  v13 = v9;
  v12[1] = v1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4782EE8();
  sub_1C4F02BF8();
  v18 = 0;
  v10 = v14;
  sub_1C4F02798();
  if (!v10)
  {
    v15 = v13;
    v17 = 1;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8728, sub_1C458A984, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
    v16 = 2;
    sub_1C4F02738();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t EventDates.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BC5C0, &qword_1C4F28BB8);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C4782EE8();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v25 = 0;
  v11 = sub_1C4F02678();
  v21 = v12;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  v24 = 1;
  sub_1C458A9D8(&qword_1EC0B8740, sub_1C458AA50, MEMORY[0x1E69E6330]);
  sub_1C4F026C8();
  v20 = v22;
  v23 = 2;
  v13 = sub_1C4F02618();
  v15 = v14;
  v16 = v13;
  (*(v7 + 8))(v10, v5);
  v17 = v21;
  *a2 = v11;
  a2[1] = v17;
  a2[2] = v20;
  a2[3] = v16;
  a2[4] = v15;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);
}

unint64_t sub_1C4782EE8()
{
  result = qword_1EC0BC5B8;
  if (!qword_1EC0BC5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC5B8);
  }

  return result;
}

unint64_t sub_1C4782F3C(uint64_t a1)
{
  result = sub_1C4782F64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4782F64()
{
  result = qword_1EC0BC5C8;
  if (!qword_1EC0BC5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC5C8);
  }

  return result;
}

unint64_t sub_1C4782FB8(uint64_t a1)
{
  *(a1 + 8) = sub_1C4782FE8();
  result = sub_1C478303C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4782FE8()
{
  result = qword_1EC0BC5D0;
  if (!qword_1EC0BC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC5D0);
  }

  return result;
}

unint64_t sub_1C478303C()
{
  result = qword_1EC0BC5D8;
  if (!qword_1EC0BC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC5D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventDates.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4783180()
{
  result = qword_1EC0BC5E0;
  if (!qword_1EC0BC5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC5E0);
  }

  return result;
}

unint64_t sub_1C47831D8()
{
  result = qword_1EC0BC5E8;
  if (!qword_1EC0BC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC5E8);
  }

  return result;
}

unint64_t sub_1C4783230()
{
  result = qword_1EC0BC5F0;
  if (!qword_1EC0BC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC5F0);
  }

  return result;
}

uint64_t sub_1C4783294()
{
  if (qword_1EC0B7148 != -1)
  {
    swift_once();
  }

  qword_1EC151CD0 = qword_1EC152C28;
  unk_1EC151CD8 = *algn_1EC152C30;
  qword_1EC151CE8 = qword_1EC152C40;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4783314(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0BC620, &qword_1C4F28EA0);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  sub_1C4409678(a1, a1[3]);
  sub_1C4783A5C();
  sub_1C4F02BF8();
  v14 = 0;
  sub_1C4F02798();
  if (!v2)
  {
    v13 = *(v3 + 16);
    v12[15] = 1;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C46D4190(&qword_1EC0B8728, sub_1C458A984, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
    v12[14] = 2;
    sub_1C4F02738();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C47834F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BC610, &unk_1C4F28E90);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C4783A5C();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v27 = 0;
  v11 = sub_1C4F02678();
  v13 = v12;
  v23 = a2;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  v26 = 1;
  sub_1C46D4190(&qword_1EC0B8740, sub_1C458AA50, MEMORY[0x1E69E6330]);
  sub_1C4F026C8();
  v22 = v24;
  v25 = 2;
  v14 = sub_1C4F02618();
  v15 = v10;
  v17 = v16;
  (*(v7 + 8))(v15, v5);
  result = sub_1C440962C(a1);
  v20 = v22;
  v19 = v23;
  *v23 = v11;
  v19[1] = v13;
  v19[2] = v20;
  v19[3] = v14;
  v19[4] = v17;
  return result;
}

uint64_t sub_1C4783774(uint64_t a1)
{
  v2 = sub_1C4783A5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47837B0(uint64_t a1)
{
  v2 = sub_1C4783A5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C47837EC()
{
  v1 = *(v0 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4783824@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B6988 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC151CE8;
  *a1 = qword_1EC151CD0;
  *(a1 + 8) = unk_1EC151CD8;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

double sub_1C47838A8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C47834F0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1C4783908(uint64_t a1)
{
  result = sub_1C4783930();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4783930()
{
  result = qword_1EC0BC5F8;
  if (!qword_1EC0BC5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC5F8);
  }

  return result;
}

unint64_t sub_1C4783984(uint64_t a1)
{
  *(a1 + 8) = sub_1C47839B4();
  result = sub_1C4783A08();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C47839B4()
{
  result = qword_1EC0BC600;
  if (!qword_1EC0BC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC600);
  }

  return result;
}

unint64_t sub_1C4783A08()
{
  result = qword_1EC0BC608;
  if (!qword_1EC0BC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC608);
  }

  return result;
}

unint64_t sub_1C4783A5C()
{
  result = qword_1EC0BC618;
  if (!qword_1EC0BC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC618);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventKitCalendar.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4783B90()
{
  result = qword_1EC0BC628;
  if (!qword_1EC0BC628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC628);
  }

  return result;
}

unint64_t sub_1C4783BE8()
{
  result = qword_1EC0BC630;
  if (!qword_1EC0BC630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC630);
  }

  return result;
}

unint64_t sub_1C4783C40()
{
  result = qword_1EC0BC638;
  if (!qword_1EC0BC638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC638);
  }

  return result;
}

uint64_t sub_1C4783C94(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  v6 = type metadata accessor for PhaseStores(0);
  *(v4 + 40) = v6;
  sub_1C43FBD18(v6);
  *(v4 + 48) = sub_1C43FBE7C();
  v7 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v7);
  *(v4 + 56) = sub_1C43FBE7C();
  v8 = type metadata accessor for EKEventSourceIngestor(0);
  *(v4 + 64) = v8;
  sub_1C43FBD18(v8);
  *(v4 + 72) = sub_1C43FBE7C();
  v9 = type metadata accessor for Source(0);
  *(v4 + 80) = v9;
  sub_1C43FBD18(v9);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  v10 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v10);
  *(v4 + 104) = sub_1C43FBE7C();
  *(v4 + 129) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1C4783DC8, 0, 0);
}

uint64_t sub_1C4783DC8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  sub_1C4430A70(v2, *(v0 + 104), type metadata accessor for Configuration);
  *(v0 + 112) = *(v2 + *(v1 + 24));
  v3 = qword_1EDDFD150;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 129);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);
  v8 = *(v0 + 64);
  v9 = *(v0 + 48);
  v10 = *(v0 + 16);
  v11 = sub_1C442B738(*(v0 + 80), qword_1EDDFD158);
  sub_1C4430A70(v11, v6, type metadata accessor for Source);
  sub_1C4430A70(v10, v7, type metadata accessor for PhaseStores);
  *(v7 + v8[7]) = 0;
  sub_1C4430A70(v11, v7 + v8[5], type metadata accessor for Source);
  *(v7 + v8[6]) = v4;
  sub_1C4430A70(v11, v5, type metadata accessor for Source);
  sub_1C4430A70(v10, v9, type metadata accessor for PhaseStores);
  *(v0 + 128) = 3;
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = sub_1C4783FAC;

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C4783FAC()
{

  return MEMORY[0x1EEE6DFA0](sub_1C47840A8, 0, 0);
}

uint64_t sub_1C47840A8()
{
  v16 = *(v0 + 129);
  v1 = *(v0 + 104);
  v13 = *(v0 + 112);
  v14 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v15 = *(v0 + 56);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
  sub_1C4EFD548();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4F0CE60;
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C4EFD4C8();

  sub_1C44857CC(v6);
  v8 = (v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_sourceIngestor);
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_sourceIngestor + 24) = v2;
  v8[4] = sub_1C4784458();
  v9 = sub_1C4422F90(v8);
  sub_1C47844B0(v3, v9, type metadata accessor for EKEventSourceIngestor);
  sub_1C47844B0(v1, v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_config, type metadata accessor for Configuration);
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_graphStore) = v13;
  sub_1C47844B0(v14, v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_source, type metadata accessor for Source);
  sub_1C47844B0(v15, v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_linker, type metadata accessor for Linker);
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_entityClasses) = v7;
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_matchesDict) = MEMORY[0x1E69E7CC8];
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_pipelineType) = v16;

  v10 = *(v0 + 8);
  v11 = *(v0 + 32);

  return v10(v11);
}

uint64_t sub_1C4784378()
{
  MatchExtractor.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EventKitEventMatchExtractor(uint64_t a1)
{
  result = qword_1EC0BC640;
  if (!qword_1EC0BC640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C4784458()
{
  result = qword_1EDDE3D18;
  if (!qword_1EDDE3D18)
  {
    type metadata accessor for EKEventSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE3D18);
  }

  return result;
}

uint64_t sub_1C47844B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C478450C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  v6 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v6);
  *(v4 + 40) = swift_task_alloc();
  v7 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v7);
  *(v4 + 48) = swift_task_alloc();
  v8 = type metadata accessor for EKEventSourceIngestor(0);
  *(v4 + 56) = v8;
  sub_1C43FBD18(v8);
  *(v4 + 64) = swift_task_alloc();
  v9 = type metadata accessor for Source(0);
  *(v4 + 72) = v9;
  sub_1C43FBD18(v9);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  v10 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v10);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 129) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1C4784668, 0, 0);
}

uint64_t sub_1C4784668()
{
  sub_1C4419288();
  sub_1C44717B8(v1, v2, v3);
  if (qword_1EDDFD150 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 129);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 16);
  v11 = sub_1C442B738(*(v0 + 72), qword_1EDDFD158);
  *(v0 + 112) = v11;
  sub_1C44717B8(v11, v5, type metadata accessor for Source);
  sub_1C44717B8(v10, v8, type metadata accessor for PhaseStores);
  *(v8 + v9[7]) = 0;
  sub_1C44717B8(v11, v8 + v9[5], type metadata accessor for Source);
  *(v8 + v9[6]) = v4;
  sub_1C44717B8(v11, v7, type metadata accessor for Source);
  sub_1C44717B8(v10, v6, type metadata accessor for PhaseStores);
  *(v0 + 128) = v4;
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = sub_1C4784824;

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C4784824()
{

  return MEMORY[0x1EEE6DFA0](sub_1C4784920, 0, 0);
}

uint64_t sub_1C4784920()
{
  v1 = v0[12];
  v22 = v0[11];
  v23 = v0[13];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v24 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];
  sub_1C44717B8(v0[14], v0[10], type metadata accessor for Source);
  sub_1C4419288();
  sub_1C44717B8(v7, v1, v8);
  Fuser.init(source:stores:pipelineType:)();

  sub_1C44857CC(v7);
  v9 = (v6 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v2;
  v9[4] = sub_1C4784458();
  v10 = sub_1C4422F90(v9);
  sub_1C4784BD8(v3, v10, type metadata accessor for EKEventSourceIngestor);
  sub_1C44002E8();
  sub_1C4784BD8(v22, v11, v12);
  sub_1C44002E8();
  sub_1C4784BD8(v23, v13, v14);
  sub_1C44002E8();
  sub_1C4784BD8(v24, v15, v16);
  sub_1C44002E8();
  sub_1C4784BD8(v4, v17, v18);
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v19 = v0[1];
  v20 = v0[4];

  return v19(v20);
}

uint64_t type metadata accessor for EventKitEventPhase(uint64_t a1)
{
  result = qword_1EDDED530;
  if (!qword_1EDDED530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4784BD8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  (*(v5 + 32))(a2, a1);
  return a2;
}

id sub_1C4784C34@<X0>(void *a1@<X8>)
{
  result = [v1 structuredLocation];
  v4 = result;
  if (result)
  {
    result = sub_1C4461BB8(0, &qword_1EDDDB8E0, 0x1E6966B08);
    v5 = &off_1F43EAF00;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_1C4784CB0()
{
  v1 = [v0 calLocation];

  return v1;
}

id sub_1C4784D54()
{
  v1 = [v0 geoLocation];

  return v1;
}

uint64_t sub_1C4784F80()
{
  if (!sub_1C47851E0(v0))
  {
    return 0;
  }

  sub_1C4812398();
  v2 = v1;

  return v2;
}

id sub_1C4784FC8@<X0>(void *a1@<X8>)
{
  result = [v1 organizer];
  v4 = result;
  if (result)
  {
    result = sub_1C4461BB8(0, &unk_1EDDDBAF0, 0x1E6966A80);
    v5 = &off_1F43EAF28;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_1C47850D8@<X0>(SEL *a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = [v7 *a1];
  if (v9)
  {
    v10 = v9;
    a2();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = a3(0);

  return sub_1C440BAA8(a4, v11, 1, v12);
}

uint64_t sub_1C4785170(void *a1)
{
  v1 = [a1 mapKitHandle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4EF9A68();

  return v3;
}

uint64_t sub_1C47851E0(void *a1)
{
  v1 = [a1 attendees];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C4461BB8(0, &unk_1EDDDBAF0, 0x1E6966A80);
  v3 = sub_1C4F01678();

  return v3;
}

void sub_1C4785250()
{
  sub_1C43FBD3C();
  sub_1C4434FDC();
  v5 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440D3AC(v7, v13);
  v8 = sub_1C4F018C8();
  sub_1C4404E78(v8);
  if (&qword_1C4F29150 == 1)
  {
    sub_1C440C2C8(v1);
  }

  else
  {
    sub_1C4F018B8();
    sub_1C4416064();
    (*(v9 + 8))(v1, &qword_1EC0BC660);
  }

  v10 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v10)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C440C2C8(v3);
    sub_1C44042C4();
    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    *(v12 + 24) = v0;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1C4F017F8();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C4F011C8();
  sub_1C44042C4();
  v11 = swift_allocObject();
  sub_1C443FBF4(v11);
  swift_task_create();

  sub_1C440C2C8(v3);

LABEL_9:
  sub_1C43FE9F0();
}

void sub_1C4785480()
{
  sub_1C43FBD3C();
  sub_1C4434FDC();
  v5 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440D3AC(v7, v13);
  v8 = sub_1C4F018C8();
  sub_1C4404E78(v8);
  if (&qword_1C4F29150 == 1)
  {
    sub_1C440C2C8(v1);
  }

  else
  {
    sub_1C4F018B8();
    sub_1C4416064();
    (*(v9 + 8))(v1, &qword_1EC0BC660);
  }

  v10 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v10)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C440C2C8(v3);
    sub_1C44042C4();
    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    *(v12 + 24) = v0;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1C4F017F8();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C4F011C8();
  sub_1C44042C4();
  v11 = swift_allocObject();
  sub_1C443FBF4(v11);
  swift_task_create();

  sub_1C440C2C8(v3);

LABEL_9:
  sub_1C43FE9F0();
}

uint64_t sub_1C47856A8()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2CD98);
  v1 = sub_1C442B738(v0, qword_1EDE2CD98);
  v2 = type metadata accessor for Configuration(0);

  return sub_1C440BAA8(v1, 1, 1, v2);
}

void sub_1C4785724(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DCD8);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_1C43FCED0();
    *v9 = 0;
    _os_log_impl(&dword_1C43F8000, v7, v8, "EventLogServiceXPC: starting...", v9, 2u);
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  if (qword_1EDDE5C10 != -1)
  {
    sub_1C440F5FC(&qword_1EDDE5C10);
  }

  v10 = sub_1C442B738(v2, qword_1EDE2CD98);
  sub_1C44098F0(a1, v5);
  v11 = type metadata accessor for Configuration(0);
  sub_1C440BAA8(v5, 0, 1, v11);
  swift_beginAccess();
  sub_1C45A6EE0(v5, v10);
  swift_endAccess();
  sub_1C4461BB8(0, &qword_1EDDFA520, 0x1E696B0D8);
  v12 = sub_1C4F01138();
  v14 = sub_1C49AA56C(v12, v13);
  v15 = qword_1EDE2CD88;
  qword_1EDE2CD88 = v14;
  v16 = v14;

  if (v16)
  {
    qword_1EDE2CD90 = [objc_allocWithZone(type metadata accessor for EventLogServiceXPC.Delegate()) init];
    v17 = qword_1EDE2CD90;
    swift_unknownObjectRelease();
    [v16 setDelegate:v17];

    [v16 resume];
  }

  else
  {
    v16 = sub_1C4F00968();
    v18 = sub_1C4F01CE8();
    if (os_log_type_enabled(v16, v18))
    {
      v19 = sub_1C43FCED0();
      *v19 = 0;
      _os_log_impl(&dword_1C43F8000, v16, v18, "Failed to create EventLogService XPC service", v19, 2u);
      sub_1C43FE9D4();
    }
  }
}

uint64_t sub_1C47859D4(uint64_t a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for Configuration(0);
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C44098F0(a1, v9 - v8);
  type metadata accessor for EventLogDatabase(0);
  v10 = swift_allocObject();
  EventLogDatabase.init(config:)();
  if (v2)
  {
    sub_1C4467948(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v3[OBJC_IVAR____TtCC24IntelligencePlatformCore18EventLogServiceXPC6Server_storage] = v11;
    type metadata accessor for EventLogBufferedWriter(0);
    swift_allocObject();

    *&v3[OBJC_IVAR____TtCC24IntelligencePlatformCore18EventLogServiceXPC6Server_bufferedWriter] = sub_1C4794B48();
    v13.receiver = v3;
    v13.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v13, sel_init);
    sub_1C4467948(a1);
  }

  return v10;
}

id EventLogServiceXPC.Server.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - v4;
  v6 = *&v0[OBJC_IVAR____TtCC24IntelligencePlatformCore18EventLogServiceXPC6Server_bufferedWriter];
  v7 = sub_1C4F018C8();
  sub_1C44102A4(v5, v8, v9, v7);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v6;

  sub_1C441712C();
  sub_1C4785250();

  v12.receiver = v0;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

uint64_t sub_1C4785C24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return sub_1C479679C();
}

uint64_t sub_1C4785CB4()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v1[1] = sub_1C442F080;

  return sub_1C4785C24();
}

void EventLogServiceXPC.Server.logStart(withId:timestamp:name:parent:completion:)()
{
  sub_1C43FBD3C();
  v46 = v0;
  v47 = v1;
  v48 = v2;
  v44 = v4;
  v45 = v3;
  v41 = v6;
  v42 = v5;
  v40 = v7;
  v8 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v39 - v10;
  sub_1C4EFDF68();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v12 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  v19 = sub_1C4EFE058();
  sub_1C43FCDF8();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v25 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v39 - v28;
  (*(v14 + 16))(v18, v40, v12, v27);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFE008();
  swift_storeEnumTagMultiPayload();
  sub_1C4EFDF78();
  v30 = sub_1C4F018C8();
  sub_1C44102A4(v43, v31, v32, v30);
  (*(v21 + 16))(v25, v29, v19);
  v33 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v34 = swift_allocObject();
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  v35 = v46;
  *(v34 + 4) = v46;
  (*(v21 + 32))(&v34[v33], v25, v19);
  v36 = &v34[(v23 + v33 + 7) & 0xFFFFFFFFFFFFFFF8];
  v37 = v48;
  *v36 = v47;
  *(v36 + 1) = v37;
  v38 = v35;

  sub_1C441712C();
  sub_1C4785250();

  (*(v21 + 8))(v29, v19);
  sub_1C43FE9F0();
}

uint64_t sub_1C47860D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C47860F8, 0, 0);
}

uint64_t sub_1C47860F8()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  sub_1C4432244(v1);

  return sub_1C47963A4();
}

uint64_t sub_1C478618C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4786270()
{
  v0 = sub_1C4405B2C();
  sub_1C43FCF7C(v0);
  sub_1C440AA4C();
  v1 = swift_task_alloc();
  v2 = sub_1C43FC268(v1);
  *v2 = v3;
  v4 = sub_1C442C970(v2);

  return sub_1C47860D4(v4, v5, v6, v7, v8, v9, v10);
}

void EventLogServiceXPC.Server.logEnd(withId:timestamp:dependencies:payloadType:payloadVariant:payload:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FBD3C();
  v103 = v24;
  v104 = v23;
  v101 = v25;
  v102 = v26;
  v28 = v27;
  v98 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  sub_1C43FBD18(v36);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v89 - v38;
  v96 = sub_1C4EFDF68();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBCC4();
  v95 = v42 - v41;
  v43 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBCC4();
  v49 = v48 - v47;
  v50 = sub_1C4EFE058();
  sub_1C43FCDF8();
  v52 = v51;
  MEMORY[0x1EEE9AC00](v53);
  sub_1C441B8D8();
  v93 = v55;
  v94 = v54;
  MEMORY[0x1EEE9AC00](v56);
  sub_1C441E368(v57, v58, v59, v60, v61, v62, v63, v64, v89);
  v65 = *(v45 + 16);
  v92 = v49;
  v65(v49, v35, v43);
  v66 = sub_1C443156C(v33);
  v100 = v28;
  v97 = v31;
  v91 = v52;
  if (!v66)
  {
    v75 = v39;
LABEL_12:
    v103 = a22;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44344B8(v102, a21);
    sub_1C4EFDFB8();
    swift_storeEnumTagMultiPayload();
    v76 = v99;
    sub_1C4EFDF78();
    v77 = sub_1C4F018C8();
    sub_1C44102A4(v75, v78, v79, v77);
    v80 = v91;
    v81 = v94;
    (*(v91 + 16))(v94, v76, v50);
    v82 = (v93 + ((*(v80 + 80) + 40) & ~*(v80 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v83 = swift_allocObject();
    *(v83 + 16) = 0;
    *(v83 + 24) = 0;
    v84 = v104;
    v85 = sub_1C4409C40(v83);
    v86(v85, v81, v50);
    v87 = (v83 + v82);
    *v87 = v103;
    v87[1] = a23;
    v88 = v84;

    sub_1C441712C();
    sub_1C4785250();

    (*(v80 + 8))(v76, v50);
    sub_1C43FE9F0();
    return;
  }

  v67 = v66;
  v105 = MEMORY[0x1E69E7CC0];
  sub_1C459D380(0, v66 & ~(v66 >> 63), 0);
  if ((v67 & 0x8000000000000000) == 0)
  {
    v89 = v50;
    v90 = v39;
    v68 = 0;
    v69 = v105;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v70 = MEMORY[0x1C6940F90](v68, v33);
      }

      else
      {
        v70 = *(v33 + 8 * v68 + 32);
      }

      v71 = v70;
      v72 = [v70 longLongValue];

      v105 = v69;
      v74 = *(v69 + 16);
      v73 = *(v69 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_1C459D380(v73 > 1, v74 + 1, 1);
        v69 = v105;
      }

      ++v68;
      *(v69 + 16) = v74 + 1;
      *(v69 + 8 * v74 + 32) = v72;
    }

    while (v67 != v68);
    v50 = v89;
    v75 = v90;
    goto LABEL_12;
  }

  __break(1u);
}

void EventLogServiceXPC.Server.logInstant(withId:timestamp:name:parent:dependencies:payloadType:payloadVariant:payload:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1C43FBD3C();
  v96 = v26;
  v91 = v27;
  v92 = v28;
  v30 = v29;
  v32 = v31;
  v93 = v33;
  v34 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  sub_1C43FBD18(v34);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  v95 = v85 - v36;
  v89 = sub_1C4EFDF68();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBCC4();
  v40 = v39 - v38;
  v41 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBCC4();
  v47 = v46 - v45;
  v94 = sub_1C4EFE058();
  sub_1C43FCDF8();
  v49 = v48;
  MEMORY[0x1EEE9AC00](v50);
  sub_1C441B8D8();
  v86 = v52;
  v87 = v51;
  MEMORY[0x1EEE9AC00](v53);
  sub_1C441E368(v54, v55, v56, v57, v58, v59, v60, v61, v85[0]);
  v62 = *(v43 + 16);
  v85[1] = v47;
  v62(v47, v32, v41);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v88 = v40;
  sub_1C4EFE008();
  v63 = sub_1C443156C(v30);
  if (!v63)
  {
LABEL_10:
    v85[0] = a25;
    sub_1C456902C(&unk_1EC0BC670, &unk_1C4F29260);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44344B8(a23, a24);
    sub_1C4EFDFB8();
    swift_storeEnumTagMultiPayload();
    v72 = v90;
    sub_1C4EFDF78();
    v73 = sub_1C4F018C8();
    sub_1C44102A4(v95, v74, v75, v73);
    v76 = v87;
    v77 = v94;
    (*(v49 + 16))(v87, v72, v94);
    v78 = (v86 + ((*(v49 + 80) + 40) & ~*(v49 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    *(v79 + 16) = 0;
    *(v79 + 24) = 0;
    v80 = v96;
    v81 = sub_1C4409C40(v79);
    v82(v81, v76, v77);
    v83 = (v79 + v78);
    *v83 = v85[0];
    v83[1] = a26;
    v84 = v80;

    sub_1C441712C();
    sub_1C4785250();

    (*(v49 + 8))(v72, v77);
    sub_1C43FE9F0();
    return;
  }

  v64 = v63;
  v97 = MEMORY[0x1E69E7CC0];
  sub_1C459D380(0, v63 & ~(v63 >> 63), 0);
  if ((v64 & 0x8000000000000000) == 0)
  {
    v65 = 0;
    v66 = v97;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v67 = MEMORY[0x1C6940F90](v65, v30);
      }

      else
      {
        v67 = *(v30 + 8 * v65 + 32);
      }

      v68 = v67;
      v69 = [v67 longLongValue];

      v97 = v66;
      v71 = *(v66 + 16);
      v70 = *(v66 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1C459D380(v70 > 1, v71 + 1, 1);
        v66 = v97;
      }

      ++v65;
      *(v66 + 16) = v71 + 1;
      *(v66 + 8 * v71 + 32) = v69;
    }

    while (v64 != v65);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1C4786F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C4786F84, 0, 0);
}

uint64_t sub_1C4786F84()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  sub_1C4432244(v1);

  return sub_1C47963A4();
}

uint64_t sub_1C4787018()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C47870FC()
{
  sub_1C43FBCD4();
  (*(v0 + 32))(1, 0);
  sub_1C43FBDA0();

  return v1();
}

id EventLogServiceXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C4787404(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &aBlock - v8;
  if (qword_1EDDE5C10 != -1)
  {
    sub_1C440F5FC(&qword_1EDDE5C10);
  }

  v10 = sub_1C442B738(v3, qword_1EDE2CD98);
  swift_beginAccess();
  sub_1C445FFF0(v10, v9, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v11 = type metadata accessor for Configuration(0);
  result = sub_1C44157D4(v9, 1, v11);
  if (result != 1)
  {
    v13 = &v9[*(v11 + 20)];
    v14 = *v13;
    v15 = *(v13 + 1);
    sub_1C4467948(v9);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v14) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v15) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0(&qword_1EDDFA678);
      }

      v22 = sub_1C4F00978();
      sub_1C442B738(v22, qword_1EDE2DCD8);
      v23 = sub_1C4F00968();
      v24 = sub_1C4F01CF8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = sub_1C43FCED0();
        *v25 = 0;
        _os_log_impl(&dword_1C43F8000, v23, v24, "EventLogServiceXPC: service is in no-op mode.", v25, 2u);
        sub_1C43FE9D4();
      }
    }

    else
    {
      v17 = sub_1C4F01138();
      v19 = sub_1C446874C(v17, v18);

      if (v19)
      {
        v20 = [objc_opt_self() interfaceWithProtocol_];
        sub_1C43FD04C(v20, sel_setExportedInterface_);

        sub_1C445FFF0(v10, v6, &unk_1EC0B9610, &unk_1C4F0F2E0);
        result = sub_1C44157D4(v6, 1, v11);
        if (result != 1)
        {
          v21 = objc_allocWithZone(type metadata accessor for EventLogServiceXPC.Server());
          v26 = sub_1C47859D4(v6);
          sub_1C43FD04C(v26, sel_setExportedObject_);

          v33 = sub_1C47878AC;
          v34 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v30 = 1107296256;
          v31 = sub_1C4833DD0;
          v32 = &unk_1F43EB0D8;
          v27 = _Block_copy(&aBlock);
          sub_1C43FD04C(v27, sel_setInterruptionHandler_);
          _Block_release(v27);
          v33 = sub_1C47878CC;
          v34 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v30 = 1107296256;
          v31 = sub_1C4833DD0;
          v32 = &unk_1F43EB100;
          v28 = _Block_copy(&aBlock);
          sub_1C43FD04C(v28, sel_setInvalidationHandler_);
          _Block_release(v28);
          [a2 resume];
          return 1;
        }

        goto LABEL_20;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_1C47878EC(uint64_t (*a1)(void), const char *a2)
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DCD8);
  oslog = sub_1C4F00968();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = sub_1C43FCED0();
    *v6 = 0;
    _os_log_impl(&dword_1C43F8000, oslog, v5, a2, v6, 2u);
    sub_1C43FE9D4();
  }
}

void sub_1C4787A70(uint64_t a1)
{
  sub_1C4EFD598();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v3 = type metadata accessor for Configuration(0);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = *(a1 + *(v5 + 28));
  if (qword_1EDDFCFF8 != -1)
  {
    v13 = *(a1 + *(v5 + 28));
    swift_once();
    v9 = v13;
  }

  v10 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDFD000, v9), xmmword_1EDDFD000));
  if (v10.i32[0] & v10.i32[1])
  {
    sub_1C44098F0(a1, v8);
    v11 = type metadata accessor for EventLogWriter();
    swift_allocObject();
    v12 = sub_1C4788E18(v8, 1);
    v14[3] = v11;
    v14[4] = sub_1C47880C8();
    v14[0] = v12;
    sub_1C4EFD578();
    sub_1C440962C(v14);
  }
}

uint64_t sub_1C4787D04()
{
  v0 = sub_1C4405B2C();
  sub_1C43FCF7C(v0);
  sub_1C440AA4C();
  v1 = swift_task_alloc();
  v2 = sub_1C43FC268(v1);
  *v2 = v3;
  v4 = sub_1C442C970(v2);

  return sub_1C47860D4(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C4787DEC()
{
  v1 = sub_1C4EFE058();
  sub_1C43FCDF8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v4 | 7);
}

uint64_t sub_1C4787EC4()
{
  v0 = sub_1C4405B2C();
  sub_1C43FCF7C(v0);
  sub_1C440AA4C();
  v1 = swift_task_alloc();
  v2 = sub_1C43FC268(v1);
  *v2 = v3;
  v4 = sub_1C442C970(v2);

  return sub_1C4786F60(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C4788030()
{
  sub_1C43FCF70();
  sub_1C44250A8();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C4406C84(v1);

  return v4(v3);
}

unint64_t sub_1C47880C8()
{
  result = qword_1EDDFBD80[0];
  if (!qword_1EDDFBD80[0])
  {
    type metadata accessor for EventLogWriter();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFBD80);
  }

  return result;
}

void sub_1C478813C()
{
  sub_1C4413F18();
  sub_1C44002F4();
  v2 = sub_1C456902C(&unk_1EC0BC8E0, &qword_1C4F29AC0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  v4 = sub_1C442C998(&unk_1EDDFA378, &unk_1EC0BC8F0, &unk_1C4F29AC8);
  if (sub_1C440C4B0(v4))
  {
    type metadata accessor for EventTriple(0);
    v5 = sub_1C440310C();
LABEL_8:
    sub_1C440BAA8(v5, v6, v7, v8);
    goto LABEL_9;
  }

  v9 = sub_1C4406CA4(&qword_1EDDFA388, &unk_1EC0BC8F0, &unk_1C4F29AC8);
  sub_1C444FD58(v9);
  v10 = sub_1C43FBE94();
  type metadata accessor for EventTriple(v10);
  sub_1C443E304();
  sub_1C43FEF44();
  sub_1C4460A3C();

  if (!v0)
  {
    sub_1C44130E8();
    if (v11)
    {
      sub_1C4420C3C(v1, &unk_1EC0BC8E0, &qword_1C4F29AC0);
      sub_1C4410BE4();
      sub_1C4EFB4C8();
      sub_1C440D3D8();
    }

    else
    {
      sub_1C44951D4();
      sub_1C4460210();
    }

    sub_1C4404EB4();
    goto LABEL_8;
  }

LABEL_9:
  sub_1C441B8EC();
  sub_1C44102DC();
}

uint64_t sub_1C47882A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C456902C(&qword_1EC0BC720, &qword_1C4F29248);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  sub_1C4401CBC(&qword_1EC0BCA68, &qword_1EC0BCA70, &qword_1C4F29BC8, MEMORY[0x1E699FDF0]);
  if (sub_1C4EFB4B8())
  {
    v6 = type metadata accessor for EventLogDatabase.EventLogDatabaseEntry(0);
    v7 = a1;
    v8 = 1;
  }

  else
  {
    sub_1C4401CBC(&qword_1EC0BCA78, &qword_1EC0BCA70, &qword_1C4F29BC8, MEMORY[0x1E699FDE8]);
    sub_1C4EFB2A8();
    v9 = type metadata accessor for EventLogDatabase.EventLogDatabaseEntry(0);

    sub_1C4EFC098();

    if (v1)
    {
      return result;
    }

    if (sub_1C44157D4(v5, 1, v9) == 1)
    {
      sub_1C4420C3C(v5, &qword_1EC0BC720, &qword_1C4F29248);
      sub_1C4EFB4C8();
      v7 = a1;
      v8 = 1;
    }

    else
    {
      sub_1C44C8EE8(v5, a1);
      v7 = a1;
      v8 = 0;
    }

    v6 = v9;
  }

  return sub_1C440BAA8(v7, v8, 1, v6);
}

void sub_1C47884E0()
{
  sub_1C4413F18();
  sub_1C44002F4();
  v2 = sub_1C456902C(&unk_1EC0BCA48, &qword_1C4F29BB0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  v4 = sub_1C442C998(&unk_1EDDF01A0, &unk_1EC0BCA58, &unk_1C4F29BB8);
  if (sub_1C440C4B0(v4))
  {
    type metadata accessor for FeedbackLogDatabase.FeedbackLogDatabaseEntry(0);
    v5 = sub_1C440310C();
LABEL_8:
    sub_1C440BAA8(v5, v6, v7, v8);
    goto LABEL_9;
  }

  v9 = sub_1C4406CA4(&unk_1EDDF0190, &unk_1EC0BCA58, &unk_1C4F29BB8);
  sub_1C444FD58(v9);
  v10 = sub_1C43FBE94();
  type metadata accessor for FeedbackLogDatabase.FeedbackLogDatabaseEntry(v10);
  sub_1C443E304();
  sub_1C43FEF44();
  sub_1C4460A3C();

  if (!v0)
  {
    sub_1C44130E8();
    if (v11)
    {
      sub_1C4420C3C(v1, &unk_1EC0BCA48, &qword_1C4F29BB0);
      sub_1C4410BE4();
      sub_1C4EFB4C8();
      sub_1C440D3D8();
    }

    else
    {
      sub_1C44951D4();
      sub_1C4460210();
    }

    sub_1C4404EB4();
    goto LABEL_8;
  }

LABEL_9:
  sub_1C441B8EC();
  sub_1C44102DC();
}

void sub_1C478864C()
{
  sub_1C4413F18();
  sub_1C44002F4();
  v2 = sub_1C456902C(&unk_1EC0BCA28, &qword_1C4F29BA0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  v4 = sub_1C442C998(&qword_1EDDF01C0, &unk_1EC0BCA38, &qword_1C4F29BA8);
  if (sub_1C440C4B0(v4))
  {
    type metadata accessor for FeedbackLogDatabase.FeedbackLogDeferralEntryWithFeedback(0);
    v5 = sub_1C440310C();
LABEL_8:
    sub_1C440BAA8(v5, v6, v7, v8);
    goto LABEL_9;
  }

  v9 = sub_1C4406CA4(&unk_1EDDF01B0, &unk_1EC0BCA38, &qword_1C4F29BA8);
  sub_1C444FD58(v9);
  v10 = sub_1C43FBE94();
  type metadata accessor for FeedbackLogDatabase.FeedbackLogDeferralEntryWithFeedback(v10);
  sub_1C443E304();
  sub_1C43FEF44();
  sub_1C4460A3C();

  if (!v0)
  {
    sub_1C44130E8();
    if (v11)
    {
      sub_1C4420C3C(v1, &unk_1EC0BCA28, &qword_1C4F29BA0);
      sub_1C4410BE4();
      sub_1C4EFB4C8();
      sub_1C440D3D8();
    }

    else
    {
      sub_1C44951D4();
      sub_1C4460210();
    }

    sub_1C4404EB4();
    goto LABEL_8;
  }

LABEL_9:
  sub_1C441B8EC();
  sub_1C44102DC();
}

void sub_1C47887B8()
{
  sub_1C4413F18();
  sub_1C44002F4();
  v2 = sub_1C456902C(&unk_1EC0BC8C0, &qword_1C4F29AB0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  v4 = sub_1C442C998(&unk_1EDDF0138, &unk_1EC0BC8D0, &qword_1C4F29AB8);
  if (sub_1C440C4B0(v4))
  {
    type metadata accessor for ExpiredConstructionGraphTriple(0);
    v5 = sub_1C440310C();
LABEL_8:
    sub_1C440BAA8(v5, v6, v7, v8);
    goto LABEL_9;
  }

  v9 = sub_1C4406CA4(&unk_1EDDF0148, &unk_1EC0BC8D0, &qword_1C4F29AB8);
  sub_1C444FD58(v9);
  v10 = sub_1C43FBE94();
  type metadata accessor for ExpiredConstructionGraphTriple(v10);
  sub_1C443E304();
  sub_1C43FEF44();
  sub_1C4460A3C();

  if (!v0)
  {
    sub_1C44130E8();
    if (v11)
    {
      sub_1C4420C3C(v1, &unk_1EC0BC8C0, &qword_1C4F29AB0);
      sub_1C4410BE4();
      sub_1C4EFB4C8();
      sub_1C440D3D8();
    }

    else
    {
      sub_1C44951D4();
      sub_1C4460210();
    }

    sub_1C4404EB4();
    goto LABEL_8;
  }

LABEL_9:
  sub_1C441B8EC();
  sub_1C44102DC();
}

void sub_1C4788924()
{
  sub_1C4413F18();
  sub_1C44002F4();
  v2 = sub_1C456902C(&unk_1EC0BC8A0, &qword_1C4F29AA0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  v4 = sub_1C442C998(&unk_1EDDF0158, &unk_1EC0BC8B0, &qword_1C4F29AA8);
  if (sub_1C440C4B0(v4))
  {
    type metadata accessor for ExpiredConstructionEventTriple(0);
    v5 = sub_1C440310C();
LABEL_8:
    sub_1C440BAA8(v5, v6, v7, v8);
    goto LABEL_9;
  }

  v9 = sub_1C4406CA4(&unk_1EDDF0168, &unk_1EC0BC8B0, &qword_1C4F29AA8);
  sub_1C444FD58(v9);
  v10 = sub_1C43FBE94();
  type metadata accessor for ExpiredConstructionEventTriple(v10);
  sub_1C443E304();
  sub_1C43FEF44();
  sub_1C4460A3C();

  if (!v0)
  {
    sub_1C44130E8();
    if (v11)
    {
      sub_1C4420C3C(v1, &unk_1EC0BC8A0, &qword_1C4F29AA0);
      sub_1C4410BE4();
      sub_1C4EFB4C8();
      sub_1C440D3D8();
    }

    else
    {
      sub_1C44951D4();
      sub_1C4460210();
    }

    sub_1C4404EB4();
    goto LABEL_8;
  }

LABEL_9:
  sub_1C441B8EC();
  sub_1C44102DC();
}

uint64_t sub_1C4788A90@<X0>(uint64_t a1@<X8>)
{
  sub_1C43FC20C();
  sub_1C442C998(&qword_1EDDFA338, &qword_1EC0BC920, &qword_1C4F29AE8);
  sub_1C43FD2BC();
  result = sub_1C4EFB4B8();
  if (result)
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    sub_1C4406CA4(&unk_1EDDFA328, &qword_1EC0BC920, &qword_1C4F29AE8);
    sub_1C4EFB2A8();

    sub_1C4EFC098();

    if (!v1)
    {
      if (v10)
      {
        *a1 = v4;
        *(a1 + 8) = v5;
        *(a1 + 16) = v6;
        *(a1 + 24) = v7;
        *(a1 + 32) = v8;
        *(a1 + 40) = v9;
        *(a1 + 48) = v10;
      }

      else
      {

        sub_1C4416AA8();
        result = sub_1C4EFB4C8();
        *a1 = v4;
        *(a1 + 8) = v5;
        *(a1 + 16) = v6;
        *(a1 + 24) = v7;
        *(a1 + 32) = v8;
        *(a1 + 40) = v9;
        *(a1 + 48) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4788C20()
{
  sub_1C44002F4();
  sub_1C442C998(&unk_1EDDFA350, &qword_1EC0BC918, &qword_1C4F29AE0);
  result = sub_1C4EFB4B8();
  if (result)
  {
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *v1 = 0u;
    *(v1 + 48) = 0xB000000000000000;
  }

  else
  {
    v3 = sub_1C4406CA4(&unk_1EDDFA340, &qword_1EC0BC918, &qword_1C4F29AE0);
    sub_1C444FD58(v3);

    sub_1C4EFC098();
    sub_1C4460A3C();

    if (!v0)
    {
      if (v10 >> 60 == 11)
      {
        sub_1C44652C4(v4, v5, v6, v7, v8, v9, v10);
        sub_1C4410BE4();
        result = sub_1C4EFB4C8();
      }

      *v1 = v4;
      *(v1 + 8) = v5;
      *(v1 + 16) = v6;
      *(v1 + 24) = v7;
      *(v1 + 32) = v8;
      *(v1 + 40) = v9;
      *(v1 + 48) = v10;
    }
  }

  return result;
}

uint64_t EventLogDatabase.__allocating_init(config:)(uint64_t a1)
{
  v1 = swift_allocObject();
  EventLogDatabase.init(config:)();
  return v1;
}

void *sub_1C4788E18(uint64_t a1, char a2)
{
  v4 = v2;
  if (qword_1EDDFF248 != -1)
  {
    sub_1C44236B0();
    swift_once();
  }

  v6 = sub_1C4ABF944();
  if (v3)
  {
    sub_1C440AA6C();
    sub_1C4453D98();
    sub_1C44D3F9C();
  }

  else
  {
    v2[5] = v6;
    if (a2)
    {
      type metadata accessor for EventLogBufferedWriter(0);
      sub_1C43FD23C();
      v7 = swift_allocObject();

      sub_1C4794B48();
    }

    else
    {
      v7 = 0;
    }

    v2[6] = v7;
    sub_1C4EF96F8();
    sub_1C43FD23C();
    swift_allocObject();
    v2[2] = sub_1C4EF96E8();

    sub_1C4EF96C8();

    sub_1C4EF96B8();
    sub_1C43FD23C();
    swift_allocObject();
    v2[3] = sub_1C4EF96A8();
    v8 = objc_autoreleasePoolPush();
    sub_1C4788FD4(&v10);
    objc_autoreleasePoolPop(v8);
    sub_1C440AA6C();
    sub_1C4453D98();
    v4[4] = v10;
  }

  return v4;
}

void sub_1C4788FD4(uint64_t *a1@<X8>)
{
  v2 = sub_1C4EF98F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  sub_1C4461BB8(0, &qword_1EDDFE8E8, 0x1E696AAE8);
  v9 = sub_1C4F01E78();
  v10 = sub_1C4486838(0xD000000000000014, 0x80000001C4F9A2D0, 1852797802, 0xE400000000000000, v9);

  if (v10)
  {
    sub_1C4EF98C8();

    sub_1C4EFF5B8();
    (*(v3 + 16))(v5, v8, v2);
    v11 = sub_1C4EFF5A8();
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CE8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      v17 = sub_1C4F01E78();
      v18 = [v17 bundlePath];

      v19 = sub_1C4F01138();
      v21 = v20;

      v22 = sub_1C441D828(v19, v21, &v24);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_1C43F8000, v13, v14, "Failed to find Event Log policy file in %s", v15, 0xCu);
      sub_1C440962C(v16);
      MEMORY[0x1C6942830](v16, -1, -1);
      MEMORY[0x1C6942830](v15, -1, -1);
    }

    v11 = 0;
  }

  *a1 = v11;
}

uint64_t sub_1C47892C8()
{
  v1 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C444BFE4();
  v3 = *(v0 + 48);
  if (v3)
  {
    sub_1C4F018C8();
    sub_1C445698C();
    sub_1C43FCF64();
    sub_1C440BAA8(v4, v5, v6, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v3;

    sub_1C445A93C();
  }

  return v0;
}

uint64_t sub_1C47893B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C479679C();
}

uint64_t sub_1C4789448()
{
  sub_1C47892C8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C478947C()
{
  if (!*(v0 + 32) || (sub_1C4EFF598() & 1) == 0)
  {
    return 0;
  }

  do
  {
    v2 = 0;
    MEMORY[0x1C6942850](&v2, 8);
    result = v2;
  }

  while (!v2);
  return result;
}

void sub_1C47894D0()
{
  sub_1C43FBD3C();
  v14 = v2;
  v4 = v3;
  sub_1C4EFDF68();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v6 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C4414998();
  v10 = sub_1C4EFE058();
  sub_1C43FCDF8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  sub_1C440DED0();
  if (v4)
  {
    (*(v8 + 16))(v1, v14, v6);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFE008();
    sub_1C44089C8();
    swift_storeEnumTagMultiPayload();
    sub_1C4EFDF78();
    sub_1C4789688(v0);
    (*(v12 + 8))(v0, v10);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C4789688(uint64_t a1)
{
  v3 = sub_1C4EFE058();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  v10 = *(v1 + 48);
  if (v10)
  {
    v11 = sub_1C4F018C8();
    sub_1C440BAA8(v9, 1, 1, v11);
    (*(v4 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 4) = v10;
    (*(v4 + 32))(&v13[v12], &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

    sub_1C4785250();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    *(&v17 - 2) = a1;
    MEMORY[0x1EEE9AC00](v15);
    *(&v17 - 2) = sub_1C479829C;
    *(&v17 - 1) = v16;
    return sub_1C446C37C(sub_1C4798C8C, (&v17 - 4));
  }
}

void sub_1C47898D4()
{
  sub_1C43FBD3C();
  sub_1C44158BC();
  sub_1C4EFDF68();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  sub_1C440DED0();
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C444BFE4();
  sub_1C4EFE058();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  if (v0)
  {
    sub_1C4798CC4();
    sub_1C43FE9F0();
  }

  else
  {
    sub_1C43FE9F0();
  }
}

void sub_1C4789B08()
{
  sub_1C43FBD3C();
  sub_1C44158BC();
  sub_1C4EFDF68();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  sub_1C440DED0();
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C444BFE4();
  sub_1C4EFE058();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  if (v0)
  {
    sub_1C4798CC4();
    sub_1C43FE9F0();
  }

  else
  {
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C4789D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1C442F080;

  return sub_1C47963A4();
}

uint64_t sub_1C4789E68()
{
  sub_1C43FBCD4();
  v1 = *(v0[2] + 48);
  v0[3] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_1C4789F38;

    return sub_1C4796880();
  }

  else
  {
    sub_1C43FBDA0();

    return v4();
  }
}

uint64_t sub_1C4789F38()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C478A024, 0, 0);
}

uint64_t sub_1C478A024()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C478A10C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return sub_1C4789E4C();
}

uint64_t sub_1C478A19C()
{
  sub_1C456902C(&qword_1EC0BCA20, &qword_1C4F29B98);
  swift_allocObject();
  result = sub_1C4CE5220();
  qword_1EDE2DFF8 = result;
  return result;
}

IntelligencePlatformCore::EventLogDatabase::EventKind_optional __swiftcall EventLogDatabase.EventKind.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C478A224@<X0>(uint64_t *a1@<X8>)
{
  result = EventLogDatabase.EventKind.rawValue.getter();
  *a1 = result;
  return result;
}

void sub_1C478A358()
{
  sub_1C4413F18();
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0BC990, &qword_1C4F29B10);
  sub_1C43FCDF8();
  v6 = v5;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FE61C();
  v8 = v3[3];
  sub_1C4409678(v3, v8);
  v9 = sub_1C47985EC();
  sub_1C440F61C(&type metadata for EventLogDatabase.EventLogDatabaseEntry.CodingKeys, v10, v9);
  sub_1C4480754();
  if (!v0)
  {
    type metadata accessor for EventLogDatabase.EventLogDatabaseEntry(0);
    sub_1C446BC24();
    sub_1C440E22C();
    sub_1C44FAED4(v11, v12, MEMORY[0x1E6969538]);
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C447546C();
    sub_1C4414A54();
    sub_1C4F027E8();
    sub_1C4401774(v8[7]);
    sub_1C443225C(3);
    sub_1C4F02738();
    sub_1C443225C(4);
    sub_1C4F02788();
    sub_1C4485D28();
    sub_1C456902C(&qword_1EC0BC860, &unk_1C4F29660);
    sub_1C4401D90(&qword_1EDDDBBB0, MEMORY[0x1E69E7368]);
    sub_1C43FEF68();
    sub_1C4F02778();
    sub_1C4401774(v8[10]);
    sub_1C443225C(6);
    sub_1C4F02738();
    sub_1C4401774(v8[11]);
    sub_1C443225C(7);
    sub_1C4F02738();
    v14 = sub_1C4401774(v8[12]);
    v15 = v13;
    sub_1C4431E64(v14, v13);
    sub_1C446E5F8();
    sub_1C4414A54();
    sub_1C4F02778();
    sub_1C441DFEC(v14, v15);
  }

  (*(v6 + 8))(v1, v4);
  sub_1C44102DC();
}

void sub_1C478A5C4()
{
  sub_1C43FE96C();
  sub_1C44A1D20();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  sub_1C456902C(&unk_1EC0BC980, &qword_1C4F29B08);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C4414998();
  type metadata accessor for EventLogDatabase.EventLogDatabaseEntry(v5);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C44A1E60(v7, v8);
  v31 = v9;
  *v9 = xmmword_1C4F29230;
  v10 = v0[4];
  v11 = sub_1C440A9B8();
  sub_1C4409678(v11, v12);
  v13 = sub_1C47985EC();
  sub_1C4462788(&type metadata for EventLogDatabase.EventLogDatabaseEntry.CodingKeys, v14, v13);
  if (v1)
  {
    sub_1C448DFE4();
    sub_1C440962C(v0);

    sub_1C441DFEC(*v31, *(v31 + 1));
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_1C440BCA8();
    v15 = sub_1C4F026D8();
    sub_1C4428988(v15);
    sub_1C440E22C();
    sub_1C44FAED4(v16, v17, MEMORY[0x1E6969558]);
    sub_1C440BCA8();
    sub_1C4F026C8();
    v18 = sub_1C440EF80();
    v19(v18);
    sub_1C47984D8();
    sub_1C4405B48();
    sub_1C4F026C8();
    *(v2 + v10[6]) = 0;
    sub_1C4411C5C(3);
    v20 = sub_1C4F02618();
    sub_1C441E06C(v20, v21, v10[7]);
    sub_1C4411C5C(4);
    v22 = sub_1C4F02668();
    sub_1C44B8F44(v22, v23);
    sub_1C456902C(&qword_1EC0BC860, &unk_1C4F29660);
    sub_1C442AB8C(&unk_1EC0BC958, MEMORY[0x1E69E7390]);
    sub_1C440BCA8();
    sub_1C4F02658();
    *(v2 + v10[9]) = v32;
    sub_1C4411C5C(6);
    v24 = sub_1C4F02618();
    sub_1C441E06C(v24, v25, v10[10]);
    sub_1C4411C5C(7);
    v26 = sub_1C4F02618();
    sub_1C447CB9C(v26, v27);
    sub_1C4405B48();
    sub_1C4F02658();
    v28 = sub_1C43FD6A8();
    v29(v28);
    sub_1C441DFEC(*v31, *(v31 + 1));
    *v31 = v32;
    *(v31 + 1) = v33;
    sub_1C442FD20();
    sub_1C4430ACC(v30, v2);
    sub_1C440962C(v0);
    sub_1C4419580();
    sub_1C4453D98();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C478AA50(uint64_t a1)
{
  v2 = sub_1C47985EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C478AA8C(uint64_t a1)
{
  v2 = sub_1C47985EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C478AAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C44FAED4(&unk_1EC0BC890, type metadata accessor for EventLogDatabase.EventLogDatabaseEntry, &unk_1C4F297A8);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C478ABFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C44FAED4(&unk_1EC0BC998, type metadata accessor for EventLogDatabase.EventLogDatabaseEntry, &unk_1C4F29740);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C478AD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C44FAED4(&qword_1EDDE7120, type metadata accessor for EventLogDatabase.EventLogDatabaseEntry, &unk_1C4F29780);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C478AE3C()
{
  v0 = *aEvents_2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v0;
}

uint64_t sub_1C478AEC4(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  sub_1C44F9918(v6, a3);
  v7 = sub_1C442B738(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t sub_1C478AF5C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C4EFBF38();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  v13 = sub_1C4EFBAF8();
  sub_1C44F9918(v13, a2);
  sub_1C442B738(v13, a2);
  v14 = *MEMORY[0x1E69A00C8];
  v15 = *(v5 + 104);
  v15(v12, v14, v3);
  v15(v9, v14, v3);
  return sub_1C4EFBAE8();
}

uint64_t sub_1C478B090(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C43FEC00(25705, 0xE200000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == sub_1C43FC144() && a2 == v6;
    if (v7 || (sub_1C441D6B4(), (sub_1C43FEC00(v8, v9) & 1) != 0))
    {

      return 1;
    }

    else
    {
      v10 = a1 == 1684957547 && a2 == 0xE400000000000000;
      if (v10 || (sub_1C43FEC00(1684957547, 0xE400000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v11 = a1 == 1701667182 && a2 == 0xE400000000000000;
        if (v11 || (sub_1C43FEC00(1701667182, 0xE400000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v12 = a1 == 0x746E65726170 && a2 == 0xE600000000000000;
          if (v12 || (sub_1C43FEC00(0x746E65726170, 0xE600000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v13 = sub_1C442A6C8();
            v15 = a1 == v13 && a2 == v14;
            if (v15 || (sub_1C43FEC00(v13, v14) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v16 = sub_1C449AE80();
              v18 = a1 == v16 && a2 == v17;
              if (v18 || (sub_1C43FEC00(v16, v17) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v19 = sub_1C44416F8();
                v21 = a1 == v19 && a2 == v20;
                if (v21 || (sub_1C43FEC00(v19, v20) & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
                {

                  return 8;
                }

                else
                {
                  v23 = sub_1C43FEC00(0x64616F6C796170, 0xE700000000000000);

                  if (v23)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C478B29C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      sub_1C441D6B4();
      result = sub_1C43FC144();
      break;
    case 2:
      result = 1684957547;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0x746E65726170;
      break;
    case 5:
      result = sub_1C442A6C8();
      break;
    case 6:
      result = sub_1C449AE80();
      break;
    case 7:
      result = sub_1C44416F8();
      break;
    case 8:
      result = 0x64616F6C796170;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C478B38C()
{
  sub_1C4413F18();
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0BC968, &qword_1C4F29B00);
  sub_1C43FCDF8();
  v6 = v5;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FE61C();
  v8 = v3[3];
  sub_1C4409678(v3, v8);
  v9 = sub_1C4798484();
  sub_1C440F61C(&type metadata for EventLogDatabase.TemporaryEventLogDatabaseEntry.CodingKeys, v10, v9);
  sub_1C4480754();
  if (!v0)
  {
    type metadata accessor for EventLogDatabase.TemporaryEventLogDatabaseEntry(0);
    sub_1C446BC24();
    sub_1C440E22C();
    sub_1C44FAED4(v11, v12, MEMORY[0x1E6969538]);
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C447546C();
    sub_1C4414A54();
    sub_1C4F027E8();
    sub_1C4401774(v8[7]);
    sub_1C443225C(3);
    sub_1C4F02738();
    sub_1C443225C(4);
    sub_1C4F02788();
    sub_1C4485D28();
    sub_1C456902C(&qword_1EC0BC860, &unk_1C4F29660);
    sub_1C4401D90(&qword_1EDDDBBB0, MEMORY[0x1E69E7368]);
    sub_1C43FEF68();
    sub_1C4F02778();
    sub_1C4401774(v8[10]);
    sub_1C443225C(6);
    sub_1C4F02738();
    sub_1C4401774(v8[11]);
    sub_1C443225C(7);
    sub_1C4F02738();
    v14 = sub_1C4401774(v8[12]);
    v15 = v13;
    sub_1C4431E64(v14, v13);
    sub_1C446E5F8();
    sub_1C4414A54();
    sub_1C4F02778();
    sub_1C441DFEC(v14, v15);
  }

  (*(v6 + 8))(v1, v4);
  sub_1C44102DC();
}

void sub_1C478B5F8()
{
  sub_1C43FE96C();
  sub_1C44A1D20();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  sub_1C456902C(&qword_1EC0BC938, &qword_1C4F29AF8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C4414998();
  type metadata accessor for EventLogDatabase.TemporaryEventLogDatabaseEntry(v5);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C44A1E60(v7, v8);
  v31 = v9;
  *v9 = xmmword_1C4F29230;
  v10 = v0[4];
  v11 = sub_1C440A9B8();
  sub_1C4409678(v11, v12);
  v13 = sub_1C4798484();
  sub_1C4462788(&type metadata for EventLogDatabase.TemporaryEventLogDatabaseEntry.CodingKeys, v14, v13);
  if (v1)
  {
    sub_1C448DFE4();
    sub_1C440962C(v0);

    sub_1C441DFEC(*v31, *(v31 + 1));
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_1C440BCA8();
    v15 = sub_1C4F026D8();
    sub_1C4428988(v15);
    sub_1C440E22C();
    sub_1C44FAED4(v16, v17, MEMORY[0x1E6969558]);
    sub_1C440BCA8();
    sub_1C4F026C8();
    v18 = sub_1C440EF80();
    v19(v18);
    sub_1C47984D8();
    sub_1C4405B48();
    sub_1C4F026C8();
    *(v2 + v10[6]) = 0;
    sub_1C4411C5C(3);
    v20 = sub_1C4F02618();
    sub_1C441E06C(v20, v21, v10[7]);
    sub_1C4411C5C(4);
    v22 = sub_1C4F02668();
    sub_1C44B8F44(v22, v23);
    sub_1C456902C(&qword_1EC0BC860, &unk_1C4F29660);
    sub_1C442AB8C(&unk_1EC0BC958, MEMORY[0x1E69E7390]);
    sub_1C440BCA8();
    sub_1C4F02658();
    *(v2 + v10[9]) = v32;
    sub_1C4411C5C(6);
    v24 = sub_1C4F02618();
    sub_1C441E06C(v24, v25, v10[10]);
    sub_1C4411C5C(7);
    v26 = sub_1C4F02618();
    sub_1C447CB9C(v26, v27);
    sub_1C4405B48();
    sub_1C4F02658();
    v28 = sub_1C43FD6A8();
    v29(v28);
    sub_1C441DFEC(*v31, *(v31 + 1));
    *v31 = v32;
    *(v31 + 1) = v33;
    sub_1C445FD14();
    sub_1C4430ACC(v30, v2);
    sub_1C440962C(v0);
    sub_1C4423B3C();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C478BA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C478BAB0(uint64_t a1)
{
  v2 = sub_1C4798484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C478BAEC(uint64_t a1)
{
  v2 = sub_1C4798484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C478BB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C44FAED4(&qword_1EC0BC970, type metadata accessor for EventLogDatabase.TemporaryEventLogDatabaseEntry, &unk_1C4F29928);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C478BC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C44FAED4(&qword_1EC0BC790, type metadata accessor for EventLogDatabase.TemporaryEventLogDatabaseEntry, &unk_1C4F299C8);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C478BDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C44FAED4(&qword_1EC0BC978, type metadata accessor for EventLogDatabase.TemporaryEventLogDatabaseEntry, &unk_1C4F29900);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C478BE9C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  v9 = sub_1C442B738(v8, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1C478BF40()
{
  v0 = *aPreEvents;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v0;
}

void EventLogDatabase.init(config:)()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v41 = *v2;
  v42 = v1;
  sub_1C4EFB5A8();
  sub_1C43FCDF8();
  v36 = v6;
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  v35 = v7;
  sub_1C43FBE44();
  sub_1C4EFB5F8();
  sub_1C43FCDF8();
  v39 = v9;
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2D8();
  v38 = v10;
  sub_1C43FBE44();
  v11 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - v19;
  sub_1C4417FCC();
  sub_1C4EF9888();
  v21 = OBJC_IVAR____TtC24IntelligencePlatformCore16EventLogDatabase_url;
  (*(v13 + 32))(&v2[OBJC_IVAR____TtC24IntelligencePlatformCore16EventLogDatabase_url], v20, v11);
  sub_1C4430ACC(v4, &v2[OBJC_IVAR____TtC24IntelligencePlatformCore16EventLogDatabase_config]);
  type metadata accessor for Configuration(0);
  if (qword_1EDDFEC70 != -1)
  {
    swift_once();
  }

  sub_1C440CBE0();
  v23 = 2 * (v22 == 0);
  if (qword_1EDDFEC60 != -1)
  {
    swift_once();
  }

  sub_1C440CBE0();
  if (!v24)
  {
    v23 |= 4uLL;
  }

  sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
  v25 = static NSUserDefaults.eventLogDatabaseLoggingEnabled.getter() & 1;
  (*(v13 + 16))(v17, &v2[v21], v11);
  type metadata accessor for ErrorHandlingDatabasePool(0);
  sub_1C43FD23C();
  swift_allocObject();
  v26 = v42;
  v27 = sub_1C44F999C(v17, v23 | v25);
  if (v26)
  {
    sub_1C4453D98();
    (*(v13 + 8))(&v2[v21], v11);
    sub_1C4453D98();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore16EventLogDatabase_pool] = v27;
    v28 = v38;
    sub_1C4EFB5E8();
    v30 = v35;
    v29 = v36;
    v31 = v37;
    (*(v36 + 104))(v35, *MEMORY[0x1E699FE90], v37);
    sub_1C4EFB5C8();
    v32 = (*(v29 + 8))(v30, v31);
    MEMORY[0x1EEE9AC00](v32);
    *(&v35 - 2) = v28;

    sub_1C446C37C(sub_1C4796BA8, (&v35 - 4));

    sub_1C44183E4();
    sub_1C44FAED4(v33, v34, &unk_1C4F244D0);

    sub_1C4EFB5D8();

    sub_1C440AA6C();
    sub_1C4453D98();
    (*(v39 + 8))(v28, v40);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C478C4E0(uint64_t a1)
{
  v22 = sub_1C4EFB078();
  v25 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C4EFB0B8();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  *&v26[0] = MEMORY[0x1E69E7CC0];
  v10 = sub_1C44FAED4(&unk_1EDDFCD18, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
  v11 = sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  v12 = sub_1C4401CBC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0, MEMORY[0x1E69E6328]);
  sub_1C4F020C8();
  v23 = a1;
  sub_1C4EFBFC8();
  if (v1)
  {
    return (*(v28 + 1))(v9, v4);
  }

  v20[0] = v12;
  v20[1] = v11;
  v20[2] = v10;
  v21 = v6;
  v14 = *(v28 + 1);
  v14(v9, v4);
  v28 = "DELETE FROM grdb_migrations";
  sub_1C456902C(&unk_1EC0BCA90, &unk_1C4F111C0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C4F0D130;
  sub_1C4EFB068();
  *&v26[0] = v15;
  sub_1C44FAED4(&qword_1EDDFCD40, MEMORY[0x1E699FDD0], MEMORY[0x1E699FDD8]);
  sub_1C456902C(&unk_1EC0BCAA0, &unk_1C4F22520);
  v16 = v22;
  sub_1C4401CBC(&qword_1EDDFA5C0, &unk_1EC0BCAA0, &unk_1C4F22520, MEMORY[0x1E69E6328]);
  v17 = v24;
  sub_1C4F020C8();
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_1C4EFBFB8();
  v18 = v14;
  sub_1C4420C3C(v26, &qword_1EC0C5040, &qword_1C4F0F950);
  (*(v25 + 8))(v17, v16);
  *&v26[0] = MEMORY[0x1E69E7CC0];
  v19 = v21;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  return v18(v19, v4);
}

uint64_t sub_1C478C9C0()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  sub_1C4EFBE08();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *MEMORY[0x1E69A00C8];
  v8 = sub_1C4EFBF38();
  v9 = *(*(v8 - 8) + 104);
  v9(v2, v7, v8);
  sub_1C440BAA8(v2, 0, 1, v8);
  sub_1C4EFB538();

  sub_1C4420C3C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE18();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9(v2, v7, v8);
  sub_1C440BAA8(v2, 0, 1, v8);
  sub_1C4EFB538();

  sub_1C4420C3C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFB528();

  sub_1C4EFBE08();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBE08();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDB8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDB8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  return sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C478CE80()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  sub_1C4EFBE08();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *MEMORY[0x1E69A00C8];
  v8 = sub_1C4EFBF38();
  v9 = *(*(v8 - 8) + 104);
  v9(v2, v7, v8);
  sub_1C440BAA8(v2, 0, 1, v8);
  sub_1C4EFB538();

  sub_1C4420C3C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE18();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9(v2, v7, v8);
  sub_1C440BAA8(v2, 0, 1, v8);
  sub_1C4EFB538();

  sub_1C4420C3C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE08();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBE08();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDB8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDB8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  return sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

void sub_1C478D32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4EFB5F8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a2, v8, v10);
  v13 = sub_1C4EFB5B8();
  if (v2)
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v14 = v13;
    (*(v9 + 8))(v12, v8);
    if (v14)
    {
      if (qword_1EDDFFAF0 != -1)
      {
LABEL_21:
        swift_once();
      }

      v15 = sub_1C4F00978();
      v16 = sub_1C442B738(v15, qword_1EDE2E088);
      v17 = sub_1C4F00968();
      v18 = sub_1C4F01CF8();
      v19 = os_log_type_enabled(v17, v18);
      v35 = v5;
      if (v19)
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1C43F8000, v17, v18, "Event Log database will reset schema and migrations", v20, 2u);
        v21 = v20;
        v5 = v35;
        MEMORY[0x1C6942830](v21, -1, -1);
      }

      v22 = sub_1C46A9F90(0, 0, 0x656C626174, 0xE500000000000000);
      v32[1] = v16;
      v33 = v4;
      v23 = v22 + 64;
      v24 = 1 << *(v22 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & *(v22 + 64);
      v4 = (v24 + 63) >> 6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v27 = 0;
      v34 = v7;
      if (v26)
      {
        while (1)
        {
          v28 = v27;
LABEL_14:
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4EFBF68();
          v26 &= v26 - 1;

          v27 = v28;
          v5 = v35;
          v7 = v34;
          if (!v26)
          {
            goto LABEL_11;
          }
        }
      }

      while (1)
      {
LABEL_11:
        v28 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
          goto LABEL_21;
        }

        if (v28 >= v4)
        {
          break;
        }

        v26 = *(v23 + 8 * v28);
        ++v27;
        if (v26)
        {
          goto LABEL_14;
        }
      }

      sub_1C4EFB758();
      sub_1C4EFBFF8();
      (*(v5 + 8))(v7, v33);
      v29 = sub_1C4F00968();
      v30 = sub_1C4F01CF8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1C43F8000, v29, v30, "Event Log database completed reset of schema and migrations.", v31, 2u);
        MEMORY[0x1C6942830](v31, -1, -1);
      }
    }
  }
}

uint64_t sub_1C478D7B0(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for EventLogDatabase.Writer();
  swift_allocObject();

  sub_1C478F054();

  a2(v4);

  if (v2 || swift_isUniquelyReferenced_nonNull_native())
  {
  }

  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C478D8A4(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for EventLogDatabase.Writer();
  swift_allocObject();

  sub_1C478F054();

  a2(v4);

  if (v2 || (swift_isUniquelyReferenced_nonNull_native() & 1) != 0)
  {
  }

  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C478D9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *))
{
  v6[2] = a3;
  v6[3] = a1;
  v6[4] = a2;
  return a5(a4, v6);
}

uint64_t sub_1C478DA34(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for EventLogDatabase.Reader();
  swift_allocObject();

  sub_1C478F054();

  a2(v4);

  if (v2 || (swift_isUniquelyReferenced_nonNull_native() & 1) != 0)
  {
  }

  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EventLogDatabase.prune()()
{
  sub_1C4413F18();
  HIBYTE(v34) = 0;
  v31 = v0;
  v32 = 25000000;
  v33 = &v34 + 7;
  v29[2] = sub_1C4796BE4;
  v29[3] = &v30;
  v2 = sub_1C446C37C(sub_1C4796C04, v29);
  if ((v34 & 0x100000000000000) != 0)
  {
    sub_1C4F01828();
    sub_1C44FAED4(&qword_1EDDFCF00, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    sub_1C4F00EA8();
    swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v2);
    v28[2] = sub_1C4796C20;
    v28[3] = v0;
    sub_1C49A54E0(sub_1C4796DCC, v28, v3, v4, v5, v6, v7, v8);
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = v9;
    if (v9 < 100000001)
    {
      goto LABEL_10;
    }

    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CB8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134218240;
      *(v15 + 4) = v11;
      *(v15 + 12) = 2048;
      *(v15 + 14) = 100000000;
      _os_log_impl(&dword_1C43F8000, v13, v14, "Disk size %lld exceeds limit %lld. Vacuuming.", v15, 0x16u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    type metadata accessor for ErrorHandlingDatabasePool(0);
    sub_1C44183E4();
    sub_1C44FAED4(v16, v17, &unk_1C4F244D0);
    sub_1C441C09C();
    sub_1C4EFB2E8();
    if (!v1)
    {
LABEL_10:
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C43FFB88(&qword_1EDDFECB0);
      }

      v18 = sub_1C4F00978();
      sub_1C442B738(v18, qword_1EDDFECB8);
      v19 = sub_1C4F00968();
      v20 = sub_1C4F01CB8();
      if (os_log_type_enabled(v19, v20))
      {
        sub_1C43FD1A8();
        *swift_slowAlloc() = 0;
        sub_1C4424954();
        _os_log_impl(v21, v22, v23, v24, v25, v26);
        v27 = sub_1C43FEF7C();
        MEMORY[0x1C6942830](v27);
      }
    }
  }

  sub_1C441B8EC();
  sub_1C44102DC();
}

void sub_1C478DE38(char *a1, uint64_t a2, void (*a3)(void, void), _BYTE *a4)
{
  v5 = v4;
  v71 = a4;
  v91 = a2;
  v72 = sub_1C456902C(&qword_1EC0BC728, &unk_1C4F29250);
  v76 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v75 = v70 - v8;
  v78 = sub_1C4EF9CD8();
  v74 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v10 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v73 = v70 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v77 = v70 - v14;
  v90 = sub_1C4EFBC98();
  v15 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v17 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1C4EFB678();
  MEMORY[0x1EEE9AC00](v88);
  v87 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v86 = v70 - v21;
  v22 = 0;
  v70[1] = a1;
  v23 = *(a1 + 2);
  v84 = "ust not be retained.";
  v83 = (v24 + 32);
  v85 = (v15 + 8);
  v25 = 1.25;
  v20.n128_u64[0] = 134218496;
  v79 = v20;
  v80 = v10;
  v82 = a3;
  v89 = v17;
  while (1)
  {
    v26 = sub_1C478E98C(v23);
    if (v5)
    {
      break;
    }

    if ((v28 & 1) != 0 || ((v29 = v26, v26 > a3) ? (v30 = v22 > 2) : (v30 = 1), v30))
    {
      v91 = v23;
      v39 = v73;
      sub_1C4EF9CC8();
      v22 = v77;
      sub_1C4EF9BE8();
      a1 = v74;
      a3 = *(v74 + 8);
      v17 = v78;
      a3(v39, v78);
      sub_1C4EF9AD8();
      v25 = v40;
      if (qword_1EDDFECB0 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_39;
    }

    if (__OFSUB__(v26, a3))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
LABEL_19:
      v41 = sub_1C4F00978();
      v42 = sub_1C442B738(v41, qword_1EDDFECB8);
      (*(a1 + 2))(v10, v22, v17);
      v90 = v42;
      v43 = sub_1C4F00968();
      v44 = v10;
      v45 = sub_1C4F01CB8();
      if (os_log_type_enabled(v43, v45))
      {
        v46 = swift_slowAlloc();
        v89 = 0;
        v47 = v46;
        v48 = swift_slowAlloc();
        v94 = v48;
        *v47 = 136315138;
        sub_1C44FAED4(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v49 = sub_1C4F02858();
        v51 = v50;
        a3(v44, v78);
        v52 = sub_1C441D828(v49, v51, &v94);
        v17 = v78;

        *(v47 + 4) = v52;
        _os_log_impl(&dword_1C43F8000, v43, v45, "Pruning Event Log horizon to %s", v47, 0xCu);
        sub_1C440962C(v48);
        v53 = v48;
        v22 = v77;
        MEMORY[0x1C6942830](v53, -1, -1);
        v54 = v47;
        v5 = v89;
        MEMORY[0x1C6942830](v54, -1, -1);
      }

      else
      {

        a3(v44, v17);
      }

      v55 = v72;
      type metadata accessor for EventLogDatabase.EventLogDatabaseEntry(0);
      v93[3] = sub_1C4EFBD38();
      v93[4] = MEMORY[0x1E69A0050];
      sub_1C4422F90(v93);
      sub_1C4EFBD48();
      v92[3] = MEMORY[0x1E69E63B0];
      v92[4] = MEMORY[0x1E69A0160];
      *v92 = v25;
      v95 = sub_1C4EFB298();
      v96 = MEMORY[0x1E699FE60];
      sub_1C4422F90(&v94);
      sub_1C4EFB818();
      sub_1C440962C(v92);
      sub_1C440962C(v93);
      sub_1C44FAED4(&qword_1EDDE7128, type metadata accessor for EventLogDatabase.EventLogDatabaseEntry, &unk_1C4F29A50);
      v56 = v75;
      sub_1C4EFAE28();
      sub_1C440962C(&v94);
      v57 = sub_1C4EFB898();
      if (v5)
      {
        (*(v76 + 8))(v56, v55);
        a3(v22, v17);
      }

      else
      {
        v62 = v57;
        (*(v76 + 8))(v56, v55);
        if (v62 >= 1)
        {
          v63 = sub_1C4F00968();
          v64 = sub_1C4F01CB8();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            *v65 = 134217984;
            *(v65 + 4) = v62;
            _os_log_impl(&dword_1C43F8000, v63, v64, "Pruning Event Log expired %ld items.", v65, 0xCu);
            MEMORY[0x1C6942830](v65, -1, -1);
          }
        }

        v66 = a3;
        v67 = sub_1C4F00968();
        v68 = sub_1C4F01CB8();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&dword_1C43F8000, v67, v68, "Promoting new items", v69, 2u);
          MEMORY[0x1C6942830](v69, -1, -1);
        }

        sub_1C4793E94();
        v66(v22, v17);
      }

      return;
    }

    v17 = v27;
    v31 = ceil((v26 - a3) / (v26 / v27 / 1.25));
    if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_36;
    }

    if (v31 <= -9.22337204e18)
    {
      goto LABEL_37;
    }

    if (v31 >= 9.22337204e18)
    {
      goto LABEL_38;
    }

    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v32 = sub_1C4F00978();
    v81 = sub_1C442B738(v32, qword_1EDDFECB8);
    v33 = sub_1C4F00968();
    v34 = sub_1C4F01CD8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = v79.n128_u32[0];
      *(v35 + 4) = v29;
      *(v35 + 12) = 2048;
      *(v35 + 14) = v17;
      *(v35 + 22) = 2048;
      *(v35 + 24) = v31;
      _os_log_impl(&dword_1C43F8000, v33, v34, "Event Log is %lld bytes with %lld items. Deleting %ld items.", v35, 0x20u);
      v36 = v35;
      v5 = 0;
      v10 = v80;
      MEMORY[0x1C6942830](v36, -1, -1);
    }

    v37 = v86;
    sub_1C4EFB648();
    sub_1C4EFB638();
    v96 = MEMORY[0x1E69A0178];
    v95 = MEMORY[0x1E69E6530];
    v94 = v31;
    sub_1C4EFB658();
    sub_1C4420C3C(&v94, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C4EFB638();
    a1 = v87;
    (*v83)(v87, v37, v88);
    v17 = v89;
    sub_1C4EFBC88();
    sub_1C4EFC008();
    (*v85)(v17, v90);
    ++v22;
    v38 = sub_1C4F01948();
    a3 = v82;
    if (v38)
    {
      v58 = sub_1C4F00968();
      v59 = sub_1C4F01CF8();
      if (os_log_type_enabled(v58, v59))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_1C43F8000, v58, v59, "Event Log prune was cancelled.", v61, 2u);
        MEMORY[0x1C6942830](v61, -1, -1);
      }

      *v71 = 1;
      return;
    }
  }
}

char *sub_1C478E98C(uint64_t a1)
{
  v2 = sub_1C4EFB768();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  sub_1C4EFBC58();
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1C4EFB758();
  v12 = sub_1C4EFBC38();
  if (v1)
  {
    (*(v3 + 8))(v11, v2);
    sub_1C4420C3C(&v23, &unk_1EC0BC770, &qword_1C4F10DC0);
    return v5;
  }

  v22 = v12;
  v13 = *(v3 + 8);
  v13(v11, v2);
  sub_1C4420C3C(&v23, &unk_1EC0BC770, &qword_1C4F10DC0);
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1C4EFB758();
  v14 = sub_1C4EFBC38();
  v13(v8, v2);
  sub_1C4420C3C(&v23, &unk_1EC0BC770, &qword_1C4F10DC0);
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1C4EFB758();
  v16 = sub_1C4EFBC38();
  v13(v5, v2);
  sub_1C4420C3C(&v23, &unk_1EC0BC770, &qword_1C4F10DC0);
  if (!v22)
  {
    goto LABEL_15;
  }

  sub_1C4EFBC68();

  if (!*(&v24 + 1))
  {
LABEL_16:
    sub_1C4420C3C(&v23, &qword_1EC0B9038, &unk_1C4F231C0);
    goto LABEL_17;
  }

  sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!v14)
  {
LABEL_15:
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    goto LABEL_16;
  }

  sub_1C4EFBC68();

  if (!*(&v24 + 1))
  {
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    if (v16)
    {
      v5 = v26;

      sub_1C4EFBC68();

      if (*(&v24 + 1))
      {
        if (swift_dynamicCast())
        {

          return v5;
        }

        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v17 = sub_1C4F00978();
  sub_1C442B738(v17, qword_1EDE2E088);
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CE8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1C43F8000, v18, v19, "Could not cast size stats for event log.", v20, 2u);
    MEMORY[0x1C6942830](v20, -1, -1);
  }

  return 0;
}

char *sub_1C478EED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C478E98C(*(a1 + 16));
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t EventLogDatabase.deinit()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore16EventLogDatabase_url;
  sub_1C4EF98F8();
  sub_1C43FBCE0();
  (*(v2 + 8))(v0 + v1);

  sub_1C440AA6C();
  sub_1C4453D98();
  return v0;
}

uint64_t EventLogDatabase.__deallocating_deinit()
{
  EventLogDatabase.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C478EFEC()
{
  if (qword_1EDDFF248 != -1)
  {
    sub_1C44236B0();
    swift_once();
  }
}

uint64_t sub_1C478F054()
{
  sub_1C44158BC();
  sub_1C4EF96B8();
  sub_1C43FD23C();
  swift_allocObject();
  v2 = sub_1C4EF96A8();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

void sub_1C478F09C()
{
  sub_1C43FE96C();
  v88 = v3;
  v89 = v1;
  v86 = v0;
  v79 = v4;
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v84 = v5;
  v85 = v6;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  v83 = v7;
  sub_1C43FBE44();
  v82 = sub_1C4EFDF68();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v81 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v80 = v12;
  v13 = sub_1C456902C(&qword_1EC0BC718, &qword_1C4F29240);
  sub_1C43FBD18(v13);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBC74();
  v92 = v15;
  sub_1C43FBE44();
  sub_1C4EFE058();
  sub_1C43FCDF8();
  v77 = v17;
  v78 = v16;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v87 = v18;
  v19 = sub_1C456902C(&qword_1EC0BC720, &qword_1C4F29248);
  sub_1C43FBD18(v19);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBC74();
  v91 = v21;
  v22 = sub_1C43FBE44();
  v23 = type metadata accessor for EventLogDatabase.EventLogDatabaseEntry(v22);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBD08();
  sub_1C441598C();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD230();
  v90 = v26;
  sub_1C43FBE44();
  sub_1C4EFBD38();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v28 = sub_1C456902C(&qword_1EC0BC728, &unk_1C4F29250);
  sub_1C43FCDF8();
  v30 = v29;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v75 - v32;
  v34 = sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v35 = sub_1C44331AC(v34);
  *(v35 + 16) = xmmword_1C4F0D130;
  sub_1C43FC144();
  sub_1C441D6B4();
  sub_1C4EFBD48();
  v36 = sub_1C4EFADA8();
  v37 = MEMORY[0x1E699FDA8];
  *(v35 + 56) = v36;
  *(v35 + 64) = v37;
  sub_1C4422F90((v35 + 32));
  sub_1C4EFB908();
  v38 = sub_1C442A90C();
  v39(v38);
  sub_1C44FAED4(&qword_1EDDE7128, type metadata accessor for EventLogDatabase.EventLogDatabaseEntry, &unk_1C4F29A50);
  sub_1C43FE99C();
  sub_1C4EFAE08();

  sub_1C441310C();
  sub_1C4401CBC(v40, &qword_1EC0BC728, &unk_1C4F29250, v41);
  sub_1C441C9C0();
  sub_1C44FAED4(v42, type metadata accessor for EventLogDatabase.EventLogDatabaseEntry, v43);
  v44 = v89;
  v45 = sub_1C4EFAFD8();
  (*(v30 + 8))(v33, v28);
  if (!v44)
  {
    v89 = v45;
    v76 = v85 + 2;
    v46 = v78;
    v85 = (v77 + 32);
    v86 = v77 + 8;
    v47 = v79;
    v49 = v90;
    v48 = v91;
    while (1)
    {
      sub_1C47882A8(v48);
      sub_1C440175C(v48, 1, v23);
      if (v50)
      {

        sub_1C4420C3C(v48, &qword_1EC0BC720, &qword_1C4F29248);
        break;
      }

      v51 = v46;
      sub_1C4434FF4();
      sub_1C44C8EE8(v48, v49);
      sub_1C442FD20();
      sub_1C4430ACC(v49, v2);
      if (*(v2 + v23[6]))
      {
        if (*(v2 + v23[6]) == 1)
        {
          sub_1C4475AD8();
          if (*(v52 + 8))
          {
            sub_1C4459B48();
            if ((v53 & 1) == 0)
            {
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v54 = v80;
              sub_1C4EFE008();
LABEL_25:
              swift_storeEnumTagMultiPayload();
              (*v76)(v83, v2 + v23[5], v84);
              sub_1C44340E4();
              sub_1C4430ACC(v54, v81);
              sub_1C440A9B8();
              sub_1C4EFDF78();
              sub_1C4419580();
              sub_1C4453D98();
              sub_1C443F5D0();
              sub_1C4453D98();
              v66 = 0;
              goto LABEL_19;
            }
          }
        }

        else if (*(v2 + v23[9]))
        {
          if (*(v2 + v23[10] + 8))
          {
            v64 = (v2 + v23[12]);
            v65 = v64[1];
            if (v65 >> 60 != 15)
            {
              v77 = *v64;
              v72 = v77;
              sub_1C445ABAC();
              v78 = *v73;
              v79 = v74;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4431E64(v72, v65);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v54 = v80;
              sub_1C4EFDFB8();
              goto LABEL_25;
            }
          }
        }
      }

      else
      {
        sub_1C4475AD8();
        if (*(v55 + 8))
        {
          sub_1C4459B48();
          if ((v58 & 1) == 0)
          {
            if (*(v2 + v23[9]))
            {
              v59 = (v2 + v23[10]);
              if (v59[1])
              {
                v60 = (v2 + v23[12]);
                v61 = v60[1];
                if (v61 >> 60 != 15)
                {
                  v77 = *v56;
                  v75[3] = *v57;
                  v62 = *v60;
                  v78 = *v59;
                  v79 = v62;
                  v75[2] = *(sub_1C456902C(&unk_1EC0BC670, &unk_1C4F29260) + 48);
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C4431E64(v79, v61);
                  v75[1] = v61;
                  v63 = v80;
                  sub_1C4EFE008();
                  sub_1C445ABAC();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v54 = v63;
                  sub_1C4EFDFB8();
                  goto LABEL_25;
                }
              }
            }
          }
        }
      }

      sub_1C4419580();
      sub_1C4453D98();
      v66 = 1;
LABEL_19:
      v46 = v51;
      sub_1C440BAA8(v92, v66, 1, v51);
      sub_1C440175C(v92, 1, v51);
      v49 = v90;
      v48 = v91;
      if (v50)
      {
        sub_1C4419580();
        sub_1C4453D98();
        sub_1C4420C3C(v92, &qword_1EC0BC718, &qword_1C4F29240);
      }

      else
      {
        v67 = v87;
        (*v85)(v87, v92, v46);
        v68 = v47(v49 + v23[5], v67);
        v69 = v68;
        v70 = sub_1C43FE5F8();
        v71(v70);
        sub_1C4419580();
        sub_1C4453D98();
        if ((v69 & 1) == 0)
        {

          break;
        }
      }
    }
  }

  sub_1C43FBC80();
}

void sub_1C478F904()
{
  sub_1C43FE96C();
  v61 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FD2D8();
  sub_1C43FCE30(v5);
  v6 = sub_1C456902C(&qword_1EC0BC720, &qword_1C4F29248);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBC74();
  v55 = v8;
  v9 = sub_1C43FBE44();
  v10 = type metadata accessor for EventLogDatabase.EventLogDatabaseEntry(v9);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C4414998();
  v12 = sub_1C4EFBD38();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  sub_1C43FCE30(v14);
  v15 = sub_1C456902C(&qword_1EC0BC728, &unk_1C4F29250);
  sub_1C43FCDF8();
  v62 = v16;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBD08();
  sub_1C441598C();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD230();
  sub_1C43FCE30(v21);
  v67 = v12;
  v68 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v66);
  sub_1C441D6B4();
  sub_1C4EFBD48();
  sub_1C4EF9AD8();
  v64 = MEMORY[0x1E69E63B0];
  v65 = MEMORY[0x1E69A0160];
  v63[0] = v22;
  v23 = sub_1C4EFB298();
  v24 = MEMORY[0x1E699FE60];
  v70 = v23;
  v71 = MEMORY[0x1E699FE60];
  v25 = v23;
  v56 = v23;
  sub_1C4422F90(v69);
  sub_1C440C4CC();
  sub_1C4EFBB48();
  sub_1C440962C(v63);
  sub_1C440962C(v66);
  sub_1C441DCE4();
  v60 = v26;
  sub_1C44FAED4(v27, v28, &unk_1C4F29A50);
  sub_1C4EFAE28();
  sub_1C440962C(v69);
  v57 = v12;
  v67 = v12;
  v68 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v66);
  sub_1C43FC144();
  sub_1C441D6B4();
  sub_1C4EFBD48();
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C4EF9AD8();
  v64 = MEMORY[0x1E69E63B0];
  v65 = MEMORY[0x1E69A0160];
  v63[0] = v29;
  v70 = v25;
  v71 = v24;
  sub_1C4422F90(v69);
  sub_1C440C4CC();
  sub_1C4EFBB58();
  sub_1C440962C(v63);
  sub_1C440962C(v66);
  sub_1C4401CBC(&unk_1EC0BC750, &qword_1EC0BC728, &unk_1C4F29250, MEMORY[0x1E699FF70]);
  sub_1C4EFB438();
  v30 = *(v62 + 8);
  v30(v1, v15);
  sub_1C440962C(v69);
  v67 = v12;
  v68 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v66);
  sub_1C4EFBD48();
  v31 = sub_1C4EFE068();
  v64 = MEMORY[0x1E69E6158];
  v65 = MEMORY[0x1E69A0130];
  v63[0] = v31;
  v63[1] = v32;
  v70 = v56;
  v71 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v69);
  sub_1C440C4CC();
  sub_1C4EFBB28();
  sub_1C4420C3C(v63, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v66);
  sub_1C4EFB438();
  v30(v58, v15);
  sub_1C440962C(v69);
  v33 = sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v34 = sub_1C44331AC(v33);
  *(v34 + 16) = xmmword_1C4F0D130;
  sub_1C43FC144();
  sub_1C441D6B4();
  sub_1C4EFBD48();
  v35 = sub_1C4EFADA8();
  v36 = MEMORY[0x1E699FDA8];
  *(v34 + 56) = v35;
  *(v34 + 64) = v36;
  sub_1C4422F90((v34 + 32));
  sub_1C4EFB908();
  v37 = sub_1C4401D04();
  v38(v37, v57);
  sub_1C441F858();
  sub_1C4401CBC(v39, &qword_1EC0BC728, &unk_1C4F29250, v40);
  sub_1C4EFB2F8();

  v30(v59, v15);
  sub_1C441310C();
  sub_1C4401CBC(v41, &qword_1EC0BC728, &unk_1C4F29250, v42);
  sub_1C441C9C0();
  sub_1C44FAED4(v43, v60, v44);
  sub_1C445698C();
  sub_1C4EFAFD8();
  v45 = sub_1C43FD018();
  (v30)(v45);
  if (!v0)
  {
    while (1)
    {
      sub_1C441C09C();
      sub_1C47882A8(v46);
      sub_1C440175C(v55, 1, v10);
      if (v47)
      {
        break;
      }

      sub_1C4434FF4();
      sub_1C44C8EE8(v55, v2);
      if (*&v2[*(v10 + 48) + 8] >> 60 == 15)
      {
        sub_1C4419580();
        sub_1C4453D98();
      }

      else
      {
        v48 = sub_1C44089C8();
        sub_1C44344B8(v48, v49);
        sub_1C4EF9698();
        v50 = v61(&v2[*(v10 + 20)], *v2);
        v51 = sub_1C44089C8();
        sub_1C441DFEC(v51, v52);
        v53 = sub_1C4485EBC();
        v54(v53);
        sub_1C4419580();
        sub_1C4453D98();
        if ((v50 & 1) == 0)
        {

          goto LABEL_8;
        }
      }
    }

    sub_1C4420C3C(v55, &qword_1EC0BC720, &qword_1C4F29248);
  }

LABEL_8:
  sub_1C43FBC80();
}

void sub_1C4790158(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v11 = objc_autoreleasePoolPush();
  sub_1C47901F4(v5, a1, a2, a3, a4, &v12, a5);
  objc_autoreleasePoolPop(v11);
}

uint64_t sub_1C47901F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, char *a7@<X8>)
{
  v73 = a6;
  v71 = a2;
  v69 = a7;
  v70 = a5;
  v68 = a3;
  v9 = sub_1C4EF9CD8();
  v66 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v59[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59[-v16];
  v18 = sub_1C456902C(&qword_1EC0BC788, &unk_1C4F30600);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v59[-v19];
  v21 = type metadata accessor for EventLogEvent(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = v72;
  result = sub_1C4790868(v71, v20);
  v26 = v73;
  if (v24)
  {
    goto LABEL_2;
  }

  v71 = v17;
  v72 = 0;
  v64 = v11;
  v65 = a1;
  v27 = v69;
  v63 = v14;
  v28 = v73;
  if (sub_1C44157D4(v20, 1, v21) == 1)
  {
    sub_1C4420C3C(v20, &qword_1EC0BC788, &unk_1C4F30600);
    v30 = v27;
LABEL_5:
    v31 = type metadata accessor for EventLogTypedEvent(0, a4, v70, v29);
    v32 = 1;
    return sub_1C440BAA8(v30, v32, 1, v31);
  }

  sub_1C44C8EE8(v20, v23);
  v33 = &v23[v21[10]];
  v34 = *v33;
  v35 = *(v33 + 1);
  if (v34 == sub_1C4EFE068() && v35 == v36)
  {
  }

  else
  {
    v38 = sub_1C4F02938();

    if ((v38 & 1) == 0)
    {
      sub_1C4453D98();
      v30 = v69;
      goto LABEL_5;
    }
  }

  v39 = &v23[v21[12]];
  v40 = *v39;
  v41 = v39[1];
  sub_1C44344B8(*v39, v41);
  v42 = v70;
  v43 = v72;
  sub_1C4EF9698();
  v72 = v43;
  if (v43)
  {
    sub_1C4453D98();
    result = sub_1C4434000(v40, v41);
    v26 = v28;
    v24 = v72;
LABEL_2:
    *v26 = v24;
    return result;
  }

  sub_1C4434000(v40, v41);
  v73 = *v23;
  (*(v66 + 16))(v64, &v23[v21[5]], v9);
  v44 = v21[7];
  v45 = &v23[v21[6]];
  v68 = *v45;
  LODWORD(v66) = v45[8];
  v46 = *&v23[v44 + 8];
  v65 = *&v23[v44];
  v47 = v21[9];
  v48 = &v23[v21[8]];
  v61 = *v48;
  v62 = v46;
  v60 = v48[8];
  v49 = *&v23[v47];
  v50 = &v23[v21[11]];
  v52 = *v50;
  v51 = v50[1];
  v53 = v67;
  v54 = v63;
  v55 = v71;
  (*(v67 + 16))(v63, v71, a4);
  v58 = v42;
  v30 = v69;
  sub_1C47906EC(v73, v64, v68, v66, v65, v62, v61, v60, v69, v49, v52, v51, v54, a4, v58);
  v56 = *(v53 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v56(v55, a4);
  sub_1C4453D98();
  v31 = type metadata accessor for EventLogTypedEvent(0, a4, v70, v57);
  v32 = 0;
  return sub_1C440BAA8(v30, v32, 1, v31);
}

uint64_t sub_1C47906EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15 = a4;
  v20 = type metadata accessor for EventLogTypedEvent(0, a14, a15, a4);
  v21 = &a9[v20[10]];
  v22 = &a9[v20[12]];
  v23 = &a9[v20[14]];
  *a9 = a1;
  v24 = v20[9];
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v25 + 32))(&a9[v24], a2);
  *v21 = a3;
  v21[8] = v15 & 1;
  v26 = &a9[v20[11]];
  *v26 = a5;
  *(v26 + 1) = a6;
  *v22 = a7;
  v22[8] = a8 & 1;
  *&a9[v20[13]] = a10;
  *v23 = a11;
  *(v23 + 1) = a12;
  v27 = *(*(a14 - 8) + 32);
  v28 = &a9[v20[15]];

  return v27(v28, a13, a14);
}

uint64_t sub_1C4790868@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v188 = a2;
  v218 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v214 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  v178 = v7;
  sub_1C43FBE44();
  sub_1C4EFDFF8();
  sub_1C43FCDF8();
  v211 = v9;
  v212 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  v217 = v11;
  sub_1C43FBE44();
  v213 = sub_1C4EFE038();
  sub_1C43FCDF8();
  v208 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  v199 = v15;
  sub_1C43FBE44();
  v207 = sub_1C4EFDF68();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v17 = sub_1C456902C(&qword_1EC0B8C80, &unk_1C4F3E850);
  sub_1C43FCDF8();
  v210 = v18;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBD08();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v172 - v24;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C441598C();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v172 - v28;
  v30 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v31 = sub_1C43FBD18(v30);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBD08();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v172 - v36;
  v221 = MEMORY[0x1E69E7CC0];
  v219 = 0;
  v220 = 0;
  v38 = v216;
  sub_1C4791F74(a1, v215, &v219, &v221);
  if (v38)
  {
    goto LABEL_24;
  }

  v198 = v29;
  v195 = v22;
  v177 = v34;
  v206 = v17;
  v196 = v2;
  v202 = v3;
  v190 = v37;
  v39 = v220;
  if (!v220 || (v40 = a1, v41 = v221, (v191 = *(v221 + 16)) == 0))
  {
    type metadata accessor for EventLogEvent(0);
    sub_1C43FCF64();
    goto LABEL_23;
  }

  v174 = v40;
  v176 = 0;
  v173 = v219;
  LODWORD(v215) = 1;
  sub_1C443F1AC();
  sub_1C43FCF64();
  sub_1C440BAA8(v42, v43, v44, v218);
  v193 = v41 + ((*(v210 + 80) + 32) & ~*(v210 + 80));
  v45 = v214 + 32;
  v46 = v206;
  v192 = *(v206 + 48);
  v184 = v208 + 32;
  v183 = v211 + 32;
  v185 = v211 + 8;
  v186 = v208 + 8;
  v216 = (v214 + 8);
  v175 = v39;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v181 = 0;
  v180 = 0;
  v203 = 0;
  v204 = 0;
  v187 = 0;
  v182 = 0;
  v205 = 0;
  v48 = 0;
  v211 = 0xF000000000000000;
  v49 = 0.0;
  v179 = 1;
  v50 = v202;
  v51 = v217;
  v52 = v198;
  v194 = v25;
  v209 = v45;
  v189 = v41;
  do
  {
    if (v48 >= *(v41 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1C4796E28(v193 + *(v210 + 72) * v48, v52);
    v53 = *(v46 + 48);
    v54 = sub_1C442A90C();
    v208 = v55;
    (v55)(v54);
    v56 = sub_1C4EFE058();
    sub_1C43FCF8C();
    v58 = v57;
    (*(v57 + 32))(v50 + v53, v52 + v192, v56);
    sub_1C4796E28(v50, v25);
    v59 = *(v46 + 48);
    v60 = v196;
    sub_1C4EFDF98();
    v61 = *(v58 + 8);
    v61(&v25[v59], v56);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v63 = v211 >> 60;
    v214 = v216 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (!EnumCaseMultiPayload)
    {

      sub_1C4402C08();
      v80 = v199;
      v81 = sub_1C43FD018();
      v65 = v213;
      v82(v81);
      if (v63 < 0xF)
      {
        sub_1C443E154();
        sub_1C4441018();

        v128 = sub_1C43FE99C();
        sub_1C441DFEC(v128, v129);
        v130 = sub_1C43FE99C();
        sub_1C441DFEC(v130, v131);
      }

      else
      {
        if (v215)
        {
          v182 = sub_1C4EFE018();
          v205 = v83;
          sub_1C4420C3C(v190, &unk_1EC0B84E0, qword_1C4F0D2D0);
          v84 = v202;
          v85 = v61;
          v197 = v61;
          v86 = v195;
          sub_1C4796E28(v202, v195);
          v46 = v206;
          v215 = *(v206 + 48);
          v87 = sub_1C44C1208();
          v88(v87);
          sub_1C447F7E0();
          v85(v215 + v86, v56);
          v89 = v199;
          v181 = sub_1C4EFE028();
          v90 = sub_1C43FD258();
          sub_1C4796E28(v90, v91);
          v92 = *(v46 + 48);
          sub_1C4EF9AD8();
          v50 = v84;
          v51 = v217;
          v49 = v93;
          sub_1C4402C08();
          v94(v89, v213);
          sub_1C4420C3C(v50, &qword_1EC0B8C80, &unk_1C4F3E850);
          v95 = *v216;
          (*v216)(v86, v218);
          v96 = v56;
          v74 = v95;
          v197(v86 + v92, v96);
          LODWORD(v215) = 0;
          v179 = 0;
          goto LABEL_17;
        }

        sub_1C4441018();
      }

      sub_1C4402C08();
      v137 = v80;
LABEL_34:
      v138 = v65;
LABEL_37:
      v136(v137, v138);
      sub_1C4420C3C(v202, &qword_1EC0B8C80, &unk_1C4F3E850);
      v140 = sub_1C443F1AC();
      sub_1C4420C3C(v140, v141, v142);
      type metadata accessor for EventLogEvent(0);
      sub_1C43FCF64();
      sub_1C440BAA8(v143, v144, v145, v146);
      (*v216)(v194, v218);
    }

    v64 = v195;
    if (EnumCaseMultiPayload == 1)
    {

      sub_1C4402C08();
      v65 = v212;
      v66(v201, v60, v212);
      v46 = v206;
      if (v63 < 0xF)
      {
        sub_1C443E154();
        sub_1C4441018();

        v132 = sub_1C43FE99C();
        sub_1C441DFEC(v132, v133);
        v134 = sub_1C43FE99C();
        sub_1C441DFEC(v134, v135);
      }

      else
      {
        if ((v215 & 1) == 0)
        {
          v67 = v202;
          sub_1C4796E28(v202, v64);
          v68 = v61;
          v69 = *(v46 + 48);
          sub_1C4EF9AD8();
          v71 = v70;
          v72 = *v216;
          (*v216)(v64, v218);
          v49 = v71 - v49;
          v73 = v56;
          v74 = v72;
          v68(v64 + v69, v73);
          v75 = v201;
          v187 = sub_1C4EFDFE8();
          v211 = v76;
          v204 = sub_1C4EFDFC8();
          v180 = sub_1C4EFDFD8();
          v203 = v77;
          sub_1C4402C08();
          v78 = v75;
          v50 = v67;
          v51 = v217;
          v79(v78, v212);
          sub_1C4420C3C(v50, &qword_1EC0B8C80, &unk_1C4F3E850);
          LODWORD(v215) = 0;
          goto LABEL_17;
        }

        sub_1C4441018();
      }

      sub_1C4402C08();
      v137 = v201;
      goto LABEL_34;
    }

    v97 = *(sub_1C456902C(&unk_1EC0BC670, &unk_1C4F29260) + 48);
    sub_1C4402C08();
    v98(v200, v60, v213);
    sub_1C4402C08();
    v99 = v60 + v97;
    v100 = v212;
    v101(v51, v99, v212);
    if (v63 < 0xF)
    {
      sub_1C4441018();
      sub_1C4798CA8();
LABEL_36:
      sub_1C4402C08();
      v139(v51, v100);
      sub_1C4402C08();
      v137 = v200;
      v138 = v213;
      goto LABEL_37;
    }

    if ((v215 & 1) == 0)
    {
      sub_1C4441018();
      goto LABEL_36;
    }

    v102 = v200;
    v182 = sub_1C4EFE018();
    v205 = v103;
    v197 = v61;
    sub_1C4420C3C(v190, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v104 = v202;
    v105 = sub_1C43FD258();
    sub_1C4796E28(v105, v106);
    v107 = *(v206 + 48);
    v108 = sub_1C44C1208();
    v109(v108);
    LODWORD(v215) = 1;
    sub_1C447F7E0();
    v197(v64 + v107, v56);
    v181 = sub_1C4EFE028();
    v187 = sub_1C4EFDFE8();
    v211 = v110;
    v204 = sub_1C4EFDFC8();
    v111 = sub_1C4EFDFD8();
    v50 = v104;
    v51 = v217;
    v180 = v111;
    v203 = v112;
    sub_1C4402C08();
    v113(v51, v212);
    sub_1C4402C08();
    v114 = v102;
    v46 = v206;
    v115(v114, v213);
    sub_1C4420C3C(v50, &qword_1EC0B8C80, &unk_1C4F3E850);
    v179 = 0;
    v74 = *v216;
LABEL_17:
    ++v48;
    v25 = v194;
    result = (v74)(v194, v218);
    v52 = v198;
    v41 = v189;
  }

  while (v191 != v48);
  v116 = v205;
  if (!v205)
  {
    sub_1C4441018();

    v125 = sub_1C443F1AC();
    sub_1C4420C3C(v125, v126, v127);
    sub_1C4798CA8();
    goto LABEL_44;
  }

  v117 = v204;
  if (v211 >> 60 == 15)
  {
    v118 = sub_1C443F1AC();
    sub_1C4420C3C(v118, v119, v120);

    sub_1C4441018();

LABEL_44:
    type metadata accessor for EventLogEvent(0);
    sub_1C43FCF64();
    sub_1C440BAA8(v168, v169, v170, v171);
    goto LABEL_24;
  }

  v147 = sub_1C443F1AC();
  v148 = v177;
  sub_1C44973B8(v147, v177, v149, v150);
  sub_1C440175C(v148, 1, v218);
  if (v151)
  {

    sub_1C4441018();
    sub_1C4798CA8();

    sub_1C4420C3C(v148, &unk_1EC0B84E0, qword_1C4F0D2D0);
    goto LABEL_44;
  }

  v152 = v74;
  v153 = v178;
  v154 = v208;
  (v208)(v178, v148, v218);
  if (!v117)
  {
    v152(v153, v218);

    sub_1C4441018();

    sub_1C4798CA8();
    goto LABEL_44;
  }

  v155 = v181;
  v156 = v179 | (v181 == 0);
  v157 = type metadata accessor for EventLogEvent(0);
  v158 = v188;
  v154(v188 + v157[5], v153, v218);
  v159 = (v158 + v157[6]);
  v160 = v158 + v157[8];
  v161 = (v158 + v157[11]);
  *v158 = v174;
  *v159 = v49;
  *(v159 + 8) = v215;
  v162 = (v158 + v157[7]);
  *v162 = v182;
  v162[1] = v116;
  *v160 = v155;
  v160[8] = v156 & 1;
  *(v158 + v157[9]) = v117;
  v163 = (v158 + v157[10]);
  v164 = v175;
  *v163 = v173;
  v163[1] = v164;
  v165 = v203;
  *v161 = v180;
  v161[1] = v165;
  v166 = (v158 + v157[12]);
  v167 = v211;
  *v166 = v187;
  v166[1] = v167;
  v121 = sub_1C4460210();
  v123 = 1;
  v124 = v157;
LABEL_23:
  sub_1C440BAA8(v121, v122, v123, v124);
LABEL_24:
}

uint64_t sub_1C479170C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v32 = a1;
  v31 = sub_1C456902C(&qword_1EC0B8C80, &unk_1C4F3E850);
  v34 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v31 - v7;
  v9 = sub_1C4EFDFF8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C4EFDF68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a2;
  sub_1C4EFDF98();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v20 = sub_1C456902C(&unk_1EC0BC670, &unk_1C4F29260);
    (*(v10 + 32))(v12, &v15[*(v20 + 48)], v9);
    v21 = sub_1C4EFDFA8();
    v23 = v22;
    (*(v10 + 8))(v12, v9);
    *a3 = v21;
    a3[1] = v23;

LABEL_5:
    v24 = sub_1C4EFE038();
    (*(*(v24 - 8) + 8))(v15, v24);
    goto LABEL_6;
  }

  (*(v10 + 32))(v12, v15, v9);
  v17 = sub_1C4EFDFA8();
  v19 = v18;
  (*(v10 + 8))(v12, v9);
  *a3 = v17;
  a3[1] = v19;

LABEL_6:
  v25 = *(v31 + 48);
  v26 = sub_1C4EF9CD8();
  (*(*(v26 - 8) + 16))(v8, v32, v26);
  v27 = sub_1C4EFE058();
  (*(*(v27 - 8) + 16))(&v8[v25], v33, v27);
  sub_1C45892C0();
  v28 = *(*a4 + 16);
  sub_1C4589E60();
  v29 = *a4;
  *(v29 + 16) = v28 + 1;
  return sub_1C44973B8(v8, v29 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v28, &qword_1EC0B8C80, &unk_1C4F3E850);
}

void sub_1C4791AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  v22 = v21;
  v24 = v23;
  sub_1C4EFB768();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  sub_1C440DED0();
  if (v22)
  {
    v24 = 0;
  }

  sub_1C4EFBC58();
  v26 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v27 = sub_1C44331AC(v26);
  v28 = MEMORY[0x1E69E7360];
  *(v27 + 16) = xmmword_1C4F0D130;
  v29 = MEMORY[0x1E69A01D0];
  *(v27 + 56) = v28;
  *(v27 + 64) = v29;
  *(v27 + 32) = v24;
  sub_1C4EFB728();
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1C441C09C();
  sub_1C4EFBBB8();
  if (v20)
  {
    sub_1C4420C3C(&v38, &unk_1EC0BC770, &qword_1C4F10DC0);
    v30 = sub_1C43FE5F8();
    v31(v30);
  }

  else
  {
    sub_1C4420C3C(&v38, &unk_1EC0BC770, &qword_1C4F10DC0);
    v32 = sub_1C43FE5F8();
    v33(v32);
    v34 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C441C09C();
      if (!sub_1C4458EE8())
      {
        break;
      }

      sub_1C4EFBC68();
      if (*(&v39 + 1))
      {
        sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
        if (swift_dynamicCast())
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458BE44();
            v34 = v36;
          }

          v35 = *(v34 + 16);
          if (v35 >= *(v34 + 24) >> 1)
          {
            sub_1C458BE44();
            v34 = v37;
          }

          *(v34 + 16) = v35 + 1;
          *(v34 + 8 * v35 + 32) = a10;
        }

        else
        {
        }
      }

      else
      {

        sub_1C4420C3C(&v38, &qword_1EC0B9038, &unk_1C4F231C0);
      }
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4791F74(uint64_t a1, void (**a2)(char *, uint64_t, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v77 = a4;
  v64 = a3;
  v73 = a2;
  v69 = sub_1C4EF9CD8();
  v63 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1C4EFDF68();
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v60 - v8;
  v9 = sub_1C456902C(&qword_1EC0BC718, &qword_1C4F29240);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v62 = &v60 - v10;
  v76 = sub_1C4EFE058();
  v61 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&qword_1EC0BC720, &qword_1C4F29248);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v78 = &v60 - v13;
  v14 = type metadata accessor for EventLogDatabase.EventLogDatabaseEntry(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v79 = &v60 - v18;
  v19 = sub_1C4EFBD38();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1C456902C(&qword_1EC0BC728, &unk_1C4F29250);
  v72 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v60 - v26;
  v81[3] = v19;
  v81[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v81);
  sub_1C4EFBD48();
  v80[3] = MEMORY[0x1E69E7360];
  v80[4] = MEMORY[0x1E69A01C8];
  v80[0] = a1;
  v82[3] = sub_1C4EFB298();
  v82[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v82);
  sub_1C4EFBB28();
  sub_1C4420C3C(v80, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v81);
  v70 = type metadata accessor for EventLogDatabase.EventLogDatabaseEntry;
  sub_1C44FAED4(&qword_1EDDE7128, type metadata accessor for EventLogDatabase.EventLogDatabaseEntry, &unk_1C4F29A50);
  v83 = v14;
  sub_1C4EFAE28();
  sub_1C440962C(v82);
  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C4F0D130;
  sub_1C4EFBD48();
  v29 = sub_1C4EFADA8();
  v30 = MEMORY[0x1E699FDA8];
  *(v28 + 56) = v29;
  *(v28 + 64) = v30;
  sub_1C4422F90((v28 + 32));
  sub_1C4EFB908();
  (*(v20 + 8))(v22, v19);
  sub_1C4401CBC(&unk_1EC0BC760, &qword_1EC0BC728, &unk_1C4F29250, MEMORY[0x1E699FF68]);
  v31 = v27;
  v32 = v71;
  sub_1C4EFB2F8();

  v33 = *(v72 + 8);
  v33(v24, v32);
  sub_1C4401CBC(&qword_1EC0BC740, &qword_1EC0BC728, &unk_1C4F29250, MEMORY[0x1E699FF60]);
  sub_1C44FAED4(&qword_1EC0BC748, v70, &unk_1C4F29A08);
  v34 = v74;
  v35 = sub_1C4EFAFD8();
  result = (v33)(v31, v32);
  if (!v34)
  {
    v72 = v63 + 16;
    v73 = (v61 + 32);
    v74 = (v61 + 8);
    v37 = v64;
    v38 = v62;
    v39 = v79;
    while (1)
    {
      v40 = v78;
      v41 = v35;
      sub_1C47882A8(v78);
      v42 = v83;
      if (sub_1C44157D4(v40, 1, v83) == 1)
      {

        return sub_1C4420C3C(v40, &qword_1EC0BC720, &qword_1C4F29248);
      }

      sub_1C44C8EE8(v40, v39);
      sub_1C4430ACC(v39, v16);
      v43 = v42;
      if (v16[v42[6]])
      {
        if (v16[v42[6]] == 1)
        {
          if (!*&v16[v42[7] + 8] || (v16[v42[8] + 8] & 1) != 0)
          {
            goto LABEL_18;
          }

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v44 = v65;
          sub_1C4EFE008();
        }

        else
        {
          if (!*&v16[v42[9]])
          {
            goto LABEL_18;
          }

          v51 = &v16[v42[10]];
          if (!v51[1])
          {
            goto LABEL_18;
          }

          v52 = &v16[v42[12]];
          v53 = v52[1];
          if (v53 >> 60 == 15)
          {
            goto LABEL_18;
          }

          v71 = *v51;
          v64 = *v52;
          v59 = v64;
          v70 = *&v16[v43[11]];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4431E64(v59, v53);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v44 = v65;
          v42 = v83;
          sub_1C4EFDFB8();
        }
      }

      else
      {
        v45 = &v16[v42[7]];
        if (!v45[1] || (v46 = &v16[v42[8]], (v46[8] & 1) != 0) || !*&v16[v42[9]] || (v47 = &v16[v42[10]], !*(v47 + 1)) || (v48 = &v16[v42[12]], v49 = v48[1], v49 >> 60 == 15))
        {
LABEL_18:
          sub_1C4453D98();
          v54 = 1;
          goto LABEL_19;
        }

        v64 = *v45;
        v63 = *v46;
        v70 = *v47;
        v71 = *v48;
        v62 = *(sub_1C456902C(&unk_1EC0BC670, &unk_1C4F29260) + 48);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4431E64(v71, v49);
        v61 = v49;
        v50 = v65;
        sub_1C4EFE008();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v44 = v50;
        v42 = v83;
        sub_1C4EFDFB8();
      }

      swift_storeEnumTagMultiPayload();
      (*v72)(v68, &v16[v42[5]], v69);
      sub_1C4430ACC(v44, v66);
      sub_1C4EFDF78();
      sub_1C4453D98();
      sub_1C4453D98();
      v54 = 0;
LABEL_19:
      v55 = v76;
      sub_1C440BAA8(v38, v54, 1, v76);
      v56 = sub_1C44157D4(v38, 1, v55);
      v57 = v77;
      v58 = v75;
      v39 = v79;
      if (v56 == 1)
      {
        sub_1C4453D98();
        sub_1C4420C3C(v38, &qword_1EC0BC718, &qword_1C4F29240);
      }

      else
      {
        (*v73)(v75, v38, v55);
        sub_1C479170C(v39 + v83[5], v58, v37, v57);
        (*v74)(v58, v55);
        sub_1C4453D98();
      }

      v35 = v41;
    }
  }

  return result;
}

void sub_1C4792BE0()
{
  sub_1C43FE96C();
  v97 = v1;
  v95 = v0;
  v101 = v3;
  v96 = v4;
  sub_1C43FBE94();
  v91 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v86 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  v90 = v7;
  sub_1C43FBE44();
  v89 = sub_1C4EFDF68();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD230();
  sub_1C43FCE30(v10);
  v11 = sub_1C456902C(&qword_1EC0BC718, &qword_1C4F29240);
  sub_1C43FBD18(v11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBC74();
  v99 = v13;
  sub_1C43FBE44();
  v100 = sub_1C4EFE058();
  sub_1C43FCDF8();
  v85 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD2D8();
  v98 = v16;
  v17 = sub_1C456902C(&qword_1EC0BC720, &qword_1C4F29248);
  sub_1C43FBD18(v17);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBC74();
  v105 = v19;
  v20 = sub_1C43FBE44();
  v21 = type metadata accessor for EventLogDatabase.EventLogDatabaseEntry(v20);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBD08();
  sub_1C441598C();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD230();
  v84 = v24;
  sub_1C43FBE44();
  v25 = sub_1C4EFBD38();
  sub_1C43FCDF8();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  v31 = v30 - v29;
  v93 = sub_1C456902C(&qword_1EC0BC728, &unk_1C4F29250);
  sub_1C43FCDF8();
  v94 = v32;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBD08();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v83 - v38;
  v103[3] = v25;
  v103[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v103);
  sub_1C4EFBD48();
  v102[3] = MEMORY[0x1E69E7360];
  v102[4] = MEMORY[0x1E69A01C8];
  v102[0] = v0;
  v104[3] = sub_1C4EFB298();
  v104[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v104);
  sub_1C440C4CC();
  sub_1C4EFBB28();
  sub_1C4420C3C(v102, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v103);
  sub_1C441DCE4();
  v92 = v40;
  sub_1C44FAED4(v41, v42, &unk_1C4F29A50);
  sub_1C4EFAE28();
  sub_1C440962C(v104);
  v43 = sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v44 = sub_1C44331AC(v43);
  *(v44 + 16) = xmmword_1C4F0D130;
  sub_1C43FC144();
  sub_1C441D6B4();
  sub_1C4EFBD48();
  v45 = sub_1C4EFADA8();
  v46 = MEMORY[0x1E699FDA8];
  *(v44 + 56) = v45;
  *(v44 + 64) = v46;
  sub_1C4422F90((v44 + 32));
  sub_1C4EFB908();
  (*(v27 + 8))(v31, v25);
  sub_1C441F858();
  sub_1C4401CBC(v47, &qword_1EC0BC728, &unk_1C4F29250, v48);
  v49 = v39;
  v50 = v93;
  sub_1C4EFB2F8();

  v51 = *(v94 + 8);
  v51(v36, v50);
  sub_1C441310C();
  sub_1C4401CBC(v52, &qword_1EC0BC728, &unk_1C4F29250, v53);
  sub_1C441C9C0();
  sub_1C44FAED4(v54, v92, v55);
  sub_1C445698C();
  v56 = v97;
  v57 = sub_1C4EFAFD8();
  v51(v49, v50);
  if (!v56)
  {
    v93 = (v86 + 16);
    v94 = v85 + 32;
    v95 = v85 + 8;
    v97 = v57;
    v58 = v84;
    while (1)
    {
      sub_1C47882A8(v105);
      sub_1C440175C(v105, 1, v21);
      if (v59)
      {

        sub_1C4420C3C(v105, &qword_1EC0BC720, &qword_1C4F29248);
        break;
      }

      sub_1C4434FF4();
      sub_1C44C8EE8(v105, v58);
      sub_1C442FD20();
      sub_1C4430ACC(v58, v2);
      if (*(v2 + v21[6]))
      {
        if (*(v2 + v21[6]) == 1)
        {
          sub_1C4475AD8();
          if (*(v60 + 8))
          {
            sub_1C4459B48();
            if ((v61 & 1) == 0)
            {
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v62 = v87;
              sub_1C4EFE008();
LABEL_24:
              swift_storeEnumTagMultiPayload();
              (*v93)(v90, v2 + v21[5], v91);
              sub_1C44340E4();
              sub_1C4430ACC(v62, v88);
              v76 = v99;
              sub_1C43FBC98();
              sub_1C4EFDF78();
              sub_1C4419580();
              sub_1C4453D98();
              sub_1C443F5D0();
              sub_1C4453D98();
              v75 = 0;
              goto LABEL_20;
            }
          }
        }

        else if (*(v2 + v21[9]))
        {
          v72 = v2 + v21[10];
          if (*(v72 + 8))
          {
            v73 = (v2 + v21[12]);
            v74 = v73[1];
            if (v74 >> 60 != 15)
            {
              v92 = *v72;
              v81 = *v73;
              sub_1C445ABAC();
              v86 = *v82;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4431E64(v81, v74);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v62 = v87;
              sub_1C4EFDFB8();
              goto LABEL_24;
            }
          }
        }
      }

      else
      {
        sub_1C4475AD8();
        if (*(v63 + 8))
        {
          sub_1C4459B48();
          if ((v66 & 1) == 0)
          {
            if (*(v2 + v21[9]))
            {
              v67 = v2 + v21[10];
              if (*(v67 + 8))
              {
                v68 = (v2 + v21[12]);
                v69 = v68[1];
                if (v69 >> 60 != 15)
                {
                  v86 = *v64;
                  v85 = *v65;
                  v92 = *v67;
                  v83[0] = *v68;
                  v70 = v83[0];
                  v83[1] = *(sub_1C456902C(&unk_1EC0BC670, &unk_1C4F29260) + 48);
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C4431E64(v70, v69);
                  v71 = v87;
                  sub_1C4EFE008();
                  sub_1C445ABAC();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v62 = v71;
                  sub_1C4EFDFB8();
                  goto LABEL_24;
                }
              }
            }
          }
        }
      }

      sub_1C4419580();
      sub_1C4453D98();
      v75 = 1;
      v76 = v99;
LABEL_20:
      v77 = v100;
      sub_1C440BAA8(v76, v75, 1, v100);
      sub_1C440175C(v76, 1, v77);
      v78 = v98;
      if (v59)
      {
        sub_1C4419580();
        sub_1C4453D98();
        sub_1C4420C3C(v76, &qword_1EC0BC718, &qword_1C4F29240);
      }

      else
      {
        sub_1C4402C08();
        v79(v78, v76, v77);
        v96(v58 + v21[5], v78);
        sub_1C4402C08();
        v80(v78, v77);
        sub_1C4419580();
        sub_1C4453D98();
      }
    }
  }

  sub_1C43FBC80();
}

uint64_t EventLogDatabase.Reader.deinit()
{

  return v0;
}

uint64_t EventLogDatabase.Reader.__deallocating_deinit()
{
  EventLogDatabase.Reader.deinit();

  return swift_deallocClassInstance();
}

void sub_1C4793674()
{
  sub_1C43FE96C();
  v0 = sub_1C43FBE94();
  v1 = type metadata accessor for EventLogDatabase.TemporaryEventLogDatabaseEntry(v0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FD2D8();
  v60 = v3;
  sub_1C43FBE44();
  sub_1C4EFDFF8();
  sub_1C43FCDF8();
  v58 = v5;
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FD2D8();
  v53 = v6;
  sub_1C43FBE44();
  sub_1C4EFE038();
  sub_1C43FCDF8();
  v56 = v8;
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  v52 = v9;
  sub_1C43FBE44();
  sub_1C4EFDF68();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  swift_allocBox();
  v22 = v21;
  v23 = sub_1C4EFDF88();
  sub_1C4EFE048();
  *v22 = v23;
  (*(v16 + 32))(v22 + v1[5], v20, v14);
  v54 = v1[6];
  *(v22 + v54) = 0;
  v24 = (v22 + v1[7]);
  *v24 = 0;
  v24[1] = 0;
  v25 = v22 + v1[8];
  *v25 = 0;
  v25[8] = 1;
  v26 = v1[9];
  *(v22 + v26) = 0;
  v27 = (v22 + v1[10]);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v22 + v1[11]);
  *v28 = 0;
  v28[1] = 0;
  v51 = v22 + v1[12];
  *v51 = xmmword_1C4F29230;
  sub_1C4EFDF98();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = sub_1C442A90C();
      v31(v30);
      *(v22 + v54) = 2;
      *(v22 + v26) = sub_1C4EFDFC8();

      *v27 = sub_1C4EFDFA8();
      v27[1] = v32;

      *v28 = sub_1C4EFDFD8();
      v28[1] = v33;

      v34 = sub_1C4EFDFE8();
      v36 = v35;
      (*(v58 + 8))(v53, v59);
      v37 = *v51;
      v38 = *(v51 + 1);
      *v51 = v34;
      *(v51 + 1) = v36;
    }

    else
    {
      v55 = *(sub_1C456902C(&unk_1EC0BC670, &unk_1C4F29260) + 48);
      (*(v56 + 32))();
      (*(v58 + 32))(v53, v13 + v55, v59);
      *(v22 + v54) = 0;
      *v24 = sub_1C4EFE018();
      v24[1] = v43;

      *v25 = sub_1C4EFE028();
      v25[8] = 0;
      *(v22 + v26) = sub_1C4EFDFC8();

      *v27 = sub_1C4EFDFA8();
      v27[1] = v44;

      *v28 = sub_1C4EFDFD8();
      v28[1] = v45;

      v46 = sub_1C4EFDFE8();
      v48 = v47;
      (*(v58 + 8))(v53, v59);
      v49 = sub_1C4401D04();
      v50(v49);
      v37 = *v51;
      v38 = *(v51 + 1);
      *v51 = v46;
      *(v51 + 1) = v48;
    }

    sub_1C441DFEC(v37, v38);
  }

  else
  {
    v39 = sub_1C442A90C();
    v40(v39);
    *(v22 + v54) = 1;
    *v24 = sub_1C4EFE018();
    v24[1] = v41;

    v42 = sub_1C4EFE028();
    (*(v56 + 8))(v52, v57);
    *v25 = v42;
    v25[8] = 0;
  }

  sub_1C4F00288();

  sub_1C4F00278();

  swift_beginAccess();
  sub_1C445FD14();
  sub_1C4430ACC(v22, v60);
  sub_1C44FAED4(&qword_1EC0BC790, type metadata accessor for EventLogDatabase.TemporaryEventLogDatabaseEntry, &unk_1C4F299C8);
  sub_1C4EFB6C8();
  sub_1C4423B3C();

  sub_1C43FBC80();
}

uint64_t sub_1C4793C0C(uint64_t a1)
{
  v1 = type metadata accessor for EventLogDatabase.TemporaryEventLogDatabaseEntry(0);
  v2 = swift_projectBox();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x6D614E746E657645;
  *(inited + 40) = 0xE900000000000065;
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C4F01108();

  *(inited + 48) = v4;
  *(inited + 56) = 0x6E694B746E657645;
  *(inited + 64) = 0xE900000000000064;
  swift_beginAccess();
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  *(inited + 80) = 0x5464616F6C796150;
  *(inited + 88) = 0xEB00000000657079;
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4F01108();

  *(inited + 96) = v5;
  *(inited + 104) = 0x5364616F6C796150;
  *(inited + 112) = 0xEB00000000657A69;
  swift_beginAccess();
  v6 = 0;
  v7 = (v2 + *(v1 + 48));
  if (v7[1] >> 60 != 15)
  {
    v6 = MEMORY[0x1C6938780](*v7);
  }

  swift_endAccess();
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
  return sub_1C4F00F28();
}

uint64_t sub_1C4793E94()
{
  v1 = sub_1C4EFBC98();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBD08();
  v7 = v5 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  MEMORY[0x1C693A960](0xD00000000000002CLL, 0x80000001C4F9A280, v9);
  sub_1C4EFC008();
  if (v0)
  {
    return (*(v3 + 8))(v11, v1);
  }

  v13 = *(v3 + 8);
  v13(v11, v1);
  MEMORY[0x1C693A960](0xD000000000000017, 0x80000001C4F9A2B0);
  sub_1C4EFC008();
  return (v13)(v7, v1);
}

uint64_t EventLogEvent.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for EventLogEvent(0) + 20);
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v7 = *(v6 + 16);

  return v7(a1, v2 + v4, v5);
}

uint64_t EventLogEvent.startTime.setter()
{
  v2 = sub_1C4403FC0();
  v3 = *(type metadata accessor for EventLogEvent(v2) + 20);
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*EventLogEvent.startTime.modify())()
{
  v0 = sub_1C4403FC0();
  type metadata accessor for EventLogEvent(v0);
  return nullsub_1;
}

void EventLogEvent.duration.setter()
{
  v0 = sub_1C44158BC();
  v1 = type metadata accessor for EventLogEvent(v0);
  sub_1C4443428(*(v1 + 24));
}

void (*EventLogEvent.duration.modify())()
{
  v0 = sub_1C4403FC0();
  type metadata accessor for EventLogEvent(v0);
  return nullsub_1;
}

uint64_t EventLogEvent.name.getter(__n128 a1)
{
  type metadata accessor for EventLogEvent(0);
  sub_1C444ACBC();
  return sub_1C43FBC98();
}

uint64_t EventLogEvent.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C44158BC();
  type metadata accessor for EventLogEvent(v5);
  result = sub_1C4425724();
  *v2 = v3;
  v2[1] = a2;
  return result;
}

void (*EventLogEvent.name.modify())()
{
  v0 = sub_1C4403FC0();
  type metadata accessor for EventLogEvent(v0);
  return nullsub_1;
}

void EventLogEvent.parent.setter()
{
  v0 = sub_1C44158BC();
  v1 = type metadata accessor for EventLogEvent(v0);
  sub_1C4443428(*(v1 + 32));
}

void (*EventLogEvent.parent.modify())()
{
  v0 = sub_1C4403FC0();
  type metadata accessor for EventLogEvent(v0);
  return nullsub_1;
}

uint64_t EventLogEvent.dependencies.getter(__n128 a1)
{
  type metadata accessor for EventLogEvent(0);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t EventLogEvent.dependencies.setter()
{
  v2 = sub_1C4403FC0();
  v3 = *(type metadata accessor for EventLogEvent(v2) + 36);

  *(v1 + v3) = v0;
  return result;
}

void (*EventLogEvent.dependencies.modify())()
{
  v0 = sub_1C4403FC0();
  type metadata accessor for EventLogEvent(v0);
  return nullsub_1;
}

uint64_t EventLogEvent.payloadType.getter(__n128 a1)
{
  type metadata accessor for EventLogEvent(0);
  sub_1C444ACBC();
  return sub_1C43FBC98();
}

uint64_t EventLogEvent.payloadType.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C44158BC();
  type metadata accessor for EventLogEvent(v5);
  result = sub_1C4425724();
  *v2 = v3;
  v2[1] = a2;
  return result;
}

void (*EventLogEvent.payloadType.modify())()
{
  v0 = sub_1C4403FC0();
  type metadata accessor for EventLogEvent(v0);
  return nullsub_1;
}

uint64_t EventLogEvent.payloadVariant.getter(__n128 a1)
{
  type metadata accessor for EventLogEvent(0);
  sub_1C444ACBC();
  return sub_1C43FBC98();
}

uint64_t EventLogEvent.payloadVariant.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C44158BC();
  type metadata accessor for EventLogEvent(v5);
  result = sub_1C4425724();
  *v2 = v3;
  v2[1] = a2;
  return result;
}

void (*EventLogEvent.payloadVariant.modify())()
{
  v0 = sub_1C4403FC0();
  type metadata accessor for EventLogEvent(v0);
  return nullsub_1;
}

uint64_t EventLogEvent.payload.getter(__n128 a1)
{
  type metadata accessor for EventLogEvent(0);
  v1 = sub_1C43FBC98();
  sub_1C44344B8(v1, v2);
  return sub_1C43FBC98();
}

uint64_t EventLogEvent.payload.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C44158BC();
  v6 = v2 + *(type metadata accessor for EventLogEvent(v5) + 48);
  result = sub_1C4434000(*v6, *(v6 + 8));
  *v6 = v3;
  *(v6 + 8) = a2;
  return result;
}

void (*EventLogEvent.payload.modify())()
{
  v0 = sub_1C4403FC0();
  type metadata accessor for EventLogEvent(v0);
  return nullsub_1;
}

uint64_t sub_1C4794640@<X0>(uint64_t *a1@<X8>)
{
  result = EventLogEvent.id.getter();
  *a1 = result;
  return result;
}

uint64_t EventLogTypedEvent.startTime.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t EventLogTypedEvent.startTime.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t EventLogTypedEvent.name.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C4425724();
  *v3 = a1;
  v3[1] = a2;
  return result;
}

uint64_t EventLogTypedEvent.dependencies.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);

  *(v2 + v4) = a1;
  return result;
}

uint64_t EventLogTypedEvent.eventVariant.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C4425724();
  *v3 = a1;
  v3[1] = a2;
  return result;
}

uint64_t sub_1C47949CC@<X0>(uint64_t *a1@<X8>)
{
  result = EventLogTypedEvent.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C47949F4()
{
  type metadata accessor for EventLogBufferedWriter.TerminationSignal();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_1C456902C(&qword_1EC0BC9B8, &qword_1C4F29B28);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1EC151D80 = result;
  return result;
}

uint64_t sub_1C4794A58()
{
  if (qword_1EC0B69C0 != -1)
  {
    sub_1C4422AA0(&qword_1EC0B69C0);
  }

  v0 = qword_1EC151D80;

  os_unfair_lock_lock((v0 + 24));
  v1 = *(*(v0 + 16) + 16);
  os_unfair_lock_unlock((v0 + 24));

  return v1;
}

uint64_t sub_1C4794AC8(char a1)
{
  if (qword_1EC0B69C0 != -1)
  {
    sub_1C4422AA0(&qword_1EC0B69C0);
  }

  v2 = qword_1EC151D80;

  os_unfair_lock_lock((v2 + 24));
  *(*(v2 + 16) + 16) = a1 & 1;
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_1C4794B48()
{
  v3 = v0;
  sub_1C44158BC();
  v4 = sub_1C4F023E8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  swift_defaultActor_initialize();
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task) = 0;
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_transaction) = 0;
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_signalHandler) = 0;
  *(v3 + 112) = v1;

  sub_1C4F023C8();
  (*(v6 + 32))(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_timeOfLastInsert, v2, v4);
  *(v3 + 120) = MEMORY[0x1E69E7CC0];
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C4400128(&qword_1EDDFFAF0);
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2E088);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CB8();
  if (os_log_type_enabled(v9, v10))
  {
    sub_1C43FD1A8();
    *swift_slowAlloc() = 0;
    sub_1C4424954();
    _os_log_impl(v11, v12, v13, v14, v15, v16);
    v17 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v17);
  }

  return v3;
}

void sub_1C4794CE4()
{
  sub_1C43FBD3C();
  v2 = v0;
  v3 = sub_1C4F00D58();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = sub_1C4F00D88();
  sub_1C43FCDF8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v14 = OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_signalHandler;
  if (!*(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_signalHandler))
  {
    sub_1C4461BB8(0, &qword_1EDDFA490, 0x1E69E9630);
    v18 = v5;
    v15 = sub_1C4F01DD8();
    swift_getObjectType();
    v16 = swift_allocObject();
    swift_weakInit();
    v19[4] = sub_1C47986E8;
    v19[5] = v16;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1C4833DD0;
    v19[3] = &unk_1F43EB390;
    v17 = _Block_copy(v19);

    sub_1C4F00D78();
    sub_1C479516C();
    sub_1C43FE5F8();
    sub_1C4F01DE8();
    _Block_release(v17);
    (*(v18 + 8))(v9, v3);
    (*(v12 + 8))(v1, v10);

    sub_1C4F01E08();
    *(v2 + v14) = v15;
    swift_unknownObjectRelease();
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C4794F44(uint64_t a1)
{
  v1 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1C4F018C8();
    sub_1C440BAA8(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_1C4785250();
  }

  return result;
}

uint64_t sub_1C4795060()
{
  sub_1C43FCF70();
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C4400128(&qword_1EDDFFAF0);
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2E088);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CB8();
  if (sub_1C4402B64(v3))
  {
    sub_1C43FD1A8();
    v4 = swift_slowAlloc();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "EventLogBufferedWriter: Handling SIGTERM");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  sub_1C44246F8(v7);

  return sub_1C4795258();
}

uint64_t sub_1C479516C()
{
  sub_1C4F00D58();
  sub_1C44FAED4(&qword_1EDDFCF08, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1C456902C(&qword_1EC0BC9C0, &qword_1C4F29B30);
  sub_1C4401CBC(&qword_1EDDFCED8, &qword_1EC0BC9C0, &qword_1C4F29B30, MEMORY[0x1E69E6328]);
  return sub_1C4F020C8();
}

uint64_t sub_1C4795274()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 16);
  type metadata accessor for EventLogBufferedWriter(0);
  sub_1C4794AC8(1);
  if (*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task))
  {

    sub_1C4F01918();
  }

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_1C44246F8(v2);

  return sub_1C4796880();
}

uint64_t sub_1C479534C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C479544C, v2, 0);
}

uint64_t sub_1C479544C()
{
  sub_1C43FBCD4();
  *(*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_signalHandler) = 0;
  swift_unknownObjectRelease();
  sub_1C43FBDA0();

  return v1();
}

void sub_1C47954B4()
{
  v1 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C444BFE4();
  v3 = OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task;
  if (!*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task))
  {
    type metadata accessor for EventLogBufferedWriter(0);
    if ((sub_1C4794A58() & 1) == 0)
    {
      sub_1C4F01898();
      sub_1C4F018C8();
      v4 = sub_1C445698C();
      sub_1C440BAA8(v4, 0, 1, v5);
      v6 = sub_1C44FAED4(&qword_1EC0BC9A8, type metadata accessor for EventLogBufferedWriter, &unk_1C4F29950);
      v7 = swift_allocObject();
      v7[2] = v0;
      v7[3] = v6;
      v7[4] = v0;
      swift_retain_n();
      sub_1C445A93C();
      *(v0 + v3) = v8;
    }
  }
}

uint64_t sub_1C47955EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v6 = sub_1C4F023F8();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = sub_1C4F023E8();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4795730, a4, 0);
}

uint64_t sub_1C4795730()
{
  v5 = v1[17];
  v6 = os_transaction_create();
  v7 = OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_transaction;
  v1[27] = OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_transaction;
  *(v5 + v7) = v6;
  swift_unknownObjectRelease();
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C4400128(&qword_1EDDFFAF0);
  }

  v8 = sub_1C4F00978();
  v1[28] = sub_1C442B738(v8, qword_1EDE2E088);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CB8();
  if (os_log_type_enabled(v9, v10))
  {
    sub_1C43FD1A8();
    v11 = swift_slowAlloc();
    sub_1C43FBD24(v11);
    _os_log_impl(&dword_1C43F8000, v9, v10, "EventLogBufferedWriter: Opening buffer.", v0, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C4794CE4();
  v1[29] = OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_timeOfLastInsert;
  swift_beginAccess();
  sub_1C44883A4();
  v12 = sub_1C448F0F0();
  v3(v12);
  sub_1C44578A8();
  v13 = sub_1C445C154();
  v4(v13);
  v14 = sub_1C4F023B8();
  v15 = sub_1C43FD2BC();
  v4(v15);
  (v4)(v0, v2);
  if ((v14 & 1) == 0)
  {
    *(v1[17] + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task) = 0;

    type metadata accessor for EventLogBufferedWriter(0);
    v22 = sub_1C4794A58();

    v23 = sub_1C4F00968();
    v24 = sub_1C4F01CB8();
    v25 = sub_1C4402B64(v24);
    v26 = v1[17];
    if (v22)
    {
      if (!v25)
      {

        goto LABEL_19;
      }

      v27 = sub_1C43FD084();
      sub_1C4430610(v27, 3.852e-34);
      sub_1C44102BC();
      sub_1C4403014(&dword_1C43F8000, v28, v29, "EventLogBufferedWriter: Stopping immediately. %ld items will be lost.");
    }

    else
    {
      if (v25)
      {
        v22 = sub_1C43FD084();
        sub_1C441B394(v22, 3.852e-34);
        sub_1C44102BC();
        sub_1C4403014(&dword_1C43F8000, v30, v31, "EventLogBufferedWriter: Flushing %ld items.");
        v32 = sub_1C43FEF7C();
        MEMORY[0x1C6942830](v32);
      }

      else
      {
      }

      sub_1C4460804();
      swift_task_alloc();
      sub_1C43FC278();
      *(v33 + 16) = v34;
      *(v33 + 24) = v22;
      sub_1C446C37C(sub_1C4798C8C, v26);

      sub_1C4460630();
      *(v22 + 120) = MEMORY[0x1E69E7CC0];

      v23 = sub_1C4F00968();
      v35 = sub_1C4F01CB8();
      if (!sub_1C4402B64(v35))
      {
LABEL_19:

        sub_1C441C200();

        sub_1C43FBDA0();
        sub_1C43FEA3C();

        __asm { BRAA            X1, X16 }
      }

      sub_1C43FD1A8();
      v36 = swift_slowAlloc();
      sub_1C43FBD24(v36);
      sub_1C43FFFD8(&dword_1C43F8000, v37, v38, "EventLogBufferedWriter: Flush complete.");
    }

    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    goto LABEL_19;
  }

  v16 = sub_1C4455364();
  v3(v16);
  sub_1C44578A8();
  v17 = sub_1C440A9B8();
  v4(v17);
  sub_1C44A1780();
  v18 = swift_task_alloc();
  v1[32] = v18;
  sub_1C441AE88();
  sub_1C44FAED4(v19, v20, MEMORY[0x1E69E8828]);
  *v18 = v1;
  sub_1C447F014();
  sub_1C43FEA3C();

  return MEMORY[0x1EEE6DA68]();
}

uint64_t sub_1C4795B3C()
{
  sub_1C43FBDE4();
  v5 = v4;
  v6 = *v2;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v5 + 264) = v0;

  v8 = sub_1C443EF00();
  v9(v8);
  if (v0)
  {
    v3(v0, v1);
    v10 = sub_1C4795FA8;
  }

  else
  {
    v3(0, v1);
    v10 = sub_1C4795C8C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v5, 0);
}

uint64_t sub_1C4795C8C()
{
  sub_1C44883A4();
  v5 = sub_1C448F0F0();
  v3(v5);
  sub_1C44578A8();
  v6 = sub_1C445C154();
  v4(v6);
  v7 = sub_1C4F023B8();
  v8 = sub_1C43FD2BC();
  v4(v8);
  (v4)(v0, v2);
  if ((v7 & 1) == 0)
  {
    *(*(v1 + 136) + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task) = 0;

    type metadata accessor for EventLogBufferedWriter(0);
    v15 = sub_1C4794A58();

    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CB8();
    v18 = sub_1C4402B64(v17);
    v19 = *(v1 + 136);
    if (v15)
    {
      if (!v18)
      {

        goto LABEL_15;
      }

      v20 = sub_1C43FD084();
      sub_1C4430610(v20, 3.852e-34);
      sub_1C44102BC();
      sub_1C4403014(&dword_1C43F8000, v21, v22, "EventLogBufferedWriter: Stopping immediately. %ld items will be lost.");
    }

    else
    {
      if (v18)
      {
        v15 = sub_1C43FD084();
        sub_1C441B394(v15, 3.852e-34);
        sub_1C44102BC();
        sub_1C4403014(&dword_1C43F8000, v23, v24, "EventLogBufferedWriter: Flushing %ld items.");
        v25 = sub_1C43FEF7C();
        MEMORY[0x1C6942830](v25);
      }

      else
      {
      }

      sub_1C4460804();
      swift_task_alloc();
      sub_1C43FC278();
      *(v26 + 16) = v27;
      *(v26 + 24) = v15;
      sub_1C446C37C(sub_1C4798C8C, v19);

      sub_1C4460630();
      *(v15 + 120) = MEMORY[0x1E69E7CC0];

      v16 = sub_1C4F00968();
      v28 = sub_1C4F01CB8();
      if (!sub_1C4402B64(v28))
      {
LABEL_15:

        sub_1C441C200();

        sub_1C43FBDA0();
        sub_1C43FEA3C();

        __asm { BRAA            X1, X16 }
      }

      sub_1C43FD1A8();
      v29 = swift_slowAlloc();
      sub_1C43FBD24(v29);
      sub_1C43FFFD8(&dword_1C43F8000, v30, v31, "EventLogBufferedWriter: Flush complete.");
    }

    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    goto LABEL_15;
  }

  v9 = sub_1C4455364();
  v3(v9);
  sub_1C44578A8();
  v10 = sub_1C440A9B8();
  v4(v10);
  sub_1C44A1780();
  v11 = swift_task_alloc();
  *(v1 + 256) = v11;
  sub_1C441AE88();
  sub_1C44FAED4(v12, v13, MEMORY[0x1E69E8828]);
  *v11 = v1;
  sub_1C447F014();
  sub_1C43FEA3C();

  return MEMORY[0x1EEE6DA68]();
}

uint64_t sub_1C4795FA8(uint64_t a1)
{
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CB8();
  if (sub_1C4402B64(v3))
  {
    sub_1C43FD1A8();
    v4 = swift_slowAlloc();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "EventLogBufferedWriter: Early wakeup.");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  *(*(v1 + 136) + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task) = 0;

  type metadata accessor for EventLogBufferedWriter(0);
  v7 = sub_1C4794A58();

  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CB8();
  v10 = sub_1C4402B64(v9);
  v11 = *(v1 + 136);
  if (v7)
  {
    if (!v10)
    {

      goto LABEL_13;
    }

    v12 = sub_1C43FD084();
    sub_1C4430610(v12, 3.852e-34);
    sub_1C44102BC();
    sub_1C4403014(&dword_1C43F8000, v13, v14, "EventLogBufferedWriter: Stopping immediately. %ld items will be lost.");
  }

  else
  {
    if (v10)
    {
      v7 = sub_1C43FD084();
      sub_1C441B394(v7, 3.852e-34);
      sub_1C44102BC();
      sub_1C4403014(&dword_1C43F8000, v15, v16, "EventLogBufferedWriter: Flushing %ld items.");
      v17 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v17);
    }

    else
    {
    }

    sub_1C4460804();
    swift_task_alloc();
    sub_1C43FC278();
    *(v18 + 16) = v19;
    *(v18 + 24) = v7;
    sub_1C446C37C(sub_1C4798C8C, v11);

    sub_1C4460630();
    *(v7 + 120) = MEMORY[0x1E69E7CC0];

    v8 = sub_1C4F00968();
    v20 = sub_1C4F01CB8();
    if (!sub_1C4402B64(v20))
    {
      goto LABEL_13;
    }

    sub_1C43FD1A8();
    v21 = swift_slowAlloc();
    sub_1C43FBD24(v21);
    sub_1C43FFFD8(&dword_1C43F8000, v22, v23, "EventLogBufferedWriter: Flush complete.");
  }

  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
LABEL_13:

  sub_1C441C200();

  sub_1C43FBDA0();

  return v24();
}

uint64_t sub_1C4796204(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EFE058();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(a2 + 120);
  v9 = *(v8 + 16);
  v13[5] = v5 + 16;
  v10 = (v5 + 8);
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {
    }

    if (i >= *(v8 + 16))
    {
      break;
    }

    (*(v5 + 16))(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * i, v4);
    sub_1C4793674();
    if (v2)
    {
      (*v10)(v7, v4);
    }

    result = (*v10)(v7, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C47963A4()
{
  sub_1C43FBCD4();
  *(v1 + 112) = v2;
  *(v1 + 64) = v3;
  *(v1 + 72) = v0;
  v4 = sub_1C4F023E8();
  *(v1 + 80) = v4;
  *(v1 + 88) = *(v4 - 8);
  *(v1 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4796464, v0, 0);
}

uint64_t sub_1C4796464()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  swift_beginAccess();
  sub_1C458926C();
  v6 = *(*(v3 + 120) + 16);
  sub_1C4589E0C();
  v7 = *(v3 + 120);
  *(v7 + 16) = v6 + 1;
  sub_1C4EFE058();
  sub_1C43FBCE0();
  (*(v8 + 16))(v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, v5);
  *(v3 + 120) = v7;
  swift_endAccess();
  sub_1C4F023C8();
  v9 = OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_timeOfLastInsert;
  swift_beginAccess();
  (*(v2 + 40))(v3 + v9, v1, v4);
  swift_endAccess();
  sub_1C47954B4();
  if (*(*(v3 + 120) + 16) < 0x65uLL)
  {
    goto LABEL_8;
  }

  if (*(*(v0 + 72) + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task))
  {

    sub_1C4F01918();
  }

  if (*(v0 + 112) == 1)
  {
    v10 = swift_task_alloc();
    *(v0 + 104) = v10;
    *v10 = v0;
    v10[1] = sub_1C4796698;

    return sub_1C4796880();
  }

  else
  {
LABEL_8:

    sub_1C43FBDA0();

    return v12();
  }
}

uint64_t sub_1C4796698()
{
  sub_1C43FBCD4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C47967B8()
{
  sub_1C43FBCD4();
  if (*(*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task))
  {

    sub_1C4F01918();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  sub_1C44246F8(v1);

  return sub_1C4796880();
}

uint64_t sub_1C479689C()
{
  sub_1C43FBCD4();
  v1 = *(v0[2] + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task);
  v0[3] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_1C47969A0;
    v3 = MEMORY[0x1E69E73E0];
    v4 = MEMORY[0x1E69E7410];
    v5 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v0 + 5, v1, v5, v3, v4);
  }

  else
  {
    sub_1C43FBDA0();

    return v6();
  }
}

uint64_t sub_1C47969A0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C4796ABC, v2, 0);
}

uint64_t sub_1C4796ADC()
{

  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_timeOfLastInsert;
  sub_1C4F023E8();
  sub_1C43FBCE0();
  (*(v2 + 8))(v0 + v1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C4796B7C()
{
  sub_1C4796ADC();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C4796D94@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, void (*a3)(uint64_t *__return_ptr, uint64_t)@<X1>)
{
  result = sub_1C4800918(a2, a3);
  if (!v3)
  {
    *a1 = result;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8 & 1;
  }

  return result;
}

uint64_t sub_1C4796E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8C80, &unk_1C4F3E850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4796EC4()
{
  result = qword_1EC0BC798;
  if (!qword_1EC0BC798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC798);
  }

  return result;
}

uint64_t sub_1C4796F70(uint64_t a1)
{
  result = sub_1C4EF98F8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Configuration(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventLogDatabase.EventKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C47973AC(uint64_t a1)
{
  sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    sub_1C4797E18(319, &qword_1EDDF05D8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      v3 = MEMORY[0x1E69E6158];
      sub_1C4797E18(319, &qword_1EDDFCDC0, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        sub_1C4797E18(319, qword_1EC0BC7B8, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
        if (v5 <= 0x3F)
        {
          sub_1C4797E18(319, &qword_1EDDFEAB0, v3, MEMORY[0x1E69E6720]);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C4797524(uint64_t a1)
{
  sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    sub_1C4797E18(319, &qword_1EDDF05D8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C4797E18(319, &qword_1EDDFCDC0, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C4797E18(319, qword_1EC0BC7B8, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1C4797E18(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C47976B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v8 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v7 + 80);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  if (!a2)
  {
    return 0;
  }

  v17 = *(*(v6 - 8) + 64) + 23;
  v18 = v15 + 16;
  if (a2 <= v13)
  {
    goto LABEL_28;
  }

  v19 = ((v18 + ((((((v17 + ((v14 + 8) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + v16;
  v20 = 8 * v19;
  if (v19 > 3)
  {
    goto LABEL_10;
  }

  v23 = ((a2 - v13 + ~(-1 << v20)) >> v20) + 1;
  if (HIWORD(v23))
  {
    v21 = *(a1 + v19);
    if (v21)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v23 <= 0xFF)
    {
      if (v23 < 2)
      {
        goto LABEL_28;
      }

LABEL_10:
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_28;
      }

LABEL_18:
      v24 = (v21 - 1) << v20;
      if (v19 > 3)
      {
        v24 = 0;
      }

      if (v19)
      {
        if (v19 <= 3)
        {
          v25 = v19;
        }

        else
        {
          v25 = 4;
        }

        switch(v25)
        {
          case 2:
            v26 = *a1;
            break;
          case 3:
            v26 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v26 = *a1;
            break;
          default:
            v26 = *a1;
            break;
        }
      }

      else
      {
        v26 = 0;
      }

      return v13 + (v26 | v24) + 1;
    }

    v21 = *(a1 + v19);
    if (*(a1 + v19))
    {
      goto LABEL_18;
    }
  }

LABEL_28:
  v27 = (a1 + v14 + 8) & ~v14;
  if (v8 == v13)
  {
    v11 = v8;
    v9 = v6;
LABEL_35:

    return sub_1C44157D4(v27, v11, v9);
  }

  v28 = (v17 + v27) & 0xFFFFFFFFFFFFFFF8;
  if ((v12 & 0x80000000) != 0)
  {
    v27 = (v18 + ((((v28 + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
    goto LABEL_35;
  }

  v29 = *(v28 + 8);
  if (v29 >= 0xFFFFFFFF)
  {
    LODWORD(v29) = -1;
  }

  return (v29 + 1);
}

void sub_1C4797944(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1C4EF9CD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v10 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v9 + 80);
  v17 = *(*(v8 - 8) + 64) + 23;
  v18 = *(v12 + 80);
  v19 = ((v18 + 16 + ((((((v17 + ((v16 + 8) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v18) + *(v12 + 64);
  v20 = 8 * v19;
  if (a3 <= v15)
  {
    v21 = 0;
  }

  else if (v19 <= 3)
  {
    v24 = ((a3 - v15 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v24))
    {
      v21 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v21 = v25;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 1;
  }

  if (v15 >= a2)
  {
    switch(v21)
    {
      case 1:
        a1[v19] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 2:
        *&a1[v19] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 3:
LABEL_50:
        __break(1u);
        return;
      case 4:
        *&a1[v19] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (!a2)
        {
          return;
        }

LABEL_30:
        v27 = &a1[v16 + 8] & ~v16;
        if (v10 == v15)
        {
          v28 = a2;
          v11 = v8;
        }

        else
        {
          v29 = ((v17 + v27) & 0xFFFFFFFFFFFFFFF8);
          if ((v14 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              *v29 = a2 & 0x7FFFFFFF;
              v29[1] = 0;
            }

            else
            {
              v29[1] = (a2 - 1);
            }

            return;
          }

          v27 = (v18 + 16 + ((((v29 + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) & ~v18;
          v28 = a2;
          v10 = v13;
        }

        sub_1C440BAA8(v27, v28, v10, v11);
        break;
    }
  }

  else
  {
    v22 = ~v15 + a2;
    if (v19 < 4)
    {
      v23 = (v22 >> v20) + 1;
      if (v19)
      {
        v26 = v22 & ~(-1 << v20);
        bzero(a1, v19);
        if (v19 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v19 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v22;
        }
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v22;
      v23 = 1;
    }

    switch(v21)
    {
      case 1:
        a1[v19] = v23;
        break;
      case 2:
        *&a1[v19] = v23;
        break;
      case 3:
        goto LABEL_50;
      case 4:
        *&a1[v19] = v23;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C4797CA4(uint64_t a1)
{
  result = sub_1C4F023E8();
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

void sub_1C4797DB4(uint64_t a1)
{
  if (!qword_1EDDDBBA8)
  {
    sub_1C4572308(&qword_1EC0BC860, &unk_1C4F29660);
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDDBBA8);
    }
  }
}

void sub_1C4797E18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C4797E7C(uint64_t a1, int a2)
{
  sub_1C4403FC0();
  sub_1C4EF9CD8();
  sub_1C43FCF8C();
  if (*(v3 + 84) == a2)
  {
    v4 = sub_1C4456280();

    return sub_1C44157D4(v4, v5, v6);
  }

  else
  {
    sub_1C4458490();
    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

void sub_1C4797F28(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  sub_1C44158BC();
  sub_1C4EF9CD8();
  sub_1C43FCF8C();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_1C442902C();

    sub_1C440BAA8(v9, v10, v11, v12);
  }

  else
  {
    *(v4 + *(a4 + 28) + 8) = a2;
  }
}

uint64_t sub_1C4797FC0(uint64_t a1)
{
  v1 = sub_1C4EF9CD8();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1C44042D0(v1, &qword_1EDDFEAB0, MEMORY[0x1E69E6158]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1C44042D0(v4, &qword_1EDDFCDC0, MEMORY[0x1E69E7360]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_1C4797DB4(319);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_1C44042D0(v6, &qword_1EDDFA3F8, MEMORY[0x1E6969080]);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_1C47982C8()
{
  sub_1C4403FC0();
  v2 = sub_1C4EFE058();
  sub_1C43FBD18(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = swift_task_alloc();
  v9 = sub_1C43FCF54(v8);
  *v9 = v10;
  v9[1] = sub_1C442E8C4;

  return sub_1C4789D80(v0, v5, v6, v7, v1 + v4);
}

unint64_t sub_1C4798484()
{
  result = qword_1EC0BC940;
  if (!qword_1EC0BC940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC940);
  }

  return result;
}

unint64_t sub_1C47984D8()
{
  result = qword_1EC0BC950;
  if (!qword_1EC0BC950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC950);
  }

  return result;
}

unint64_t sub_1C479852C()
{
  result = qword_1EDDE7168;
  if (!qword_1EDDE7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE7168);
  }

  return result;
}

uint64_t sub_1C4798580(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BC860, &unk_1C4F29660);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C47985EC()
{
  result = qword_1EDDE7158;
  if (!qword_1EDDE7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE7158);
  }

  return result;
}

uint64_t sub_1C4798640()
{
  sub_1C43FCF70();
  sub_1C4424CA8();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C441E37C(v1);

  return sub_1C47955EC(v3, v4, v5, v6);
}

uint64_t sub_1C47986F0()
{
  sub_1C43FCF70();
  sub_1C4424CA8();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C441E37C(v1);

  return sub_1C4795040(v3, v4, v5, v6);
}

uint64_t sub_1C479877C()
{
  sub_1C43FCF70();
  sub_1C4424CA8();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C441E37C(v1);

  return sub_1C47893B8();
}

unint64_t sub_1C4798808()
{
  result = qword_1EDDE7160;
  if (!qword_1EDDE7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE7160);
  }

  return result;
}

_BYTE *sub_1C4798908(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C47989E8()
{
  result = qword_1EC0BCB00;
  if (!qword_1EC0BCB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB00);
  }

  return result;
}

unint64_t sub_1C4798A40()
{
  result = qword_1EC0BCB08;
  if (!qword_1EC0BCB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB08);
  }

  return result;
}

unint64_t sub_1C4798A98()
{
  result = qword_1EDDE7140;
  if (!qword_1EDDE7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE7140);
  }

  return result;
}

unint64_t sub_1C4798AF0()
{
  result = qword_1EDDE7148;
  if (!qword_1EDDE7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE7148);
  }

  return result;
}

unint64_t sub_1C4798B48()
{
  result = qword_1EC0BCB10;
  if (!qword_1EC0BCB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB10);
  }

  return result;
}

unint64_t sub_1C4798BA0()
{
  result = qword_1EC0BCB18;
  if (!qword_1EC0BCB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB18);
  }

  return result;
}

uint64_t sub_1C4798CA8()
{
  v2 = *(v0 - 376);
  v3 = *(v0 - 184);

  return sub_1C441DFEC(v2, v3);
}

uint64_t sub_1C4798CC4()
{

  return sub_1C4EF96D8();
}

uint64_t EventMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventMatcher(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for EventMatcher(uint64_t a1)
{
  result = qword_1EDDF8CA0;
  if (!qword_1EDDF8CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EventMatcher.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  sub_1C4471EF8(a2, a4);
  v7 = type metadata accessor for EventMatcher(0);
  *(a4 + *(v7 + 20)) = v6;
  return sub_1C4471EF8(a1, a4 + *(v7 + 24));
}

uint64_t sub_1C4798E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a1;
  v66 = a3;
  v67 = a2;
  v4 = sub_1C4EF9CD8();
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v61 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v57 - v10;
  v12 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C456902C(&unk_1EC0BC900, byte_1C4F142D0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v57 - v16;
  v18 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v57 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v57 - v25;
  v27 = v69;
  result = sub_1C4ACE63C();
  if (!v27)
  {
    v59 = v3;
    v60 = v23;
    v57[0] = v20;
    v57[1] = 0;
    v69 = v14;
    v58 = v8;
    v30 = v64;
    v29 = v65;
    v31 = v26;
    v32 = v66;
    if (v67)
    {
      sub_1C44F1938(v67, v17);
      v33 = type metadata accessor for GraphTriple(0);
      v34 = v30;
      v35 = v11;
      if (sub_1C44157D4(v17, 1, v33) == 1)
      {
        sub_1C4420C3C(v17, &unk_1EC0BC900, byte_1C4F142D0);
        v36 = 1;
      }

      else
      {
        (*(v30 + 16))(v31, v17, v29);
        sub_1C44DBD5C(v17, type metadata accessor for GraphTriple);
        v36 = 0;
      }

      v37 = v68;
    }

    else
    {
      v36 = 1;
      v34 = v64;
      v37 = v68;
      v35 = v11;
    }

    sub_1C440BAA8(v31, v36, 1, v29);
    sub_1C44D0BD8(v37, v35);
    v38 = sub_1C44157D4(v35, 1, v12);
    v39 = v32;
    v40 = v69;
    v41 = v60;
    if (v38 == 1)
    {
      sub_1C4420C3C(v35, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v42 = sub_1C4F00978();
      sub_1C442B738(v42, qword_1EDE2DE10);
      v43 = sub_1C4F00968();
      v44 = sub_1C4F01CD8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C43F8000, v43, v44, "Event Matcher: skipping entityTriples are empty", v45, 2u);
        MEMORY[0x1C6942830](v45, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v46 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v31, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C4471EF8(v35, v69);
      sub_1C4EFF008();
      sub_1C4420C3C(v31, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C440BAA8(v41, 0, 1, v29);
      sub_1C44DDDBC(v41, v31);
      v47 = v57[0];
      sub_1C457E858(v31, v57[0]);
      v48 = sub_1C44157D4(v47, 1, v29);
      v68 = v31;
      if (v48 == 1)
      {
        sub_1C4420C3C(v47, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        v49 = v40;
        v50 = v58;
        (*(v34 + 32))(v58, v47, v29);
        _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
        v51 = type metadata accessor for EntityMatch(0);
        v52 = *(v34 + 16);
        v52(v39 + v51[5], v40, v29);
        v52(v39 + v51[6], v50, v29);
        v53 = v61;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v55 = v54;
        (*(v62 + 8))(v53, v63);
        (*(v34 + 8))(v50, v29);
        sub_1C44DBD5C(v49, type metadata accessor for EntityTriple);
        sub_1C4420C3C(v68, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = type metadata accessor for EventMatcher(0);
        v56 = *(v59 + *(result + 20));
        *(v39 + v51[7]) = 1056964608;
        *(v39 + v51[8]) = v55;
        *(v39 + v51[9]) = v56;
        *(v39 + v51[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4799584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a1;
  v66 = a3;
  v67 = a2;
  v4 = sub_1C4EF9CD8();
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v61 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v57 - v10;
  v12 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C456902C(&unk_1EC0BCAE0, byte_1C4F142A0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v57 - v16;
  v18 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v57 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v57 - v25;
  v27 = v69;
  result = sub_1C4ACE63C();
  if (!v27)
  {
    v59 = v3;
    v60 = v23;
    v57[0] = v20;
    v57[1] = 0;
    v69 = v14;
    v58 = v8;
    v30 = v64;
    v29 = v65;
    v31 = v26;
    v32 = v66;
    if (v67)
    {
      sub_1C486854C(v67, v17);
      v33 = type metadata accessor for ConstructionGraphTriple(0);
      v34 = v30;
      v35 = v11;
      if (sub_1C44157D4(v17, 1, v33) == 1)
      {
        sub_1C4420C3C(v17, &unk_1EC0BCAE0, byte_1C4F142A0);
        v36 = 1;
      }

      else
      {
        (*(v30 + 16))(v31, v17, v29);
        sub_1C44DBD5C(v17, type metadata accessor for ConstructionGraphTriple);
        v36 = 0;
      }

      v37 = v68;
    }

    else
    {
      v36 = 1;
      v34 = v64;
      v37 = v68;
      v35 = v11;
    }

    sub_1C440BAA8(v31, v36, 1, v29);
    sub_1C44D0BD8(v37, v35);
    v38 = sub_1C44157D4(v35, 1, v12);
    v39 = v32;
    v40 = v69;
    v41 = v60;
    if (v38 == 1)
    {
      sub_1C4420C3C(v35, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v42 = sub_1C4F00978();
      sub_1C442B738(v42, qword_1EDE2DE10);
      v43 = sub_1C4F00968();
      v44 = sub_1C4F01CD8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C43F8000, v43, v44, "Event Matcher: skipping entityTriples are empty", v45, 2u);
        MEMORY[0x1C6942830](v45, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v46 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v31, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C4471EF8(v35, v69);
      sub_1C4EFF008();
      sub_1C4420C3C(v31, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C440BAA8(v41, 0, 1, v29);
      sub_1C44DDDBC(v41, v31);
      v47 = v57[0];
      sub_1C457E858(v31, v57[0]);
      v48 = sub_1C44157D4(v47, 1, v29);
      v68 = v31;
      if (v48 == 1)
      {
        sub_1C4420C3C(v47, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        v49 = v40;
        v50 = v58;
        (*(v34 + 32))(v58, v47, v29);
        _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
        v51 = type metadata accessor for EntityMatch(0);
        v52 = *(v34 + 16);
        v52(v39 + v51[5], v40, v29);
        v52(v39 + v51[6], v50, v29);
        v53 = v61;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v55 = v54;
        (*(v62 + 8))(v53, v63);
        (*(v34 + 8))(v50, v29);
        sub_1C44DBD5C(v49, type metadata accessor for EntityTriple);
        sub_1C4420C3C(v68, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = type metadata accessor for EventMatcher(0);
        v56 = *(v59 + *(result + 20));
        *(v39 + v51[7]) = 1056964608;
        *(v39 + v51[8]) = v55;
        *(v39 + v51[9]) = v56;
        *(v39 + v51[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t EventMatcher.execute()()
{
  v1[3] = v0;
  v2 = sub_1C4EFD548();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4799D90, 0, 0);
}

uint64_t sub_1C4799D90()
{
  v36 = v0;
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = type metadata accessor for EventMatcher(0);
  type metadata accessor for PhaseStores(0);
  v5 = *(v4 + 20);
  LOBYTE(v35[0]) = *(v3 + v5);
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C43FBD94();
  sub_1C440BAA8(v6, v7, v8, v2);
  sub_1C44ABA54(v35, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  switch(*(v3 + v5))
  {
    case 1:
    case 3:
      v9 = v0[7];
      v10 = v0[4];
      v11 = v0[5];
      v12 = v0[3];
      _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
      v13 = *(v3 + v5);
      *(swift_task_alloc() + 16) = v12;
      v14 = sub_1C4406CC8();
      sub_1C44AC170(v14, v15, v16, v17, v18, v19);
      goto LABEL_5;
    case 2:
      v11 = v0[5];
      v9 = v0[6];
      v22 = v0[3];
      v10 = v0[4];
      _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
      v13 = *(v3 + v5);
      *(swift_task_alloc() + 16) = v22;
      v23 = sub_1C4406CC8();
      sub_1C46CE408(v23, v24, v25, v26, v27, v28);
LABEL_5:
      (*(v11 + 8))(v9, v10);

      if (!v13)
      {
        v30 = v0[8];
        v31 = v0[4];
        LOBYTE(v35[0]) = *(v3 + v5);
        _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
        sub_1C43FBD94();
        sub_1C440BAA8(v32, v33, v34, v31);
        sub_1C44A8814(v35, v30);
        sub_1C4420C3C(v30, &qword_1EC0B8568, &unk_1C4F319B0);
        sub_1C4EF9AE8();
        sub_1C43FBD94();
        sub_1C46418CC();
      }

      v29 = v0[1];

      result = v29();
      break;
    default:
      v35[0] = 0;
      v35[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v4;
      sub_1C456902C(&qword_1EC0BA548, &qword_1C4F29E20);
      v20 = sub_1C4F01198();
      MEMORY[0x1C6940010](v20);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v3 + v5));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

uint64_t sub_1C479A0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(a1, a2, a3);
  if (!v5)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1C479A170()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return EventMatcher.execute()();
}

uint64_t sub_1C479A260(uint64_t a1)
{
  result = sub_1C479A2E8(&qword_1EDDF8CB0, &protocol conformance descriptor for EventMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C479A2A4(uint64_t a1)
{
  result = sub_1C479A2E8(qword_1EDDF8CC0, &protocol conformance descriptor for EventMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C479A2E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EventMatcher(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C479A354(uint64_t a1)
{
  result = type metadata accessor for Source(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PhaseStores(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t EventParticipant.mapLocation.getter()
{
  v1 = *v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C479A410()
{
  if (qword_1EC0B7118 != -1)
  {
    swift_once();
  }

  qword_1EC0BCB20 = qword_1EC0C3868;
  unk_1EC0BCB28 = *algn_1EC0C3870;
  qword_1EC0BCB38 = qword_1EC0C3880;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t static EventParticipant.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B69C8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC0BCB38;
  *a1 = qword_1EC0BCB20;
  *(a1 + 8) = unk_1EC0BCB28;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t EventParticipant.identifier.getter()
{
  v1 = *(v0 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

void EventParticipant.init(mapLocation:identifier:participantType:isCurrentUser:url:name:emailAddress:phoneNumber:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v73 = a2;
  v74 = a8;
  v72 = a1;
  v20 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v68 - v21;
  sub_1C456902C(&qword_1EC0B8708, &qword_1C4F0D960);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C4F0CE60;
  *(v23 + 32) = 0x696669746E656469;
  *(v23 + 40) = 0xEA00000000007265;
  *(v23 + 48) = a3;
  *(v23 + 56) = a4;
  *(v23 + 72) = 0;
  *(v23 + 80) = 0;
  *(v23 + 64) = 0;
  *(v23 + 88) = 1;
  v75 = a5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v24 = sub_1C4F02858();
  *(v23 + 96) = 1701869940;
  *(v23 + 104) = 0xE400000000000000;
  *(v23 + 112) = v24;
  *(v23 + 120) = v25;
  *(v23 + 136) = 0;
  *(v23 + 144) = 0;
  *(v23 + 128) = 0;
  *(v23 + 152) = 1;
  if (a6)
  {
    v27 = *(v23 + 16);
    v26 = *(v23 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_1C4406CE8(v26);
      sub_1C458A900();
      v23 = v61;
    }

    *(v23 + 16) = v27 + 1;
    v28 = v23 + (v27 << 6);
    strcpy((v28 + 32), "isCurrentUser");
    *(v28 + 46) = -4864;
    *(v28 + 48) = 1702195828;
    *(v28 + 56) = 0xE400000000000000;
    sub_1C4404B30(v28);
  }

  v70 = a11;
  v71 = a7;
  sub_1C479AF64(a7, v22);
  v29 = sub_1C4EF98F8();
  if (sub_1C44157D4(v22, 1, v29) == 1)
  {
    sub_1C46CF3CC(v22);
  }

  else
  {
    v30 = sub_1C4EF9818();
    v32 = v31;
    (*(*(v29 - 8) + 8))(v22, v29);
    v33 = *(v23 + 16);
    if (v33 >= *(v23 + 24) >> 1)
    {
      sub_1C458A900();
      v23 = v62;
    }

    *(v23 + 16) = v33 + 1;
    v34 = (v23 + (v33 << 6));
    v34[4] = 7107189;
    v34[5] = 0xE300000000000000;
    v34[6] = v30;
    v34[7] = v32;
    sub_1C4404B30(v34);
  }

  sub_1C442C9BC();
  if (!a10)
  {
    if (!a12)
    {
      goto LABEL_29;
    }

    v49 = v70;
    goto LABEL_36;
  }

  v69 = a4;
  v37 = a3;
  v38 = objc_allocWithZone(MEMORY[0x1E6996728]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v39 = [v38 init];
  v40 = sub_1C4F01108();
  v41 = [v39 typeOfHandleString_];

  v43 = *(v23 + 16);
  v42 = *(v23 + 24);
  v44 = v41 == 1;
  if (v41 == 1)
  {
    v45 = 0x6464416C69616D65;
  }

  else
  {
    v45 = 1701667182;
  }

  if (v44)
  {
    v46 = 0xEC00000073736572;
  }

  else
  {
    v46 = 0xE400000000000000;
  }

  if (v43 >= v42 >> 1)
  {
    sub_1C4406CE8(v42);
    sub_1C458A900();
    v23 = v59;
  }

  *(v23 + 16) = v43 + 1;
  v47 = (v23 + (v43 << 6));
  v47[4] = v45;
  v47[5] = v46;
  v47[6] = v74;
  v47[7] = a10;
  sub_1C4404B30(v47);
  if (!a12)
  {
    a3 = v37;
    a4 = v69;
    goto LABEL_29;
  }

  v49 = v70;
  v50 = v70 == v48 && a12 == a10;
  a3 = v37;
  if (v50)
  {

    a4 = v69;
    if (a14)
    {
      goto LABEL_30;
    }

LABEL_39:
    sub_1C46CF3CC(v71);
    goto LABEL_40;
  }

  v51 = sub_1C4F02938();

  a4 = v69;
  if ((v51 & 1) == 0)
  {
    sub_1C442C9BC();
LABEL_36:
    v56 = *(v23 + 16);
    v55 = *(v23 + 24);
    if (v56 >= v55 >> 1)
    {
      sub_1C4406CE8(v55);
      v64 = v63;
      v66 = v65;
      sub_1C458A900();
      v36 = v66;
      v35 = v64;
      v23 = v67;
    }

    *(v23 + 16) = v56 + 1;
    v57 = (v23 + (v56 << 6));
    v57[4] = v35;
    v57[5] = v36;
    v57[6] = v49;
    v57[7] = a12;
    sub_1C4404B30(v57);
    if (a14)
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }

LABEL_29:

  if (!a14)
  {
    goto LABEL_39;
  }

LABEL_30:
  v53 = *(v23 + 16);
  v52 = *(v23 + 24);
  if (v53 >= v52 >> 1)
  {
    sub_1C4406CE8(v52);
    sub_1C458A900();
    v23 = v60;
  }

  sub_1C46CF3CC(v71);
  *(v23 + 16) = v53 + 1;
  v54 = (v23 + (v53 << 6));
  v54[4] = 0x6D754E656E6F6870;
  v54[5] = 0xEB00000000726562;
  v54[6] = a13;
  v54[7] = a14;
  sub_1C4404B30(v54);
LABEL_40:
  v58 = v73;
  *a9 = v72;
  a9[1] = v58;
  a9[2] = v23;
  a9[3] = a3;
  a9[4] = a4;
}