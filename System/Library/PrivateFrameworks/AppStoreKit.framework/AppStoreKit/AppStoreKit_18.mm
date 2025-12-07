double sub_1E14CDDA4(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [objc_allocWithZone(MEMORY[0x1E698CC50]) initWithRequest:a1 presentingViewController:Strong];
    v9 = [v8 present];
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = a2;
    v10[4] = ObjectType;
    v20 = sub_1E14D3AD0;
    v21 = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1619988;
    v19 = &block_descriptor_51;
    v11 = _Block_copy(aBlock);
    v12 = v8;
    v13 = a2;

    [v9 addFinishBlock_];
    _Block_release(v11);
  }

  else
  {
    if (qword_1EE1D5D88 != -1)
    {
      swift_once();
    }

    v15 = sub_1E1AF591C();
    __swift_project_value_buffer(v15, qword_1EE1D5D90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v19 = sub_1E13006E4(0, &qword_1ECEB4A70, 0x1E698C8C0);
    aBlock[0] = a1;
    v16 = a1;
    sub_1E1AF385C();
    sub_1E1308058(aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    v17 = a2[OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_placement];
    v19 = &type metadata for UnifiedMessagingPlacement;
    LOBYTE(aBlock[0]) = v17;
    sub_1E1AF385C();
    sub_1E1308058(aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();
  }

  return result;
}

void sub_1E14CE144(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1E1AF591C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  if (a1)
  {
    if (qword_1EE1D5D88 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v8, qword_1EE1D5D90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v25 = sub_1E13006E4(0, &unk_1ECEB4B80, 0x1E698CC50);
    v24[0] = a3;
    v14 = a3;
    sub_1E1AF385C();
    sub_1E1308058(v24, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    v15 = *(a4 + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_placement);
    v25 = &type metadata for UnifiedMessagingPlacement;
    LOBYTE(v24[0]) = v15;
    sub_1E1AF385C();
    sub_1E1308058(v24, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
  }

  else
  {
    if (qword_1EE1D5D88 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v8, qword_1EE1D5D90);
    (*(v9 + 16))(v11, v16, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    v17 = *(sub_1E1AF38EC() - 8);
    v23[1] = (*(v17 + 80) + 32) & ~*(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v25 = sub_1E13006E4(0, &unk_1ECEB4B80, 0x1E698CC50);
    v24[0] = a3;
    v18 = a3;
    sub_1E1AF385C();
    sub_1E1308058(v24, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    v19 = *(a4 + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_placement);
    v25 = &type metadata for UnifiedMessagingPlacement;
    LOBYTE(v24[0]) = v19;
    sub_1E1AF385C();
    sub_1E1308058(v24, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    if (a2)
    {
      swift_getErrorValue();
      v20 = sub_1E1AF75AC();
      v22 = MEMORY[0x1E69E6158];
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v24[2] = 0;
    }

    v24[0] = v20;
    v24[1] = v21;
    v25 = v22;
    sub_1E1AF385C();
    sub_1E1308058(v24, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    (*(v9 + 8))(v11, v8);
  }
}

void FloatingUnifiedMessageCoordinator.engagement(_:didUpdate:placement:serviceType:)(char *a1, void *a2, uint64_t a3, void *a4, char *a5, unint64_t a6)
{
  v85._object = a4;
  countAndFlagsBits_low = a6;
  v82 = a5;
  v85._countAndFlagsBits = a3;
  v8 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v79 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1E1AF591C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1D5D88 != -1)
  {
    goto LABEL_119;
  }

  while (1)
  {
    v15 = __swift_project_value_buffer(v11, qword_1EE1D5D90);
    v81 = v12;
    v16 = *(v12 + 16);
    v78 = v15;
    v16(v14);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    v18 = *(sub_1E1AF38EC() - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v75 = *(v18 + 80);
    v76 = v17;
    *(swift_allocObject() + 16) = xmmword_1E1B07790;
    v77 = v20;
    sub_1E1AF382C();
    *(&v88 + 1) = sub_1E13006E4(0, &qword_1EE1E3490, 0x1E698C8D8);
    v87._countAndFlagsBits = a1;
    v21 = a1;
    sub_1E1AF38BC();
    sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF382C();
    v83 = v11;
    if (a2)
    {
      v22 = sub_1E13006E4(0, &qword_1ECEB4A70, 0x1E698C8C0);
      v23 = a2;
    }

    else
    {
      v23 = 0;
      v22 = 0;
      v87._object = 0;
      *&v88 = 0;
    }

    v87._countAndFlagsBits = v23;
    *(&v88 + 1) = v22;
    v84 = v19;
    v24 = a2;
    sub_1E1AF38BC();
    sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF388C();
    sub_1E1AF387C();
    v25 = MEMORY[0x1E69E6158];
    v74 = v24;
    v80 = a2;
    if (a2 && (v26 = [v24 identifier]) != 0)
    {
      v27 = v26;
      v28 = sub_1E1AF5DFC();
      v30 = v29;

      *(&v88 + 1) = v25;
      v87._countAndFlagsBits = v28;
      v87._object = v30;
    }

    else
    {
      v87 = 0;
      v88 = 0u;
    }

    sub_1E1AF385C();
    sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    *(&v88 + 1) = v25;
    a2 = v25;
    v31 = v85;
    v87 = v85;

    sub_1E1AF38BC();
    sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF382C();
    *(&v88 + 1) = v25;
    v87._countAndFlagsBits = v82;
    v87._object = countAndFlagsBits_low;

    sub_1E1AF38BC();
    sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v32 = v83;
    sub_1E1AF548C();

    (*(v81 + 8))(v14, v32);
    if (!v80)
    {
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      *(&v88 + 1) = v25;
      v87 = v31;

      sub_1E1AF385C();
      sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      sub_1E1AF548C();
      goto LABEL_124;
    }

    v33 = v74;

    UnifiedMessagingPlacement.init(rawValue:)(v31);
    countAndFlagsBits_low = LOBYTE(v87._countAndFlagsBits);
    if (LOBYTE(v87._countAndFlagsBits) == 30)
    {
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      *(&v88 + 1) = v25;
      v87 = v31;

      goto LABEL_123;
    }

    a1 = OBJC_IVAR____TtC11AppStoreKit33FloatingUnifiedMessageCoordinator_registeredPlacements;
    v34 = v73;
    swift_beginAccess();
    v11 = *&a1[v34];
    v87._countAndFlagsBits = MEMORY[0x1E69E7CC0];
    v14 = v11 >> 62 ? sub_1E1AF71CC() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v14)
    {
      break;
    }

    v64 = v33;
    v35 = 0;
    v12 = 0xEE00746565685368;
    v81 = 0x80000001E1B55BA0;
    v82 = 0x80000001E1B55BC0;
    v80 = 0x80000001E1B55B80;
    v74 = 0x80000001E1B55B60;
    v72 = 0x80000001E1B55B40;
    v71 = 0x80000001E1B55B20;
    v70 = 0x80000001E1B55B00;
    v69 = 0x80000001E1B55AE0;
    v68 = 0x80000001E1B55AC0;
    v67 = 0x80000001E1B55A80;
    v66 = 0x80000001E1B55A60;
    v65 = 0x80000001E1B55980;
    v36 = 0x636E75614C707061;
    v85._countAndFlagsBits = v11 & 0xFFFFFFFFFFFFFF8;
    v85._object = (v11 & 0xC000000000000001);
    while (1)
    {
      if (v85._object)
      {
        v37 = MEMORY[0x1E68FFD80](v35, v11);
      }

      else
      {
        if (v35 >= *(v85._countAndFlagsBits + 16))
        {
          goto LABEL_118;
        }

        v37 = *(v11 + 8 * v35 + 32);
      }

      a2 = v37;
      v38 = (v35 + 1);
      if (__OFADD__(v35, 1))
      {
        break;
      }

      v39 = v12;
      v40 = v36;
      switch(*(a2 + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_placement))
      {
        case 1:
          break;
        case 2:
          v40 = 0x6C6576654C707061;
          v42 = 1701144659;
          goto LABEL_38;
        case 3:
          v40 = 0x6C6576654C707061;
          v42 = 1935765332;
          goto LABEL_38;
        case 4:
          v40 = 0x6C6576654C707061;
          v42 = 1919249473;
LABEL_38:
          v39 = (v42 | 0xED00007400000000);
          break;
        case 5:
          v46 = 0x507961646F74;
          goto LABEL_53;
        case 6:
          v43 = 0x507961646F74;
          goto LABEL_47;
        case 7:
          v44 = 0x507961646F74;
          goto LABEL_51;
        case 8:
          v46 = 0x5073656D6167;
LABEL_53:
          v40 = v46 & 0xFFFFFFFFFFFFLL | 0x6761000000000000;
          v39 = 0xEF72656461654865;
          break;
        case 9:
          v43 = 0x5073656D6167;
LABEL_47:
          v40 = v43 & 0xFFFFFFFFFFFFLL | 0x6761000000000000;
          v39 = 0xEC00000064694D65;
          break;
        case 0xA:
          v44 = 0x5073656D6167;
LABEL_51:
          v40 = v44 & 0xFFFFFFFFFFFFLL | 0x6761000000000000;
          v39 = 0xEF7265746F6F4665;
          break;
        case 0xB:
          v40 = 0x6567615073707061;
          v41 = 1684104520;
          goto LABEL_45;
        case 0xC:
          v40 = 0x6567615073707061;
          v39 = 0xEB0000000064694DLL;
          break;
        case 0xD:
          v40 = 0x6567615073707061;
          v41 = 1953460038;
LABEL_45:
          v39 = (v41 | 0xEE00726500000000);
          break;
        case 0xE:
          v40 = 0xD000000000000010;
          v39 = v66;
          break;
        case 0xF:
          v40 = 0x6150656461637261;
          v39 = 0xED000064694D6567;
          break;
        case 0x10:
          v40 = 0xD000000000000010;
          v39 = v67;
          break;
        case 0x11:
          v45 = 0x547961646F74;
          goto LABEL_49;
        case 0x12:
          v45 = 0x5473656D6167;
LABEL_49:
          v40 = v45 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
          v39 = 0xEF6D657449726142;
          break;
        case 0x13:
          v40 = 0x4262615473707061;
          v39 = 0xEE006D6574497261;
          break;
        case 0x14:
          v40 = 0xD000000000000010;
          v39 = v68;
          break;
        case 0x15:
          v40 = 0xD000000000000010;
          v39 = v69;
          break;
        case 0x16:
          v40 = 0xD000000000000012;
          v39 = v70;
          break;
        case 0x17:
          v40 = 0xD000000000000012;
          v39 = v71;
          break;
        case 0x18:
          v40 = 0xD000000000000011;
          v39 = v72;
          break;
        case 0x19:
          v40 = 0xD000000000000013;
          v39 = v74;
          break;
        case 0x1A:
          v40 = 0xD000000000000013;
          v39 = v80;
          break;
        case 0x1B:
          v40 = 0x50746375646F7270;
          v39 = 0xEB00000000656761;
          break;
        case 0x1C:
          v40 = 0xD000000000000011;
          v39 = v81;
          break;
        case 0x1D:
          v40 = 0xD000000000000011;
          v39 = v82;
          break;
        default:
          v40 = 0xD000000000000013;
          v39 = v65;
          break;
      }

      v47 = v36;
      v48 = v36;
      a1 = v12;
      switch(countAndFlagsBits_low)
      {
        case 1uLL:
          break;
        case 2uLL:
          v48 = 0x6C6576654C707061;
          v50 = 1701144659;
          goto LABEL_74;
        case 3uLL:
          v48 = 0x6C6576654C707061;
          v50 = 1935765332;
          goto LABEL_74;
        case 4uLL:
          v48 = 0x6C6576654C707061;
          v50 = 1919249473;
LABEL_74:
          a1 = (v50 | 0xED00007400000000);
          break;
        case 5uLL:
          v54 = 0x507961646F74;
          goto LABEL_89;
        case 6uLL:
          v51 = 0x507961646F74;
          goto LABEL_83;
        case 7uLL:
          v52 = 0x507961646F74;
          goto LABEL_87;
        case 8uLL:
          v54 = 0x5073656D6167;
LABEL_89:
          v48 = v54 & 0xFFFFFFFFFFFFLL | 0x6761000000000000;
          a1 = 0xEF72656461654865;
          break;
        case 9uLL:
          v51 = 0x5073656D6167;
LABEL_83:
          v48 = v51 & 0xFFFFFFFFFFFFLL | 0x6761000000000000;
          a1 = 0xEC00000064694D65;
          break;
        case 0xAuLL:
          v52 = 0x5073656D6167;
LABEL_87:
          v48 = v52 & 0xFFFFFFFFFFFFLL | 0x6761000000000000;
          a1 = 0xEF7265746F6F4665;
          break;
        case 0xBuLL:
          v48 = 0x6567615073707061;
          v49 = 1684104520;
          goto LABEL_81;
        case 0xCuLL:
          v48 = 0x6567615073707061;
          a1 = 0xEB0000000064694DLL;
          break;
        case 0xDuLL:
          v48 = 0x6567615073707061;
          v49 = 1953460038;
LABEL_81:
          a1 = (v49 | 0xEE00726500000000);
          break;
        case 0xEuLL:
          v48 = 0xD000000000000010;
          a1 = v66;
          break;
        case 0xFuLL:
          v48 = 0x6150656461637261;
          a1 = 0xED000064694D6567;
          break;
        case 0x10uLL:
          v48 = 0xD000000000000010;
          a1 = v67;
          break;
        case 0x11uLL:
          v53 = 0x547961646F74;
          goto LABEL_85;
        case 0x12uLL:
          v53 = 0x5473656D6167;
LABEL_85:
          v48 = v53 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
          a1 = 0xEF6D657449726142;
          break;
        case 0x13uLL:
          v48 = 0x4262615473707061;
          a1 = 0xEE006D6574497261;
          break;
        case 0x14uLL:
          v48 = 0xD000000000000010;
          a1 = v68;
          break;
        case 0x15uLL:
          v48 = 0xD000000000000010;
          a1 = v69;
          break;
        case 0x16uLL:
          v48 = 0xD000000000000012;
          a1 = v70;
          break;
        case 0x17uLL:
          v48 = 0xD000000000000012;
          a1 = v71;
          break;
        case 0x18uLL:
          v48 = 0xD000000000000011;
          a1 = v72;
          break;
        case 0x19uLL:
          v48 = 0xD000000000000013;
          a1 = v74;
          break;
        case 0x1AuLL:
          v48 = 0xD000000000000013;
          a1 = v80;
          break;
        case 0x1BuLL:
          v48 = 0x50746375646F7270;
          a1 = 0xEB00000000656761;
          break;
        case 0x1CuLL:
          v48 = 0xD000000000000011;
          a1 = v81;
          break;
        case 0x1DuLL:
          v48 = 0xD000000000000011;
          a1 = v82;
          break;
        default:
          v48 = 0xD000000000000013;
          a1 = v65;
          break;
      }

      v55 = v12;
      if (v40 == v48 && v39 == a1)
      {
      }

      else
      {
        v56 = sub_1E1AF74AC();

        if ((v56 & 1) == 0)
        {

          goto LABEL_19;
        }
      }

      sub_1E1AF70BC();
      a1 = *(v87._countAndFlagsBits + 16);
      sub_1E1AF70FC();
      sub_1E1AF710C();
      sub_1E1AF70CC();
LABEL_19:
      v12 = v55;
      ++v35;
      v36 = v47;
      if (v38 == v14)
      {
        countAndFlagsBits = v87._countAndFlagsBits;
        v33 = v64;
        goto LABEL_103;
      }
    }

    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    swift_once();
  }

  countAndFlagsBits = MEMORY[0x1E69E7CC0];
LABEL_103:

  if ((countAndFlagsBits & 0x8000000000000000) == 0 && (countAndFlagsBits & 0x4000000000000000) == 0)
  {
    if (*(countAndFlagsBits + 16))
    {
      goto LABEL_106;
    }

LABEL_122:

    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(&v88 + 1) = &type metadata for UnifiedMessagingPlacement;
    LOBYTE(v87._countAndFlagsBits) = countAndFlagsBits_low;
LABEL_123:
    sub_1E1AF385C();
    sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

LABEL_124:

    return;
  }

  if (!sub_1E1AF71CC())
  {
    goto LABEL_122;
  }

LABEL_106:
  if ((countAndFlagsBits & 0xC000000000000001) != 0)
  {
    v58 = MEMORY[0x1E68FFD80](0, countAndFlagsBits);
LABEL_109:
    v59 = v58;

    v60 = [v33 style];
    if (v60 == 1)
    {
      sub_1E14CDDA4(v33, v59);
    }

    else if (v60 == 4)
    {
      sub_1E14CC0A0(v33, v59);
    }

    else if (v60 == 5)
    {
      sub_1E14CD160(v33, v59);
    }

    else
    {
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      v61 = [v33 style];
      type metadata accessor for AMSDialogRequestStyle(0);
      *(&v88 + 1) = v62;
      v87._countAndFlagsBits = v61;
      sub_1E1AF385C();
      sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF387C();
      *(&v88 + 1) = &type metadata for UnifiedMessagingPlacement;
      LOBYTE(v87._countAndFlagsBits) = countAndFlagsBits_low;
      sub_1E1AF385C();
      sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      sub_1E1AF548C();
    }
  }

  else
  {
    if (*(countAndFlagsBits + 16))
    {
      v58 = *(countAndFlagsBits + 32);
      goto LABEL_109;
    }

    __break(1u);
  }
}

void FloatingUnifiedMessageCoordinator.messageViewController(_:didSelectActionWith:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v65 = type metadata accessor for ActionIntent(0);
  MEMORY[0x1EEE9AC00](v65);
  v72 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1E1AEFCCC();
  v75 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v63 - v7;
  v66 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v63 - v10;
  v11 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  if (qword_1EE1D5D88 != -1)
  {
    swift_once();
  }

  v12 = sub_1E1AF591C();
  v81 = __swift_project_value_buffer(v12, qword_1EE1D5D90);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  v14 = *(sub_1E1AF38EC() - 8);
  v15 = *(v14 + 80);
  v78 = *(v14 + 72);
  v80 = v13;
  v16 = swift_allocObject();
  v79 = xmmword_1E1B02CC0;
  *(v16 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v17 = [a2 originalRequest];
  v83 = sub_1E13006E4(0, &qword_1ECEB4A70, 0x1E698C8C0);
  v82[0] = v17;
  sub_1E1AF385C();
  sub_1E1308058(v82, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  v76 = sub_1E13006E4(0, &qword_1ECEB4A78, 0x1E698C8C8);
  v83 = v76;
  v82[0] = a2;
  v18 = a2;
  sub_1E1AF385C();
  sub_1E1308058(v82, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  v83 = swift_getObjectType();
  v82[0] = a1;
  v19 = a1;
  sub_1E1AF385C();
  sub_1E1308058(v82, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  v77 = v12;
  sub_1E1AF548C();

  [v19 dismissViewControllerAnimated:1 completion:0];
  v20 = [v18 originalRequest];
  v21 = [v18 selectedActionIdentifier];
  if (!v21)
  {
    sub_1E1AF5DFC();
    v21 = sub_1E1AF5DBC();
  }

  v22 = [v20 locateActionWithIdentifier_];

  *(swift_allocObject() + 16) = v79;
  if (!v22)
  {
    sub_1E1AF388C();
    sub_1E1AF387C();
    v83 = v76;
    v82[0] = v18;
    v60 = v18;
    sub_1E1AF385C();
    sub_1E1308058(v82, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
LABEL_11:

    return;
  }

  v69 = v15;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v23 = sub_1E13006E4(0, &qword_1ECEB4A80, 0x1E698C8B8);
  v83 = v23;
  v82[0] = v22;
  v24 = v22;
  sub_1E1AF385C();
  sub_1E1308058(v82, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  v83 = v76;
  v82[0] = v18;
  v25 = v18;
  sub_1E1AF385C();
  sub_1E1308058(v82, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  v26 = [v24 deepLink];
  if (!v26)
  {
    *(swift_allocObject() + 16) = v79;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v83 = v23;
    v82[0] = v24;
    v61 = v24;
    sub_1E1AF385C();
    sub_1E1308058(v82, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    goto LABEL_11;
  }

  v76 = v24;
  v27 = v70;
  v28 = v26;
  sub_1E1AEFC5C();

  v30 = v74;
  v29 = v75;
  v31 = (v75 + 32);
  v32 = *(v75 + 32);
  v33 = v71;
  v32(v74, v27, v71);
  v34 = (v73 + OBJC_IVAR____TtC11AppStoreKit33FloatingUnifiedMessageCoordinator_actionHandler);
  swift_beginAccess();
  v35 = *v34;
  if (*v34)
  {
    v70 = v31;
    v64 = v34[1];
    v78 = v35;
    *(swift_allocObject() + 16) = v79;

    sub_1E1AF388C();
    sub_1E1AF387C();
    v83 = v33;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v82);
    v80 = v32;
    v37 = *(v29 + 16);
    v37(boxed_opaque_existential_0, v30, v33);
    v38 = v29 + 16;
    sub_1E1AF385C();
    sub_1E1308058(v82, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    type metadata accessor for JSIntentDispatcher();
    v39 = *(v73 + OBJC_IVAR____TtC11AppStoreKit33FloatingUnifiedMessageCoordinator_objectGraph);
    sub_1E1AF421C();
    sub_1E1AF55EC();
    v81 = v82[0];
    v40 = v65;
    v41 = v72;
    v42 = (v72 + *(v65 + 20));
    v63 = v37;
    v69 = v38;
    v37(v42, v30, v33);
    strcpy(v41, "ActionIntent");
    *(v41 + 13) = 0;
    *(v41 + 14) = -5120;
    *(v41 + *(v40 + 24)) = 0;
    v43 = v41 + *(v40 + 28);
    *v43 = xmmword_1E1B04490;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0;
    *(v43 + 16) = 0;
    *(v43 + 40) = 0;
    *&v79 = sub_1E1368108(v41, v39, "AppStoreKit/FloatingUnifiedMessageCoordinator.swift", 51, 2);
    v44 = v67;
    v37(v67, v30, v33);
    v45 = v30;
    v46 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v47 = (v66 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = v47;
    v48 = v33;
    v49 = (v47 + 23) & 0xFFFFFFFFFFFFFFF8;
    v50 = swift_allocObject();
    v80(v50 + v46, v44, v48);
    v51 = v50;
    v77 = v50;
    v52 = (v50 + v47);
    v53 = v78;
    v54 = v64;
    *v52 = v78;
    v52[1] = v54;
    v55 = ObjectType;
    *(v51 + v49) = ObjectType;
    v63(v44, v45, v48);
    v56 = swift_allocObject();
    v80(v56 + v46, v44, v48);
    v57 = (v56 + v73);
    *v57 = v53;
    v57[1] = v54;
    *(v56 + v49) = v55;
    v58 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
    sub_1E1300E34(v53, v54);

    v59 = sub_1E1AF68EC();
    v83 = v58;
    v84 = MEMORY[0x1E69AB720];
    v82[0] = v59;
    sub_1E1AF57FC();

    sub_1E1300EA8(v53, v54);

    sub_1E14D28AC(v72);
    (*(v75 + 8))(v74, v48);
    __swift_destroy_boxed_opaque_existential_1(v82);
  }

  else
  {
    *(swift_allocObject() + 16) = v79;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v83 = v33;
    v62 = __swift_allocate_boxed_opaque_existential_0(v82);
    (*(v29 + 16))(v62, v30, v33);
    sub_1E1AF385C();
    sub_1E1308058(v82, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    (*(v29 + 8))(v30, v33);
  }
}

uint64_t sub_1E14D0694(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *a1;
  if (qword_1EE1D5D88 != -1)
  {
    swift_once();
  }

  v8 = sub_1E1AF591C();
  __swift_project_value_buffer(v8, qword_1EE1D5D90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v9 = sub_1E1AEFCCC();
  v13 = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a2, v9);
  sub_1E1AF385C();
  sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  v13 = type metadata accessor for Action(0);
  v12[0] = v7;

  sub_1E1AF385C();
  sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  return a3(v7);
}

void sub_1E14D093C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v60 = a4;
  v61 = a3;
  v73 = a2;
  v70 = a1;
  v58 = sub_1E1AEFEAC();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v55 - v8;
  v9 = sub_1E1AEFCCC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1E1AF3E1C();
  v68 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v63 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v55 - v14;
  v15 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  if (qword_1EE1D5D88 != -1)
  {
    swift_once();
  }

  v78 = sub_1E1AF591C();
  v72 = __swift_project_value_buffer(v78, qword_1EE1D5D90);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  v16 = *(sub_1E1AF38EC() - 8);
  v76 = *(v16 + 72);
  v17 = *(v16 + 80);
  v18 = swift_allocObject();
  v75 = xmmword_1E1B02CC0;
  *(v18 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  *(&v88 + 1) = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v87);
  v74 = *(v10 + 16);
  v20 = v73;
  v74(boxed_opaque_existential_0, v73, v9);
  sub_1E1AF385C();
  v71 = v10;
  sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  swift_getErrorValue();
  v21 = sub_1E1AF75AC();
  *(&v88 + 1) = MEMORY[0x1E69E6158];
  *&v87 = v21;
  *(&v87 + 1) = v22;
  sub_1E1AF385C();
  sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  v66 = v17;
  *(swift_allocObject() + 16) = v75;
  sub_1E1AF388C();
  sub_1E1AF387C();
  *(&v88 + 1) = v9;
  v23 = __swift_allocate_boxed_opaque_existential_0(&v87);
  v70 = v10 + 16;
  v74(v23, v20, v9);
  sub_1E1AF385C();
  sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  v65 = (v17 + 32) & ~v17;
  sub_1E1AF38AC();
  sub_1E1AF548C();

  sub_1E1AEFBDC();
  v24 = v69;
  sub_1E1AF3DFC();
  type metadata accessor for ExternalUrlAction(0);
  v25 = swift_allocObject();
  v26 = v64;
  v27 = v71;
  sub_1E1AEFCAC();

  v28 = v26;
  if ((*(v27 + 48))(v26, 1, v9) == 1)
  {
    (*(v68 + 8))(v24, v67);
    sub_1E1308058(v26, &unk_1ECEB4B60, &unk_1E1B02620);
    swift_deallocPartialClassInstance();
    *(swift_allocObject() + 16) = v75;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(&v88 + 1) = v9;
    v29 = __swift_allocate_boxed_opaque_existential_0(&v87);
    v74(v29, v73, v9);
    sub_1E1AF385C();
    sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
  }

  else
  {
    v30 = *(v27 + 32);
    v31 = v24;
    v32 = v62;
    v30(v62, v28, v9);
    v33 = v9;
    v34 = v9;
    v35 = v74;
    v74((v25 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_url), v32, v34);
    *(v25 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_isSensitive) = 1;
    *(v25 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_allowFromLockscreen) = 0;
    v36 = v25 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_timeoutSeconds;
    *v36 = 0;
    *(v36 + 8) = 1;
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
    v37 = v68;
    v38 = v63;
    v39 = v67;
    (*(v68 + 16))(v63, v31, v67);
    v40 = sub_1E1AF46DC();
    v41 = v59;
    (*(*(v40 - 8) + 56))(v59, 1, 1, v40);
    v42 = (v25 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
    *v42 = 0u;
    v42[1] = 0u;
    sub_1E138853C(&v87, &v81);
    if (*(&v82 + 1))
    {
      v84 = v81;
      v85 = v82;
      v86 = v83;
    }

    else
    {
      v43 = v35;
      v44 = v56;
      sub_1E1AEFE9C();
      v45 = sub_1E1AEFE7C();
      v47 = v46;
      v48 = v44;
      v35 = v43;
      v32 = v62;
      (*(v57 + 8))(v48, v58);
      v79 = v45;
      v37 = v68;
      v80 = v47;
      v38 = v63;
      sub_1E1AF6F6C();
      sub_1E1308058(&v81, &unk_1ECEB5670, qword_1E1B03EC0);
    }

    sub_1E1308058(&v87, &unk_1ECEB5670, qword_1E1B03EC0);
    (*(v71 + 8))(v32, v33);
    (*(v37 + 8))(v69, v39);
    v49 = v25 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
    v50 = v85;
    *v49 = v84;
    *(v49 + 16) = v50;
    *(v49 + 32) = v86;
    sub_1E134B7C8(v41, v25 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0u;
    (*(v37 + 32))(v25 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v38, v39);
    *(swift_allocObject() + 16) = v75;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(&v88 + 1) = v33;
    v51 = __swift_allocate_boxed_opaque_existential_0(&v87);
    v35(v51, v73, v33);
    sub_1E1AF385C();
    sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    v52 = swift_allocObject();
    v53 = v61;
    v54 = v60;
    *(v52 + 16) = v61;
    *(v52 + 24) = v54;
    *(&v88 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4B70, &unk_1E1B105D8);
    *&v87 = sub_1E14D3B10;
    *(&v87 + 1) = v52;

    sub_1E1AF385C();
    sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    v53(v25);
  }
}

void sub_1E14D1854(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, a4);
  _Block_release(v10);
}

id FloatingUnifiedMessageCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FloatingUnifiedMessageCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E14D1B60(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
    v7 = a2 + 32;
    do
    {
      ++v7;
      UnifiedMessagingPlacement.rawValue.getter();
      v8 = sub_1E1AF5DBC();

      v9 = sub_1E1AF5DBC();
      v10 = sub_1E1AF68EC();
      [a3 addObserver:a1 placement:v8 serviceType:v9 queue:v10];

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1E14D1C5C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = objc_allocWithZone(type metadata accessor for UnifiedMessagingRegisteredPlacement());
  sub_1E14D1D48(v5, a1, a2, v8);
  v9 = OBJC_IVAR____TtC11AppStoreKit33FloatingUnifiedMessageCoordinator_registeredPlacements;
  v10 = swift_beginAccess();
  MEMORY[0x1E68FEF20](v10);
  if (*((*(a4 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E1AF625C();
  }

  sub_1E1AF62AC();
  return swift_endAccess();
}

id sub_1E14D1D48(char a1, void *a2, unint64_t a3, _BYTE *a4)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_bubbleTipViewControllerToPresent] = 0;
  a4[OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_placement] = a1;
  *&a4[OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_sourceItem] = a2;
  swift_unknownObjectWeakAssign();
  v31.receiver = a4;
  v31.super_class = ObjectType;
  swift_unknownObjectRetain();
  v9 = objc_msgSendSuper2(&v31, sel_init);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    sub_1E15E310C();
    v12 = swift_allocObject();
    v28 = v9;
    swift_unknownObjectWeakInit();
    v13 = type metadata accessor for MoveToWindowDetectorView();
    v14 = objc_allocWithZone(v13);
    v15 = &v14[OBJC_IVAR____TtC11AppStoreKitP33_F6993733CA0E703A1AB6B9A01C27479424MoveToWindowDetectorView_onMovedToWindow];
    *v15 = sub_1E14D3B2C;
    v15[1] = v12;
    v30.receiver = v14;
    v30.super_class = v13;
    swift_retain_n();
    v16 = objc_msgSendSuper2(&v30, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    [v16 setHidden_];
    [v16 setUserInteractionEnabled_];

    [v11 addSubview_];
    v17 = [v11 subviews];
    sub_1E13006E4(0, &qword_1EE1D23E8, 0x1E69DD250);
    v18 = sub_1E1AF621C();

    v29 = MEMORY[0x1E69E7CC0];
    if (v18 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
    {
      v25 = v16;
      v26 = a3;
      v27 = a2;
      a3 = 0;
      a2 = (v18 & 0xC000000000000001);
      while (1)
      {
        if (a2)
        {
          v20 = MEMORY[0x1E68FFD80](a3, v18);
        }

        else
        {
          if (a3 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v20 = *(v18 + 8 * a3 + 32);
        }

        v21 = v20;
        v22 = (a3 + 1);
        if (__OFADD__(a3, 1))
        {
          break;
        }

        if (swift_dynamicCastClass())
        {
          sub_1E1AF70BC();
          v16 = *(v29 + 16);
          sub_1E1AF70FC();
          sub_1E1AF710C();
          sub_1E1AF70CC();
        }

        else
        {
        }

        ++a3;
        if (v22 == i)
        {
          v23 = v29;
          a3 = v26;
          a2 = v27;
          v16 = v25;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v23 = MEMORY[0x1E69E7CC0];
LABEL_19:

    v9 = v28;
    if (v23 < 0 || (v23 & 0x4000000000000000) != 0)
    {
      sub_1E1AF71CC();
    }

    a3 = a2;
    a2 = v16;
  }

  return v9;
}

unint64_t sub_1E14D20A0(char a1, void *a2, unint64_t a3, _BYTE *a4)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_bubbleTipViewControllerToPresent] = 0;
  a4[OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_placement] = a1;
  *&a4[OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_sourceItem] = a2;
  swift_unknownObjectWeakAssign();
  v28.receiver = a4;
  v28.super_class = ObjectType;
  swift_unknownObjectRetain();
  v9 = objc_msgSendSuper2(&v28, sel_init);
  sub_1E15E310C();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = type metadata accessor for MoveToWindowDetectorView();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC11AppStoreKitP33_F6993733CA0E703A1AB6B9A01C27479424MoveToWindowDetectorView_onMovedToWindow];
  *v13 = sub_1E14D3AF0;
  v13[1] = v10;
  v27.receiver = v12;
  v27.super_class = v11;
  swift_retain_n();
  v14 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v14 setHidden_];
  [v14 setUserInteractionEnabled_];

  [a2 addSubview_];
  v15 = [a2 subviews];
  sub_1E13006E4(0, &qword_1EE1D23E8, 0x1E69DD250);
  v16 = sub_1E1AF621C();

  v26 = MEMORY[0x1E69E7CC0];
  if (v16 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
  {
    v23 = v14;
    v24 = v9;
    v25 = a3;
    a3 = 0;
    v9 = v16 & 0xC000000000000001;
    v14 = (v16 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v9)
      {
        v18 = MEMORY[0x1E68FFD80](a3, v16);
      }

      else
      {
        if (a3 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v18 = *(v16 + 8 * a3 + 32);
      }

      v19 = v18;
      v20 = (a3 + 1);
      if (__OFADD__(a3, 1))
      {
        break;
      }

      if (swift_dynamicCastClass())
      {
        sub_1E1AF70BC();
        sub_1E1AF70FC();
        sub_1E1AF710C();
        sub_1E1AF70CC();
      }

      else
      {
      }

      ++a3;
      if (v20 == i)
      {
        a3 = v25;
        v21 = v26;
        v14 = v23;
        v9 = v24;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_18:

  if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
  {
    sub_1E1AF71CC();
  }

  return v9;
}

uint64_t _s11AppStoreKit33FloatingUnifiedMessageCoordinatorC10engagement_6handle10completionySo13AMSEngagementC_So16AMSDialogRequestCSgySo0L6ResultCSg_s5Error_pSgtctF_0(void *a1, void *a2)
{
  v4 = sub_1E1AF591C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1D5D88 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EE1D5D90);
  (*(v5 + 16))(v7, v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  sub_1E1AF382C();
  v15 = sub_1E13006E4(0, &qword_1EE1E3490, 0x1E698C8D8);
  v14[0] = a1;
  v9 = a1;
  sub_1E1AF38BC();
  sub_1E1308058(v14, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  if (a2)
  {
    v10 = sub_1E13006E4(0, &qword_1ECEB4A70, 0x1E698C8C0);
    v11 = a2;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v11;
  v15 = v10;
  v12 = a2;
  sub_1E1AF38BC();
  sub_1E1308058(v14, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF548C();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E14D26AC(uint64_t *a1)
{
  v3 = *(sub_1E1AEFCCC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E14D0694(a1, v1 + v4, v5);
}

uint64_t objectdestroy_4Tm_1()
{
  v1 = sub_1E1AEFCCC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_1E14D2800(uint64_t a1)
{
  v3 = *(sub_1E1AEFCCC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_1E14D093C(a1, v1 + v4, v6, v7);
}

uint64_t sub_1E14D28AC(uint64_t a1)
{
  v2 = type metadata accessor for ActionIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double _s11AppStoreKit33FloatingUnifiedMessageCoordinatorC21messageViewController_22enqueueEventWithFields7inTopicySo012AMSUIMessageiJ0_So06UIViewJ0CXc_SDys11AnyHashableVypGSSSgtF_0(void *a1, uint64_t a2)
{
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E1AF3ABC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E14AD4CC(a2);
  if (v9)
  {
    v10 = v9;
    if (*(v9 + 16))
    {
      v11 = sub_1E13018F8(0x6369706F74, 0xE500000000000000);
      if (v12)
      {
        sub_1E137A5C4(*(v10 + 56) + 32 * v11, v20);
        if (swift_dynamicCast())
        {
          v13 = HIBYTE(v19) & 0xF;
          if ((v19 & 0x2000000000000000) == 0)
          {
            v13 = v18 & 0xFFFFFFFFFFFFLL;
          }

          if (!v13)
          {
          }
        }
      }
    }

    sub_1E1AF3A7C();
    if (qword_1EE1E3990 != -1)
    {
      swift_once();
    }

    v14 = sub_1E1AF4A9C();
    __swift_project_value_buffer(v14, qword_1EE1E3998);
    sub_1E1AF434C();

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    if (qword_1EE1D5D88 != -1)
    {
      swift_once();
    }

    v16 = sub_1E1AF591C();
    __swift_project_value_buffer(v16, qword_1EE1D5D90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    ObjectType = swift_getObjectType();
    v20[0] = a1;
    v17 = a1;
    sub_1E1AF385C();
    sub_1E1308058(v20, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    ObjectType = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50, &unk_1E1B02C40);
    v20[0] = a2;

    sub_1E1AF386C();
    sub_1E1308058(v20, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();
  }

  return result;
}

uint64_t _s11AppStoreKit33FloatingUnifiedMessageCoordinatorC21messageViewController_16didFailWithErrorySo012AMSUIMessageiJ0_So06UIViewJ0CXc_s0N0_pSgtF_0(void *a1, uint64_t a2)
{
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E1AF591C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (qword_1EE1D5D88 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_1EE1D5D90);
  (*(v6 + 16))(v8, v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  ObjectType = swift_getObjectType();
  v16[0] = a1;
  v10 = a1;
  sub_1E1AF385C();
  sub_1E1308058(v16, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  if (a2)
  {
    swift_getErrorValue();
    v11 = sub_1E1AF75AC();
    v13 = MEMORY[0x1E69E6158];
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v16[2] = 0;
  }

  v16[0] = v11;
  v16[1] = v12;
  ObjectType = v13;
  sub_1E1AF385C();
  sub_1E1308058(v16, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  return (*(v6 + 8))(v8, v5);
}

void _s11AppStoreKit33FloatingUnifiedMessageCoordinatorC21messageViewController_9didUpdateySo012AMSUIMessageiJ0_So06UIViewJ0CXc_So6CGSizeVtF_0(void *a1, double a2, double a3)
{
  v6 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  if (qword_1EE1D5D88 != -1)
  {
    swift_once();
  }

  v7 = sub_1E1AF591C();
  __swift_project_value_buffer(v7, qword_1EE1D5D90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  ObjectType = swift_getObjectType();
  v10[0] = a1;
  v8 = a1;
  sub_1E1AF385C();
  sub_1E1308058(v10, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  type metadata accessor for CGSize(0);
  ObjectType = v9;
  *v10 = a2;
  *&v10[1] = a3;
  sub_1E1AF385C();
  sub_1E1308058(v10, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();
}

uint64_t _s11AppStoreKit33FloatingUnifiedMessageCoordinatorC10engagement_6handle10completionySo13AMSEngagementC_So0K7RequestCSgySo0K6ResultCSg_s5Error_pSgtctF_0(void *a1, void *a2)
{
  v4 = sub_1E1AF591C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1D5D88 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EE1D5D90);
  (*(v5 + 16))(v7, v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  sub_1E1AF382C();
  v15 = sub_1E13006E4(0, &qword_1EE1E3490, 0x1E698C8D8);
  v14[0] = a1;
  v9 = a1;
  sub_1E1AF38BC();
  sub_1E1308058(v14, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  if (a2)
  {
    v10 = sub_1E13006E4(0, &unk_1ECEB5F50, 0x1E698C908);
    v11 = a2;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v11;
  v15 = v10;
  v12 = a2;
  sub_1E1AF38BC();
  sub_1E1308058(v14, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF548C();

  return (*(v5 + 8))(v7, v4);
}

uint64_t _s11AppStoreKit33FloatingUnifiedMessageCoordinatorC10engagement_9didUpdate9placement11serviceType10completionySo13AMSEngagementC_So0O7RequestCSgS2SySo0O6ResultCSg_s5Error_pSgtctF_0(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v19 = a3;
  v20 = a4;
  v8 = sub_1E1AF591C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1D5D88 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_1EE1D5D90);
  (*(v9 + 16))(v11, v12, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B07790;
  sub_1E1AF382C();
  v26 = sub_1E13006E4(0, &qword_1EE1E3490, 0x1E698C8D8);
  v23 = a1;
  v13 = a1;
  sub_1E1AF38BC();
  sub_1E1308058(&v23, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  if (a2)
  {
    v14 = sub_1E13006E4(0, &unk_1ECEB5F50, 0x1E698C908);
    v15 = a2;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v24 = 0;
    v25 = 0;
  }

  v23 = v15;
  v26 = v14;
  v16 = a2;
  sub_1E1AF38BC();
  sub_1E1308058(&v23, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  v17 = MEMORY[0x1E69E6158];
  v26 = MEMORY[0x1E69E6158];
  v23 = v19;
  v24 = v20;

  sub_1E1AF38BC();
  sub_1E1308058(&v23, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  v26 = v17;
  v23 = v21;
  v24 = v22;

  sub_1E1AF38BC();
  sub_1E1308058(&v23, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF548C();

  return (*(v9 + 8))(v11, v8);
}

uint64_t type metadata accessor for FloatingUnifiedMessageCoordinator(uint64_t a1)
{
  result = qword_1EE1E7838;
  if (!qword_1EE1E7838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E14D3988(uint64_t a1)
{
  result = sub_1E1AF436C();
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

uint64_t PrivacyHeaderSupplementaryItem.__allocating_init(id:bodyText:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E1AEFEAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  sub_1E138853C(a1, &v16);
  if (*(&v17 + 1))
  {

    sub_1E13E2E98(a1);
    v19 = v16;
    v20 = v17;
    v21 = v18;
  }

  else
  {
    sub_1E1AEFE9C();
    v10 = sub_1E1AEFE7C();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    v15[1] = v10;
    v15[2] = v12;
    sub_1E1AF6F6C();

    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v16);
  }

  v13 = v20;
  *(v9 + 24) = v19;
  *(v9 + 40) = v13;
  *(v9 + 56) = v21;
  *(v9 + 16) = a2;
  return v9;
}

uint64_t PrivacyHeaderSupplementaryItem.init(id:bodyText:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1E1AEFEAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v17);
  if (*(&v18 + 1))
  {

    sub_1E13E2E98(a1);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v11 = sub_1E1AEFE7C();
    v13 = v12;
    (*(v8 + 8))(v10, v7);
    v16[1] = v11;
    v16[2] = v13;
    sub_1E1AF6F6C();

    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v17);
  }

  v14 = v21;
  *(v4 + 24) = v20;
  *(v4 + 40) = v14;
  *(v4 + 56) = v22;
  *(v4 + 16) = a2;
  return v4;
}

uint64_t PrivacyHeaderSupplementaryItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = sub_1E1AEFEAC();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF39DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1E1AF380C();
  v10 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  type metadata accessor for LinkableText();
  v40 = a1;
  sub_1E1AF381C();
  v16 = *(v7 + 16);
  v44 = a2;
  v16(v9, a2, v6);
  sub_1E14D43E4(&qword_1EE1F5FA0, 255, type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  sub_1E1AF464C();
  v17 = v43[0];
  if (v43[0])
  {
    v37 = v6;
    type metadata accessor for Action(0);
    v18 = v40;
    sub_1E1AF381C();
    v36 = static Action.tryToMakeInstance(byDeserializing:using:)(v15, v44);
    v19 = *(v10 + 8);
    v20 = v15;
    v21 = v38;
    v19(v20, v38);
    sub_1E1AF381C();
    v22 = sub_1E1AF37CC();
    if (v23)
    {
      v41 = v22;
      v42 = v23;
    }

    else
    {
      v27 = v33;
      sub_1E1AEFE9C();
      v28 = sub_1E1AEFE7C();
      v30 = v29;
      (*(v34 + 8))(v27, v35);
      v41 = v28;
      v42 = v30;
      v18 = v40;
    }

    sub_1E1AF6F6C();
    v19(v12, v21);
    v31 = v37;
    v24 = swift_allocObject();
    PrivacyHeaderSupplementaryItem.init(id:bodyText:action:)(v43, v17, v36);
    (*(v7 + 8))(v44, v31);
    v19(v18, v21);
  }

  else
  {
    v24 = sub_1E1AF5A7C();
    sub_1E14D43E4(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v25 = 0x7478655479646F62;
    v26 = v39;
    v25[1] = 0xE800000000000000;
    v25[2] = v26;
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x1E69AB690], v24);
    swift_willThrow();
    (*(v7 + 8))(v44, v6);
    (*(v10 + 8))(v40, v38);
  }

  return v24;
}

uint64_t PrivacyHeaderSupplementaryItem.deinit()
{

  sub_1E134B88C(v0 + 24);
  return v0;
}

uint64_t PrivacyHeaderSupplementaryItem.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1E14D43E4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E14D4450@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PrivacyHeaderSupplementaryItem.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t OrderedSet.init()@<X0>(uint64_t *a3@<X8>)
{
  *a3 = sub_1E1AF627C();
  result = sub_1E1AF5C4C();
  a3[1] = result;
  return result;
}

void OrderedSet.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF627C();
  v12 = sub_1E1AF5C4C();
  v23 = v11;
  v24 = v12;
  if (sub_1E1AF62BC())
  {
    v20 = v9;
    v21 = a4;
    v13 = 0;
    while (1)
    {
      v14 = sub_1E1AF629C();
      sub_1E1AF624C();
      if (v14)
      {
        (*(v8 + 16))(v10, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, a2);
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v18 = sub_1E1AF704C();
        if (v20 != 8)
        {
          __break(1u);
          return;
        }

        v22 = v18;
        (*(v8 + 16))(v10, &v22, a2);
        swift_unknownObjectRelease();
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_10:
          __break(1u);
LABEL_11:

          v11 = v23;
          v12 = v24;
          a4 = v21;
          goto LABEL_13;
        }
      }

      v17 = type metadata accessor for OrderedSet(0, a2, a3, v15);
      OrderedSet.append(_:)(v10, v17);
      (*(v8 + 8))(v10, a2);
      ++v13;
      if (v16 == sub_1E1AF62BC())
      {
        goto LABEL_11;
      }
    }
  }

LABEL_13:
  *a4 = v11;
  a4[1] = v12;
}

uint64_t OrderedSet.append(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1E1AF5CEC();
  v7 = v11;

  if (v7 == 1)
  {
    v8 = *(v4 + 16);
    v8(v6, a1, v3);
    v10 = sub_1E1AF62BC();
    v11 = 0;
    sub_1E1AF5CCC();
    sub_1E1AF5CFC();
    v8(v6, a1, v3);
    sub_1E1AF635C();
    sub_1E1AF62CC();
  }

  return v7;
}

uint64_t OrderedSet.isEmpty.getter(uint64_t a1)
{
  sub_1E1AF635C();
  swift_getWitnessTable();
  return sub_1E1AF66CC() & 1;
}

double OrderedSet.contents.getter()
{
  sub_1E14D57F4();

  return result;
}

void OrderedSet.removeFirst()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = sub_1E1AF6D9C();
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - v11;
  sub_1E1AF635C();
  swift_getWitnessTable();
  sub_1E1AF673C();
  v47 = v3;
  v41 = sub_1E1AF5CCC();
  sub_1E1AF5C8C();
  v42 = v2;
  v13 = *(v2 + 8);
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v35[1] = v4 + 16;
  v39 = v4;
  v40 = v13;
  v46 = (v4 + 32);
  v43 += 4;
  v44 = TupleTypeMetadata2 - 8;

  v19 = 0;
  v37 = v9;
  v38 = v6;
  v36 = v12;
  if (v17)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v23 | (v20 << 6);
      v26 = v39;
      v25 = v40;
      v27 = v38;
      v28 = v47;
      (*(v39 + 16))(v38, *(v40 + 48) + *(v39 + 72) * v24, v47);
      v29 = *(*(v25 + 56) + 8 * v24);
      v30 = *(TupleTypeMetadata2 + 48);
      v31 = *(v26 + 32);
      v6 = v27;
      v9 = v37;
      v31(v37, v6, v28);
      v32 = 0;
      *&v9[v30] = v29;
      v22 = v20;
      v12 = v36;
LABEL_13:
      v33 = *(TupleTypeMetadata2 - 8);
      (*(v33 + 56))(v9, v32, 1, TupleTypeMetadata2);
      (*v43)(v12, v9, v45);
      if ((*(v33 + 48))(v12, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v34 = *&v12[*(TupleTypeMetadata2 + 48)];
      (*v46)(v6, v12, v47);
      if (__OFSUB__(v34, 1))
      {
        goto LABEL_20;
      }

      v48 = v34 - 1;
      v49 = 0;
      sub_1E1AF5CFC();
      v19 = v22;
      if (!v17)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v18 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v18;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
        v17 = 0;
        v32 = 1;
        goto LABEL_13;
      }

      v17 = *(v14 + 8 * v20);
      ++v19;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void *OrderedSet.removeLast()()
{
  sub_1E1AF635C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E1AF674C();
  sub_1E1AF5CCC();
  return sub_1E1AF5C8C();
}

Swift::Void __swiftcall OrderedSet.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  sub_1E1AF635C();
  sub_1E1AF634C();
  sub_1E1AF5CCC();
  sub_1E1AF5CBC();
}

uint64_t == infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_1E1AF638C();

  return v4 & 1;
}

uint64_t sub_1E14D502C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = OrderedSet.endIndex.getter(a2);
  *a1 = result;
  return result;
}

uint64_t OrderedSet.endIndex.getter(uint64_t a1)
{

  v1 = sub_1E1AF62BC();

  return v1;
}

uint64_t (*sub_1E14D5098(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1E14D5168(v6, *a2, a3);
  return sub_1E14D5120;
}

void sub_1E14D5120(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_1E14D5168(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  OrderedSet.subscript.getter(a2, a3);
  return sub_1E14D5238;
}

void sub_1E14D5238(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1E14D5288(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69838](a1, WitnessTable, v3);
}

uint64_t sub_1E14D5380(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69820](a1, a2, WitnessTable, v5);
}

__n128 sub_1E14D5408@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_1E14D5418(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1E14D5474(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_1E14D5CCC(v1, a1, WitnessTable);

  return v4;
}

double OrderedSet.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  OrderedSet.init(_:)(a1, a2, a3, &v6);
  result = *&v6;
  *a4 = v6;
  return result;
}

double OrderedSet.subscript.getter(uint64_t a1, uint64_t a2)
{

  sub_1E1AF63BC();

  return result;
}

uint64_t sub_1E14D55CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69828](a1, a2, WitnessTable, v5);
}

uint64_t sub_1E14D5654(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

uint64_t OrderedSet.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1E1AF636C();
  v7 = MEMORY[0x1E69E6530];
  v8 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE68920](a1, v4, v5, v7, v6, v8);
}

uint64_t OrderedSet.hashValue.getter(uint64_t a1)
{
  v5 = *v1;
  sub_1E1AF762C();
  OrderedSet.hash(into:)(v4, a1);
  return sub_1E1AF767C();
}

uint64_t sub_1E14D5798(uint64_t a1, uint64_t a2)
{
  sub_1E1AF762C();
  OrderedSet.hash(into:)(v4, a2);
  return sub_1E1AF767C();
}

unint64_t sub_1E14D5858()
{
  result = qword_1ECEB4BD0;
  if (!qword_1ECEB4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4BD0);
  }

  return result;
}

uint64_t sub_1E14D59E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB4BC8, &qword_1E1B18400);
    sub_1E14D5858();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E14D5AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E14D5B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1E1AF5D8C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E14D5C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1E1AF5D8C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1E1AF675C();
  result = sub_1E1AF5D8C();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

id WeakNotificationObserver.__allocating_init(forName:object:scheduler:block:center:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = a3[3];
  v14 = a3[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a3, v13);
  v16 = sub_1E14D654C(a1, a2, v15, a4, a5, a6, v6, v13, v14);

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v16;
}

id WeakNotificationObserver.init(forName:object:scheduler:block:center:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v14 = a3[3];
  v15 = a3[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a3, v14);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = sub_1E14D62EC(a1, a2, v19, a4, a5, a6, v7, v14, v15);

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v21;
}

id WeakNotificationObserver.__deallocating_deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeObserver_];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for WeakNotificationObserver();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1E14D6014()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeObserver_];
  }
}

id WeakNotificationObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1E14D62EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char *a7, uint64_t a8, uint64_t a9)
{
  v36[3] = a8;
  v36[4] = a9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_0, a3, a8);
  swift_unknownObjectWeakInit();
  sub_1E1300B24(v36, &a7[OBJC_IVAR____TtC11AppStoreKit24WeakNotificationObserver_scheduler]);
  v18 = &a7[OBJC_IVAR____TtC11AppStoreKit24WeakNotificationObserver_block];
  *v18 = a4;
  *(v18 + 1) = a5;
  swift_unknownObjectWeakAssign();
  v35.receiver = a7;
  v35.super_class = type metadata accessor for WeakNotificationObserver();

  v19 = objc_msgSendSuper2(&v35, sel_init);
  sub_1E13BFF54(a2, v33);
  v20 = v34;
  if (v34)
  {
    v21 = __swift_project_boxed_opaque_existential_1Tm(v33, v34);
    v22 = *(v20 - 8);
    v23 = MEMORY[0x1EEE9AC00](v21);
    v25 = &v33[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25, v23);
    v26 = v19;
    v27 = a1;
    v28 = sub_1E1AF748C();
    (*(v22 + 8))(v25, v20);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    v29 = v19;
    v30 = a1;
    v28 = 0;
  }

  [a6 addObserver:v19 selector:sel_didReceiveWithNotification_ name:a1 object:v28];

  swift_unknownObjectRelease();
  sub_1E13E44F8(a2);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v19;
}

id sub_1E14D654C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a6;
  v15 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_allocWithZone(type metadata accessor for WeakNotificationObserver());
  (*(v15 + 16))(v17, a3, a8);
  return sub_1E14D62EC(a1, a2, v17, a4, a5, v21, v18, a8, a9);
}

uint64_t sub_1E14D675C(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E10, &unk_1E1B10B80);
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2E50, &qword_1E1B02920);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1E135C400(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_1E14DBE9C(v11, v4);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1E135C400((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_1E14DBF0C(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_1E14D6974(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1E135C4A0(0, v1, 0);
    v2 = v15;
    v4 = (a1 + 32);
    v5 = MEMORY[0x1E69E6530];
    v6 = MEMORY[0x1E69E65A8];
    do
    {
      v8 = *v4++;
      v7 = v8;
      v15 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1E135C4A0((v9 > 1), v10 + 1, 1);
        v2 = v15;
      }

      v13 = v5;
      v14 = v6;
      *&v12 = v7;
      *(v2 + 16) = v10 + 1;
      sub_1E1308EC0(&v12, v2 + 40 * v10 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1E14D6A64(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1E135C4E0(0, v1, 0);
    v4 = a1 + 56;
    v2 = v13;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEB4C20, &unk_1E1B10B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27F0, &unk_1E1B02C90);
      swift_dynamicCast();
      v6 = *(v13 + 16);
      v5 = *(v13 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E135C4E0((v5 > 1), v6 + 1, 1);
      }

      *(v13 + 16) = v6 + 1;
      v7 = (v13 + 32 * v6);
      v7[4] = v9;
      v7[5] = v10;
      v7[6] = v11;
      v7[7] = v12;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1E14D6BA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1E135C2E8(0, v1, 0);
    v2 = v12;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E135C2E8((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = v12 + 40 * v6;
      *(v7 + 64) = v11;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1E14D6CA8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E1AF71CC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1E135C7AC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1E68FFD80](i, a1);
        sub_1E13006E4(0, &qword_1EE1D23E8, 0x1E69DD250);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1E135C7AC((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1E1301CF0(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1E13006E4(0, &qword_1EE1D23E8, 0x1E69DD250);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1E135C7AC((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1E1301CF0(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1E14D6EA4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E1AF71CC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x1E69E7CC0];
  result = sub_1E135C7CC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1E68FFD80](i, a1);
        type metadata accessor for MixedMediaLockup(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26E0, &qword_1E1B02B38);
        swift_dynamicCast();
        v12 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1E135C7CC((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v7 + 1;
        sub_1E1337DC8(v11, (v3 + 48 * v7 + 32));
      }
    }

    else
    {
      v8 = a1 + 32;
      type metadata accessor for MixedMediaLockup(0);
      do
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26E0, &qword_1E1B02B38);
        swift_dynamicCast();
        v12 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1E135C7CC((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v10 + 1;
        sub_1E1337DC8(v11, (v3 + 48 * v10 + 32));
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E14D70F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1E135C2E8(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E135C2E8((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = v12 + 40 * v6;
      *(v7 + 64) = v11;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1E14D723C(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (a1 >> 62)
  {
    v9 = sub_1E1AF71CC();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v24 = MEMORY[0x1E69E7CC0];
  result = sub_1E135C74C(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = v24;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        v13 = MEMORY[0x1E68FFD80](v12, a1);
        v24 = v10;
        v15 = *(v10 + 16);
        v14 = *(v10 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1E135C74C((v14 > 1), v15 + 1, 1);
          v10 = v24;
        }

        ++v12;
        v22 = a2(0);
        v23 = sub_1E14DBE44(a3, a4, a5);
        *&v21 = v13;
        *(v10 + 16) = v15 + 1;
        sub_1E1308EC0(&v21, v10 + 40 * v15 + 32);
      }

      while (v9 != v12);
    }

    else
    {
      v16 = (a1 + 32);
      do
      {
        v17 = *v16;
        v24 = v10;
        v19 = *(v10 + 16);
        v18 = *(v10 + 24);

        if (v19 >= v18 >> 1)
        {
          sub_1E135C74C((v18 > 1), v19 + 1, 1);
          v10 = v24;
        }

        v22 = a2(0);
        v23 = sub_1E14DBE44(a3, a4, a5);
        *&v21 = v17;
        *(v10 + 16) = v19 + 1;
        sub_1E1308EC0(&v21, v10 + 40 * v19 + 32);
        ++v16;
        --v9;
      }

      while (v9);
    }

    return v10;
  }

  __break(1u);
  return result;
}

void *sub_1E14D7424(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E1AF71CC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1E135CCCC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1E68FFD80](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1E135CCCC((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for Action(0);
        v15 = sub_1E14DBE44(qword_1EE1D2F80, type metadata accessor for Action, &protocol conformance descriptor for Action);
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1E1308EC0(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_1E135CCCC((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for Action(0);
        v15 = sub_1E14DBE44(qword_1EE1D2F80, type metadata accessor for Action, &protocol conformance descriptor for Action);
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_1E1308EC0(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E14D76D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v6 = MEMORY[0x1E69E7CC0];
    sub_1E1AF70EC();
    v4 = a1 + 32;
    do
    {
      sub_1E1300B24(v4, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
      type metadata accessor for Review(0);
      swift_dynamicCast();
      sub_1E1AF70BC();
      sub_1E1AF70FC();
      sub_1E1AF710C();
      sub_1E1AF70CC();
      v4 += 40;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t RiverViewStyling.init(itemSize:interRowSpacing:interItemSpacing:speed:rowOffsets:reverseAlternatingRows:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a7;
  *(a3 + 32) = a8;
  *(a3 + 40) = result;
  *(a3 + 48) = a2;
  return result;
}

void RiverView.init(dataSource:styling:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  v8 = *(a2 + 48);
  v9 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  v10 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  nullsub_5();
  type metadata accessor for RiverRowRecycler(0, v9, v10, v11);
  swift_getWitnessTable();
  v33 = a2[1];
  v34 = *a2;
  sub_1E1AF1E1C();
  *(v3 + *((*v5 & *v3) + 0x78)) = 0;
  v12 = v3 + *((*v5 & *v3) + 0x80);
  *v12 = 0;
  v12[8] = 1;
  *(v3 + *((*v5 & *v3) + 0x88)) = 0;
  *(v3 + *((*v5 & *v3) + 0xA0)) = 0;
  type metadata accessor for RiverRow.Context(0, v9, v10, v13);
  v14 = swift_unknownObjectRetain();
  *(v3 + *((*v5 & *v3) + 0x70)) = RiverRow.Context.__allocating_init(_:)(v14);
  type metadata accessor for RiverRow(0, v9, v10, v15);
  *(v3 + *((*v5 & *v3) + 0x60)) = sub_1E1AF5C5C();
  v16 = v3 + *((*v5 & *v3) + 0x90);
  *v16 = v34;
  *(v16 + 1) = v33;
  *(v16 + 4) = v6;
  *(v16 + 5) = v7;
  v16[48] = v8;
  *(v3 + *((*v5 & *v3) + 0x98)) = v34;
  *(v3 + *((*v5 & *v3) + 0xA8)) = 1;
  v35.receiver = v3;
  v35.super_class = type metadata accessor for RiverView(0, v9, v10, v17);

  v18 = objc_msgSendSuper2(&v35, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v19 = sub_1E1AF748C();
  v20 = [objc_opt_self() displayLinkWithTarget:v19 selector:sel_animateScrollWithDisplayLink_];

  swift_unknownObjectRelease();
  v21 = *((*v5 & *v18) + 0x78);
  v22 = *(v18 + v21);
  *(v18 + v21) = v20;
  v23 = v20;

  if (v23)
  {
    [v23 setPreferredFramesPerSecond_];

    sub_1E14D948C();
    v24 = *(v18 + v21);
    if (v24)
    {
      v25 = v24;

      v26 = [objc_opt_self() mainRunLoop];
      [v25 addToRunLoop:v26 forMode:*MEMORY[0x1E695DA28]];

      v27 = v18;
      [v27 setClipsToBounds_];
      v28 = objc_opt_self();
      v29 = [v28 defaultCenter];
      [v29 addObserver:v27 selector:sel_lowMemoryWarning_ name:*MEMORY[0x1E69DDAD8] object:0];

      v30 = [v28 defaultCenter];
      [v30 addObserver:v27 selector:sel_reduceMotionStatusDidChange_ name:*MEMORY[0x1E69DD918] object:0];

      v31 = [v28 defaultCenter];
      [v31 addObserver:v27 selector:sel_willEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

      v32 = [v28 defaultCenter];
      [v32 addObserver:v27 selector:sel_didEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id RiverView.__deallocating_deinit()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver_];

  v5 = type metadata accessor for RiverView(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v4);
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

double sub_1E14D7EA8(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];

  v5 = *((*v2 & *a1) + 0x68);
  type metadata accessor for RiverRowRecycler(255, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v6);
  swift_getWitnessTable();
  v7 = sub_1E1AF1E2C();
  (*(*(v7 - 8) + 8))(&a1[v5], v7);

  return result;
}

double sub_1E14D802C()
{
  sub_1E14DAE54();

  return result;
}

double sub_1E14D8054(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1E14D8114(uint64_t result, char a2)
{
  v3 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x80);
  *v3 = result;
  v3[8] = a2 & 1;
  return result;
}

double sub_1E14D81A4()
{
  sub_1E14DAEB4();

  swift_unknownObjectRetain();
  return result;
}

double sub_1E14D81CC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  v3 = *(v2 + 4);
  v4 = *(v2 + 5);
  v5 = v2[48];
  v6 = *(v2 + 1);
  *a1 = *v2;
  *(a1 + 16) = v6;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;

  return result;
}

double sub_1E14D8218(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  *(v5 + 4) = v2;
  *(v5 + 5) = v3;
  v5[48] = v4;

  return result;
}

double sub_1E14D826C()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  swift_beginAccess();
  return *v1;
}

void sub_1E14D82D0(double a1, double a2)
{
  v5 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x98));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1E14D8404()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1E14D8464(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_1E14D854C()
{
  result = [v0 window];
  if (result)
  {

    if ([v0 isHidden])
    {
      return 0;
    }

    else
    {
      return !UIAccessibilityIsReduceMotionEnabled();
    }
  }

  return result;
}

void sub_1E14D85A8()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
  swift_beginAccess();
  if (*(v0 + v1) == 1 && (sub_1E14D854C() & 1) != 0)
  {
    sub_1E14DA684();
  }

  else
  {
    sub_1E14DA780();
  }
}

uint64_t sub_1E14D8624()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1E14D8684(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1E14D85A8();
}

void (*sub_1E14D86F4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E14D8774;
}

void sub_1E14D8774(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E14D85A8();
  }
}

uint64_t sub_1E14D87A8()
{
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for RiverViewRecycler(255, AssociatedTypeWitness, v1, v2);
  swift_getWitnessTable();
  sub_1E1AF1E2C();
  sub_1E1AF1DEC();
  return swift_endAccess();
}

id sub_1E14D88D0()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
  swift_beginAccess();
  if (*(v0 + v2) == 1 && (sub_1E14D854C() & 1) != 0)
  {
    return sub_1E14DA684();
  }

  sub_1E14DA780();
  *(v0 + *((*v1 & *v0) + 0x88)) = 0;
  return [v0 setNeedsLayout];
}

void sub_1E14D899C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
  swift_beginAccess();
  if (*(v0 + v1) == 1 && (sub_1E14D854C() & 1) != 0)
  {
    sub_1E14DA684();
  }
}

uint64_t sub_1E14D8A44(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_1E1AEF55C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF50C();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1E14D8B30(void *a1)
{
  v1 = a1;
  v5 = sub_1E14D8B64(v1, v2, v3, v4);

  return v5 & 1;
}

id sub_1E14D8B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RiverView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_isHidden);
}

void sub_1E14D8BD4(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = a1;
  sub_1E14D8C28(v3, v6, v4, v5);
}

void sub_1E14D8C28(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for RiverView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v6;
  objc_msgSendSuper2(&v7, sel_setHidden_, a1 & 1);
  sub_1E14D8CAC();
}

void sub_1E14D8CAC()
{
  if ([v0 isHidden])
  {

    sub_1E14DA780();
  }

  else
  {
    v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
    swift_beginAccess();
    if (*(v0 + v1) == 1 && (sub_1E14D854C() & 1) != 0)
    {
      sub_1E14DA684();
    }

    else
    {
      sub_1E14DA830();
    }
  }
}

double sub_1E14D8D5C(void *a1)
{
  v1 = a1;
  sub_1E14D8D98(v1, v2, v3, v4);
  v6 = v5;

  return v6;
}

id sub_1E14D8D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RiverView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_alpha);
}

void sub_1E14D8E08(void *a1, double a2)
{
  v6 = a1;
  sub_1E14D8E60(a2, v6, v3, v4, v5);
}

void sub_1E14D8E60(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for RiverView(0, *((*MEMORY[0x1E69E7D40] & *v5) + 0x50), *((*MEMORY[0x1E69E7D40] & *v5) + 0x58), a5);
  v8.receiver = v5;
  v8.super_class = v7;
  objc_msgSendSuper2(&v8, sel_setAlpha_, a1);
  sub_1E14D8EE4();
}

void sub_1E14D8EE4()
{
  [v0 alpha];
  if (v1 == 0.0)
  {

    sub_1E14DA780();
  }

  else
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
    swift_beginAccess();
    if (*(v0 + v2) == 1 && (sub_1E14D854C() & 1) != 0)
    {
      sub_1E14DA684();
    }

    else
    {
      sub_1E14DA830();
    }
  }
}

void sub_1E14D8F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for RiverView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v8.receiver = v4;
  v8.super_class = v6;
  objc_msgSendSuper2(&v8, sel_didMoveToWindow);
  v7 = *((*v5 & *v4) + 0xA8);
  swift_beginAccess();
  if (*(v4 + v7) == 1 && (sub_1E14D854C() & 1) != 0)
  {
    sub_1E14DA684();
  }

  else
  {
    sub_1E14DA780();
  }
}

void sub_1E14D9060(void *a1)
{
  v4 = a1;
  sub_1E14D8F98(v4, v1, v2, v3);
}

void sub_1E14D90A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for RiverView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v11.receiver = v4;
  v11.super_class = v6;
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v7 = *(v4 + *((*v5 & *v4) + 0x78));
  if (v7)
  {
    if (([v7 isPaused] & 1) != 0 || (v8 = *((*v5 & *v4) + 0xA8), swift_beginAccess(), (*(v4 + v8) & 1) == 0))
    {
      v9 = objc_opt_self();
      v10 = [v9 areAnimationsEnabled];
      [v9 setAnimationsEnabled_];
      sub_1E14DA830();
      [v9 setAnimationsEnabled_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1E14D91E0(void *a1)
{
  v4 = a1;
  sub_1E14D90A8(v4, v1, v2, v3);
}

double sub_1E14D925C(void *a1, double a2)
{
  v3 = a1;
  v4 = sub_1E14D9228(a2);

  return v4;
}

double sub_1E14D92A8(void *a1)
{
  v1 = a1;
  sub_1E14D92EC();
  v3 = v2;

  return v3;
}

void sub_1E14D92EC()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  type metadata accessor for RiverRow(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v3);

  sub_1E1AF62BC();

  swift_beginAccess();
  swift_beginAccess();

  v4 = sub_1E1AF62BC();

  if (__OFSUB__(v4, 1))
  {
    __break(1u);
  }
}

void sub_1E14D948C()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v5 = *((v4 & v2) + 0x50);
  v6 = *((v4 & v2) + 0x58);
  type metadata accessor for RiverRow(0, v5, v6, v7);

  v8 = sub_1E1AF62BC();

  v9 = *(v6 + 24);
  swift_unknownObjectRetain();
  v10 = v9(v5, v6);
  swift_unknownObjectRelease();
  if (v10 < v8)
  {
    v11 = v8 - v10;
    if (__OFSUB__(v8, v10))
    {
      goto LABEL_24;
    }

    if (v11 < 0)
    {
      goto LABEL_25;
    }

    for (; v11; --v11)
    {
      swift_beginAccess();
      sub_1E1AF635C();
      swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1E1AF674C();
      swift_endAccess();
      swift_beginAccess();
      type metadata accessor for RiverRowRecycler(255, v5, v6, v12);
      swift_getWitnessTable();
      sub_1E1AF1E2C();
      sub_1E1AF1E0C();
      swift_endAccess();
    }

    return;
  }

  if (v8 >= v10)
  {
    return;
  }

  v13 = (v0 + *((*v3 & *v0) + 0x98));
  swift_beginAccess();
  v14 = (v13[1] + *(v1 + *((*v3 & *v1) + 0x90) + 16)) * v8;
  v23 = *(v6 + 64);
  while (1)
  {
    swift_unknownObjectRetain();
    v23(v24, v5, v6);
    swift_unknownObjectRelease();
    if (LOBYTE(v24[0]) == 1)
    {
      break;
    }

    v21 = *(*(v1 + *((*v3 & *v1) + 0x90) + 40) + 16);

    if (!v21)
    {
      goto LABEL_21;
    }

    if (v8 % v21 < 0)
    {
      goto LABEL_22;
    }

    if ((v8 % v21) >= *(v22 + 16))
    {
      goto LABEL_23;
    }

LABEL_9:
    MEMORY[0x1EEE9AC00](v19);
    swift_beginAccess();
    type metadata accessor for RiverRowRecycler(255, v5, v6, v15);
    swift_getWitnessTable();
    sub_1E1AF1E2C();
    sub_1E1AF1DFC();
    swift_endAccess();
    swift_beginAccess();
    sub_1E1AF635C();

    sub_1E1AF62CC();
    swift_endAccess();
    v3 = MEMORY[0x1E69E7D40];
    v16 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x98));
    swift_beginAccess();
    v17 = v16[1];
    v18 = *(v1 + *((*v3 & *v1) + 0x90) + 16);

    v14 = v14 + v17 + v18;
    if (v10 == ++v8)
    {
      return;
    }
  }

  v19 = swift_beginAccess();
  v20 = v8 & 1;
  if (v8 < 0)
  {
    v20 = -v20;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_1E14D9B14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>, uint64_t a7@<X3>)
{
  v13 = MEMORY[0x1E69E7D40];
  v14 = (*MEMORY[0x1E69E7D40] & *a1);
  result = type metadata accessor for RiverRow(0, v14[10], v14[11], a7);
  v16 = __OFSUB__(a2, a3);
  v17 = a2 - a3;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v18 = (a1 + v14[19]);
    swift_beginAccess();
    v19 = *v18;
    v20 = v18[1];
    v21 = *(a1 + *((*v13 & *a1) + 0x90) + 24);

    result = RiverRow.__allocating_init(context:number:origin:itemSize:interItemSpacing:)(v22, v17, a5, a6, v19, v20, v21);
    *a4 = result;
  }

  return result;
}

void sub_1E14D9C70()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v5 = *((v4 & v2) + 0x50);
  v6 = *((v4 & v2) + 0x58);
  type metadata accessor for RiverRowRecycler(255, v5, v6, v7);
  swift_getWitnessTable();
  sub_1E1AF1E2C();
  sub_1E1AF1DEC();
  swift_endAccess();
  v8 = *((*v3 & *v1) + 0x60);
  swift_beginAccess();
  v13 = *(v1 + v8);
  v12[0] = v5;
  v12[1] = v6;
  swift_getKeyPath(byte_1E1B10A60, v12);
  type metadata accessor for RiverRow(255, v5, v6, v9);
  sub_1E1AF635C();
  swift_getAssociatedTypeWitness();
  sub_1E1AF5CCC();

  swift_getWitnessTable();
  swift_getWitnessTable();
  v10 = sub_1E1AF614C();

  v13 = v10;
  swift_getTupleTypeMetadata2();
  sub_1E1AF635C();
  swift_getWitnessTable();
  sub_1E1AF615C();

  v11 = sub_1E1AF627C();
  sub_1E14D8054(v11);
  sub_1E14D948C();
}

uint64_t sub_1E14D9F58(uint64_t *a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

id sub_1E14D9FB4(int a1, id a2)
{
  v3 = [a2 layer];
  [v3 removeAllAnimations];

  return [a2 removeFromSuperview];
}

void sub_1E14DA01C(double a1, double a2)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40] & *v2;
  v7 = (v2 + *(v6 + 0x98));
  swift_beginAccess();
  if (*v7 != a1 || v7[1] != a2)
  {
    v9 = (v2 + *((*v5 & *v2) + 0x98));
    swift_beginAccess();
    *v9 = a1;
    v9[1] = a2;
    v12 = v6 + 80;
    v10 = *(v6 + 80);
    v11 = *(v12 + 8);
    v13 = *(v11 + 48);
    swift_unknownObjectRetain();
    v13(v10, v11, a1, a2);
    swift_unknownObjectRelease();
    sub_1E14D9C70();
  }
}

void sub_1E14DA180(double a1, double a2)
{
  v3 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x90));
  v4 = *(v3 + 48);
  v3[2] = a1;
  v3[3] = a2;
  *(v3 + 48) = v4;
  sub_1E14D9C70();
}

double sub_1E14DA1B8(void *a1)
{
  v1 = a1;
  sub_1E14DA214(v1, v2, v3, v4);
  v6 = v5;

  return v6;
}

id sub_1E14DA214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RiverView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_frame);
}

void sub_1E14DA284(void *a1, double a2, double a3, double a4, double a5)
{
  v12 = a1;
  sub_1E14DA2FC(a2, a3, a4, a5, v12, v9, v10, v11);
}

void sub_1E14DA2FC(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for RiverView(0, *((*MEMORY[0x1E69E7D40] & *v8) + 0x50), *((*MEMORY[0x1E69E7D40] & *v8) + 0x58), a8);
  v23.receiver = v8;
  v23.super_class = v13;
  objc_msgSendSuper2(&v23, sel_frame);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22.receiver = v8;
  v22.super_class = v13;
  objc_msgSendSuper2(&v22, sel_setFrame_, a1, a2, a3, a4);
  sub_1E14DA3F0(v15, v17, v19, v21);
}

void sub_1E14DA3F0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *MEMORY[0x1E69E7D40] & *v4;
  v12 = [v4 traitCollection];
  v13 = sub_1E1AF697C();

  if (v13)
  {
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    if (!CGRectIsEmpty(v24))
    {
      [v5 frame];
      Width = CGRectGetWidth(v25);
      v26.origin.x = a1;
      v26.origin.y = a2;
      v26.size.width = a3;
      v26.size.height = a4;
      v15 = CGRectGetWidth(v26);
      v16 = *((*v10 & *v5) + 0x88);
      *(v5 + v16) = *(v5 + v16) - (Width - v15);
      if (*(v5 + *((*v10 & *v5) + 0x88)) < 0.0)
      {
        v17 = *((*v10 & *v5) + 0x98);
        swift_beginAccess();
        v18 = *(v5 + v17) + *(v5 + *((*v10 & *v5) + 0x90) + 24);
        v21 = v11 + 80;
        v19 = *(v11 + 80);
        v20 = *(v21 + 8);
        v22 = *(v20 + 32);
        swift_unknownObjectRetain();
        v23 = v22(v19, v20);
        swift_unknownObjectRelease();
        *(v5 + v16) = *(v5 + v16) + v18 * v23;
      }
    }
  }
}

void sub_1E14DA624(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1E14DB0D0();
}

id sub_1E14DA684()
{
  v1 = MEMORY[0x1E69E7D40];
  result = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x78));
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  result = [result isPaused];
  if (!result)
  {
    return result;
  }

  v3 = CACurrentMediaTime();
  v4 = (v0 + *((*v1 & *v0) + 0x80));
  if ((v4[1] & 1) == 0 && v3 - *v4 > 0.015)
  {
    *v4 = v3;
    *(v4 + 8) = 0;
  }

  sub_1E14DA830();
  result = *(v0 + *((*v1 & *v0) + 0x78));
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  return [result setPaused_];
}

void sub_1E14DA780()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x78));
  if (!v2)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  if ([v2 isPaused])
  {
    return;
  }

  v3 = *(v0 + *((*v1 & *v0) + 0x78));
  if (!v3)
  {
    goto LABEL_8;
  }

  [v3 setPaused_];

  sub_1E14DA830();
}

void sub_1E14DA830()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  [v1 bounds];
  Width = CGRectGetWidth(v18);
  swift_beginAccess();
  type metadata accessor for RiverRow(255, *((v4 & v2) + 0x50), *((v4 & v2) + 0x58), v6);
  v7 = sub_1E1AF635C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1E68FEE20](v17, v7, WitnessTable);
  v15 = v17[0];
  sub_1E1AF726C();
  sub_1E1AF723C();
  sub_1E1AF725C();
  sub_1E1AF724C();
  if (v16)
  {
    for (i = v15; ; i = v15)
    {
      v10 = *(v1 + *((*v3 & *v1) + 0x88));
      if (i)
      {
        v11 = 0;
      }

      else
      {
        v11 = *(v1 + *((*v3 & *v1) + 0x90) + 48);
      }

      v12 = *((*v3 & *v1) + 0xA0);
      swift_beginAccess();
      LODWORD(v12) = *(v1 + v12);
      v13 = [v1 traitCollection];
      v14 = [v13 layoutDirection];

      sub_1E18651D8(v1, i, v11, 1, 1, v12, v14, v10, Width);

      sub_1E1AF724C();
    }
  }
}

uint64_t sub_1E14DAA94(char a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x90) + 48);
  }
}

id sub_1E14DAACC()
{
  result = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x78));
  if (result)
  {
    return [result invalidate];
  }

  __break(1u);
  return result;
}

id sub_1E14DAB08()
{
  v0 = sub_1E1AF620C();

  return v0;
}

id sub_1E14DAB58(void *a1)
{
  v1 = a1;
  v2 = sub_1E14DABC8();

  if (v2)
  {
    v3 = sub_1E1AF620C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

char *sub_1E14DABC8()
{
  v1 = [v0 subviews];
  sub_1E13006E4(0, &qword_1EE1D23E8, 0x1E69DD250);
  v2 = sub_1E1AF621C();

  v3 = sub_1E14D6CA8(v2);

  return v3;
}

void sub_1E14DAC44(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_1E1AF621C();
  }

  else
  {
    v4 = 0;
  }

  v7 = a1;
  sub_1E14DACBC(v4, v7, v5, v6);
}

void sub_1E14DACBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x1E69E7D40] & *v4;
  if (a1)
  {
    v6 = sub_1E1AF620C();
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for RiverView(0, *(v5 + 80), *(v5 + 88), a4);
  v8.receiver = v4;
  v8.super_class = v7;
  objc_msgSendSuper2(&v8, sel_setAutomationElements_, v6);
}

id RiverView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t sub_1E14DAE54()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1E14DAEE4()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  nullsub_5();
  type metadata accessor for RiverRowRecycler(0, v2, v3, v4);
  swift_getWitnessTable();
  sub_1E1AF1E1C();
  *(v0 + *((*v1 & *v0) + 0x78)) = 0;
  v5 = v0 + *((*v1 & *v0) + 0x80);
  *v5 = 0;
  v5[8] = 1;
  *(v0 + *((*v1 & *v0) + 0x88)) = 0;
  *(v0 + *((*v1 & *v0) + 0xA0)) = 0;
  sub_1E1AF71FC();
  __break(1u);
}

void sub_1E14DB0D0()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*MEMORY[0x1E69E7D40] & *v0);
  v4 = v3[21];
  swift_beginAccess();
  if (*(v0 + v4) == 1 && (sub_1E14D854C() & 1) != 0)
  {
    v5 = CACurrentMediaTime();
    v6 = v5;
    v7 = *v2 & *v0;
    v8 = (v0 + *(v7 + 0x80));
    if ((v8[1] & 1) == 0)
    {
      *(v0 + *((*v2 & *v0) + 0x88)) = (v5 - *v8) * *(v0 + *((*v2 & *v0) + 0x90) + 32) + *(v0 + *((*v2 & *v0) + 0x88));
      [v0 bounds];
      Width = CGRectGetWidth(v61);
      v10 = *((*v2 & *v0) + 0x98);
      swift_beginAccess();
      v11 = (v0 + *((*v2 & *v0) + 0x90));
      v12 = *(v0 + v10) + v11[3];
      v13 = v12 * (ceil(Width / v12) + 2.0) / v11[4];
      v14 = sub_1E1AF5DBC();
      v15 = [objc_opt_self() animationWithKeyPath_];

      v16 = *MEMORY[0x1E6979ED8];
      v17 = objc_opt_self();
      v18 = v15;
      v19 = [v17 functionWithName_];
      [v18 setTimingFunction_];

      v20 = [v1 traitCollection];
      sub_1E1AF697C();

      v21 = sub_1E1AF053C();
      [v18 setByValue_];

      [v18 setDuration_];
      [v18 setBeginTime_];
      [v18 setFillMode_];
      [v18 setRemovedOnCompletion_];
      v54 = v18;

      v53 = 0;
      if (*(v1 + *((*v2 & *v1) + 0x90) + 48) == 1)
      {
        [v18 copy];
        sub_1E1AF6EBC();
        swift_unknownObjectRelease();
        sub_1E13006E4(0, &qword_1ECEB4C10, 0x1E6979318);
        if (swift_dynamicCast())
        {
          v22 = sub_1E1AF053C();
          v53 = v60;
          [v60 setByValue_];
        }

        else
        {
          v53 = 0;
        }
      }

      v23 = *((*v2 & *v1) + 0x60);
      swift_beginAccess();
      v59[0] = *(v1 + v23);
      type metadata accessor for RiverRow(255, v3[10], v3[11], v24);
      v25 = sub_1E1AF635C();
      WitnessTable = swift_getWitnessTable();
      MEMORY[0x1E68FEE20](v56, v25, WitnessTable);
      v56[4] = v56[0];
      sub_1E1AF726C();
      sub_1E1AF723C();
      sub_1E1AF725C();
      sub_1E1AF724C();
      v27 = v58;
      if (v58)
      {
        v52 = v1;
        v51 = v1 + 6;
        v28 = v57;
        while (2)
        {
          v29 = *v52;
          v30 = *v2;
          if (v28)
          {
            v31 = 0;
          }

          else
          {
            v31 = *(v51 + *((*v2 & *v52) + 0x90));
          }

          v32 = *(v52 + *((v30 & v29) + 0x88));
          v33 = *((v30 & v29) + 0xA0);
          swift_beginAccess();
          v34 = *(v52 + v33);
          v35 = [v52 traitCollection];
          v36 = [v35 layoutDirection];

          sub_1E18651D8(v52, v28, v31, 0, 0, v34, v36, v32, Width);
          v37 = v54;
          if (((v53 != 0) & v31) != 0)
          {
            v37 = v53;
          }

          v55 = v37;
          swift_beginAccess();
          v38 = *(v27 + 72);
          v39 = 1 << *(v38 + 32);
          if (v39 < 64)
          {
            v40 = ~(-1 << v39);
          }

          else
          {
            v40 = -1;
          }

          v41 = v40 & *(v38 + 64);
          v42 = (v39 + 63) >> 6;

          v43 = 0;
          while (v41)
          {
LABEL_26:
            v45 = *(*(v38 + 56) + ((v43 << 9) | (8 * __clz(__rbit64(v41)))));
            v46 = [v45 layer];
            v47 = sub_1E1AF5DBC();
            v48 = [v46 animationForKey_];

            v49 = v45;
            if (!v48)
            {
              v48 = [v45 layer];

              v49 = sub_1E1AF5DBC();
              [v48 addAnimation:v55 forKey:v49];
            }

            v41 &= v41 - 1;
          }

          while (1)
          {
            v44 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              __break(1u);
              return;
            }

            if (v44 >= v42)
            {
              break;
            }

            v41 = *(v38 + 64 + 8 * v44);
            ++v43;
            if (v41)
            {
              v43 = v44;
              goto LABEL_26;
            }
          }

          sub_1E1AF724C();
          v28 = v57;
          v27 = v58;
          v2 = MEMORY[0x1E69E7D40];
          if (v58)
          {
            continue;
          }

          break;
        }

        v1 = v52;
      }

      v7 = *v2 & *v1;
    }

    v50 = (v1 + *(v7 + 128));
    *v50 = v6;
    *(v50 + 8) = 0;
  }
}

uint64_t sub_1E14DB8D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E14DB91C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E14DB97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RiverRowRecycler(255, *(a1 + 80), *(a1 + 88), a4);
  swift_getWitnessTable();
  result = sub_1E1AF1E2C();
  if (v5 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1E14DBE44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E14DBE9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E10, &unk_1E1B10B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E14DBF0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2E50, &qword_1E1B02920);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id static BundleImage.load(_:bundle:with:compatibleWith:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    if (qword_1EE1E31F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = qword_1EE1E3200;
  }

  v11 = a3;
  v12 = sub_1E1AF5DBC();
  v13 = [objc_opt_self() imageNamed:v12 inBundle:v10 compatibleWithTraitCollection:a5];

  if (v13)
  {
    if (a4)
    {
      v14 = [v13 imageWithConfiguration_];

      return v14;
    }
  }

  else
  {
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v16 = sub_1E1AF591C();
    __swift_project_value_buffer(v16, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v17[3] = MEMORY[0x1E69E6158];
    v17[0] = a1;
    v17[1] = a2;

    sub_1E1AF38DC();
    sub_1E1308058(v17, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF54AC();

    return [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  return v13;
}

id static BundleImage.load(artwork:with:)(uint64_t a1, id a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_1E1AEFCCC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEFCAC();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E1308058(v6, &unk_1ECEB4B60, &unk_1E1B02620);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  v11 = sub_1E1AEFC6C();
  if (!v12)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  v13 = v11;
  v14 = v12;
  v15 = *(a1 + 24);
  v30 = *(a1 + 16);
  v31 = v15;
  if (!Artwork.URLTemplate.isBundleImage.getter())
  {
    (*(v8 + 8))(v10, v7);

    return 0;
  }

  if (*(a1 + 96) > 1u)
  {
    if (*(a1 + 96) != 2)
    {
      goto LABEL_18;
    }

    v16 = 3;
  }

  else if (*(a1 + 96))
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v18 = [objc_opt_self() configurationWithScale_];
  if (v18)
  {
    v19 = v18;
    if (a2)
    {
      v20 = a2;
      a2 = [v19 configurationByApplyingConfiguration_];

      goto LABEL_19;
    }
  }

LABEL_18:
  v21 = a2;
LABEL_19:
  if (qword_1EE1E31F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v22 = qword_1EE1E3200;
  v23 = sub_1E1AF5DBC();
  v24 = [objc_opt_self() imageNamed:v23 inBundle:v22 compatibleWithTraitCollection:0];

  if (!v24)
  {
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v28 = sub_1E1AF591C();
    v29 = __swift_project_value_buffer(v28, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v32 = MEMORY[0x1E69E6158];
    v30 = v13;
    v31 = v14;
    sub_1E1AF38DC();
    sub_1E1308058(&v30, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF54AC();

    v25 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    v27 = a2;
    goto LABEL_27;
  }

  v25 = v24;

  if (a2)
  {
    v26 = a2;
    v27 = v24;
    v25 = [v24 imageWithConfiguration_];

LABEL_27:
  }

  (*(v8 + 8))(v10, v7);
  return v25;
}

uint64_t sub_1E14DC7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910, qword_1E1B089E0);
  v6 = sub_1E1AF588C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0, &unk_1E1B1C8F0);
  sub_1E1AF416C();
  v7 = v21;
  ObjectType = swift_getObjectType();
  v9 = *(a1 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_adamId + 8);
  v20 = *(a1 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_adamId);
  v21 = v9;
  v10 = *(v7 + 56);

  v11 = v10(&v20, ObjectType, v7);
  v13 = v12;

  v14 = OfferStateAction.preferredAction(for:)(v11, v13);
  v22 = type metadata accessor for Action(0);
  v23 = sub_1E14DC9F0(qword_1EE1D2F80, type metadata accessor for Action);
  v20 = v14;
  type metadata accessor for OfferStateActionImplementation(0, a3, v15, v16);
  swift_getWitnessTable();
  sub_1E1834054(&v20, a2);
  __swift_destroy_boxed_opaque_existential_1(&v20);
  v17 = sub_1E1361A80();
  swift_retain_n();
  v18 = sub_1E1AF68EC();
  v22 = v17;
  v23 = MEMORY[0x1E69AB720];
  v20 = v18;
  sub_1E1AF57FC();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v20);
  return v6;
}

uint64_t sub_1E14DC9F0(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

void *ArcadeLockupLayout.init(wordmarkView:subtitleText:offerButton:metrics:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, const void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_1E1308EC0(a1, a5);
  sub_1E1308EC0(a2, a5 + 40);
  sub_1E1308EC0(a3, a5 + 80);

  return memcpy((a5 + 120), a4, 0x123uLL);
}

uint64_t ArcadeLockupLayout.Metrics.minimumHeight.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t ArcadeLockupLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t ArcadeLockupLayout.Metrics.wordmarkMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_1E1308EC0(a1, v1 + 80);
}

uint64_t ArcadeLockupLayout.Metrics.wordmarkTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 120));

  return sub_1E1308EC0(a1, v1 + 120);
}

uint64_t ArcadeLockupLayout.Metrics.wordmarkSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 160));

  return sub_1E1308EC0(a1, v1 + 160);
}

uint64_t ArcadeLockupLayout.Metrics.subtitleLeadingSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 200));

  return sub_1E1308EC0(a1, v1 + 200);
}

uint64_t ArcadeLockupLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 240));

  return sub_1E1308EC0(a1, v1 + 240);
}

uint64_t ArcadeLockupLayout.Metrics.init(minimumHeight:offerButtonMargin:wordmarkMargin:wordmarkTopSpace:wordmarkSpace:subtitleLeadingSpace:bottomSpace:numberOfLinesForSubtitle:shouldHorizontallyCenterSubtitleLayout:expandToFillWidth:subtitleIsHorizontallyAligned:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11, char a12)
{
  sub_1E1308EC0(a1, a9);
  sub_1E1308EC0(a2, a9 + 40);
  sub_1E1308EC0(a3, a9 + 80);
  sub_1E1308EC0(a4, a9 + 120);
  sub_1E1308EC0(a5, a9 + 160);
  sub_1E1308EC0(a6, a9 + 200);
  result = sub_1E1308EC0(a7, a9 + 240);
  *(a9 + 280) = a8;
  *(a9 + 288) = a10;
  *(a9 + 289) = a11;
  *(a9 + 290) = a12;
  return result;
}

double ArcadeLockupLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v7 = sub_1E1AF745C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v3 + 5, v3[8]);
  sub_1E1AF146C();
  __swift_project_boxed_opaque_existential_1Tm(v4 + 10, v4[13]);
  sub_1E1AF11DC();
  v12 = v11;
  v13 = v3[23];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 20, v4[23]);
  sub_1E13BC274(v13);
  v14 = sub_1E1AF12DC();
  v15 = *(v8 + 8);
  v15(v10, v7);
  v16 = [a1 traitCollection];
  sub_1E14DD374(v22);

  __swift_project_boxed_opaque_existential_1Tm(v22, v22[3]);
  sub_1E1AF11DC();
  v18 = v17;
  if ((*(v4 + 410) & 1) == 0)
  {
    v19 = v4[48];
    __swift_project_boxed_opaque_existential_1Tm(v4 + 45, v19);
    sub_1E13BC274(v19);
    sub_1E1AF12DC();
    v15(v10, v7);
  }

  v20 = v4[18];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 15, v20);
  sub_1E13BC274(v20);
  sub_1E1AF12DC();
  v15(v10, v7);
  if (!*(v4 + 409))
  {
    a2 = v12 + v14 + v18;
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  return a2;
}

_OWORD *sub_1E14DD374@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1Tm((v1 + 40), *(v1 + 64));
  if (sub_1E1AF112C())
  {
    v4 = *(v1 + 408);
    if ((v4 & 1) != 0 || *(v1 + 410) == 1)
    {
      *(&v16 + 1) = &type metadata for ArcadeLockupLayout.HorizontallyCenteredWordmarkWithSubtitleSublayout;
      v17 = sub_1E14DEE84();
      v18 = sub_1E14DEED8();
      *&v15 = swift_allocObject();
      sub_1E1300B24(v1, v15 + 16);
      sub_1E1300B24(v1 + 40, v15 + 56);
      sub_1E1300B24(v1 + 240, v15 + 96);
      sub_1E1300B24(v1 + 360, v15 + 136);
      sub_1E1300B24(v1 + 200, v15 + 176);
      *(v15 + 216) = v4;
    }

    else
    {
      v7 = *(v1 + 409);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26B8, &unk_1E1B02B10);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1E1B02CD0;
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      sub_1E1300B24(v2, v8 + 32);
      sub_1E1300B24((v2 + 30), v8 + 80);
      sub_1E141E104(&v15, v8 + 120);
      *(v8 + 72) = 0;
      *(v8 + 160) = 8;
      sub_1E141E174(&v15);
      v9 = v2[8];
      v10 = v2[9];
      v11 = __swift_project_boxed_opaque_existential_1Tm(v2 + 5, v9);
      *(&v16 + 1) = v9;
      v17 = *(v10 + 8);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v15);
      (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v11, v9);
      sub_1E1300B24((v2 + 45), v14);
      sub_1E1300B24(&v15, v8 + 168);
      sub_1E1300B24((v2 + 40), v8 + 216);
      sub_1E141E104(v14, v8 + 256);
      *(v8 + 208) = 1;
      *(v8 + 296) = 8;
      sub_1E141E174(v14);
      __swift_destroy_boxed_opaque_existential_1(&v15);
      *(&v16 + 1) = &type metadata for _VerticalFlowLayout;
      v17 = sub_1E14DEDDC();
      v13 = sub_1E14DEE30();
      LOBYTE(v15) = v7;
      v18 = v13;
      *(&v15 + 1) = v8;
    }

    return sub_1E1337DC8(&v15, a1);
  }

  else
  {
    *(a1 + 24) = &type metadata for ArcadeLockupLayout.CenteredWordmarkSublayout;
    *(a1 + 32) = sub_1E14DED34();
    *(a1 + 40) = sub_1E14DED88();
    v5 = swift_allocObject();
    *a1 = v5;
    sub_1E1300B24(v2, v5 + 16);
    sub_1E1300B24((v2 + 30), v5 + 56);
    return sub_1E1300B24((v2 + 45), v5 + 96);
  }
}

uint64_t ArcadeLockupLayout.placeChildren(relativeTo:in:)(void *a1, double a2, double a3, double a4, double a5)
{
  __swift_project_boxed_opaque_existential_1Tm((v5 + 40), *(v5 + 64));
  sub_1E1AF146C();
  v7 = [a1 traitCollection];
  sub_1E14DD708(v9);

  __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
  sub_1E1AF1B7C();
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1E14DD708@<X0>(uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1E1AF19AC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  if (*(v2 + 410) == 1)
  {
    *&v40 = &type metadata for ArcadeLockupLayout.HorizontallyAlignedSubtitleSublayout;
    *(&v40 + 1) = sub_1E14DECE0();
    v12 = swift_allocObject();
    v39[0] = v12;
    sub_1E1300B24(v3 + 40, (v12 + 2));
    v13 = MEMORY[0x1E69E63B0];
    v14 = MEMORY[0x1E69ABBA8];
    v12[10] = MEMORY[0x1E69E63B0];
    v12[11] = v14;
    v12[7] = 0x4028000000000000;
    v12[15] = v13;
    v12[16] = v14;
    v12[12] = 0x4024000000000000;
    sub_1E1300B24(v3, v38);
    sub_1E1300B24(v3 + 200, v36);
    sub_1E1300B24(v3 + 80, v35);
    sub_1E1300B24(v3 + 160, v34);
    v15 = *(v6 + 104);
    v15(v11, *MEMORY[0x1E69ABA70], v5);
    v15(v8, *MEMORY[0x1E69ABA80], v5);
    v16 = sub_1E1AF1A0C();
    v17 = MEMORY[0x1E69ABA88];
    a2[3] = v16;
    a2[4] = v17;
    __swift_allocate_boxed_opaque_existential_0(a2);
    return sub_1E1AF19EC();
  }

  else
  {
    sub_1E14DD374(v39);
    v19 = *(v2 + 408);
    v31 = v8;
    if (v19 == 1)
    {
      __swift_project_boxed_opaque_existential_1Tm((v2 + 80), *(v2 + 104));
      sub_1E1AF11EC();
      sub_1E1AF196C();
      swift_allocObject();
      v20 = sub_1E1AF194C();
      sub_1E1300B24(v3 + 160, v38);
    }

    else
    {
      v20 = 0;
      v38[3] = MEMORY[0x1E69E63B0];
      v38[4] = MEMORY[0x1E69ABBA8];
      v38[0] = 0;
    }

    v30 = v40;
    v21 = v40;
    v22 = __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    v37 = v30;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
    (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v22, v21);
    v24 = 0;
    if (v20)
    {
      v24 = sub_1E1AF196C();
      v25 = MEMORY[0x1E69ABA68];
    }

    else
    {
      v25 = 0;
      v35[1] = 0;
      v35[2] = 0;
    }

    v26 = v31;
    v35[0] = v20;
    v35[3] = v24;
    v35[4] = v25;
    sub_1E1300B24(v38, v34);
    sub_1E1300B24(v3 + 80, &v33);
    sub_1E1300B24(v3 + 160, &v32);
    v27 = *(v6 + 104);
    v27(v11, *MEMORY[0x1E69ABA70], v5);
    v27(v26, *MEMORY[0x1E69ABA80], v5);
    v28 = sub_1E1AF1A0C();
    v29 = MEMORY[0x1E69ABA88];
    a2[3] = v28;
    a2[4] = v29;
    __swift_allocate_boxed_opaque_existential_0(a2);
    sub_1E1AF19EC();
    __swift_destroy_boxed_opaque_existential_1(v38);
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }
}

uint64_t sub_1E14DDB28(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  sub_1E1AF11DC();
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  CGRectGetMinX(v12);
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  CGRectGetMidY(v13);
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();

  return sub_1E1AF106C();
}

double sub_1E14DDC70(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = sub_1E1AF745C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[13];
  __swift_project_boxed_opaque_existential_1Tm(v3 + 10, v9);
  sub_1E13BC274(v9);
  sub_1E1AF12DC();
  v10 = *(v6 + 8);
  v10(v8, v5);
  v11 = v3[8];
  __swift_project_boxed_opaque_existential_1Tm(v3 + 5, v11);
  sub_1E13BC274(v11);
  sub_1E1AF12DC();
  v10(v8, v5);
  return a2;
}

uint64_t sub_1E14DDDFC()
{
  v1 = v0;
  v2 = sub_1E1AF15FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - v7;
  sub_1E1AF15DC();
  __swift_project_boxed_opaque_existential_1Tm(v0, *(v0 + 24));
  sub_1E1AF11FC();
  sub_1E1AF15EC();
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v9 = *(v3 + 8);
  v9(v5, v2);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 40), *(v1 + 64));
  sub_1E1AF11FC();
  sub_1E14DF05C(v0, &v22);
  v10 = swift_allocObject();
  v11 = v33[0];
  v10[11] = v32;
  v10[12] = v11;
  *(v10 + 201) = *(v33 + 9);
  v12 = v29;
  v10[7] = v28;
  v10[8] = v12;
  v13 = v31;
  v10[9] = v30;
  v10[10] = v13;
  v14 = v25;
  v10[3] = v24;
  v10[4] = v14;
  v15 = v27;
  v10[5] = v26;
  v10[6] = v15;
  v16 = v23;
  v10[1] = v22;
  v10[2] = v16;
  v35[3] = v2;
  v35[4] = MEMORY[0x1E69AB968];
  __swift_allocate_boxed_opaque_existential_0(v35);
  sub_1E1AF15EC();

  __swift_destroy_boxed_opaque_existential_1(v34);
  v9(v8, v2);
  if (*(v0 + 200) == 1)
  {
    sub_1E1AF1B3C();
  }

  else
  {
    sub_1E1AF1B4C();
  }

  *(&v23 + 1) = sub_1E1AF1B5C();
  *&v24 = MEMORY[0x1E69ABAF0];
  __swift_allocate_boxed_opaque_existential_0(&v22);
  sub_1E1AF1B6C();
  sub_1E1300B24(v0 + 80, v35);
  v17 = MEMORY[0x1E69E63B0];
  v18 = MEMORY[0x1E69ABBA8];
  v34[3] = MEMORY[0x1E69E63B0];
  v34[4] = MEMORY[0x1E69ABBA8];
  v34[0] = 0;
  sub_1E1300B24(v1 + 120, &v21);
  v20[3] = v17;
  v20[4] = v18;
  v20[0] = 0;
  return sub_1E1AF1BFC();
}

uint64_t sub_1E14DE118(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_1E1AF1BEC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E14DDDFC();
  v14 = [a1 traitCollection];
  sub_1E1869E54(v14, a2, a3, a4, a5);

  (*(v11 + 8))(v13, v10);
  return sub_1E1AF106C();
}

double sub_1E14DE258(void *a1, double a2, double a3)
{
  v4 = sub_1E1AF1BCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF1BEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E14DDDFC();
  v12 = [a1 traitCollection];
  sub_1E1AF197C();
  sub_1E14DF12C(&qword_1EE1E3CC0, MEMORY[0x1E69ABB48], MEMORY[0x1E69ABB38]);
  sub_1E1AF160C();
  sub_1E14DF12C(&qword_1ECEB4CD8, MEMORY[0x1E69ABB20], MEMORY[0x1E69ABB18]);
  sub_1E1AF170C();
  v14 = v13;

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  return v14;
}

double sub_1E14DE4D0(void *a1, double a2, double a3)
{
  v4 = v3;
  v6 = sub_1E1AF1BCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF1BEC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  sub_1E1AF11FC();
  sub_1E1300B24((v3 + 5), v25);
  v14 = MEMORY[0x1E69E63B0];
  v15 = MEMORY[0x1E69ABBA8];
  v23 = MEMORY[0x1E69E63B0];
  v24 = MEMORY[0x1E69ABBA8];
  v22 = 0;
  sub_1E1300B24((v4 + 10), v21);
  v20[4] = v15;
  v20[3] = v14;
  v20[0] = 0;
  sub_1E1AF1BFC();
  v16 = [a1 traitCollection];
  sub_1E1AF197C();
  sub_1E14DF12C(&qword_1EE1E3CC0, MEMORY[0x1E69ABB48], MEMORY[0x1E69ABB38]);
  sub_1E1AF160C();
  sub_1E14DF12C(&qword_1ECEB4CD8, MEMORY[0x1E69ABB20], MEMORY[0x1E69ABB18]);
  sub_1E1AF170C();
  v18 = v17;

  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  return v18;
}

uint64_t sub_1E14DE7E4(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = sub_1E1AF1BEC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  sub_1E1AF11FC();
  sub_1E1300B24((v5 + 5), v25);
  v16 = MEMORY[0x1E69E63B0];
  v17 = MEMORY[0x1E69ABBA8];
  v23 = MEMORY[0x1E69E63B0];
  v24 = MEMORY[0x1E69ABBA8];
  v22 = 0;
  sub_1E1300B24((v6 + 10), v21);
  v20[5] = v17;
  v20[4] = v16;
  v20[1] = 0;
  sub_1E1AF1BFC();
  v18 = [a1 traitCollection];
  sub_1E1869E54(v18, a2, a3, a4, a5);

  (*(v13 + 8))(v15, v12);
  return sub_1E1AF106C();
}

uint64_t sub_1E14DE9D0(void *a1, double a2, double a3, double a4, double a5)
{
  __swift_project_boxed_opaque_existential_1Tm((v5 + 40), *(v5 + 64));
  sub_1E1AF146C();
  v7 = [a1 traitCollection];
  sub_1E14DD708(v9);

  __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
  sub_1E1AF1B7C();
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1E14DEAE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 411))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E14DEB2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 410) = 0;
    *(result + 408) = 0;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 411) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 411) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E14DEBF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 291))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E14DEC3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 290) = 0;
    *(result + 288) = 0;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 291) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 291) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E14DECE0()
{
  result = qword_1ECEB4CB0;
  if (!qword_1ECEB4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4CB0);
  }

  return result;
}

