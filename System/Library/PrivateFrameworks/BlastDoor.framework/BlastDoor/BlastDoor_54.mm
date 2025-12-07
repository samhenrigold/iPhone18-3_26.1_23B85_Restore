unint64_t sub_2144C50C8()
{
  result = qword_27C9148B8;
  if (!qword_27C9148B8)
  {
    result = swift_getWitnessTable(aJ_4, &type metadata for KeyMaterial.MaterialType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9148B8);
  }

  return result;
}

unint64_t sub_2144C5120()
{
  result = qword_27C9148C0;
  if (!qword_27C9148C0)
  {
    result = swift_getWitnessTable(byte_2147555BC, &type metadata for KeyMaterial.MaterialType.MKMCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9148C0);
  }

  return result;
}

unint64_t sub_2144C5178()
{
  result = qword_27C9148C8;
  if (!qword_27C9148C8)
  {
    result = swift_getWitnessTable(byte_2147555E4, &type metadata for KeyMaterial.MaterialType.MKMCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9148C8);
  }

  return result;
}

unint64_t sub_2144C51D0()
{
  result = qword_27C9148D0;
  if (!qword_27C9148D0)
  {
    result = swift_getWitnessTable(a5z, &type metadata for KeyMaterial.MaterialType.SKMCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9148D0);
  }

  return result;
}

unint64_t sub_2144C5228()
{
  result = qword_27C9148D8;
  if (!qword_27C9148D8)
  {
    result = swift_getWitnessTable(aEv_0, &type metadata for KeyMaterial.MaterialType.SKMCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9148D8);
  }

  return result;
}

unint64_t sub_2144C5280()
{
  result = qword_27C9148E0;
  if (!qword_27C9148E0)
  {
    result = swift_getWitnessTable(byte_21475560C, &type metadata for KeyMaterial.MaterialType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9148E0);
  }

  return result;
}

unint64_t sub_2144C52D8()
{
  result = qword_27C9148E8;
  if (!qword_27C9148E8)
  {
    result = swift_getWitnessTable(byte_214755634, &type metadata for KeyMaterial.MaterialType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9148E8);
  }

  return result;
}

unint64_t sub_2144C532C()
{
  result = qword_27C9148F0;
  if (!qword_27C9148F0)
  {
    result = swift_getWitnessTable(aQ_28, &type metadata for GroupSessionParticipantUpdateType, v0, v1);
    atomic_store(result, &qword_27C9148F0);
  }

  return result;
}

uint64_t sub_2144C53A0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t, __n128))
{
  if (*a1)
  {
    v7 = *a3;
    v12 = *a1;
    MEMORY[0x28223BE20](a1);
    v10[2] = &v12;
    v11 = 2;

    v8 = (a5)(a4, v10, v7);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_2144C5558()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  sub_2146D9EF8();
  MEMORY[0x2160545D0](0x3A6E6F6973726576, 0xE900000000000020);
  v3 = sub_2146DA428();
  MEMORY[0x2160545D0](v3);

  MEMORY[0x2160545D0](0x6E6F69746361202CLL, 0xEE00203A65707954);
  v4 = sub_2146DA428();
  MEMORY[0x2160545D0](v4);

  MEMORY[0x2160545D0](0x79546D657469202CLL, 0xEC000000203A6570);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021479BAF0);
  v5 = sub_2146DA428();
  MEMORY[0x2160545D0](v5);

  MEMORY[0x2160545D0](0xD000000000000014, 0x800000021479BB10);
  if (v2)
  {
    v6 = v1;
  }

  else
  {
    v6 = 1280070990;
  }

  if (!v2)
  {
    v2 = 0xE400000000000000;
  }

  MEMORY[0x2160545D0](v6, v2);

  MEMORY[0x2160545D0](0xD000000000000015, 0x800000021479BB30);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](3943982, 0xE300000000000000);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0, 0xE000000000000000);

  MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BB50);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2144C58A4()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v3 = 1103;
    v4 = 1106;
    if (v1 != 2)
    {
      v4 = 1108;
    }

    if (*v0)
    {
      v3 = 1104;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else if (*v0 <= 5u)
  {
    if (v1 == 4)
    {
      return 1109;
    }

    else
    {
      return 1150;
    }
  }

  else if (v1 == 6)
  {
    return 1151;
  }

  else if (v1 == 7)
  {
    return 1152;
  }

  else
  {
    sub_21404A6EC();
    swift_allocError();
    *v5 = 0xD000000000000036;
    v5[1] = 0x800000021478B020;
    v5[2] = 0x4964696C61766E69;
    v5[3] = 0xEB000000006D6574;
    v5[4] = 0xD00000000000001CLL;
    v5[5] = 0x800000021478B060;
    return swift_willThrow();
  }
}

