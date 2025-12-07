unint64_t sub_24A7CE5F4(void *a1)
{
  sub_24A698230(a1, v15);
  v3 = sub_24A6F5EE8(v15);
  if (!v1)
  {
    v4 = qword_281515DC8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_24A82CDC4();
    sub_24A6797D0(v5, qword_281518F88);

    v6 = sub_24A82CD94();
    v7 = sub_24A82D504();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315138;
      v10 = sub_24A6F6244();
      v12 = v11;

      v13 = sub_24A68761C(v10, v12, v15);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_24A675000, v6, v7, "FMIPLostModeResponse: initialized with coder %s", v8, 0xCu);
      sub_24A6876E8(v9);
      MEMORY[0x24C21E1D0](v9, -1, -1);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    else
    {
    }
  }

  sub_24A6876E8(a1);
  return v3;
}

uint64_t sub_24A7CE7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A7CE84C(uint64_t a1)
{
  v2 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A7CE8B4(uint64_t a1)
{
  v2 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A7CE95C(void *a1)
{
  sub_24A698230(a1, v15);
  v3 = sub_24A6F5EE8(v15);
  if (!v1)
  {
    v4 = qword_281515DC8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_24A82CDC4();
    sub_24A6797D0(v5, qword_281518F88);

    v6 = sub_24A82CD94();
    v7 = sub_24A82D504();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315138;
      v10 = sub_24A6F6244();
      v12 = v11;

      v13 = sub_24A68761C(v10, v12, v15);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_24A675000, v6, v7, "FMIPNotifyResponse: initialized with coder %s", v8, 0xCu);
      sub_24A6876E8(v9);
      MEMORY[0x24C21E1D0](v9, -1, -1);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    else
    {
    }
  }

  sub_24A6876E8(a1);
  return v3;
}

void FMIPAccessoryError.init(underlyingError:discoveryType:)(uint64_t *__return_ptr a1@<X8>, id a2@<X0>, char *a3@<X1>)
{
  v3 = a2;
  if (!a2)
  {
    goto LABEL_14;
  }

  v5 = *a3;
  v13 = a2;
  v6 = a2;
  v7 = v3;
  sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
  type metadata accessor for SPAccessoryDiscoverySessionError(0);
  if (swift_dynamicCast())
  {
    v8 = v16;
    v15 = v16;
    sub_24A7CF5B8(&qword_27EF5CEA0, type metadata accessor for SPAccessoryDiscoverySessionError, &unk_24A830AF0);
    sub_24A82C7A4();

    if (v12 != 1)
    {
      v9 = 1;
LABEL_11:
      v3 = v8;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v13 = v3;
  v10 = v3;
  type metadata accessor for SPUnknownDiscoverySessionError(0);
  if (swift_dynamicCast())
  {
    v8 = v16;
    v15 = v16;
    sub_24A7CF5B8(&qword_27EF5CED8, type metadata accessor for SPUnknownDiscoverySessionError, &unk_24A830C00);
    sub_24A82C7A4();

    if (v12 != 1)
    {
      v9 = 3;
      goto LABEL_11;
    }

LABEL_7:

    v3 = 0;
    v9 = 4;
LABEL_12:

    goto LABEL_15;
  }

  v16 = v3;
  v11 = v3;
  type metadata accessor for SPPairingSessionError(0);
  if (!swift_dynamicCast())
  {

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  LOBYTE(v12) = v5;
  sub_24A7CEDC0(v15, &v12, &v13);

  v3 = v13;
  v9 = v14;

LABEL_15:
  *a1 = v3;
  *(a1 + 8) = v9;
}

void sub_24A7CEDC0(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  type metadata accessor for SPPairingSessionError(0);
  sub_24A7CF5B8(&qword_27EF5CE60, type metadata accessor for SPPairingSessionError, &unk_24A8308F0);
  sub_24A82C7A4();
  switch(v7)
  {
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 11:
    case 19:

      v6 = 4;
      a1 = 3;
      break;
    case 4:
    case 9:
    case 10:
    case 20:

      v6 = 4;
      a1 = 1;
      break;
    case 12:
      v6 = 0;
      break;
    case 13:

      a1 = 4;
      v6 = 4;
      break;
    case 14:

      v6 = 4;
      a1 = 5;
      break;
    case 15:

      v6 = 4;
      a1 = 9;
      break;
    case 16:

      if (v5 < 2)
      {
        a1 = 6;
      }

      else
      {
        a1 = 7;
      }

      v6 = 4;
      break;
    case 17:

      v6 = 4;
      a1 = 2;
      break;
    case 18:

      v6 = 4;
      a1 = 8;
      break;
    default:
      v6 = 1;
      break;
  }

  *a3 = a1;
  *(a3 + 8) = v6;
}

uint64_t sub_24A7CEF24(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      return 0x5F4E574F4E4B4E55;
    }

    else
    {
      return 0x4E574F4E4B4E55;
    }
  }

  else
  {
    if (a2 == 2)
    {
      return 0xD000000000000011;
    }

    if (a2 == 3)
    {
      return 0xD000000000000014;
    }

    if (a1 > 4)
    {
      if (a1 <= 6)
      {
        v3 = 0xD000000000000017;
        v4 = a1 == 5;
LABEL_27:
        if (v4)
        {
          return 0xD000000000000015;
        }

        else
        {
          return v3;
        }
      }

      v5 = 0x5F59524554544142;
      if (a1 == 8)
      {
        v5 = 0xD000000000000010;
      }

      if (a1 == 7)
      {
        return 0xD000000000000014;
      }

      else
      {
        return v5;
      }
    }

    else
    {
      if (a1 > 1)
      {
        v3 = 0xD00000000000001DLL;
        if (a1 != 3)
        {
          v3 = 0xD000000000000011;
        }

        v4 = a1 == 2;
        goto LABEL_27;
      }

      if (a1)
      {
        return 0xD000000000000015;
      }

      else
      {
        return 0xD000000000000012;
      }
    }
  }
}

uint64_t sub_24A7CF11C()
{
  v1 = sub_24A7CEF24(*v0, *(v0 + 8));
  v3 = v2;
  sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24A8356C0;
  *(v4 + 32) = 0xD000000000000019;
  *(v4 + 40) = 0x800000024A849A50;
  *(v4 + 48) = v1;
  *(v4 + 56) = v3;
  sub_24A6BBA94(&qword_27EF5D9D0, &qword_24A835090);
  sub_24A6FC920();
  v5 = sub_24A82CF74();

  MEMORY[0x24C21C9E0](0x545F5452454C415FLL, 0xEC000000454C5449);
  return v5;
}

uint64_t sub_24A7CF220()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24A82D854();
  v3 = sub_24A7CEF24(v1, v2);
  v5 = v4;
  sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24A8356C0;
  *(v6 + 32) = 0xD000000000000019;
  *(v6 + 40) = 0x800000024A849A50;
  *(v6 + 48) = v3;
  *(v6 + 56) = v5;
  sub_24A6BBA94(&qword_27EF5D9D0, &qword_24A835090);
  sub_24A6FC920();
  v7 = sub_24A82CF74();

  MEMORY[0x24C21C9E0](0xD000000000000012, 0x800000024A849BD0);
  return v7;
}

uint64_t sub_24A7CF36C(uint64_t (*a1)(void))
{
  a1();
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_24A82C6F4();

  return v3;
}

uint64_t sub_24A7CF4E4(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_24A7CF500(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24A7CF514(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24A7CF55C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_24A7CF5A0(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_24A7CF5B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A7CF600(uint64_t a1)
{
  v3 = type metadata accessor for FMIPDevice(0);
  v47 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v46 = v5;
  v43[1] = v1;
  v105 = MEMORY[0x277D84F90];
  sub_24A6FCBB8(0, v6, 0);
  v7 = v105;
  v51 = a1 + 64;
  result = sub_24A82D6C4();
  if (result < 0 || (v9 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_25:
    __break(1u);
  }

  else
  {
    v108 = *(a1 + 36);
    v44 = a1 + 72;
    v45 = v6;
    v10 = 1;
    v48 = a1;
    while (1)
    {
      v11 = v9 >> 6;
      if ((*(v51 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        break;
      }

      if (v108 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v49 = 1 << v9;
      v12 = *(a1 + 56);
      v13 = (*(a1 + 48) + 16 * v9);
      v15 = *v13;
      v14 = v13[1];
      v16 = (v12 + 208 * v9);
      v65[0] = *v16;
      v17 = v16[4];
      v19 = v16[1];
      v18 = v16[2];
      v65[3] = v16[3];
      v65[4] = v17;
      v65[1] = v19;
      v65[2] = v18;
      v20 = v16[8];
      v22 = v16[5];
      v21 = v16[6];
      v65[7] = v16[7];
      v65[8] = v20;
      v65[5] = v22;
      v65[6] = v21;
      v24 = v16[10];
      v23 = v16[11];
      v25 = v16[9];
      *(v66 + 9) = *(v16 + 185);
      v65[10] = v24;
      v66[0] = v23;
      v65[9] = v25;
      v26 = v16[11];
      v63 = v16[10];
      v64[0] = v26;
      *(v64 + 9) = *(v16 + 185);
      v27 = v16[7];
      v59 = v16[6];
      v60 = v27;
      v28 = v16[9];
      v61 = v16[8];
      v62 = v28;
      v29 = v16[3];
      v55 = v16[2];
      v56 = v29;
      v30 = v16[5];
      v57 = v16[4];
      v58 = v30;
      v31 = v16[1];
      v53 = *v16;
      v54 = v31;
      memmove(&v67, v16, 0xC9uLL);
      v79[0] = v15;
      v79[1] = v14;
      v90 = v63;
      v91[0] = v64[0];
      *(v91 + 9) = *(v64 + 9);
      v86 = v59;
      v87 = v60;
      v88 = v61;
      v89 = v62;
      v82 = v55;
      v83 = v56;
      v84 = v57;
      v85 = v58;
      v80 = v53;
      v81 = v54;
      swift_bridgeObjectRetain_n();
      sub_24A71FF60(v65, v52);
      sub_24A71FF60(&v67, v52);
      v50 = v7;
      sub_24A67F378(v79, &qword_27EF5F130, &unk_24A83D9A0);
      v103 = v77;
      v104[0] = v78[0];
      *(v104 + 9) = *(v78 + 9);
      v99 = v73;
      v100 = v74;
      v101 = v75;
      v102 = v76;
      v95 = v69;
      v96 = v70;
      v97 = v71;
      v98 = v72;
      v93 = v67;
      v94 = v68;
      v106[10] = v77;
      v107[0] = v78[0];
      *(v107 + 9) = *(v78 + 9);
      v106[6] = v73;
      v106[7] = v74;
      v106[9] = v76;
      v106[8] = v75;
      v106[2] = v69;
      v106[3] = v70;
      v106[5] = v72;
      v106[4] = v71;
      v92[0] = v15;
      v92[1] = v14;
      v106[1] = v68;
      v106[0] = v67;
      v32 = v46;
      sub_24A7D00D0(v15, v14, v106, v46);
      v7 = v50;
      sub_24A67F378(v92, &qword_27EF5F130, &unk_24A83D9A0);
      v105 = v7;
      v34 = *(v7 + 16);
      v33 = *(v7 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_24A6FCBB8((v33 > 1), v34 + 1, 1);
        v7 = v105;
      }

      *(v7 + 16) = v34 + 1;
      result = sub_24A6CAF68(v32, v7 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v34);
      a1 = v48;
      v35 = 1 << *(v48 + 32);
      if (v9 >= v35)
      {
        goto LABEL_28;
      }

      v36 = *(v51 + 8 * v11);
      if ((v36 & v49) == 0)
      {
        goto LABEL_29;
      }

      if (v108 != *(v48 + 36))
      {
        goto LABEL_30;
      }

      v37 = v36 & (-2 << (v9 & 0x3F));
      if (v37)
      {
        v9 = __clz(__rbit64(v37)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v38 = v11 << 6;
        v39 = v11 + 1;
        v40 = (v44 + 8 * v11);
        while (v39 < (v35 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            result = sub_24A6CA498(v9, v108, 0);
            v9 = __clz(__rbit64(v41)) + v38;
            goto LABEL_19;
          }
        }

        result = sub_24A6CA498(v9, v108, 0);
        v9 = v35;
LABEL_19:
        a1 = v48;
      }

      if (v10 == v45)
      {
        return v7;
      }

      if ((v9 & 0x8000000000000000) == 0)
      {
        ++v10;
        if (v9 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

double sub_24A7CFAE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v62 = sub_24A82CAA4();
  v3 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 24);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  v59 = a1;
  if (v6)
  {
    v88 = MEMORY[0x277D84F90];
    sub_24A6FCC3C(0, v6, 0);
    v8 = v88;
    v9 = (v5 + 32);
    v60 = (v3 + 8);
    do
    {
      v64 = *v9;
      v10 = v9[1];
      v11 = v9[2];
      v12 = v9[4];
      v67 = v9[3];
      v68 = v12;
      v65 = v10;
      v66 = v11;
      v13 = v9[5];
      v14 = v9[6];
      v15 = v9[7];
      v72 = v9[8];
      v70 = v14;
      v71 = v15;
      v69 = v13;
      v16 = v9[9];
      v17 = v9[10];
      v18 = v9[11];
      *(v75 + 9) = *(v9 + 185);
      v74 = v17;
      v75[0] = v18;
      v73 = v16;
      sub_24A71FF60(&v64, &v76);
      v19 = v61;
      sub_24A82CA94();
      v63 = sub_24A82CA54();
      v21 = v20;
      (*v60)(v19, v62);
      v79 = v67;
      v80 = v68;
      v77 = v65;
      v78 = v66;
      v83 = v71;
      v84 = v72;
      v81 = v69;
      v82 = v70;
      *(v87 + 9) = *(v75 + 9);
      v86 = v74;
      v87[0] = v75[0];
      v85 = v73;
      v23 = *(v8 + 16);
      v22 = *(v8 + 24);
      v76 = v64;
      v88 = v8;
      if (v23 >= v22 >> 1)
      {
        sub_24A6FCC3C((v22 > 1), v23 + 1, 1);
        v8 = v88;
      }

      *(v8 + 16) = v23 + 1;
      v24 = v8 + 224 * v23;
      *(v24 + 32) = v63;
      *(v24 + 40) = v21;
      *(v24 + 48) = v76;
      v25 = v77;
      v26 = v78;
      v27 = v80;
      *(v24 + 96) = v79;
      *(v24 + 112) = v27;
      *(v24 + 64) = v25;
      *(v24 + 80) = v26;
      v28 = v81;
      v29 = v82;
      v30 = v84;
      *(v24 + 160) = v83;
      *(v24 + 176) = v30;
      *(v24 + 128) = v28;
      *(v24 + 144) = v29;
      v31 = v85;
      v32 = v86;
      v33 = v87[0];
      *(v24 + 233) = *(v87 + 9);
      *(v24 + 208) = v32;
      *(v24 + 224) = v33;
      *(v24 + 192) = v31;
      v9 += 13;
      --v6;
    }

    while (v6);
    a1 = v59;
    v7 = MEMORY[0x277D84F90];
    if (*(v8 + 16))
    {
      goto LABEL_7;
    }
  }

  else if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_7:
    sub_24A6BBA94(&qword_27EF5E7A0, &qword_24A838DB0);
    v34 = sub_24A82D974();
    goto LABEL_10;
  }

  v34 = MEMORY[0x277D84F98];
LABEL_10:
  *&v76 = v34;

  sub_24A7D0D08(v35, 1, &v76);

  v36 = v76;
  sub_24A7CFF44(*(*(a1 + 16) + 16) != 0, v89);
  v37 = sub_24A7CF600(v36);
  v38 = *(a1 + 16);
  v39 = *(v38 + 16);
  if (v39)
  {
    v57 = v37;
    v60 = v36;
    *&v64 = v7;
    sub_24A6FCC1C(0, v39, 0);
    v40 = v64;
    v41 = (v38 + 72);
    do
    {
      v42 = *(v41 - 5);
      v43 = *(v41 - 4);
      v44 = *(v41 - 2);
      v61 = *(v41 - 3);
      v62 = v42;
      v45 = *v41;
      v63 = *(v41 - 1);
      *&v64 = v40;
      v46 = *(v40 + 16);
      v47 = *(v40 + 24);

      if (v46 >= v47 >> 1)
      {
        sub_24A6FCC1C((v47 > 1), v46 + 1, 1);
        v40 = v64;
      }

      v41 += 6;
      *(v40 + 16) = v46 + 1;
      v48 = v40 + 88 * v46;
      v49 = v61;
      *(v48 + 32) = v62;
      *(v48 + 40) = v43;
      *(v48 + 48) = v49;
      *(v48 + 56) = v44;
      *(v48 + 64) = 256;
      *(v48 + 72) = 0;
      *(v48 + 80) = 0xE000000000000000;
      *(v48 + 88) = v63;
      *(v48 + 96) = v45;
      *(v48 + 104) = 0;
      *(v48 + 112) = 0;
      --v39;
    }

    while (v39);

    v36 = v60;
    v50 = v57;
  }

  else
  {
    v51 = v37;

    v50 = v51;
    v40 = MEMORY[0x277D84F90];
  }

  v52 = v89[3];
  v53 = v58;
  *(v58 + 32) = v89[2];
  *(v53 + 48) = v52;
  *(v53 + 64) = v89[4];
  v54 = v90;
  result = *v89;
  v56 = v89[1];
  *v53 = v89[0];
  *(v53 + 16) = v56;
  *(v53 + 80) = v54;
  *(v53 + 88) = v50;
  *(v53 + 96) = v40;
  *(v53 + 104) = v36;
  return result;
}

void sub_24A7CFF44(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v5 = [v4 aa_primaryAppleAccount];

  if (v5)
  {
    v6 = [v5 aa_firstName];
    if (v6)
    {
      v7 = v6;
      v8 = sub_24A82CFC4();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xE000000000000000;
    }

    v15 = [v5 aa_lastName];
    if (v15)
    {
      v16 = v15;
      v12 = sub_24A82CFC4();
      v14 = v17;
    }

    else
    {
      v12 = 0;
      v14 = 0xE000000000000000;
    }

    v18 = [v5 aa_formattedUsername];
    if (v18)
    {
      v19 = v18;
      v11 = sub_24A82CFC4();
      v13 = v20;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v8 = 0;
    v13 = 0xE000000000000000;
    v14 = 0xE000000000000000;
    v10 = 0xE000000000000000;
  }

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = a1 & 1;
  *(a2 + 33) = 1;
  *(a2 + 35) = 0;
  *(a2 + 40) = v11;
  *(a2 + 48) = v13;
  *(a2 + 56) = 0x72656E776FLL;
  *(a2 + 64) = 0xE500000000000000;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
}

uint64_t sub_24A7D00D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v98 = a1;
  v7 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v99 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v104 = &v80 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v103 = &v80 - v13;
  MEMORY[0x28223BE20](v12);
  v102 = &v80 - v14;
  v15 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  MEMORY[0x28223BE20](v15 - 8);
  v107 = &v80 - v16;
  v17 = sub_24A6BBA94(&qword_27EF5DE50, &qword_24A83DE40);
  MEMORY[0x28223BE20](v17 - 8);
  v106 = &v80 - v18;
  v19 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  MEMORY[0x28223BE20](v19 - 8);
  v101 = &v80 - v20;
  v21 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  MEMORY[0x28223BE20](v21 - 8);
  v105 = &v80 - v22;
  v23 = *(a3 + 13);
  v24 = *(a3 + 14);
  v94 = v23;
  if (v24 && (v23 == 0x72656E776FLL && v24 == 0xE500000000000000 || (sub_24A82DC04() & 1) != 0))
  {
    v25 = 288;
  }

  else
  {
    v25 = 416;
  }

  v97 = v25;
  sub_24A72006C();
  v26 = *(a3 + 40);
  v27 = *(a3 + 72);
  v110[2] = *(a3 + 56);
  v110[3] = v27;
  v110[4] = *(a3 + 88);
  v110[0] = *(a3 + 24);
  v110[1] = v26;

  sub_24A71FF60(a3, v108);
  sub_24A7200B8(v110, v108);
  v28 = sub_24A7AE728(v110);
  LOBYTE(v109) = 6;
  FMIPLocation.init(location:type:)(v28, &v109, v108);
  v29 = LOBYTE(v108[0]);
  v30 = BYTE1(v108[0]);
  v31 = BYTE2(v108[0]);
  v95 = a2;
  v32 = BYTE3(v108[0]);
  v100 = *(&v108[0] + 1);
  v96 = *&v108[1];
  v33 = *(a3 + 200);
  v109 = *a3;

  sub_24A720010(&v109, v108);

  v34 = sub_24A771CCC();
  v92 = v35;
  v93 = v34;
  v36 = sub_24A771FF8();
  v90 = v37;
  v91 = v36;
  v38 = sub_24A7720F8();
  v88 = v39;
  v89 = v38;
  v40 = sub_24A771DC8();
  v85 = v41;
  v86 = v40;
  v42 = sub_24A771EE8();
  v83 = v43;
  v84 = v42;
  v87 = qword_24A83D9B8[*(a3 + 16)];
  v44 = (v33 & 1) == 0;
  if (v24)
  {
    v45 = v24;
  }

  else
  {
    v45 = 0xE500000000000000;
  }

  v46 = 0x72656E776FLL;
  if (v24)
  {
    v46 = v94;
  }

  v81 = v46;
  v82 = v45;
  v47 = 256;
  if (!v30)
  {
    v47 = 0;
  }

  v48 = v47 | v29;
  v49 = 0x10000;
  if (!v31)
  {
    v49 = 0;
  }

  v50 = v48 | v49 | (v32 << 24);
  sub_24A68808C(v108);
  v51 = type metadata accessor for FMIPPlaySoundMetadata(0);
  (*(*(v51 - 8) + 56))(v105, 1, 1, v51);
  v52 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
  v53 = v101;
  (*(*(v52 - 8) + 56))(v101, 1, 1, v52);
  v54 = type metadata accessor for FMIPLockMetadata(0);
  (*(*(v54 - 8) + 56))(v106, 1, 1, v54);
  v55 = type metadata accessor for FMIPEraseMetadata(0);
  (*(*(v55 - 8) + 56))(v107, 1, 1, v55);
  v56 = sub_24A82CA34();
  v57 = *(*(v56 - 8) + 56);
  v57(v102, 1, 1, v56);
  v57(v103, 1, 1, v56);
  v57(v104, 1, 1, v56);
  v58 = v99;
  v57(v99, 1, 1, v56);
  v59 = type metadata accessor for FMIPDevice(0);
  v60 = v59[32];
  v61 = type metadata accessor for FMIPItemGroup(0);
  (*(*(v61 - 8) + 56))(a4 + v60, 1, 1, v61);
  v94 = v59[35];
  *(a4 + v94) = 1;
  v62 = v109;
  *(a4 + 64) = v109;
  v63 = v95;
  *a4 = v98;
  *(a4 + 8) = v63;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v64 = v82;
  *(a4 + 32) = v81;
  *(a4 + 40) = v64;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 80) = v44;
  v65 = v92;
  *(a4 + 88) = v93;
  *(a4 + 96) = v65;
  v66 = v90;
  *(a4 + 104) = v91;
  *(a4 + 112) = v66;
  v67 = v88;
  *(a4 + 120) = v89;
  *(a4 + 128) = v67;
  v68 = v85;
  *(a4 + 136) = v86;
  *(a4 + 144) = v68;
  v69 = v83;
  *(a4 + 152) = v84;
  *(a4 + 160) = v69;
  *(a4 + 168) = v62;
  *(a4 + 184) = 0x3FF0000000000000;
  *(a4 + 192) = 1;
  *(a4 + 200) = xmmword_24A836760;
  *(a4 + 216) = v97;
  v70 = MEMORY[0x277D84F90];
  v71 = v87;
  *(a4 + 232) = MEMORY[0x277D84F90];
  *(a4 + 240) = v71;
  *(a4 + 248) = v70;
  *(a4 + 256) = v50;
  v72 = v100;
  v73 = v96;
  *(a4 + 264) = v100;
  *(a4 + 272) = v73;
  *(a4 + 280) = v50;
  *(a4 + 288) = v72;
  *(a4 + 296) = v73;
  memcpy((a4 + 304), v108, 0x120uLL);
  sub_24A67E964(v105, a4 + v59[28], &qword_27EF5D5F8, &qword_24A83DE60);
  sub_24A67E964(v53, a4 + v59[29], &unk_27EF5E0A0, &unk_24A8367D0);
  sub_24A67E964(v106, a4 + v59[30], &qword_27EF5DE50, &qword_24A83DE40);
  sub_24A67E964(v107, a4 + v59[31], &qword_27EF5DE48, &unk_24A8367C0);
  v74 = v102;
  sub_24A67E964(v102, a4 + v59[39], &qword_27EF5E0E0, &qword_24A836D90);
  v75 = v103;
  sub_24A67E964(v103, a4 + v59[40], &qword_27EF5E0E0, &qword_24A836D90);
  v76 = v104;
  sub_24A67E964(v104, a4 + v59[41], &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A67E964(v58, a4 + v59[42], &qword_27EF5E0E0, &qword_24A836D90);
  v77 = v100;
  sub_24A71FFBC(a3);
  *(a4 + v59[38]) = 0;
  *(a4 + v59[43]) = 0;
  *(a4 + v59[44]) = 0;
  *(a4 + v59[45]) = 0;
  sub_24A67F378(v58, &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A67F378(v76, &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A67F378(v75, &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A67F378(v74, &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A67F378(v107, &qword_27EF5DE48, &unk_24A8367C0);
  sub_24A67F378(v106, &qword_27EF5DE50, &qword_24A83DE40);
  sub_24A67F378(v101, &unk_27EF5E0A0, &unk_24A8367D0);
  result = sub_24A67F378(v105, &qword_27EF5D5F8, &qword_24A83DE60);
  *(a4 + 224) = MEMORY[0x277D84F90];
  *(a4 + v59[33]) = 0;
  *(a4 + v59[34]) = 0;
  *(a4 + v59[36]) = 0;
  v79 = (a4 + v59[37]);
  *v79 = 0;
  v79[1] = 0;
  *(a4 + v94) = 1;
  return result;
}

uint64_t sub_24A7D0980(uint64_t a1)
{
  v2 = v1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPDemoDataSource: Recalculating state for demo content.", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  v8 = v2[4];
  v9 = v2[6];
  v25 = v2[5];
  v26 = v9;
  v10 = v2[6];
  v27 = v2[7];
  v11 = v2[2];
  v22[0] = v2[1];
  v22[1] = v11;
  v12 = v2[4];
  v14 = v2[1];
  v13 = v2[2];
  v23 = v2[3];
  v24 = v12;
  v34 = v25;
  v35 = v10;
  v36 = v2[7];
  v30 = v14;
  v31 = v13;
  v32 = v23;
  v33 = v8;
  sub_24A7D0CA0(v22, v29);
  sub_24A71E5A0(&v30, a1, v29);
  v28[4] = v34;
  v28[5] = v35;
  v28[6] = v36;
  v28[0] = v30;
  v28[1] = v31;
  v28[2] = v32;
  v28[3] = v33;
  sub_24A7D0CD8(v28);
  v15 = v2[6];
  v34 = v2[5];
  v35 = v15;
  v36 = v2[7];
  v16 = v2[2];
  v30 = v2[1];
  v31 = v16;
  v17 = v2[4];
  v32 = v2[3];
  v33 = v17;
  v18 = v29[1];
  v2[1] = v29[0];
  v2[2] = v18;
  v19 = v29[5];
  v2[5] = v29[4];
  v2[6] = v19;
  v20 = v29[3];
  v2[3] = v29[2];
  v2[4] = v20;
  v2[7] = v29[6];
  return sub_24A7D0CD8(&v30);
}

uint64_t sub_24A7D0B40()
{
  v1 = v0[6];
  v5[4] = v0[5];
  v5[5] = v1;
  v5[6] = v0[7];
  v2 = v0[2];
  v5[0] = v0[1];
  v5[1] = v2;
  v3 = v0[4];
  v5[2] = v0[3];
  v5[3] = v3;
  sub_24A7D0CD8(v5);

  return swift_deallocClassInstance();
}

__n128 sub_24A7D0BC8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_24A7D0BEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_24A7D0C34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24A7D0D08(uint64_t a1, char a2, void *a3)
{
  v87 = a3;
  v4 = 0;
  v5 = *(a1 + 16);
  v46 = a1 + 32;
  if (v5)
  {
    goto LABEL_3;
  }

LABEL_2:
  sub_24A7D11D4(&v61);
  v84 = v71;
  v85 = v72;
  v86[0] = v73[0];
  *(v86 + 9) = *(v73 + 9);
  v80 = v67;
  v81 = v68;
  v82 = v69;
  v83 = v70;
  v76 = v63;
  v77 = v64;
  v78 = v65;
  v79 = v66;
  v6 = v5;
  v74 = v61;
  v75 = v62;
  while (1)
  {
    v71 = v84;
    v72 = v85;
    v73[0] = v86[0];
    *(v73 + 9) = *(v86 + 9);
    v67 = v80;
    v68 = v81;
    v69 = v82;
    v70 = v83;
    v63 = v76;
    v64 = v77;
    v65 = v78;
    v66 = v79;
    v61 = v74;
    v62 = v75;
    if (sub_24A7D11BC(&v61) == 1)
    {

      return;
    }

    v48 = v6;
    v20 = v74;
    v59 = v85;
    v60[0] = v86[0];
    *(v60 + 9) = *(v86 + 9);
    v55 = v81;
    v56 = v82;
    v57 = v83;
    v58 = v84;
    v51 = v77;
    v52 = v78;
    v53 = v79;
    v54 = v80;
    v49 = v75;
    v50 = v76;
    v21 = *v87;
    v23 = sub_24A6A2D48(v74, *(&v74 + 1));
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      sub_24A82DC44();
      __break(1u);
      goto LABEL_26;
    }

    v27 = v22;
    if (v21[3] < v26)
    {
      break;
    }

    if (a2)
    {
      if (v22)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_24A787258();
      if (v27)
      {
        goto LABEL_18;
      }
    }

LABEL_14:
    v30 = *v87;
    v30[(v23 >> 6) + 8] |= 1 << v23;
    *(v30[6] + 16 * v23) = v20;
    v31 = (v30[7] + 208 * v23);
    *v31 = v49;
    v32 = v50;
    v33 = v51;
    v34 = v53;
    v31[3] = v52;
    v31[4] = v34;
    v31[1] = v32;
    v31[2] = v33;
    v35 = v54;
    v36 = v55;
    v37 = v57;
    v31[7] = v56;
    v31[8] = v37;
    v31[5] = v35;
    v31[6] = v36;
    v38 = v58;
    v39 = v59;
    v40 = v60[0];
    *(v31 + 185) = *(v60 + 9);
    v31[10] = v39;
    v31[11] = v40;
    v31[9] = v38;
    v41 = v30[2];
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      goto LABEL_22;
    }

    v30[2] = v43;
    a2 = 1;
    v4 = v48;
    if (v48 == v5)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (v4 >= *(a1 + 16))
    {
      goto LABEL_24;
    }

    v7 = (v46 + 224 * v4);
    v8 = v7[11];
    v9 = v7[9];
    v71 = v7[10];
    v72 = v8;
    v10 = v7[11];
    v73[0] = v7[12];
    *(v73 + 9) = *(v7 + 201);
    v11 = v7[7];
    v12 = v7[5];
    v67 = v7[6];
    v68 = v11;
    v13 = v7[7];
    v14 = v7[9];
    v69 = v7[8];
    v70 = v14;
    v15 = v7[3];
    v16 = v7[1];
    v63 = v7[2];
    v64 = v15;
    v17 = v7[3];
    v18 = v7[5];
    v65 = v7[4];
    v66 = v18;
    v19 = v7[1];
    v61 = *v7;
    v62 = v19;
    v84 = v71;
    v85 = v10;
    v86[0] = v7[12];
    *(v86 + 9) = *(v7 + 201);
    v80 = v67;
    v81 = v13;
    v82 = v69;
    v83 = v9;
    v76 = v63;
    v77 = v17;
    v78 = v65;
    v79 = v12;
    v6 = v4 + 1;
    v74 = v61;
    v75 = v16;
    nullsub_1();
    sub_24A67E964(&v61, &v49, &qword_27EF5DA98, &qword_24A83D9B0);
  }

  sub_24A782F80(v26, a2 & 1);
  v28 = sub_24A6A2D48(v20, *(&v20 + 1));
  if ((v27 & 1) != (v29 & 1))
  {
    goto LABEL_25;
  }

  v23 = v28;
  if ((v27 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_18:
  v44 = swift_allocError();
  swift_willThrow();
  v45 = v44;
  sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_24A71FFBC(&v49);

    return;
  }

LABEL_26:
  sub_24A82D854();
  MEMORY[0x24C21C9E0](0xD00000000000001BLL, 0x800000024A844730);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](39, 0xE100000000000000);
  sub_24A82D934();
  __break(1u);
}

uint64_t sub_24A7D11BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_24A7D11D4(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 201) = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t FMFSatelliteLocationTapSource.rawValue.getter()
{
  if (*v0)
  {
    return 0x6163696669746F6ELL;
  }

  else
  {
    return 0x636E75614C707061;
  }
}

uint64_t sub_24A7D1254(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6163696669746F6ELL;
  }

  else
  {
    v3 = 0x636E75614C707061;
  }

  if (v2)
  {
    v4 = 0xE900000000000068;
  }

  else
  {
    v4 = 0xEF7061546E6F6974;
  }

  if (*a2)
  {
    v5 = 0x6163696669746F6ELL;
  }

  else
  {
    v5 = 0x636E75614C707061;
  }

  if (*a2)
  {
    v6 = 0xEF7061546E6F6974;
  }

  else
  {
    v6 = 0xE900000000000068;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A7D130C()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7D13A0(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A7D1420(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7D14BC(uint64_t *a1@<X8>)
{
  v2 = 0x636E75614C707061;
  if (*v1)
  {
    v2 = 0x6163696669746F6ELL;
  }

  v3 = 0xE900000000000068;
  if (*v1)
  {
    v3 = 0xEF7061546E6F6974;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FMFSatelliteEducationFlowType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F4C657461647075;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_24A7D1564(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F4C657461647075;
  }

  else
  {
    v3 = 0xD00000000000001ALL;
  }

  if (v2)
  {
    v4 = 0x800000024A843F80;
  }

  else
  {
    v4 = 0xEE006E6F69746163;
  }

  if (*a2)
  {
    v5 = 0x6F4C657461647075;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v6 = 0xEE006E6F69746163;
  }

  else
  {
    v6 = 0x800000024A843F80;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A7D161C()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7D16B0(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A7D1730(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7D17CC(unint64_t *a1@<X8>)
{
  v2 = 0x800000024A843F80;
  v3 = 0xD00000000000001ALL;
  if (*v1)
  {
    v3 = 0x6F4C657461647075;
    v2 = 0xEE006E6F69746163;
  }

  *a1 = v3;
  a1[1] = v2;
}

FMIPCore::FMFSatelliteUpdateBlockingCondition_optional __swiftcall FMFSatelliteUpdateBlockingCondition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FMFSatelliteUpdateBlockingCondition.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000017;
    if (v1 == 8)
    {
      v6 = 0x656E616C70726961;
    }

    if (v1 == 7)
    {
      v6 = 0xD000000000000018;
    }

    v7 = 0x636972656E6567;
    if (v1 != 5)
    {
      v7 = 0xD000000000000012;
    }

    if (*v0 <= 6u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 1701736302;
    v3 = 0x646E656972466F6ELL;
    v4 = 0x766544654D746F6ELL;
    if (v1 != 3)
    {
      v4 = 0x656E696C6E6FLL;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x7055746553746F6ELL;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t sub_24A7D19CC(unsigned __int8 a1)
{
  v1 = 0xD000000000000012;
  if (a1 > 5u)
  {
    v5 = 0xD000000000000016;
    if (a1 != 10)
    {
      v5 = 0xD000000000000018;
    }

    if (a1 == 9)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD00000000000001BLL;
    if (a1 == 7)
    {
      v6 = 0xD000000000000018;
    }

    if (a1 == 6)
    {
      v6 = 0xD000000000000022;
    }

    if (a1 <= 8u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    v3 = 0xD000000000000011;
    if (a1 != 4)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 != 1)
    {
      v1 = 0xD000000000000018;
    }

    if (!a1)
    {
      v1 = 0xD00000000000001ALL;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24A7D1B24()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A821628(v3, v1);
  return sub_24A82DD24();
}

uint64_t sub_24A7D1B74(uint64_t a1)
{
  v2 = *v1;
  sub_24A82DCC4();
  sub_24A821628(v4, v2);
  return sub_24A82DD24();
}

unint64_t sub_24A7D1BC4@<X0>(unint64_t *a1@<X8>)
{
  result = FMFSatelliteUpdateBlockingCondition.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

FMIPCore::FMFSatelliteLocationNotificationEvent __swiftcall FMFSatelliteLocationNotificationEvent.init(notificationPresentedToUser:notificationTapped:)(Swift::Bool_optional notificationPresentedToUser, Swift::Bool_optional notificationTapped)
{
  v2->value = notificationPresentedToUser.value;
  v2[1].value = notificationTapped.value;
  result.notificationPresentedToUser = notificationPresentedToUser;
  return result;
}

uint64_t sub_24A7D1C64@<X0>(char *a4@<X8>)
{
  v5 = sub_24A82D9C4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t SatelliteFeatureViewSource.rawValue.getter()
{
  if (*v0)
  {
    return 0x626154656DLL;
  }

  else
  {
    return 0x776569567473696CLL;
  }
}

uint64_t sub_24A7D1CFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x626154656DLL;
  }

  else
  {
    v3 = 0x776569567473696CLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x626154656DLL;
  }

  else
  {
    v5 = 0x776569567473696CLL;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A7D1DA0()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7D1E20(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A7D1E8C(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7D1F14@<X0>(char *a3@<X8>)
{
  v4 = sub_24A82D9C4();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_24A7D1F70(uint64_t *a1@<X8>)
{
  v2 = 0x776569567473696CLL;
  if (*v1)
  {
    v2 = 0x626154656DLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

FMIPCore::FMFSatelliteLocationUpdateEvent __swiftcall FMFSatelliteLocationUpdateEvent.init(flowType:educationFlowInitiatedTapSource:sendLocationTapped:updateFlowBlockingCondition:updateFlowOffline:updateFlowCanceled:updateFlowLSOffGoToSettingsPressed:updateFlowLSOffOkPressed:viewSource:)(FMIPCore::FMFSatelliteEducationFlowType flowType, FMIPCore::FMFSatelliteLocationTapSource educationFlowInitiatedTapSource, Swift::Bool sendLocationTapped, FMIPCore::FMFSatelliteUpdateBlockingCondition updateFlowBlockingCondition, Swift::Bool updateFlowOffline, Swift::Bool updateFlowCanceled, Swift::Bool_optional updateFlowLSOffGoToSettingsPressed, Swift::Bool_optional updateFlowLSOffOkPressed, FMIPCore::SatelliteFeatureViewSource_optional viewSource)
{
  v10 = *educationFlowInitiatedTapSource;
  v11 = *updateFlowBlockingCondition;
  v12 = *viewSource.value;
  v9->value = *flowType;
  v9[1].value = v10;
  v9[2].value = sendLocationTapped;
  v9[3].value = v11;
  v9[4].value = updateFlowOffline;
  v9[5].value = updateFlowCanceled;
  v9[6].value = updateFlowLSOffGoToSettingsPressed.value;
  v9[7].value = updateFlowLSOffOkPressed.value;
  v9[8].value = v12;
  result.viewSource.value = educationFlowInitiatedTapSource;
  result.educationFlowInitiatedType = flowType;
  return result;
}

Swift::Void __swiftcall FMIPManager.enqueue(satelliteLocationUpdateEvent:)(FMIPCore::FMFSatelliteLocationUpdateEvent satelliteLocationUpdateEvent)
{
  v1 = **&satelliteLocationUpdateEvent.educationFlowInitiatedType;
  v2 = *(*&satelliteLocationUpdateEvent.educationFlowInitiatedType + 8);
  _s8FMIPCore13FMIPAnalyticsV32sendSatelliteLocationUpdateEvent5eventyAA012FMFSatelliteefG0V_tFZ_0(&v1);
}

uint64_t sub_24A7D2220(unint64_t a1, char a2)
{
  v3 = (a1 >> 16) & 1;
  v4 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  v5 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v6 = sub_24A82CF94();

  v7 = [v5 initWithString_];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v7, 0xD00000000000001ALL, 0x800000024A849DC0, isUniquelyReferenced_nonNull_native);
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v9, 0xD000000000000012, 0x800000024A849DA0, v10);
  v11 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v12 = sub_24A82CF94();

  v13 = [v11 initWithString_];

  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v13, 0xD000000000000018, 0x800000024A849D80, v14);
  v15 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v16 = sub_24A82CF94();

  v17 = [v15 initWithString_];

  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v17, 0xD00000000000001BLL, 0x800000024A849D60, v18);
  v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v19, 0xD000000000000011, 0x800000024A849D40, v20);
  v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v21, 0xD000000000000012, 0x800000024A849D20, v22);
  if (a2 != 2)
  {
    v23 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v24 = sub_24A82CF94();

    v25 = [v23 initWithString_];

    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_24A6AE690(v25, 0xD000000000000016, 0x800000024A849CB0, v26);
  }

  if ((a1 & 0xFF000000000000) != 0x2000000000000)
  {
    v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_24A6AE690(v27, 0xD000000000000022, 0x800000024A849CF0, v28);
  }

  if (HIBYTE(a1) != 2)
  {
    v29 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_24A6AE690(v29, 0xD000000000000018, 0x800000024A849CD0, v30);
  }

  sub_24A7D31E0(v4);
}

uint64_t sub_24A7D2844(unsigned int a1)
{
  v2 = a1;
  v3 = BYTE1(a1);
  v4 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  if (v2 != 2)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24A6AE690(v5, 0xD00000000000001BLL, 0x800000024A849C70, isUniquelyReferenced_nonNull_native);
  }

  if (v3 != 2)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_24A6AE690(v7, 0xD000000000000012, 0x800000024A849C50, v8);
  }

  sub_24A7D3378(v4);
}

uint64_t _s8FMIPCore13FMIPAnalyticsV32sendSatelliteLocationUpdateEvent5eventyAA012FMFSatelliteefG0V_tFZ_0(char *a1)
{
  v2 = sub_24A82CDF4();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v24 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24A82CE54();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  v15 = a1[8];
  if (qword_27EF5CC50 != -1)
  {
    swift_once();
  }

  v21[1] = qword_281514470;
  v16 = swift_allocObject();
  v16[16] = v7 & 1;
  v16[17] = v8 & 1;
  v16[18] = v9 & 1;
  v16[19] = v10;
  v16[20] = v11 & 1;
  v16[21] = v12 & 1;
  v16[22] = v13;
  v16[23] = v14;
  v16[24] = v15;
  aBlock[4] = sub_24A7D3510;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCB3C0;
  v17 = _Block_copy(aBlock);
  sub_24A82CE24();
  v27 = MEMORY[0x277D84F90];
  sub_24A67A0B4(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  v18 = v24;
  v19 = v26;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v6, v18, v17);
  _Block_release(v17);
  (*(v25 + 8))(v18, v19);
  (*(v22 + 8))(v6, v23);
}

uint64_t _s8FMIPCore13FMIPAnalyticsV38sendSatelliteLocationNotificationEvent5eventyAA012FMFSatelliteefG0V_tFZ_0(char *a1)
{
  v2 = sub_24A82CDF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A82CE54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  if (qword_27EF5CC50 != -1)
  {
    swift_once();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 17) = v11;
  aBlock[4] = sub_24A7D31D8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCB320;
  v13 = _Block_copy(aBlock);
  sub_24A82CE24();
  v15[1] = MEMORY[0x277D84F90];
  sub_24A67A0B4(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v9, v5, v13);
  _Block_release(v13);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

unint64_t sub_24A7D2F80()
{
  result = qword_27EF5F138;
  if (!qword_27EF5F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F138);
  }

  return result;
}

unint64_t sub_24A7D2FD8()
{
  result = qword_27EF5F140;
  if (!qword_27EF5F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F140);
  }

  return result;
}

unint64_t sub_24A7D3030()
{
  result = qword_27EF5F148;
  if (!qword_27EF5F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F148);
  }

  return result;
}

unint64_t sub_24A7D3088()
{
  result = qword_27EF5F150;
  if (!qword_27EF5F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F150);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for FMFSatelliteLocationUpdateEvent(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FMFSatelliteLocationUpdateEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[9])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFSatelliteLocationUpdateEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_24A7D31E0(uint64_t a1)
{
  v2 = sub_24A82C514();
  v8 = v2;
  v9 = sub_24A67A0B4(&unk_281514680, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v3 = sub_24A697E3C(v7);
  (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D089E0], v2);
  LOBYTE(v2) = sub_24A82C4D4();
  sub_24A6876E8(v7);
  if (v2)
  {
    v4 = sub_24A82CF94();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v9 = sub_24A6AEBB4;
    v10 = v5;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_24A6AEADC;
    v8 = &unk_285DCB410;
    v6 = _Block_copy(v7);

    AnalyticsSendEventLazy();
    _Block_release(v6);
  }
}

void sub_24A7D3378(uint64_t a1)
{
  v2 = sub_24A82C514();
  v8 = v2;
  v9 = sub_24A67A0B4(&unk_281514680, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v3 = sub_24A697E3C(v7);
  (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D089E0], v2);
  LOBYTE(v2) = sub_24A82C4D4();
  sub_24A6876E8(v7);
  if (v2)
  {
    v4 = sub_24A82CF94();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v9 = sub_24A6D89D4;
    v10 = v5;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_24A6AEADC;
    v8 = &unk_285DCB370;
    v6 = _Block_copy(v7);

    AnalyticsSendEventLazy();
    _Block_release(v6);
  }
}

uint64_t sub_24A7D3510()
{
  v1 = 256;
  if (!v0[17])
  {
    v1 = 0;
  }

  v2 = v1 | v0[16];
  v3 = 0x10000;
  if (!v0[18])
  {
    v3 = 0;
  }

  v4 = v2 | v3 | (v0[19] << 24);
  v5 = 0x100000000;
  if (!v0[20])
  {
    v5 = 0;
  }

  v6 = 0x10000000000;
  if (!v0[21])
  {
    v6 = 0;
  }

  return sub_24A7D2220(v4 | v5 | v6 | (v0[22] << 48) | (v0[23] << 56), v0[24]);
}

uint64_t sub_24A7D35A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xEF4C52556E6F7474;
  v5 = 0x7079547472656C61;
  if (a1 == 5)
  {
    v5 = 0x75426C65636E6163;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  v6 = 0x6E6F747475426B6FLL;
  v7 = 0xEB000000004C5255;
  if (a1 != 3)
  {
    v6 = 0xD000000000000011;
    v7 = 0x800000024A844510;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6567617373656DLL;
  if (a1 != 1)
  {
    v9 = 0x6E6F747475426B6FLL;
    v8 = 0xED0000656C746954;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656C746974;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x6567617373656DLL)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xED0000656C746954;
        if (v10 != 0x6E6F747475426B6FLL)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x656C746974)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEF4C52556E6F7474;
      if (v10 != 0x75426C65636E6163)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xE900000000000065;
      if (v10 != 0x7079547472656C61)
      {
LABEL_40:
        v13 = sub_24A82DC04();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEB000000004C5255;
    if (v10 != 0x6E6F747475426B6FLL)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0x800000024A844510;
    if (v10 != 0xD000000000000011)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_24A7D3818(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x800000024A843FF0;
    v12 = 0xD000000000000017;
    if (a1 == 8)
    {
      v12 = 0x656E616C70726961;
      v13 = 0xEC00000065646F4DLL;
    }

    else
    {
      v13 = 0x800000024A844020;
    }

    if (a1 == 7)
    {
      v12 = 0xD000000000000018;
    }

    else
    {
      v11 = v13;
    }

    v14 = 0xE700000000000000;
    v15 = 0x636972656E6567;
    if (a1 != 5)
    {
      v15 = 0xD000000000000012;
      v14 = 0x800000024A843FD0;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 6)
    {
      v10 = v14;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0x646E656972466F6ELL;
    v5 = 0xE900000000000073;
    v6 = 0x766544654D746F6ELL;
    v7 = 0xEB00000000656369;
    if (a1 != 3)
    {
      v6 = 0x656E696C6E6FLL;
      v7 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x7055746553746F6ELL;
    if (a1)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v8 = 1701736302;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v16 = 0xE700000000000000;
        if (v9 != 0x636972656E6567)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v16 = 0x800000024A843FD0;
        if (v9 != 0xD000000000000012)
        {
LABEL_59:
          v17 = sub_24A82DC04();
          goto LABEL_60;
        }
      }
    }

    else if (a2 == 7)
    {
      v16 = 0x800000024A843FF0;
      if (v9 != 0xD000000000000018)
      {
        goto LABEL_59;
      }
    }

    else if (a2 == 8)
    {
      v16 = 0xEC00000065646F4DLL;
      if (v9 != 0x656E616C70726961)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v16 = 0x800000024A844020;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_59;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v16 = 0xE800000000000000;
      if (v9 != 0x7055746553746F6ELL)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v16 = 0xE400000000000000;
      if (v9 != 1701736302)
      {
        goto LABEL_59;
      }
    }
  }

  else if (a2 == 2)
  {
    v16 = 0xE900000000000073;
    if (v9 != 0x646E656972466F6ELL)
    {
      goto LABEL_59;
    }
  }

  else if (a2 == 3)
  {
    v16 = 0xEB00000000656369;
    if (v9 != 0x766544654D746F6ELL)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v16 = 0xE600000000000000;
    if (v9 != 0x656E696C6E6FLL)
    {
      goto LABEL_59;
    }
  }

  if (v10 != v16)
  {
    goto LABEL_59;
  }

  v17 = 1;
LABEL_60:

  return v17 & 1;
}

uint64_t sub_24A7D3B60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6567616D69;
  if (a1 != 4)
  {
    v5 = 0x55656C6261736964;
    v4 = 0xEA00000000004C52;
  }

  if (a1 == 3)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000024A843DE0;
  }

  v6 = 0x800000024A843DA0;
  v7 = 0xD00000000000001BLL;
  if (a1 != 1)
  {
    v7 = 0xD000000000000010;
    v6 = 0x800000024A843DC0;
  }

  if (a1)
  {
    v3 = v6;
  }

  else
  {
    v7 = 0x656C746974;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0x800000024A843DE0;
      if (v8 != 0xD000000000000010)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v10 = 0xE500000000000000;
      if (v8 != 0x6567616D69)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v10 = 0xEA00000000004C52;
      if (v8 != 0x55656C6261736964)
      {
LABEL_34:
        v11 = sub_24A82DC04();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0x800000024A843DA0;
      if (v8 != 0xD00000000000001BLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v10 = 0x800000024A843DC0;
      if (v8 != 0xD000000000000010)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v10 = 0xE500000000000000;
    if (v8 != 0x656C746974)
    {
      goto LABEL_34;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_34;
  }

  v11 = 1;
LABEL_35:

  return v11 & 1;
}

uint64_t sub_24A7D3D40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006F72;
  v3 = 0x506B6F6F6263616DLL;
  v4 = a1;
  v5 = 0xE500000000000000;
  v6 = 0x6863746177;
  v7 = 0x6F725063614D69;
  if (a1 != 4)
  {
    v7 = 0x73646F70726961;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE600000000000000;
  v9 = 0x656E6F685069;
  if (a1 != 1)
  {
    v9 = 1684099177;
    v8 = 0xE400000000000000;
  }

  if (!a1)
  {
    v9 = 0x506B6F6F6263616DLL;
    v8 = 0xEA00000000006F72;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE500000000000000;
      if (v10 != 0x6863746177)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE700000000000000;
      if (a2 == 4)
      {
        if (v10 != 0x6F725063614D69)
        {
          goto LABEL_31;
        }
      }

      else if (v10 != 0x73646F70726961)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE600000000000000;
        if (v10 != 0x656E6F685069)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE400000000000000;
      v3 = 1684099177;
    }

    if (v10 != v3)
    {
LABEL_31:
      v12 = sub_24A82DC04();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v11 != v2)
  {
    goto LABEL_31;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_24A7D3EF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x65646F4D74736F6CLL;
  v6 = 0xE600000000000000;
  v7 = 0x65766F6D6572;
  if (a1 != 4)
  {
    v7 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x72456C65636E6163;
  v9 = 0xEB00000000657361;
  if (a1 != 1)
  {
    v8 = 1801678700;
    v9 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6573617265;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x65646F4D74736F6CLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x65766F6D6572)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
LABEL_34:
        v13 = sub_24A82DC04();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEB00000000657361;
      if (v10 != 0x72456C65636E6163)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1801678700)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6573617265)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_24A7D40D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE600000000000000;
    v12 = 0xE600000000000000;
    v13 = 0x64656B636F6CLL;
    if (a1 != 2)
    {
      v13 = 0x6475427466656CLL;
      v12 = 0xE700000000000000;
    }

    v14 = 0x656E696C66666FLL;
    if (a1)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v14 = 0x656E696C6E6FLL;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x4364694C65736163;
    v4 = 0xED00006465736F6CLL;
    v5 = 0x800000024A8444A0;
    if (a1 == 7)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0xD000000000000016;
    }

    if (a1 != 7)
    {
      v5 = 0x800000024A8444C0;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0xE800000000000000;
    v8 = 0xD00000000000001ALL;
    if (a1 == 4)
    {
      v8 = 0x6475427468676972;
    }

    else
    {
      v7 = 0x800000024A844470;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x64656B636F6CLL)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x6475427466656CLL)
        {
          goto LABEL_56;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x656E696C66666FLL)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x656E696C6E6FLL)
      {
        goto LABEL_56;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE800000000000000;
      if (v9 != 0x6475427468676972)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v15 = 0x800000024A844470;
      if (v9 != 0xD00000000000001ALL)
      {
LABEL_56:
        v16 = sub_24A82DC04();
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xED00006465736F6CLL;
    if (v9 != 0x4364694C65736163)
    {
      goto LABEL_56;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0x800000024A8444A0;
    if (v9 != 0xD000000000000015)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v15 = 0x800000024A8444C0;
    if (v9 != 0xD000000000000016)
    {
      goto LABEL_56;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_56;
  }

  v16 = 1;
LABEL_57:

  return v16 & 1;
}

uint64_t sub_24A7D43AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000073657461;
  v3 = 0x6470556C69616D65;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0x6C69616D65;
    if (a1 != 2)
    {
      v13 = 0x646E756F73;
    }

    v14 = 0xE800000000000000;
    v15 = 0x72624E72656E776FLL;
    if (!a1)
    {
      v15 = 0x6470556C69616D65;
      v14 = 0xEC00000073657461;
    }

    if (a1 <= 1u)
    {
      v11 = v15;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 1)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1954047348;
    v7 = 0xE800000000000000;
    v8 = 0x7478655472657375;
    if (a1 != 7)
    {
      v8 = 0x6954657461657263;
      v7 = 0xEF706D617473656DLL;
    }

    if (a1 != 6)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 0x6F43737574617473;
    v10 = 0xEA00000000006564;
    if (a1 != 4)
    {
      v9 = 0x74736F4C706F7473;
      v10 = 0xEC00000065646F4DLL;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      v2 = 0xE500000000000000;
      if (a2 == 2)
      {
        if (v11 != 0x6C69616D65)
        {
          goto LABEL_49;
        }
      }

      else if (v11 != 0x646E756F73)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x72624E72656E776FLL)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xEA00000000006564;
        if (v11 != 0x6F43737574617473)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xEC00000065646F4DLL;
        if (v11 != 0x74736F4C706F7473)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0xE400000000000000;
      if (v11 != 1954047348)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x7478655472657375)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v3 = 0x6954657461657263;
    v2 = 0xEF706D617473656DLL;
  }

  if (v11 != v3)
  {
LABEL_49:
    v16 = sub_24A82DC04();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v16 = 1;
LABEL_50:

  return v16 & 1;
}

uint64_t sub_24A7D466C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xED00006F666E4965;
  v4 = 0x49656C6261736964;
  if (a1 == 2)
  {
    v4 = 0x726F4D6E7261656CLL;
  }

  else
  {
    v3 = 0xEB000000006F666ELL;
  }

  v5 = 0xD000000000000010;
  v6 = 0x800000024A843550;
  if (!a1)
  {
    v5 = 0x6D614E6C65646F6DLL;
    v6 = 0xE900000000000065;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x726F4D6E7261656CLL;
    }

    else
    {
      v11 = 0x49656C6261736964;
    }

    if (a2 == 2)
    {
      v10 = 0xED00006F666E4965;
    }

    else
    {
      v10 = 0xEB000000006F666ELL;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x6D614E6C65646F6DLL;
    }

    if (a2)
    {
      v10 = 0x800000024A843550;
    }

    else
    {
      v10 = 0xE900000000000065;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_24A82DC04();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_24A7D47DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x72656E776FLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 29813;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3 == 2)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x646572616873;
    }

    else
    {
      v4 = 0x72656E776FLL;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE200000000000000;
  v8 = 29813;
  if (a2 != 2)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x646572616873;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A82DC04();
  }

  return v11 & 1;
}

uint64_t sub_24A7D48EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000726562;
  v3 = 0x6D754E72656E776FLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6D617473656D6974;
    }

    else
    {
      v5 = 0x6C69616D65;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000070;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6567617373656DLL;
    }

    else
    {
      v5 = 0x6D754E72656E776FLL;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEB00000000726562;
    }
  }

  v7 = 0x6D617473656D6974;
  v8 = 0xE900000000000070;
  if (a2 != 2)
  {
    v7 = 0x6C69616D65;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x6567617373656DLL;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A82DC04();
  }

  return v11 & 1;
}

uint64_t sub_24A7D4A34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676154726961;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x73646F50726961;
    }

    else
    {
      v5 = 0x676154726961;
    }

    if (v3)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x726F737365636361;
    v4 = 0xE900000000000079;
  }

  else
  {
    v4 = 0xE600000000000000;
    if (a1 == 3)
    {
      v5 = 0x656369766564;
    }

    else
    {
      v5 = 0x6E6F73726570;
    }
  }

  if (a2 <= 1u)
  {
    v6 = 0xE600000000000000;
    v7 = 0xE700000000000000;
    v8 = 0x73646F50726961;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x726F737365636361;
    v6 = 0xE900000000000079;
    v7 = 0xE600000000000000;
    v8 = 0x656369766564;
    if (a2 != 3)
    {
      v8 = 0x6E6F73726570;
      v7 = 0xE600000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_24A82DC04();
  }

  return v12 & 1;
}

uint64_t sub_24A7D4BA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x6E756F5379616C70;
  v4 = a1;
  v5 = 0x6F69736963657270;
  v6 = 0x6F4C656C62616E65;
  v7 = 0xEE0065646F4D7473;
  if (a1 != 4)
  {
    v6 = 0xD000000000000015;
    v7 = 0x800000024A843D50;
  }

  if (a1 == 3)
  {
    v8 = 0xED0000646E69466ELL;
  }

  else
  {
    v5 = v6;
    v8 = v7;
  }

  v9 = 0x6F69746365726964;
  v10 = 0xEA0000000000736ELL;
  if (a1 != 1)
  {
    v9 = 0x74696D69786F7270;
    v10 = 0xED0000646E694679;
  }

  if (!a1)
  {
    v9 = 0x6E756F5379616C70;
    v10 = 0xE900000000000064;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xED0000646E69466ELL;
      if (v11 != 0x6F69736963657270)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEE0065646F4D7473;
      if (v11 != 0x6F4C656C62616E65)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0x800000024A843D50;
      if (v11 != 0xD000000000000015)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEA0000000000736ELL;
        if (v11 != 0x6F69746365726964)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0x74696D69786F7270;
      v2 = 0xED0000646E694679;
    }

    if (v11 != v3)
    {
LABEL_32:
      v13 = sub_24A82DC04();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v12 != v2)
  {
    goto LABEL_32;
  }

  v13 = 1;
LABEL_33:

  return v13 & 1;
}

uint64_t sub_24A7D4DAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006C657665;
  v3 = 0x4C79726574746162;
  if (a1 > 3u)
  {
    v4 = 0x6E6F697469736F70;
    v5 = 0xEC00000065707954;
    if (a1 != 6)
    {
      v4 = 0x6D617473656D6974;
      v5 = 0xE900000000000070;
    }

    v6 = 0x6E6F697461636F6CLL;
    v7 = 0xEC00000065707954;
    if (a1 != 4)
    {
      v6 = 0x64757469676E6F6CLL;
      v7 = 0xE900000000000065;
    }

    v8 = a1 <= 5u;
  }

  else
  {
    v4 = 0xD000000000000012;
    v5 = 0x800000024A843B30;
    if (a1 != 2)
    {
      v4 = 0x656475746974616CLL;
      v5 = 0xE800000000000000;
    }

    v6 = 0x5379726574746162;
    v7 = 0xED00007375746174;
    if (!a1)
    {
      v6 = 0x4C79726574746162;
      v7 = 0xEC0000006C657665;
    }

    v8 = a1 <= 1u;
  }

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v4;
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        v2 = 0xE900000000000070;
        if (v9 != 0x6D617473656D6974)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      v11 = 1769172848;
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0xE900000000000065;
        if (v9 != 0x64757469676E6F6CLL)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      v11 = 1633906540;
    }

    v2 = 0xEC00000065707954;
    if (v9 != (v11 | 0x6E6F697400000000))
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0x800000024A843B30;
      if (v9 != 0xD000000000000012)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v2 = 0xE800000000000000;
    v3 = 0x656475746974616CLL;
  }

  else if (a2)
  {
    v2 = 0xED00007375746174;
    if (v9 != 0x5379726574746162)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (v9 != v3)
  {
LABEL_40:
    v12 = sub_24A82DC04();
    goto LABEL_41;
  }

LABEL_37:
  if (v10 != v2)
  {
    goto LABEL_40;
  }

  v12 = 1;
LABEL_41:

  return v12 & 1;
}

uint64_t sub_24A7D504C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF706D617473656DLL;
  v3 = 0x6954657461657263;
  v4 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v7 = 0x7865547472656C61;
      v8 = 0xE900000000000074;
    }

    else
    {
      if (a1 == 4)
      {
        v7 = 0xD000000000000013;
      }

      else
      {
        v7 = 0xD000000000000011;
      }

      if (v4 == 4)
      {
        v8 = 0x800000024A8444F0;
      }

      else
      {
        v8 = 0x800000024A844510;
      }
    }
  }

  else
  {
    v5 = 0x6F43737574617473;
    v6 = 0xEA00000000006564;
    if (a1 != 1)
    {
      v5 = 0x7469547472656C61;
      v6 = 0xEA0000000000656CLL;
    }

    if (a1)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x6954657461657263;
    }

    if (v4)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0xEF706D617473656DLL;
    }
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v9 = 0xD000000000000013;
      }

      else
      {
        v9 = 0xD000000000000011;
      }

      if (a2 == 4)
      {
        v2 = 0x800000024A8444F0;
      }

      else
      {
        v2 = 0x800000024A844510;
      }

      if (v7 != v9)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x7865547472656C61;
    v2 = 0xE900000000000074;
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xEA00000000006564;
      if (v7 != 0x6F43737574617473)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v2 = 0xEA0000000000656CLL;
      if (v7 != 0x7469547472656C61)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_34;
  }

  if (v7 != v3)
  {
LABEL_37:
    v10 = sub_24A82DC04();
    goto LABEL_38;
  }

LABEL_34:
  if (v8 != v2)
  {
    goto LABEL_37;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_24A7D5254(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7468676972;
    }

    else
    {
      v3 = 1952867692;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1702060387;
  }

  else if (a1 == 3)
  {
    v3 = 0x6F6C61646E617473;
    v4 = 0xEA0000000000656ELL;
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 1702131053;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7468676972;
    }

    else
    {
      v9 = 1952867692;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6F6C61646E617473;
    v6 = 0xEA0000000000656ELL;
    if (a2 != 3)
    {
      v5 = 1702131053;
      v6 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1702060387;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_24A82DC04();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_24A7D53B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E756F5379616C50;
  v3 = a1;
  v4 = 0x6F536574756D6E55;
  v5 = 0xEB00000000646E75;
  if (a1 != 2)
  {
    v4 = 0x6E756F53706F7453;
    v5 = 0xE900000000000064;
  }

  v6 = 0x6E756F536574754DLL;
  if (!a1)
  {
    v6 = 0x6E756F5379616C50;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v3 <= 1)
  {
    v8 = 0xE900000000000064;
  }

  else
  {
    v8 = v5;
  }

  v9 = 0x6F536574756D6E55;
  v10 = 0xEB00000000646E75;
  if (a2 != 2)
  {
    v9 = 0x6E756F53706F7453;
    v10 = 0xE900000000000064;
  }

  if (a2)
  {
    v2 = 0x6E756F536574754DLL;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = 0xE900000000000064;
  }

  else
  {
    v12 = v10;
  }

  if (v7 == v11 && v8 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_24A82DC04();
  }

  return v13 & 1;
}

uint64_t sub_24A7D54F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x72624E72656E776FLL;
    }

    else
    {
      v3 = 1954047348;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6954657461657263;
    v4 = 0xEF706D617473656DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0x6F43737574617473;
    v4 = 0xEA00000000006564;
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x7478655472657375;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x72624E72656E776FLL;
    }

    else
    {
      v9 = 1954047348;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6F43737574617473;
    v6 = 0xEA00000000006564;
    if (a2 != 3)
    {
      v5 = 0x7478655472657375;
      v6 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6954657461657263;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xEF706D617473656DLL;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_24A82DC04();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_24A7D569C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701869940;
  v6 = 0x6C61766F72707061;
  v7 = 0xED00006574617453;
  if (a1 != 4)
  {
    v6 = 1701667182;
    v7 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x696669746E656469;
  v9 = 0xEA00000000007265;
  if (a1 != 1)
  {
    v8 = 0x6E6F697461636F6CLL;
    v9 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x73736572646461;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701869940)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xED00006574617453;
      if (v10 != 0x6C61766F72707061)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701667182)
      {
LABEL_34:
        v13 = sub_24A82DC04();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEA00000000007265;
      if (v10 != 0x696669746E656469)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6E6F697461636F6CLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x73736572646461)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_24A7D5884(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6F43726576726573;
    }

    else
    {
      v3 = 0x7472656C61;
    }

    if (v2)
    {
      v4 = 0xED0000747865746ELL;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x6F666E4972657375;
  }

  else if (a1 == 3)
  {
    v3 = 0x6F43737574617473;
    v4 = 0xEA00000000006564;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x746E65746E6F63;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6F43726576726573;
    }

    else
    {
      v9 = 0x7472656C61;
    }

    if (a2)
    {
      v8 = 0xED0000747865746ELL;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6F43737574617473;
    v6 = 0xEA00000000006564;
    if (a2 != 3)
    {
      v5 = 0x746E65746E6F63;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6F666E4972657375;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_24A82DC04();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_24A7D5A2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701667182;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE900000000000065;
    v4 = 0xE500000000000000;
    if (a1 == 2)
    {
      v6 = 0x6C62616C69617661;
    }

    else
    {
      v6 = 0x646574756DLL;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE700000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x676E6979616C70;
    }

    else
    {
      v6 = 1701667182;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE400000000000000;
  v9 = 0x6C62616C69617661;
  v10 = 0xE900000000000065;
  if (a2 != 2)
  {
    v9 = 0x646574756DLL;
    v10 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x676E6979616C70;
    v8 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_24A82DC04();
  }

  return v13 & 1;
}

uint64_t sub_24A7D5B64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF64656C62616E45;
  v3 = 0x626154736D657469;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x626154736D657469;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (v4 == 2)
    {
      v6 = 0xEF64656C62616E45;
    }

    else
    {
      v6 = 0x800000024A843F00;
    }
  }

  else
  {
    v5 = 0xD000000000000014;
    if (v4)
    {
      v6 = 0x800000024A843ED0;
    }

    else
    {
      v5 = 0xD000000000000019;
      v6 = 0x800000024A843EB0;
    }
  }

  if (a2 != 2)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000024A843F00;
  }

  v7 = 0x800000024A843ED0;
  v8 = 0xD000000000000014;
  if (!a2)
  {
    v8 = 0xD000000000000019;
    v7 = 0x800000024A843EB0;
  }

  if (a2 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v3;
  }

  if (a2 <= 1u)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A82DC04();
  }

  return v11 & 1;
}

uint64_t sub_24A7D5C98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0x726576726573;
    }

    if (v2)
    {
      v4 = 0x800000024A844530;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x496B726F7774656ELL;
    v4 = 0xEC00000065757373;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x696C616974696E69;
    }

    else
    {
      v3 = 0x5441434552504544;
    }

    if (v2 == 3)
    {
      v4 = 0xEE006E6F6974617ALL;
    }

    else
    {
      v4 = 0xEA00000000004445;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0x726576726573;
    }

    if (a2)
    {
      v5 = 0x800000024A844530;
    }

    else
    {
      v5 = 0xE600000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEC00000065757373;
    if (v3 != 0x496B726F7774656ELL)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEE006E6F6974617ALL;
    if (v3 != 0x696C616974696E69)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEA00000000004445;
    if (v3 != 0x5441434552504544)
    {
LABEL_34:
      v7 = sub_24A82DC04();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_24A7D5E68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656ELL;
  v3 = 0x6F6C61646E617473;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1702060387;
    }

    else
    {
      v5 = 0x6F6C61646E617473;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEA0000000000656ELL;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE700000000000000;
    v5 = 0x6475427466656CLL;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6475427468676972;
    }

    else
    {
      v5 = 0x636972656E6567;
    }

    if (v4 == 3)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x6475427466656CLL;
  v9 = 0xE800000000000000;
  v10 = 0x6475427468676972;
  if (a2 != 3)
  {
    v10 = 0x636972656E6567;
    v9 = 0xE700000000000000;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 1702060387;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_24A82DC04();
  }

  return v13 & 1;
}

uint64_t sub_24A7D5FDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  if (a1 <= 3u)
  {
    v3 = 0xEA00000000007372;
    v11 = 0x4153487369;
    if (a1 == 2)
    {
      v11 = 0x65626D654D736168;
    }

    else
    {
      v3 = 0xE500000000000000;
    }

    v12 = 0xD000000000000010;
    v8 = 0x800000024A844390;
    if (a1)
    {
      v12 = 0xD000000000000011;
      v8 = 0x800000024A8443B0;
    }

    v9 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v10 = v12;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6449656C707061;
    v5 = 0x696669746E656469;
    if (a1 == 7)
    {
      v6 = 0xEA00000000007265;
    }

    else
    {
      v5 = 0x6D754E656E6F6870;
      v6 = 0xEB00000000726562;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0x6D614E7473726966;
    v8 = 0xE900000000000065;
    if (a1 != 4)
    {
      v7 = 0x656D614E7473616CLL;
      v8 = 0xE800000000000000;
    }

    v9 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (v9)
  {
    v13 = v8;
  }

  else
  {
    v13 = v3;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEA00000000007372;
        if (v10 != 0x65626D654D736168)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v10 != 0x4153487369)
        {
          goto LABEL_50;
        }
      }
    }

    else if (a2)
    {
      v2 = 0x800000024A8443B0;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v2 = 0x800000024A844390;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_50;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v2 = 0xE900000000000065;
      if (v10 != 0x6D614E7473726966)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (v10 != 0x656D614E7473616CLL)
      {
LABEL_50:
        v14 = sub_24A82DC04();
        goto LABEL_51;
      }
    }
  }

  else if (a2 == 6)
  {
    v2 = 0xE700000000000000;
    if (v10 != 0x6449656C707061)
    {
      goto LABEL_50;
    }
  }

  else if (a2 == 7)
  {
    if (v10 != 0x696669746E656469)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v2 = 0xEB00000000726562;
    if (v10 != 0x6D754E656E6F6870)
    {
      goto LABEL_50;
    }
  }

  if (v13 != v2)
  {
    goto LABEL_50;
  }

  v14 = 1;
LABEL_51:

  return v14 & 1;
}

uint64_t static FMIPDevice.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v226 = type metadata accessor for FMIPItemGroup(0);
  v224 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v5 = &v190[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v6 - 8);
  v225 = &v190[-v7];
  v223 = sub_24A6BBA94(&qword_27EF5F160, &unk_24A83DE28);
  MEMORY[0x28223BE20](v223);
  v227 = &v190[-v8];
  v219 = type metadata accessor for FMIPEraseMetadata(0);
  v216 = *(v219 - 1);
  MEMORY[0x28223BE20](v219);
  v218 = &v190[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  MEMORY[0x28223BE20](v10 - 8);
  v217 = &v190[-v11];
  v215 = sub_24A6BBA94(&qword_27EF5F168, &qword_24A83DE38);
  MEMORY[0x28223BE20](v215);
  v220 = &v190[-v12];
  v213 = type metadata accessor for FMIPLockMetadata(0);
  v210 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v212 = &v190[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_24A6BBA94(&qword_27EF5DE50, &qword_24A83DE40);
  MEMORY[0x28223BE20](v14 - 8);
  v211 = &v190[-v15];
  v209 = sub_24A6BBA94(&qword_27EF5F170, &unk_24A83DE48);
  MEMORY[0x28223BE20](v209);
  v214 = &v190[-v16];
  v206 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
  v204 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v208 = &v190[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  MEMORY[0x28223BE20](v18 - 8);
  v205 = &v190[-v19];
  v203 = sub_24A6BBA94(&qword_27EF5F178, &qword_24A83DE58);
  MEMORY[0x28223BE20](v203);
  v207 = &v190[-v20];
  v200 = type metadata accessor for FMIPPlaySoundMetadata(0);
  v198 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v202 = &v190[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  MEMORY[0x28223BE20](v22 - 8);
  v199 = &v190[-v23];
  v197 = sub_24A6BBA94(&qword_27EF5F180, &unk_24A83DE68);
  MEMORY[0x28223BE20](v197);
  v201 = &v190[-v24];
  v25 = sub_24A82CA34();
  v230 = *(v25 - 8);
  v231 = v25;
  MEMORY[0x28223BE20](v25);
  v228 = &v190[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v222 = &v190[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v190[-v31];
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v190[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v190[-v36];
  v229 = sub_24A6BBA94(&qword_27EF5F188, &qword_24A83DE78);
  v38 = MEMORY[0x28223BE20](v229);
  v221 = &v190[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v190[-v41];
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v190[-v44];
  MEMORY[0x28223BE20](v43);
  v47 = &v190[-v46];
  if (*a1 != *a2 && (sub_24A82DC04() & 1) == 0)
  {
    goto LABEL_73;
  }

  v48 = *(a1 + 24);
  v49 = *(a2 + 24);
  if (v48)
  {
    if (!v49 || (*(a1 + 16) != *(a2 + 16) || v48 != v49) && (sub_24A82DC04() & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if (v49)
  {
    goto LABEL_73;
  }

  if ((*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_24A82DC04() & 1) == 0)
  {
    goto LABEL_73;
  }

  v50 = *(a1 + 56);
  v51 = *(a2 + 56);
  if (v50)
  {
    if (!v51 || (*(a1 + 48) != *(a2 + 48) || v50 != v51) && (sub_24A82DC04() & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if (v51)
  {
    goto LABEL_73;
  }

  if ((*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (sub_24A82DC04() & 1) == 0)
  {
    goto LABEL_73;
  }

  v196 = v5;
  if (qword_24A83EEC8[*(a1 + 80)] == qword_24A83EEC8[*(a2 + 80)])
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v52 = sub_24A82DC04();
    swift_bridgeObjectRelease_n();
    if ((v52 & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  v53 = *(a1 + 96);
  v54 = *(a2 + 96);
  if (v53)
  {
    if (!v54 || (*(a1 + 88) != *(a2 + 88) || v53 != v54) && (sub_24A82DC04() & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if (v54)
  {
    goto LABEL_73;
  }

  if ((*(a1 + 104) != *(a2 + 104) || *(a1 + 112) != *(a2 + 112)) && (sub_24A82DC04() & 1) == 0 || (*(a1 + 120) != *(a2 + 120) || *(a1 + 128) != *(a2 + 128)) && (sub_24A82DC04() & 1) == 0 || (*(a1 + 136) != *(a2 + 136) || *(a1 + 144) != *(a2 + 144)) && (sub_24A82DC04() & 1) == 0 || (*(a1 + 168) != *(a2 + 168) || *(a1 + 176) != *(a2 + 176)) && (sub_24A82DC04() & 1) == 0 || (*(a1 + 152) != *(a2 + 152) || *(a1 + 160) != *(a2 + 160)) && (sub_24A82DC04() & 1) == 0 || (sub_24A6A3BD4(*(a1 + 192), *(a2 + 192)) & 1) == 0 || *(a1 + 184) != *(a2 + 184) || *(a1 + 200) != *(a2 + 200) || *(a1 + 208) != *(a2 + 208))
  {
    goto LABEL_73;
  }

  v192 = type metadata accessor for FMIPDevice(0);
  v195 = v192[39];
  v55 = *(v229 + 48);
  sub_24A67E964(a1 + v195, v47, &qword_27EF5E0E0, &qword_24A836D90);
  v193 = v55;
  sub_24A67E964(a2 + v195, &v55[v47], &qword_27EF5E0E0, &qword_24A836D90);
  v56 = *(v230 + 48);
  v195 = v230 + 48;
  v57 = v56(v47, 1, v231);
  v194 = v56;
  if (v57 != 1)
  {
    sub_24A67E964(v47, v37, &qword_27EF5E0E0, &qword_24A836D90);
    if (v194(&v193[v47], 1, v231) != 1)
    {
      (*(v230 + 32))(v228, &v193[v47], v231);
      sub_24A7E0BD0(&qword_27EF5F190, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v191 = sub_24A82CF84();
      v193 = *(v230 + 8);
      (v193)(v228, v231);
      (v193)(v37, v231);
      sub_24A67F378(v47, &qword_27EF5E0E0, &qword_24A836D90);
      if ((v191 & 1) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_59;
    }

    (*(v230 + 8))(v37, v231);
LABEL_57:
    v58 = &qword_27EF5F188;
    v59 = &qword_24A83DE78;
    v60 = v47;
    goto LABEL_72;
  }

  if (v194(&v193[v47], 1, v231) != 1)
  {
    goto LABEL_57;
  }

  sub_24A67F378(v47, &qword_27EF5E0E0, &qword_24A836D90);
LABEL_59:
  v61 = v192[40];
  v62 = *(v229 + 48);
  sub_24A67E964(a1 + v61, v45, &qword_27EF5E0E0, &qword_24A836D90);
  v193 = v62;
  sub_24A67E964(a2 + v61, &v62[v45], &qword_27EF5E0E0, &qword_24A836D90);
  v63 = v231;
  v64 = v194;
  if (v194(v45, 1, v231) == 1)
  {
    if (v64(&v193[v45], 1, v63) == 1)
    {
      sub_24A67F378(v45, &qword_27EF5E0E0, &qword_24A836D90);
      goto LABEL_66;
    }

LABEL_64:
    v58 = &qword_27EF5F188;
    v59 = &qword_24A83DE78;
    v60 = v45;
    goto LABEL_72;
  }

  sub_24A67E964(v45, v35, &qword_27EF5E0E0, &qword_24A836D90);
  if (v64(&v193[v45], 1, v63) == 1)
  {
    (*(v230 + 8))(v35, v63);
    goto LABEL_64;
  }

  v65 = v230;
  (*(v230 + 32))(v228, &v193[v45], v63);
  sub_24A7E0BD0(&qword_27EF5F190, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  LODWORD(v193) = sub_24A82CF84();
  v66 = *(v65 + 8);
  v66(v228, v63);
  v66(v35, v63);
  sub_24A67F378(v45, &qword_27EF5E0E0, &qword_24A836D90);
  if (v193)
  {
LABEL_66:
    v67 = v192[41];
    v68 = *(v229 + 48);
    sub_24A67E964(a1 + v67, v42, &qword_27EF5E0E0, &qword_24A836D90);
    sub_24A67E964(a2 + v67, v42 + v68, &qword_27EF5E0E0, &qword_24A836D90);
    v69 = v231;
    v70 = v194;
    if (v194(v42, 1, v231) == 1)
    {
      if (v70(v42 + v68, 1, v69) == 1)
      {
        sub_24A67F378(v42, &qword_27EF5E0E0, &qword_24A836D90);
        goto LABEL_76;
      }
    }

    else
    {
      sub_24A67E964(v42, v32, &qword_27EF5E0E0, &qword_24A836D90);
      if (v70(v42 + v68, 1, v69) != 1)
      {
        v73 = v230;
        v74 = v231;
        v75 = v228;
        (*(v230 + 32))(v228, v42 + v68, v231);
        sub_24A7E0BD0(&qword_27EF5F190, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v76 = sub_24A82CF84();
        v77 = *(v73 + 8);
        v77(v75, v74);
        v77(v32, v74);
        sub_24A67F378(v42, &qword_27EF5E0E0, &qword_24A836D90);
        if ((v76 & 1) == 0)
        {
          goto LABEL_73;
        }

LABEL_76:
        if (*(a1 + v192[38]) != *(a2 + v192[38]))
        {
          goto LABEL_73;
        }

        if (*(a1 + v192[43]) != *(a2 + v192[43]))
        {
          goto LABEL_73;
        }

        if (*(a1 + v192[44]) != *(a2 + v192[44]))
        {
          goto LABEL_73;
        }

        if (*(a1 + v192[45]) != *(a2 + v192[45]))
        {
          goto LABEL_73;
        }

        v78 = *(a1 + 216);
        if (v78 != *(a2 + 216))
        {
          goto LABEL_73;
        }

        v79 = *(a1 + 264);
        v80 = *(a2 + 264);
        if (v79)
        {
          v81 = *(a2 + 256);
          v82 = *(a2 + 272);
          v83 = *(a1 + 272);
          v238[0] = *(a1 + 256);
          *&v238[1] = v79;
          v238[2] = v83;
          if (!v80)
          {
LABEL_90:
            v95 = v79;
            v96 = 0;
LABEL_93:

            goto LABEL_73;
          }

          LOWORD(v236[0]) = v81 & 0x101;
          BYTE2(v236[0]) = BYTE2(v81) & 1;
          BYTE3(v236[0]) = BYTE3(v81);
          v236[1] = v80;
          v236[2] = v82;
          v84 = v79;
          v85 = v80;
          v86 = v84;
          v87 = _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(v238, v236);

          if ((v87 & 1) == 0)
          {
            goto LABEL_73;
          }
        }

        else if (v80)
        {
          goto LABEL_92;
        }

        v79 = *(a1 + 288);
        v80 = *(a2 + 288);
        if (v79)
        {
          v88 = *(a2 + 280);
          v89 = *(a2 + 296);
          v90 = *(a1 + 296);
          v238[0] = *(a1 + 280);
          *&v238[1] = v79;
          v238[2] = v90;
          if (v80)
          {
            LOWORD(v236[0]) = v88 & 0x101;
            BYTE2(v236[0]) = BYTE2(v88) & 1;
            BYTE3(v236[0]) = BYTE3(v88);
            v236[1] = v80;
            v236[2] = v89;
            v91 = v79;
            v92 = v80;
            v93 = v91;
            v94 = _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(v238, v236);

            if ((v94 & 1) == 0)
            {
              goto LABEL_73;
            }

LABEL_94:
            v236[0] = *(a1 + 256);
            *&v236[1] = *(a1 + 264);
            v241[0] = *(a1 + 280);
            *&v241[1] = *(a1 + 288);
            v97 = (v78 >> 5) & 1;
            v98 = v192;
            v99 = v192[32];
            v100 = v236[1];
            v101 = v241[1];
            v102 = v100;
            v193 = v99;
            sub_24A7DC368(v236, v241, v97, &v99[a1], v238);

            v103 = v238[0];
            v104 = v238[1];
            v105 = v238[2];
            v241[0] = *(a2 + 256);
            *&v241[1] = *(a2 + 264);
            v240[0] = *(a2 + 280);
            *&v240[1] = *(a2 + 288);
            v106 = v241[1];
            v107 = v98[32];
            v108 = v240[1];
            v109 = v106;
            sub_24A7DC368(v241, v240, v97, a2 + v107, v236);

            v110 = v236[1];
            if (v104 == 0.0)
            {
              if (!v236[1])
              {
                goto LABEL_101;
              }

              v104 = 0.0;
            }

            else
            {
              *v241 = v103;
              *&v241[1] = v104;
              *&v241[2] = v105;
              if (v236[1])
              {
                LODWORD(v240[0]) = v236[0] & 0xFF010101;
                v240[1] = v236[1];
                v240[2] = v236[2];
                v111 = *&v104;
                v112 = _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(v241, v240);

                if ((v112 & 1) == 0)
                {
                  goto LABEL_73;
                }

LABEL_101:
                memcpy(v239, (a1 + 304), sizeof(v239));
                memcpy(v240, (a2 + 304), sizeof(v240));
                memcpy(v238, (a1 + 304), 0x120uLL);
                memcpy(&v238[36], (a2 + 304), 0x120uLL);
                memcpy(v241, (a1 + 304), 0x120uLL);
                if (sub_24A6921A8(v241) == 1)
                {
                  memcpy(v236, &v238[36], 0x120uLL);
                  if (sub_24A6921A8(v236) == 1)
                  {
                    memcpy(v237, v238, sizeof(v237));
                    sub_24A67E964(v239, v235, &unk_27EF5E0D0, &qword_24A8319E0);
                    sub_24A67E964(v240, v235, &unk_27EF5E0D0, &qword_24A8319E0);
                    sub_24A67F378(v237, &unk_27EF5E0D0, &qword_24A8319E0);
                    goto LABEL_109;
                  }

                  sub_24A67E964(v239, v237, &unk_27EF5E0D0, &qword_24A8319E0);
                  sub_24A67E964(v240, v237, &unk_27EF5E0D0, &qword_24A8319E0);
                }

                else
                {
                  memcpy(v237, v238, sizeof(v237));
                  memcpy(v235, v238, sizeof(v235));
                  memcpy(v236, &v238[36], 0x120uLL);
                  if (sub_24A6921A8(v236) != 1)
                  {
                    memcpy(v234, &v238[36], sizeof(v234));
                    v113 = _s8FMIPCore11FMIPAddressV2eeoiySbAC_ACtFZ_0(v235, v234);
                    memcpy(v232, v234, sizeof(v232));
                    sub_24A67E964(v239, v233, &unk_27EF5E0D0, &qword_24A8319E0);
                    sub_24A67E964(v240, v233, &unk_27EF5E0D0, &qword_24A8319E0);
                    sub_24A67E964(v237, v233, &unk_27EF5E0D0, &qword_24A8319E0);
                    sub_24A6CD854(v232);
                    memcpy(v233, v235, sizeof(v233));
                    sub_24A6CD854(v233);
                    memcpy(v234, v238, sizeof(v234));
                    sub_24A67F378(v234, &unk_27EF5E0D0, &qword_24A8319E0);
                    if ((v113 & 1) == 0)
                    {
                      goto LABEL_73;
                    }

LABEL_109:
                    if (*(a1 + 240) != *(a2 + 240))
                    {
                      goto LABEL_73;
                    }

                    v114 = v192[28];
                    v115 = *(v197 + 48);
                    v116 = v201;
                    sub_24A67E964(a1 + v114, v201, &qword_27EF5D5F8, &qword_24A83DE60);
                    sub_24A67E964(a2 + v114, &v116[v115], &qword_27EF5D5F8, &qword_24A83DE60);
                    v117 = *(v198 + 48);
                    if (v117(v116, 1, v200) == 1)
                    {
                      if (v117(&v201[v115], 1, v200) == 1)
                      {
                        sub_24A67F378(v201, &qword_27EF5D5F8, &qword_24A83DE60);
                        goto LABEL_117;
                      }
                    }

                    else
                    {
                      v118 = v201;
                      sub_24A67E964(v201, v199, &qword_27EF5D5F8, &qword_24A83DE60);
                      if (v117(&v118[v115], 1, v200) != 1)
                      {
                        v119 = v201;
                        v120 = &v201[v115];
                        v121 = v202;
                        sub_24A7E11A4(v120, v202, type metadata accessor for FMIPPlaySoundMetadata);
                        v122 = v199;
                        v123 = _s8FMIPCore21FMIPPlaySoundMetadataV2eeoiySbAC_ACtFZ_0(v199, v121);
                        sub_24A692298(v121, type metadata accessor for FMIPPlaySoundMetadata);
                        sub_24A692298(v122, type metadata accessor for FMIPPlaySoundMetadata);
                        sub_24A67F378(v119, &qword_27EF5D5F8, &qword_24A83DE60);
                        if ((v123 & 1) == 0)
                        {
                          goto LABEL_73;
                        }

LABEL_117:
                        v124 = v192[29];
                        v125 = *(v203 + 48);
                        v126 = v207;
                        sub_24A67E964(a1 + v124, v207, &unk_27EF5E0A0, &unk_24A8367D0);
                        sub_24A67E964(a2 + v124, &v126[v125], &unk_27EF5E0A0, &unk_24A8367D0);
                        v127 = *(v204 + 48);
                        if (v127(v126, 1, v206) == 1)
                        {
                          if (v127(&v207[v125], 1, v206) == 1)
                          {
                            sub_24A67F378(v207, &unk_27EF5E0A0, &unk_24A8367D0);
                            goto LABEL_124;
                          }
                        }

                        else
                        {
                          v128 = v207;
                          sub_24A67E964(v207, v205, &unk_27EF5E0A0, &unk_24A8367D0);
                          if (v127(&v128[v125], 1, v206) != 1)
                          {
                            v129 = v207;
                            v130 = &v207[v125];
                            v131 = v208;
                            sub_24A7E11A4(v130, v208, type metadata accessor for FMIPDeviceLostModeMetadata);
                            v132 = v205;
                            v133 = _s8FMIPCore26FMIPDeviceLostModeMetadataV2eeoiySbAC_ACtFZ_0(v205, v131);
                            sub_24A692298(v131, type metadata accessor for FMIPDeviceLostModeMetadata);
                            sub_24A692298(v132, type metadata accessor for FMIPDeviceLostModeMetadata);
                            sub_24A67F378(v129, &unk_27EF5E0A0, &unk_24A8367D0);
                            if ((v133 & 1) == 0)
                            {
                              goto LABEL_73;
                            }

LABEL_124:
                            v134 = v192[30];
                            v135 = *(v209 + 48);
                            v136 = v214;
                            sub_24A67E964(a1 + v134, v214, &qword_27EF5DE50, &qword_24A83DE40);
                            sub_24A67E964(a2 + v134, &v136[v135], &qword_27EF5DE50, &qword_24A83DE40);
                            v137 = *(v210 + 48);
                            if (v137(v136, 1, v213) == 1)
                            {
                              if (v137(&v214[v135], 1, v213) == 1)
                              {
                                sub_24A67F378(v214, &qword_27EF5DE50, &qword_24A83DE40);
                                goto LABEL_132;
                              }
                            }

                            else
                            {
                              v138 = v214;
                              sub_24A67E964(v214, v211, &qword_27EF5DE50, &qword_24A83DE40);
                              if (v137(&v138[v135], 1, v213) != 1)
                              {
                                sub_24A7E11A4(&v214[v135], v212, type metadata accessor for FMIPLockMetadata);
                                if ((sub_24A82C9E4() & 1) == 0)
                                {
                                  sub_24A692298(v212, type metadata accessor for FMIPLockMetadata);
                                  sub_24A692298(v211, type metadata accessor for FMIPLockMetadata);
                                  v58 = &qword_27EF5DE50;
                                  v59 = &qword_24A83DE40;
                                  v60 = v214;
                                  goto LABEL_72;
                                }

                                v139 = v211;
                                v140 = *v211;
                                v141 = *v212;
                                sub_24A692298(v212, type metadata accessor for FMIPLockMetadata);
                                v142 = qword_24A83EE38[v140];
                                v143 = qword_24A83EE38[v141];
                                sub_24A692298(v139, type metadata accessor for FMIPLockMetadata);
                                sub_24A67F378(v214, &qword_27EF5DE50, &qword_24A83DE40);
                                if (v142 != v143)
                                {
                                  goto LABEL_73;
                                }

LABEL_132:
                                v144 = v192[31];
                                v145 = *(v215 + 48);
                                v146 = v220;
                                sub_24A67E964(a1 + v144, v220, &qword_27EF5DE48, &unk_24A8367C0);
                                sub_24A67E964(a2 + v144, &v146[v145], &qword_27EF5DE48, &unk_24A8367C0);
                                v147 = *(v216 + 48);
                                if (v147(v146, 1, v219) == 1)
                                {
                                  if (v147(&v220[v145], 1, v219) == 1)
                                  {
                                    sub_24A67F378(v220, &qword_27EF5DE48, &unk_24A8367C0);
LABEL_135:
                                    if ((sub_24A6A4098(*(a1 + 232), *(a2 + 232)) & 1) == 0)
                                    {
                                      goto LABEL_73;
                                    }

                                    v148 = *(a1 + 248);
                                    v149 = *(a2 + 248);
                                    if (v148)
                                    {
                                      if (!v149)
                                      {
                                        goto LABEL_73;
                                      }

                                      v150 = sub_24A7D8F24(v148, v149);

                                      if ((v150 & 1) == 0)
                                      {
                                        goto LABEL_73;
                                      }
                                    }

                                    else if (v149)
                                    {
                                      goto LABEL_73;
                                    }

                                    v164 = *(v223 + 48);
                                    v165 = v227;
                                    sub_24A67E964(&v193[a1], v227, &unk_27EF5E0B0, &qword_24A8338B0);
                                    sub_24A67E964(a2 + v107, &v165[v164], &unk_27EF5E0B0, &qword_24A8338B0);
                                    v166 = *(v224 + 48);
                                    if (v166(v165, 1, v226) == 1)
                                    {
                                      if (v166(&v227[v164], 1, v226) == 1)
                                      {
                                        sub_24A67F378(v227, &unk_27EF5E0B0, &qword_24A8338B0);
LABEL_163:
                                        if (*(a1 + v192[33]) != *(a2 + v192[33]) || (sub_24A6A428C(*(a1 + 224), *(a2 + 224)) & 1) == 0 || *(a1 + v192[34]) != *(a2 + v192[34]) || *(a1 + v192[36]) != *(a2 + v192[36]))
                                        {
                                          goto LABEL_73;
                                        }

                                        v173 = v192[37];
                                        v174 = (a1 + v173);
                                        v175 = *(a1 + v173 + 8);
                                        v176 = (a2 + v173);
                                        v177 = v176[1];
                                        if (v175)
                                        {
                                          if (!v177 || (*v174 != *v176 || v175 != v177) && (sub_24A82DC04() & 1) == 0)
                                          {
                                            goto LABEL_73;
                                          }
                                        }

                                        else if (v177)
                                        {
                                          goto LABEL_73;
                                        }

                                        v178 = v192[42];
                                        v179 = *(v229 + 48);
                                        v180 = a1 + v178;
                                        v181 = v221;
                                        sub_24A67E964(v180, v221, &qword_27EF5E0E0, &qword_24A836D90);
                                        sub_24A67E964(a2 + v178, &v181[v179], &qword_27EF5E0E0, &qword_24A836D90);
                                        if (v194(v181, 1, v231) == 1)
                                        {
                                          if (v194(&v221[v179], 1, v231) == 1)
                                          {
                                            sub_24A67F378(v221, &qword_27EF5E0E0, &qword_24A836D90);
                                            v71 = 1;
                                            return v71 & 1;
                                          }
                                        }

                                        else
                                        {
                                          v182 = v221;
                                          sub_24A67E964(v221, v222, &qword_27EF5E0E0, &qword_24A836D90);
                                          if (v194(&v182[v179], 1, v231) != 1)
                                          {
                                            v184 = v230;
                                            v183 = v231;
                                            v185 = v221;
                                            v186 = &v221[v179];
                                            v187 = v228;
                                            (*(v230 + 32))(v228, v186, v231);
                                            sub_24A7E0BD0(&qword_27EF5F190, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
                                            v188 = v222;
                                            v71 = sub_24A82CF84();
                                            v189 = *(v184 + 8);
                                            v189(v187, v183);
                                            v189(v188, v183);
                                            sub_24A67F378(v185, &qword_27EF5E0E0, &qword_24A836D90);
                                            return v71 & 1;
                                          }

                                          (*(v230 + 8))(v222, v231);
                                        }

                                        v58 = &qword_27EF5F188;
                                        v59 = &qword_24A83DE78;
                                        v60 = v221;
                                        goto LABEL_72;
                                      }
                                    }

                                    else
                                    {
                                      v167 = v227;
                                      sub_24A67E964(v227, v225, &unk_27EF5E0B0, &qword_24A8338B0);
                                      if (v166(&v167[v164], 1, v226) != 1)
                                      {
                                        v168 = v227;
                                        v169 = &v227[v164];
                                        v170 = v196;
                                        sub_24A7E11A4(v169, v196, type metadata accessor for FMIPItemGroup);
                                        v171 = v225;
                                        v172 = _s8FMIPCore13FMIPItemGroupV2eeoiySbAC_ACtFZ_0(v225, v170);
                                        sub_24A692298(v170, type metadata accessor for FMIPItemGroup);
                                        sub_24A692298(v171, type metadata accessor for FMIPItemGroup);
                                        sub_24A67F378(v168, &unk_27EF5E0B0, &qword_24A8338B0);
                                        if ((v172 & 1) == 0)
                                        {
                                          goto LABEL_73;
                                        }

                                        goto LABEL_163;
                                      }

                                      sub_24A692298(v225, type metadata accessor for FMIPItemGroup);
                                    }

                                    v58 = &qword_27EF5F160;
                                    v59 = &unk_24A83DE28;
                                    v60 = v227;
LABEL_72:
                                    sub_24A67F378(v60, v58, v59);
                                    goto LABEL_73;
                                  }
                                }

                                else
                                {
                                  v151 = v220;
                                  sub_24A67E964(v220, v217, &qword_27EF5DE48, &unk_24A8367C0);
                                  if (v147(&v151[v145], 1, v219) != 1)
                                  {
                                    sub_24A7E11A4(&v220[v145], v218, type metadata accessor for FMIPEraseMetadata);
                                    if ((sub_24A82C9E4() & 1) == 0 || qword_24A83EE38[*v217] != qword_24A83EE38[*v218] || ((v152 = v219[7], v153 = &v217[v152], v154 = *&v217[v152 + 8], v155 = &v218[v152], *v153 != *v155) || v154 != *(v155 + 1)) && (sub_24A82DC04() & 1) == 0 || ((v156 = v219[6], v157 = &v217[v156], v158 = *&v217[v156 + 8], v159 = &v218[v156], *v157 != *v159) || v158 != *(v159 + 1)) && (sub_24A82DC04() & 1) == 0)
                                    {
                                      sub_24A692298(v218, type metadata accessor for FMIPEraseMetadata);
                                      sub_24A692298(v217, type metadata accessor for FMIPEraseMetadata);
                                      v58 = &qword_27EF5DE48;
                                      v59 = &unk_24A8367C0;
                                      v60 = v220;
                                      goto LABEL_72;
                                    }

                                    v160 = v219[8];
                                    v161 = v217;
                                    v162 = v217[v160];
                                    v163 = v218[v160];
                                    sub_24A692298(v218, type metadata accessor for FMIPEraseMetadata);
                                    sub_24A692298(v161, type metadata accessor for FMIPEraseMetadata);
                                    sub_24A67F378(v220, &qword_27EF5DE48, &unk_24A8367C0);
                                    if (v162 != v163)
                                    {
                                      goto LABEL_73;
                                    }

                                    goto LABEL_135;
                                  }

                                  sub_24A692298(v217, type metadata accessor for FMIPEraseMetadata);
                                }

                                v58 = &qword_27EF5F168;
                                v59 = &qword_24A83DE38;
                                v60 = v220;
                                goto LABEL_72;
                              }

                              sub_24A692298(v211, type metadata accessor for FMIPLockMetadata);
                            }

                            v58 = &qword_27EF5F170;
                            v59 = &unk_24A83DE48;
                            v60 = v214;
                            goto LABEL_72;
                          }

                          sub_24A692298(v205, type metadata accessor for FMIPDeviceLostModeMetadata);
                        }

                        v58 = &qword_27EF5F178;
                        v59 = &qword_24A83DE58;
                        v60 = v207;
                        goto LABEL_72;
                      }

                      sub_24A692298(v199, type metadata accessor for FMIPPlaySoundMetadata);
                    }

                    v58 = &qword_27EF5F180;
                    v59 = &unk_24A83DE68;
                    v60 = v201;
                    goto LABEL_72;
                  }

                  memcpy(v234, v238, sizeof(v234));
                  sub_24A67E964(v239, v233, &unk_27EF5E0D0, &qword_24A8319E0);
                  sub_24A67E964(v240, v233, &unk_27EF5E0D0, &qword_24A8319E0);
                  sub_24A67E964(v237, v233, &unk_27EF5E0D0, &qword_24A8319E0);
                  sub_24A6CD854(v234);
                }

                memcpy(v236, v238, sizeof(v236));
                v58 = &qword_27EF5D280;
                v59 = &unk_24A831EC0;
                v60 = v236;
                goto LABEL_72;
              }
            }

            goto LABEL_73;
          }

          goto LABEL_90;
        }

        if (!v80)
        {
          goto LABEL_94;
        }

LABEL_92:
        v96 = v80;
        v95 = 0;
        goto LABEL_93;
      }

      (*(v230 + 8))(v32, v231);
    }

    v58 = &qword_27EF5F188;
    v59 = &qword_24A83DE78;
    v60 = v42;
    goto LABEL_72;
  }

LABEL_73:
  v71 = 0;
  return v71 & 1;
}

uint64_t sub_24A7D8568@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_24A7D85C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL FMIPDevice.shouldDisplaySeparatedLocation.getter()
{
  v1 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for FMIPDevice(0);
  sub_24A67E964(v0 + *(v4 + 128), v3, &unk_27EF5E0B0, &qword_24A8338B0);
  v5 = type metadata accessor for FMIPItemGroup(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_24A67F378(v3, &unk_27EF5E0B0, &qword_24A8338B0);
    return 0;
  }

  else
  {
    v6 = FMIPItemGroup.shouldDisplaySeparatedLocation.getter();
    sub_24A692298(v3, type metadata accessor for FMIPItemGroup);
  }

  return v6;
}

uint64_t sub_24A7D8798(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_24A82DC04() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t sub_24A7D8828(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  result = sub_24A6AEB68();
  v4 = 0;
  while (2)
  {
    if (v2)
    {
      v29 = v4;
      v30 = v2;
      v6 = *(a1 + v4 + 35);
      v7 = *(a1 + v4 + 48);
      v8 = *(a1 + v4 + 34);
      v9 = *(a1 + v4 + 33);
      v10 = *(a1 + v4 + 32);
      v11 = *(a2 + v4 + 32);
      v12 = *(a2 + v4 + 33);
      v13 = *(a2 + v4 + 34);
      v31 = *(a2 + v4 + 35);
      v14 = *(a2 + v4 + 40);
      v15 = *(a2 + v4 + 48);
      v16 = *(a1 + v4 + 40);
      v17 = v14;
      v32 = v16;
      if ((sub_24A82D5E4() & 1) != 0 && v7 == v15 && ((v10 ^ v11) & 1) == 0 && ((v9 ^ v12) & 1) == 0 && ((v8 ^ v13) & 1) == 0)
      {
        v18 = 0xE700000000000000;
        v19 = 0x6E776F6E6B6E75;
        v20 = 0x6E776F6E6B6E75;
        switch(v6)
        {
          case 1:
            v20 = 0x756F7364776F7263;
            v18 = 0xEC00000064656372;
            break;
          case 2:
            v18 = 0xE300000000000000;
            v20 = 5460039;
            break;
          case 3:
            v18 = 0xE400000000000000;
            v20 = 1768319319;
            break;
          case 4:
            v20 = 0x61636F4C65666173;
            v18 = 0xEC0000006E6F6974;
            break;
          case 5:
            v20 = 0xD000000000000012;
            v18 = 0x800000024A8439F0;
            break;
          case 6:
            v18 = 0xE800000000000000;
            v20 = 0x656D69746C616572;
            break;
          case 7:
            v20 = 0x6F4C646572696170;
            v18 = 0xEE006E6F69746163;
            break;
          case 8:
            v20 = 0x6E6E6F437473616CLL;
            v21 = 1702126437;
            goto LABEL_32;
          case 9:
            v20 = 0xD000000000000019;
            v18 = 0x800000024A843A30;
            break;
          case 10:
            v20 = 0xD000000000000010;
            v18 = 0x800000024A843A50;
            break;
          case 11:
            v20 = 0x656E774F7261656ELL;
            v18 = 0xE900000000000072;
            break;
          case 12:
            v20 = 0xD000000000000018;
            v18 = 0x800000024A843A70;
            break;
          case 13:
            v20 = 0x786F725072656570;
            v18 = 0xEB00000000646569;
            break;
          case 14:
            v20 = 0x6C627550666C6573;
            v21 = 1701344105;
LABEL_32:
            v18 = v21 | 0xED00006400000000;
            break;
          case 15:
            v20 = 0xD000000000000014;
            v18 = 0x800000024A843AB0;
            break;
          case 16:
            v18 = 0xE600000000000000;
            v20 = 0x646568636163;
            break;
          case 17:
            v20 = 0x6552746E65746E69;
            v18 = 0xEE0065736E6F7073;
            break;
          case 18:
            v20 = 0xD000000000000014;
            v18 = 0x800000024A843AE0;
            break;
          case 19:
            v20 = 0xD000000000000013;
            v18 = 0x800000024A843B00;
            break;
          default:
            break;
        }

        v22 = 0xE700000000000000;
        switch(v31)
        {
          case 1:
            v23 = 0x756F7364776F7263;
            v24 = 1684366194;
            goto LABEL_43;
          case 2:
            v22 = 0xE300000000000000;
            if (v20 != 5460039)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 3:
            v22 = 0xE400000000000000;
            if (v20 != 1768319319)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 4:
            v23 = 0x61636F4C65666173;
            v24 = 1852795252;
LABEL_43:
            v22 = v24 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v20 != v23)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 5:
            v22 = 0x800000024A8439F0;
            if (v20 != 0xD000000000000012)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 6:
            v22 = 0xE800000000000000;
            if (v20 != 0x656D69746C616572)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 7:
            v25 = 0x6F4C646572696170;
            v26 = 0x6E6F69746163;
            goto LABEL_57;
          case 8:
            v19 = 0x6E6E6F437473616CLL;
            v22 = 0xED00006465746365;
            goto LABEL_70;
          case 9:
            v22 = 0x800000024A843A30;
            if (v20 != 0xD000000000000019)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 10:
            v22 = 0x800000024A843A50;
            if (v20 != 0xD000000000000010)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 11:
            v22 = 0xE900000000000072;
            if (v20 != 0x656E774F7261656ELL)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 12:
            v22 = 0x800000024A843A70;
            if (v20 != 0xD000000000000018)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 13:
            v22 = 0xEB00000000646569;
            if (v20 != 0x786F725072656570)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 14:
            v22 = 0xED00006465687369;
            if (v20 != 0x6C627550666C6573)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 15:
            v22 = 0x800000024A843AB0;
            if (v20 != 0xD000000000000014)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 16:
            v22 = 0xE600000000000000;
            if (v20 != 0x646568636163)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 17:
            v25 = 0x6552746E65746E69;
            v26 = 0x65736E6F7073;
LABEL_57:
            v22 = v26 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v20 != v25)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 18:
            v22 = 0x800000024A843AE0;
            if (v20 != 0xD000000000000014)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 19:
            v22 = 0x800000024A843B00;
            if (v20 != 0xD000000000000013)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          default:
LABEL_70:
            if (v20 != v19)
            {
              goto LABEL_5;
            }

LABEL_71:
            if (v18 == v22)
            {
            }

            else
            {
LABEL_5:
              v5 = sub_24A82DC04();

              if ((v5 & 1) == 0)
              {
                return 0;
              }
            }

            v4 = v29 + 24;
            v2 = v30 - 1;
            if (v30 != 1)
            {
              continue;
            }

            return 1;
        }
      }

      return 0;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A7D8F24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    sub_24A6AEB68();
    v5 = (a2 + 56);
    v6 = (a1 + 56);
    while (1)
    {
      v8 = *(v6 - 24);
      v9 = *(v6 - 1);
      v10 = *v6;
      v11 = *(v5 - 24);
      v12 = *(v5 - 2);
      v13 = *(v5 - 1);
      v14 = *v5;
      v15 = *(v6 - 2);
      v30 = v12;
      if ((sub_24A82D5E4() & 1) == 0)
      {
        break;
      }

      v16 = 0x6E776F6E6B6E75;
      v17 = 0xE700000000000000;
      switch(v8)
      {
        case 1:
          v16 = 0x756F7364776F7263;
          v17 = 0xEC00000064656372;
          break;
        case 2:
          v17 = 0xE300000000000000;
          v16 = 5460039;
          break;
        case 3:
          v17 = 0xE400000000000000;
          v16 = 1768319319;
          break;
        case 4:
          v16 = 0x61636F4C65666173;
          v17 = 0xEC0000006E6F6974;
          break;
        case 5:
          v16 = 0xD000000000000012;
          v17 = 0x800000024A8439F0;
          break;
        case 6:
          v17 = 0xE800000000000000;
          v16 = 0x656D69746C616572;
          break;
        case 7:
          v16 = 0x6F4C646572696170;
          v17 = 0xEE006E6F69746163;
          break;
        case 8:
          v16 = 0x6E6E6F437473616CLL;
          v18 = 1702126437;
          goto LABEL_27;
        case 9:
          v16 = 0xD000000000000019;
          v17 = 0x800000024A843A30;
          break;
        case 10:
          v16 = 0xD000000000000010;
          v17 = 0x800000024A843A50;
          break;
        case 11:
          v17 = 0xE900000000000072;
          v16 = 0x656E774F7261656ELL;
          break;
        case 12:
          v16 = 0xD000000000000018;
          v17 = 0x800000024A843A70;
          break;
        case 13:
          v16 = 0x786F725072656570;
          v17 = 0xEB00000000646569;
          break;
        case 14:
          v16 = 0x6C627550666C6573;
          v18 = 1701344105;
LABEL_27:
          v17 = v18 | 0xED00006400000000;
          break;
        case 15:
          v16 = 0xD000000000000014;
          v17 = 0x800000024A843AB0;
          break;
        case 16:
          v17 = 0xE600000000000000;
          v16 = 0x646568636163;
          break;
        case 17:
          v16 = 0x6552746E65746E69;
          v17 = 0xEE0065736E6F7073;
          break;
        case 18:
          v16 = 0xD000000000000014;
          v17 = 0x800000024A843AE0;
          break;
        case 19:
          v16 = 0xD000000000000013;
          v17 = 0x800000024A843B00;
          break;
        default:
          break;
      }

      v19 = 0x6E776F6E6B6E75;
      v20 = 0xE700000000000000;
      switch(v11)
      {
        case 1:
          v21 = 0x756F7364776F7263;
          v22 = 1684366194;
          goto LABEL_38;
        case 2:
          v20 = 0xE300000000000000;
          if (v16 != 5460039)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 3:
          v20 = 0xE400000000000000;
          if (v16 != 1768319319)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 4:
          v21 = 0x61636F4C65666173;
          v22 = 1852795252;
LABEL_38:
          v20 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v16 != v21)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 5:
          v20 = 0x800000024A8439F0;
          if (v16 != 0xD000000000000012)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 6:
          v20 = 0xE800000000000000;
          if (v16 != 0x656D69746C616572)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 7:
          v23 = 0x6F4C646572696170;
          v24 = 0x6E6F69746163;
          goto LABEL_52;
        case 8:
          v19 = 0x6E6E6F437473616CLL;
          v20 = 0xED00006465746365;
          goto LABEL_65;
        case 9:
          v20 = 0x800000024A843A30;
          if (v16 != 0xD000000000000019)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 10:
          v20 = 0x800000024A843A50;
          if (v16 != 0xD000000000000010)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 11:
          v20 = 0xE900000000000072;
          if (v16 != 0x656E774F7261656ELL)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 12:
          v20 = 0x800000024A843A70;
          if (v16 != 0xD000000000000018)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 13:
          v20 = 0xEB00000000646569;
          if (v16 != 0x786F725072656570)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 14:
          v20 = 0xED00006465687369;
          if (v16 != 0x6C627550666C6573)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 15:
          v20 = 0x800000024A843AB0;
          if (v16 != 0xD000000000000014)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 16:
          v20 = 0xE600000000000000;
          if (v16 != 0x646568636163)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 17:
          v23 = 0x6552746E65746E69;
          v24 = 0x65736E6F7073;
LABEL_52:
          v20 = v24 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v16 != v23)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 18:
          v20 = 0x800000024A843AE0;
          if (v16 != 0xD000000000000014)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 19:
          v20 = 0x800000024A843B00;
          if (v16 != 0xD000000000000013)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        default:
LABEL_65:
          if (v16 != v19)
          {
            goto LABEL_69;
          }

LABEL_66:
          if (v17 == v20)
          {
          }

          else
          {
LABEL_69:
            v25 = sub_24A82DC04();

            if ((v25 & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          if (v9 != v13)
          {
            goto LABEL_92;
          }

          if (v10 > 1)
          {
            if (v10 == 2)
            {
              v26 = 0xE800000000000000;
              v27 = 0x676E696772616843;
              if (v14 > 1)
              {
                goto LABEL_77;
              }
            }

            else
            {
              v27 = 0x6772616843746F4ELL;
              v26 = 0xEB00000000676E69;
              if (v14 > 1)
              {
LABEL_77:
                if (v14 == 2)
                {
                  v28 = 0xE800000000000000;
                  if (v27 != 0x676E696772616843)
                  {
                    goto LABEL_5;
                  }
                }

                else
                {
                  v28 = 0xEB00000000676E69;
                  if (v27 != 0x6772616843746F4ELL)
                  {
                    goto LABEL_5;
                  }
                }

                goto LABEL_89;
              }
            }
          }

          else
          {
            v26 = 0xE700000000000000;
            if (v10)
            {
              v27 = 0x64656772616843;
              if (v14 > 1)
              {
                goto LABEL_77;
              }
            }

            else
            {
              v27 = 0x6E776F6E6B6E55;
              if (v14 > 1)
              {
                goto LABEL_77;
              }
            }
          }

          v28 = 0xE700000000000000;
          if (v14)
          {
            if (v27 != 0x64656772616843)
            {
              goto LABEL_5;
            }
          }

          else if (v27 != 0x6E776F6E6B6E55)
          {
            goto LABEL_5;
          }

LABEL_89:
          if (v26 == v28)
          {

            goto LABEL_6;
          }

LABEL_5:
          v7 = sub_24A82DC04();

          if ((v7 & 1) == 0)
          {
            return 0;
          }

LABEL_6:
          v5 += 32;
          v6 += 4;
          if (!--v2)
          {
            return 1;
          }

          break;
      }
    }

LABEL_92:
  }

  return 0;
}

uint64_t sub_24A7D9750(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v41 = v2;
  v42 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v28 = *(v5 + 32);
    v29 = v8;
    v30 = *(v5 + 64);
    v31 = *(v5 + 80);
    v9 = *(v5 + 16);
    v27[0] = *v5;
    v27[1] = v9;
    v26 = v31;
    v23 = v28;
    v24 = v8;
    v25 = v30;
    v21 = v27[0];
    v22 = v9;
    v10 = *(v6 + 48);
    v33 = *(v6 + 32);
    v34 = v10;
    v35 = *(v6 + 64);
    v36 = *(v6 + 80);
    v11 = *(v6 + 16);
    v32[0] = *v6;
    v32[1] = v11;
    v20 = v36;
    v16 = v11;
    v17 = v33;
    v18 = v10;
    v19 = v35;
    v15 = v32[0];
    sub_24A6EF948(v27, v14);
    sub_24A6EF948(v32, v14);
    v12 = _s8FMIPCore10FMIPPersonV2eeoiySbAC_ACtFZ_0(&v21, &v15);
    v37[2] = v17;
    v37[3] = v18;
    v37[4] = v19;
    v38 = v20;
    v37[0] = v15;
    v37[1] = v16;
    sub_24A6EF9B4(v37);
    v39[2] = v23;
    v39[3] = v24;
    v39[4] = v25;
    v40 = v26;
    v39[0] = v21;
    v39[1] = v22;
    sub_24A6EF9B4(v39);
    if ((v12 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 88;
    v5 += 88;
  }

  return 1;
}

BOOL FMIPDevice.hasLocation.getter()
{
  v1 = v0;
  v2 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = *(type metadata accessor for FMIPDevice(0) + 128);
  sub_24A67E964(v1 + v5, v4, &unk_27EF5E0B0, &qword_24A8338B0);
  v6 = type metadata accessor for FMIPItemGroup(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_24A67F378(v4, &unk_27EF5E0B0, &qword_24A8338B0);
  }

  else
  {
    v7 = FMIPItemGroup.shouldDisplaySeparatedLocation.getter();
    sub_24A692298(v4, type metadata accessor for FMIPItemGroup);
    if (v7 && FMIPDevice.itemGroupsPartsHaveLocation.getter())
    {
      return 1;
    }
  }

  v17 = *(v1 + 256);
  v18 = *(v1 + 264);
  v15 = *(v1 + 280);
  v16 = *(v1 + 288);
  v9 = (*(v1 + 216) >> 5) & 1;
  v10 = v18;
  v11 = v16;
  v12 = v10;
  sub_24A7DC368(&v17, &v15, v9, v1 + v5, &v19);

  v8 = v20 != 0;
  if (v20)
  {
  }

  return v8;
}

uint64_t FMIPDevice.init(device:separationMonitoringState:separationSupported:canBeLeashedByHost:safeLocations:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v70 = a5;
  v73 = a3;
  v74 = a4;
  v9 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v58 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v75 = &v57 - v12;
  v71 = *a2;
  v13 = type metadata accessor for FMIPDevice(0);
  v72 = v13[35];
  *(a6 + v72) = 1;
  v14 = *a1;
  v68 = a1[1];
  v15 = v68;
  *a6 = v14;
  *(a6 + 8) = v15;
  *(a6 + 16) = a1[2];
  v61 = *(a1 + 3);
  *(a6 + 24) = v61;
  v16 = a1[6];
  v66 = a1[5];
  *(a6 + 40) = v66;
  *(a6 + 48) = v16;
  *&v69 = a1[9];
  v17 = v69;
  v60 = *(a1 + 7);
  *(a6 + 56) = v60;
  *(a6 + 72) = v17;
  *(a6 + 80) = *(a1 + 80);
  *(a6 + 88) = a1[11];
  v59 = *(a1 + 6);
  *(a6 + 96) = v59;
  v18 = a1[15];
  v65 = a1[14];
  *(a6 + 112) = v65;
  *(a6 + 120) = v18;
  v67 = a1[22];
  v19 = v67;
  v20 = a1[17];
  v63 = a1[16];
  *(a6 + 128) = v63;
  *(a6 + 136) = v20;
  v21 = a1[19];
  v64 = a1[18];
  *(a6 + 144) = v64;
  *(a6 + 152) = v21;
  v22 = a1[21];
  v62 = a1[20];
  v23 = v62;
  *(a6 + 168) = v22;
  *(a6 + 176) = v19;
  *(a6 + 160) = v23;
  *(a6 + 184) = a1[23];
  *(a6 + 192) = *(a1 + 192);
  *(a6 + 200) = *(a1 + 25);
  sub_24A67E964(a1 + v13[39], a6 + v13[39], &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A67E964(a1 + v13[40], a6 + v13[40], &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A67E964(a1 + v13[41], a6 + v13[41], &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A67E964(a1 + v13[42], a6 + v13[42], &qword_27EF5E0E0, &qword_24A836D90);
  *(a6 + v13[38]) = *(a1 + v13[38]);
  *(a6 + v13[43]) = *(a1 + v13[43]);
  *(a6 + v13[44]) = *(a1 + v13[44]);
  *(a6 + v13[45]) = *(a1 + v13[45]);
  *(a6 + 232) = a1[29];
  *(a6 + 248) = a1[31];
  v24 = qword_27EF5CBC8;

  if (v24 != -1)
  {
    swift_once();
  }

  if (byte_27EF5DEF1)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v25 = a1[32];
    v26 = a1[33];
    v27 = a1[34];
    v28 = v26;
  }

  v29 = v75;
  *(a6 + 256) = v25;
  *(a6 + 264) = v26;
  *(a6 + 272) = v27;
  memcpy(v77, a1 + 38, 0x120uLL);
  memcpy((a6 + 304), a1 + 38, 0x120uLL);
  sub_24A67E964(a1 + v13[28], a6 + v13[28], &qword_27EF5D5F8, &qword_24A83DE60);
  sub_24A67E964(a1 + v13[29], a6 + v13[29], &unk_27EF5E0A0, &unk_24A8367D0);
  sub_24A67E964(a1 + v13[30], a6 + v13[30], &qword_27EF5DE50, &qword_24A83DE40);
  sub_24A67E964(a1 + v13[31], a6 + v13[31], &qword_27EF5DE48, &unk_24A8367C0);
  *(a6 + 280) = a1[35];
  v69 = *(a1 + 18);
  *(a6 + 288) = v69;
  *(a6 + 224) = v70;
  v30 = v13[32];
  sub_24A67E964(a1 + v30, a6 + v30, &unk_27EF5E0B0, &qword_24A8338B0);
  v31 = v13[34];
  v32 = *(a1 + v31);
  v70 = v31;
  *(a6 + v31) = v32;
  *(a6 + v13[36]) = *(a1 + v13[36]);
  v33 = v13[37];
  v34 = *(a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a6 + v33);
  *v36 = v34;
  v36[1] = v35;
  sub_24A67E964(a6 + v30, v29, &unk_27EF5E0B0, &qword_24A8338B0);
  v37 = type metadata accessor for FMIPItemGroup(0);
  v38 = *(*(v37 - 8) + 48);
  v39 = v38(v29, 1, v37);
  v40 = v69;
  if (v39 == 1)
  {
    sub_24A67E964(v77, v76, &unk_27EF5E0D0, &qword_24A8319E0);

    v41 = v40;
    sub_24A67F378(v75, &unk_27EF5E0B0, &qword_24A8338B0);
    v42 = a1 + v30;
    v43 = v58;
    sub_24A67E964(v42, v58, &unk_27EF5E0B0, &qword_24A8338B0);
    v44 = 1;
    v45 = v38(v43, 1, v37);
    sub_24A67F378(v43, &unk_27EF5E0B0, &qword_24A8338B0);
    v46 = v71;
    if (v45 == 1 && (*(a1 + 243) & 4) == 0)
    {
      v44 = *(a1 + v70) == 5;
    }
  }

  else
  {
    sub_24A67E964(v77, v76, &unk_27EF5E0D0, &qword_24A8319E0);

    v47 = v40;
    sub_24A67F378(v75, &unk_27EF5E0B0, &qword_24A8338B0);
    v44 = 1;
    v46 = v71;
  }

  *(a6 + v13[33]) = v44;
  v48 = a1[27];
  if (v46 <= 1)
  {
    if (v46)
    {
      v49 = v48 | 0x1000;
      v50 = v48 & 0xFFFFFFFFFFFEEFFFLL | 0x1000;
      v51 = (v48 & 0x10000) == 0;
      goto LABEL_17;
    }

LABEL_15:
    v52 = v48 & 0xFFFFFFFFFFFEEFFFLL;
    goto LABEL_20;
  }

  if (v46 == 2)
  {
    goto LABEL_15;
  }

  v49 = v48 | 0x10000;
  v50 = v48 & 0xFFFFFFFFFFFEEFFFLL | 0x10000;
  v51 = (a1[27] & 0x1000) == 0;
LABEL_17:
  if (v51)
  {
    v52 = v49;
  }

  else
  {
    v52 = v50;
  }

LABEL_20:
  *(a6 + 216) = v52;
  v53 = 0x40000;
  if ((v73 & 1) == 0)
  {
    v53 = 0;
  }

  v54 = 0x400000;
  if ((v74 & 1) == 0)
  {
    v54 = 0;
  }

  *(a6 + 240) = a1[30] & 0xFFFFFFFFFFBBFFFFLL | v53 | v54;
  v55 = *(a1 + v13[35]);
  result = sub_24A692298(a1, type metadata accessor for FMIPDevice);
  *(a6 + v72) = v55;
  return result;
}

uint64_t FMIPBatteryStatus.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E55;
  v2 = 0x676E696772616843;
  if (*v0 != 2)
  {
    v2 = 0x6772616843746F4ELL;
  }

  if (*v0)
  {
    v1 = 0x64656772616843;
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

uint64_t FMIPDevice.isAppleAudioAccessory.getter()
{
  v1 = type metadata accessor for FMIPItem(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for FMIPDevice(0);
  sub_24A67E964(v0 + *(v8 + 128), v7, &unk_27EF5E0B0, &qword_24A8338B0);
  v9 = type metadata accessor for FMIPItemGroup(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_24A67F378(v7, &unk_27EF5E0B0, &qword_24A8338B0);
    return 0;
  }

  else
  {
    v10 = *(v7 + 5);

    result = sub_24A692298(v7, type metadata accessor for FMIPItemGroup);
    v12 = 0;
    v13 = *(v10 + 16);
    while (1)
    {
      if (v13 == v12)
      {

        return 0;
      }

      if (v12 >= *(v10 + 16))
      {
        break;
      }

      sub_24A68FED4(v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12++, v4, type metadata accessor for FMIPItem);
      v14 = v4[*(v1 + 84)];
      result = sub_24A692298(v4, type metadata accessor for FMIPItem);
      if (v14 == 1)
      {

        return 1;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A7DA414()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7DA4E0(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A7DA598(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7DA66C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E55;
  v4 = 0xE800000000000000;
  v5 = 0x676E696772616843;
  if (*v1 != 2)
  {
    v5 = 0x6772616843746F4ELL;
    v4 = 0xEB00000000676E69;
  }

  if (*v1)
  {
    v3 = 0x64656772616843;
    v2 = 0xE700000000000000;
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

FMIPCore::FMIPDeviceStatus_optional __swiftcall FMIPDeviceStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A7DA874(char *a1, char *a2)
{
  if (qword_24A83EEC8[*a1] == qword_24A83EEC8[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_24A82DC04();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_24A7DA8DC()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7DA938(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A7DA978(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7DAA28(uint64_t a1)
{
  v2 = sub_24A7E036C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7DAA64(uint64_t a1)
{
  v2 = sub_24A7E036C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7DAAAC(uint64_t a1)
{
  v2 = sub_24A68A874();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7DAAE8(uint64_t a1)
{
  v2 = sub_24A68A874();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7DAB24(uint64_t a1)
{
  v2 = sub_24A7E03C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7DAB60(uint64_t a1)
{
  v2 = sub_24A7E03C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7DAB9C(uint64_t a1)
{
  v2 = sub_24A7E0318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7DABD8(uint64_t a1)
{
  v2 = sub_24A7E0318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7DAC14(uint64_t a1)
{
  v2 = sub_24A7E02C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7DAC50(uint64_t a1)
{
  v2 = sub_24A7E02C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7DAC8C(uint64_t a1)
{
  v2 = sub_24A68ABEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7DACC8(uint64_t a1)
{
  v2 = sub_24A68ABEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7DAD04(uint64_t a1)
{
  v2 = sub_24A7E0414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7DAD40(uint64_t a1)
{
  v2 = sub_24A7E0414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7DAD7C(uint64_t a1)
{
  v2 = sub_24A7E0270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7DADB8(uint64_t a1)
{
  v2 = sub_24A7E0270();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPBeaconType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_24A6BBA94(&qword_27EF5F198, &qword_24A83DE80);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v38 - v5;
  v6 = sub_24A6BBA94(&qword_27EF5F1A0, &qword_24A83DE88);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v46 = &v38 - v7;
  v8 = sub_24A6BBA94(&qword_27EF5F1A8, &qword_24A83DE90);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v43 = &v38 - v9;
  v10 = sub_24A6BBA94(&qword_27EF5F1B0, &qword_24A83DE98);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v40 = &v38 - v11;
  v39 = sub_24A6BBA94(&qword_27EF5F1B8, &qword_24A83DEA0);
  v55 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v54 = &v38 - v12;
  v38 = sub_24A6BBA94(&qword_27EF5F1C0, &qword_24A83DEA8);
  v53 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v14 = &v38 - v13;
  v15 = sub_24A6BBA94(&qword_27EF5F1C8, &qword_24A83DEB0);
  v52 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v57 = sub_24A6BBA94(&qword_27EF5F1D0, &qword_24A83DEB8);
  v18 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v20 = &v38 - v19;
  v21 = *v2;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A68A874();
  v56 = v20;
  sub_24A82DD84();
  v22 = (v18 + 8);
  if (v21 <= 2)
  {
    v28 = v52;
    v29 = v53;
    v30 = v54;
    v31 = v55;
    if (v21)
    {
      if (v21 == 1)
      {
        v59 = 1;
        sub_24A7E0414();
        v33 = v56;
        v32 = v57;
        sub_24A82DAC4();
        (*(v29 + 8))(v14, v38);
      }

      else
      {
        v60 = 2;
        sub_24A7E03C0();
        v37 = v30;
        v33 = v56;
        v32 = v57;
        sub_24A82DAC4();
        (*(v31 + 8))(v37, v39);
      }

      return (*v22)(v33, v32);
    }

    else
    {
      v58 = 0;
      sub_24A68ABEC();
      v34 = v56;
      v35 = v57;
      sub_24A82DAC4();
      (*(v28 + 8))(v17, v15);
      return (*v22)(v34, v35);
    }
  }

  else
  {
    if (v21 > 4)
    {
      if (v21 == 5)
      {
        v63 = 5;
        sub_24A7E02C4();
        v23 = v46;
        v24 = v56;
        v25 = v57;
        sub_24A82DAC4();
        v27 = v47;
        v26 = v48;
      }

      else
      {
        v64 = 6;
        sub_24A7E0270();
        v23 = v49;
        v24 = v56;
        v25 = v57;
        sub_24A82DAC4();
        v27 = v50;
        v26 = v51;
      }
    }

    else if (v21 == 3)
    {
      v61 = 3;
      sub_24A7E036C();
      v23 = v40;
      v24 = v56;
      v25 = v57;
      sub_24A82DAC4();
      v27 = v41;
      v26 = v42;
    }

    else
    {
      v62 = 4;
      sub_24A7E0318();
      v23 = v43;
      v24 = v56;
      v25 = v57;
      sub_24A82DAC4();
      v27 = v44;
      v26 = v45;
    }

    (*(v27 + 8))(v23, v26);
    return (*v22)(v24, v25);
  }
}

uint64_t FMIPBeaconType.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t sub_24A7DB564()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FMIPDevice.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FMIPDevice.baIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FMIPDevice.ownerIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FMIPDevice.discoveryIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FMIPDevice.name.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t FMIPDevice.color.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t FMIPDevice.category.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t FMIPDevice.model.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t FMIPDevice.rawModel.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t FMIPDevice.modelDisplayName.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

uint64_t FMIPDevice.displayName.getter()
{
  v1 = *(v0 + 168);

  return v1;
}

id FMIPDevice.location.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 256);
  v2 = *(v1 + 264);
  *(a1 + 8) = v2;
  return v2;
}

id FMIPDevice.crowdSourcedLocation.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 280);
  v2 = *(v1 + 288);
  *(a1 + 8) = v2;
  return v2;
}

uint64_t FMIPDevice.address.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 304), 0x120uLL);
  memcpy(a1, (v1 + 304), 0x120uLL);
  return sub_24A67E964(__dst, v4, &unk_27EF5E0D0, &qword_24A8319E0);
}

uint64_t FMIPDevice.beaconType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FMIPDevice(0);
  *a1 = *(v1 + *(result + 136));
  return result;
}

uint64_t FMIPDevice.brassStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FMIPDevice(0);
  *a1 = *(v1 + *(result + 140));
  return result;
}

uint64_t FMIPDevice.brassStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for FMIPDevice(0);
  *(v1 + *(result + 140)) = v2;
  return result;
}

FMIPCore::FMIPDevice::BrassStatus_optional __swiftcall FMIPDevice.BrassStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPDevice.BrassStatus.rawValue.getter()
{
  if (*v0)
  {
    return 0x65736C6166;
  }

  else
  {
    return 1702195828;
  }
}

uint64_t sub_24A7DBBCC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65736C6166;
  }

  else
  {
    v3 = 1702195828;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x65736C6166;
  }

  else
  {
    v5 = 1702195828;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A7DBC68()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7DBCE0(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A7DBD44(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7DBDB8(uint64_t *a1@<X8>)
{
  v2 = 1702195828;
  if (*v1)
  {
    v2 = 0x65736C6166;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FMIPDevice.isBrassStatusTrue.getter()
{
  if (*(v0 + *(type metadata accessor for FMIPDevice(0) + 140)))
  {
    v1 = sub_24A82DC04();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t FMIPDevice.deviceConnectedState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FMIPDevice(0);
  *a1 = *(v1 + *(result + 144));
  return result;
}

uint64_t FMIPDevice.deviceConnectedWithBeacon.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPDevice(0) + 148));

  return v1;
}

uint64_t FMIPDevice.isOwned.getter()
{
  if (*(v0 + 32) == 0x72656E776FLL && *(v0 + 40) == 0xE500000000000000)
  {
    return 1;
  }

  v2 = sub_24A82DC04();
  result = 0;
  if (v2)
  {
    return 1;
  }

  return result;
}

unint64_t FMIPDevice.isLocating.getter()
{
  v1 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for FMIPDevice(0);
  sub_24A67E964(v0 + *(v4 + 128), v3, &unk_27EF5E0B0, &qword_24A8338B0);
  v5 = type metadata accessor for FMIPItemGroup(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_24A67F378(v3, &unk_27EF5E0B0, &qword_24A8338B0);
  }

  else
  {
    v6 = *(v3 + 8);
    sub_24A692298(v3, type metadata accessor for FMIPItemGroup);
    if ((v6 & 0x8000) != 0)
    {
      return 0;
    }
  }

  v7 = *(v0 + 216);
  if ((v7 & 0x10) != 0)
  {
    return 1;
  }

  else
  {
    return (v7 >> 11) & 1;
  }
}

unint64_t FMIPDevice.pairingIncomplete.getter()
{
  v1 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for FMIPDevice(0);
  sub_24A67E964(v0 + *(v4 + 128), v3, &unk_27EF5E0B0, &qword_24A8338B0);
  v5 = type metadata accessor for FMIPItemGroup(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_24A67F378(v3, &unk_27EF5E0B0, &qword_24A8338B0);
    return 0;
  }

  else
  {
    v7 = *(v3 + 8);
    sub_24A692298(v3, type metadata accessor for FMIPItemGroup);
    return (v7 >> 15) & 1;
  }
}

void sub_24A7DC368(unint64_t *a1@<X0>, unint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v116 = sub_24A82CA34();
  v111 = *(v116 - 8);
  v10 = MEMORY[0x28223BE20](v116);
  v115 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v114 = &v100 - v12;
  v13 = type metadata accessor for FMIPItem(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v100 - v18;
  v20 = type metadata accessor for FMIPItemGroup(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v112 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    if (qword_281515DC8 == -1)
    {
LABEL_8:
      v39 = sub_24A82CDC4();
      sub_24A6797D0(v39, qword_281518F88);
      v40 = sub_24A82CD94();
      v41 = sub_24A82D4D4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 67109120;
        _os_log_impl(&dword_24A675000, v40, v41, "FMIPDevice: isLocationEnabled: %{BOOL}d", v42, 8u);
        MEMORY[0x24C21E1D0](v42, -1, -1);
      }

      *a5 = 0;
      *(a5 + 1) = 0;
      *(a5 + 2) = 0;
      return;
    }

LABEL_58:
    swift_once();
    goto LABEL_8;
  }

  v24 = *a1;
  v23 = a1[1];
  v25 = a1[2];
  v109 = *a2;
  v110 = v23;
  v26 = a2[1];
  v27 = a2[2];
  v113 = v26;
  sub_24A67E964(a4, v19, &unk_27EF5E0B0, &qword_24A8338B0);
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    v43 = v112;
    sub_24A7E11A4(v19, v112, type metadata accessor for FMIPItemGroup);
    if (FMIPItemGroup.shouldDisplaySeparatedLocation.getter())
    {
      sub_24A692298(v43, type metadata accessor for FMIPItemGroup);
      *(a5 + 1) = 0;
      *(a5 + 2) = 0;
      *a5 = 0;
      return;
    }

    v107 = v27;
    v108 = v24;
    v105 = v25;
    v106 = a5;
    v44 = *(v43 + 40);
    v45 = *(v44 + 16);
    if (v45)
    {
      v46 = v44 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v47 = *(v14 + 72);
      v48 = MEMORY[0x277D84F90];
      do
      {
        sub_24A68FED4(v46, v16, type metadata accessor for FMIPItem);
        v51 = v16[48];
        v50 = v16[49];
        v52 = v16[50];
        v53 = v50;
        sub_24A692298(v16, type metadata accessor for FMIPItem);
        if (v50)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_24A77FE20(0, *(v48 + 2) + 1, 1, v48);
          }

          v55 = *(v48 + 2);
          v54 = *(v48 + 3);
          if (v55 >= v54 >> 1)
          {
            v48 = sub_24A77FE20((v54 > 1), v55 + 1, 1, v48);
          }

          *(v48 + 2) = v55 + 1;
          v49 = &v48[24 * v55];
          v49[32] = v51 & 1;
          v49[33] = BYTE1(v51) & 1;
          v49[34] = BYTE2(v51) & 1;
          v49[35] = BYTE3(v51);
          *(v49 + 5) = v53;
          *(v49 + 6) = v52;
        }

        v46 += v47;
        --v45;
      }

      while (v45);
    }

    else
    {
      v48 = MEMORY[0x277D84F90];
    }

    v59 = v113;
    if (v113)
    {
      v60 = v109;
      v61 = v109 >> 24;
      sub_24A6BBA94(&qword_27EF5DA70, &qword_24A835300);
      v62 = swift_allocObject();
      v59 = v113;
      v63 = v62;
      *(v62 + 16) = xmmword_24A8327A0;
      *(v62 + 32) = v60 & 1;
      *(v62 + 33) = BYTE1(v60) & 1;
      *(v62 + 34) = BYTE2(v60) & 1;
      *(v62 + 35) = v61;
      v64 = v107;
      *(v62 + 40) = v59;
      *(v62 + 48) = v64;
    }

    else
    {
      v63 = MEMORY[0x277D84F90];
    }

    v65 = v106;
    v117 = v48;
    v66 = v59;
    sub_24A77E820(v63);
    v113 = v117;
    v67 = *(v117 + 2);
    if (!v67)
    {
      sub_24A692298(v112, type metadata accessor for FMIPItemGroup);

      v56 = v110;
      *v65 = v108;
      v65[1] = v56;
      v65[2] = v105;
      goto LABEL_37;
    }

    v68 = v113[32];
    v69 = v113[33];
    v70 = v113[34];
    v71 = v113[35];
    v72 = *(v113 + 6);
    v73 = *(v113 + 5);
    v74 = v73;
    if (v67 == 1)
    {
      v75 = v68;
      v76 = v69;
      v77 = v70;
      v78 = v71;
      v79 = v73;
      v80 = v72;
LABEL_48:

      sub_24A692298(v112, type metadata accessor for FMIPItemGroup);
      v94 = 256;
      if ((v76 & 1) == 0)
      {
        v94 = 0;
      }

      v95 = v94 & 0xFFFFFFFFFFFFFFFELL | v75 & 1;
      v96 = 0x10000;
      if ((v77 & 1) == 0)
      {
        v96 = 0;
      }

      *v65 = (v95 | v96) & 0xFFFFFFFF00FFFFFFLL | (v78 << 24);
      v65[1] = v79;
      v65[2] = v80;
      return;
    }

    v102 = v68;
    v103 = v69;
    v104 = v70;
    v105 = v67;
    ++v111;
    v82 = v114;
    v83 = v113 + 48;
    v84 = 1;
    v100 = v113 + 48;
LABEL_41:
    v101 = v71;
    a5 = &v83[24 * v84];
    v85 = v105 - v84;
    while (v84 < *(v113 + 2))
    {
      v110 = *(a5 - 16);
      LODWORD(v107) = *(a5 - 15);
      LODWORD(v108) = *(a5 - 14);
      v109 = *(a5 - 13);
      v80 = *a5;
      v79 = *(a5 - 1);
      v86 = v74;
      v87 = [v74 timestamp];
      sub_24A82C9F4();

      v88 = [v79 timestamp];
      v89 = v115;
      sub_24A82C9F4();

      LOBYTE(v88) = sub_24A82C9B4();
      v90 = *v111;
      v91 = v89;
      v92 = v116;
      (*v111)(v91, v116);
      v90(v82, v92);
      if (v88)
      {

        ++v84;
        v72 = v80;
        v74 = v79;
        v78 = v109;
        v75 = v110;
        v71 = v109;
        v77 = v108;
        v76 = v107;
        v103 = v107;
        v104 = v108;
        v102 = v110;
        v93 = v85 == 1;
        v65 = v106;
        v83 = v100;
        if (v93)
        {
          goto LABEL_48;
        }

        goto LABEL_41;
      }

      a5 += 24;
      ++v84;
      --v85;
      v74 = v86;
      if (!v85)
      {
        v75 = v102;
        v76 = v103;
        v77 = v104;
        v78 = v101;
        v79 = v74;
        v80 = v72;
        v65 = v106;
        goto LABEL_48;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

  sub_24A67F378(v19, &unk_27EF5E0B0, &qword_24A8338B0);
  v28 = v113;
  if (!v113)
  {
    v56 = v110;
    *a5 = v24;
    *(a5 + 1) = v56;
    *(a5 + 2) = v25;
LABEL_37:

    v81 = v56;
    return;
  }

  if (v110)
  {
    v108 = v24;
    v29 = v113;
    v30 = v110;
    v31 = [v30 timestamp];
    v32 = v114;
    sub_24A82C9F4();

    v33 = [v29 timestamp];
    v34 = v115;
    sub_24A82C9F4();

    LOBYTE(v33) = sub_24A82C9B4();
    v35 = v111[1];
    v36 = v34;
    v37 = v116;
    v35(v36, v116);
    v35(v32, v37);
    if (v33)
    {

      v38 = v109;
LABEL_55:
      v98 = v113;
      *a5 = v38 & 0xFF010101;
      *(a5 + 1) = v98;
      *(a5 + 2) = v27;
      return;
    }

    v38 = v109;
    v118 = BYTE3(v109);
    if (FMIPLocationType.rawValue.getter() == 0x656D69746C616572 && v58 == 0xE800000000000000)
    {

      goto LABEL_55;
    }

    v97 = sub_24A82DC04();

    if (v97)
    {

      goto LABEL_55;
    }

    v99 = v110;
    *a5 = v108 & 0xFF010101;
    *(a5 + 1) = v99;
    *(a5 + 2) = v25;
  }

  else
  {
    *a5 = v109 & 0xFF010101;
    *(a5 + 1) = v28;
    *(a5 + 2) = v27;

    v57 = v28;
  }
}

BOOL FMIPDevice.itemGroupsPartsHaveLocation.getter()
{
  v1 = type metadata accessor for FMIPItem(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = *(type metadata accessor for FMIPDevice(0) + 128);
  sub_24A67E964(v0 + v8, v7, &unk_27EF5E0B0, &qword_24A8338B0);
  v9 = type metadata accessor for FMIPItemGroup(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_24A67F378(v7, &unk_27EF5E0B0, &qword_24A8338B0);
    return 0;
  }

  v10 = *(v7 + 5);

  sub_24A692298(v7, type metadata accessor for FMIPItemGroup);
  v33 = *(v0 + 256);
  v34 = *(v0 + 264);
  v31 = *(v0 + 280);
  v32 = *(v0 + 288);
  v11 = (*(v0 + 216) >> 5) & 1;
  v12 = v34;
  v13 = v32;
  v14 = v12;
  sub_24A7DC368(&v33, &v31, v11, v0 + v8, v35);

  v15 = v36;
  if (v36)
  {

    return 0;
  }

  v17 = *(v10 + 16);
  if (v17)
  {
    v18 = *(v2 + 80);
    v30 = v10;
    v19 = v10 + ((v18 + 32) & ~v18);
    v20 = *(v2 + 72);
    v21 = MEMORY[0x277D84F90];
    do
    {
      sub_24A68FED4(v19, v4, type metadata accessor for FMIPItem);
      v24 = v4[48];
      v23 = v4[49];
      v25 = v4[50];
      v26 = v23;
      sub_24A692298(v4, type metadata accessor for FMIPItem);
      if (v23)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_24A77FE20(0, *(v21 + 2) + 1, 1, v21);
        }

        v28 = *(v21 + 2);
        v27 = *(v21 + 3);
        if (v28 >= v27 >> 1)
        {
          v21 = sub_24A77FE20((v27 > 1), v28 + 1, 1, v21);
        }

        *(v21 + 2) = v28 + 1;
        v22 = &v21[24 * v28];
        v22[32] = v24 & 1;
        v22[33] = BYTE1(v24) & 1;
        v22[34] = BYTE2(v24) & 1;
        v22[35] = BYTE3(v24);
        *(v22 + 5) = v26;
        *(v22 + 6) = v25;
      }

      v19 += v20;
      --v17;
    }

    while (v17);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v29 = *(v21 + 2);

  return v29 != 0;
}

uint64_t FMIPDevice.uniqueIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24A82D014();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  if (*(v1 + 24))
  {

    sub_24A82CA44();

    v10 = sub_24A82CAA4();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      return (*(v11 + 32))(a1, v9, v10);
    }
  }

  else
  {
    v13 = sub_24A82CAA4();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  sub_24A67F378(v9, &qword_27EF5D020, &qword_24A830E40);
  sub_24A82D004();
  v14 = sub_24A82CFD4();
  v16 = v15;
  (*(v4 + 8))(v6, v3);
  if (v16 >> 60 == 15)
  {
    sub_24A7E0468();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v17[0] = v14;
    v17[1] = v16;
    sub_24A770D64();
    sub_24A82C614();
    return sub_24A67E8E8(v14, v16);
  }
}

uint64_t sub_24A7DD3A4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A6839DC(*a1);
  v5 = v4;
  if (v3 == sub_24A6839DC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A7DD42C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A6839DC(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7DD490(uint64_t a1)
{
  sub_24A6839DC(*v1);
  sub_24A82D094();
}

uint64_t sub_24A7DD4E4(uint64_t a1)
{
  v2 = *v1;
  sub_24A82DCC4();
  sub_24A6839DC(v2);
  sub_24A82D094();

  return sub_24A82DD24();
}

unint64_t sub_24A7DD544@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A7E1150(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_24A7DD574@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A6839DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_24A7DD5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A7E1150(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A7DD5D4(uint64_t a1)
{
  v2 = sub_24A683980();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7DD610@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24A82CA34();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  if (qword_27EF5CC28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = off_27EF5F158;
  v14 = *(off_27EF5F158 + 2);
  v47 = a1;
  if (v14 && (v15 = sub_24A6A2D48(a1, a2), (v16 & 1) != 0))
  {
    v46 = a2;
    v17 = (v13[7] + 24 * v15);
    v18 = v7;
    LODWORD(v44) = *v17;
    v19 = v17[1];
    v20 = v17[2];
    LODWORD(v45) = v17[3];
    v21 = *(v17 + 1);
    v22 = *(v17 + 2);
    swift_endAccess();
    v23 = v21;
    v24 = [v23 timestamp];
    sub_24A82C9F4();

    sub_24A82C9C4();
    v26 = v25;
    result = (*(v18 + 8))(v12, v6);
    if (v26 > -300.0)
    {
      *a3 = v44;
      *(a3 + 1) = v19;
      *(a3 + 2) = v20;
      LOBYTE(v28) = v45;
      goto LABEL_15;
    }

    v7 = v18;
    a2 = v46;
  }

  else
  {
    swift_endAccess();
  }

  v43 = v12;
  sub_24A7E0180(0.0, 300.0);
  sub_24A82CA24();
  sub_24A82C984();
  v29 = *(v7 + 8);
  v45 = v7 + 8;
  v46 = v29;
  v29(v10, v6);
  v30 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v31 = sub_24A82C994();
  v32 = [v30 initWithCoordinate:v31 altitude:37.3723 horizontalAccuracy:-122.0804 verticalAccuracy:100.0 course:35.0 speed:35.0 timestamp:{0.0, 0.0}];

  LOBYTE(v48) = 1;
  v33 = v32;
  FMIPLocation.init(location:type:)(v33, &v48, v49);
  v34 = v49[0];
  v35 = v49[1];
  v44 = v6;
  v36 = v49[2];
  v28 = v49[3];
  v37 = v50;
  v22 = v51;
  swift_beginAccess();

  v23 = v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = off_27EF5F158;
  off_27EF5F158 = 0x8000000000000000;
  if (v35)
  {
    v39 = 256;
  }

  else
  {
    v39 = 0;
  }

  v40 = v39 | v34;
  if (v36)
  {
    v41 = 0x10000;
  }

  else
  {
    v41 = 0;
  }

  sub_24A784C04(v40 | v41 | (v28 << 24), v23, v47, a2, isUniquelyReferenced_nonNull_native, v22);

  off_27EF5F158 = v48;
  swift_endAccess();

  result = v46(v43, v44);
  *a3 = v34;
  *(a3 + 1) = v35;
  *(a3 + 2) = v36;
LABEL_15:
  *(a3 + 3) = v28;
  *(a3 + 8) = v23;
  *(a3 + 16) = v22;
  return result;
}

Swift::Bool __swiftcall FMIPDevice.canEnableNotifyWhenFound()()
{
  v55 = sub_24A82CA34();
  v1 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v3 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FMIPItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53 - v9;
  v11 = *(v0 + 216);
  if ((v11 & 0x400) == 0)
  {
    v12 = *(type metadata accessor for FMIPDevice(0) + 128);
    sub_24A67E964(v0 + v12, v10, &unk_27EF5E0B0, &qword_24A8338B0);
    v13 = type metadata accessor for FMIPItemGroup(0);
    if ((*(*(v13 - 8) + 48))(v10, 1, v13) == 1)
    {
      sub_24A67F378(v10, &unk_27EF5E0B0, &qword_24A8338B0);
      v14 = v11 & 0x20;
    }

    else
    {
      v16 = *(v10 + 5);

      sub_24A692298(v10, type metadata accessor for FMIPItemGroup);
      v58 = *(v0 + 256);
      v59 = *(v0 + 264);
      v56 = *(v0 + 280);
      v57 = *(v0 + 288);
      v17 = v59;
      v18 = v57;
      v19 = v17;
      sub_24A7DC368(&v58, &v56, (v11 & 0x20) != 0, v0 + v12, &v60);

      v20 = v61;
      if (!v61)
      {
        v30 = v16;
        v31 = *(v16 + 16);
        if (v31)
        {
          v32 = v30 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
          v33 = *(v5 + 72);
          v53 = v30;
          v54 = v33;
          v29 = MEMORY[0x277D84F90];
          do
          {
            sub_24A68FED4(v32, v7, type metadata accessor for FMIPItem);
            v36 = v7[48];
            v35 = v7[49];
            v37 = v7[50];
            v38 = v35;
            sub_24A692298(v7, type metadata accessor for FMIPItem);
            if (v35)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v29 = sub_24A77FE20(0, *(v29 + 16) + 1, 1, v29);
              }

              v40 = *(v29 + 16);
              v39 = *(v29 + 24);
              if (v40 >= v39 >> 1)
              {
                v29 = sub_24A77FE20((v39 > 1), v40 + 1, 1, v29);
              }

              *(v29 + 16) = v40 + 1;
              v34 = v29 + 24 * v40;
              *(v34 + 32) = v36 & 1;
              *(v34 + 33) = BYTE1(v36) & 1;
              *(v34 + 34) = BYTE2(v36) & 1;
              *(v34 + 35) = BYTE3(v36);
              *(v34 + 40) = v38;
              *(v34 + 48) = v37;
            }

            v32 += v54;
            --v31;
          }

          while (v31);

          if (*(v29 + 16))
          {
LABEL_22:
            sub_24A82CA24();
            sub_24A82C9D4();
            v42 = v41;
            v43 = *(v1 + 8);
            result = v43(v3, v55);
            v45 = -*(v29 + 16);
            v46 = -1;
            v47 = 40;
            while (1)
            {
              v15 = v45 + v46 != -1;
              if (v45 + v46 == -1)
              {
                goto LABEL_26;
              }

              if (++v46 >= *(v29 + 16))
              {
                __break(1u);
                return result;
              }

              v48 = v47 + 24;
              v49 = *(v29 + v47);
              v50 = [v49 timestamp];
              sub_24A82C9F4();

              sub_24A82C9D4();
              v52 = v51;

              result = v43(v3, v55);
              v47 = v48;
              if (v42 - v52 > 180.0)
              {
                goto LABEL_26;
              }
            }
          }

LABEL_19:
          v15 = 1;
LABEL_26:

          return v15;
        }

LABEL_21:
        v29 = MEMORY[0x277D84F90];
        if (*(MEMORY[0x277D84F90] + 16))
        {
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      v14 = v11 & 0x20;
    }

    v58 = *(v0 + 256);
    v59 = *(v0 + 264);
    v56 = *(v0 + 280);
    v57 = *(v0 + 288);
    v21 = v14 != 0;
    v22 = v59;
    v23 = v57;
    v24 = v22;
    sub_24A7DC368(&v58, &v56, v21, v0 + v12, &v60);

    v25 = v61;
    if (v61)
    {
      v26 = v62;
      v27 = v60;
      v28 = v60 >> 24;
      sub_24A6BBA94(&qword_27EF5DA70, &qword_24A835300);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_24A8327A0;
      *(v29 + 32) = v27 & 1;
      *(v29 + 33) = BYTE1(v27) & 1;
      *(v29 + 34) = BYTE2(v27) & 1;
      *(v29 + 35) = v28;
      *(v29 + 40) = v25;
      *(v29 + 48) = v26;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  return 0;
}

uint64_t FMIPDevice.encode(to:)(void *a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v49 = &v39 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v48 = &v39 - v8;
  MEMORY[0x28223BE20](v7);
  v52 = &v39 - v9;
  v10 = sub_24A82CA34();
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v47 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v46 = &v39 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  v20 = sub_24A6BBA94(&qword_27EF5F298, &unk_24A83DF20);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v39 - v22;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A683980();
  v24 = v20;
  v25 = v54;
  sub_24A82DD84();
  LOBYTE(v58[0]) = 14;
  v26 = v53;
  sub_24A82DB04();
  if (v26)
  {
    return (*(v21 + 8))(v23, v24);
  }

  v43 = v17;
  v44 = v19;
  v28 = v52;
  v53 = v21;
  v58[0] = v25[1];
  v57[0] = 4;
  v29 = sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
  v30 = sub_24A6CCEB0();
  v31 = v23;
  sub_24A82DB44();
  v42 = v30;
  LOBYTE(v58[0]) = 39;
  sub_24A82DB04();
  v58[0] = v25[3];
  v57[0] = 12;
  sub_24A82DB44();
  LOBYTE(v58[0]) = 38;
  sub_24A82DB04();
  LOBYTE(v58[0]) = 46;
  sub_24A82DB04();

  v58[0] = *(v25 + 88);
  v57[0] = 10;
  sub_24A82DB44();
  LOBYTE(v58[0]) = 9;
  sub_24A82DB04();
  LOBYTE(v58[0]) = 36;
  sub_24A82DB04();
  v41 = v29;
  LOBYTE(v58[0]) = 41;
  sub_24A82DB04();
  LOBYTE(v58[0]) = 37;
  v40 = v24;
  sub_24A82DB04();
  LOBYTE(v58[0]) = 11;
  sub_24A82DB04();
  LOBYTE(v58[0]) = 2;
  sub_24A82DB24();
  LOBYTE(v58[0]) = 3;
  sub_24A82DB04();

  LOBYTE(v58[0]) = 40;
  sub_24A82DB34();
  LOBYTE(v58[0]) = 33;
  sub_24A82DB34();
  v32 = type metadata accessor for FMIPDevice(0);
  sub_24A67E964(v54 + v32[39], v28, &qword_27EF5E0E0, &qword_24A836D90);
  v33 = *(v50 + 48);
  if (v33(v28, 1, v51) == 1)
  {
    sub_24A67F378(v28, &qword_27EF5E0E0, &qword_24A836D90);
  }

  else
  {
    (*(v50 + 32))(v44, v28, v51);
    sub_24A82C9D4();
    LOBYTE(v58[0]) = 32;
    sub_24A82DB24();
    (*(v50 + 8))(v44, v51);
  }

  v34 = v48;
  sub_24A67E964(v54 + v32[40], v48, &qword_27EF5E0E0, &qword_24A836D90);
  if (v33(v34, 1, v51) == 1)
  {
    sub_24A67F378(v48, &qword_27EF5E0E0, &qword_24A836D90);
  }

  else
  {
    (*(v50 + 32))(v43, v48, v51);
    sub_24A82C9D4();
    LOBYTE(v58[0]) = 30;
    sub_24A82DB24();
    (*(v50 + 8))(v43, v51);
  }

  v35 = v49;
  sub_24A67E964(v54 + v32[41], v49, &qword_27EF5E0E0, &qword_24A836D90);
  if (v33(v35, 1, v51) == 1)
  {
    sub_24A67F378(v49, &qword_27EF5E0E0, &qword_24A836D90);
  }

  else
  {
    (*(v50 + 32))(v46, v49, v51);
    sub_24A82C9D4();
    LOBYTE(v58[0]) = 48;
    sub_24A82DB24();
    (*(v50 + 8))(v46, v51);
  }

  v36 = v45;
  sub_24A67E964(v54 + v32[42], v45, &qword_27EF5E0E0, &qword_24A836D90);
  if (v33(v36, 1, v51) == 1)
  {
    sub_24A67F378(v45, &qword_27EF5E0E0, &qword_24A836D90);
  }

  else
  {
    (*(v50 + 32))(v47, v45, v51);
    sub_24A82C9D4();
    LOBYTE(v58[0]) = 53;
    sub_24A82DB24();
    (*(v50 + 8))(v47, v51);
  }

  LOBYTE(v58[0]) = 51;
  sub_24A82DB34();
  LOBYTE(v58[0]) = 8;
  sub_24A82DB14();
  LOBYTE(v58[0]) = 5;
  sub_24A82DB14();
  LOBYTE(v58[0]) = 7;
  sub_24A82DB14();
  *&v58[0] = *(v54 + 232);
  v57[0] = 1;
  sub_24A6BBA94(&qword_27EF5F270, &qword_24A83DF10);
  sub_24A7E05C4();
  sub_24A82DB44();
  *&v58[0] = *(v54 + 248);
  v57[0] = 47;
  sub_24A6BBA94(&qword_27EF5F2A0, &qword_24A83DF30);
  sub_24A7E069C();
  sub_24A82DB44();
  *&v58[0] = *(v54 + 256);
  *(v58 + 8) = *(v54 + 264);
  v57[0] = 29;
  v37 = *(&v58[0] + 1);
  sub_24A6BBA94(&qword_27EF5EA68, &qword_24A839E10);
  sub_24A7A8550();
  sub_24A82DB44();

  v59 = *(v54 + 280);
  v60 = *(v54 + 288);
  v63 = 6;
  v38 = v60;
  sub_24A82DB44();

  memcpy(v58, (v54 + 304), sizeof(v58));
  memcpy(v57, (v54 + 304), sizeof(v57));
  v62 = 0;
  sub_24A67E964(v58, v56, &unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A6BBA94(&unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A6CCD3C();
  sub_24A82DB44();
  memcpy(v56, v57, sizeof(v56));
  sub_24A67F378(v56, &unk_27EF5E0D0, &qword_24A8319E0);
  *&v55 = *(v54 + 240);
  v61 = 13;
  sub_24A7E07F8();
  sub_24A82DB44();
  LOBYTE(v55) = 45;
  sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  sub_24A7E084C();
  sub_24A82DB44();
  LOBYTE(v55) = 31;
  sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  sub_24A7E0900();
  sub_24A82DB44();
  LOBYTE(v55) = 42;
  sub_24A6BBA94(&qword_27EF5DE50, &qword_24A83DE40);
  sub_24A7E09B4();
  sub_24A82DB44();
  LOBYTE(v55) = 43;
  sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  sub_24A7E0A68();
  sub_24A82DB44();
  *&v55 = *(v54 + 224);
  v61 = 44;
  sub_24A6BBA94(&qword_27EF5DFF0, &qword_24A839E00);
  sub_24A7A8700();
  sub_24A82DB44();
  LOBYTE(v55) = 28;
  sub_24A82DB14();
  LOBYTE(v55) = 20;
  sub_24A82DB14();
  LOBYTE(v55) = 15;
  sub_24A82DB14();
  LOBYTE(v55) = 52;
  sub_24A82DB14();
  LOBYTE(v55) = 21;
  sub_24A82DB14();
  LOBYTE(v55) = 19;
  sub_24A82DB14();
  LOBYTE(v55) = 23;
  sub_24A82DB14();
  LOBYTE(v55) = 24;
  sub_24A82DB14();
  LOBYTE(v55) = 25;
  sub_24A82DB14();
  LOBYTE(v55) = 26;
  sub_24A82DB14();
  LOBYTE(v55) = 16;
  sub_24A82DB14();
  LOBYTE(v55) = 18;
  sub_24A82DB14();
  LOBYTE(v55) = 22;
  sub_24A82DB14();
  LOBYTE(v55) = 27;
  sub_24A82DB14();
  LOBYTE(v55) = 57;
  sub_24A82DB14();
  LOBYTE(v55) = 49;
  sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  sub_24A7E0B1C();
  sub_24A82DB44();
  LOBYTE(v55) = 50;
  sub_24A82DB14();
  LOBYTE(v55) = *(v54 + v32[34]);
  v61 = 54;
  sub_24A7E0C18();
  sub_24A82DB44();
  LOBYTE(v55) = *(v54 + v32[36]);
  v61 = 55;
  sub_24A7E0C6C();
  sub_24A82DB44();
  v55 = *(v54 + v32[37]);
  v61 = 56;
  sub_24A82DB44();
  LOBYTE(v55) = *(v54 + v32[35]);
  v61 = 58;
  sub_24A7E0CC0();
  sub_24A82DAF4();
  return (*(v53 + 8))(v31, v40);
}