unint64_t sub_1E14DED34()
{
  result = qword_1ECEB4CB8;
  if (!qword_1ECEB4CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4CB8);
  }

  return result;
}

unint64_t sub_1E14DED88()
{
  result = qword_1ECEB4CC0;
  if (!qword_1ECEB4CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4CC0);
  }

  return result;
}

unint64_t sub_1E14DEDDC()
{
  result = qword_1EE1EE4C0;
  if (!qword_1EE1EE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1EE4C0);
  }

  return result;
}

unint64_t sub_1E14DEE30()
{
  result = qword_1EE1DC510;
  if (!qword_1EE1DC510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DC510);
  }

  return result;
}

unint64_t sub_1E14DEE84()
{
  result = qword_1ECEB4CC8;
  if (!qword_1ECEB4CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4CC8);
  }

  return result;
}

unint64_t sub_1E14DEED8()
{
  result = qword_1ECEB4CD0;
  if (!qword_1ECEB4CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4CD0);
  }

  return result;
}

__n128 __swift_memcpy201_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1E14DEF70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E14DEFB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);

  return swift_deallocObject();
}

uint64_t sub_1E14DF12C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E14DF184(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E14DF1CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1E14DF25C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E14DF2A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ArtworkLoadingCollectionElementsObserver.__allocating_init(componentTypeMappingProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1E1308EC0(a1, v2 + 16);
  return v2;
}

uint64_t sub_1E14DF390(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ArtworkLoader();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v6 = v9[0];
  v9[3] = sub_1E13E71B4();
  v9[0] = a1;
  v7 = a1;
  tryToCancelArtworkFetch(into:on:asPartOf:deprioritizingFetches:)(v9, v6, a4, 1);

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t ArtworkLoadingCollectionElementsObserver.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1E14DF48C(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80, &unk_1E1B042D0);
  sub_1E1AF3DBC();
  type metadata accessor for ArtworkLoader();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v5 = v9[0];
  sub_1E1300B24(v10, v9);
  v8[3] = sub_1E13E71B4();
  v8[0] = a1;
  v6 = a1;
  tryToFetch(artworkFor:into:on:asPartOf:)(v9, v8, v5, a3);

  sub_1E14DF7F4(v9);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

void sub_1E14DF574(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ItemLayoutContext(0) - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    do
    {
      sub_1E148BABC(v11, v9);
      v13 = v3[5];
      v14 = v3[6];
      __swift_project_boxed_opaque_existential_1Tm(v3 + 2, v13);
      v15 = (*(v14 + 16))(v9, a2, v13, v14);
      if (v15)
      {
        v16 = v15;
        v17 = swift_conformsToProtocol2();
        if (v17)
        {
          v18 = v17;
          type metadata accessor for ArtworkLoader();
          sub_1E1AF421C();
          sub_1E1AF55EC();
          (*(v18 + 16))(v9, v19[1], a2, v16, v18);
        }
      }

      sub_1E148BB20(v9);
      v11 += v12;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1E14DF7F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4CE0, &unk_1E1B47A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *AdvertAppearanceJournal.__allocating_init(instanceId:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = MEMORY[0x1E69E7CC0];
  return result;
}

void *AdvertAppearanceJournal.init(instanceId:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = MEMORY[0x1E69E7CC0];
  return v2;
}

uint64_t AdvertAppearanceJournal.instanceId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t type metadata accessor for AdvertAppearanceJournal.Entry(uint64_t a1)
{
  result = qword_1EE1D9DF8;
  if (!qword_1EE1D9DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E14DF944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvertAppearanceJournal.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E14DF9B0(uint64_t a1, char a2)
{
  v5 = type metadata accessor for AdvertAppearanceJournal.Entry(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v13 = *(v12 + 28);
  v14 = sub_1E1AEFE6C();
  (*(*(v14 - 8) + 16))(&v11[v13], a1, v14);
  *v11 = a2;
  sub_1E14DF944(v11, v8);
  swift_beginAccess();
  v15 = *(v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 32) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1E172E250(0, v15[2] + 1, 1, v15);
    *(v2 + 32) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1E172E250((v17 > 1), v18 + 1, 1, v15);
  }

  v15[2] = v18 + 1;
  sub_1E14E014C(v8, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18);
  *(v2 + 32) = v15;
  swift_endAccess();
  return sub_1E14E01B0(v11);
}

uint64_t AdvertAppearanceJournal.isVisible.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = *(type metadata accessor for AdvertAppearanceJournal.Entry(0) - 8);
    LOBYTE(v2) = *(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3) ^ 1;
  }

  return v2 & 1;
}

void AdvertAppearanceJournal.lastAppearanceTime.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AdvertAppearanceJournal.Entry(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  swift_beginAccess();
  v13 = *(v1 + 32);
  v14 = *(v13 + 16);

  while (1)
  {
    if (!v14)
    {

      v20 = sub_1E1AEFE6C();
      (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
      return;
    }

    if (v14 > *(v13 + 16))
    {
      break;
    }

    --v14;
    v15 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14;
    sub_1E14DF944(v15, v6);
    v16 = *v6;
    sub_1E14E01B0(v6);
    if ((v16 & 1) == 0)
    {
      sub_1E14DF944(v15, v9);

      sub_1E14E014C(v9, v12);
      v17 = *(v3 + 20);
      v18 = sub_1E1AEFE6C();
      v19 = *(v18 - 8);
      (*(v19 + 32))(a1, &v12[v17], v18);
      (*(v19 + 56))(a1, 0, 1, v18);
      return;
    }
  }

  __break(1u);
}

void AdvertAppearanceJournal.lastDisappearanceTime.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AdvertAppearanceJournal.Entry(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  swift_beginAccess();
  v13 = *(v1 + 32);
  v14 = *(v13 + 16);

  while (1)
  {
    if (!v14)
    {

      v20 = sub_1E1AEFE6C();
      (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
      return;
    }

    if (v14 > *(v13 + 16))
    {
      break;
    }

    --v14;
    v15 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14;
    sub_1E14DF944(v15, v6);
    v16 = *v6;
    sub_1E14E01B0(v6);
    if (v16 == 1)
    {
      sub_1E14DF944(v15, v9);

      sub_1E14E014C(v9, v12);
      v17 = *(v3 + 20);
      v18 = sub_1E1AEFE6C();
      v19 = *(v18 - 8);
      (*(v19 + 32))(a1, &v12[v17], v18);
      (*(v19 + 56))(a1, 0, 1, v18);
      return;
    }
  }

  __break(1u);
}

uint64_t AdvertAppearanceJournal.deinit()
{

  return v0;
}

uint64_t AdvertAppearanceJournal.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E14E014C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvertAppearanceJournal.Entry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E14E01B0(uint64_t a1)
{
  v2 = type metadata accessor for AdvertAppearanceJournal.Entry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E14E0284(uint64_t a1)
{
  result = sub_1E1AEFE6C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E14E0314()
{
  result = qword_1ECEB4CE8;
  if (!qword_1ECEB4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4CE8);
  }

  return result;
}

AppStoreKit::AccountSection::ContentItemType_optional __swiftcall AccountSection.ContentItemType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AccountSection.ContentItemType.rawValue.getter()
{
  v1 = 1802398060;
  v2 = 1954047348;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000021;
  }

  if (*v0)
  {
    v1 = 0x7473694C6F666E69;
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

uint64_t sub_1E14E0448()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E14E0508(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E14E05B4(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E14E067C(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1802398060;
  v4 = 0xE400000000000000;
  v5 = 1954047348;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000021;
    v4 = 0x80000001E1B56A90;
  }

  if (*v1)
  {
    v3 = 0x7473694C6F666E69;
    v2 = 0xEC0000006D657449;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t AccountSection.ContentItem.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v84 = a2;
  v76 = a3;
  v79 = sub_1E1AF39DC();
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v75 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v71 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v71 - v8;
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v71 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v71 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v71 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v71 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v71 - v25;
  sub_1E1AF381C();
  sub_1E14E0E2C();
  v27 = v78;
  sub_1E1AF36AC();
  if (v27)
  {
    (*(v77 + 8))(v84, v79);
    v28 = *(v10 + 8);
    v28(a1, v9);
    return (v28)(v26, v9);
  }

  v30 = *(v10 + 8);
  v78 = v10 + 8;
  v71 = v30;
  v30(v26, v9);
  v31 = v9;
  if (v80 > 1u)
  {
    v74 = 0;
    if (v80 != 2)
    {
      v49 = v14;
      v50 = a1;
      sub_1E1AF381C();
      v51 = sub_1E1AF37CC();
      v53 = v52;
      v54 = v49;
      v55 = v71;
      v71(v54, v31);
      v56 = v73;
      sub_1E1AF381C();
      v57 = sub_1E1AF370C();
      (*(v77 + 8))(v84, v79);
      v55(v50, v31);
      result = (v55)(v56, v31);
      v58 = v80;
      v59 = v76;
      *(v76 + 33) = v81;
      v60 = *v83;
      *(v59 + 49) = v82;
      *(v59 + 65) = v60;
      *v59 = v51;
      *(v59 + 1) = v53;
      *(v59 + 16) = v57 & 1;
      *(v59 + 10) = *&v83[15];
      *(v59 + 17) = v58;
      *(v59 + 88) = 3;
      return result;
    }

    (*(v10 + 16))(v17, a1, v9);
    v38 = v77;
    v39 = v75;
    v40 = v84;
    v41 = v79;
    (*(v77 + 16))(v75, v84, v79);
    type metadata accessor for AccountSectionText();
    swift_allocObject();
    v42 = v74;
    v43 = AccountSectionText.init(deserializing:using:)(v17, v39);
    if (v42)
    {
      (*(v38 + 8))(v40, v41);
      return (v71)(a1, v31);
    }

    v63 = v43;
    (*(v38 + 8))(v40, v41);
    result = (v71)(a1, v31);
    v67 = v76;
    *v76 = v63;
    v64 = v80;
    *(v67 + 24) = v81;
    v65 = *v83;
    *(v67 + 40) = v82;
    *(v67 + 56) = v65;
    *(v67 + 72) = *&v83[16];
    *(v67 + 8) = v64;
    v70 = 2;
  }

  else
  {
    if (!v80)
    {
      v32 = v23;
      (*(v10 + 16))(v23, a1, v9);
      v33 = v77;
      v34 = v72;
      v35 = v84;
      v36 = v79;
      (*(v77 + 16))(v72, v84, v79);
      AccountSectionLink.init(deserializing:using:)(v32, v34, &v80);
      v37 = v76;
      (*(v33 + 8))(v35, v36);
      result = (v71)(a1, v9);
      v83[40] = 0;
      v61 = *v83;
      v37[2] = v82;
      v37[3] = v61;
      v37[4] = *&v83[16];
      v62 = v81;
      *v37 = v80;
      v37[1] = v62;
      *(v37 + 73) = *&v83[25];
      return result;
    }

    v44 = v20;
    (*(v10 + 16))(v20, a1, v9);
    v45 = v77;
    v46 = v74;
    v47 = v84;
    v48 = v79;
    (*(v77 + 16))(v74, v84, v79);
    type metadata accessor for AccountSectionInfoListItem();
    swift_allocObject();
    v66 = AccountSectionInfoListItem.init(deserializing:using:)(v44, v46);
    (*(v45 + 8))(v47, v48);
    result = (v71)(a1, v9);
    v67 = v76;
    *v76 = v66;
    v68 = v80;
    *(v67 + 24) = v81;
    v69 = *v83;
    *(v67 + 40) = v82;
    *(v67 + 56) = v69;
    *(v67 + 72) = *&v83[16];
    *(v67 + 8) = v68;
    v70 = 1;
  }

  *(v67 + 88) = v70;
  return result;
}

unint64_t sub_1E14E0E2C()
{
  result = qword_1ECEB4CF0;
  if (!qword_1ECEB4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4CF0);
  }

  return result;
}

uint64_t AccountSection.ContentItem.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E1AEFEAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  sub_1E14E19F0(v2, v16);
  if (v18 <= 1u)
  {
    if (!v18)
    {
      v13[2] = v16[2];
      v14[0] = v16[3];
      v14[1] = v16[4];
      v15 = v17;
      v13[0] = v16[0];
      v13[1] = v16[1];
      sub_1E134E724(v14, a1);
      return sub_1E14E1A58(v13);
    }

    v12 = *&v16[0] + 48;
    goto LABEL_7;
  }

  if (v18 == 2)
  {
    v12 = *&v16[0] + 24;
LABEL_7:
    sub_1E134E724(v12, a1);
  }

  sub_1E14E1A28(v16);
  sub_1E1AEFE9C();
  (*(v5 + 16))(v7, v10, v4);
  sub_1E14E1AAC(&qword_1EE1FADB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E1AF6F6C();
  return (*(v5 + 8))(v10, v4);
}

uint64_t AccountSection.__allocating_init(id:title:footer:contents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  sub_1E138853C(a1, &v25);
  if (*(&v26 + 1))
  {
    v15 = v26;
    *(v14 + 48) = v25;
    *(v14 + 64) = v15;
    *(v14 + 80) = v27;
  }

  else
  {
    sub_1E1AEFE9C();
    v16 = sub_1E1AEFE7C();
    v24[0] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = v16;
    v22 = v21;
    (*(v11 + 8))(v13, v10);
    v24[1] = v20;
    v24[2] = v22;
    a5 = v19;
    a4 = v18;
    a3 = v17;
    a2 = v24[0];
    sub_1E1AF6F6C();
    sub_1E13E2E98(&v25);
  }

  sub_1E13E2E98(a1);
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  return v14;
}

uint64_t AccountSection.init(id:title:footer:contents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v26);
  if (*(&v27 + 1))
  {
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_1E1AEFE9C();
    v16 = sub_1E1AEFE7C();
    v25[0] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = v16;
    v22 = v21;
    (*(v13 + 8))(v15, v12);
    v25[1] = v20;
    v25[2] = v22;
    a5 = v19;
    a4 = v18;
    a3 = v17;
    a2 = v25[0];
    sub_1E1AF6F6C();
    sub_1E13E2E98(&v26);
  }

  sub_1E13E2E98(a1);
  v23 = v30;
  *(v6 + 48) = v29;
  *(v6 + 64) = v23;
  *(v6 + 80) = v31;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  return v6;
}

uint64_t AccountSection.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AccountSection.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t AccountSection.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = v2;
  v45 = sub_1E1AF39DC();
  v53 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AEFEAC();
  v43 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v44 = a1;
  sub_1E1AF381C();
  v17 = sub_1E1AF37CC();
  v47 = v10;
  if (v18)
  {
    v48 = v17;
    v49 = v18;
    sub_1E1AF6F6C();
    v19 = *(v11 + 8);
    v20 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21 = v16;
    v22 = v10;
    v23 = v10;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = sub_1E1AEFE7C();
    v25 = v7;
    v26 = v3;
    v28 = v27;
    (*(v43 + 8))(v9, v25);
    v48 = v24;
    v49 = v28;
    v3 = v26;
    sub_1E1AF6F6C();
    v19 = *(v11 + 8);
    v20 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21 = v16;
    v23 = v47;
    v22 = v47;
  }

  v29 = v19;
  v19(v21, v23);
  v30 = v51;
  *(v3 + 48) = v50;
  *(v3 + 64) = v30;
  *(v3 + 80) = v52;
  v31 = v44;
  sub_1E1AF381C();
  v32 = sub_1E1AF37CC();
  v34 = v33;
  v42 = v29;
  v43 = v20;
  v29(v13, v22);
  *(v3 + 16) = v32;
  *(v3 + 24) = v34;
  type metadata accessor for LinkableText();
  v35 = v31;
  sub_1E1AF381C();
  v41 = *(v53 + 16);
  v37 = v45;
  v36 = v46;
  v41(v6, v46, v45);
  sub_1E14E1AAC(&qword_1EE1F5FA0, type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  sub_1E1AF464C();
  *(v3 + 32) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4CF8, &qword_1E1B11180);
  sub_1E1AF381C();
  v41(v6, v36, v37);
  sub_1E14E1AF4();
  sub_1E1AF464C();
  if (v50)
  {
    v38 = v50;
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  (*(v53 + 8))(v36, v37);
  v42(v35, v47);
  *(v3 + 40) = v38;
  return v3;
}

uint64_t AccountSection.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *AccountSection.deinit()
{

  sub_1E13E2E98(v0 + 48);
  return v0;
}

uint64_t AccountSection.__deallocating_deinit()
{

  sub_1E13E2E98(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1E14E1978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for AccountSection();
  v7 = swift_allocObject();
  result = AccountSection.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E14E1AAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E14E1AF4()
{
  result = qword_1ECEB4D00;
  if (!qword_1ECEB4D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB4CF8, &qword_1E1B11180);
    sub_1E14E1B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4D00);
  }

  return result;
}

unint64_t sub_1E14E1B78()
{
  result = qword_1ECEB4D08;
  if (!qword_1ECEB4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4D08);
  }

  return result;
}

unint64_t sub_1E14E1BD0()
{
  result = qword_1ECEB4D10;
  if (!qword_1ECEB4D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4D10);
  }

  return result;
}

unint64_t sub_1E14E1C28()
{
  result = qword_1ECEB4D18;
  if (!qword_1ECEB4D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECEB5670, qword_1E1B03EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4D18);
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E14E1D5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 89))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 88);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E14E1D98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 73) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E14E1DEC(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    v2 = a2 - 4;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 88) = a2;
  return result;
}

uint64_t SearchResultsPage.__allocating_init(shelves:unavailableReason:message:facets:selectedFacetOptions:nextPage:isAutoPlayEnabled:isCondensedSearchLockupsEnabled:transparencyLink:guidedSearchTokens:guidedSearchQueries:pageMetrics:pageRenderEvent:resultsParentImpressionMetrics:guidedSearchTokensParentImpressionMetrics:pageRefreshPolicy:searchClearAction:searchCancelAction:context:)(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  LODWORD(v79) = a8;
  LODWORD(v78) = a7;
  v75 = a5;
  v88 = a18;
  v86 = a3;
  v87 = a17;
  v89 = a16;
  v90 = a6;
  v91 = a15;
  v92 = a14;
  v81 = a13;
  v82 = a19;
  v93 = a12;
  v85 = a9;
  v76 = a10;
  v77 = a11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v73 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v84 = &v72 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v80 = &v72 - v27;
  v83 = sub_1E1AF3C3C();
  v28 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83 - 8);
  v94 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = swift_allocObject();
  v31 = *(a2 + 32);
  v32 = *(a2 + 40);
  v74 = *a4;
  v33 = *(a4 + 2);
  v34 = *(a4 + 24);
  *(v30 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_isIncomplete) = 0;
  v35 = sub_1E175EC2C(a1);
  v37 = v36;

  *(v30 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfOrdering) = v35;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfMapping) = v37;
  v38 = v30 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason;
  v39 = *(a2 + 16);
  v40 = v82;
  *v38 = *a2;
  *(v38 + 16) = v39;
  *(v38 + 32) = v31;
  *(v38 + 40) = v32;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_message) = v86;
  v41 = v30 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets;
  *v41 = v74;
  *(v41 + 16) = v33;
  *(v41 + 24) = v34;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_selectedFacetOptions) = v75;
  sub_1E134FD1C(v90, v30 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  *(v30 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_isAutoPlayEnabled) = v78;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_isCondensedSearchLockupsEnabled) = v79;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_transparencyLink) = v85;
  v42 = v77;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_guidedSearchTokens) = v76;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_guidedSearchQueries) = v42;
  sub_1E134FD1C(v92, v30 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_resultsParentImpressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E134FD1C(v91, v30 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  v43 = v88;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_searchClearAction) = v87;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_searchCancelAction) = v43;
  v79 = v28;
  v44 = *(v28 + 16);
  v45 = v94;
  v46 = v83;
  v44(v94, v93, v83);
  v47 = v40;
  v48 = v40;
  v49 = v46;
  v50 = v80;
  sub_1E134FD1C(v48, v80, &qword_1ECEB3B28, &unk_1E1B11460);
  *(v30 + 16) = v89;
  v44((v30 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v45, v46);
  *(v30 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v81;
  v51 = v84;
  sub_1E134FD1C(v50, v84, &qword_1ECEB3B28, &unk_1E1B11460);
  v52 = sub_1E1AF39DC();
  v77 = *(v52 - 8);
  v78 = v52;
  v53 = *(v77 + 48);
  if ((v53)(v51, 1) == 1)
  {
    sub_1E1308058(v47, &qword_1ECEB3B28, &unk_1E1B11460);
    sub_1E1308058(v91, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E1308058(v92, &unk_1ECEB1770, &unk_1E1AFED20);
    v54 = *(v79 + 8);
    v54(v93, v49);
    sub_1E1308058(v90, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v50, &qword_1ECEB3B28, &unk_1E1B11460);
    v54(v94, v49);
    v55 = v51;
  }

  else
  {
    v76 = v53;
    v56 = qword_1EE1E3BC8;

    if (v56 != -1)
    {
      swift_once();
    }

    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v57, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    sub_1E1AF39EC();
    v58 = v95;
    v60 = v77;
    v59 = v78;
    if (v95)
    {
    }

    v61 = *(v60 + 8);
    v61(v84, v59);
    if (!v58)
    {

      sub_1E1308058(v82, &qword_1ECEB3B28, &unk_1E1B11460);
      sub_1E1308058(v91, &unk_1ECEB1770, &unk_1E1AFED20);
      sub_1E1308058(v92, &unk_1ECEB1770, &unk_1E1AFED20);
      v67 = *(v79 + 8);
      v68 = v83;
      v67(v93, v83);
      sub_1E1308058(v90, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v50, &qword_1ECEB3B28, &unk_1E1B11460);
      v67(v94, v68);
      return v30;
    }

    v62 = v73;
    sub_1E134FD1C(v50, v73, &qword_1ECEB3B28, &unk_1E1B11460);
    v63 = v76(v62, 1, v59);
    v64 = v82;
    if (v63 != 1)
    {
      sub_1E15F0974();

      sub_1E1308058(v64, &qword_1ECEB3B28, &unk_1E1B11460);
      sub_1E1308058(v91, &unk_1ECEB1770, &unk_1E1AFED20);
      sub_1E1308058(v92, &unk_1ECEB1770, &unk_1E1AFED20);
      v69 = *(v79 + 8);
      v70 = v83;
      v69(v93, v83);
      sub_1E1308058(v90, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v80, &qword_1ECEB3B28, &unk_1E1B11460);
      v69(v94, v70);
      v61(v62, v59);
      return v30;
    }

    sub_1E1308058(v64, &qword_1ECEB3B28, &unk_1E1B11460);
    sub_1E1308058(v91, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E1308058(v92, &unk_1ECEB1770, &unk_1E1AFED20);
    v65 = *(v79 + 8);
    v66 = v83;
    v65(v93, v83);
    sub_1E1308058(v90, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v80, &qword_1ECEB3B28, &unk_1E1B11460);
    v65(v94, v66);
    v55 = v62;
  }

  sub_1E1308058(v55, &qword_1ECEB3B28, &unk_1E1B11460);
  return v30;
}

uint64_t SearchResultsPage.init(shelves:unavailableReason:message:facets:selectedFacetOptions:nextPage:isAutoPlayEnabled:isCondensedSearchLockupsEnabled:transparencyLink:guidedSearchTokens:guidedSearchQueries:pageMetrics:pageRenderEvent:resultsParentImpressionMetrics:guidedSearchTokensParentImpressionMetrics:pageRefreshPolicy:searchClearAction:searchCancelAction:context:)(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = v19;
  LODWORD(v81) = a8;
  LODWORD(v80) = a7;
  v76 = a5;
  v83 = a19;
  v88 = a18;
  v86 = a3;
  v87 = a17;
  v89 = a16;
  v90 = a6;
  v91 = a15;
  v92 = a14;
  v93 = a12;
  v78 = a11;
  v79 = a13;
  v85 = a9;
  v77 = a10;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v72 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v84 = &v71 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v82 = &v71 - v29;
  v30 = sub_1E1AF3C3C();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a2 + 32);
  v35 = *(a2 + 40);
  v75 = *a4;
  v74 = *(a4 + 2);
  v73 = *(a4 + 24);
  *(v20 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_isIncomplete) = 0;
  v36 = sub_1E175EC2C(a1);
  v38 = v37;

  *(v20 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfOrdering) = v36;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfMapping) = v38;
  v39 = v20 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason;
  v40 = *(a2 + 16);
  v41 = v83;
  *v39 = *a2;
  *(v39 + 16) = v40;
  *(v39 + 32) = v34;
  *(v39 + 40) = v35;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_message) = v86;
  v42 = v20 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets;
  *v42 = v75;
  *(v42 + 16) = v74;
  *(v42 + 24) = v73;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_selectedFacetOptions) = v76;
  sub_1E134FD1C(v90, v20 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  *(v20 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_isAutoPlayEnabled) = v80;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_isCondensedSearchLockupsEnabled) = v81;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_transparencyLink) = v85;
  v43 = v78;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_guidedSearchTokens) = v77;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_guidedSearchQueries) = v43;
  sub_1E134FD1C(v92, v20 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_resultsParentImpressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E134FD1C(v91, v20 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  v44 = v88;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_searchClearAction) = v87;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_searchCancelAction) = v44;
  v81 = v31;
  v45 = *(v31 + 16);
  v45(v33, v93, v30);
  v46 = v41;
  v47 = v41;
  v48 = v82;
  sub_1E134FD1C(v47, v82, &qword_1ECEB3B28, &unk_1E1B11460);
  *(v20 + 16) = v89;
  v80 = v33;
  v45((v20 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v33, v30);
  *(v20 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v79;
  v49 = v84;
  sub_1E134FD1C(v48, v84, &qword_1ECEB3B28, &unk_1E1B11460);
  v50 = sub_1E1AF39DC();
  v77 = *(v50 - 8);
  v78 = v50;
  v51 = *(v77 + 48);
  if ((v51)(v49, 1) == 1)
  {
    sub_1E1308058(v46, &qword_1ECEB3B28, &unk_1E1B11460);
    sub_1E1308058(v91, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E1308058(v92, &unk_1ECEB1770, &unk_1E1AFED20);
    v52 = *(v81 + 8);
    v52(v93, v30);
    sub_1E1308058(v90, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v48, &qword_1ECEB3B28, &unk_1E1B11460);
    v52(v80, v30);
    v53 = v49;
  }

  else
  {
    v54 = v48;
    v55 = qword_1EE1E3BC8;

    if (v55 != -1)
    {
      swift_once();
    }

    v76 = v30;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v56, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    sub_1E1AF39EC();
    v57 = v94;
    v59 = v77;
    v58 = v78;
    if (v94)
    {
    }

    v60 = *(v59 + 8);
    v60(v84, v58);
    if (!v57)
    {

      sub_1E1308058(v83, &qword_1ECEB3B28, &unk_1E1B11460);
      sub_1E1308058(v91, &unk_1ECEB1770, &unk_1E1AFED20);
      sub_1E1308058(v92, &unk_1ECEB1770, &unk_1E1AFED20);
      v66 = *(v81 + 8);
      v67 = v76;
      v66(v93, v76);
      sub_1E1308058(v90, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v54, &qword_1ECEB3B28, &unk_1E1B11460);
      v66(v80, v67);
      return v20;
    }

    v61 = v72;
    sub_1E134FD1C(v54, v72, &qword_1ECEB3B28, &unk_1E1B11460);
    v62 = v51(v61, 1, v58);
    v63 = v83;
    if (v62 != 1)
    {
      sub_1E15F0974();

      sub_1E1308058(v63, &qword_1ECEB3B28, &unk_1E1B11460);
      sub_1E1308058(v91, &unk_1ECEB1770, &unk_1E1AFED20);
      sub_1E1308058(v92, &unk_1ECEB1770, &unk_1E1AFED20);
      v68 = *(v81 + 8);
      v69 = v76;
      v68(v93, v76);
      sub_1E1308058(v90, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v82, &qword_1ECEB3B28, &unk_1E1B11460);
      v68(v80, v69);
      v60(v61, v58);
      return v20;
    }

    sub_1E1308058(v63, &qword_1ECEB3B28, &unk_1E1B11460);
    sub_1E1308058(v91, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E1308058(v92, &unk_1ECEB1770, &unk_1E1AFED20);
    v64 = *(v81 + 8);
    v65 = v76;
    v64(v93, v76);
    sub_1E1308058(v90, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v82, &qword_1ECEB3B28, &unk_1E1B11460);
    v64(v80, v65);
    v53 = v61;
  }

  sub_1E1308058(v53, &qword_1ECEB3B28, &unk_1E1B11460);
  return v20;
}

void (*SearchResultsPage.init(deserializing:using:)(char *a1, uint64_t a2))(void, void)
{
  v3 = v2;
  v123 = a2;
  v115 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v110 = &v104 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D20, &unk_1E1B37820);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v108 = &v104 - v8;
  v125 = sub_1E1AF39DC();
  v120 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v111 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v121 = &v104 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v129 = &v104 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v104 - v15;
  v17 = sub_1E1AF380C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v109 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v107 = &v104 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v106 = &v104 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v104 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v104 - v28;
  v30 = sub_1E1AF5A6C();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v105 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v122 = &v104 - v34;
  v3[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_isIncomplete] = 0;
  v124 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v35 = v31;
  v117 = v18;
  v36 = (v18 + 8);
  v37 = *(v18 + 8);
  v37(v29, v17);
  if ((*(v35 + 48))(v16, 1, v30) == 1)
  {
    sub_1E1308058(v16, &qword_1ECEB1F90, &qword_1E1B00D30);
    v38 = sub_1E1AF5A7C();
    sub_1E14E6B84(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v39 = 0x7365766C656873;
    v40 = v115;
    v39[1] = 0xE700000000000000;
    v39[2] = v40;
    (*(*(v38 - 8) + 104))(v39, *MEMORY[0x1E69AB690], v38);
    swift_willThrow();
    (*(v120 + 8))(v123, v125);
    v37(v124, v17);
    type metadata accessor for SearchResultsPage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v118 = v37;
    v119 = v36;
    v116 = v3;
    v112 = v17;
    v41 = v120;
    (*(v35 + 32))(v122, v16, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    v42 = swift_allocObject();
    *(v42 + 16) = MEMORY[0x1E69E7CC0];
    *&v126 = v42;
    v43 = v30;
    if (qword_1EE1E3BC8 != -1)
    {
      swift_once();
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v44, qword_1EE1E3BD0);
    v45 = v129;
    sub_1E1AF395C();

    (*(v35 + 16))(v105, v122, v43);
    v115 = *(v41 + 16);
    v104 = v35;
    v46 = v121;
    v47 = v125;
    v115(v121, v45, v125);
    type metadata accessor for Shelf(0);
    sub_1E14E6B84(&qword_1EE1E5488, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
    v48 = sub_1E1AF631C();
    v49 = sub_1E175EC2C(v48);
    v51 = v50;

    v105 = v43;
    v52 = v116;
    *&v116[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfOrdering] = v49;
    *&v52[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfMapping] = v51;
    v53 = v52;
    sub_1E1AF381C();
    v54 = v129;
    v55 = v47;
    v56 = v47;
    v57 = v115;
    v115(v46, v129, v56);
    sub_1E14E6210();
    sub_1E1AF464C();
    v58 = &v53[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason];
    v59 = v127;
    *v58 = v126;
    v58[1] = v59;
    v58[2] = v128;
    type metadata accessor for SearchResultsMessage();
    sub_1E1AF381C();
    v57(v46, v54, v55);
    v114 = v41 + 16;
    sub_1E14E6B84(qword_1EE1DB638, type metadata accessor for SearchResultsMessage, &protocol conformance descriptor for SearchResultsMessage);
    sub_1E1AF464C();
    v60 = v116;
    *&v116[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_message] = v126;
    sub_1E1AF381C();
    v57(v46, v54, v55);
    sub_1E14E6264();
    sub_1E1AF464C();
    v61 = v127;
    v62 = BYTE8(v127);
    v63 = v60;
    v64 = &v60[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets];
    *v64 = v126;
    *(v64 + 2) = v61;
    v64[24] = v62;
    v65 = v108;
    sub_1E1AF381C();
    v66 = v112;
    (*(v117 + 56))(v65, 0, 1);
    v67 = *(v64 + 1);
    v68 = *(v64 + 2);
    v69 = v64[24];
    *&v126 = *v64;
    *(&v126 + 1) = v67;
    *&v127 = v68;
    BYTE8(v127) = v69;
    sub_1E13C0418(v126, v67, v68);
    v70 = _s11AppStoreKit10PageFacetsV26deserializeSelectedOptions4from3for5usingSDyAC5FacetVShyAI6OptionVGG9JetEngine10JSONObjectVSg_ACSgAN11JSONContextVtFZ_0(v65, &v126, v123);
    sub_1E13C045C(v126, *(&v126 + 1), v127);
    sub_1E1308058(v65, &qword_1ECEB4D20, &unk_1E1B37820);
    v71 = v63;
    *&v63[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_selectedFacetOptions] = v70;
    sub_1E1AF381C();
    sub_1E1AF37EC();
    v72 = v118;
    v118(v26, v66);
    v73 = &v63[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_nextPage];
    v74 = v127;
    *v73 = v126;
    v73[1] = v74;
    v75 = v106;
    sub_1E1AF381C();
    LOBYTE(v70) = sub_1E1AF370C();
    v72(v75, v66);
    v63[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_isCondensedSearchLockupsEnabled] = v70 & 1;
    v76 = v107;
    sub_1E1AF381C();
    LOBYTE(v70) = sub_1E1AF370C();
    v72(v76, v66);
    v63[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_isAutoPlayEnabled] = v70 & 1;
    type metadata accessor for LinkableText();
    sub_1E1AF381C();
    v77 = v129;
    v78 = v125;
    v79 = v115;
    v115(v121, v129, v125);
    sub_1E14E6B84(&qword_1EE1F5FA0, type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
    sub_1E1AF464C();
    *&v71[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_transparencyLink] = v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D28, &qword_1E1B2D570);
    sub_1E1AF381C();
    v80 = v121;
    v79(v121, v77, v78);
    sub_1E14E6AD0();
    sub_1E1AF464C();
    *&v71[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_guidedSearchTokens] = v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D30, &qword_1E1B11480);
    sub_1E1AF381C();
    v81 = v129;
    v82 = v125;
    v79(v80, v129, v125);
    sub_1E14E6BCC();
    sub_1E1AF464C();
    v83 = v116;
    *&v116[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_guidedSearchQueries] = v126;
    sub_1E1AF46DC();
    sub_1E1AF381C();
    v79(v80, v81, v82);
    v84 = v79;
    v85 = v110;
    sub_1E1AF464C();
    v86 = v83;
    sub_1E134B7C8(v85, &v83[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_resultsParentImpressionMetrics]);
    sub_1E1AF381C();
    v87 = v129;
    v84(v80, v129, v125);
    v88 = v112;
    sub_1E1AF464C();
    v89 = v86;
    sub_1E134B7C8(v85, &v86[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics]);
    type metadata accessor for Action(0);
    v90 = v124;
    sub_1E1AF381C();
    v91 = static Action.tryToMakeInstance(byDeserializing:using:)(v26, v87);
    v92 = v118;
    v118(v26, v88);
    *&v89[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_searchClearAction] = v91;
    sub_1E1AF381C();
    v93 = static Action.tryToMakeInstance(byDeserializing:using:)(v26, v87);
    v94 = v125;
    v95 = v123;
    v92(v26, v88);
    *&v89[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_searchCancelAction] = v93;
    v96 = v109;
    v97 = v90;
    v98 = v88;
    (*(v117 + 16))(v109, v90, v88);
    v99 = v111;
    v115(v111, v95, v94);
    v100 = v113;
    v101 = BasePage.init(deserializing:using:)(v96, v99);
    if (v100)
    {
      v36 = *(v120 + 8);
      v36(v95, v94);
      v118(v97, v98);
      v36(v129, v94);
    }

    else
    {
      v36 = v101;
      v102 = *(v120 + 8);
      v102(v95, v94);
      v118(v97, v98);
      v102(v129, v94);
    }

    (*(v104 + 8))(v122, v105);
  }

  return v36;
}

double sub_1E14E4108(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;

  return result;
}

double sub_1E14E4178(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

void SearchResultsPage.unavailableReason.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason);
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 8);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 16);
  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 24);
  v6 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 32);
  v7 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 40);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_1E13E231C(v2, v3, v4, v5, v6, v7);
}