uint64_t sub_2144C59BC()
{
  v74 = type metadata accessor for SecureCloudPingRequestProtobuf(0);
  MEMORY[0x28223BE20](v74);
  v73 = &v67 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907428, &unk_214755800);
  MEMORY[0x28223BE20](v2 - 8);
  v72 = &v67 - v3;
  v4 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0);
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  v69 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907420, &unk_2146F4A40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v67 - v7;
  v9 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0);
  v68 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v67 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907418, &unk_214755810);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v67 - v12;
  v14 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v0;
  if (v18 <= 4)
  {
    if (*v0 > 2u)
    {
      v43 = type metadata accessor for IDSActivitySharingInvitation(0);
      v44 = v72;
      sub_213FB2E54(&v0[*(v43 + 28)], v72, &qword_27C907428, &unk_214755800);
      if ((*(v70 + 48))(v44, 1, v71) == 1)
      {
        sub_213FB2DF4(v44, &qword_27C907428, &unk_214755800);
        sub_21404A6EC();
        swift_allocError();
        *v45 = 0xD000000000000036;
        v45[1] = 0x800000021478B020;
        v45[2] = 0x2065646172677055;
        v45[3] = 0xEF6567617373656DLL;
        v45[4] = 0xD00000000000001CLL;
        v45[5] = 0x800000021478B060;
        return swift_willThrow();
      }

      v55 = v44;
      v56 = v69;
      sub_2144D66AC(v55, v69, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
      v57 = v92;
      v58 = sub_2144CEF64(v56);
      if (v57)
      {
        v59 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage;
        return sub_2144D6848(v56, v59);
      }

      v63 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage;
    }

    else
    {
      if (!*v0)
      {
        v49 = type metadata accessor for IDSActivitySharingInvitation(0);
        sub_213FB2E54(&v0[*(v49 + 20)], v13, &qword_27C907418, &unk_214755810);
        if ((*(v15 + 48))(v13, 1, v14) == 1)
        {
          sub_213FB2DF4(v13, &qword_27C907418, &unk_214755810);
          v46 = 0x800000021479BC20;
          sub_21404A6EC();
          swift_allocError();
          *v47 = 0xD000000000000036;
          v47[1] = 0x800000021478B020;
          v48 = 0xD000000000000016;
          goto LABEL_38;
        }

        sub_2144D66AC(v13, v17, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
        v60 = v92;
        v61 = sub_2144CE2B4(v17);
        if (v60)
        {
          return sub_2144D6848(v17, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
        }

        v63 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest;
        v64 = v61;
        v65 = v17;
        goto LABEL_47;
      }

      if (v18 != 1)
      {
        v50 = &v0[*(type metadata accessor for IDSActivitySharingInvitation(0) + 40)];
        v51 = *(v50 + 2);
        if (v51)
        {
          v52 = v50[48];
          v53 = *(v50 + 3);
          v54 = *(v50 + 2);
          *&v83 = *v50;
          BYTE8(v83) = v54 & 1;
          *&v84 = v51;
          *(&v84 + 1) = v53;
          v85 = *(v50 + 2);
          LOBYTE(v86[0]) = v52;
          return sub_2144CEDBC(&v83);
        }

        v46 = 0x800000021479BC00;
        sub_21404A6EC();
        swift_allocError();
        *v47 = 0xD000000000000036;
        v47[1] = 0x800000021478B020;
        v48 = 0xD000000000000018;
        goto LABEL_38;
      }

      v19 = type metadata accessor for IDSActivitySharingInvitation(0);
      sub_213FB2E54(&v0[*(v19 + 24)], v8, &qword_27C907420, &unk_2146F4A40);
      v20 = (*(v68 + 48))(v8, 1, v9);
      v21 = v92;
      if (v20 == 1)
      {
        sub_213FB2DF4(v8, &qword_27C907420, &unk_2146F4A40);
LABEL_22:
        v46 = 0x800000021479BB90;
        sub_21404A6EC();
        swift_allocError();
        *v47 = 0xD000000000000036;
        v47[1] = 0x800000021478B020;
        v48 = 0xD000000000000017;
LABEL_38:
        v47[2] = v48;
        v47[3] = v46;
        v47[4] = 0xD00000000000001CLL;
        v47[5] = 0x800000021478B060;
        return swift_willThrow();
      }

      v62 = v8;
      v56 = v67;
      sub_2144D66AC(v62, v67, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
      v58 = sub_2144CE7F8(v56);
      if (v21)
      {
        v59 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse;
        return sub_2144D6848(v56, v59);
      }

      v63 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse;
    }

    v64 = v58;
    v65 = v56;
LABEL_47:
    sub_2144D6848(v65, v63);
    return v64;
  }

  v22 = v73;
  v23 = v74;
  if (v18 - 6 < 2)
  {
    v24 = &v0[*(type metadata accessor for IDSActivitySharingInvitation(0) + 36)];
    v25 = *(v24 + 3);
    v85 = *(v24 + 2);
    v86[0] = v25;
    *(v86 + 9) = *(v24 + 57);
    v26 = *(v24 + 1);
    v83 = *v24;
    v84 = v26;
    v27 = v83;
    v28 = *(v24 + 56);
    v89 = *(v24 + 40);
    v90 = v28;
    v91 = v24[72];
    v29 = *(v24 + 24);
    v87 = *(v24 + 8);
    v88 = v29;
    v30 = v92;
    if (!v83)
    {
      goto LABEL_22;
    }

    v31 = *(v24 + 3);
    v81[2] = *(v24 + 2);
    v82[0] = v31;
    *(v82 + 9) = *(v24 + 57);
    v32 = *(v24 + 1);
    v81[0] = *v24;
    v81[1] = v32;
    sub_21430AC78(v81, &v75);
    if (!os_variant_has_internal_ui())
    {
      sub_213FB2DF4(&v83, &qword_27C9074A0, &qword_2146F4A68);
      return 0;
    }

    v75 = v27;
    v77 = v88;
    v78 = v89;
    v79 = v90;
    v80 = v91;
    v76 = v87;
    v33 = sub_2144CF41C(&v75);
    if (v30)
    {
      return sub_213FB2DF4(&v83, &qword_27C9074A0, &qword_2146F4A68);
    }

    v64 = v33;
    sub_213FB2DF4(&v83, &qword_27C9074A0, &qword_2146F4A68);
    return v64;
  }

  if (v18 != 5)
  {
    v46 = 0x800000021479BB70;
    sub_21404A6EC();
    swift_allocError();
    *v47 = 0xD000000000000036;
    v47[1] = 0x800000021478B020;
    v48 = 0xD000000000000012;
    goto LABEL_38;
  }

  v35 = &v0[*(type metadata accessor for IDSActivitySharingInvitation(0) + 32)];
  v36 = *v35;
  if (!*v35)
  {
    v46 = 0x800000021479BBE0;
    sub_21404A6EC();
    swift_allocError();
    *v47 = 0xD000000000000036;
    v47[1] = 0x800000021478B020;
    v48 = 0xD000000000000014;
    goto LABEL_38;
  }

  v38 = v35[1];
  v37 = v35[2];
  v39 = v35[3];

  sub_213FDC9D0(v37, v39);
  if (!os_variant_has_internal_ui())
  {
    sub_214313220(v36, v38, v37, v39);
    return 0;
  }

  sub_2146D8DE8();
  v40 = (v22 + *(v23 + 20));
  *v40 = 0;
  v40[1] = 0;
  if (v39)
  {
    if (v39 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    *v40 = v37;
    v40[1] = v39;
  }

  sub_2144D6800(&qword_27C913878, type metadata accessor for SecureCloudPingRequestProtobuf, byte_214740EC8);

  v41 = v92;
  v42 = sub_2146D8FC8();
  if (v41)
  {
    sub_2144D6848(v22, type metadata accessor for SecureCloudPingRequestProtobuf);
    return sub_214313220(v36, v38, v37, v39);
  }

  else
  {
    v66 = v42;
    sub_2144D6848(v22, type metadata accessor for SecureCloudPingRequestProtobuf);
    sub_214313220(v36, v38, v37, v39);
    return v66;
  }
}

void sub_2144C6558(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_2144C65BC()
{
  if (*v0)
  {
    return 0x5064696C61766E69;
  }

  else
  {
    return 0x4964696C61766E69;
  }
}

uint64_t sub_2144C660C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x5064696C61766E69;
  }

  else
  {
    v3 = 0x4964696C61766E69;
  }

  if (v2)
  {
    v4 = 0xEB000000006D6574;
  }

  else
  {
    v4 = 0xEF6675626F746F72;
  }

  if (*a2)
  {
    v5 = 0x5064696C61766E69;
  }

  else
  {
    v5 = 0x4964696C61766E69;
  }

  if (*a2)
  {
    v6 = 0xEF6675626F746F72;
  }

  else
  {
    v6 = 0xEB000000006D6574;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2144C66C8()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2144C6760(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2144C67E4(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2144C6878(char *a2@<X8>)
{
  v3 = sub_2146DA098();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_2144C68D8(uint64_t *a1@<X8>)
{
  v2 = 0x4964696C61766E69;
  if (*v1)
  {
    v2 = 0x5064696C61766E69;
  }

  v3 = 0xEB000000006D6574;
  if (*v1)
  {
    v3 = 0xEF6675626F746F72;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2144C692C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 1108)
  {
    if (result > 1150)
    {
      if (result == 1151)
      {
        *a2 = 6;
        return result;
      }

      if (result == 1152)
      {
        *a2 = 7;
        return result;
      }
    }

    else
    {
      if (result == 1109)
      {
        *a2 = 4;
        return result;
      }

      if (result == 1150)
      {
        *a2 = 5;
        return result;
      }
    }
  }

  else if (result > 1105)
  {
    if (result == 1106)
    {
      *a2 = 2;
      return result;
    }

    if (result == 1108)
    {
      *a2 = 3;
      return result;
    }
  }

  else
  {
    if (result == 1103)
    {
      *a2 = 0;
      return result;
    }

    if (result == 1104)
    {
      *a2 = 1;
      return result;
    }
  }

  *a2 = 8;
  return result;
}

uint64_t sub_2144C6A24()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214755DD0[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_2144C6AAC(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214755DD0[v2]);
  return sub_2146DA9B8();
}

void sub_2144C6B18(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 4;
  if (v4 < 4)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t sub_2144C6B74()
{
  v1 = 0x657A65657262;
  v2 = 0x6562656C6B637568;
  if (*v0 != 2)
  {
    v2 = 0x6F65646976;
  }

  if (*v0)
  {
    v1 = 0x6157646564697567;
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

uint64_t sub_2144C6C00()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2144C6CC8(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2144C6D7C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2144C6E4C(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x657A65657262;
  v4 = 0xEB00000000797272;
  v5 = 0x6562656C6B637568;
  if (*v1 != 2)
  {
    v5 = 0x6F65646976;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6157646564697567;
    v2 = 0xEA00000000006B6CLL;
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

__n128 sub_2144C6ED0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v103 = a3;
  v104 = a2;
  v112 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907428, &unk_214755800);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v90 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v101 = &v81 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907420, &unk_2146F4A40);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v92 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v105 = &v81 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907418, &unk_214755810);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v91 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v102 = &v81 - v16;
  *a4 = 8;
  v17 = type metadata accessor for IDSActivitySharingInvitation(0);
  v18 = &a4[v17[5]];
  v19 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v96 = v18;
  v99 = v20 + 56;
  v100 = v21;
  v21(v18, 1, 1, v19);
  v22 = &a4[v17[6]];
  v23 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v26 = v24 + 56;
  v95 = v22;
  v97 = v25;
  v25(v22, 1, 1, v23);
  v27 = &a4[v17[7]];
  v28 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v31 = (v29 + 56);
  v94 = v27;
  v30(v27, 1, 1, v28);
  v32 = &a4[v17[8]];
  v32[32] = 0;
  *v32 = 0u;
  *(v32 + 1) = 0u;
  v33 = &a4[v17[9]];
  *(v33 + 57) = 0u;
  v33[2] = 0u;
  v33[3] = 0u;
  *v33 = 0u;
  v33[1] = 0u;
  v93 = v33;
  v34 = &a4[v17[10]];
  v34[48] = 0;
  *(v34 + 1) = 0u;
  *(v34 + 2) = 0u;
  *v34 = 0u;
  sub_2144C692C(v112, &v106);
  if (v106 == 8)
  {
    sub_21404A6EC();
    swift_allocError();
    *v35 = 0xD000000000000036;
    v35[1] = 0x800000021478B020;
    v35[2] = 0x4964696C61766E69;
    v35[3] = 0xEB000000006D6574;
    v35[4] = 0xD00000000000001CLL;
    v35[5] = 0x800000021478B060;
    swift_willThrow();
    sub_213FB54FC(v104, v103);
LABEL_27:
    sub_2144D6848(a4, type metadata accessor for IDSActivitySharingInvitation);
    return result;
  }

  v88 = v32;
  v89 = v34;
  v36 = v102;
  v87 = v19;
  LODWORD(v112) = v106;
  v100(v102, 1, 1, v19);
  v37 = v97;
  v97(v105, 1, 1, v23);
  v38 = v101;
  v30(v101, 1, 1, v28);
  if (v112 <= 2)
  {
    if (!v112)
    {
      v54 = v91;
      v55 = v103;
      v56 = v104;
      v57 = v98;
      sub_2144C7CE8(v104, v103, v91);
      sub_213FB54FC(v56, v55);
      if (v57)
      {
        v58 = v101;
LABEL_17:
        sub_213FB2DF4(v58, &qword_27C907428, &unk_214755800);
        sub_213FB2DF4(v105, &qword_27C907420, &unk_2146F4A40);
        v61 = v102;
LABEL_26:
        sub_213FB2DF4(v61, &qword_27C907418, &unk_214755810);
        goto LABEL_27;
      }

      v67 = v102;
      sub_213FB2DF4(v102, &qword_27C907418, &unk_214755810);
      sub_2144D6848(a4, type metadata accessor for IDSActivitySharingInvitation);
      v100(v54, 0, 1, v87);
      sub_21408AC04(v54, v67, &qword_27C907418, &unk_214755810);
      v68 = v67;
      v103 = 0;
      v104 = 0;
      LODWORD(v100) = 0;
      v99 = 0;
      v97 = 0;
      v92 = 0;
      v90 = 0;
      v86 = 0;
      v43 = 0;
      v91 = 0;
      v87 = 0;
      v85 = 0;
      v52 = 0;
      v53 = 0;
      v84 = 0u;
      v83 = 0u;
      v82 = 0u;
      v81 = 0u;
      goto LABEL_31;
    }

    v39 = v98;
    if (v112 == 1)
    {
      v99 = v26;
      v100 = v23;
      v40 = v92;
      v41 = v103;
      v42 = v104;
      sub_2144C8CB8(v104, v103, v92);
      sub_213FB54FC(v42, v41);
      v43 = v39;
      if (v39)
      {
        sub_213FB2DF4(v38, &qword_27C907428, &unk_214755800);
        sub_213FB2DF4(v105, &qword_27C907420, &unk_2146F4A40);
        sub_213FB2DF4(v102, &qword_27C907418, &unk_214755810);
        sub_2144D6848(a4, type metadata accessor for IDSActivitySharingInvitation);
        return result;
      }

      v69 = v105;
      sub_213FB2DF4(v105, &qword_27C907420, &unk_2146F4A40);
      sub_2144D6848(a4, type metadata accessor for IDSActivitySharingInvitation);
      v37(v40, 0, 1, v100);
      sub_21408AC04(v40, v69, &qword_27C907420, &unk_2146F4A40);
      v103 = 0;
      v104 = 0;
      LODWORD(v100) = 0;
      v99 = 0;
      v97 = 0;
      v92 = 0;
      v90 = 0;
      v86 = 0;
      v91 = 0;
      v87 = 0;
      v85 = 0;
      v52 = 0;
      v53 = 0;
      v84 = 0u;
      v83 = 0u;
      v82 = 0u;
      v81 = 0u;
      v68 = v102;
      v71 = v95;
      v70 = v96;
      v50 = v89;
      goto LABEL_32;
    }

    v59 = v103;
    v60 = v104;
    sub_2144C9D58(v104, v103, &v106);
    if (v39)
    {
      sub_213FB54FC(v60, v59);
      v58 = v38;
      goto LABEL_17;
    }

    sub_2144D6848(a4, type metadata accessor for IDSActivitySharingInvitation);
    sub_213FB54FC(v60, v59);
    v104 = 0;
    LODWORD(v100) = 0;
    v91 = 0;
    v87 = 0;
    v85 = 0;
    v52 = 0;
    v53 = 0;
    v103 = v106;
    v99 = BYTE8(v106);
    v92 = *(&v107 + 1);
    v97 = v107;
    v84 = 0u;
    v83 = 0u;
    v86 = *(&v108 + 1);
    v90 = v108;
    v82 = 0u;
    v81 = 0u;
    v43 = v109.n128_u8[0];
LABEL_30:
    v68 = v102;
LABEL_31:
    v69 = v105;
    v71 = v95;
    v70 = v96;
    v50 = v89;
    goto LABEL_32;
  }

  v100 = v31;
  if ((v112 - 3) < 2)
  {
    v62 = v30;
    v63 = v90;
    v64 = v103;
    v65 = v104;
    v66 = v98;
    sub_2144CA0D4(v104, v103, v90);
    if (v66)
    {
      sub_213FB54FC(v65, v64);
      sub_213FB2DF4(v38, &qword_27C907428, &unk_214755800);
      sub_213FB2DF4(v105, &qword_27C907420, &unk_2146F4A40);
      sub_213FB2DF4(v102, &qword_27C907418, &unk_214755810);
      sub_2144D6848(a4, type metadata accessor for IDSActivitySharingInvitation);
      return result;
    }

    sub_213FB54FC(v65, v64);
    sub_213FB2DF4(v38, &qword_27C907428, &unk_214755800);
    sub_2144D6848(a4, type metadata accessor for IDSActivitySharingInvitation);
    v62(v63, 0, 1, v28);
    sub_21408AC04(v63, v38, &qword_27C907428, &unk_214755800);
    v103 = 0;
    v104 = 0;
    LODWORD(v100) = 0;
    v99 = 0;
    v97 = 0;
    v92 = 0;
    v90 = 0;
    v86 = 0;
    v43 = 0;
    v91 = 0;
    v87 = 0;
    v85 = 0;
    v52 = 0;
    v53 = 0;
    v84 = 0u;
    v83 = 0u;
    v82 = 0u;
    v81 = 0u;
    goto LABEL_30;
  }

  v45 = v36;
  v46 = v103;
  v47 = v104;
  if ((v112 - 6) >= 2)
  {
    has_internal_ui = os_variant_has_internal_ui();
    v73 = v98;
    v50 = v89;
    if (has_internal_ui)
    {
      v51 = v45;
      sub_2144C9F20(v47, v46, &v106);
      if (!v73)
      {
        sub_2144D6848(a4, type metadata accessor for IDSActivitySharingInvitation);
        sub_213FB54FC(v47, v46);
        v103 = 0;
        v104 = 0;
        LODWORD(v100) = 0;
        v99 = 0;
        v97 = 0;
        v92 = 0;
        v90 = 0;
        v86 = 0;
        v43 = 0;
        v87 = *(&v106 + 1);
        v91 = v106;
        v52 = *(&v107 + 1);
        v85 = v107;
        v53 = v108;
        v84 = 0u;
        v83 = 0u;
        v82 = 0u;
        v81 = 0u;
        goto LABEL_35;
      }

LABEL_25:
      sub_213FB54FC(v47, v46);
      sub_213FB2DF4(v38, &qword_27C907428, &unk_214755800);
      sub_213FB2DF4(v105, &qword_27C907420, &unk_2146F4A40);
      v61 = v51;
      goto LABEL_26;
    }
  }

  else
  {
    v48 = os_variant_has_internal_ui();
    v49 = v98;
    v50 = v89;
    if (v48)
    {
      v51 = v45;
      sub_2144CAF50(v47, v46, &v106);
      if (!v49)
      {
        sub_2144D6848(a4, type metadata accessor for IDSActivitySharingInvitation);
        sub_213FB54FC(v47, v46);
        v103 = 0;
        v99 = 0;
        v97 = 0;
        v92 = 0;
        v90 = 0;
        v86 = 0;
        v43 = 0;
        v91 = 0;
        v87 = 0;
        v85 = 0;
        v52 = 0;
        v53 = 0;
        v83 = v107;
        v84 = v106;
        v81 = v109;
        v82 = v108;
        v104 = v110;
        LODWORD(v100) = v111;
LABEL_35:
        v68 = v51;
        v69 = v105;
        v71 = v95;
        v70 = v96;
        goto LABEL_32;
      }

      goto LABEL_25;
    }
  }

  sub_2144D6848(a4, type metadata accessor for IDSActivitySharingInvitation);
  sub_213FB54FC(v47, v46);
  v103 = 0;
  v104 = 0;
  LODWORD(v100) = 0;
  v99 = 0;
  v97 = 0;
  v92 = 0;
  v90 = 0;
  v86 = 0;
  v43 = 0;
  v91 = 0;
  v87 = 0;
  v85 = 0;
  v52 = 0;
  v53 = 0;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v69 = v105;
  v71 = v95;
  v70 = v96;
  v68 = v45;
LABEL_32:
  sub_21408AC04(v68, v70, &qword_27C907418, &unk_214755810);
  sub_21408AC04(v69, v71, &qword_27C907420, &unk_2146F4A40);
  sub_21408AC04(v101, v94, &qword_27C907428, &unk_214755800);
  *a4 = v112;
  v74 = v88;
  v75 = v87;
  *v88 = v91;
  v74[1] = v75;
  v74[2] = v85;
  v74[3] = v52;
  *(v74 + 32) = v53;
  v76 = v93;
  v77 = v83;
  *v93 = v84;
  v76[1] = v77;
  result = v81;
  v76[2] = v82;
  v76[3] = result;
  *(v76 + 8) = v104;
  *(v76 + 72) = v100;
  v78 = v99;
  *v50 = v103;
  *(v50 + 1) = v78;
  v79 = v92;
  *(v50 + 2) = v97;
  *(v50 + 3) = v79;
  v80 = v86;
  *(v50 + 4) = v90;
  *(v50 + 5) = v80;
  v50[48] = v43;
  return result;
}

uint64_t sub_2144C7CE8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v129 = a3;
  v133 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0);
  MEMORY[0x28223BE20](v133);
  v153 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v135 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913940, &unk_214740F40);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v119 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DB8, &qword_2146F5AF0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v119 - v18;
  v20 = sub_2146D8E18();
  MEMORY[0x28223BE20](v20 - 8);
  v21 = type metadata accessor for SecureCloudInviteRequestProtobuf(0);
  MEMORY[0x28223BE20](v21);
  *&v146 = a1;
  *(&v146 + 1) = a2;
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  v23 = a1;
  v24 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21402D9F8(v23, a2);
  sub_2146D8E08();
  sub_2144D6800(&qword_27C9138D0, type metadata accessor for SecureCloudInviteRequestProtobuf, asc_214740C70);
  v25 = v136;
  result = sub_2146D8FD8();
  if (!v25)
  {
    v121 = v11;
    v122 = v7;
    v130 = v17;
    v131 = v19;
    v136 = 0;
    v27 = v21[6];
    v28 = &v24[v21[5]];
    v124 = *v28;
    v123 = v28[8];
    v29 = *&v24[v27 + 8];
    v125 = *&v24[v27];
    v30 = v21[8];
    v31 = &v24[v21[7]];
    v32 = *(v31 + 1);
    v120 = *v31;
    v33 = *&v24[v30 + 8];
    v119 = *&v24[v30];
    v34 = v21[9];
    sub_213FB2E54(&v24[v34], v13, &qword_27C913940, &unk_214740F40);
    v35 = *(v135 + 48);
    v135 += 48;
    v36 = v35(v13, 1, v134);
    v127 = v33;

    v128 = v29;

    v126 = v32;

    sub_213FB2DF4(v13, &qword_27C913940, &unk_214740F40);
    if (v36 == 1)
    {
      v37 = v153;
      v38 = v24;
      v39 = v131;
      v40 = v130;
      v41 = 1;
    }

    else
    {
      v42 = v121;
      sub_213FB2E54(&v24[v34], v121, &qword_27C913940, &unk_214740F40);
      v38 = v24;
      if (v35(v42, 1, v134) == 1)
      {
        v43 = v122;
        sub_2146D8DE8();
        v44 = v134;
        *(v43 + *(v134 + 20)) = xmmword_2146E68C0;
        *(v43 + v44[6]) = xmmword_2146E68C0;
        *(v43 + v44[7]) = xmmword_2146E68C0;
        v45 = (v43 + v44[8]);
        *v45 = 0;
        v45[1] = 0;
        v46 = (v35)(v42, 1) == 1;
        v37 = v153;
        v47 = v42;
        v39 = v131;
        v40 = v130;
        if (!v46)
        {
          sub_213FB2DF4(v47, &qword_27C913940, &unk_214740F40);
        }
      }

      else
      {
        v43 = v122;
        sub_2144D66AC(v42, v122, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
        v37 = v153;
        v39 = v131;
        v40 = v130;
      }

      v48 = v136;
      sub_2144CB11C(v43, v39);
      v41 = v48;
      sub_2144D6848(v43, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
      v136 = v48;
      if (v48)
      {

        return sub_2144D6848(v38, type metadata accessor for SecureCloudInviteRequestProtobuf);
      }
    }

    v49 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
    (*(*(v49 - 8) + 56))(v39, v41, 1, v49);
    v50 = v21[10];
    v135 = v38;
    v51 = v38 + v50;
    LODWORD(v122) = *v51;
    v132 = *(v51 + 4);
    sub_213FB2E54(v39, v40, &qword_27C909DB8, &qword_2146F5AF0);
    sub_213FB2E54(v40, &v37[*(v133 + 32)], &qword_27C909DB8, &qword_2146F5AF0);
    sub_2145ED9D0(&v150);
    v53 = *(&v151 + 1);
    v52 = v151;
    v54 = v152;
    sub_2145EDA04(&v146);
    v55 = v147;
    v56 = v148;
    v57 = v149;
    sub_2145EDA38(&v142);
    v58 = v143;
    v59 = v144;
    v60 = v145;
    sub_2145EDA74(&v137);
    v61 = v138;
    v62 = v139;
    v63 = v140;
    v64 = v141;
    *v153 = v124;
    v153[8] = v123;
    *(v153 + 1) = v150;
    *(v153 + 4) = v52;
    v65 = v153;
    *(v153 + 5) = v53;
    *(v65 + 48) = v54;
    *(v65 + 56) = v146;
    *(v65 + 72) = v55;
    *(v65 + 80) = v56;
    *(v65 + 88) = v57;
    *(v65 + 96) = v142;
    *(v65 + 112) = v58;
    *(v65 + 120) = v59;
    *(v65 + 128) = v60;
    v66 = v65 + *(v133 + 36);
    *v66 = v137;
    *(v66 + 20) = v62;
    *(v66 + 16) = v61;
    *(v66 + 21) = v63;
    *(v66 + 22) = v64;
    v68 = *(v65 + 16);
    v67 = *(v65 + 24);
    v69 = *(v65 + 32);
    v70 = *(v65 + 40);
    v71 = *(v65 + 48);
    *&v146 = v125;
    *(&v146 + 1) = v128;
    LODWORD(v134) = v71;
    LOBYTE(v142) = v71;
    *&v150 = 0xD000000000000044;
    *(&v150 + 1) = 0x8000000214790EF0;
    *&v151 = 0xD00000000000001CLL;
    *(&v151 + 1) = 0x800000021478A360;

    sub_213FDC9D0(v69, v70);
    v72 = v136;
    v73 = v68(&v146, &v142, &v150);
    if (v72)
    {
      v136 = v72;
    }

    else
    {
      v133 = v66;
      if (v73)
      {
        v136 = 0;
        sub_213FDC6D0(v69, v70);

        v74 = *(v65 + 32);
        v75 = *(v65 + 40);

        sub_213FDC6D0(v74, v75);
        *(v65 + 16) = v68;
        *(v65 + 24) = v67;
        v76 = v128;
        *(v65 + 32) = v125;
        *(v65 + 40) = v76;
        *(v65 + 48) = v134;
        v78 = *(v65 + 56);
        v77 = *(v65 + 64);
        v79 = *(v65 + 72);
        v80 = *(v65 + 80);
        v81 = *(v65 + 88);
        v82 = v126;
        *&v146 = v120;
        *(&v146 + 1) = v126;
        LODWORD(v134) = v81;
        LOBYTE(v142) = v81;
        *&v150 = 0xD000000000000040;
        *(&v150 + 1) = 0x8000000214790F40;
        *&v151 = 0xD00000000000001CLL;
        *(&v151 + 1) = 0x800000021478A360;

        sub_213FDC9D0(v79, v80);
        v83 = v136;
        v84 = v78(&v146, &v142, &v150);
        if (v83)
        {
          v136 = v83;
        }

        else
        {
          if (v84)
          {
            sub_213FDC6D0(v79, v80);

            v89 = *(v65 + 72);
            v90 = *(v65 + 80);

            sub_213FDC6D0(v89, v90);
            *(v65 + 56) = v78;
            *(v65 + 64) = v77;
            *(v65 + 72) = v120;
            *(v65 + 80) = v82;
            *(v65 + 88) = v134;
            v92 = *(v65 + 96);
            v91 = *(v65 + 104);
            v93 = *(v65 + 112);
            v94 = *(v65 + 120);
            v95 = *(v65 + 128);
            *&v146 = v119;
            *(&v146 + 1) = v127;
            LODWORD(v134) = v95;
            LOBYTE(v142) = v95;
            *&v150 = 0xD000000000000041;
            *(&v150 + 1) = 0x8000000214790F90;
            *&v151 = 0xD00000000000001CLL;
            *(&v151 + 1) = 0x800000021478A360;

            sub_213FDC9D0(v93, v94);
            v96 = v92(&v146, &v142, &v150);
            if (v96)
            {
              sub_213FDC6D0(v93, v94);

              v101 = *(v65 + 112);
              v102 = *(v65 + 120);

              sub_213FDC6D0(v101, v102);
              *(v65 + 96) = v92;
              *(v65 + 104) = v91;
              v103 = v127;
              *(v65 + 112) = v119;
              *(v65 + 120) = v103;
              *(v65 + 128) = v134;
              v104 = v133;
              v106 = *v133;
              v105 = *(v133 + 8);
              v128 = *(v133 + 20);
              v127 = *(v133 + 16);
              LODWORD(v134) = *(v133 + 21);
              v107 = *(v133 + 22);
              v108 = v122;
              LODWORD(v146) = v122;
              BYTE4(v146) = v132;
              LOBYTE(v142) = v107;
              *&v150 = 0xD00000000000003DLL;
              *(&v150 + 1) = 0x8000000214790FE0;
              *&v151 = 0xD00000000000001CLL;
              *(&v151 + 1) = 0x800000021478A360;

              v109 = v106(&v146, &v142, &v150);
              if (v109)
              {

                sub_213FB2DF4(v130, &qword_27C909DB8, &qword_2146F5AF0);
                sub_213FB2DF4(v131, &qword_27C909DB8, &qword_2146F5AF0);
                v114 = v65;
                v115 = v132 != 0;

                *v104 = v106;
                *(v104 + 8) = v105;
                *(v104 + 20) = v115;
                *(v104 + 16) = v108;
                *(v104 + 21) = 0;
                *(v104 + 22) = v107;
                sub_2144D66AC(v114, v129, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
                return sub_2144D6848(v135, type metadata accessor for SecureCloudInviteRequestProtobuf);
              }

              sub_214031C4C();
              v116 = swift_allocError();
              *v117 = 0xD00000000000003DLL;
              v117[1] = 0x8000000214790FE0;
              v117[2] = 0xD00000000000001CLL;
              v117[3] = 0x800000021478A360;
              v136 = v116;
              swift_willThrow();
              sub_213FB2DF4(v130, &qword_27C909DB8, &qword_2146F5AF0);
              sub_213FB2DF4(v131, &qword_27C909DB8, &qword_2146F5AF0);
              v118 = v127 | (v128 << 32);

              *v104 = v106;
              *(v104 + 8) = v105;
              *(v104 + 20) = BYTE4(v118);
              *(v104 + 16) = v118;
              *(v104 + 21) = v134;
              *(v104 + 22) = v107;
              v65 = v153;
            }

            else
            {
              sub_214031C4C();
              v110 = swift_allocError();
              *v111 = 0xD000000000000041;
              v111[1] = 0x8000000214790F90;
              v111[2] = 0xD00000000000001CLL;
              v111[3] = 0x800000021478A360;
              v136 = v110;
              swift_willThrow();

              sub_213FB2DF4(v130, &qword_27C909DB8, &qword_2146F5AF0);
              sub_213FB2DF4(v131, &qword_27C909DB8, &qword_2146F5AF0);
              v112 = *(v65 + 112);
              v113 = *(v65 + 120);

              sub_213FDC6D0(v112, v113);
              *(v65 + 96) = v92;
              *(v65 + 104) = v91;
              *(v65 + 112) = v93;
              *(v65 + 120) = v94;
              *(v65 + 128) = v134;
            }

            goto LABEL_17;
          }

          sub_214031C4C();
          v97 = swift_allocError();
          *v98 = 0xD000000000000040;
          v98[1] = 0x8000000214790F40;
          v98[2] = 0xD00000000000001CLL;
          v98[3] = 0x800000021478A360;
          v136 = v97;
          swift_willThrow();
        }

        sub_213FB2DF4(v130, &qword_27C909DB8, &qword_2146F5AF0);
        sub_213FB2DF4(v131, &qword_27C909DB8, &qword_2146F5AF0);
        v99 = *(v65 + 72);
        v100 = *(v65 + 80);

        sub_213FDC6D0(v99, v100);
        *(v65 + 56) = v78;
        *(v65 + 64) = v77;
        *(v65 + 72) = v79;
        *(v65 + 80) = v80;
        *(v65 + 88) = v134;
LABEL_17:
        v38 = v135;
        sub_2144D6848(v65, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
        return sub_2144D6848(v38, type metadata accessor for SecureCloudInviteRequestProtobuf);
      }

      sub_214031C4C();
      v85 = swift_allocError();
      *v86 = 0xD000000000000044;
      v86[1] = 0x8000000214790EF0;
      v86[2] = 0xD00000000000001CLL;
      v86[3] = 0x800000021478A360;
      v136 = v85;
      swift_willThrow();
    }

    sub_213FB2DF4(v130, &qword_27C909DB8, &qword_2146F5AF0);
    sub_213FB2DF4(v131, &qword_27C909DB8, &qword_2146F5AF0);
    v87 = *(v65 + 32);
    v88 = *(v65 + 40);

    sub_213FDC6D0(v87, v88);
    *(v65 + 16) = v68;
    *(v65 + 24) = v67;
    *(v65 + 32) = v69;
    *(v65 + 40) = v70;
    *(v65 + 48) = v134;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_2144C8CB8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v153 = a3;
  v157 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0);
  MEMORY[0x28223BE20](v157);
  v158 = (&v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v159 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v160 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v155 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913940, &unk_214740F40);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v144 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DB8, &qword_2146F5AF0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v144 - v17;
  v19 = sub_2146D8E18();
  MEMORY[0x28223BE20](v19 - 8);
  v20 = type metadata accessor for SecureCloudInviteResponseProtobuf(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v170 = a1;
  *(&v170 + 1) = a2;
  v176 = 0;
  v174 = 0u;
  v175 = 0u;
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_2144D6800(&qword_27C9138B0, type metadata accessor for SecureCloudInviteResponseProtobuf, byte_214740B08);
  v23 = v177;
  result = sub_2146D8FD8();
  if (!v23)
  {
    v147 = v10;
    v152 = v16;
    v154 = v18;
    v177 = 0;
    v25 = v20[6];
    v26 = &v22[v20[5]];
    v149 = *v26;
    v148 = v26[8];
    v27 = *&v22[v25 + 8];
    *&v150 = *&v22[v25];
    v28 = &v22[v20[7]];
    v29 = *(v28 + 1);
    v144 = *v28;
    v30 = v20[10];
    sub_213FB2E54(&v22[v30], v12, &qword_27C913940, &unk_214740F40);
    v31 = *(v160 + 48);
    v160 += 48;
    v146 = v31;
    v32 = (v31)(v12, 1, v159);
    v151 = v29;

    *(&v150 + 1) = v27;

    sub_213FB2DF4(v12, &qword_27C913940, &unk_214740F40);
    if (v32 == 1)
    {
      v33 = v158;
      v34 = v154;
      v35 = 1;
    }

    else
    {
      v36 = v147;
      sub_213FB2E54(&v22[v30], v147, &qword_27C913940, &unk_214740F40);
      v37 = v146;
      if ((v146)(v36, 1, v159) == 1)
      {
        v38 = v155;
        sub_2146D8DE8();
        v39 = v159;
        *(v38 + *(v159 + 20)) = xmmword_2146E68C0;
        *(v38 + v39[6]) = xmmword_2146E68C0;
        *(v38 + v39[7]) = xmmword_2146E68C0;
        v40 = (v38 + v39[8]);
        *v40 = 0;
        v40[1] = 0;
        v41 = v37(v36, 1);
        v33 = v158;
        v34 = v154;
        if (v41 != 1)
        {
          sub_213FB2DF4(v36, &qword_27C913940, &unk_214740F40);
        }
      }

      else
      {
        v38 = v155;
        sub_2144D66AC(v36, v155, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
        v33 = v158;
        v34 = v154;
      }

      v42 = v177;
      sub_2144CB11C(v38, v34);
      v35 = v42;
      sub_2144D6848(v38, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
      v177 = v42;
      if (v42)
      {

        return sub_2144D6848(v22, type metadata accessor for SecureCloudInviteResponseProtobuf);
      }
    }

    v43 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
    (*(*(v43 - 8) + 56))(v34, v35, 1, v43);
    v44 = &v22[v20[11]];
    v45 = *v44;
    LODWORD(v146) = v44[4];
    v46 = &v22[v20[9]];
    v47 = v46[9];
    v145 = v22;
    LODWORD(v147) = v45;
    if ((v47 & 1) != 0 || (v46[8] & 1) == 0)
    {
      v155 = 0;
      v160 = 0;
      LODWORD(v48) = 5;
    }

    else
    {
      v48 = *v46;
      if (v48 <= 1)
      {
        if (!v48)
        {
          v94 = &v22[v20[8]];
          v95 = v94[1];
          if (v95)
          {
            v155 = *v94;
            v160 = v95;

            LODWORD(v159) = 0;
          }

          else
          {
            LODWORD(v159) = 0;
            v155 = 0;
            v160 = 0;
          }

LABEL_18:
          v49 = v152;
          v50 = v157;
          sub_213FB2E54(v34, v152, &qword_27C909DB8, &qword_2146F5AF0);
          sub_213FB2E54(v49, v33 + *(v50 + 36), &qword_27C909DB8, &qword_2146F5AF0);
          sub_2145EDC40(&v174);
          v156 = *(&v175 + 1);
          v157 = v175;
          v51 = v176;
          sub_2145EDC74(&v170);
          v52 = v171;
          v53 = v172;
          v54 = v173;
          sub_2145EDCA8(&v166);
          v55 = v50;
          v56 = v167;
          v57 = v168;
          v58 = v169;
          sub_2145EDCE4(&v161);
          v59 = v162;
          v60 = v163;
          v61 = v164;
          v62 = v165;
          *v33 = v149;
          *(v33 + 8) = v148;
          *(v33 + 1) = v174;
          v63 = v156;
          v33[4] = v157;
          v33[5] = v63;
          *(v33 + 48) = v51;
          *(v33 + 7) = v170;
          v33[9] = v52;
          v33[10] = v53;
          *(v33 + 88) = v54;
          *(v33 + 6) = v166;
          v33[14] = v56;
          v33[15] = v57;
          *(v33 + 128) = v58;
          *(v33 + 129) = v159;
          v64 = v33 + *(v55 + 40);
          *v64 = v161;
          v64[20] = v60;
          *(v64 + 4) = v59;
          v64[21] = v61;
          v64[22] = v62;
          v66 = v33[2];
          v65 = v33[3];
          v68 = v33[4];
          v67 = v33[5];
          v69 = *(v33 + 48);
          v70 = v150;
          v170 = v150;
          LODWORD(v159) = v69;
          LOBYTE(v166) = v69;
          *&v174 = 0xD000000000000045;
          *(&v174 + 1) = 0x8000000214791020;
          *&v175 = 0xD00000000000001CLL;
          *(&v175 + 1) = 0x800000021478A360;

          sub_213FDC9D0(v68, v67);
          v71 = v177;
          v72 = v66(&v170, &v166, &v174);
          if (v71)
          {
            v177 = v71;
          }

          else
          {
            v156 = v64;
            v157 = 0x800000021478A360;
            if (v72)
            {
              v177 = 0;
              sub_213FDC6D0(v68, v67);
              v73 = v157;

              v74 = v158;
              v75 = v158[4];
              v76 = v158[5];

              sub_213FDC6D0(v75, v76);
              v74[2] = v66;
              v74[3] = v65;
              *(v74 + 2) = v70;
              v77 = v73;
              *(v74 + 48) = v159;
              v79 = v74[7];
              v78 = v74[8];
              v80 = v74[9];
              v81 = v74[10];
              v82 = v74;
              v83 = *(v74 + 88);
              v84 = v151;
              *&v170 = v144;
              *(&v170 + 1) = v151;
              LOBYTE(v166) = v83;
              *&v174 = 0xD000000000000041;
              *(&v174 + 1) = 0x8000000214791070;
              *&v175 = 0xD00000000000001CLL;
              *(&v175 + 1) = v77;

              sub_213FDC9D0(v80, v81);
              v85 = v177;
              v86 = v79(&v170, &v166, &v174);
              if (v85)
              {
                v177 = v85;
              }

              else
              {
                v96 = v84;
                v97 = v160;
                if (v86)
                {
                  v177 = 0;
                  sub_213FDC6D0(v80, v81);
                  v98 = v157;

                  v99 = v97;
                  v100 = v82[9];
                  v101 = v82[10];

                  sub_213FDC6D0(v100, v101);
                  v82[7] = v79;
                  v82[8] = v78;
                  v82[9] = v144;
                  v82[10] = v96;
                  *(v82 + 88) = v83;
                  v102 = v82;
                  v103 = v82[12];
                  v104 = v102[13];
                  v105 = v102[14];
                  v106 = v102[15];
                  v107 = *(v102 + 128);
                  v108 = v155;
                  *&v170 = v155;
                  *(&v170 + 1) = v99;
                  LOBYTE(v166) = v107;
                  *&v174 = 0xD000000000000042;
                  *(&v174 + 1) = 0x80000002147910C0;
                  *&v175 = 0xD00000000000001CLL;
                  *(&v175 + 1) = v98;

                  sub_213FDC9D0(v105, v106);
                  v109 = v177;
                  v110 = v103(&v170, &v166, &v174);
                  if (v109)
                  {
                    v177 = v109;
                  }

                  else
                  {
                    if (v110)
                    {
                      v117 = v107;
                      v118 = v99;
                      v177 = 0;
                      sub_213FDC6D0(v105, v106);
                      v119 = v157;

                      v120 = v158;
                      v121 = v158[14];
                      v122 = v158[15];

                      sub_213FDC6D0(v121, v122);
                      v120[12] = v103;
                      v120[13] = v104;
                      v120[14] = v108;
                      v120[15] = v118;
                      *(v120 + 128) = v117;
                      v124 = *v156;
                      v123 = *(v156 + 1);
                      v160 = v156[20];
                      v125 = *(v156 + 4);
                      v126 = v156[21];
                      v127 = v156[22];
                      v128 = v147;
                      LODWORD(v170) = v147;
                      v129 = v146;
                      BYTE4(v170) = v146;
                      LOBYTE(v166) = v127;
                      *&v174 = 0xD00000000000003ELL;
                      *(&v174 + 1) = 0x8000000214791110;
                      *&v175 = 0xD00000000000001CLL;
                      *(&v175 + 1) = v119;

                      v130 = v177;
                      v131 = v124(&v170, &v166, &v174);
                      if (v130)
                      {
                        v177 = v130;
                        sub_213FB2DF4(v152, &qword_27C909DB8, &qword_2146F5AF0);
                        sub_213FB2DF4(v154, &qword_27C909DB8, &qword_2146F5AF0);
                      }

                      else
                      {
                        if (v131)
                        {

                          sub_213FB2DF4(v152, &qword_27C909DB8, &qword_2146F5AF0);
                          sub_213FB2DF4(v154, &qword_27C909DB8, &qword_2146F5AF0);
                          v138 = v156;

                          *v138 = v124;
                          *(v138 + 1) = v123;
                          v138[20] = v129 != 0;
                          *(v138 + 4) = v128;
                          v138[21] = 0;
                          v138[22] = v127;
                          sub_2144D66AC(v158, v153, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
                          return sub_2144D6848(v145, type metadata accessor for SecureCloudInviteResponseProtobuf);
                        }

                        sub_214031C4C();
                        v139 = swift_allocError();
                        *v140 = 0xD00000000000003ELL;
                        v140[1] = 0x8000000214791110;
                        v141 = v157;
                        v140[2] = 0xD00000000000001CLL;
                        v140[3] = v141;
                        v177 = v139;
                        swift_willThrow();
                        sub_213FB2DF4(v152, &qword_27C909DB8, &qword_2146F5AF0);
                        sub_213FB2DF4(v154, &qword_27C909DB8, &qword_2146F5AF0);
                      }

                      v142 = v156;
                      v143 = v125 | (v160 << 32);

                      *v142 = v124;
                      *(v142 + 1) = v123;
                      v142[20] = BYTE4(v143);
                      *(v142 + 4) = v143;
                      v142[21] = v126;
                      v142[22] = v127;
                      v93 = v158;
                      goto LABEL_25;
                    }

                    sub_214031C4C();
                    v132 = swift_allocError();
                    *v133 = 0xD000000000000042;
                    v133[1] = 0x80000002147910C0;
                    v134 = v157;
                    v133[2] = 0xD00000000000001CLL;
                    v133[3] = v134;
                    v177 = v132;
                    swift_willThrow();
                  }

                  sub_213FB2DF4(v152, &qword_27C909DB8, &qword_2146F5AF0);
                  sub_213FB2DF4(v154, &qword_27C909DB8, &qword_2146F5AF0);
                  v135 = v158;
                  v136 = v158[14];
                  v137 = v158[15];

                  sub_213FDC6D0(v136, v137);
                  v135[12] = v103;
                  v135[13] = v104;
                  v93 = v135;
                  v135[14] = v105;
                  v135[15] = v106;
                  *(v135 + 128) = v107;
LABEL_25:
                  v22 = v145;
                  sub_2144D6848(v93, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
                  return sub_2144D6848(v22, type metadata accessor for SecureCloudInviteResponseProtobuf);
                }

                sub_214031C4C();
                v111 = swift_allocError();
                *v112 = 0xD000000000000041;
                v112[1] = 0x8000000214791070;
                v113 = v157;
                v112[2] = 0xD00000000000001CLL;
                v112[3] = v113;
                v177 = v111;
                swift_willThrow();
              }

              v114 = v154;
              sub_213FB2DF4(v152, &qword_27C909DB8, &qword_2146F5AF0);
              sub_213FB2DF4(v114, &qword_27C909DB8, &qword_2146F5AF0);
              v115 = v74[9];
              v116 = v74[10];

              sub_213FDC6D0(v115, v116);
              v93 = v82;
              v82[7] = v79;
              v82[8] = v78;
              v82[9] = v80;
              v82[10] = v81;
              *(v82 + 88) = v83;
              goto LABEL_25;
            }

            sub_214031C4C();
            v87 = swift_allocError();
            *v88 = 0xD000000000000045;
            v88[1] = 0x8000000214791020;
            v89 = v157;
            v88[2] = 0xD00000000000001CLL;
            v88[3] = v89;
            v177 = v87;
            swift_willThrow();
          }

          sub_213FB2DF4(v152, &qword_27C909DB8, &qword_2146F5AF0);
          sub_213FB2DF4(v154, &qword_27C909DB8, &qword_2146F5AF0);
          v90 = v158;
          v91 = v158[4];
          v92 = v158[5];

          sub_213FDC6D0(v91, v92);
          v90[2] = v66;
          v90[3] = v65;
          v93 = v90;
          v90[4] = v68;
          v90[5] = v67;
          *(v90 + 48) = v159;
          goto LABEL_25;
        }

        v155 = 0;
        v160 = 0;
        LODWORD(v48) = 2;
      }

      else if (v48 == 2)
      {
        v155 = 0;
        v160 = 0;
        LODWORD(v48) = 1;
      }

      else
      {
        v155 = 0;
        v160 = 0;
        if (v48 != 3)
        {
          LODWORD(v48) = 4;
        }
      }
    }

    LODWORD(v159) = v48;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_2144C9D58@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2146D8E18();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for SecureCloudWithdrawRequestProtobuf(0);
  MEMORY[0x28223BE20](v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_2144D6800(&qword_27C913818, type metadata accessor for SecureCloudWithdrawRequestProtobuf, aI_20);
  result = sub_2146D8FD8();
  if (!v3)
  {
    v12 = *(v8 + 24);
    v13 = &v10[*(v8 + 20)];
    v14 = *v13;
    v15 = v13[8];
    v16 = *&v10[v12];
    v17 = *&v10[v12 + 8];

    sub_21420E7FC(v14, v15, v16, v17, a3);
    return sub_2144D6848(v10, type metadata accessor for SecureCloudWithdrawRequestProtobuf);
  }

  return result;
}

uint64_t sub_2144C9F20@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2146D8E18();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for SecureCloudPingRequestProtobuf(0);
  MEMORY[0x28223BE20](v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_2144D6800(&qword_27C913878, type metadata accessor for SecureCloudPingRequestProtobuf, byte_214740EC8);
  result = sub_2146D8FD8();
  if (!v3)
  {
    v12 = &v10[*(v8 + 20)];
    v13 = *v12;
    v14 = v12[1];

    sub_21420D2E0(v13, v14, a3);
    return sub_2144D6848(v10, type metadata accessor for SecureCloudPingRequestProtobuf);
  }

  return result;
}

void sub_2144CA0D4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v148 = a3;
  v5 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E38, &qword_2146F5B20);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v131 - v12;
  v14 = sub_2146D8E18();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = type metadata accessor for SecureCloudUpgradeMessageProtobuf(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v159 = a1;
  *(&v159 + 1) = a2;
  v165 = 0;
  v163 = 0u;
  v164 = 0u;
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_2144D6800(&qword_27C913838, type metadata accessor for SecureCloudUpgradeMessageProtobuf, byte_2147405B8);
  v18 = v166;
  sub_2146D8FD8();
  if (!v18)
  {
    v19 = v13;
    v147 = v7;
    v145 = v5;
    v146 = v11;
    v166 = 0;
    v20 = &v17[v15[5]];
    v21 = *v20;
    v22 = *(v20 + 1);
    v23 = &v17[v15[6]];
    v144 = *v23;
    LODWORD(v143) = v23[8];
    v24 = &v17[v15[8]];
    v26 = *v24;
    v25 = *(v24 + 1);
    v27 = &v17[v15[9]];
    v28 = v27[1];
    v135 = v26;
    if (v28 >> 60 == 15)
    {
      v29 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
      (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
    }

    else
    {
      v30 = *v27;

      sub_213FDCA18(v30, v28);
      v31 = v166;
      sub_2144CB6C4(v19);
      v166 = v31;
      if (v31)
      {
        sub_2144D6848(v17, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
        sub_213FB54FC(v30, v28);

        return;
      }

      sub_213FB54FC(v30, v28);
    }

    v32 = &v17[v15[7]];
    v33 = *(v32 + 1);
    v34 = &v17[v15[11]];
    v35 = &v17[v15[10]];
    v36 = v35[9];
    v141 = v17;
    v140 = v25;
    v142 = v22;
    v139 = v21;
    if (v36)
    {
      LODWORD(v138) = 2;
      v37 = v145;
    }

    else
    {
      v37 = v145;
      if (v35[8])
      {
        v38 = *v35 != 0;
      }

      else
      {
        v38 = 2;
      }

      LODWORD(v138) = v38;
    }

    v133 = v34[4];
    v134 = *v32;
    v132 = *v34;
    v145 = v19;
    v39 = v146;
    sub_213FB2E54(v19, v146, &qword_27C909E38, &qword_2146F5B20);
    v40 = v147;
    sub_213FB2E54(v39, v147 + v37[8], &qword_27C909E38, &qword_2146F5B20);

    sub_2145EE218(&v163);
    v136 = *(&v164 + 1);
    v137 = v164;
    v149 = v33;
    v41 = v165;
    sub_2145EE398(&v159);
    v42 = v160;
    v43 = v161;
    v44 = v162;
    sub_2145EE3CC(&v155);
    v45 = v156;
    v46 = v157;
    v47 = v158;
    sub_2145EE400(&v150);
    v48 = v151;
    v49 = v152;
    v50 = v153;
    v51 = v154;
    *v40 = v163;
    v52 = v136;
    v40[2] = v137;
    v40[3] = v52;
    *(v40 + 32) = v41;
    v40[5] = v144;
    *(v40 + 48) = v143;
    *(v40 + 7) = v159;
    v40[9] = v42;
    v40[10] = v43;
    *(v40 + 88) = v44;
    *(v40 + 89) = v138;
    v53 = v40 + v37[9];
    *v53 = v155;
    *(v53 + 2) = v45;
    *(v53 + 3) = v46;
    v53[32] = v47;
    v54 = v40;
    v55 = v40 + v37[10];
    *v55 = v150;
    v55[20] = v49;
    *(v55 + 4) = v48;
    v55[21] = v50;
    v55[22] = v51;
    v57 = *v40;
    v56 = v40[1];
    v59 = v40[2];
    v58 = v40[3];
    v60 = *(v54 + 32);
    v61 = v139;
    *&v159 = v139;
    *(&v159 + 1) = v142;
    LODWORD(v143) = v60;
    LOBYTE(v155) = v60;
    *&v163 = 0xD000000000000042;
    *(&v163 + 1) = 0x80000002147911A0;
    *&v164 = 0xD00000000000001CLL;
    *(&v164 + 1) = 0x800000021478A360;

    v138 = v59;
    v137 = v58;
    sub_213FDC9D0(v59, v58);
    v62 = v166;
    v144 = v57;
    v63 = v57(&v159, &v155, &v163);
    if (v62)
    {
      v166 = v62;

      v64 = v146;
LABEL_19:

      sub_213FB2DF4(v64, &qword_27C909E38, &qword_2146F5B20);
      sub_213FB2DF4(v145, &qword_27C909E38, &qword_2146F5B20);
      v82 = v147;
      v83 = v147[2];
      v84 = v147[3];

      sub_213FDC6D0(v83, v84);
      *v82 = v144;
      v82[1] = v56;
      v85 = v137;
      v82[2] = v138;
      v82[3] = v85;
      *(v82 + 32) = v143;
LABEL_20:
      v86 = v141;
LABEL_21:
      sub_2144D6848(v82, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
      sub_2144D6848(v86, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
      return;
    }

    v131 = v55;
    v136 = 0x800000021478A360;
    v64 = v146;
    if ((v63 & 1) == 0)
    {
      sub_214031C4C();
      v79 = swift_allocError();
      *v80 = 0xD000000000000042;
      v80[1] = 0x80000002147911A0;
      v81 = v136;
      v80[2] = 0xD00000000000001CLL;
      v80[3] = v81;
      v166 = v79;
      swift_willThrow();

      goto LABEL_19;
    }

    v65 = v61;
    v166 = 0;
    sub_213FDC6D0(v138, v137);
    v66 = v136;

    v67 = v147;
    v68 = v147[2];
    v69 = v147[3];

    sub_213FDC6D0(v68, v69);
    *v67 = v144;
    v67[1] = v56;
    v70 = v142;
    v67[2] = v65;
    v67[3] = v70;
    *(v67 + 32) = v143;
    v72 = v67[7];
    v71 = v67[8];
    v74 = v67[9];
    v73 = v67[10];
    LODWORD(v70) = *(v67 + 88);
    v75 = v135;
    v76 = v140;
    *&v159 = v135;
    *(&v159 + 1) = v140;
    LODWORD(v143) = v70;
    LOBYTE(v155) = v70;
    *&v163 = 0xD000000000000041;
    *(&v163 + 1) = 0x80000002147911F0;
    *&v164 = 0xD00000000000001CLL;
    *(&v164 + 1) = v66;

    v142 = v74;
    sub_213FDC9D0(v74, v73);
    v77 = v166;
    v144 = v72;
    v78 = v72(&v159, &v155, &v163);
    if (v77)
    {
      v166 = v77;

LABEL_27:

      sub_213FB2DF4(v146, &qword_27C909E38, &qword_2146F5B20);
      sub_213FB2DF4(v145, &qword_27C909E38, &qword_2146F5B20);
      v82 = v147;
      v106 = v147[9];
      v107 = v147[10];

      sub_213FDC6D0(v106, v107);
      v82[7] = v144;
      v82[8] = v71;
      v82[9] = v142;
      v82[10] = v73;
      *(v82 + 88) = v143;
      goto LABEL_20;
    }

    if ((v78 & 1) == 0)
    {
      sub_214031C4C();
      v103 = swift_allocError();
      *v104 = 0xD000000000000041;
      v104[1] = 0x80000002147911F0;
      v105 = v136;
      v104[2] = 0xD00000000000001CLL;
      v104[3] = v105;
      v166 = v103;
      swift_willThrow();

      goto LABEL_27;
    }

    v87 = v75;
    v88 = v76;
    v166 = 0;
    sub_213FDC6D0(v142, v73);
    v89 = v136;

    v90 = v147;
    v91 = v147[9];
    v92 = v147[10];

    sub_213FDC6D0(v91, v92);
    v90[7] = v144;
    v90[8] = v71;
    v90[9] = v87;
    v90[10] = v88;
    *(v90 + 88) = v143;
    v93 = v53;
    v95 = *v53;
    v94 = *(v53 + 1);
    v96 = *(v53 + 2);
    v97 = *(v53 + 3);
    v98 = v53[32];
    v99 = v134;
    *&v159 = v134;
    *(&v159 + 1) = v149;
    LODWORD(v144) = v98;
    LOBYTE(v155) = v98;
    *&v163 = 0xD000000000000043;
    *(&v163 + 1) = 0x8000000214791240;
    *&v164 = 0xD00000000000001CLL;
    *(&v164 + 1) = v89;

    sub_213FDC9D0(v96, v97);
    v100 = v166;
    v101 = v95(&v159, &v155, &v163);
    if (v100)
    {
      v102 = v95;
      v166 = v100;
    }

    else
    {
      if (v101)
      {
        sub_213FDC6D0(v96, v97);
        v108 = v136;

        v109 = *(v93 + 2);
        v110 = *(v93 + 3);

        sub_213FDC6D0(v109, v110);
        *v93 = v95;
        *(v93 + 1) = v94;
        v111 = v149;
        *(v93 + 2) = v99;
        *(v93 + 3) = v111;
        v93[32] = v144;
        v112 = v131;
        v114 = *v131;
        v113 = *(v131 + 1);
        v144 = v131[20];
        v143 = *(v131 + 4);
        v115 = v131[21];
        v116 = v131[22];
        v117 = v132;
        LODWORD(v159) = v132;
        BYTE4(v159) = v133;
        LODWORD(v149) = v116;
        LOBYTE(v155) = v116;
        *&v163 = 0xD00000000000003ELL;
        *(&v163 + 1) = 0x8000000214791290;
        *&v164 = 0xD00000000000001CLL;
        *(&v164 + 1) = v108;

        v118 = v114;
        v119 = v114(&v159, &v155, &v163);
        v120 = v146;
        if (v119)
        {

          sub_213FB2DF4(v120, &qword_27C909E38, &qword_2146F5B20);
          sub_213FB2DF4(v145, &qword_27C909E38, &qword_2146F5B20);
          v126 = v133 != 0;

          *v112 = v118;
          *(v112 + 1) = v113;
          v112[20] = v126;
          *(v112 + 4) = v117;
          v112[21] = 0;
          v112[22] = v149;
          sub_2144D66AC(v147, v148, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
          sub_2144D6848(v141, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
          return;
        }

        sub_214031C4C();
        v127 = swift_allocError();
        *v128 = 0xD00000000000003ELL;
        v128[1] = 0x8000000214791290;
        v129 = v136;
        v128[2] = 0xD00000000000001CLL;
        v128[3] = v129;
        v166 = v127;
        swift_willThrow();
        sub_213FB2DF4(v120, &qword_27C909E38, &qword_2146F5B20);
        sub_213FB2DF4(v145, &qword_27C909E38, &qword_2146F5B20);
        v130 = v143 | (v144 << 32);

        *v112 = v118;
        *(v112 + 1) = v113;
        v112[20] = BYTE4(v130);
        *(v112 + 4) = v130;
        v112[21] = v115;
        v112[22] = v149;
        goto LABEL_32;
      }

      v102 = v95;
      sub_214031C4C();
      v121 = swift_allocError();
      *v122 = 0xD000000000000043;
      v122[1] = 0x8000000214791240;
      v123 = v136;
      v122[2] = 0xD00000000000001CLL;
      v122[3] = v123;
      v166 = v121;
      swift_willThrow();
    }

    sub_213FB2DF4(v146, &qword_27C909E38, &qword_2146F5B20);
    sub_213FB2DF4(v145, &qword_27C909E38, &qword_2146F5B20);
    v124 = *(v93 + 2);
    v125 = *(v93 + 3);

    sub_213FDC6D0(v124, v125);
    *v93 = v102;
    *(v93 + 1) = v94;
    *(v93 + 2) = v96;
    *(v93 + 3) = v97;
    v93[32] = v144;
LABEL_32:
    v86 = v141;
    v82 = v147;
    goto LABEL_21;
  }
}

uint64_t sub_2144CAF50@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2146D8E18();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for SecureCloudPingResponseProtobuf(0);
  MEMORY[0x28223BE20](v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_2144D6800(&qword_27C913858, type metadata accessor for SecureCloudPingResponseProtobuf, aQ_18);
  result = sub_2146D8FD8();
  if (!v3)
  {
    v12 = *(v8 + 24);
    v13 = &v10[*(v8 + 20)];
    v14 = *v13;
    v15 = v13[1];
    v16 = *&v10[v12];
    v17 = *&v10[v12 + 8];

    sub_21420DAC8(v14, v15, v16, v17, a3);
    return sub_2144D6848(v10, type metadata accessor for SecureCloudPingResponseProtobuf);
  }

  return result;
}

uint64_t sub_2144CB11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E38, &qword_2146F5B20);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v53 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - v8;
  v10 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v11 = (a1 + v10[5]);
  v12 = v11[1];
  v54 = v9;
  if (v12 >> 60 == 15)
  {
    sub_2144D6714(v61);
  }

  else
  {
    v13 = *v11;
    sub_213FDCA18(*v11, v12);
    sub_2144CBC44(v55);
    if (v2)
    {
      return sub_213FB54FC(v13, v12);
    }

    sub_213FB54FC(v13, v12);
    memcpy(v61, v55, 0x189uLL);
  }

  v15 = (a1 + v10[8]);
  v17 = *v15;
  v16 = v15[1];
  v18 = (a1 + v10[7]);
  v19 = v18[1];
  v51 = v17;
  if (v19 >> 60 == 15)
  {
    memset(v55, 0, 73);
    v52 = v16;
  }

  else
  {
    v20 = *v18;

    sub_213FDCA18(v20, v19);
    sub_2144CBFE8(&v56);
    if (v2)
    {
      sub_213FB2DF4(v61, &qword_27C909E50, &unk_2146F5B30);

      v21 = v20;
      return sub_213FB54FC(v21, v19);
    }

    v52 = v16;
    sub_213FB54FC(v20, v19);
    v55[2] = v58;
    v55[3] = v59[0];
    *(&v55[3] + 9) = *(v59 + 9);
    v55[0] = v56;
    v55[1] = v57;
  }

  v22 = a1 + v10[6];
  v19 = *(v22 + 8);
  v23 = v54;
  if (v19 >> 60 == 15)
  {
    v50 = v2;
    v24 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
    goto LABEL_17;
  }

  v25 = *v22;
  sub_213FDCA18(*v22, *(v22 + 8));
  sub_2144CB6C4(v23);
  if (v2)
  {
    sub_213FB2DF4(v61, &qword_27C909E50, &unk_2146F5B30);
    sub_213FB2DF4(v55, &qword_27C909E68, &qword_214761070);

    v21 = v25;
    return sub_213FB54FC(v21, v19);
  }

  v50 = 0;
  sub_213FB54FC(v25, v19);
LABEL_17:
  v26 = v53;
  sub_213FB2E54(v23, v53, &qword_27C909E38, &qword_2146F5B20);
  v27 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
  sub_213FB2E54(v26, a2 + *(v27 + 28), &qword_27C909E38, &qword_2146F5B20);
  sub_2145EDEC8(&v56);
  v28 = v56;
  v29 = v57;
  v30 = v58;
  memcpy(a2, v61, 0x189uLL);
  *(a2 + 400) = v28;
  *(a2 + 416) = v29;
  *(a2 + 432) = v30;
  v47 = a2;
  v31 = v55[3];
  *(a2 + 472) = v55[2];
  *(a2 + 488) = v31;
  *(a2 + 497) = *(&v55[3] + 9);
  v32 = v55[1];
  *(a2 + 440) = v55[0];
  *(a2 + 456) = v32;
  v33 = v52;
  v60[0] = v51;
  v60[1] = v52;
  v62 = v30;
  v63 = v30;
  *&v56 = 0xD000000000000046;
  *(&v56 + 1) = 0x8000000214791150;
  *&v57 = 0xD00000000000001CLL;
  *(&v57 + 1) = 0x800000021478A360;

  v48 = v29;
  sub_213FDC9D0(v29, *(&v29 + 1));
  v34 = v50;
  v49 = *(&v28 + 1);
  v50 = v28;
  v35 = (v28)(v60, &v63, &v56);
  if (v34)
  {
  }

  else
  {
    v52 = v33;
    if (v35)
    {
      sub_213FDC6D0(v48, *(&v29 + 1));

      sub_213FB2DF4(v53, &qword_27C909E38, &qword_2146F5B20);
      sub_213FB2DF4(v54, &qword_27C909E38, &qword_2146F5B20);
      v36 = v47;
      v37 = *(v47 + 416);
      v38 = *(v47 + 424);

      result = sub_213FDC6D0(v37, v38);
      v39 = v49;
      *(v36 + 400) = v50;
      *(v36 + 408) = v39;
      v40 = v52;
      *(v36 + 416) = v51;
      *(v36 + 424) = v40;
      *(v36 + 432) = v62;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD000000000000046;
    v41[1] = 0x8000000214791150;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = 0x800000021478A360;
    swift_willThrow();
  }

  v42 = v54;
  sub_213FB2DF4(v53, &qword_27C909E38, &qword_2146F5B20);
  sub_213FB2DF4(v42, &qword_27C909E38, &qword_2146F5B20);
  v43 = v47;
  v44 = *(v47 + 416);
  v45 = *(v47 + 424);

  sub_213FDC6D0(v44, v45);
  v46 = v49;
  *(v43 + 400) = v50;
  *(v43 + 408) = v46;
  *(v43 + 416) = v48;
  *(v43 + 424) = *(&v29 + 1);
  *(v43 + 432) = v62;
  return sub_2144D6848(v43, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
}

void sub_2144CB6C4(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v55 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - v12;
  v14 = objc_allocWithZone(_BlastDoorASCodableSecureCloudShareItem);
  v15 = sub_2146D8A38();
  v16 = [v14 initWithData_];

  if (v16)
  {
    v54 = v5;
    v52 = a3;
    if ([v16 hasZoneName])
    {
      v17 = [v16 zoneName];
      v18 = v6;
      if (v17)
      {
        v19 = v17;
        v53 = sub_2146D95B8();
        v21 = v20;
      }

      else
      {
        v53 = 0;
        v21 = 0;
      }
    }

    else
    {
      v53 = 0;
      v21 = 0;
      v18 = v6;
    }

    v22 = v13;
    v23 = [v16 hasShareURL];
    v24 = v56;
    if (v23 && (v25 = [v16 shareURL]) != 0)
    {
      v51 = v3;
      v26 = v21;
      v27 = v18;
      v28 = v22;
      v29 = v25;
      v30 = sub_2146D95B8();
      v32 = v31;

      v22 = v28;
      v18 = v27;
      v21 = v26;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    sub_2144CD980(v16, v22);
    if (v24)
    {
    }

    else
    {
      v49 = v18;
      v51 = v22;
      v33 = v32;
      v34 = v55;
      sub_213FB2E54(v22, v55, &qword_27C9041D8, &qword_2146ED5C0);
      sub_213FB2E54(v34, &v8[v54[6]], &qword_27C9041D8, &qword_2146ED5C0);
      sub_2145EF54C(&v58);
      v36 = v58;
      v35 = v59;
      v37 = v60;
      v38 = v61;
      v39 = v62;
      *v8 = v53;
      *(v8 + 1) = v21;
      *(v8 + 2) = v36;
      *(v8 + 3) = v35;
      *(v8 + 4) = v37;
      *(v8 + 5) = v38;
      v8[48] = v39;
      v48 = v30;
      v57[0] = v30;
      LODWORD(v56) = v39;
      v63 = v39;
      v57[1] = v33;
      v58 = 0xD00000000000003ALL;
      v59 = 0x8000000214791480;
      v60 = 0xD00000000000001CLL;
      v61 = 0x800000021478A360;

      v53 = v37;
      v50 = v38;
      sub_213FDC9D0(v37, v38);
      if ((v36)(v57, &v63, &v58))
      {
        sub_213FDC6D0(v53, v50);

        sub_213FB2DF4(v55, &qword_27C9041D8, &qword_2146ED5C0);
        sub_213FB2DF4(v51, &qword_27C9041D8, &qword_2146ED5C0);
        v40 = *(v8 + 4);
        v41 = *(v8 + 5);

        sub_213FDC6D0(v40, v41);
        *(v8 + 2) = v36;
        *(v8 + 3) = v35;
        *(v8 + 4) = v48;
        *(v8 + 5) = v33;
        v8[48] = v56;
        v42 = v52;
        sub_2144D66AC(v8, v52, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
        (*(v49 + 56))(v42, 0, 1, v54);
      }

      else
      {
        v54 = v36;
        sub_214031C4C();
        swift_allocError();
        *v43 = 0xD00000000000003ALL;
        v43[1] = 0x8000000214791480;
        v43[2] = 0xD00000000000001CLL;
        v43[3] = 0x800000021478A360;
        swift_willThrow();

        sub_213FB2DF4(v55, &qword_27C9041D8, &qword_2146ED5C0);
        sub_213FB2DF4(v51, &qword_27C9041D8, &qword_2146ED5C0);
        v44 = *(v8 + 4);
        v45 = *(v8 + 5);

        sub_213FDC6D0(v44, v45);
        v46 = v53;
        *(v8 + 2) = v54;
        *(v8 + 3) = v35;
        v47 = v50;
        *(v8 + 4) = v46;
        *(v8 + 5) = v47;
        v8[48] = v56;
        sub_2144D6848(v8, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
      }
    }
  }

  else
  {
    (*(v6 + 56))(a3, 1, 1, v5);
  }
}

void sub_2144CBC44(void *a3@<X8>)
{
  v6 = objc_allocWithZone(_BlastDoorASCodableActivityDataPreview);
  v7 = sub_2146D8A38();
  v8 = [v6 initWithData_];

  if (!v8)
  {
    sub_2144D6714(v31);
LABEL_25:
    memcpy(a3, v31, 0x189uLL);
    return;
  }

  v9 = [v8 hasDate];
  v10 = 0;
  if (v9)
  {
    [v8 date];
    v10 = v11;
  }

  if (![v8 hasActivitySnapshot])
  {
    v14 = sub_2144D6754(v30);
LABEL_11:
    if ([v8 workoutsCount] >= 1 && (v15 = objc_msgSend(v8, sel_workouts)) != 0 && (v16 = v15, *&v31[0] = 0, sub_21404A8B8(0, &qword_27C9133E0, off_278175120), sub_2146D9908(), v16, (v18 = *&v31[0]) != 0))
    {
      MEMORY[0x28223BE20](v17);
      v28 = v3;
      v19 = sub_214538CE4(sub_2144D67C8, v27, v18);
      if (v4)
      {
LABEL_22:
        sub_213FB2DF4(v30, &qword_27C909F60, &qword_2146F5B98);

        return;
      }

      v20 = v19;
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    if ([v8 achievementsCount] >= 1 && (v21 = objc_msgSend(v8, sel_achievements)) != 0 && (v22 = v21, *&v31[0] = 0, sub_21404A8B8(0, &qword_27C9133D8, off_2781750F0), sub_2146D9908(), v22, (v24 = *&v31[0]) != 0))
    {
      MEMORY[0x28223BE20](v23);
      v28 = v3;
      v25 = sub_214538E9C(sub_2144D6790, v27, v24);
      if (v4)
      {

        goto LABEL_22;
      }

      v26 = v25;
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    memcpy(v31, v30, 0x169uLL);
    v29[0] = v9 ^ 1;
    *&v31[23] = v20;
    *(&v31[23] + 1) = v26;
    *&v31[24] = v10;
    BYTE8(v31[24]) = v9 ^ 1;
    nullsub_1();
    goto LABEL_25;
  }

  v12 = [v8 activitySnapshot];
  if (v12)
  {
    v13 = v12;
    sub_2144CC16C(v12, v31);
    if (v4)
    {

      return;
    }

    memcpy(v29, v31, sizeof(v29));
    nullsub_1();
    memcpy(v30, v29, 0x169uLL);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_2144CBFE8(_OWORD *a3@<X8>)
{
  v5 = objc_allocWithZone(_BlastDoorASCodableShareLocations);
  v6 = sub_2146D8A38();
  v7 = [v5 initWithData_];

  if (v7)
  {
    if ([v7 hasActivityShareURL] && (v8 = objc_msgSend(v7, sel_activityShareURL)) != 0)
    {
      v9 = v8;
      v10 = sub_2146D95B8();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    if ([v7 hasRelationshipShareURL] && (v13 = objc_msgSend(v7, sel_relationshipShareURL)) != 0)
    {
      v14 = v13;
      v15 = sub_2146D95B8();
      v17 = v16;

      v18 = v17;
      v19 = v15;
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }

    sub_21420FA38(v10, v12, v19, v18, v22);

    if (!v3)
    {
      v20 = v23[0];
      a3[2] = v22[2];
      a3[3] = v20;
      *(a3 + 57) = *(v23 + 9);
      v21 = v22[1];
      *a3 = v22[0];
      a3[1] = v21;
    }
  }

  else
  {
    *(a3 + 57) = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }
}

void sub_2144CC16C(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (![a1 hasSample])
  {
    v209 = 0;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
LABEL_6:
    if ([a1 hasSourceUUID] && (v7 = objc_msgSend(a1, sel_sourceUUID)) != 0)
    {
      v8 = v7;
      v90 = sub_2146D8A58();
      v10 = v9;
    }

    else
    {
      v90 = 0;
      v10 = 0xF000000000000000;
    }

    v72 = [a1 hasSnapshotIndex];
    if (v72)
    {
      v11 = [a1 snapshotIndex];
    }

    else
    {
      v11 = 0;
    }

    v211 = [a1 hasTimeZoneOffsetFromUTCForNoon];
    if (v211)
    {
      v86 = [a1 timeZoneOffsetFromUTCForNoon];
    }

    else
    {
      v86 = 0;
    }

    v12 = [a1 hasEnergyBurned];
    v13 = 0;
    v14 = 0;
    v210 = v12;
    if (v12)
    {
      [a1 energyBurned];
    }

    v85 = v14;
    v101 = [a1 hasEnergyBurnedGoal];
    if (v101)
    {
      [a1 energyBurnedGoal];
      v13 = v15;
    }

    v74 = v11;
    v16 = 0;
    v17 = 0;
    v99 = [a1 hasBriskMinutes];
    if (v99)
    {
      [a1 briskMinutes];
      v17 = v18;
    }

    v19 = [a1 hasBriskMinutesGoal];
    if (v19)
    {
      [a1 briskMinutesGoal];
      v16 = v20;
    }

    v21 = [a1 hasActiveHours];
    v22 = 0;
    v23 = 0;
    if (v21)
    {
      [a1 activeHours];
      v23 = v24;
    }

    v25 = [a1 hasActiveHoursGoal];
    if (v25)
    {
      [a1 activeHoursGoal];
      v22 = v26;
    }

    v91 = v10;
    v27 = [a1 hasWalkingAndRunningDistance];
    v28 = 0;
    v29 = 0;
    if (v27)
    {
      [a1 walkingAndRunningDistance];
      v29 = v30;
    }

    v87 = v13;
    v71 = a2;
    v31 = [a1 hasStepCount];
    if (v31)
    {
      [a1 stepCount];
      v28 = v32;
    }

    v33 = [a1 hasPushCount];
    v34 = 0;
    if (v33)
    {
      [a1 pushCount];
      v34 = v35;
    }

    v36 = [a1 hasWheelchairUse];
    v84 = v16;
    if (v36)
    {
      v83 = [a1 wheelchairUse];
    }

    else
    {
      v83 = 0;
    }

    v37 = [a1 hasMmv];
    v38 = 0;
    v39 = 0;
    if (v37)
    {
      [a1 mmv];
      v39 = v40;
    }

    v92 = v211 ^ 1;
    v93 = v210 ^ 1;
    v94 = v101 ^ 1;
    v95 = v99 ^ 1;
    v96 = v21 ^ 1;
    v97 = v25 ^ 1;
    v98 = v27 ^ 1;
    v100 = v31 ^ 1;
    v102 = v33 ^ 1;
    v211 = v36 ^ 1;
    v41 = v37 ^ 1;
    v42 = [a1 hasMmg];
    if (v42)
    {
      [a1 mmg];
      v38 = v43;
    }

    v210 = v42 ^ 1;
    v44 = [a1 hasAmm];
    if (v44)
    {
      v82 = [a1 amm];
    }

    else
    {
      v82 = 0;
    }

    sub_213FB2E54(&v205, &v103, &qword_27C90A020, &qword_2146F5BE0);
    sub_2145EF844(&v103);
    v45 = v103;
    v46 = v104;
    v47 = v105;
    sub_2145EF9AC(&v162);
    v79 = v163;
    v80 = v162;
    v76 = v164;
    v75 = v165;
    v78 = v167;
    v202 = v207;
    v203 = v208;
    LOBYTE(v204) = v209;
    v200 = v205;
    v201 = v206;
    v182 = v166;
    v181 = v92;
    v180 = v93;
    v179 = v94;
    v178 = v95;
    v177 = v19 ^ 1;
    v176 = v21 ^ 1;
    v175 = v97;
    v174 = v98;
    v173 = v31 ^ 1;
    v172 = v33 ^ 1;
    v171 = v211;
    v170 = v41;
    v169 = v210;
    v81 = v44 ^ 1;
    v168 = v44 ^ 1;
    v77 = v166;
    v198 = v166;
    v103 = v45;
    v104 = v46;
    LOBYTE(v105) = v47;

    sub_21404F7E0(v46, *(&v46 + 1));
    sub_214032118(v90, v91, 2, 0xD000000000000047, 0x80000002147914C0, 0xD00000000000001CLL, 0x800000021478A360);
    if (v2)
    {
      sub_213FB2DF4(&v205, &qword_27C90A020, &qword_2146F5BE0);
      sub_213FDC6BC(v90, v91);

      v88 = v103;
      v48 = *(&v104 + 1);
      v49 = v104;
      v50 = v105;

      sub_214032564(v46, *(&v46 + 1));
      v51 = v88;
      v52 = v41;
      v53 = v77;
      v54 = v78;
      v56 = v79;
      v55 = v80;
    }

    else
    {
      v57 = v72 ^ 1;

      v89 = v103;
      v73 = *(&v104 + 1);
      v49 = v104;
      v70 = v105;

      sub_214032564(v46, *(&v46 + 1));
      v162 = v74;
      LOBYTE(v163) = v57;
      v54 = v78;
      v182 = v78;
      *&v103 = 0xD00000000000004ALL;
      *(&v103 + 1) = 0x8000000214791510;
      *&v104 = 0xD00000000000001CLL;
      *(&v104 + 1) = 0x800000021478A360;
      v56 = v79;

      v55 = v80;
      if (v80(&v162, &v182, &v103))
      {
        sub_213FB2DF4(&v205, &qword_27C90A020, &qword_2146F5BE0);
        sub_213FDC6BC(v90, v91);

        v198 = 0;
        v58 = v203;
        *(v71 + 32) = v202;
        *(v71 + 48) = v58;
        *(v71 + 64) = v204;
        v59 = v201;
        *v71 = v200;
        *(v71 + 16) = v59;
        *(v71 + 72) = v89;
        *(v71 + 88) = v49;
        *(v71 + 96) = v73;
        *(v71 + 104) = v70;
        *(v71 + 105) = *v199;
        *(v71 + 108) = *&v199[3];
        *(v71 + 112) = v80;
        *(v71 + 120) = v79;
        *(v71 + 128) = v74;
        *(v71 + 136) = 0;
        *(v71 + 138) = v78;
        *(v71 + 139) = v196;
        *(v71 + 143) = v197;
        *(v71 + 144) = v86;
        *(v71 + 152) = v92;
        *(v71 + 153) = v195[0];
        *(v71 + 156) = *(v195 + 3);
        *(v71 + 160) = v85;
        *(v71 + 168) = v93;
        *(v71 + 172) = *(v194 + 3);
        *(v71 + 169) = v194[0];
        *(v71 + 176) = v87;
        *(v71 + 184) = v94;
        *(v71 + 188) = *(v193 + 3);
        *(v71 + 185) = v193[0];
        *(v71 + 192) = v17;
        *(v71 + 200) = v95;
        *(v71 + 204) = *(v192 + 3);
        *(v71 + 201) = v192[0];
        *(v71 + 208) = v84;
        *(v71 + 216) = v19 ^ 1;
        v60 = v191[0];
        *(v71 + 220) = *(v191 + 3);
        *(v71 + 217) = v60;
        *(v71 + 224) = v23;
        *(v71 + 232) = v96;
        v61 = v190[0];
        *(v71 + 236) = *(v190 + 3);
        *(v71 + 233) = v61;
        *(v71 + 240) = v22;
        *(v71 + 248) = v97;
        v62 = v189[0];
        *(v71 + 252) = *(v189 + 3);
        *(v71 + 249) = v62;
        *(v71 + 256) = v29;
        *(v71 + 264) = v98;
        v63 = v188[0];
        *(v71 + 268) = *(v188 + 3);
        *(v71 + 265) = v63;
        *(v71 + 272) = v28;
        *(v71 + 280) = v100;
        v64 = v187[0];
        *(v71 + 284) = *(v187 + 3);
        *(v71 + 281) = v64;
        *(v71 + 288) = v34;
        *(v71 + 296) = v102;
        v65 = v186[0];
        *(v71 + 300) = *(v186 + 3);
        *(v71 + 297) = v65;
        *(v71 + 304) = v83;
        *(v71 + 312) = v211;
        v66 = v185[0];
        *(v71 + 316) = *(v185 + 3);
        *(v71 + 313) = v66;
        *(v71 + 320) = v39;
        *(v71 + 328) = v41;
        v67 = v184[0];
        *(v71 + 332) = *(v184 + 3);
        *(v71 + 329) = v67;
        *(v71 + 336) = v38;
        *(v71 + 344) = v210;
        v68 = v183[0];
        *(v71 + 348) = *(v183 + 3);
        *(v71 + 345) = v68;
        *(v71 + 352) = v82;
        *(v71 + 360) = v81;
        return;
      }

      sub_214031C4C();
      swift_allocError();
      *v69 = 0xD00000000000004ALL;
      v69[1] = 0x8000000214791510;
      v69[2] = 0xD00000000000001CLL;
      v69[3] = 0x800000021478A360;
      swift_willThrow();

      sub_213FB2DF4(&v205, &qword_27C90A020, &qword_2146F5BE0);
      sub_213FDC6BC(v90, v91);

      v50 = v70;

      v53 = v77;
      v198 = v77;
      v52 = v41;
      v51 = v89;
      v48 = v73;
    }

    v105 = v202;
    v106 = v203;
    v107 = v204;
    v103 = v200;
    v104 = v201;
    v108 = v51;
    v109 = v49;
    v110 = v48;
    v111 = v50;
    *v112 = *v199;
    *&v112[3] = *&v199[3];
    v113 = v55;
    v114 = v56;
    v115 = v76;
    v116 = v75;
    v117 = v53;
    v118 = v54;
    v120 = v197;
    v119 = v196;
    v121 = v86;
    v122 = v92;
    *&v123[3] = *(v195 + 3);
    *v123 = v195[0];
    v124 = v85;
    v125 = v93;
    *&v126[3] = *(v194 + 3);
    *v126 = v194[0];
    v127 = v87;
    v128 = v94;
    *&v129[3] = *(v193 + 3);
    *v129 = v193[0];
    v130 = v17;
    v131 = v95;
    *&v132[3] = *(v192 + 3);
    *v132 = v192[0];
    v133 = v84;
    v134 = v19 ^ 1;
    *&v135[3] = *(v191 + 3);
    *v135 = v191[0];
    v136 = v23;
    v137 = v96;
    *&v138[3] = *(v190 + 3);
    *v138 = v190[0];
    v139 = v22;
    v140 = v97;
    *&v141[3] = *(v189 + 3);
    *v141 = v189[0];
    v142 = v29;
    v143 = v98;
    *v144 = v188[0];
    *&v144[3] = *(v188 + 3);
    v145 = v28;
    v146 = v100;
    *v147 = v187[0];
    *&v147[3] = *(v187 + 3);
    v148 = v34;
    v149 = v102;
    *v150 = v186[0];
    *&v150[3] = *(v186 + 3);
    v151 = v83;
    v152 = v211;
    *v153 = v185[0];
    *&v153[3] = *(v185 + 3);
    v154 = v39;
    v155 = v52;
    *v156 = v184[0];
    *&v156[3] = *(v184 + 3);
    v157 = v38;
    v158 = v210;
    *v159 = v183[0];
    *&v159[3] = *(v183 + 3);
    v160 = v82;
    v161 = v81;
    sub_21430B3E4(&v103);
    return;
  }

  v5 = [a1 sample];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  sub_2144CE058(v5, &v103);

  if (!v2)
  {
    v207 = v105;
    v208 = v106;
    v209 = v107;
    v205 = v103;
    v206 = v104;
    goto LABEL_6;
  }
}

void sub_2144CCE00(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 hasSample])
  {
    v5 = [a1 sample];
    if (!v5)
    {
      __break(1u);
      goto LABEL_61;
    }

    v6 = v5;
    sub_2144CE058(v5, &v79);

    if (v2)
    {
      return;
    }

    v152 = v81;
    v153 = v82;
    v154 = v83;
    v150 = v79;
    v151 = v80;
  }

  else
  {
    v154 = 0;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
  }

  v7 = [a1 hasType];
  if (v7)
  {
    v8 = [a1 type];
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  v10 = 0;
  v70 = [a1 hasDuration];
  if (v70)
  {
    [a1 duration];
    v10 = v11;
  }

  v69 = [a1 hasTotalEnergyBurnedInCanonicalUnit];
  if (v69)
  {
    [a1 totalEnergyBurnedInCanonicalUnit];
    v9 = v12;
  }

  v13 = 0;
  v14 = 0;
  v65 = [a1 hasTotalBasalEnergyBurnedInCanonicalUnit];
  if (v65)
  {
    [a1 totalBasalEnergyBurnedInCanonicalUnit];
    v14 = v15;
  }

  v62 = [a1 hasTotalDistanceInCanonicalUnit];
  if (v62)
  {
    [a1 totalDistanceInCanonicalUnit];
    v13 = v16;
  }

  v58 = [a1 hasGoalType];
  v78 = v8;
  if (v58)
  {
    v17 = [a1 goalType];
  }

  else
  {
    v17 = 0;
  }

  v18 = [a1 hasGoalInCanonicalUnit];
  v19 = 0;
  if (v18)
  {
    [a1 goalInCanonicalUnit];
    v19 = v20;
  }

  if ([a1 hasBundleID] && (v21 = objc_msgSend(a1, sel_bundleID)) != 0)
  {
    v22 = v21;
    v23 = sub_2146D95B8();
    v75 = v24;
    v76 = v23;
  }

  else
  {
    v75 = 0;
    v76 = 0;
  }

  if ([a1 hasIsWatchWorkout])
  {
    v74 = [a1 isWatchWorkout];
  }

  else
  {
    v74 = 2;
  }

  if ([a1 hasIsIndoorWorkout])
  {
    v73 = [a1 isIndoorWorkout];
  }

  else
  {
    v73 = 2;
  }

  if ([a1 hasDeviceManufacturer] && (v25 = objc_msgSend(a1, sel_deviceManufacturer)) != 0)
  {
    v26 = v25;
    v27 = sub_2146D95B8();
    v71 = v28;
    v72 = v27;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  if ([a1 hasDeviceModel] && (v29 = objc_msgSend(a1, sel_deviceModel)) != 0)
  {
    v30 = v29;
    v31 = sub_2146D95B8();
    v67 = v32;
    v68 = v31;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v33 = [a1 hasAmm];
  if (v33)
  {
    v64 = [a1 amm];
  }

  else
  {
    v64 = 0;
  }

  if ([a1 hasSeymourCatalogWorkoutIdentifier] && (v34 = objc_msgSend(a1, sel_seymourCatalogWorkoutIdentifier)) != 0)
  {
    v35 = v34;
    v36 = sub_2146D95B8();
    v60 = v37;
    v61 = v36;
  }

  else
  {
    v60 = 0;
    v61 = 0;
  }

  v54 = a2;
  v77 = v17;
  if ([a1 hasSeymourMediaType])
  {
    v38 = [a1 seymourMediaType];
    if (v38)
    {
      v39 = v38;
      sub_2146D95B8();

      v40 = sub_2146DA098();

      v41 = 4;
      if (v40 < 4)
      {
        v41 = v40;
      }

      v57 = v41;
      goto LABEL_53;
    }

LABEL_61:
    __break(1u);
    return;
  }

  v57 = 4;
LABEL_53:
  v42 = v58 ^ 1;
  v43 = v18 ^ 1;
  sub_213FB2E54(&v150, &v79, &qword_27C90A020, &qword_2146F5BE0);
  sub_2145EFD30(&v79);
  v44 = *(&v79 + 1);
  v56 = v80;
  v55 = BYTE8(v80);
  v147 = v152;
  v148 = v153;
  LOBYTE(v149) = v154;
  v145 = v150;
  v146 = v151;
  v133 = v69 ^ 1;
  v45 = BYTE10(v80);
  v59 = v65 ^ 1;
  v132 = v65 ^ 1;
  v46 = v79;
  v63 = v62 ^ 1;
  v131 = v63;
  v66 = v42;
  v130 = v42;
  v47 = v7 ^ 1;
  v48 = BYTE9(v80);
  v129 = v43;
  v128 = v33 ^ 1;
  v144 = BYTE9(v80);
  v126 = v78;
  v127 = v47;
  v134[0] = BYTE10(v80);
  *&v79 = 0xD000000000000038;
  *(&v79 + 1) = 0x8000000214791560;
  *&v80 = 0xD00000000000001CLL;
  *(&v80 + 1) = 0x800000021478A360;

  v49 = v46(&v126, v134, &v79);
  if (v2)
  {
    sub_213FB2DF4(&v150, &qword_27C90A020, &qword_2146F5BE0);
  }

  else
  {
    if (v49)
    {
      sub_213FB2DF4(&v150, &qword_27C90A020, &qword_2146F5BE0);

      v144 = 0;
      v50 = v148;
      *(v54 + 32) = v147;
      *(v54 + 48) = v50;
      v51 = v149;
      v52 = v146;
      *v54 = v145;
      *(v54 + 16) = v52;
      *(v54 + 64) = v51;
      *(v54 + 72) = v46;
      *(v54 + 80) = v44;
      *(v54 + 88) = v78;
      *(v54 + 96) = v47;
      *(v54 + 97) = 0;
      *(v54 + 98) = v45;
      *(v54 + 104) = v10;
      *(v54 + 112) = v70 ^ 1;
      *(v54 + 120) = v9;
      *(v54 + 128) = v69 ^ 1;
      *(v54 + 136) = v14;
      *(v54 + 144) = v59;
      *(v54 + 152) = v13;
      *(v54 + 160) = v63;
      *(v54 + 168) = v77;
      *(v54 + 176) = v66;
      *(v54 + 184) = v19;
      *(v54 + 192) = v43;
      *(v54 + 200) = v76;
      *(v54 + 208) = v75;
      *(v54 + 216) = v74;
      *(v54 + 217) = v73;
      *(v54 + 224) = v72;
      *(v54 + 232) = v71;
      *(v54 + 240) = v68;
      *(v54 + 248) = v67;
      *(v54 + 256) = v64;
      *(v54 + 264) = v33 ^ 1;
      *(v54 + 272) = v61;
      *(v54 + 280) = v60;
      *(v54 + 288) = v57;
      return;
    }

    sub_214031C4C();
    swift_allocError();
    *v53 = 0xD000000000000038;
    v53[1] = 0x8000000214791560;
    v53[2] = 0xD00000000000001CLL;
    v53[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(&v150, &qword_27C90A020, &qword_2146F5BE0);
  }

  v81 = v147;
  v82 = v148;
  v79 = v145;
  v80 = v146;
  v83 = v149;
  v84 = v46;
  v85 = v44;
  v86 = v56;
  v87 = v55;
  v88 = v48;
  v89 = v45;
  v91 = v143;
  v90 = v142[2];
  v92 = v10;
  v93 = v70 ^ 1;
  *&v94[3] = *(v142 + 3);
  *v94 = v142[0];
  v95 = v9;
  v96 = v69 ^ 1;
  *&v97[3] = *(v141 + 3);
  *v97 = v141[0];
  v98 = v14;
  v99 = v59;
  *&v100[3] = *(v140 + 3);
  *v100 = v140[0];
  v101 = v13;
  v102 = v63;
  *&v103[3] = *(v139 + 3);
  *v103 = v139[0];
  v104 = v77;
  v105 = v66;
  *&v106[3] = *(v138 + 3);
  *v106 = v138[0];
  v107 = v19;
  v108 = v43;
  *&v109[3] = *(v137 + 3);
  *v109 = v137[0];
  v110 = v76;
  v111 = v75;
  v112 = v74;
  v113 = v73;
  v115 = v136;
  v114 = v135[2];
  v116 = v72;
  v117 = v71;
  v118 = v68;
  v119 = v67;
  v120 = v64;
  v121 = v33 ^ 1;
  *v122 = v135[0];
  *&v122[3] = *(v135 + 3);
  v123 = v61;
  v124 = v60;
  v125 = v57;
  sub_21430B698(&v79);
}

void sub_2144CD6C0(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (![a1 hasSample])
  {
    v43 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    goto LABEL_6;
  }

  v5 = [a1 sample];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  sub_2144CE058(v5, v38);

  if (!v2)
  {
    v36 = v38[1];
    v37 = v38[0];
    v34 = v38[3];
    v35 = v38[2];
    v43 = v39;
LABEL_6:
    v7 = [a1 hasCompletedDate];
    v8 = 0;
    v9 = 0;
    if (v7)
    {
      [a1 completedDate];
      v9 = v10;
    }

    v11 = [a1 hasDoubleValue];
    if (v11)
    {
      [a1 doubleValue];
      v8 = v12;
    }

    v13 = [a1 hasIntValue];
    if (v13)
    {
      v33 = [a1 intValue];
    }

    else
    {
      v33 = 0;
    }

    v14 = [a1 hasWorkoutActivityType];
    if (v14)
    {
      v32 = [a1 workoutActivityType];
    }

    else
    {
      v32 = 0;
    }

    v15 = v7 ^ 1;
    v16 = v11 ^ 1;
    v17 = v13 ^ 1;
    v18 = v14 ^ 1;
    if ([a1 hasDefinitionIdentifier] && (v19 = objc_msgSend(a1, sel_definitionIdentifier)) != 0)
    {
      v20 = v19;
      v21 = sub_2146D95B8();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    if ([a1 hasTemplateUniqueName] && (v24 = objc_msgSend(a1, sel_templateUniqueName)) != 0)
    {
      v31 = v18;
      v25 = v23;
      v26 = v21;
      v27 = v24;
      v28 = sub_2146D95B8();
      v30 = v29;

      v21 = v26;
      v23 = v25;
      v18 = v31;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    LOBYTE(v38[0]) = v15;
    v42 = v16;
    v41 = v17;
    v40 = v18;
    *a2 = v37;
    *(a2 + 16) = v36;
    *(a2 + 32) = v35;
    *(a2 + 48) = v34;
    *(a2 + 64) = v43;
    *(a2 + 72) = v9;
    *(a2 + 80) = v15;
    *(a2 + 88) = v8;
    *(a2 + 96) = v16;
    *(a2 + 104) = v33;
    *(a2 + 112) = v17;
    *(a2 + 120) = v32;
    *(a2 + 128) = v18;
    *(a2 + 136) = v21;
    *(a2 + 144) = v23;
    *(a2 + 152) = v28;
    *(a2 + 160) = v30;
  }
}

void sub_2144CD980(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v52 - v6;
  if (![a1 hasInvitationToken] || (v8 = objc_msgSend(a1, sel_invitationToken)) == 0)
  {
    v29 = type metadata accessor for CloudKitSharingToken(0);
    (*(*(v29 - 8) + 56))(a2, 1, 1, v29);
    return;
  }

  v9 = v8;
  v10 = sub_2146D8A58();
  v12 = v11;

  v13 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_21402D9F8(v10, v12);
  v14 = sub_21404A62C();
  if (!v2)
  {
    v30 = v14;
    v54 = v12;
    sub_213FB54FC(v10, v12);
    v31 = v30;
    [v31 _enableStrictSecureDecodingMode];
    [v31 setDecodingFailurePolicy_];
    v32 = sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v34 = sub_2146D9588();
    [v31 setClass:ObjCClassFromMetadata forClassName:v34];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913160, &unk_21473D7C0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_2146EA710;
    *(v35 + 32) = v32;
    sub_2146D95B8();
    sub_2146D9D08();
    v53 = v31;

    if (v57)
    {
      if (swift_dynamicCast())
      {
        v36 = v59;
        v37 = [a1 hasShareURL];
        v38 = v54;
        if (v37)
        {
          v39 = [a1 shareURL];
          if (!v39)
          {
            __break(1u);
            return;
          }

          v40 = v39;
          sub_2146D95B8();

          sub_2146D8928();

          v41 = sub_2146D8958();
          v42 = *(v41 - 8);
          v43 = 0;
          if ((*(v42 + 48))(v7, 1, v41) != 1)
          {
            v43 = sub_2146D8898();
            (*(v42 + 8))(v7, v41);
          }

          [v36 setShareURL_];

          v38 = v54;
        }

        sub_2145A8530(v36, a2);

        sub_213FB54FC(v10, v38);
        v44 = type metadata accessor for CloudKitSharingToken(0);
        (*(*(v44 - 8) + 56))(a2, 0, 1, v44);
        return;
      }
    }

    else
    {
      sub_213FB2DF4(&v55, &qword_27C913170, &qword_2146EAB20);
    }

    v48 = v54;
    v49 = sub_2146D9F58();
    swift_allocError();
    v51 = v50;
    sub_2146D9F28();
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D84168], v49);
    swift_willThrow();

    sub_213FB54FC(v10, v48);
    return;
  }

  sub_213FB54FC(v10, v12);
  v59 = v2;
  v15 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
  sub_21404A8B8(0, &qword_27C9131B0, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    v16 = v58;
    v54 = 0x800000021478B060;
    sub_21404A6EC();
    swift_allocError();
    v18 = v17;
    v19 = v16;
    v20 = [v19 domain];
    v21 = v12;
    v22 = sub_2146D95B8();
    v24 = v23;

    v55 = 0xD000000000000014;
    v56 = 0x800000021478AAD0;
    MEMORY[0x2160545D0](v22, v24);

    v25 = v56;
    *v18 = v55;
    v18[1] = v25;
    v55 = [v19 code];
    v26 = sub_2146DA428();
    v28 = v27;

    v18[2] = v26;
    v18[3] = v28;
    v18[4] = 0xD00000000000001CLL;
    v18[5] = v54;
    swift_willThrow();
    sub_213FB54FC(v10, v21);
  }

  else
  {

    sub_21404A6EC();
    swift_allocError();
    v46 = v45;
    v47 = v2;
    sub_214689A34(v2, 0xD00000000000001CLL, 0x800000021478B060, v46);
    swift_willThrow();
    sub_213FB54FC(v10, v12);
  }
}

uint64_t sub_2144CE058@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 hasUuid] && (v3 = objc_msgSend(a1, sel_uuid)) != 0)
  {
    v4 = v3;
    v5 = sub_2146D8A58();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  v8 = [a1 hasStartDate];
  v9 = 0;
  v10 = 0;
  if (v8)
  {
    [a1 startDate];
    v10 = v11;
  }

  v35 = v8 ^ 1;
  v12 = [a1 hasEndDate];
  if (v12)
  {
    [a1 endDate];
    v9 = v13;
  }

  sub_2145EFF6C(&v23);
  v14 = v24;
  v15 = v25;
  v16 = v12 ^ 1;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;

  sub_21404F7E0(v14, v15);
  sub_214032118(v5, v7, 2, 0xD000000000000037, 0x80000002147915A0, 0xD00000000000001CLL, 0x800000021478A360);
  sub_213FDC6BC(v5, v7);

  v17 = v32;
  v18 = v33;
  v19 = v34;

  if (v22)
  {
    sub_214032564(v14, v15);
    v23 = v31;
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v27 = v10;
    v28 = v35;
    v29 = v9;
    v30 = v16;
    return sub_21430B9A0(&v23);
  }

  else
  {
    result = sub_214032564(v14, v15);
    *a2 = v31;
    *(a2 + 16) = v17;
    *(a2 + 24) = v18;
    *(a2 + 32) = v19;
    *(a2 + 40) = v10;
    *(a2 + 48) = v35;
    *(a2 + 56) = v9;
    *(a2 + 64) = v16;
  }

  return result;
}

uint64_t sub_2144CE2B4(uint64_t a1)
{
  v2 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DB8, &qword_2146F5AF0);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v33 - v6;
  v7 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x28223BE20](v7);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SecureCloudInviteRequestProtobuf(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2146D8DE8();
  v12 = &v11[v9[5]];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v11[v9[6]];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v11[v9[7]];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v11[v9[8]];
  *v15 = 0;
  v15[1] = 0;
  v16 = *(v3 + 56);
  v34 = v9[9];
  v35 = v16;
  v36 = v3 + 56;
  v37 = v2;
  v16(&v11[v34], 1, 1, v2);
  v17 = &v11[v9[10]];
  *v17 = 0;
  v17[4] = 1;
  if ((*(a1 + 8) & 1) == 0)
  {
    *v12 = *a1;
    v12[8] = 0;
  }

  v19 = *(a1 + 32);
  v18 = *(a1 + 40);
  if (v18)
  {
    if (v18 == 1)
    {
      goto LABEL_22;
    }

    *v13 = v19;
    v13[1] = v18;
  }

  v20 = *(a1 + 72);
  v21 = *(a1 + 80);
  if (v21)
  {
    if (v21 == 1)
    {
      goto LABEL_22;
    }

    *v14 = v20;
    v14[1] = v21;
  }

  v22 = *(a1 + 112);
  v23 = *(a1 + 120);
  if (v23)
  {
    if (v23 == 1)
    {
      goto LABEL_22;
    }

    *v15 = v22;
    v15[1] = v23;
  }

  v41 = v22;
  v42 = v20;
  v40 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0);
  v24 = v45;
  sub_213FB2E54(a1 + *(v40 + 32), v45, &qword_27C909DB8, &qword_2146F5AF0);
  if ((*(v43 + 48))(v24, 1, v44) == 1)
  {
    sub_213FDC9D0(v19, v18);
    sub_213FDC9D0(v42, v21);
    sub_213FDC9D0(v41, v23);
    sub_213FB2DF4(v24, &qword_27C909DB8, &qword_2146F5AF0);
  }

  else
  {
    v44 = v17;
    v25 = v24;
    v26 = v38;
    sub_2144D66AC(v25, v38, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    sub_213FDC9D0(v19, v18);
    sub_213FDC9D0(v42, v21);
    sub_213FDC9D0(v41, v23);
    v27 = v39;
    v28 = v46;
    sub_2144CF5C8(v26, v39);
    sub_2144D6848(v26, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    if (v28)
    {
      sub_2144D6848(v11, type metadata accessor for SecureCloudInviteRequestProtobuf);
      return v27;
    }

    v29 = v34;
    sub_213FB2DF4(&v11[v34], &qword_27C913940, &unk_214740F40);
    sub_2144D66AC(v27, &v11[v29], type metadata accessor for SecureCloudInviteUserInfoProtobuf);
    v35(&v11[v29], 0, 1, v37);
    v17 = v44;
  }

  v30 = a1 + *(v40 + 36);
  if ((*(v30 + 21) & 1) == 0)
  {
    v31 = *(v30 + 16) | (*(v30 + 20) << 32);
    if ((v31 & 0x100000000) == 0)
    {
      *v17 = v31;
      v17[4] = 0;
    }

    sub_2144D6800(&qword_27C9138D0, type metadata accessor for SecureCloudInviteRequestProtobuf, asc_214740C70);
    v27 = sub_2146D8FC8();
    sub_2144D6848(v11, type metadata accessor for SecureCloudInviteRequestProtobuf);
    return v27;
  }

LABEL_22:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144CE7F8(uint64_t a1)
{
  v48 = a1;
  v1 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v46 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DB8, &qword_2146F5AF0);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = v40 - v5;
  v6 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  v45 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SecureCloudInviteResponseProtobuf(0);
  MEMORY[0x28223BE20](v8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2146D8DE8();
  v11 = &v10[v8[5]];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v10[v8[6]];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v10[v8[7]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v10[v8[8]];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v10[v8[9]];
  *v15 = 0;
  *(v15 + 4) = 256;
  v16 = *(v2 + 56);
  v41 = v8[10];
  v42 = v16;
  v43 = v1;
  v17 = v1;
  v18 = v48;
  v40[1] = v2 + 56;
  v16(&v10[v41], 1, 1, v17);
  v47 = v8;
  v19 = &v10[v8[11]];
  *v19 = 0;
  v19[4] = 1;
  if ((*(v18 + 8) & 1) == 0)
  {
    *v11 = *v18;
    v11[8] = 0;
  }

  v20 = *(v18 + 32);
  v21 = *(v18 + 40);
  if (v21)
  {
    if (v21 == 1)
    {
      goto LABEL_33;
    }

    *v12 = v20;
    v12[1] = v21;
  }

  v22 = *(v18 + 72);
  v23 = *(v18 + 80);
  if (v23)
  {
    if (v23 == 1)
    {
      goto LABEL_33;
    }

    *v13 = v22;
    *(v13 + 1) = v23;
  }

  v24 = *(v18 + 112);
  v25 = *(v18 + 120);
  if (v25)
  {
    if (v25 == 1)
    {
      goto LABEL_33;
    }

    *v14 = v24;
    v14[1] = v25;
  }

  v26 = *(v18 + 129);
  if (v26 <= 2)
  {
    v27 = v51;
    if (*(v18 + 129))
    {
      if (v26 == 1)
      {
        v28 = 2;
      }

      else
      {
        v28 = 1;
      }
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_22;
  }

  v27 = v51;
  if (v26 == 3)
  {
    v28 = 3;
    goto LABEL_22;
  }

  if (v26 == 4)
  {
    v28 = 4;
LABEL_22:
    *v15 = v28;
    *(v15 + 4) = 1;
  }

  v29 = v22;
  v44 = v19;
  v51 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0);
  sub_213FB2E54(v18 + *(v51 + 9), v27, &qword_27C909DB8, &qword_2146F5AF0);
  if ((*(v49 + 48))(v27, 1, v50) == 1)
  {
    sub_213FDC9D0(v20, v21);
    sub_213FDC9D0(v29, v23);
    sub_213FDC9D0(v24, v25);
    sub_213FB2DF4(v27, &qword_27C909DB8, &qword_2146F5AF0);
  }

  else
  {
    v30 = v27;
    v31 = v20;
    v32 = v45;
    sub_2144D66AC(v30, v45, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    sub_213FDC9D0(v31, v21);
    sub_213FDC9D0(v29, v23);
    sub_213FDC9D0(v24, v25);
    v33 = v46;
    v34 = v52;
    sub_2144CF5C8(v32, v46);
    sub_2144D6848(v32, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    if (v34)
    {
      sub_2144D6848(v10, type metadata accessor for SecureCloudInviteResponseProtobuf);
      return v29;
    }

    v35 = v41;
    sub_213FB2DF4(&v10[v41], &qword_27C913940, &unk_214740F40);
    sub_2144D66AC(v33, &v10[v35], type metadata accessor for SecureCloudInviteUserInfoProtobuf);
    v42(&v10[v35], 0, 1, v43);
  }

  v36 = v18 + *(v51 + 10);
  if ((*(v36 + 21) & 1) == 0)
  {
    v37 = *(v36 + 16) | (*(v36 + 20) << 32);
    if ((v37 & 0x100000000) == 0)
    {
      v38 = v44;
      *v44 = v37;
      v38[4] = 0;
    }

    sub_2144D6800(&qword_27C9138B0, type metadata accessor for SecureCloudInviteResponseProtobuf, byte_214740B08);
    v29 = sub_2146D8FC8();
    sub_2144D6848(v10, type metadata accessor for SecureCloudInviteResponseProtobuf);
    return v29;
  }

LABEL_33:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144CEDBC(uint64_t *a1)
{
  v2 = type metadata accessor for SecureCloudWithdrawRequestProtobuf(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *a1;
  v6 = *(a1 + 8);
  v8 = a1[4];
  v7 = a1[5];
  sub_2146D8DE8();
  v9 = &v4[*(v2 + 20)];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v4[*(v2 + 24)];
  *v10 = 0;
  v10[1] = 0;
  if ((v6 & 1) == 0)
  {
    *v9 = v5;
    v9[8] = 0;
  }

  if (!v7)
  {
    goto LABEL_6;
  }

  if (v7 != 1)
  {
    *v10 = v8;
    v10[1] = v7;
LABEL_6:
    sub_2144D6800(&qword_27C913818, type metadata accessor for SecureCloudWithdrawRequestProtobuf, aI_20);

    v11 = sub_2146D8FC8();
    sub_2144D6848(v4, type metadata accessor for SecureCloudWithdrawRequestProtobuf);
    return v11;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144CEF64(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E38, &qword_2146F5B20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v7 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for SecureCloudUpgradeMessageProtobuf(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2146D8DE8();
  v12 = &v11[v9[5]];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v11[v9[6]];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v11[v9[7]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v11[v9[8]];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v11[v9[9]];
  *v16 = xmmword_2146E68C0;
  v17 = &v11[v9[10]];
  *v17 = 0;
  v45 = v17;
  *(v17 + 4) = 256;
  v18 = &v11[v9[11]];
  *v18 = 0;
  v18[4] = 1;
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  if (v20)
  {
    if (v20 == 1)
    {
      goto LABEL_25;
    }

    *v12 = v19;
    v12[1] = v20;
  }

  v52 = v2;
  if ((*(a1 + 48) & 1) == 0)
  {
    *v13 = *(a1 + 40);
    v13[8] = 0;
  }

  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  if (v22)
  {
    if (v22 == 1)
    {
      goto LABEL_25;
    }

    *v15 = v21;
    v15[1] = v22;
  }

  v48 = v21;
  v49 = v19;
  v44 = v16;
  v47 = v1;
  v23 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0);
  v24 = a1 + v23[9];
  v25 = *(v24 + 16);
  v26 = *(v24 + 24);
  if (!v26)
  {
    goto LABEL_12;
  }

  if (v26 == 1)
  {
LABEL_25:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  *v14 = v25;
  *(v14 + 1) = v26;
LABEL_12:
  v27 = a1 + v23[10];
  if (*(v27 + 21))
  {
    goto LABEL_25;
  }

  v28 = v25;
  v29 = *(v27 + 16) | (*(v27 + 20) << 32);
  if ((v29 & 0x100000000) == 0)
  {
    *v18 = v29;
    v18[4] = 0;
  }

  sub_213FB2E54(a1 + v23[8], v6, &qword_27C909E38, &qword_2146F5B20);
  if ((*(v50 + 48))(v6, 1, v51) == 1)
  {
    sub_213FDC9D0(v49, v20);
    sub_213FDC9D0(v48, v22);
    sub_213FDC9D0(v28, v26);
    sub_213FB2DF4(v6, &qword_27C909E38, &qword_2146F5B20);
    v30 = v52;
  }

  else
  {
    v31 = v6;
    v32 = v46;
    sub_2144D66AC(v31, v46, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
    sub_213FDC9D0(v49, v20);
    sub_213FDC9D0(v48, v22);
    sub_213FDC9D0(v28, v26);
    v33 = v52;
    v34 = sub_2144CFA8C(v32);
    v30 = v33;
    if (v33)
    {
      sub_2144D6848(v32, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
      return sub_2144D6848(v11, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
    }

    v36 = v34;
    v37 = v35;
    sub_2144D6848(v32, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
    v38 = v44;
    sub_213FDC6BC(*v44, *(v44 + 1));
    *v38 = v36;
    v38[1] = v37;
  }

  v39 = *(a1 + 89);
  if (v39 != 2)
  {
    v40 = v45;
    *v45 = v39 & 1;
    *(v40 + 4) = 1;
  }

  sub_2144D6800(&qword_27C913838, type metadata accessor for SecureCloudUpgradeMessageProtobuf, byte_2147405B8);
  v41 = sub_2146D8FC8();
  if (v30)
  {
    return sub_2144D6848(v11, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
  }

  v43 = v41;
  sub_2144D6848(v11, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
  return v43;
}

uint64_t sub_2144CF41C(void *a1)
{
  v2 = type metadata accessor for SecureCloudPingResponseProtobuf(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[7];
  v7 = a1[8];
  sub_2146D8DE8();
  v9 = &v4[*(v2 + 20)];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v4[*(v2 + 24)];
  *v10 = 0;
  v10[1] = 0;
  if (v5)
  {
    if (v5 == 1)
    {
      goto LABEL_8;
    }

    *v9 = v6;
    v9[1] = v5;
  }

  if (!v7)
  {
LABEL_7:
    sub_213FDC9D0(v6, v5);
    sub_213FDC9D0(v8, v7);
    sub_2144D6800(&qword_27C913858, type metadata accessor for SecureCloudPingResponseProtobuf, aQ_18);
    v11 = sub_2146D8FC8();
    sub_2144D6848(v4, type metadata accessor for SecureCloudPingResponseProtobuf);
    return v11;
  }

  if (v7 != 1)
  {
    *v10 = v8;
    v10[1] = v7;
    goto LABEL_7;
  }

LABEL_8:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144CF5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E38, &qword_2146F5B20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v8 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
  v49 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v42 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2146D8DE8();
  v10 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v11 = a2 + v10[5];
  *v11 = xmmword_2146E68C0;
  v40 = (a2 + v10[6]);
  *v40 = xmmword_2146E68C0;
  v41 = (a2 + v10[7]);
  *v41 = xmmword_2146E68C0;
  v12 = (a2 + v10[8]);
  *v12 = 0;
  v12[1] = 0;
  memcpy(v47, a1, 0x189uLL);
  memcpy(v48, a1, 0x189uLL);
  v13 = sub_2144D65A8(v48);
  v43 = v8;
  if (v13 != 1)
  {
    v39 = v7;
    memcpy(v45, v48, 0x189uLL);
    memcpy(v46, v47, 0x189uLL);
    sub_2144D68A8(v46, v44);
    v14 = sub_2144CFE70(v45);
    if (v2)
    {
      sub_2144D6848(a2, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
      return sub_213FB2DF4(v47, &qword_27C909E50, &unk_2146F5B30);
    }

    v17 = v14;
    v18 = v15;
    sub_213FB2DF4(v47, &qword_27C909E50, &unk_2146F5B30);
    sub_213FDC6BC(*v11, *(v11 + 8));
    *v11 = v17;
    *(v11 + 8) = v18;
    v7 = v39;
    v8 = v43;
  }

  v19 = *(a1 + 416);
  v20 = *(a1 + 424);
  if (v20)
  {
    if (v20 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    *v12 = v19;
    v12[1] = v20;
  }

  v21 = *(a1 + 456);
  v46[0] = *(a1 + 440);
  v46[1] = v21;
  v22 = *(a1 + 488);
  v46[2] = *(a1 + 472);
  v46[3] = v22;
  *(&v46[3] + 9) = *(a1 + 497);
  if (*&v46[0])
  {
    v23 = v7;
    v45[0] = *v46;
    v24 = *(a1 + 448);
    *&v45[3] = *(a1 + 464);
    v25 = *(a1 + 496);
    *&v45[5] = *(a1 + 480);
    *&v45[7] = v25;
    LOBYTE(v45[9]) = *(a1 + 512);
    *&v45[1] = v24;
    sub_213FDC9D0(v19, v20);
    sub_213FB2E54(v46, v44, &qword_27C909E68, &qword_214761070);
    v26 = sub_2144D0258(v45);
    if (v2)
    {
      sub_2144D6848(a2, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
      return sub_213FB2DF4(v46, &qword_27C909E68, &qword_214761070);
    }

    v28 = v26;
    v29 = v27;
    sub_213FB2DF4(v46, &qword_27C909E68, &qword_214761070);
    v30 = v41;
    sub_213FDC6BC(*v41, v41[1]);
    *v30 = v28;
    v30[1] = v29;
    v7 = v23;
    v8 = v43;
  }

  else
  {
  }

  v31 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
  sub_213FB2E54(a1 + *(v31 + 28), v7, &qword_27C909E38, &qword_2146F5B20);
  if ((*(v49 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &qword_27C909E38, &qword_2146F5B20);
  }

  v32 = v42;
  sub_2144D66AC(v7, v42, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
  v33 = sub_2144CFA8C(v32);
  if (v2)
  {
    sub_2144D6848(v32, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
    return sub_2144D6848(a2, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  }

  else
  {
    v35 = v33;
    v36 = v34;
    sub_2144D6848(v32, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
    v37 = v40;
    result = sub_213FDC6BC(*v40, v40[1]);
    *v37 = v35;
    v37[1] = v36;
  }

  return result;
}

uint64_t sub_2144CFA8C(void *a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for CloudKitSharingToken(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(_BlastDoorASCodableSecureCloudShareItem) init];
  if (!v12)
  {
    v1 = 0x800000021478B060;
    sub_21404A6EC();
    swift_allocError();
    *v19 = 0xD000000000000036;
    v19[1] = 0x800000021478B020;
    v19[2] = 0x5064696C61766E69;
    v19[3] = 0xEF6675626F746F72;
    v19[4] = 0xD00000000000001CLL;
    v19[5] = 0x800000021478B060;
    swift_willThrow();
    return v1;
  }

  v13 = v12;
  if (a1[1])
  {
    v14 = sub_2146D9588();
    [v13 setZoneName_];
  }

  v15 = a1[5];
  if (v15)
  {
    v30 = v1;
    v31 = v11;
    if (v15 == 1)
    {
      goto LABEL_17;
    }

    v16 = a1[4];

    v17 = sub_2146D9588();
    sub_213FDC6D0(v16, v15);
    [v13 setShareURL_];

    v3 = v2;
    v11 = v31;
    v1 = v30;
  }

  v18 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
  sub_213FB2E54(a1 + *(v18 + 24), v7, &qword_27C9041D8, &qword_2146ED5C0);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_2144D66AC(v7, v11, type metadata accessor for CloudKitSharingToken);
    v20 = sub_2144D0454(v11);
    if (!v3)
    {
      v22 = v11;
      v23 = v20;
      v24 = v21;
      v25 = sub_2146D8A38();
      sub_213FB54FC(v23, v24);
      [v13 setInvitationToken_];

      sub_2144D6848(v22, type metadata accessor for CloudKitSharingToken);
      goto LABEL_13;
    }

    sub_2144D6848(v11, type metadata accessor for CloudKitSharingToken);

    return v1;
  }

  sub_213FB2DF4(v7, &qword_27C9041D8, &qword_2146ED5C0);
LABEL_13:
  v26 = [v13 data];
  if (v26)
  {
    v27 = v26;
    v1 = sub_2146D8A58();

    return v1;
  }

  __break(1u);
LABEL_17:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

id sub_2144CFE70(double *__src)
{
  memcpy(v30, __src, 0x169uLL);
  v5 = *(__src + 46);
  v4 = *(__src + 47);
  v6 = __src[48];
  v7 = *(__src + 392);
  v8 = [objc_allocWithZone(_BlastDoorASCodableActivityDataPreview) init];
  if (!v8)
  {
    v1 = 0x800000021478B020;
    sub_21404A6EC();
    swift_allocError();
    *v12 = 0xD000000000000036;
    v12[1] = 0x800000021478B020;
    v12[2] = 0x5064696C61766E69;
    v12[3] = 0xEF6675626F746F72;
    v12[4] = 0xD00000000000001CLL;
    v12[5] = 0x800000021478B060;
    swift_willThrow();
    return v1;
  }

  v9 = v8;
  memcpy(v29, __src, 0x169uLL);
  v10 = sub_2144D6590(v29);
  if (v10 != 1)
  {
    memcpy(v27, v29, 0x169uLL);
    memcpy(v28, v30, 0x169uLL);
    sub_21430B564(v28, &v26);
    v11 = sub_2144D0680(v27);
    if (v2)
    {

      sub_213FB2DF4(v30, &qword_27C909F60, &qword_2146F5B98);
      return v1;
    }

    v13 = v11;
    [v9 setActivitySnapshot_];

    v10 = sub_213FB2DF4(v30, &qword_27C909F60, &qword_2146F5B98);
  }

  if (*(v5 + 16))
  {
    MEMORY[0x28223BE20](v10);
    v25 = v1;
    v14 = sub_2145389C0(sub_2144D6904, v24, v5);
    if (v2)
    {
LABEL_12:

      return v1;
    }

    sub_214429790(v14);

    v15 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v16 = sub_2146D98E8();

    v17 = [v15 initWithArray_];

    [v9 setWorkouts_];
  }

  if (*(v4 + 16))
  {
    MEMORY[0x28223BE20](v10);
    v25 = v1;
    v18 = sub_214538B10(sub_2144D6978, v24, v4);
    if (v2)
    {
      goto LABEL_12;
    }

    sub_2144297A4(v18);

    v20 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v21 = sub_2146D98E8();

    v22 = [v20 initWithArray_];

    [v9 setAchievements_];
  }

  if ((v7 & 1) == 0)
  {
    [v9 setDate_];
  }

  result = [v9 data];
  if (result)
  {
    v23 = result;
    v1 = sub_2146D8A58();

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2144D0258(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[7];
  v4 = a1[8];
  v5 = [objc_allocWithZone(_BlastDoorASCodableShareLocations) init];
  if (!v5)
  {
    sub_21404A6EC();
    swift_allocError();
    *v13 = 0xD000000000000036;
    v13[1] = 0x800000021478B020;
    v13[2] = 0x5064696C61766E69;
    v13[3] = 0xEF6675626F746F72;
    v13[4] = 0xD00000000000001CLL;
    v13[5] = 0x800000021478B060;
    return swift_willThrow();
  }

  v6 = v5;
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_12;
    }

    v7 = sub_2146D9588();
    sub_213FDC6D0(v1, v2);
    [v6 setActivityShareURL_];
  }

  if (!v4)
  {
LABEL_8:
    v9 = [v6 data];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2146D8A58();

      return v11;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v4 != 1)
  {

    v8 = sub_2146D9588();
    sub_213FDC6D0(v3, v4);
    [v6 setRelationshipShareURL_];

    goto LABEL_8;
  }

LABEL_12:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144D0454(uint64_t a1)
{
  v2 = sub_2145A8204();
  if (v1)
  {
    v3 = sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v4 = qword_280B35410;
    if (os_log_type_enabled(qword_280B35410, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = v1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_213FAF000, v4, v3, "Error when attempting to recompose CloudSharingMetadata token: %@", v5, 0xCu);
      sub_213FB2DF4(v6, &qword_27C9041E0, &qword_214736EF0);
      MEMORY[0x216056AC0](v6, -1, -1);
      MEMORY[0x216056AC0](v5, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    v10 = v2;
    [v10 setShareURL_];
    v11 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    v12 = sub_2146D9588();
    sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
    [v11 setClassName:v12 forClass:swift_getObjCClassFromMetadata()];

    [v11 encodeObject:v10 forKey:*MEMORY[0x277CCA308]];
    v13 = [v11 encodedData];
    v14 = sub_2146D8A58();

    return v14;
  }
}

id sub_2144D0680(uint64_t a1)
{
  v3 = *(a1 + 48);
  v52[2] = *(a1 + 32);
  v52[3] = v3;
  v53 = *(a1 + 64);
  v4 = *(a1 + 16);
  v52[0] = *a1;
  v52[1] = v4;
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  v7 = *(a1 + 136);
  v8 = *(a1 + 137);
  v27 = *(a1 + 128);
  v28 = *(a1 + 144);
  v9 = *(a1 + 152);
  v10 = *(a1 + 160);
  v11 = *(a1 + 176);
  v34 = *(a1 + 168);
  v35 = *(a1 + 184);
  v12 = *(a1 + 192);
  v13 = *(a1 + 208);
  v36 = *(a1 + 200);
  v37 = *(a1 + 216);
  v14 = *(a1 + 224);
  v15 = *(a1 + 240);
  v38 = *(a1 + 232);
  v39 = *(a1 + 248);
  v16 = *(a1 + 256);
  v17 = *(a1 + 272);
  v40 = *(a1 + 264);
  v41 = *(a1 + 280);
  v29 = *(a1 + 288);
  v30 = *(a1 + 304);
  v42 = *(a1 + 296);
  v43 = *(a1 + 312);
  v44 = *(a1 + 328);
  v31 = *(a1 + 320);
  v32 = *(a1 + 336);
  v54 = *(a1 + 344);
  v33 = *(a1 + 352);
  v55 = *(a1 + 360);
  v18 = [objc_allocWithZone(_BlastDoorASCodableActivitySnapshot) init];
  if (!v18)
  {
    sub_21404A6EC();
    swift_allocError();
    *v23 = 0xD000000000000036;
    v23[1] = 0x800000021478B020;
    v23[2] = 0x5064696C61766E69;
    v23[3] = 0xEF6675626F746F72;
    v23[4] = 0xD00000000000001CLL;
    v23[5] = 0x800000021478B060;
    swift_willThrow();
    return v18;
  }

  if (*&v52[0])
  {
    v46 = *&v52[0];
    v19 = *(a1 + 24);
    v47 = *(a1 + 8);
    v48 = v19;
    v49[0] = *(a1 + 40);
    *(v49 + 9) = *(a1 + 49);
    v20 = *(a1 + 16);
    v21 = *(a1 + 48);
    v50[2] = *(a1 + 32);
    v50[3] = v21;
    v51 = *(a1 + 64);
    v50[0] = *a1;
    v50[1] = v20;
    sub_21430BA48(v50, v45);
    v22 = sub_2144D13E4(&v46);
    if (v1)
    {

      sub_213FB2DF4(v52, &qword_27C90A020, &qword_2146F5BE0);
      return v18;
    }

    v24 = v22;
    [v18 setSample_];

    sub_213FB2DF4(v52, &qword_27C90A020, &qword_2146F5BE0);
  }

  if (v6 >> 60 != 11)
  {
    if (v6 >> 60 != 15)
    {
      sub_213FDCA18(v5, v6);
      v25 = sub_2146D8A38();
      [v18 setSourceUUID_];

      sub_214032564(v5, v6);
    }

    if ((v8 & 1) == 0)
    {
      if (v7)
      {
        if (v9)
        {
          goto LABEL_13;
        }
      }

      else
      {
        [v18 setSnapshotIndex_];
        if (v9)
        {
LABEL_13:
          if (v34)
          {
            goto LABEL_14;
          }

          goto LABEL_30;
        }
      }

      [v18 setTimeZoneOffsetFromUTCForNoon_];
      if (v34)
      {
LABEL_14:
        if (v35)
        {
          goto LABEL_15;
        }

        goto LABEL_31;
      }

LABEL_30:
      [v18 setEnergyBurned_];
      if (v35)
      {
LABEL_15:
        if (v36)
        {
          goto LABEL_16;
        }

        goto LABEL_32;
      }

LABEL_31:
      [v18 setEnergyBurnedGoal_];
      if (v36)
      {
LABEL_16:
        if (v37)
        {
          goto LABEL_17;
        }

        goto LABEL_33;
      }

LABEL_32:
      [v18 setBriskMinutes_];
      if (v37)
      {
LABEL_17:
        if (v38)
        {
          goto LABEL_18;
        }

        goto LABEL_34;
      }

LABEL_33:
      [v18 setBriskMinutesGoal_];
      if (v38)
      {
LABEL_18:
        if (v39)
        {
          goto LABEL_19;
        }

        goto LABEL_35;
      }

LABEL_34:
      [v18 setActiveHours_];
      if (v39)
      {
LABEL_19:
        if (v40)
        {
          goto LABEL_20;
        }

        goto LABEL_36;
      }

LABEL_35:
      [v18 setActiveHoursGoal_];
      if (v40)
      {
LABEL_20:
        if (v41)
        {
          goto LABEL_21;
        }

        goto LABEL_37;
      }

LABEL_36:
      [v18 setWalkingAndRunningDistance_];
      if (v41)
      {
LABEL_21:
        if (v42)
        {
          goto LABEL_22;
        }

        goto LABEL_38;
      }

LABEL_37:
      [v18 setStepCount_];
      if (v42)
      {
LABEL_22:
        if (v43)
        {
          goto LABEL_23;
        }

        goto LABEL_39;
      }

LABEL_38:
      [v18 setPushCount_];
      if (v43)
      {
LABEL_23:
        if (v44)
        {
          goto LABEL_24;
        }

        goto LABEL_40;
      }

LABEL_39:
      [v18 setWheelchairUse_];
      if (v44)
      {
LABEL_24:
        if (v54)
        {
          goto LABEL_25;
        }

        goto LABEL_41;
      }

LABEL_40:
      [v18 setMmv_];
      if (v54)
      {
LABEL_25:
        if (v55)
        {
          return v18;
        }

LABEL_26:
        [v18 setAmm_];
        return v18;
      }

LABEL_41:
      [v18 setMmg_];
      if (v55)
      {
        return v18;
      }

      goto LABEL_26;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

id sub_2144D0BBC(uint64_t a1)
{
  v3 = *(a1 + 48);
  v49[2] = *(a1 + 32);
  v49[3] = v3;
  v50 = *(a1 + 64);
  v4 = *(a1 + 16);
  v49[0] = *a1;
  v49[1] = v4;
  v5 = *(a1 + 96);
  v6 = *(a1 + 97);
  v7 = *(a1 + 104);
  v8 = *(a1 + 120);
  v31 = *(a1 + 112);
  v32 = *(a1 + 128);
  v9 = *(a1 + 136);
  v10 = *(a1 + 152);
  v33 = *(a1 + 144);
  v34 = *(a1 + 160);
  v28 = *(a1 + 88);
  v29 = *(a1 + 168);
  v11 = *(a1 + 184);
  v35 = *(a1 + 176);
  v36 = *(a1 + 192);
  v12 = *(a1 + 208);
  v13 = *(a1 + 216);
  v38 = *(a1 + 217);
  v37 = *(a1 + 232);
  v39 = *(a1 + 248);
  v30 = *(a1 + 256);
  v14 = *(a1 + 280);
  v40 = *(a1 + 264);
  v41 = *(a1 + 288);
  v15 = [objc_allocWithZone(_BlastDoorASCodableWorkout) init];
  if (!v15)
  {
    sub_21404A6EC();
    swift_allocError();
    *v20 = 0xD000000000000036;
    v20[1] = 0x800000021478B020;
    v20[2] = 0x5064696C61766E69;
    v20[3] = 0xEF6675626F746F72;
    v20[4] = 0xD00000000000001CLL;
    v20[5] = 0x800000021478B060;
    swift_willThrow();
    return v15;
  }

  if (*&v49[0])
  {
    v43 = *&v49[0];
    v16 = *(a1 + 24);
    v44 = *(a1 + 8);
    v45 = v16;
    v46[0] = *(a1 + 40);
    *(v46 + 9) = *(a1 + 49);
    v17 = *(a1 + 16);
    v18 = *(a1 + 48);
    v47[2] = *(a1 + 32);
    v47[3] = v18;
    v48 = *(a1 + 64);
    v47[0] = *a1;
    v47[1] = v17;
    sub_21430BA48(v47, v42);
    v19 = sub_2144D13E4(&v43);
    if (v1)
    {

      sub_213FB2DF4(v49, &qword_27C90A020, &qword_2146F5BE0);
      return v15;
    }

    v25 = v19;
    [v15 setSample_];

    sub_213FB2DF4(v49, &qword_27C90A020, &qword_2146F5BE0);
    if (v6)
    {
      goto LABEL_40;
    }
  }

  else if (v6)
  {
LABEL_40:
    sub_2146DA018();
    __break(1u);
LABEL_41:
    v26 = sub_2146D9588();

    [v15 setSeymourMediaType_];

    return v15;
  }

  if ((v5 & 1) == 0)
  {
    [v15 setType_];
  }

  if ((v31 & 1) == 0)
  {
    [v15 setDuration_];
  }

  if ((v32 & 1) == 0)
  {
    [v15 setTotalEnergyBurnedInCanonicalUnit_];
  }

  if ((v33 & 1) == 0)
  {
    [v15 setTotalBasalEnergyBurnedInCanonicalUnit_];
  }

  if ((v34 & 1) == 0)
  {
    [v15 setTotalDistanceInCanonicalUnit_];
  }

  if (v35)
  {
    if (v36)
    {
      goto LABEL_19;
    }
  }

  else
  {
    [v15 setGoalType_];
    if (v36)
    {
LABEL_19:
      if (!v12)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  [v15 setGoalInCanonicalUnit_];
  if (v12)
  {
LABEL_20:
    v21 = sub_2146D9588();
    [v15 setBundleID_];
  }

LABEL_21:
  if (v13 == 2)
  {
    if (v38 == 2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    [v15 setIsWatchWorkout_];
    if (v38 == 2)
    {
LABEL_23:
      if (!v37)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  [v15 setIsIndoorWorkout_];
  if (v37)
  {
LABEL_24:
    v22 = sub_2146D9588();
    [v15 setDeviceManufacturer_];
  }

LABEL_25:
  if (v39)
  {
    v23 = sub_2146D9588();
    [v15 setDeviceModel_];
  }

  if ((v40 & 1) == 0)
  {
    [v15 setAmm_];
  }

  if (v14)
  {
    v24 = sub_2146D9588();
    [v15 setSeymourCatalogWorkoutIdentifier_];
  }

  if (v41 < 4)
  {
    goto LABEL_41;
  }

  return v15;
}

id sub_2144D1114(uint64_t a1)
{
  v3 = *(a1 + 48);
  v31[2] = *(a1 + 32);
  v31[3] = v3;
  v32 = *(a1 + 64);
  v4 = *(a1 + 16);
  v31[0] = *a1;
  v31[1] = v4;
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  v9 = *(a1 + 112);
  v22 = *(a1 + 104);
  v23 = *(a1 + 120);
  v10 = *(a1 + 128);
  v11 = *(a1 + 144);
  v33 = *(a1 + 160);
  v12 = [objc_allocWithZone(_BlastDoorASCodableAchievement) init];
  if (!v12)
  {
    sub_21404A6EC();
    swift_allocError();
    *v17 = 0xD000000000000036;
    v17[1] = 0x800000021478B020;
    v17[2] = 0x5064696C61766E69;
    v17[3] = 0xEF6675626F746F72;
    v17[4] = 0xD00000000000001CLL;
    v17[5] = 0x800000021478B060;
    swift_willThrow();
    return v12;
  }

  if (*&v31[0])
  {
    v25 = *&v31[0];
    v13 = *(a1 + 24);
    v26 = *(a1 + 8);
    v27 = v13;
    v28[0] = *(a1 + 40);
    *(v28 + 9) = *(a1 + 49);
    v14 = *(a1 + 16);
    v15 = *(a1 + 48);
    v29[2] = *(a1 + 32);
    v29[3] = v15;
    v30 = *(a1 + 64);
    v29[0] = *a1;
    v29[1] = v14;
    sub_21430BA48(v29, v24);
    v16 = sub_2144D13E4(&v25);
    if (v1)
    {

      sub_213FB2DF4(v31, &qword_27C90A020, &qword_2146F5BE0);
      return v12;
    }

    v18 = v16;
    [v12 setSample_];

    sub_213FB2DF4(v31, &qword_27C90A020, &qword_2146F5BE0);
  }

  if (v6)
  {
    if (v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [v12 setCompletedDate_];
    if (v8)
    {
LABEL_9:
      if (v9)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  [v12 setDoubleValue_];
  if (v9)
  {
LABEL_10:
    if (v10)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v12 setIntValue_];
  if (v10)
  {
LABEL_11:
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_19:
  [v12 setWorkoutActivityType_];
  if (v11)
  {
LABEL_12:
    v19 = sub_2146D9588();
    [v12 setDefinitionIdentifier_];
  }

LABEL_13:
  if (v33)
  {
    v20 = sub_2146D9588();
    [v12 setTemplateUniqueName_];
  }

  return v12;
}

id sub_2144D13E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = [objc_allocWithZone(_BlastDoorASCodableSample) init];
  if (!v7)
  {
    sub_21404A6EC();
    swift_allocError();
    *v8 = 0xD000000000000036;
    v8[1] = 0x800000021478B020;
    v8[2] = 0x5064696C61766E69;
    v8[3] = 0xEF6675626F746F72;
    v8[4] = 0xD00000000000001CLL;
    v8[5] = 0x800000021478B060;
    swift_willThrow();
    return v7;
  }

  if (v2 >> 60 != 11)
  {
    if (v2 >> 60 == 15)
    {
      if (v4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_213FDCA18(v1, v2);
      v9 = sub_2146D8A38();
      [v7 setUuid_];

      sub_214032564(v1, v2);
      if (v4)
      {
LABEL_5:
        if (v6)
        {
          return v7;
        }

        goto LABEL_10;
      }
    }

    [v7 setStartDate_];
    if ((v6 & 1) == 0)
    {
LABEL_10:
      [v7 setEndDate_];
    }

    return v7;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144D163C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 >> 60 == 11 || (v3 = *(a2 + 24), v3 >> 60 == 11))
  {
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a2 + 16);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v13 = *(a2 + 64);
  if (v2 >> 60 != 15)
  {
    if (v3 >> 60 != 15)
    {
      sub_21404F7E0(*(a1 + 16), v2);
      sub_21404F7E0(v9, v3);
      sub_21404F7E0(v4, v2);
      sub_21404F7E0(v9, v3);
      v15 = sub_214466780(v4, v2, v9, v3);
      sub_213FDC6BC(v9, v3);
      sub_214032564(v9, v3);
      sub_214032564(v4, v2);
      sub_213FDC6BC(v4, v2);
      if (v15)
      {
        goto LABEL_10;
      }

      return 0;
    }

LABEL_7:
    sub_21404F7E0(*(a1 + 16), v2);
    sub_21404F7E0(v9, v3);
    sub_213FDC6BC(v4, v2);
    sub_213FDC6BC(v9, v3);
    return 0;
  }

  if (v3 >> 60 != 15)
  {
    goto LABEL_7;
  }

  sub_21404F7E0(*(a1 + 16), v2);
  sub_21404F7E0(v9, v3);
  sub_213FDC6BC(v4, v2);
LABEL_10:
  if (v6)
  {
    if (v8 & 1 | ((v11 & 1) == 0))
    {
      return v11 & v13;
    }
  }

  else
  {
    if (v5 == v10)
    {
      v16 = v11;
    }

    else
    {
      v16 = 1;
    }

    if ((v16 | v8))
    {
      return (v16 ^ 1) & v13;
    }
  }

  return (v7 == v12) & ~v13;
}

uint64_t sub_2144D1844(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v143[2] = *(a1 + 32);
  v143[3] = v4;
  v144 = *(a1 + 64);
  v5 = *(a1 + 16);
  v143[0] = *a1;
  v143[1] = v5;
  v7 = *(a1 + 88);
  v6 = *(a1 + 96);
  v121 = *(a1 + 128);
  v127 = *(a1 + 136);
  v126 = *(a1 + 137);
  v118 = *(a1 + 144);
  v123 = *(a1 + 152);
  v8 = *(a1 + 160);
  v119 = *(a1 + 168);
  v9 = *(a1 + 176);
  v115 = *(a1 + 184);
  v10 = *(a1 + 192);
  v11 = *(a1 + 200);
  v12 = *(a1 + 208);
  v13 = *(a1 + 216);
  v14 = *(a1 + 224);
  v15 = *(a1 + 232);
  v16 = *(a1 + 240);
  v17 = *(a1 + 248);
  v18 = *(a1 + 256);
  v19 = *(a1 + 264);
  v20 = *(a1 + 272);
  v21 = *(a1 + 280);
  v22 = *(a1 + 288);
  v23 = *(a1 + 296);
  v24 = *(a1 + 304);
  v25 = *(a1 + 312);
  v26 = *(a1 + 320);
  v27 = *(a1 + 328);
  v28 = *(a1 + 336);
  v29 = *(a1 + 344);
  v30 = *(a1 + 352);
  v31 = *(a1 + 360);
  v32 = *(a2 + 16);
  v145[0] = *a2;
  v145[1] = v32;
  v33 = *(a2 + 48);
  v145[2] = *(a2 + 32);
  v145[3] = v33;
  v146 = *(a2 + 64);
  v35 = *(a2 + 88);
  v34 = *(a2 + 96);
  v120 = *(a2 + 128);
  v125 = *(a2 + 136);
  v124 = *(a2 + 137);
  v36 = *(a2 + 160);
  v37 = *(a2 + 176);
  v38 = *(a2 + 192);
  v39 = *(a2 + 208);
  v40 = *(a2 + 224);
  v41 = *(a2 + 240);
  v42 = *(a2 + 256);
  v43 = *(a2 + 272);
  v44 = *(a2 + 288);
  v45 = *(a2 + 320);
  v46 = *(a2 + 336);
  v116 = *(a2 + 144);
  v122 = *(a2 + 152);
  v117 = *(a2 + 168);
  v114 = *(a2 + 184);
  v113 = *(a2 + 200);
  v112 = *(a2 + 216);
  v111 = *(a2 + 232);
  v110 = *(a2 + 248);
  v109 = *(a2 + 264);
  v108 = *(a2 + 280);
  v107 = *(a2 + 296);
  v47 = *(a2 + 312);
  v48 = *(a2 + 328);
  v49 = *(a2 + 344);
  v50 = *(a2 + 352);
  v51 = *(a2 + 360);
  v52 = *&v143[0];
  v53 = *&v145[0];
  if (!*&v143[0])
  {
    if (!*&v145[0])
    {
      v94 = *(a2 + 224);
      v95 = *(a2 + 240);
      v96 = v8;
      v97 = *(a2 + 256);
      v98 = v9;
      v99 = *(a2 + 272);
      v106 = *(a2 + 304);
      v100 = v11;
      v86 = v27;
      v87 = *(a2 + 312);
      v101 = v10;
      v88 = *(a2 + 288);
      v89 = v22;
      v102 = v13;
      v83 = *(a2 + 344);
      v84 = *(a2 + 328);
      v103 = v12;
      v104 = v15;
      v105 = v17;
      v79 = *(a2 + 320);
      v80 = v26;
      v74 = *(a2 + 352);
      v78 = *(a2 + 360);
      v91 = v19;
      v92 = v21;
      v75 = *(a2 + 336);
      v76 = v28;
      v93 = v23;
      v90 = v25;
      v85 = v24;
      v81 = v29;
      v82 = v31;
      v77 = v30;
      *v138 = 0;
      *&v138[8] = *(a1 + 8);
      *&v138[24] = *(a1 + 24);
      *&v138[40] = *(a1 + 40);
      *&v138[49] = *(a1 + 49);
      sub_213FB2E54(v143, &v133, &qword_27C90A020, &qword_2146F5BE0);
      sub_213FB2E54(v145, &v133, &qword_27C90A020, &qword_2146F5BE0);
      sub_213FB2DF4(v138, &qword_27C90A020, &qword_2146F5BE0);
      goto LABEL_10;
    }

    sub_213FB2E54(v143, v138, &qword_27C90A020, &qword_2146F5BE0);
    sub_213FB2E54(v145, v138, &qword_27C90A020, &qword_2146F5BE0);
LABEL_8:
    *&v138[8] = *(a1 + 8);
    *&v138[24] = *(a1 + 24);
    *&v138[40] = *(a1 + 40);
    *&v138[49] = *(a1 + 49);
    *v138 = v52;
    v139 = v53;
    v55 = *(a2 + 24);
    v140 = *(a2 + 8);
    v141 = v55;
    v142[0] = *(a2 + 40);
    *(v142 + 9) = *(a2 + 49);
    sub_213FB2DF4(v138, &qword_27C914910, &unk_214755D50);
    return 0;
  }

  v106 = *(a2 + 304);
  *v138 = *&v143[0];
  *&v138[24] = *(a1 + 24);
  *&v138[8] = *(a1 + 8);
  *&v138[40] = *(a1 + 40);
  *&v138[49] = *(a1 + 49);
  v135 = *&v138[32];
  v136 = *&v138[48];
  v137 = v138[64];
  v133 = *v138;
  v134 = *&v138[16];
  if (!*&v145[0])
  {
    *&v132[32] = *&v138[32];
    *&v132[48] = *&v138[48];
    v132[64] = v138[64];
    *v132 = *v138;
    *&v132[16] = *&v138[16];
    sub_213FB2E54(v143, v130, &qword_27C90A020, &qword_2146F5BE0);
    sub_213FB2E54(v145, v130, &qword_27C90A020, &qword_2146F5BE0);
    sub_213FB2E54(v138, v130, &qword_27C90A020, &qword_2146F5BE0);
    sub_21430B9A0(v132);
    goto LABEL_8;
  }

  v94 = v40;
  v95 = v41;
  v96 = v8;
  v97 = v42;
  v98 = v9;
  v99 = v43;
  v100 = v11;
  v86 = v27;
  v87 = v47;
  v101 = v10;
  v88 = v44;
  v89 = v22;
  v102 = v13;
  v83 = v49;
  v84 = v48;
  v103 = v12;
  v104 = v15;
  v105 = v17;
  v79 = v45;
  v80 = v26;
  v74 = v50;
  v78 = v51;
  v91 = v19;
  v92 = v21;
  v75 = v46;
  v76 = v28;
  v93 = v23;
  v90 = v25;
  v85 = v24;
  v81 = v29;
  v82 = v31;
  v77 = v30;
  *&v132[8] = *(a2 + 8);
  *&v132[24] = *(a2 + 24);
  *&v132[40] = *(a2 + 40);
  *&v132[49] = *(a2 + 49);
  *v132 = *&v145[0];
  sub_213FB2E54(v143, v130, &qword_27C90A020, &qword_2146F5BE0);
  sub_213FB2E54(v145, v130, &qword_27C90A020, &qword_2146F5BE0);
  sub_213FB2E54(v138, v130, &qword_27C90A020, &qword_2146F5BE0);
  v54 = sub_2144D163C(&v133, v132);
  v128[2] = *&v132[32];
  v128[3] = *&v132[48];
  v129 = v132[64];
  v128[0] = *v132;
  v128[1] = *&v132[16];
  sub_21430B9A0(v128);
  v130[2] = v135;
  v130[3] = v136;
  v131 = v137;
  v130[0] = v133;
  v130[1] = v134;
  sub_21430B9A0(v130);
  *v132 = v52;
  *&v132[8] = *(a1 + 8);
  *&v132[24] = *(a1 + 24);
  *&v132[40] = *(a1 + 40);
  *&v132[49] = *(a1 + 49);
  sub_213FB2DF4(v132, &qword_27C90A020, &qword_2146F5BE0);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if (v6 >> 60 == 11 || v34 >> 60 == 11)
  {
    goto LABEL_107;
  }

  if (v6 >> 60 == 15)
  {
    if (v34 >> 60 == 15)
    {
      sub_21404F7E0(v7, v6);
      sub_21404F7E0(v35, v34);
      sub_213FDC6BC(v7, v6);
      goto LABEL_20;
    }

LABEL_16:
    sub_21404F7E0(v7, v6);
    sub_21404F7E0(v35, v34);
    sub_213FDC6BC(v7, v6);
    sub_213FDC6BC(v35, v34);
    return 0;
  }

  if (v34 >> 60 == 15)
  {
    goto LABEL_16;
  }

  sub_21404F7E0(v7, v6);
  sub_21404F7E0(v35, v34);
  sub_21404F7E0(v7, v6);
  sub_21404F7E0(v35, v34);
  v57 = sub_214466780(v7, v6, v35, v34);
  sub_213FDC6BC(v35, v34);
  sub_214032564(v35, v34);
  sub_214032564(v7, v6);
  sub_213FDC6BC(v7, v6);
  if (!v57)
  {
    return 0;
  }

LABEL_20:
  if (v126 & 1) != 0 || (v124)
  {
LABEL_107:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  if (v127)
  {
    if ((v125 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v125 & 1) != 0 || v121 != v120)
    {
      return result;
    }
  }

  if (v123)
  {
    v59 = v92;
    v58 = v93;
    v60 = v91;
    if (!v122)
    {
      return 0;
    }
  }

  else
  {
    v61 = v122;
    if (v118 != v116)
    {
      v61 = 1;
    }

    v59 = v92;
    v58 = v93;
    v60 = v91;
    if (v61)
    {
      return 0;
    }
  }

  if (v119)
  {
    if (!v117)
    {
      return 0;
    }
  }

  else
  {
    v62 = v117;
    if (v96 != v36)
    {
      v62 = 1;
    }

    if (v62)
    {
      return 0;
    }
  }

  if (v115)
  {
    if (!v114)
    {
      return 0;
    }
  }

  else
  {
    v63 = v114;
    if (v98 != v37)
    {
      v63 = 1;
    }

    if (v63)
    {
      return 0;
    }
  }

  if (v100)
  {
    if (!v113)
    {
      return 0;
    }
  }

  else
  {
    v64 = v113;
    if (v101 != v38)
    {
      v64 = 1;
    }

    if (v64)
    {
      return 0;
    }
  }

  if (v102)
  {
    if (!v112)
    {
      return 0;
    }
  }

  else
  {
    v65 = v112;
    if (v103 != v39)
    {
      v65 = 1;
    }

    if (v65)
    {
      return 0;
    }
  }

  if (v104)
  {
    if (!v111)
    {
      return 0;
    }
  }

  else
  {
    v66 = v111;
    if (v14 != v94)
    {
      v66 = 1;
    }

    if (v66)
    {
      return 0;
    }
  }

  if (v105)
  {
    if (!v110)
    {
      return 0;
    }
  }

  else
  {
    v67 = v110;
    if (v16 != v95)
    {
      v67 = 1;
    }

    if (v67)
    {
      return 0;
    }
  }

  if (v60)
  {
    if (!v109)
    {
      return 0;
    }
  }

  else
  {
    v68 = v109;
    if (v18 != v97)
    {
      v68 = 1;
    }

    if (v68)
    {
      return 0;
    }
  }

  if (v59)
  {
    if (!v108)
    {
      return 0;
    }
  }

  else
  {
    v69 = v108;
    if (v20 != v99)
    {
      v69 = 1;
    }

    if (v69)
    {
      return 0;
    }
  }

  if (v58)
  {
    if (!v107)
    {
      return 0;
    }
  }

  else
  {
    v70 = v107;
    if (v89 != v88)
    {
      v70 = 1;
    }

    if (v70)
    {
      return 0;
    }
  }

  if (v90)
  {
    if (!v87)
    {
      return 0;
    }
  }

  else
  {
    v71 = v87;
    if (v85 != v106)
    {
      v71 = 1;
    }

    if (v71)
    {
      return 0;
    }
  }

  if ((v86 & 1) == 0)
  {
    v72 = v84;
    if (v80 != v79)
    {
      v72 = 1;
    }

    if (v72)
    {
      return 0;
    }

    goto LABEL_99;
  }

  if (!v84)
  {
    return 0;
  }

LABEL_99:
  if (v81)
  {
    if (v82 & 1 | ((v83 & 1) == 0))
    {
      return v83 & v78;
    }
  }

  else
  {
    v73 = v83;
    if (v76 != v75)
    {
      v73 = 1;
    }

    if ((v73 | v82))
    {
      return (v73 ^ 1) & v78;
    }
  }

  return (v77 == v74) & ~v78;
}

uint64_t sub_2144D2170(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v113[2] = *(a1 + 32);
  v113[3] = v4;
  v114 = *(a1 + 64);
  v5 = *(a1 + 16);
  v113[0] = *a1;
  v113[1] = v5;
  v93 = *(a1 + 88);
  v97 = *(a1 + 96);
  v96 = *(a1 + 97);
  v6 = *(a1 + 104);
  v95 = *(a1 + 112);
  v7 = *(a1 + 120);
  v91 = *(a1 + 128);
  v8 = *(a1 + 136);
  v89 = *(a1 + 144);
  v9 = *(a1 + 152);
  v87 = *(a1 + 160);
  v82 = *(a1 + 168);
  v85 = *(a1 + 176);
  v10 = *(a1 + 184);
  v83 = *(a1 + 192);
  v11 = *(a1 + 200);
  v79 = *(a1 + 208);
  v12 = *(a1 + 216);
  v13 = *(a1 + 217);
  v14 = *(a1 + 224);
  v15 = *(a1 + 232);
  v16 = *(a1 + 240);
  v17 = *(a1 + 248);
  v18 = *(a1 + 256);
  v19 = *(a1 + 264);
  v20 = *(a1 + 272);
  v21 = *(a1 + 280);
  v22 = *(a1 + 288);
  v23 = *(a2 + 16);
  v115[0] = *a2;
  v115[1] = v23;
  v24 = *(a2 + 48);
  v115[2] = *(a2 + 32);
  v115[3] = v24;
  v116 = *(a2 + 64);
  v92 = *(a2 + 88);
  v25 = *(a2 + 96);
  v26 = *(a2 + 97);
  v94 = *(a2 + 112);
  v27 = *(a2 + 120);
  v28 = *(a2 + 136);
  v29 = *(a2 + 152);
  v30 = *(a2 + 184);
  v90 = *(a2 + 128);
  v88 = *(a2 + 144);
  v86 = *(a2 + 160);
  v80 = *(a2 + 168);
  v84 = *(a2 + 176);
  v81 = *(a2 + 192);
  v76 = *(a2 + 200);
  v78 = *(a2 + 208);
  v77 = *(a2 + 216);
  v75 = *(a2 + 217);
  v31 = *(a2 + 224);
  v33 = *(a2 + 240);
  v32 = *(a2 + 248);
  v34 = *(a2 + 256);
  v35 = *(a2 + 264);
  v36 = *(a2 + 272);
  v37 = *(a2 + 280);
  v38 = *(a2 + 288);
  v39 = *&v113[0];
  v40 = *&v115[0];
  if (*&v113[0])
  {
    v71 = *(a2 + 104);
    v70 = *(a2 + 232);
    *v108 = *&v113[0];
    *&v108[24] = *(a1 + 24);
    *&v108[8] = *(a1 + 8);
    *&v108[40] = *(a1 + 40);
    *&v108[49] = *(a1 + 49);
    v105 = *&v108[32];
    v106 = *&v108[48];
    v107 = v108[64];
    v103 = *v108;
    v104 = *&v108[16];
    if (*&v115[0])
    {
      v72 = v27;
      v73 = v11;
      v66 = v31;
      v67 = v14;
      v74 = v12;
      v64 = v33;
      v65 = v16;
      v68 = v32;
      v69 = v17;
      v58 = v34;
      v59 = v18;
      v62 = v19;
      v63 = v35;
      v55 = v36;
      v56 = v20;
      v60 = v37;
      v61 = v21;
      v54 = v38;
      v57 = v22;
      *&v102[8] = *(a2 + 8);
      *&v102[24] = *(a2 + 24);
      *&v102[40] = *(a2 + 40);
      *&v102[49] = *(a2 + 49);
      *v102 = *&v115[0];
      sub_213FB2E54(v113, v100, &qword_27C90A020, &qword_2146F5BE0);
      sub_213FB2E54(v115, v100, &qword_27C90A020, &qword_2146F5BE0);
      sub_213FB2E54(v108, v100, &qword_27C90A020, &qword_2146F5BE0);
      v41 = sub_2144D163C(&v103, v102);
      v98[2] = *&v102[32];
      v98[3] = *&v102[48];
      v99 = v102[64];
      v98[0] = *v102;
      v98[1] = *&v102[16];
      sub_21430B9A0(v98);
      v100[2] = v105;
      v100[3] = v106;
      v101 = v107;
      v100[0] = v103;
      v100[1] = v104;
      sub_21430B9A0(v100);
      *v102 = v39;
      *&v102[8] = *(a1 + 8);
      *&v102[24] = *(a1 + 24);
      *&v102[40] = *(a1 + 40);
      *&v102[49] = *(a1 + 49);
      sub_213FB2DF4(v102, &qword_27C90A020, &qword_2146F5BE0);
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      if (v96)
      {
        goto LABEL_107;
      }

      goto LABEL_13;
    }

    *&v102[32] = *&v108[32];
    *&v102[48] = *&v108[48];
    v102[64] = v108[64];
    *v102 = *v108;
    *&v102[16] = *&v108[16];
    sub_213FB2E54(v113, v100, &qword_27C90A020, &qword_2146F5BE0);
    sub_213FB2E54(v115, v100, &qword_27C90A020, &qword_2146F5BE0);
    sub_213FB2E54(v108, v100, &qword_27C90A020, &qword_2146F5BE0);
    sub_21430B9A0(v102);
LABEL_9:
    *&v108[8] = *(a1 + 8);
    *&v108[24] = *(a1 + 24);
    *&v108[40] = *(a1 + 40);
    *&v108[49] = *(a1 + 49);
    *v108 = v39;
    v109 = v40;
    v42 = *(a2 + 24);
    v110 = *(a2 + 8);
    v111 = v42;
    v112[0] = *(a2 + 40);
    *(v112 + 9) = *(a2 + 49);
    sub_213FB2DF4(v108, &qword_27C914910, &unk_214755D50);
    return 0;
  }

  if (*&v115[0])
  {
    sub_213FB2E54(v113, v108, &qword_27C90A020, &qword_2146F5BE0);
    sub_213FB2E54(v115, v108, &qword_27C90A020, &qword_2146F5BE0);
    goto LABEL_9;
  }

  v71 = *(a2 + 104);
  v72 = *(a2 + 120);
  v73 = v11;
  v66 = *(a2 + 224);
  v67 = v14;
  v74 = v12;
  v69 = v17;
  v70 = *(a2 + 232);
  v64 = *(a2 + 240);
  v65 = v16;
  v68 = *(a2 + 248);
  v58 = *(a2 + 256);
  v59 = v18;
  v62 = v19;
  v63 = *(a2 + 264);
  v55 = *(a2 + 272);
  v56 = v20;
  v60 = *(a2 + 280);
  v61 = v21;
  v54 = *(a2 + 288);
  v57 = v22;
  *v108 = 0;
  *&v108[8] = *(a1 + 8);
  *&v108[24] = *(a1 + 24);
  *&v108[40] = *(a1 + 40);
  *&v108[49] = *(a1 + 49);
  sub_213FB2E54(v113, &v103, &qword_27C90A020, &qword_2146F5BE0);
  sub_213FB2E54(v115, &v103, &qword_27C90A020, &qword_2146F5BE0);
  sub_213FB2DF4(v108, &qword_27C90A020, &qword_2146F5BE0);
  if (v96)
  {
LABEL_107:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

LABEL_13:
  v44 = v74;
  if (v26)
  {
    goto LABEL_107;
  }

  if (v97)
  {
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v25 & 1) != 0 || v93 != v92)
    {
      return result;
    }
  }

  if (v95)
  {
    if (!v94)
    {
      return 0;
    }
  }

  else
  {
    v45 = v94;
    if (v6 != v71)
    {
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  if (v91)
  {
    if (!v90)
    {
      return 0;
    }
  }

  else
  {
    v46 = v90;
    if (v7 != v72)
    {
      v46 = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  if (v89)
  {
    if (!v88)
    {
      return 0;
    }
  }

  else
  {
    v47 = v88;
    if (v8 != v28)
    {
      v47 = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  if (v87)
  {
    if (!v86)
    {
      return 0;
    }
  }

  else
  {
    v48 = v86;
    if (v9 != v29)
    {
      v48 = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  if (v85)
  {
    if (!v84)
    {
      return 0;
    }
  }

  else
  {
    v49 = v84;
    if (v82 != v80)
    {
      v49 = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  if (v83)
  {
    if (!v81)
    {
      return 0;
    }
  }

  else
  {
    v50 = v81;
    if (v10 != v30)
    {
      v50 = 1;
    }

    if (v50)
    {
      return 0;
    }
  }

  if (v79)
  {
    if (!v78)
    {
      return 0;
    }

    if (v73 != v76 || v79 != v78)
    {
      v51 = sub_2146DA6A8();
      v44 = v74;
      if ((v51 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v78)
  {
    return 0;
  }

  if (v44 == 2)
  {
    if (v77 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v77 == 2 || ((v77 ^ v44) & 1) != 0)
    {
      return result;
    }
  }

  if (v13 == 2)
  {
    if (v75 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v75 == 2 || ((v75 ^ v13) & 1) != 0)
    {
      return result;
    }
  }

  if (v15)
  {
    if (!v70 || (v67 != v66 || v15 != v70) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v70)
  {
    return 0;
  }

  if (v69)
  {
    if (!v68 || (v65 != v64 || v69 != v68) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v68)
  {
    return 0;
  }

  if (v62)
  {
    if (!v63)
    {
      return 0;
    }
  }

  else
  {
    v52 = v63;
    if (v59 != v58)
    {
      v52 = 1;
    }

    if (v52)
    {
      return 0;
    }
  }

  if (v61)
  {
    if (v60 && (v56 == v55 && v61 == v60 || (sub_2146DA6A8() & 1) != 0))
    {
      goto LABEL_99;
    }

    return 0;
  }

  if (v60)
  {
    return 0;
  }

LABEL_99:
  if (v57 == 4)
  {
    return v54 == 4;
  }

  else
  {
    return v54 != 4 && v57 == v54;
  }
}

uint64_t sub_2144D2984(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v78[2] = *(a1 + 32);
  v78[3] = v4;
  v79 = *(a1 + 64);
  v5 = *(a1 + 16);
  v78[0] = *a1;
  v78[1] = v5;
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);
  v10 = *(a1 + 104);
  v11 = *(a1 + 112);
  v12 = *(a1 + 120);
  v13 = *(a1 + 128);
  v14 = *(a1 + 136);
  v15 = *(a1 + 144);
  v16 = *(a1 + 152);
  v17 = *(a1 + 160);
  v81 = *(a2 + 64);
  v18 = *(a2 + 48);
  v80[2] = *(a2 + 32);
  v80[3] = v18;
  v19 = *(a2 + 16);
  v80[0] = *a2;
  v80[1] = v19;
  v20 = *(a2 + 72);
  v21 = *(a2 + 80);
  v22 = *(a2 + 88);
  v23 = *(a2 + 96);
  v24 = *(a2 + 104);
  v25 = *(a2 + 112);
  v26 = *(a2 + 120);
  v28 = *(a2 + 136);
  v27 = *(a2 + 144);
  v29 = *(a2 + 152);
  v30 = *(a2 + 160);
  v31 = *&v78[0];
  v32 = *&v80[0];
  if (*&v78[0])
  {
    v55 = *(a2 + 128);
    *v73 = *&v78[0];
    *&v73[24] = *(a1 + 24);
    *&v73[8] = *(a1 + 8);
    *&v73[40] = *(a1 + 40);
    *&v73[49] = *(a1 + 49);
    v70 = *&v73[32];
    v71 = *&v73[48];
    v72 = v73[64];
    v68 = *v73;
    v69 = *&v73[16];
    if (*&v80[0])
    {
      v56 = v23;
      v57 = v24;
      v58 = v25;
      v59 = v26;
      v60 = v11;
      v61 = v10;
      v62 = v14;
      v54 = v13;
      v50 = v28;
      v51 = v12;
      v52 = v27;
      v53 = v15;
      *v49 = v29;
      *&v49[8] = v30;
      *&v49[16] = v17;
      v48 = v16;
      *&v67[8] = *(a2 + 8);
      *&v67[24] = *(a2 + 24);
      *&v67[40] = *(a2 + 40);
      *&v67[49] = *(a2 + 49);
      *v67 = *&v80[0];
      sub_213FB2E54(v78, v65, &qword_27C90A020, &qword_2146F5BE0);
      sub_213FB2E54(v80, v65, &qword_27C90A020, &qword_2146F5BE0);
      sub_213FB2E54(v73, v65, &qword_27C90A020, &qword_2146F5BE0);
      v33 = sub_2144D163C(&v68, v67);
      v63[2] = *&v67[32];
      v63[3] = *&v67[48];
      v64 = v67[64];
      v63[0] = *v67;
      v63[1] = *&v67[16];
      sub_21430B9A0(v63);
      v65[2] = v70;
      v65[3] = v71;
      v66 = v72;
      v65[0] = v68;
      v65[1] = v69;
      sub_21430B9A0(v65);
      *v67 = v31;
      *&v67[8] = *(a1 + 8);
      *&v67[24] = *(a1 + 24);
      *&v67[40] = *(a1 + 40);
      *&v67[49] = *(a1 + 49);
      sub_213FB2DF4(v67, &qword_27C90A020, &qword_2146F5BE0);
      if ((v33 & 1) == 0)
      {
        goto LABEL_11;
      }

      if (v7)
      {
        goto LABEL_5;
      }

LABEL_14:
      if (v6 == v20)
      {
        v44 = v21;
      }

      else
      {
        v44 = 1;
      }

      v35 = v61;
      v34 = v62;
      v36 = v60;
      v37 = v59;
      v38 = v58;
      v39 = v57;
      v40 = v56;
      if (v44)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

    *&v67[32] = *&v73[32];
    *&v67[48] = *&v73[48];
    v67[64] = v73[64];
    *v67 = *v73;
    *&v67[16] = *&v73[16];
    sub_213FB2E54(v78, v65, &qword_27C90A020, &qword_2146F5BE0);
    sub_213FB2E54(v80, v65, &qword_27C90A020, &qword_2146F5BE0);
    sub_213FB2E54(v73, v65, &qword_27C90A020, &qword_2146F5BE0);
    sub_21430B9A0(v67);
LABEL_10:
    *&v73[8] = *(a1 + 8);
    *&v73[24] = *(a1 + 24);
    *&v73[40] = *(a1 + 40);
    *&v73[49] = *(a1 + 49);
    *v73 = v31;
    v74 = v32;
    v41 = *(a2 + 24);
    v75 = *(a2 + 8);
    v76 = v41;
    v77[0] = *(a2 + 40);
    *(v77 + 9) = *(a2 + 49);
    sub_213FB2DF4(v73, &qword_27C914910, &unk_214755D50);
    goto LABEL_11;
  }

  if (*&v80[0])
  {
    sub_213FB2E54(v78, v73, &qword_27C90A020, &qword_2146F5BE0);
    sub_213FB2E54(v80, v73, &qword_27C90A020, &qword_2146F5BE0);
    goto LABEL_10;
  }

  v55 = *(a2 + 128);
  v56 = *(a2 + 96);
  v57 = *(a2 + 104);
  v58 = *(a2 + 112);
  v59 = *(a2 + 120);
  v60 = v11;
  v61 = v10;
  v62 = v14;
  v54 = v13;
  v50 = *(a2 + 136);
  v51 = v12;
  v52 = *(a2 + 144);
  v53 = v15;
  *v49 = *(a2 + 152);
  *&v49[16] = v17;
  v48 = v16;
  *v73 = 0;
  *&v73[8] = *(a1 + 8);
  *&v73[24] = *(a1 + 24);
  *&v73[40] = *(a1 + 40);
  *&v73[49] = *(a1 + 49);
  sub_213FB2E54(v78, &v68, &qword_27C90A020, &qword_2146F5BE0);
  sub_213FB2E54(v80, &v68, &qword_27C90A020, &qword_2146F5BE0);
  sub_213FB2DF4(v73, &qword_27C90A020, &qword_2146F5BE0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  v35 = v61;
  v34 = v62;
  v36 = v60;
  v37 = v59;
  v38 = v58;
  v39 = v57;
  v40 = v56;
  if (!v21)
  {
    goto LABEL_11;
  }

LABEL_18:
  if (v9)
  {
    if (!v40)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v8 == v22)
    {
      v45 = v40;
    }

    else
    {
      v45 = 1;
    }

    if (v45)
    {
      goto LABEL_11;
    }
  }

  if (v36)
  {
    if (!v38)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v35 == v39)
    {
      v46 = v38;
    }

    else
    {
      v46 = 1;
    }

    if (v46)
    {
      goto LABEL_11;
    }
  }

  if (v54)
  {
    if (!v55)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v47 = v55;
    if (v51 != v37)
    {
      v47 = 1;
    }

    if (v47)
    {
      goto LABEL_11;
    }
  }

  if (v53)
  {
    if (v52 && (v34 == v50 && v53 == v52 || (sub_2146DA6A8() & 1) != 0))
    {
      goto LABEL_45;
    }

LABEL_11:
    v42 = 0;
    return v42 & 1;
  }

  if (v52)
  {
    goto LABEL_11;
  }

LABEL_45:
  v42 = *&v49[8] == 0;
  if (*&v49[16] && *&v49[8])
  {
    if (__PAIR128__(*&v49[16], v48) == *v49)
    {
      v42 = 1;
    }

    else
    {
      v42 = sub_2146DA6A8();
    }
  }

  return v42 & 1;
}

uint64_t sub_2144D2ECC(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  memcpy(__dst, v1, 0x169uLL);
  v6 = v4[46];
  v5 = v4[47];
  memcpy(v20, v3, 0x169uLL);
  v8 = v3[46];
  v7 = v3[47];
  memcpy(__src, v4, 0x169uLL);
  memcpy(&__src[368], v3, 0x169uLL);
  memcpy(v21, v4, 0x169uLL);
  if (sub_2144D6590(v21) == 1)
  {
    memcpy(v16, v3, 0x169uLL);
    if (sub_2144D6590(v16) == 1)
    {
      memcpy(v17, v4, 0x169uLL);
      sub_213FB2E54(__dst, v15, &qword_27C909F60, &qword_2146F5B98);
      sub_213FB2E54(v20, v15, &qword_27C909F60, &qword_2146F5B98);
      sub_213FB2DF4(v17, &qword_27C909F60, &qword_2146F5B98);
      goto LABEL_9;
    }

    sub_213FB2E54(__dst, v17, &qword_27C909F60, &qword_2146F5B98);
    sub_213FB2E54(v20, v17, &qword_27C909F60, &qword_2146F5B98);
    goto LABEL_7;
  }

  memcpy(v17, v4, 0x169uLL);
  memcpy(v15, v4, 0x169uLL);
  memcpy(v16, v3, 0x169uLL);
  if (sub_2144D6590(v16) == 1)
  {
    memcpy(v14, v4, 0x169uLL);
    sub_213FB2E54(__dst, v13, &qword_27C909F60, &qword_2146F5B98);
    sub_213FB2E54(v20, v13, &qword_27C909F60, &qword_2146F5B98);
    sub_213FB2E54(v17, v13, &qword_27C909F60, &qword_2146F5B98);
    sub_21430B3E4(v14);
LABEL_7:
    memcpy(v16, __src, 0x2D9uLL);
    sub_213FB2DF4(v16, &qword_27C914918, &unk_214755D60);
LABEL_11:
    v10 = 0;
    return v10 & 1;
  }

  memcpy(v14, v3, 0x169uLL);
  sub_213FB2E54(__dst, v13, &qword_27C909F60, &qword_2146F5B98);
  sub_213FB2E54(v20, v13, &qword_27C909F60, &qword_2146F5B98);
  sub_213FB2E54(v17, v13, &qword_27C909F60, &qword_2146F5B98);
  v9 = sub_2144D1844(v15, v14);
  memcpy(v12, v14, 0x169uLL);
  sub_21430B3E4(v12);
  memcpy(v13, v15, 0x169uLL);
  sub_21430B3E4(v13);
  memcpy(v14, v4, 0x169uLL);
  sub_213FB2DF4(v14, &qword_27C909F60, &qword_2146F5B98);
  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((sub_2143D6EA8(v6, v8) & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = sub_2143D6FD4(v5, v7);
  return v10 & 1;
}

uint64_t sub_2144D3214(void *a1, void *a2)
{
  v4 = type metadata accessor for CloudKitSharingToken(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v25 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917540, &unk_214751950);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v15)
  {
    goto LABEL_17;
  }

  v16 = a1[5];
  if (v16 != 1)
  {
    v17 = a2[5];
    if (v17 != 1)
    {
      v18 = a1[4];
      if (v16)
      {
        if (!v17 || (v18 != a2[4] || v16 != v17) && (sub_2146DA6A8() & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_20:
        v21 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0) + 24);
        v22 = a1 + v21;
        v23 = *(v11 + 48);
        sub_213FB2E54(v22, v13, &qword_27C9041D8, &qword_2146ED5C0);
        sub_213FB2E54(a2 + v21, &v13[v23], &qword_27C9041D8, &qword_2146ED5C0);
        v24 = *(v5 + 48);
        if (v24(v13, 1, v4) == 1)
        {
          if (v24(&v13[v23], 1, v4) == 1)
          {
            sub_213FB2DF4(v13, &qword_27C9041D8, &qword_2146ED5C0);
            v19 = 1;
            return v19 & 1;
          }
        }

        else
        {
          sub_213FB2E54(v13, v10, &qword_27C9041D8, &qword_2146ED5C0);
          if (v24(&v13[v23], 1, v4) != 1)
          {
            sub_2144D66AC(&v13[v23], v7, type metadata accessor for CloudKitSharingToken);
            v19 = sub_2145AF7C4(v10, v7);
            sub_2144D6848(v7, type metadata accessor for CloudKitSharingToken);
            sub_2144D6848(v10, type metadata accessor for CloudKitSharingToken);
            sub_213FB2DF4(v13, &qword_27C9041D8, &qword_2146ED5C0);
            return v19 & 1;
          }

          sub_2144D6848(v10, type metadata accessor for CloudKitSharingToken);
        }

        sub_213FB2DF4(v13, &qword_27C917540, &unk_214751950);
        v19 = 0;
        return v19 & 1;
      }

      if (!v17)
      {
        sub_213FDC9D0(a2[4], 0);
        sub_213FDC9D0(v18, 0);
        goto LABEL_20;
      }

LABEL_17:
      v19 = 0;
      return v19 & 1;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144D3604(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3 == 1 || (v4 = *(a2 + 24), v4 == 1))
  {
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v5 = *(a1 + 16);
  if (!v3)
  {
    if (!v4)
    {
      sub_213FDC9D0(*(a2 + 16), 0);
      sub_213FDC9D0(v5, 0);
      return 1;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (v5 == *(a2 + 16) && v3 == v4)
  {
    return 1;
  }

  return sub_2146DA6A8();
}

uint64_t sub_2144D36F0(void *a1, uint64_t *a2)
{
  v3 = a1[3];
  if (v3 == 1)
  {
    goto LABEL_24;
  }

  v4 = a2[3];
  if (v4 == 1)
  {
    goto LABEL_24;
  }

  v5 = a1[2];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a2[7];
  v9 = a2[8];
  if (v3)
  {
    if (!v4 || (v5 != a2[2] || v3 != v4) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4)
    {
      return 0;
    }

    sub_213FDC9D0(a2[2], 0);
    sub_213FDC9D0(v5, 0);
  }

  if (v7 == 1 || v9 == 1)
  {
LABEL_24:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  if (!v7)
  {
    if (!v9)
    {
      sub_213FDC9D0(v8, 0);
      sub_213FDC9D0(v6, 0);
      return 1;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  if (v6 == v8 && v7 == v9)
  {
    return 1;
  }

  return sub_2146DA6A8();
}

uint64_t sub_2144D3860(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v5 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E38, &qword_2146F5B20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914920, &unk_214755D70);
  MEMORY[0x28223BE20](v12);
  v14 = &v46[-v13];
  memcpy(v68, v4, 0x189uLL);
  memcpy(v69, v3, 0x189uLL);
  memcpy(v67, v4, 0x189uLL);
  memcpy(&v67[25], v3, 0x189uLL);
  memcpy(v70, v4, 0x189uLL);
  if (sub_2144D65A8(v70) == 1)
  {
    memcpy(v65, &v67[25], 0x189uLL);
    if (sub_2144D65A8(v65) == 1)
    {
      v49 = v8;
      v50 = v11;
      memcpy(v66, v67, 0x189uLL);
      sub_213FB2E54(v68, v64, &qword_27C909E50, &unk_2146F5B30);
      sub_213FB2E54(v69, v64, &qword_27C909E50, &unk_2146F5B30);
      sub_213FB2DF4(v66, &qword_27C909E50, &unk_2146F5B30);
      goto LABEL_12;
    }

    sub_213FB2E54(v68, v66, &qword_27C909E50, &unk_2146F5B30);
    sub_213FB2E54(v69, v66, &qword_27C909E50, &unk_2146F5B30);
LABEL_7:
    memcpy(v65, v67, 0x319uLL);
    v15 = &unk_27C914928;
    v16 = &unk_214755D80;
    v17 = v65;
    goto LABEL_8;
  }

  memcpy(v66, v67, 0x189uLL);
  memcpy(v64, v67, 0x189uLL);
  memcpy(v65, &v67[25], 0x189uLL);
  if (sub_2144D65A8(v65) == 1)
  {
    memcpy(v53, v67, 0x189uLL);
    sub_213FB2E54(v68, v52, &qword_27C909E50, &unk_2146F5B30);
    sub_213FB2E54(v69, v52, &qword_27C909E50, &unk_2146F5B30);
    sub_213FB2E54(v66, v52, &qword_27C909E50, &unk_2146F5B30);
    sub_2144D65C0(v53);
    goto LABEL_7;
  }

  v49 = v8;
  v50 = v11;
  memcpy(v53, &v67[25], 0x189uLL);
  sub_213FB2E54(v68, v52, &qword_27C909E50, &unk_2146F5B30);
  sub_213FB2E54(v69, v52, &qword_27C909E50, &unk_2146F5B30);
  sub_213FB2E54(v66, v52, &qword_27C909E50, &unk_2146F5B30);
  v20 = sub_2144D2ECC(v64);
  memcpy(v51, v53, 0x189uLL);
  sub_2144D65C0(v51);
  memcpy(v52, v64, 0x189uLL);
  sub_2144D65C0(v52);
  memcpy(v53, v67, 0x189uLL);
  sub_213FB2DF4(v53, &qword_27C909E50, &unk_2146F5B30);
  if ((v20 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *(v4 + 424);
  if (v21 != 1)
  {
    v22 = *(v3 + 424);
    if (v22 != 1)
    {
      v23 = *(v4 + 416);
      if (v21)
      {
        if (!v22 || (v23 != *(v3 + 416) || v21 != v22) && (sub_2146DA6A8() & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (v22)
        {
          goto LABEL_9;
        }

        sub_213FDC9D0(*(v3 + 416), 0);
        sub_213FDC9D0(v23, 0);
      }

      v24 = *(v4 + 488);
      v66[2] = *(v4 + 472);
      v66[3] = v24;
      *(&v66[3] + 9) = *(v4 + 497);
      v25 = *(v4 + 440);
      v66[1] = *(v4 + 456);
      v66[0] = v25;
      v26 = *(v3 + 488);
      v65[2] = *(v3 + 472);
      v65[3] = v26;
      *(&v65[3] + 9) = *(v3 + 497);
      v27 = *(v3 + 440);
      v65[1] = *(v3 + 456);
      v65[0] = v27;
      v28 = *&v66[0];
      v29 = *(v4 + 496);
      v61 = *(v4 + 480);
      v62 = v29;
      v63 = *(v4 + 512);
      v30 = *(v4 + 448);
      v60 = *(v4 + 464);
      v59 = v30;
      v31 = *&v65[0];
      v32 = *(v3 + 496);
      v56 = *(v3 + 480);
      v57 = v32;
      v58 = *(v3 + 512);
      v33 = *(v3 + 448);
      v55 = *(v3 + 464);
      v54 = v33;
      if (*&v66[0])
      {
        v48 = v6;
        *&v67[0] = *&v66[0];
        v34 = *(v4 + 464);
        *(v67 + 8) = *(v4 + 448);
        *(&v67[1] + 8) = v34;
        v35 = *(v4 + 496);
        *(&v67[2] + 8) = *(v4 + 480);
        *(&v67[3] + 8) = v35;
        BYTE8(v67[4]) = *(v4 + 512);
        v64[2] = v67[2];
        v64[3] = v67[3];
        *(&v64[3] + 9) = *(&v67[3] + 9);
        v64[1] = v67[1];
        v64[0] = v67[0];
        if (*&v65[0])
        {
          v36 = *(v3 + 448);
          *(&v53[1] + 8) = *(v3 + 464);
          v37 = *(v3 + 496);
          *(&v53[2] + 8) = *(v3 + 480);
          *(&v53[3] + 8) = v37;
          BYTE8(v53[4]) = *(v3 + 512);
          *(v53 + 8) = v36;
          *&v53[0] = *&v65[0];
          v47 = sub_2144D36F0(v64, v53);
          v51[2] = v53[2];
          v51[3] = v53[3];
          *(&v51[3] + 9) = *(&v53[3] + 9);
          v51[0] = v53[0];
          v51[1] = v53[1];
          sub_213FB2E54(v66, v52, &qword_27C909E68, &qword_214761070);
          sub_213FB2E54(v65, v52, &qword_27C909E68, &qword_214761070);
          sub_213FB2E54(v67, v52, &qword_27C909E68, &qword_214761070);
          sub_21430B28C(v51);
          v52[2] = v64[2];
          v52[3] = v64[3];
          *(&v52[3] + 9) = *(&v64[3] + 9);
          v52[0] = v64[0];
          v52[1] = v64[1];
          sub_21430B28C(v52);
          *&v53[0] = v28;
          *(&v53[1] + 8) = v60;
          *(&v53[2] + 8) = v61;
          *(&v53[3] + 8) = v62;
          BYTE8(v53[4]) = v63;
          *(v53 + 8) = v59;
          sub_213FB2DF4(v53, &qword_27C909E68, &qword_214761070);
          v6 = v48;
          if ((v47 & 1) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_31;
        }

        v53[2] = v67[2];
        v53[3] = v67[3];
        *(&v53[3] + 9) = *(&v67[3] + 9);
        v53[0] = v67[0];
        v53[1] = v67[1];
        sub_213FB2E54(v66, v52, &qword_27C909E68, &qword_214761070);
        sub_213FB2E54(v65, v52, &qword_27C909E68, &qword_214761070);
        sub_213FB2E54(v67, v52, &qword_27C909E68, &qword_214761070);
        sub_21430B28C(v53);
      }

      else
      {
        if (!*&v65[0])
        {
          *&v67[0] = 0;
          v38 = *(v4 + 448);
          *(&v67[1] + 8) = *(v4 + 464);
          v39 = *(v4 + 496);
          *(&v67[2] + 8) = *(v4 + 480);
          *(&v67[3] + 8) = v39;
          BYTE8(v67[4]) = *(v4 + 512);
          *(v67 + 8) = v38;
          sub_213FB2E54(v66, v64, &qword_27C909E68, &qword_214761070);
          sub_213FB2E54(v65, v64, &qword_27C909E68, &qword_214761070);
          sub_213FB2DF4(v67, &qword_27C909E68, &qword_214761070);
LABEL_31:
          v40 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0) + 28);
          v41 = *(v12 + 48);
          sub_213FB2E54(v4 + v40, v14, &qword_27C909E38, &qword_2146F5B20);
          sub_213FB2E54(v3 + v40, &v14[v41], &qword_27C909E38, &qword_2146F5B20);
          v42 = *(v6 + 48);
          if (v42(v14, 1, v5) == 1)
          {
            if (v42(&v14[v41], 1, v5) == 1)
            {
              sub_213FB2DF4(v14, &qword_27C909E38, &qword_2146F5B20);
              v18 = 1;
              return v18 & 1;
            }
          }

          else
          {
            v43 = v50;
            sub_213FB2E54(v14, v50, &qword_27C909E38, &qword_2146F5B20);
            if (v42(&v14[v41], 1, v5) != 1)
            {
              v44 = &v14[v41];
              v45 = v49;
              sub_2144D66AC(v44, v49, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
              v18 = sub_2144D3214(v43, v45);
              sub_2144D6848(v45, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
              sub_2144D6848(v43, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
              sub_213FB2DF4(v14, &qword_27C909E38, &qword_2146F5B20);
              return v18 & 1;
            }

            sub_2144D6848(v43, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
          }

          v15 = &qword_27C914920;
          v16 = &unk_214755D70;
          v17 = v14;
          goto LABEL_8;
        }

        sub_213FB2E54(v66, v67, &qword_27C909E68, &qword_214761070);
        sub_213FB2E54(v65, v67, &qword_27C909E68, &qword_214761070);
      }

      *(&v67[1] + 8) = v60;
      *(&v67[2] + 8) = v61;
      *(&v67[3] + 8) = v62;
      *(v67 + 8) = v59;
      *(&v67[6] + 8) = v55;
      *(&v67[7] + 8) = v56;
      *(&v67[8] + 8) = v57;
      *&v67[0] = v28;
      BYTE8(v67[4]) = v63;
      *&v67[5] = v31;
      BYTE8(v67[9]) = v58;
      *(&v67[5] + 8) = v54;
      v15 = &unk_27C914930;
      v16 = &unk_214755D90;
      v17 = v67;
LABEL_8:
      sub_213FB2DF4(v17, v15, v16);
LABEL_9:
      v18 = 0;
      return v18 & 1;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144D42C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DB8, &qword_2146F5AF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914938, &qword_214755DA0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  v15 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = *(a1 + 40);
  if (v16 == 1)
  {
    goto LABEL_55;
  }

  v17 = *(a2 + 40);
  if (v17 == 1)
  {
    goto LABEL_55;
  }

  v18 = *(a1 + 32);
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    if (v18 != *(a2 + 32) || v16 != v17)
    {
      v19 = v12;
      v20 = sub_2146DA6A8();
      v12 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v17)
    {
      return 0;
    }

    v21 = v12;
    sub_213FDC9D0(*(a2 + 32), 0);
    sub_213FDC9D0(v18, 0);
    v12 = v21;
  }

  v22 = *(a1 + 80);
  if (v22 == 1)
  {
    goto LABEL_55;
  }

  v23 = *(a2 + 80);
  if (v23 == 1)
  {
    goto LABEL_55;
  }

  v24 = *(a1 + 72);
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    if (v24 != *(a2 + 72) || v22 != v23)
    {
      v25 = v12;
      v26 = sub_2146DA6A8();
      v12 = v25;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v23)
    {
      return 0;
    }

    v27 = v12;
    sub_213FDC9D0(*(a2 + 72), 0);
    sub_213FDC9D0(v24, 0);
    v12 = v27;
  }

  v28 = *(a1 + 120);
  if (v28 == 1)
  {
    goto LABEL_55;
  }

  v29 = *(a2 + 120);
  if (v29 == 1)
  {
    goto LABEL_55;
  }

  v30 = *(a1 + 112);
  if (v28)
  {
    if (!v29)
    {
      return 0;
    }

    v31 = v12;
    if ((v30 != *(a2 + 112) || v28 != v29) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v29)
    {
      return 0;
    }

    v31 = v12;
    sub_213FDC9D0(*(a2 + 112), 0);
    sub_213FDC9D0(v30, 0);
  }

  v49 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0);
  v32 = *(v49 + 32);
  v33 = *(v31 + 48);
  sub_213FB2E54(a1 + v32, v14, &qword_27C909DB8, &qword_2146F5AF0);
  v34 = a2 + v32;
  v35 = v33;
  sub_213FB2E54(v34, &v14[v33], &qword_27C909DB8, &qword_2146F5AF0);
  v36 = *(v5 + 48);
  if (v36(v14, 1, v4) != 1)
  {
    sub_213FB2E54(v14, v10, &qword_27C909DB8, &qword_2146F5AF0);
    if (v36(&v14[v35], 1, v4) == 1)
    {
      sub_2144D6848(v10, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
      goto LABEL_42;
    }

    sub_2144D66AC(&v14[v35], v7, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    v38 = sub_2144D3860(v10);
    sub_2144D6848(v7, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    sub_2144D6848(v10, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    sub_213FB2DF4(v14, &qword_27C909DB8, &qword_2146F5AF0);
    if (v38)
    {
      goto LABEL_45;
    }

    return 0;
  }

  if (v36(&v14[v35], 1, v4) != 1)
  {
LABEL_42:
    sub_213FB2DF4(v14, &qword_27C914938, &qword_214755DA0);
    return 0;
  }

  sub_213FB2DF4(v14, &qword_27C909DB8, &qword_2146F5AF0);
LABEL_45:
  v39 = *(v49 + 36);
  v40 = a1 + v39;
  if (*(a1 + v39 + 21) & 1) != 0 || (v41 = a2 + v39, (*(v41 + 21)))
  {
LABEL_55:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v42 = *(v40 + 20);
  v43 = *(v40 + 16);
  v44 = v43 | (v42 << 32);
  v45 = *(v41 + 20);
  if ((v44 & 0x100000000) != 0)
  {
    return v45 & 1;
  }

  v46 = *(v41 + 16) | (v45 << 32);
  return (v46 & 0x100000000) == 0 && v43 == v46;
}

uint64_t sub_2144D47E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DB8, &qword_2146F5AF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914938, &qword_214755DA0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v52 - v13;
  v15 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = *(a1 + 40);
  if (v16 == 1)
  {
    goto LABEL_59;
  }

  v17 = *(a2 + 40);
  if (v17 == 1)
  {
    goto LABEL_59;
  }

  v18 = *(a1 + 32);
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    if (v18 != *(a2 + 32) || v16 != v17)
    {
      v19 = v12;
      v20 = sub_2146DA6A8();
      v12 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v17)
    {
      return 0;
    }

    v21 = v12;
    sub_213FDC9D0(*(a2 + 32), 0);
    sub_213FDC9D0(v18, 0);
    v12 = v21;
  }

  v22 = *(a1 + 80);
  if (v22 == 1)
  {
    goto LABEL_59;
  }

  v23 = *(a2 + 80);
  if (v23 == 1)
  {
    goto LABEL_59;
  }

  v24 = *(a1 + 72);
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    if (v24 != *(a2 + 72) || v22 != v23)
    {
      v25 = v12;
      v26 = sub_2146DA6A8();
      v12 = v25;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v23)
    {
      return 0;
    }

    v27 = v12;
    sub_213FDC9D0(*(a2 + 72), 0);
    sub_213FDC9D0(v24, 0);
    v12 = v27;
  }

  v28 = *(a1 + 120);
  if (v28 == 1)
  {
    goto LABEL_59;
  }

  v29 = *(a2 + 120);
  if (v29 == 1)
  {
    goto LABEL_59;
  }

  v30 = *(a1 + 112);
  if (v28)
  {
    if (!v29)
    {
      return 0;
    }

    if (v30 != *(a2 + 112) || v28 != v29)
    {
      v31 = v12;
      v32 = sub_2146DA6A8();
      v12 = v31;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v29)
    {
      return 0;
    }

    v33 = v12;
    sub_213FDC9D0(*(a2 + 112), 0);
    sub_213FDC9D0(v30, 0);
    v12 = v33;
  }

  v34 = *(a1 + 129);
  v35 = *(a2 + 129);
  if (v34 == 5)
  {
    if (v35 != 5)
    {
      return 0;
    }
  }

  else if (v34 != v35)
  {
    return 0;
  }

  v36 = v12;
  v52 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0);
  v37 = *(v52 + 36);
  v38 = *(v36 + 48);
  sub_213FB2E54(a1 + v37, v14, &qword_27C909DB8, &qword_2146F5AF0);
  v53 = v38;
  sub_213FB2E54(a2 + v37, &v14[v38], &qword_27C909DB8, &qword_2146F5AF0);
  v39 = *(v5 + 48);
  if (v39(v14, 1, v4) != 1)
  {
    sub_213FB2E54(v14, v10, &qword_27C909DB8, &qword_2146F5AF0);
    v40 = v53;
    if (v39(&v14[v53], 1, v4) == 1)
    {
      sub_2144D6848(v10, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
      goto LABEL_46;
    }

    sub_2144D66AC(&v14[v40], v7, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    v42 = sub_2144D3860(v10);
    sub_2144D6848(v7, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    sub_2144D6848(v10, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    sub_213FB2DF4(v14, &qword_27C909DB8, &qword_2146F5AF0);
    if (v42)
    {
      goto LABEL_49;
    }

    return 0;
  }

  if (v39(&v14[v53], 1, v4) != 1)
  {
LABEL_46:
    sub_213FB2DF4(v14, &qword_27C914938, &qword_214755DA0);
    return 0;
  }

  sub_213FB2DF4(v14, &qword_27C909DB8, &qword_2146F5AF0);
LABEL_49:
  v43 = *(v52 + 40);
  v44 = a1 + v43;
  if (*(a1 + v43 + 21) & 1) != 0 || (v45 = a2 + v43, (*(v45 + 21)))
  {
LABEL_59:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v46 = *(v44 + 20);
  v47 = *(v44 + 16);
  v48 = v47 | (v46 << 32);
  v49 = *(v45 + 20);
  if ((v48 & 0x100000000) != 0)
  {
    return v49 & 1;
  }

  v50 = *(v45 + 16) | (v49 << 32);
  return (v50 & 0x100000000) == 0 && v47 == v50;
}

uint64_t sub_2144D4D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E38, &qword_2146F5B20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v46 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914920, &unk_214755D70);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = *(a1 + 24);
  if (v14 == 1)
  {
    goto LABEL_60;
  }

  v15 = *(a2 + 24);
  if (v15 == 1)
  {
    goto LABEL_60;
  }

  v16 = *(a1 + 16);
  if (v14)
  {
    if (!v15 || (v16 != *(a2 + 16) || v14 != v15) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v15)
    {
      return 0;
    }

    sub_213FDC9D0(*(a2 + 16), 0);
    sub_213FDC9D0(v16, 0);
  }

  v17 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (!*(a2 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = *(a1 + 80);
  if (v18 == 1)
  {
    goto LABEL_60;
  }

  v19 = *(a2 + 80);
  if (v19 == 1)
  {
    goto LABEL_60;
  }

  v20 = *(a1 + 72);
  if (v18)
  {
    if (!v19 || (v20 != *(a2 + 72) || v18 != v19) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v19)
    {
      return 0;
    }

    sub_213FDC9D0(*(a2 + 72), 0);
    sub_213FDC9D0(v20, 0);
  }

  v21 = *(a1 + 89);
  v22 = *(a2 + 89);
  if (v21 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }
  }

  else if (v22 == 2 || ((v22 ^ v21) & 1) != 0)
  {
    return 0;
  }

  v47 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0);
  v23 = *(v47 + 32);
  v24 = *(v11 + 48);
  sub_213FB2E54(a1 + v23, v13, &qword_27C909E38, &qword_2146F5B20);
  v25 = a2 + v23;
  v26 = v24;
  sub_213FB2E54(v25, &v13[v24], &qword_27C909E38, &qword_2146F5B20);
  v27 = *(v5 + 48);
  if (v27(v13, 1, v4) == 1)
  {
    if (v27(&v13[v26], 1, v4) == 1)
    {
      sub_213FB2DF4(v13, &qword_27C909E38, &qword_2146F5B20);
      goto LABEL_39;
    }

LABEL_37:
    sub_213FB2DF4(v13, &qword_27C914920, &unk_214755D70);
    return 0;
  }

  sub_213FB2E54(v13, v10, &qword_27C909E38, &qword_2146F5B20);
  if (v27(&v13[v26], 1, v4) == 1)
  {
    sub_2144D6848(v10, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
    goto LABEL_37;
  }

  sub_2144D66AC(&v13[v26], v7, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
  v29 = sub_2144D3214(v10, v7);
  sub_2144D6848(v7, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
  sub_2144D6848(v10, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
  sub_213FB2DF4(v13, &qword_27C909E38, &qword_2146F5B20);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  v30 = v47;
  v31 = *(v47 + 36);
  v32 = a1 + v31;
  v33 = *(a1 + v31 + 24);
  if (v33 == 1)
  {
    goto LABEL_60;
  }

  v34 = a2 + v31;
  v35 = *(v34 + 24);
  if (v35 == 1)
  {
    goto LABEL_60;
  }

  v36 = *(v32 + 16);
  if (!v33)
  {
    if (!v35)
    {
      sub_213FDC9D0(*(v34 + 16), 0);
      sub_213FDC9D0(v36, 0);
      goto LABEL_50;
    }

    return 0;
  }

  if (!v35 || (v36 != *(v34 + 16) || v33 != v35) && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  v37 = *(v30 + 40);
  v38 = a1 + v37;
  if (*(a1 + v37 + 21) & 1) != 0 || (v39 = a2 + v37, (*(v39 + 21)))
  {
LABEL_60:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v40 = *(v38 + 20);
  v41 = *(v38 + 16);
  v42 = v41 | (v40 << 32);
  v43 = *(v39 + 20);
  if ((v42 & 0x100000000) != 0)
  {
    return v43 & 1;
  }

  v44 = *(v39 + 16) | (v43 << 32);
  return (v44 & 0x100000000) == 0 && v41 == v44;
}

uint64_t sub_2144D5280(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  if (v3 == 1 || v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  if (!v3)
  {
    if (!v6)
    {
      sub_213FDC9D0(v5, 0);
      sub_213FDC9D0(v4, 0);
      return 1;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  if (v4 == v5 && v3 == v6)
  {
    return 1;
  }

  return sub_2146DA6A8();
}

uint64_t sub_2144D538C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v119 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0);
  v126 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v5 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907428, &unk_214755800);
  MEMORY[0x28223BE20](v6 - 8);
  v127 = &v114 - v7;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914940, &qword_214755DA8);
  MEMORY[0x28223BE20](v118);
  v120 = &v114 - v8;
  v9 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0);
  v123 = *(v9 - 8);
  v124 = v9;
  MEMORY[0x28223BE20](v9);
  v117 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907420, &unk_2146F4A40);
  MEMORY[0x28223BE20](v11 - 8);
  v121 = &v114 - v12;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914948, &qword_214755DB0);
  MEMORY[0x28223BE20](v122);
  v125 = &v114 - v13;
  v14 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907418, &unk_214755810);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v114 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914950, &qword_214755DB8);
  MEMORY[0x28223BE20](v21);
  v23 = &v114 - v22;
  v129 = a1;
  v24 = *a1;
  v25 = *a2;
  if (v24 == 8)
  {
    if (v25 != 8)
    {
      goto LABEL_26;
    }
  }

  else if (v24 != v25)
  {
    goto LABEL_26;
  }

  v115 = v5;
  v26 = type metadata accessor for IDSActivitySharingInvitation(0);
  v128 = a2;
  v116 = v26;
  v27 = *(v26 + 20);
  v28 = *(v21 + 48);
  sub_213FB2E54(&v129[v27], v23, &qword_27C907418, &unk_214755810);
  v29 = &v128[v27];
  v30 = v128;
  sub_213FB2E54(v29, &v23[v28], &qword_27C907418, &unk_214755810);
  v31 = *(v15 + 48);
  if (v31(v23, 1, v14) == 1)
  {
    if (v31(&v23[v28], 1, v14) == 1)
    {
      sub_213FB2DF4(v23, &qword_27C907418, &unk_214755810);
      goto LABEL_12;
    }

LABEL_10:
    v32 = &qword_27C914950;
    v33 = &qword_214755DB8;
    v34 = v23;
LABEL_25:
    sub_213FB2DF4(v34, v32, v33);
    goto LABEL_26;
  }

  sub_213FB2E54(v23, v20, &qword_27C907418, &unk_214755810);
  if (v31(&v23[v28], 1, v14) == 1)
  {
    sub_2144D6848(v20, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
    goto LABEL_10;
  }

  sub_2144D66AC(&v23[v28], v17, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
  v35 = sub_2144D42C4(v20, v17);
  sub_2144D6848(v17, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
  sub_2144D6848(v20, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
  sub_213FB2DF4(v23, &qword_27C907418, &unk_214755810);
  if ((v35 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  v36 = v116;
  v37 = *(v116 + 24);
  v38 = *(v122 + 48);
  v39 = v30;
  v40 = v125;
  sub_213FB2E54(&v129[v37], v125, &qword_27C907420, &unk_2146F4A40);
  v41 = v40;
  sub_213FB2E54(&v39[v37], v40 + v38, &qword_27C907420, &unk_2146F4A40);
  v42 = v124;
  v43 = *(v123 + 48);
  if (v43(v40, 1, v124) == 1)
  {
    v44 = v43(v40 + v38, 1, v42);
    v46 = v126;
    v45 = v127;
    if (v44 == 1)
    {
      sub_213FB2DF4(v41, &qword_27C907420, &unk_2146F4A40);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v47 = v121;
  sub_213FB2E54(v40, v121, &qword_27C907420, &unk_2146F4A40);
  v48 = v43(v40 + v38, 1, v42);
  v46 = v126;
  v45 = v127;
  if (v48 == 1)
  {
    sub_2144D6848(v47, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
LABEL_17:
    v32 = &qword_27C914948;
    v33 = &qword_214755DB0;
    v34 = v41;
    goto LABEL_25;
  }

  v49 = v117;
  sub_2144D66AC(v41 + v38, v117, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
  v50 = sub_2144D47E8(v47, v49);
  sub_2144D6848(v49, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
  sub_2144D6848(v47, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
  sub_213FB2DF4(v41, &qword_27C907420, &unk_2146F4A40);
  if ((v50 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_19:
  v51 = *(v36 + 28);
  v52 = *(v118 + 48);
  v53 = v120;
  sub_213FB2E54(&v129[v51], v120, &qword_27C907428, &unk_214755800);
  v54 = &v128[v51];
  v55 = v128;
  v56 = v53;
  sub_213FB2E54(v54, v53 + v52, &qword_27C907428, &unk_214755800);
  v57 = *(v46 + 48);
  v58 = v53;
  v59 = v119;
  if (v57(v58, 1, v119) == 1)
  {
    if (v57(v56 + v52, 1, v59) == 1)
    {
      sub_213FB2DF4(v56, &qword_27C907428, &unk_214755800);
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  sub_213FB2E54(v56, v45, &qword_27C907428, &unk_214755800);
  if (v57(v56 + v52, 1, v59) == 1)
  {
    sub_2144D6848(v45, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
LABEL_24:
    v32 = &qword_27C914940;
    v33 = &qword_214755DA8;
    v34 = v56;
    goto LABEL_25;
  }

  v62 = v56 + v52;
  v63 = v115;
  sub_2144D66AC(v62, v115, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
  v64 = sub_2144D4D48(v45, v63);
  sub_2144D6848(v63, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
  sub_2144D6848(v45, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
  sub_213FB2DF4(v56, &qword_27C907428, &unk_214755800);
  if ((v64 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_29:
  v65 = *(v36 + 32);
  v66 = v55;
  v68 = *&v129[v65];
  v67 = *&v129[v65 + 8];
  v70 = *&v129[v65 + 16];
  v69 = *&v129[v65 + 24];
  v71 = v129[v65 + 32];
  v72 = &v66[v65];
  v73 = *v72;
  v74 = *(v72 + 1);
  v76 = *(v72 + 2);
  v75 = *(v72 + 3);
  v77 = v72[32];
  LODWORD(v127) = v77;
  if (!v68)
  {
    sub_21431326C(0, v67, v70, v69);
    if (!v73)
    {
      sub_21431326C(0, v74, v76, v75);
      sub_214313220(0, v67, v70, v69);
      goto LABEL_38;
    }

    sub_21431326C(v73, v74, v76, v75);
LABEL_36:
    sub_214313220(v68, v67, v70, v69);
    sub_214313220(v73, v74, v76, v75);
    goto LABEL_26;
  }

  *v139 = v68;
  *&v139[8] = v67;
  *&v139[16] = v70;
  *&v139[24] = v69;
  v139[32] = v71;
  if (!v73)
  {
    v129 = v75;
    sub_21431326C(v68, v67, v70, v69);
    v75 = v129;
    sub_21431326C(0, v74, v76, v129);
    sub_21431326C(v68, v67, v70, v69);

    sub_213FDC6D0(v70, v69);
    goto LABEL_36;
  }

  *&v158 = v73;
  *(&v158 + 1) = v74;
  *&v159 = v76;
  *(&v159 + 1) = v75;
  LOBYTE(v160) = v77;
  LODWORD(v126) = sub_2144D3604(v139, &v158);
  v125 = v159;
  v123 = *(&v158 + 1);
  v124 = *(&v159 + 1);
  sub_21431326C(v68, v67, v70, v69);
  sub_21431326C(v73, v74, v76, v75);
  sub_21431326C(v68, v67, v70, v69);

  sub_213FDC6D0(v125, v124);
  v78 = *&v139[16];
  v79 = *&v139[24];

  sub_213FDC6D0(v78, v79);
  sub_214313220(v68, v67, v70, v69);
  if ((v126 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_38:
  v80 = v116;
  v81 = &v129[*(v116 + 36)];
  v82 = *(v81 + 3);
  v156[2] = *(v81 + 2);
  v157[0] = v82;
  *(v157 + 9) = *(v81 + 57);
  v83 = *(v81 + 1);
  v156[0] = *v81;
  v156[1] = v83;
  v84 = &v128[*(v116 + 36)];
  v85 = *(v84 + 1);
  v86 = *(v84 + 2);
  *(v161 + 9) = *(v84 + 57);
  v87 = *(v84 + 3);
  v160 = v86;
  v161[0] = v87;
  v158 = *v84;
  v159 = v85;
  v88 = *&v156[0];
  v89 = *(v81 + 24);
  v90 = *(v81 + 56);
  v153 = *(v81 + 40);
  v154 = v90;
  v155 = v81[72];
  v151 = *(v81 + 8);
  v152 = v89;
  v91 = v158;
  v92 = *(v84 + 24);
  v93 = *(v84 + 56);
  v148 = *(v84 + 40);
  v149 = v93;
  v150 = v84[72];
  v146 = *(v84 + 8);
  v147 = v92;
  if (*&v156[0])
  {
    *v139 = *&v156[0];
    *&v139[8] = *(v81 + 8);
    *&v139[24] = *(v81 + 24);
    *&v139[40] = *(v81 + 40);
    *&v139[56] = *(v81 + 56);
    v139[72] = v81[72];
    v137 = *&v139[32];
    v138[0] = *&v139[48];
    *(v138 + 9) = *&v139[57];
    v135 = *v139;
    v136 = *&v139[16];
    if (v158)
    {
      *&v134[24] = *(v84 + 24);
      *&v134[40] = *(v84 + 40);
      *&v134[56] = *(v84 + 56);
      v134[72] = v84[72];
      *&v134[8] = *(v84 + 8);
      *v134 = v158;
      v94 = sub_2144D36F0(&v135, v134);
      v130[2] = *&v134[32];
      v131[0] = *&v134[48];
      *(v131 + 9) = *&v134[57];
      v130[0] = *v134;
      v130[1] = *&v134[16];
      sub_213FB2E54(v156, v132, &qword_27C9074A0, &qword_2146F4A68);
      sub_213FB2E54(&v158, v132, &qword_27C9074A0, &qword_2146F4A68);
      sub_213FB2E54(v139, v132, &qword_27C9074A0, &qword_2146F4A68);
      sub_21430ABD0(v130);
      v132[2] = v137;
      v133[0] = v138[0];
      *(v133 + 9) = *(v138 + 9);
      v132[0] = v135;
      v132[1] = v136;
      sub_21430ABD0(v132);
      *v134 = v88;
      *&v134[24] = v152;
      *&v134[40] = v153;
      *&v134[56] = v154;
      v134[72] = v155;
      *&v134[8] = v151;
      sub_213FB2DF4(v134, &qword_27C9074A0, &qword_2146F4A68);
      if ((v94 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_47;
    }

    *&v134[32] = *&v139[32];
    *&v134[48] = *&v139[48];
    *&v134[57] = *&v139[57];
    *v134 = *v139;
    *&v134[16] = *&v139[16];
    sub_213FB2E54(v156, v132, &qword_27C9074A0, &qword_2146F4A68);
    sub_213FB2E54(&v158, v132, &qword_27C9074A0, &qword_2146F4A68);
    sub_213FB2E54(v139, v132, &qword_27C9074A0, &qword_2146F4A68);
    sub_21430ABD0(v134);
    goto LABEL_45;
  }

  if (v158)
  {
    sub_213FB2E54(v156, v139, &qword_27C9074A0, &qword_2146F4A68);
    sub_213FB2E54(&v158, v139, &qword_27C9074A0, &qword_2146F4A68);
LABEL_45:
    *&v139[24] = v152;
    *&v139[40] = v153;
    *&v139[56] = v154;
    *&v139[8] = v151;
    v142 = v147;
    v143 = v148;
    v144 = v149;
    *v139 = v88;
    v139[72] = v155;
    v140 = v91;
    v145 = v150;
    v141 = v146;
    v32 = &unk_27C914958;
    v33 = &unk_214755DC0;
    v34 = v139;
    goto LABEL_25;
  }

  *v139 = 0;
  *&v139[24] = *(v81 + 24);
  *&v139[40] = *(v81 + 40);
  *&v139[56] = *(v81 + 56);
  v139[72] = v81[72];
  *&v139[8] = *(v81 + 8);
  sub_213FB2E54(v156, &v135, &qword_27C9074A0, &qword_2146F4A68);
  sub_213FB2E54(&v158, &v135, &qword_27C9074A0, &qword_2146F4A68);
  sub_213FB2DF4(v139, &qword_27C9074A0, &qword_2146F4A68);
LABEL_47:
  v95 = *(v80 + 40);
  v97 = *&v129[v95];
  v96 = *&v129[v95 + 8];
  v99 = *&v129[v95 + 16];
  v98 = *&v129[v95 + 24];
  v101 = *&v129[v95 + 32];
  v100 = *&v129[v95 + 40];
  v102 = v129[v95 + 48];
  v103 = &v128[v95];
  v105 = *v103;
  v104 = *(v103 + 1);
  v107 = *(v103 + 2);
  v106 = *(v103 + 3);
  v109 = *(v103 + 4);
  v108 = *(v103 + 5);
  LODWORD(v129) = v103[48];
  v127 = v109;
  v128 = v108;
  v125 = v105;
  v126 = v106;
  v124 = v104;
  if (v99)
  {
    *v139 = v97;
    *&v139[8] = v96;
    *&v139[16] = v99;
    *&v139[24] = v98;
    *&v139[32] = v101;
    *&v139[40] = v100;
    v139[48] = v102;
    if (v107)
    {
      *&v135 = v105;
      BYTE8(v135) = v104 & 1;
      *&v136 = v107;
      *(&v136 + 1) = v106;
      *&v137 = v109;
      *(&v137 + 1) = v108;
      LOBYTE(v138[0]) = v129;
      v60 = sub_2144D5280(v139, &v135);
      v123 = v137;
      v121 = *(&v136 + 1);
      v122 = *(&v137 + 1);
      sub_2144D6614(v97, v96, v99, v98, v101, v100);
      sub_2144D6614(v125, v124, v107, v126, v127, v128);
      sub_2144D6614(v97, v96, v99, v98, v101, v100);

      sub_213FDC6D0(v123, v122);
      v110 = *&v139[32];
      LODWORD(v129) = v102;
      v111 = *&v139[40];

      sub_213FDC6D0(v110, v111);
      sub_2144D6660(v97, v96, v99, v98, v101, v100);
      return v60 & 1;
    }

    sub_2144D6614(v97, v96, v99, v98, v101, v100);
    v113 = v105;
    v112 = v124;
    sub_2144D6614(v113, v124, 0, v126, v127, v128);
    sub_2144D6614(v97, v96, v99, v98, v101, v100);

    sub_213FDC6D0(v101, v100);
  }

  else
  {
    sub_2144D6614(v97, v96, 0, v98, v101, v100);
    if (!v107)
    {
      sub_2144D6614(v125, v124, 0, v126, v127, v128);
      sub_2144D6660(v97, v96, 0, v98, v101, v100);
      v60 = 1;
      return v60 & 1;
    }

    v112 = v124;
    sub_2144D6614(v125, v124, v107, v126, v127, v128);
  }

  sub_2144D6660(v97, v96, v99, v98, v101, v100);
  sub_2144D6660(v125, v112, v107, v126, v127, v128);
LABEL_26:
  v60 = 0;
  return v60 & 1;
}

unint64_t sub_2144D645C()
{
  result = qword_27C9148F8;
  if (!qword_27C9148F8)
  {
    result = swift_getWitnessTable(byte_214755820, &type metadata for ActivitySharingInvitationError, v0, v1);
    atomic_store(result, &qword_27C9148F8);
  }

  return result;
}

unint64_t sub_2144D64B4()
{
  result = qword_27C914900;
  if (!qword_27C914900)
  {
    result = swift_getWitnessTable(byte_214755900, &type metadata for ActivitySharingRawTransportItem, v0, v1);
    atomic_store(result, &qword_27C914900);
  }

  return result;
}

unint64_t sub_2144D650C()
{
  result = qword_27C914908;
  if (!qword_27C914908)
  {
    result = swift_getWitnessTable(aG_4, &type metadata for ActivitySharingRawSeymourMediaType, v0, v1);
    atomic_store(result, &qword_27C914908);
  }

  return result;
}

uint64_t sub_2144D6590(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2144D65A8(uint64_t a1)
{
  v1 = *(a1 + 368);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_2144D6614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {

    sub_213FDC9D0(a5, a6);
  }
}

void sub_2144D6660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {

    sub_213FDC6D0(a5, a6);
  }
}

uint64_t sub_2144D66AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_2144D6714(_OWORD *a1)
{
  result = 0.0;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 377) = 0u;
  return result;
}

double sub_2144D6754(_OWORD *a1)
{
  result = 0.0;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 345) = 0u;
  return result;
}

void sub_2144D6790(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2144CD6C0(*a1, a3);
  if (v3)
  {
    *a2 = v3;
  }
}

void sub_2144D67C8(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2144CCE00(*a1, a3);
  if (v3)
  {
    *a2 = v3;
  }
}

uint64_t sub_2144D6800(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2144D6848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_2144D6904@<X0>(void *__src@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  memcpy(__dst, __src, 0x121uLL);
  result = sub_2144D0BBC(__dst);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

id sub_2144D6978@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 144);
  v12[8] = *(a1 + 128);
  v12[9] = v6;
  v13 = *(a1 + 160);
  v7 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v7;
  v8 = *(a1 + 112);
  v12[6] = *(a1 + 96);
  v12[7] = v8;
  v9 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v9;
  v10 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v10;
  result = sub_2144D1114(v12);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_2144D6A04()
{
  v1 = v0 + *(type metadata accessor for MessagesAppBalloon(0) + 48);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

uint64_t type metadata accessor for MessagesAppBalloon(uint64_t a1)
{
  result = qword_280B30420;
  if (!qword_280B30420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2144D6AE0@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2144D6B78@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MessagesAppBalloon(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_2144D6BE4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for MessagesAppBalloon(0) + 48));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

__n128 sub_2144D6C5C(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}