double SearchResultsPage.facets.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets + 8);
  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v2 + 24);
  return sub_1E13C0418(v3, v4, v5);
}

BOOL sub_1E14E432C()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfOrdering;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v4 = *(v2 + 16);
  v5 = OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfMapping;

  swift_beginAccess();
  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = 0;
  while (2)
  {
    v7 = v2 + 32 + 40 * v6;
    v8 = v6;
    while (1)
    {
      if (v8 >= *(v2 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      sub_1E134E724(v7, v17);
      if (*(*(v0 + v5) + 16))
      {
        break;
      }

LABEL_4:
      ++v8;
      sub_1E134B88C(v17);
      v7 += 40;
      if (v4 == v8)
      {
        goto LABEL_12;
      }
    }

    sub_1E135FCF4(v17);
    if ((v9 & 1) == 0)
    {

      goto LABEL_4;
    }

    v10 = sub_1E134B88C(v17);
    MEMORY[0x1E68FEF20](v10);
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v6 = v8 + 1;
    sub_1E1AF62AC();
    v3 = v18;
    if (v4 - 1 != v8)
    {
      continue;
    }

    break;
  }

LABEL_12:

  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_27:
    v11 = sub_1E1AF71CC();
  }

  else
  {
    v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  do
  {
    v13 = v12;
    if (v11 == v12)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1E68FFD80](v12, v3);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v12 >= *(v7 + 16))
      {
        goto LABEL_26;
      }

      v14 = *(v3 + 8 * v12 + 32);

      if (__OFADD__(v13, 1))
      {
LABEL_23:
        __break(1u);
        break;
      }
    }

    swift_beginAccess();
    v15 = *(*(v14 + 24) + 16);

    v12 = v13 + 1;
  }

  while (!v15);

  return v11 != v13;
}

double sub_1E14E45C4(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfMapping;
  swift_beginAccess();

  sub_1E14E6CA4(v4, a1);
  v6 = v5;

  *(v1 + v3) = v6;

  return result;
}

uint64_t sub_1E14E4650(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v122 = &v109 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v121 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v137 = &v109 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v140 = &v109 - v18;
  v19 = sub_1E1AF3C3C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v120 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v109 - v23;
  ShelfBasedPage.shelves.getter(v4, &protocol witness table for SearchResultsPage);
  v136 = v25;
  v146 = v25;
  ShelfBasedPage.shelves.getter(v4, &protocol witness table for SearchResultsPage);
  if (v26 >> 62)
  {
    goto LABEL_59;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v28 = &unk_1EE215000;
    v134 = MEMORY[0x1E69E7CC0];
    v135 = v20;
    v139 = v24;
    v138 = v16;
    v119 = v19;
    v109 = v7;
    if (!v27)
    {

      goto LABEL_67;
    }

    v29 = __OFSUB__(v27, 1);
    v30 = v27 - 1;
    if (v29)
    {
      __break(1u);
      goto LABEL_61;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {
LABEL_61:
      v24 = MEMORY[0x1E68FFD80](v30);
      v20 = MEMORY[0x1E69E7CC0];
      goto LABEL_9;
    }

    v20 = MEMORY[0x1E69E7CC0];
    if ((v30 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v30 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v24 = *(v26 + 8 * v30 + 32);

LABEL_9:

    v31 = OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfOrdering;
    swift_beginAccess();
    v132 = v31;
    v4 = *(a1 + v31);
    v144 = v20;
    v32 = *(v4 + 16);
    v16 = OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfMapping;

    v26 = swift_beginAccess();
    if (!v32)
    {
      v7 = v20;
      goto LABEL_24;
    }

    v19 = 0;
    v33 = v4 + 32;
    v130 = v32 - 1;
    v7 = MEMORY[0x1E69E7CC0];
    v133 = v24;
    v131 = v4 + 32;
    do
    {
      v24 = (v33 + 40 * v19);
      v20 = v19;
      while (1)
      {
        if (v20 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_58;
        }

        sub_1E134E724(v24, &v145);
        if (*(*&v16[a1] + 16))
        {
          break;
        }

LABEL_13:
        ++v20;
        v26 = sub_1E134B88C(&v145);
        v24 += 40;
        if (v32 == v20)
        {
          v24 = v133;
          goto LABEL_24;
        }
      }

      sub_1E135FCF4(&v145);
      if ((v34 & 1) == 0)
      {

        goto LABEL_13;
      }

      v35 = sub_1E134B88C(&v145);
      MEMORY[0x1E68FEF20](v35);
      if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v19 = v20 + 1;
      v26 = sub_1E1AF62AC();
      v7 = v144;
      v24 = v133;
      v33 = v131;
    }

    while (v130 != v20);
LABEL_24:

    if (!(v7 >> 62))
    {
      v28 = &unk_1EE215000;
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

LABEL_65:

LABEL_66:

LABEL_67:
      v49 = v28[383];
      swift_beginAccess();
      v50 = *(a1 + v49);
      v51 = MEMORY[0x1E69E7CC0];
      v142 = MEMORY[0x1E69E7CC0];
      v52 = *(v50 + 16);
      v53 = OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfMapping;

      swift_beginAccess();
      if (!v52)
      {
        goto LABEL_78;
      }

      v54 = 0;
      v55 = v50 + 32;
      v134 = v52 - 1;
      v136 = v50 + 32;
LABEL_69:
      v56 = v55 + 40 * v54;
      v57 = v54;
      while (1)
      {
        if (v57 >= *(v50 + 16))
        {
          __break(1u);
          goto LABEL_93;
        }

        sub_1E134E724(v56, &v145);
        if (*(*(a1 + v53) + 16))
        {

          sub_1E135FCF4(&v145);
          if (v58)
          {

            v59 = sub_1E134B88C(&v145);
            MEMORY[0x1E68FEF20](v59);
            if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v142 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E1AF625C();
            }

            v54 = v57 + 1;
            sub_1E1AF62AC();
            v51 = v142;
            v55 = v136;
            if (v134 == v57)
            {
LABEL_78:

              sub_1E1728208(v51);
              v60 = v119;
              goto LABEL_79;
            }

            goto LABEL_69;
          }
        }

        ++v57;
        sub_1E134B88C(&v145);
        v56 += 40;
        if (v52 == v57)
        {
          goto LABEL_78;
        }
      }
    }

LABEL_64:
    v28 = &unk_1EE215000;
    if (!sub_1E1AF71CC())
    {
      goto LABEL_65;
    }

LABEL_26:
    if ((v7 & 0xC000000000000001) == 0)
    {
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v7 + 32);

        goto LABEL_29;
      }

      __break(1u);
LABEL_96:
      v97 = sub_1E1AF71CC();
      v37 = v97 - 1;
      if (!__OFSUB__(v97, 1))
      {
        goto LABEL_32;
      }

LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v4 = MEMORY[0x1E68FFD80](0, v7);
LABEL_29:

    if ((MEMORY[0x1E68FFC60](&v24[OBJC_IVAR____TtC11AppStoreKit5Shelf_id], v4 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id) & 1) == 0)
    {

      goto LABEL_66;
    }

    v20 = v136 >> 62;
    if (v136 >> 62)
    {
      goto LABEL_96;
    }

    v36 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v37 = v36 - 1;
    if (__OFSUB__(v36, 1))
    {
      goto LABEL_98;
    }

LABEL_32:
    v38 = *(v24 + 3);
    v131 = v4;
    v145 = v38;

    sub_1E17285A0(v39);
    v40 = v145;
    LOBYTE(v145) = 100;
    v4 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v40, &v145, 1, 2);

    v41 = v136;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v20 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v41 = sub_1E14E6A44(v41);
    }

    if ((v37 & 0x8000000000000000) != 0)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    if (v37 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    *((v41 & 0xFFFFFFFFFFFFFF8) + 8 * v37 + 0x20) = v4;

    v146 = v41;
    v4 = *(a1 + v132);
    v143 = MEMORY[0x1E69E7CC0];
    v43 = *(v4 + 16);

    v26 = swift_beginAccess();
    if (v43)
    {
      v7 = 0;
      v19 = v4 + 32;
      v136 = (v43 - 1);
      v134 = MEMORY[0x1E69E7CC0];
      v133 = v24;
LABEL_39:
      v20 = v19 + 40 * v7;
      v24 = v7;
      while (v24 < *(v4 + 16))
      {
        sub_1E134E724(v20, &v145);
        if (*(*&v16[a1] + 16))
        {

          sub_1E135FCF4(&v145);
          if (v44)
          {
            v20 = v4 + 32;

            v45 = sub_1E134B88C(&v145);
            MEMORY[0x1E68FEF20](v45);
            if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E1AF625C();
            }

            v7 = (v24 + 1);
            v26 = sub_1E1AF62AC();
            v134 = v143;
            if (v136 != v24)
            {
              goto LABEL_39;
            }

            goto LABEL_50;
          }
        }

        ++v24;
        v26 = sub_1E134B88C(&v145);
        v20 += 40;
        if (v43 == v24)
        {
          goto LABEL_50;
        }
      }

LABEL_58:
      __break(1u);
LABEL_59:
      v4 = v26;
      v27 = sub_1E1AF71CC();
      v26 = v4;
      continue;
    }

    break;
  }

LABEL_50:

  v46 = v134;
  v37 = v134 >> 62;
  if (!(v134 >> 62))
  {
    v20 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v20 != 0;
    if (v20 >= v4)
    {
      if ((v134 & 0xC000000000000001) != 0)
      {
        goto LABEL_53;
      }

LABEL_108:

      goto LABEL_109;
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

LABEL_101:
  v98 = sub_1E1AF71CC();
  if (v98 < 0)
  {
    goto LABEL_106;
  }

  v20 = v98;
  v4 = v98 != 0;
  if (sub_1E1AF71CC() < v4)
  {
    goto LABEL_105;
  }

  if (sub_1E1AF71CC() < v20)
  {
    __break(1u);
    goto LABEL_105;
  }

LABEL_107:
  v46 = v134;
  if ((v134 & 0xC000000000000001) == 0)
  {
    goto LABEL_108;
  }

LABEL_53:
  if (v20 <= 1)
  {
    goto LABEL_108;
  }

  type metadata accessor for Shelf(0);

  v47 = v4;
  do
  {
    v48 = v47 + 1;
    sub_1E1AF703C();
    v47 = v48;
  }

  while (v20 != v48);
LABEL_109:

  if (v37)
  {
    v99 = sub_1E1AF728C();
    v100 = v102;
    v4 = v103;
    v101 = v104;

    if (v101)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

  v99 = v46 & 0xFFFFFFFFFFFFFF8;
  v100 = (v46 & 0xFFFFFFFFFFFFFF8) + 32;
  v101 = (2 * v20) | 1;
  if ((v101 & 1) == 0)
  {
LABEL_113:
    sub_1E14E682C(v99, v100, v4, v101, type metadata accessor for Shelf);
    v106 = v105;
    v60 = v119;
    goto LABEL_120;
  }

LABEL_114:
  sub_1E1AF74EC();
  swift_unknownObjectRetain_n();
  v107 = swift_dynamicCastClass();
  if (!v107)
  {
    swift_unknownObjectRelease();
    v107 = MEMORY[0x1E69E7CC0];
  }

  v108 = *(v107 + 16);

  if (__OFSUB__(v101 >> 1, v4))
  {
    __break(1u);
    goto LABEL_123;
  }

  if (v108 != (v101 >> 1) - v4)
  {
LABEL_123:
    swift_unknownObjectRelease_n();
    goto LABEL_113;
  }

  v106 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v60 = v119;
  if (!v106)
  {
    v106 = MEMORY[0x1E69E7CC0];
LABEL_120:
    swift_unknownObjectRelease();
  }

  sub_1E1728208(v106);

LABEL_79:
  v113 = v146;
  v61 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason);
  v127 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 8);
  v62 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 16);
  v63 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 24);
  v64 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 40);
  v126 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 32);
  v134 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_message);
  v65 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets + 8);
  v125 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets);
  v129 = v65;
  v128 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets + 16);
  v112 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_selectedFacetOptions);
  v124 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets + 24);
  sub_1E134FD1C(a1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_nextPage, &v145, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v115 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_isAutoPlayEnabled);
  v114 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_isCondensedSearchLockupsEnabled);
  v133 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_transparencyLink);
  v110 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_guidedSearchTokens);
  v111 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_guidedSearchQueries);
  v66 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v116 = *(v135 + 16);
  v117 = v135 + 16;
  v116(v139, v2 + v66, v60);
  v118 = *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
  sub_1E134FD1C(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_resultsParentImpressionMetrics, v140, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E134FD1C(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics, v138, &unk_1ECEB1770, &unk_1E1AFED20);
  v132 = *(v2 + 16);
  v130 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_searchClearAction);
  v131 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_searchCancelAction);
  v123 = sub_1E1AF39DC();
  v136 = *(v123 - 8);
  (*(v136 + 56))(v137, 1, 1, v123);
  type metadata accessor for SearchResultsPage(0);
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_isIncomplete) = 0;
  sub_1E13E231C(v61, v127, v62, v63, v126, v64);
  sub_1E13C0418(v125, v129, v128);

  v67 = v112;

  v68 = sub_1E175EC2C(v113);
  v70 = v69;

  *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfOrdering) = v68;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfMapping) = v70;
  v71 = (v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason);
  v72 = v127;
  *v71 = v61;
  v71[1] = v72;
  v71[2] = v62;
  v71[3] = v63;
  v71[4] = v126;
  v71[5] = v64;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_message) = v134;
  v73 = v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets;
  v74 = v129;
  *v73 = v125;
  *(v73 + 8) = v74;
  *(v73 + 16) = v128;
  *(v73 + 24) = v124;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_selectedFacetOptions) = v67;
  sub_1E134FD1C(&v145, v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_isAutoPlayEnabled) = v115;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_isCondensedSearchLockupsEnabled) = v114;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_transparencyLink) = v133;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_guidedSearchTokens) = v110;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_guidedSearchQueries) = v111;
  sub_1E134FD1C(v140, v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_resultsParentImpressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E134FD1C(v138, v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_searchClearAction) = v130;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_searchCancelAction) = v131;
  v75 = v120;
  v76 = v116;
  v116(v120, v139, v60);
  v77 = v121;
  sub_1E134FD1C(v137, v121, &qword_1ECEB3B28, &unk_1E1B11460);
  *(v2 + 16) = v132;
  v76(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v75, v60);
  *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v118;
  v78 = v122;
  v79 = v123;
  sub_1E134FD1C(v77, v122, &qword_1ECEB3B28, &unk_1E1B11460);
  v54 = *(v136 + 48);
  if ((v54)(v78, 1, v79) == 1)
  {

    sub_1E1308058(v77, &qword_1ECEB3B28, &unk_1E1B11460);
    v80 = *(v135 + 8);
    v80(v75, v60);
    sub_1E1308058(v137, &qword_1ECEB3B28, &unk_1E1B11460);
    sub_1E1308058(v138, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E1308058(v140, &unk_1ECEB1770, &unk_1E1AFED20);
    v80(v139, v60);
    sub_1E1308058(&v145, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v81 = v78;
    v82 = &qword_1ECEB3B28;
    goto LABEL_87;
  }

  v53 = v60;
  v83 = qword_1EE1E3BC8;

  if (v83 != -1)
  {
LABEL_93:
    swift_once();
  }

  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
  __swift_project_value_buffer(v84, qword_1EE1E3BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
  sub_1E1AF39EC();
  v85 = v141;
  v86 = v109;
  v87 = v139;
  v88 = v120;
  if (v141)
  {
  }

  v89 = *(v136 + 8);
  v90 = v123;
  v136 += 8;
  v89(v122, v123);
  if (!v85)
  {
    sub_1E1308058(v121, &qword_1ECEB3B28, &unk_1E1B11460);
    v94 = *(v135 + 8);
    v94(v88, v53);
    sub_1E1308058(v137, &qword_1ECEB3B28, &unk_1E1B11460);
    sub_1E1308058(v138, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E1308058(v140, &unk_1ECEB1770, &unk_1E1AFED20);
    v94(v87, v53);
    v82 = &qword_1ECEB2DF0;
    v93 = &unk_1E1B02CE0;
    v81 = &v145;
    goto LABEL_89;
  }

  v91 = v121;
  sub_1E134FD1C(v121, v86, &qword_1ECEB3B28, &unk_1E1B11460);
  if ((v54)(v86, 1, v90) == 1)
  {
    sub_1E1308058(v91, &qword_1ECEB3B28, &unk_1E1B11460);
    v92 = *(v135 + 8);
    v92(v88, v53);
    sub_1E1308058(v137, &qword_1ECEB3B28, &unk_1E1B11460);
    sub_1E1308058(v138, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E1308058(v140, &unk_1ECEB1770, &unk_1E1AFED20);
    v92(v87, v53);
    sub_1E1308058(&v145, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v81 = v86;
    v82 = &qword_1ECEB3B28;
LABEL_87:
    v93 = &unk_1E1B11460;
LABEL_89:
    sub_1E1308058(v81, v82, v93);
  }

  else
  {
    sub_1E15F0974();
    sub_1E1308058(v91, &qword_1ECEB3B28, &unk_1E1B11460);
    v96 = *(v135 + 8);
    v96(v88, v53);
    sub_1E1308058(v137, &qword_1ECEB3B28, &unk_1E1B11460);
    sub_1E1308058(v138, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E1308058(v140, &unk_1ECEB1770, &unk_1E1AFED20);
    v96(v87, v53);
    sub_1E1308058(&v145, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v89(v86, v123);
  }

  return v2;
}

uint64_t sub_1E14E5CFC()
{

  sub_1E14E6F50(*(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason), *(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 24), *(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 32), *(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 40));

  sub_1E13C045C(*(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets), *(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets + 16));

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_resultsParentImpressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
}

uint64_t SearchResultsPage.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E14E6F50(*(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason), *(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 24), *(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 32), *(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 40));

  sub_1E13C045C(*(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets), *(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets + 16));

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_resultsParentImpressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return v0;
}

uint64_t SearchResultsPage.__deallocating_deinit()
{
  SearchResultsPage.deinit();

  return swift_deallocClassInstance();
}

double sub_1E14E6074(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1E14E60F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E14E4650(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1E14E614C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v2 = result;
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  v2 = sub_1E1AF71CC();
  result = sub_1E1AF71CC();
  if ((result & 0x8000000000000000) == 0)
  {
    result = sub_1E1AF71CC();
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (result >= v2)
      {
        return v2;
      }
    }

LABEL_7:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SearchResultsPage(uint64_t a1)
{
  result = qword_1EE1DE588;
  if (!qword_1EE1DE588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E14E6210()
{
  result = qword_1EE1D5FF0[0];
  if (!qword_1EE1D5FF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1D5FF0);
  }

  return result;
}

unint64_t sub_1E14E6264()
{
  result = qword_1EE1E0B80;
  if (!qword_1EE1E0B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E0B80);
  }

  return result;
}

uint64_t sub_1E14E62B8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  v3 = sub_1E1AF71CC();
  result = sub_1E1AF71CC();
  if ((result & 0x8000000000000000) == 0)
  {
    result = sub_1E1AF71CC();
    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (result >= v3)
      {
        if (v3)
        {
          v4 = sub_1E154713C();

          v5 = sub_1E1546024(&v6, v4 + 32, v3, a1);

          if (v5 == v3)
          {
            return v4;
          }

          __break(1u);
        }

        return MEMORY[0x1E69E7CC0];
      }
    }

LABEL_11:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E14E6394(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7FA0, &unk_1E1B02A20);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AC0, &unk_1E1B03780);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1E14E6490(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2618, &unk_1E1B11580);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 120);
      if (v4 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB420, &unk_1E1B02A60);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1E14E65A8(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1E154713C();

    MEMORY[0x1E68FFD50](v3 + 32, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_1E1AF71CC();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_1E14E665C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D48, &qword_1E1B22190);
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D40, &qword_1E1B11590) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D40, &qword_1E1B11590);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1E14E682C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1E14E6A44(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1E1AF71CC();
  }

  return sub_1E1AF706C();
}

unint64_t sub_1E14E6AD0()
{
  result = qword_1EE1D2670;
  if (!qword_1EE1D2670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB4D28, &qword_1E1B2D570);
    sub_1E14E6B84(&qword_1EE1DEB48, type metadata accessor for GuidedSearchToken, &protocol conformance descriptor for GuidedSearchToken);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2670);
  }

  return result;
}

uint64_t sub_1E14E6B84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E14E6BCC()
{
  result = qword_1EE1D2678;
  if (!qword_1EE1D2678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB4D30, &qword_1E1B11480);
    sub_1E14E6C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2678);
  }

  return result;
}

unint64_t sub_1E14E6C50()
{
  result = qword_1EE1DEB50;
  if (!qword_1EE1DEB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DEB50);
  }

  return result;
}

void sub_1E14E6CA4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  v5 = MEMORY[0x1E69E7CC8];
  v38 = MEMORY[0x1E69E7CC8];
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_11:
  while (1)
  {
    v13 = __clz(__rbit64(v9)) | (v11 << 6);
    sub_1E134E724(*(a1 + 48) + 40 * v13, v36);
    *(&v37 + 1) = *(*(a1 + 56) + 8 * v13);
    v33 = v36[0];
    v34 = v36[1];
    v35 = v37;
    v14 = *(&v37 + 1);

    v15 = a2(v14);
    if (v3)
    {
      break;
    }

    v16 = v15;
    v9 &= v9 - 1;
    if (v15)
    {
      v31 = v34;
      v32 = v35;
      v30 = v33;
      v17 = *(v5 + 16);
      if (*(v5 + 24) <= v17)
      {
        sub_1E16889E4(v17 + 1, 1);
        v5 = v38;
      }

      v18 = sub_1E1AF6F2C();
      v19 = v5 + 64;
      v20 = -1 << *(v5 + 32);
      v21 = v18 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v5 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_25;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v5 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v28 = *(v5 + 48) + 40 * v23;
      *v28 = v30;
      *(v28 + 16) = v31;
      *(v28 + 32) = v32;
      *(*(v5 + 56) + 8 * v23) = v16;
      ++*(v5 + 16);

      if (!v9)
      {
LABEL_7:
        while (1)
        {
          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v12 >= v10)
          {
            goto LABEL_28;
          }

          v9 = *(v6 + 8 * v12);
          ++v11;
          if (v9)
          {
            v11 = v12;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      sub_1E1308058(&v33, &qword_1ECEB4D38, &qword_1E1B37D10);
      if (!v9)
      {
        goto LABEL_7;
      }
    }
  }

  sub_1E1308058(&v33, &qword_1ECEB4D38, &qword_1E1B37D10);

LABEL_28:
}

void sub_1E14E6F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

double keypath_getTm_0@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);

  return result;
}

void sub_1E14E7014(uint64_t a1)
{
  sub_1E134EAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *FlowBackAction.__allocating_init(id:title:actionMetrics:dismissal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a2;
  v27 = a3;
  v8 = sub_1E1AEFEAC();
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF3E1C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = swift_allocObject();
  sub_1E1AF3DFC();
  sub_1E1AF556C();
  sub_1E138853C(a1, v33);
  (*(v12 + 16))(&v13[OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics], a4, v11);
  v14 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v15 = sub_1E1AF46DC();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  v16 = &v13[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v17 = &v13[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E138853C(v33, &v30);
  if (*(&v31 + 1))
  {
    v18 = v31;
    *v17 = v30;
    *(v17 + 1) = v18;
    *(v17 + 4) = v32;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v21 = v20;
    (*(v25 + 8))(v10, v8);
    v28 = v19;
    v29 = v21;
    sub_1E1AF6F6C();
    sub_1E1308058(&v30, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v12 + 8))(a4, v11);
  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v33, &unk_1ECEB5670, qword_1E1B03EC0);
  v22 = v27;
  *(v13 + 2) = v26;
  *(v13 + 3) = v22;
  *(v13 + 4) = 0;
  *(v13 + 5) = 0;
  return v13;
}

void *FlowBackAction.init(id:title:actionMetrics:dismissal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v40 = a6;
  v39 = a5;
  v42 = a4;
  v43 = a2;
  v44 = a3;
  v41 = a1;
  v38 = sub_1E1AEFEAC();
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v36 - v11;
  v13 = sub_1E1AF3E1C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1E1AF559C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF3DFC();
  v22 = v12;
  sub_1E1AF556C();
  v23 = v21;
  v24 = v42;
  v25 = v18;
  v26 = v41;
  (*(v19 + 32))(v7 + OBJC_IVAR____TtC11AppStoreKit14FlowBackAction_base, v23, v25);
  sub_1E138853C(v26, v53);
  (*(v14 + 16))(v16, v24, v13);
  v27 = sub_1E1AF46DC();
  (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
  v28 = (v7 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v28 = 0u;
  v28[1] = 0u;
  sub_1E138853C(v53, &v47);
  if (*(&v48 + 1))
  {
    v50 = v47;
    v51 = v48;
    v52 = v49;
  }

  else
  {
    sub_1E1AEFE9C();
    v29 = sub_1E1AEFE7C();
    v31 = v30;
    (*(v37 + 8))(v9, v38);
    v45 = v29;
    v46 = v31;
    sub_1E1AF6F6C();
    sub_1E1308058(&v47, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v14 + 8))(v24, v13);
  sub_1E1308058(v26, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v53, &unk_1ECEB5670, qword_1E1B03EC0);
  v32 = v7 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v32 + 4) = v52;
  v33 = v51;
  *v32 = v50;
  *(v32 + 1) = v33;
  sub_1E134B7C8(v22, v7 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v34 = v44;
  v7[2] = v43;
  v7[3] = v34;
  v7[4] = 0;
  v7[5] = 0;
  (*(v14 + 32))(v7 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v16, v13);
  return v7;
}

char *FlowBackAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v37 = v2;
  v30 = *v3;
  v5 = sub_1E1AF39DC();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF3E1C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v31 = sub_1E1AF559C();
  v8 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v39 = a1;
  sub_1E1AF381C();
  sub_1E14E8274();
  sub_1E1AF36DC();
  v18 = v17;
  v19 = *(v12 + 8);
  v19(v18, v11);
  if (v38)
  {
    v30 = v19;
    sub_1E1AF3DFC();
    sub_1E1AF556C();
    (*(v8 + 32))(v37 + OBJC_IVAR____TtC11AppStoreKit14FlowBackAction_base, v10, v31);
    v20 = v39;
    (*(v12 + 16))(v14, v39, v11);
    v22 = v34;
    v21 = v35;
    v23 = v32;
    v24 = v36;
    (*(v34 + 16))(v32, v36, v35);
    v25 = v33;
    v26 = Action.init(deserializing:using:)(v14, v23);
    if (!v25)
    {
      v14 = v26;
    }

    (*(v22 + 8))(v24, v21);
    v30(v20, v11);
  }

  else
  {
    v14 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v27 = 0x617373696D736964;
    v28 = v30;
    v27[1] = 0xE90000000000006CLL;
    v27[2] = v28;
    (*(*(v14 - 1) + 104))(v27, *MEMORY[0x1E69AB690], v14);
    swift_willThrow();
    (*(v34 + 8))(v36, v35);
    v19(v39, v11);
    swift_deallocPartialClassInstance();
  }

  return v14;
}

uint64_t FlowBackAction.base.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC11AppStoreKit14FlowBackAction_base;
  v5 = sub_1E1AF559C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v2 + v4, v5);
}

uint64_t sub_1E14E7FB0(double a1)
{
  v2 = OBJC_IVAR____TtC11AppStoreKit14FlowBackAction_base;
  v3 = sub_1E1AF559C();
  v4 = *(*(v3 - 8) + 8);

  return v4(v1 + v2, v3);
}

uint64_t FlowBackAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v3 = OBJC_IVAR____TtC11AppStoreKit14FlowBackAction_base;
  v4 = sub_1E1AF559C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t FlowBackAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v3 = OBJC_IVAR____TtC11AppStoreKit14FlowBackAction_base;
  v4 = sub_1E1AF559C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

unint64_t sub_1E14E8274()
{
  result = qword_1ECEB4D50;
  if (!qword_1ECEB4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4D50);
  }

  return result;
}

uint64_t type metadata accessor for FlowBackAction(uint64_t a1)
{
  result = qword_1ECEB4D58;
  if (!qword_1ECEB4D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E14E831C(uint64_t a1, double a2)
{
  result = sub_1E1AF559C();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double SearchGhostHintMetricsTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return result;
}

double SearchGhostHintMetricsTracker.init()()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return result;
}

uint64_t SearchGhostHintMetricsTracker.searchGhostHintPrefix.getter()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchGhostHintMetricsTracker.searchGhostHintTerm.getter()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  v1 = *(v0 + 32);

  return v1;
}

uint64_t SearchGhostHintMetricsTracker.searchGhostHintTermPhase.getter()
{
  if (*(v0 + 24))
  {
    return *&aPending_2[8 * *(v0 + 48)];
  }

  else
  {
    return 0;
  }
}

uint64_t SearchGhostHintMetricsTracker.searchGhostHintTermLastDisplayed.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

Swift::Void __swiftcall SearchGhostHintMetricsTracker.trackPendingExpansion(of:from:)(Swift::String of, Swift::String from)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 16) = from;
  *(v2 + 32) = of;
  *(v2 + 48) = 0;

  sub_1E14E85BC(v3, v4, v5, v6);
}

double sub_1E14E85BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

Swift::Void __swiftcall SearchGhostHintMetricsTracker.trackDisplayedExpansion(of:from:)(Swift::String of, Swift::String from)
{
  v3 = *(v2 + 24);
  if (v3)
  {
    object = of._object;
    countAndFlagsBits = of._countAndFlagsBits;
    v6 = *(v2 + 32);
    v7 = *(v2 + 40);
    v8 = *(v2 + 16) == from._countAndFlagsBits && v3 == from._object;
    if (v8 || (sub_1E1AF74AC() & 1) != 0)
    {
      v9 = v6 == countAndFlagsBits && v7 == object;
      if (v9 || (sub_1E1AF74AC() & 1) != 0)
      {
        *(v2 + 48) = 1;
        swift_beginAccess();
        *(v2 + 56) = countAndFlagsBits;
        *(v2 + 64) = object;
      }
    }
  }
}

Swift::Void __swiftcall SearchGhostHintMetricsTracker.trackDeletedExpansion(of:from:)(Swift::String of, Swift::String from)
{
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = *(v2 + 32);
    v5 = *(v2 + 40);
    v6 = *(v2 + 16) == from._countAndFlagsBits && v3 == from._object;
    if (v6 || (countAndFlagsBits = of._countAndFlagsBits, object = of._object, v9 = sub_1E1AF74AC(), of._object = object, v10 = v9, of._countAndFlagsBits = countAndFlagsBits, (v10 & 1) != 0))
    {
      v11 = v4 == of._countAndFlagsBits && v5 == of._object;
      if (v11 || (sub_1E1AF74AC() & 1) != 0)
      {
        *(v2 + 48) = 2;
      }
    }
  }
}

Swift::Void __swiftcall SearchGhostHintMetricsTracker.clearTrackedState()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_1E14E85BC(v1, v2, v3, v4);
}

uint64_t *SearchGhostHintMetricsTracker.deinit()
{
  sub_1E14E85BC(v0[2], v0[3], v0[4], v0[5]);

  return v0;
}

uint64_t SearchGhostHintMetricsTracker.__deallocating_deinit()
{
  sub_1E14E85BC(v0[2], v0[3], v0[4], v0[5]);

  return swift_deallocClassInstance();
}

uint64_t sub_1E14E8800()
{
  if (!*(*v0 + 24))
  {
    return 0;
  }

  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1E14E8844()
{
  if (!*(*v0 + 24))
  {
    return 0;
  }

  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_1E14E88B0()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 56);

  return v2;
}

uint64_t sub_1E14E8950(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1E14E8998(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E14E89FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6579616C70736964;
  v4 = 0xE900000000000064;
  if (v2 != 1)
  {
    v3 = 0x646574656C6564;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x676E69646E6570;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6579616C70736964;
  v8 = 0xE900000000000064;
  if (*a2 != 1)
  {
    v7 = 0x646574656C6564;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x676E69646E6570;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E14E8B08()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E14E8BB0(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E14E8C44(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

unint64_t sub_1E14E8CE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E14E8DD4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1E14E8D18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000064;
  v5 = 0x6579616C70736964;
  if (v2 != 1)
  {
    v5 = 0x646574656C6564;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E69646E6570;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}