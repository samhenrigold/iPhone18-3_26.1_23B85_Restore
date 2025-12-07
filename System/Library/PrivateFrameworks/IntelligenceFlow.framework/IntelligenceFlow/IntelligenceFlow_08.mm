uint64_t sub_1DD795964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7957E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79598C(uint64_t a1)
{
  v2 = sub_1DD797F8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7959C8(uint64_t a1)
{
  v2 = sub_1DD797F8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD795A04(uint64_t a1)
{
  v2 = sub_1DD798034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD795A40(uint64_t a1)
{
  v2 = sub_1DD798034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD795A7C(uint64_t a1)
{
  v2 = sub_1DD798088();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD795AB8(uint64_t a1)
{
  v2 = sub_1DD798088();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD795AF4(uint64_t a1)
{
  v2 = sub_1DD797FE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD795B30(uint64_t a1)
{
  v2 = sub_1DD797FE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DebuggerSettings.DebuggerMode.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  sub_1DD710A9C(&qword_1ECD10958, &qword_1DD887070);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6E0C6C();
  sub_1DD710A9C(&qword_1ECD10960, &qword_1DD887078);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E0C6C();
  sub_1DD710A9C(&qword_1ECD10968, &qword_1DD887080);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEA6C();
  v7 = sub_1DD710A9C(&qword_1ECD10970, &qword_1DD887088);
  sub_1DD6DDEAC();
  v9 = v8;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DDFE4();
  v11 = *v0;
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD797F8C();
  sub_1DD875BB0();
  if (v11)
  {
    if (v11 == 1)
    {
      sub_1DD6DEC54();
      sub_1DD798034();
    }

    else
    {
      sub_1DD6EFF88();
      sub_1DD797FE0();
    }

    sub_1DD6E6CC4();
    sub_1DD875910();
  }

  else
  {
    sub_1DD798088();
    sub_1DD6E6CC4();
    sub_1DD875910();
  }

  v12 = sub_1DD6DED98();
  v13(v12);
  (*(v9 + 8))(v1, v7);
  sub_1DD6E0C78();
}

uint64_t _s16IntelligenceFlow14GenderSettingsV0C0O9hashValueSivg_0()
{
  sub_1DD6DEDA4();
  sub_1DD6FA750();
  return sub_1DD875B60();
}

void DebuggerSettings.DebuggerMode.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1DD6DED2C();
  v90 = v24;
  v28 = v27;
  v85 = v29;
  v89 = sub_1DD710A9C(&qword_1ECD10998, &qword_1DD887090);
  sub_1DD6DDEAC();
  v86 = v30;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6E0C6C();
  v88 = v32;
  sub_1DD710A9C(&qword_1ECD109A0, &qword_1DD887098);
  sub_1DD6DDEAC();
  v83 = v34;
  v84 = v33;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD6DE340();
  v36 = sub_1DD710A9C(&qword_1ECD109A8, &qword_1DD8870A0);
  sub_1DD6DDEAC();
  v82 = v37;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v77 - v39;
  v41 = sub_1DD710A9C(&qword_1ECD109B0, &qword_1DD8870A8);
  sub_1DD6DDEAC();
  v87 = v42;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1DD6DEBA0();
  sub_1DD6DEA7C(v28, v28[3]);
  sub_1DD797F8C();
  sub_1DD6E4218();
  v44 = v90;
  sub_1DD875B90();
  if (v44)
  {
    goto LABEL_11;
  }

  v79 = v36;
  v80 = v40;
  v81 = v25;
  v46 = v88;
  v45 = v89;
  v90 = v28;
  sub_1DD875900();
  sub_1DD6ED750();
  if (v48 == v47 >> 1)
  {
    goto LABEL_10;
  }

  sub_1DD6E6120();
  v78 = 0;
  if (v52 < (v51 >> 1))
  {
    LODWORD(v53) = *(v50 + v49);
    sub_1DD6ED830();
    v55 = v54;
    v57 = v56;
    swift_unknownObjectRelease();
    v58 = v55 == v57 >> 1;
    v59 = v86;
    if (!v58)
    {
LABEL_10:
      v65 = sub_1DD875740();
      swift_allocError();
      v67 = v66;
      sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
      *v67 = &type metadata for DebuggerSettings.DebuggerMode;
      v68 = sub_1DD875810();
      sub_1DD6DF100(v68);
      (*(*(v65 - 8) + 104))(v67, *MEMORY[0x1E69E6AF8], v65);
      swift_willThrow();
      swift_unknownObjectRelease();
      sub_1DD700D7C();
      v69(v26, v41);
      v28 = v90;
LABEL_11:
      sub_1DD6E1EC8(v28);
LABEL_12:
      sub_1DD6E0C78();
      return;
    }

    if (v53)
    {
      if (v53 == 1)
      {
        sub_1DD6DEC54();
        sub_1DD798034();
        v60 = v81;
        sub_1DD79A3A4();
        v61 = v78;
        sub_1DD875800();
        v62 = v85;
        v63 = v41;
        v64 = v87;
        if (v61)
        {
          (*(v87 + 8))(v26, v63);
LABEL_17:
          swift_unknownObjectRelease();
          v28 = v90;
          goto LABEL_11;
        }

        swift_unknownObjectRelease();
        (*(v83 + 8))(v60, v84);
        (*(v64 + 8))(v26, v63);
      }

      else
      {
        LODWORD(v84) = v53;
        sub_1DD6EFF88();
        sub_1DD797FE0();
        sub_1DD79A3A4();
        v72 = v78;
        sub_1DD875800();
        v62 = v85;
        v53 = v41;
        v73 = v87;
        if (v72)
        {
          (*(v87 + 8))(v26, v53);
          goto LABEL_17;
        }

        swift_unknownObjectRelease();
        (*(v59 + 8))(v46, v45);
        (*(v73 + 8))(v26, v53);
        LOBYTE(v53) = v84;
      }
    }

    else
    {
      sub_1DD798088();
      sub_1DD79A3A4();
      v70 = v78;
      sub_1DD875800();
      if (v70)
      {
        sub_1DD700D7C();
        v71(v26, v41);
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
      v74 = sub_1DD6DED98();
      v75(v74, v79);
      sub_1DD700D7C();
      v76(v26, v41);
      v62 = v85;
    }

    *v62 = v53;
    sub_1DD6E1EC8(v90);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_1DD79652C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ELL && 0x80000001DD8B6210 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001DD8B6230 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001FLL && 0x80000001DD8B6250 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1DD796694(char a1)
{
  result = 1701080941;
  switch(a1)
  {
    case 1:
      v3 = 10;
      goto LABEL_5;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      v3 = 11;
LABEL_5:
      result = v3 | 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD796720(uint64_t a1)
{
  sub_1DD875B20();
  sub_1DD6FA750();
  return sub_1DD875B60();
}

uint64_t sub_1DD796764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79652C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79678C(uint64_t a1)
{
  v2 = sub_1DD7980DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7967C8(uint64_t a1)
{
  v2 = sub_1DD7980DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DebuggerSettings.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  sub_1DD710A9C(&qword_1ECD109B8, &qword_1DD8870B0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEA6C();
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD7980DC();
  sub_1DD6E17D8();
  sub_1DD875BB0();
  sub_1DD798130();
  sub_1DD6E5334();
  sub_1DD8759D0();
  if (!v0)
  {
    sub_1DD6E4104();
    sub_1DD6E5334();
    sub_1DD875980();
    sub_1DD6E5334();
    sub_1DD875980();
    sub_1DD6E5334();
    sub_1DD875980();
  }

  v4 = sub_1DD6DEA04();
  v5(v4);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void DebuggerSettings.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1DD6DED2C();
  v15 = v14;
  v17 = v16;
  v18 = sub_1DD710A9C(&qword_1ECD109D0, &qword_1DD8870B8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v20 = sub_1DD7980DC();
  sub_1DD6FC48C(&type metadata for DebuggerSettings.CodingKeys, v21, v20);
  if (!v13)
  {
    sub_1DD798184();
    sub_1DD6F178C();
    sub_1DD8758D0();
    sub_1DD6E4104();
    sub_1DD6F178C();
    v22 = sub_1DD875880();
    sub_1DD6F178C();
    v26 = sub_1DD875880();
    sub_1DD6F178C();
    v23 = sub_1DD875880();
    v24 = sub_1DD6E27B0();
    v25(v24, v18);
    *v17 = a13;
    v17[1] = v22 & 1;
    v17[2] = v26 & 1;
    v17[3] = v23 & 1;
  }

  sub_1DD6E1EC8(v15);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD796BD4@<X0>(_DWORD *a1@<X8>)
{
  result = DeviceDetails.DeviceType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t (*DeviceDetails.DeviceType.rawValue.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_1DD796C44;
}

void sub_1DD796C5C(uint64_t a1@<X8>)
{
  DeviceDetails.DeviceType.init(rawValue:)(&v2);
  *a1 = v2;
  *(a1 + 4) = 0;
}

uint64_t sub_1DD796C9C@<X0>(_DWORD *a1@<X8>)
{
  result = DeviceDetails.DeviceType.rawValue.getter();
  *a1 = result;
  return result;
}

void sub_1DD796DA4(uint64_t a1@<X8>)
{
  v2 = sub_1DD874ED0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = IDSCopyLocalDeviceUniqueID();
  if (v6)
  {
    v7 = v6;
    v8 = sub_1DD875140();
    v10 = v9;
  }

  else
  {
    sub_1DD874C00();
    v11 = sub_1DD874EC0();
    v12 = sub_1DD8754F0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DD6DC000, v11, v12, "Unexpectedly obtained nil value from IDSCopyLocalDeviceUniqueID()", v13, 2u);
      MEMORY[0x1E12B5DE0](v13, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v14 = MobileGestalt_get_current_device();
  if (v14)
  {
    v15 = v14;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber)
    {
      v17 = deviceClassNumber;
    }

    else
    {
      v17 = -1;
    }

    *a1 = v8;
    *(a1 + 8) = v10;
    *(a1 + 16) = v17;
  }

  else
  {
    __break(1u);
  }
}

uint64_t DeviceDetails.init(deviceIdsId:type:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

double static DeviceDetails.current.getter()
{
  if (qword_1ECD0DF98 != -1)
  {
    sub_1DD6E0FC0(&qword_1ECD0DF98);
  }

  sub_1DD6E87C4(&qword_1ECD10830);

  return result;
}

uint64_t DeviceDetails.deviceIdsId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

BOOL DeviceDetails.isCurrentDevice.getter()
{
  if (qword_1ECD0DF98 != -1)
  {
    sub_1DD6E0FC0(&qword_1ECD0DF98);
  }

  v1 = dword_1ECD10840;
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  if (v2 == qword_1ECD10830 && v3 == *algn_1ECD10838)
  {
    return v4 == v1;
  }

  v6 = sub_1DD875A30();
  result = 0;
  if (v6)
  {
    return v4 == v1;
  }

  return result;
}

BOOL static DeviceDetails.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1DD875A30();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1DD797138(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656369766564 && a2 == 0xEB00000000644973;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD797204(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x6449656369766564;
  }
}

uint64_t sub_1DD797244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD797138(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79726C(uint64_t a1)
{
  v2 = sub_1DD7981D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7972A8(uint64_t a1)
{
  v2 = sub_1DD7981D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DeviceDetails.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD109E0, &qword_1DD8870C0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DEA6C();
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD7981D8();
  sub_1DD6E17D8();
  sub_1DD875BB0();
  sub_1DD6DE334();
  sub_1DD875970();
  if (!v0)
  {
    sub_1DD6DEC54();
    sub_1DD79822C();
    sub_1DD6E5334();
    sub_1DD8759D0();
  }

  v5 = sub_1DD6DED98();
  v6(v5, v3);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void DeviceDetails.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1DD6DED2C();
  sub_1DD6E1C58();
  v26 = sub_1DD710A9C(&qword_1ECD109F8, &qword_1DD8870C8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD7981D8();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (v24)
  {
    sub_1DD6E1EC8(v23);
  }

  else
  {
    v28 = sub_1DD875870();
    v30 = v29;
    sub_1DD6DEC54();
    sub_1DD798280();
    sub_1DD8758D0();
    v31 = sub_1DD6E27B0();
    v32(v31, v26);
    *v25 = v28;
    *(v25 + 8) = v30;
    *(v25 + 16) = a10;

    sub_1DD6E1EC8(v23);
  }

  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

uint64_t static AuditToken.currentProcess.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD874C10();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1DD79763C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x72656E6E69 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7976B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79763C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7976DC(uint64_t a1)
{
  v2 = sub_1DD6E9838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD797718(uint64_t a1)
{
  v2 = sub_1DD6E9838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD797794@<D0>(uint64_t a1@<X8>)
{
  AuditToken.init(rawValue:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1DD7977DC@<X0>(uint64_t *a1@<X8>)
{
  result = AuditToken.inner.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t ClientIdentityChain.identities.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t static ClientIdentity.getIdentityForCurrentProcess()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DD874C10();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1DD874CA0();
  result = sub_1DD874C60();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1DD7978C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x697469746E656469 && a2 == 0xEA00000000007365)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD797940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7978C0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD79796C(uint64_t a1)
{
  v2 = sub_1DD6E902C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7979A8(uint64_t a1)
{
  v2 = sub_1DD6E902C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static MachIdentityToken.newTokenForCurrentProcess()()
{
  sub_1DD6E0A5C();
  sub_1DD874CA0();
  result = sub_1DD874C60();
  *v0 = result;
  return result;
}

__n128 ClientIdentity.init(untrustedAuditToken:identityToken:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  result = *a1;
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
  return result;
}

__n128 ClientIdentity.untrustedAuditToken.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1DD797A50@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 5);
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  v10 = v3;
  v11 = v4;
  result = ClientIdentity.identityToken.getter(&v7);
  *a2 = v7;
  return result;
}

uint64_t sub_1DD797AA4(uint64_t *a1)
{
  v2 = *a1;

  return ClientIdentity.identityToken.setter(&v2);
}

uint64_t ClientIdentity.identityToken.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 40) = v2;
  return result;
}

uint64_t ClientIdentity.identityToken.modify(void *a1)
{
  *a1 = *(v1 + 40);
  a1[1] = v1;

  return sub_1DD6E21D0();
}

uint64_t sub_1DD797B54(void *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {

    *(v3 + 40) = v2;
  }

  else
  {

    *(v3 + 40) = v2;
  }

  return result;
}

uint64_t sub_1DD797BC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001DD8B6270 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469746E6564695FLL && a2 == 0xEE006E656B6F5479)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD797CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD797BC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD797CC8(uint64_t a1)
{
  v2 = sub_1DD6E9318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD797D04(uint64_t a1)
{
  v2 = sub_1DD6E9318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MachIdentityToken.init(copyingToken:)@<X0>(uint64_t *a2@<X8>)
{
  sub_1DD874CA0();
  swift_allocObject();
  result = sub_1DD874C70();
  *a2 = result;
  return result;
}

uint64_t MachIdentityToken.init(xpcObject:)@<X0>(uint64_t *a2@<X8>)
{
  sub_1DD874CA0();
  swift_allocObject();
  result = sub_1DD874C80();
  *a2 = result;
  return result;
}

unint64_t sub_1DD797DE8()
{
  result = qword_1ECD108B0;
  if (!qword_1ECD108B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD108B0);
  }

  return result;
}

unint64_t sub_1DD797E3C()
{
  result = qword_1ECD108B8;
  if (!qword_1ECD108B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD108B8);
  }

  return result;
}

unint64_t sub_1DD797E90()
{
  result = qword_1ECD108C8;
  if (!qword_1ECD108C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD108C8);
  }

  return result;
}

unint64_t sub_1DD797EE4()
{
  result = qword_1ECD10910;
  if (!qword_1ECD10910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10910);
  }

  return result;
}

unint64_t sub_1DD797F38()
{
  result = qword_1ECD10918;
  if (!qword_1ECD10918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10918);
  }

  return result;
}

unint64_t sub_1DD797F8C()
{
  result = qword_1ECD10978;
  if (!qword_1ECD10978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10978);
  }

  return result;
}

unint64_t sub_1DD797FE0()
{
  result = qword_1ECD10980;
  if (!qword_1ECD10980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10980);
  }

  return result;
}

unint64_t sub_1DD798034()
{
  result = qword_1ECD10988;
  if (!qword_1ECD10988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10988);
  }

  return result;
}

unint64_t sub_1DD798088()
{
  result = qword_1ECD10990;
  if (!qword_1ECD10990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10990);
  }

  return result;
}

unint64_t sub_1DD7980DC()
{
  result = qword_1ECD109C0;
  if (!qword_1ECD109C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD109C0);
  }

  return result;
}

unint64_t sub_1DD798130()
{
  result = qword_1ECD109C8;
  if (!qword_1ECD109C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD109C8);
  }

  return result;
}

unint64_t sub_1DD798184()
{
  result = qword_1ECD109D8;
  if (!qword_1ECD109D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD109D8);
  }

  return result;
}

unint64_t sub_1DD7981D8()
{
  result = qword_1ECD109E8;
  if (!qword_1ECD109E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD109E8);
  }

  return result;
}

unint64_t sub_1DD79822C()
{
  result = qword_1ECD109F0;
  if (!qword_1ECD109F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD109F0);
  }

  return result;
}

unint64_t sub_1DD798280()
{
  result = qword_1ECD10A00;
  if (!qword_1ECD10A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10A00);
  }

  return result;
}

unint64_t sub_1DD7982D4(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1DD717E88(&qword_1ECD10A20, &qword_1DD8870E8);
    v4();
    sub_1DD6E5CB8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD798340()
{
  result = qword_1EE015870;
  if (!qword_1EE015870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015870);
  }

  return result;
}

unint64_t sub_1DD798394()
{
  result = qword_1EE015868;
  if (!qword_1EE015868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015868);
  }

  return result;
}

unint64_t sub_1DD7983EC()
{
  result = qword_1EE015458;
  if (!qword_1EE015458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015458);
  }

  return result;
}

unint64_t sub_1DD798488()
{
  result = qword_1ECD10A58;
  if (!qword_1ECD10A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10A58);
  }

  return result;
}

unint64_t sub_1DD798528()
{
  result = qword_1ECD10A68;
  if (!qword_1ECD10A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10A68);
  }

  return result;
}

unint64_t sub_1DD798580()
{
  result = qword_1ECD10A70;
  if (!qword_1ECD10A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10A70);
  }

  return result;
}

unint64_t sub_1DD7985D8()
{
  result = qword_1ECD10A78;
  if (!qword_1ECD10A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10A78);
  }

  return result;
}

unint64_t sub_1DD798630()
{
  result = qword_1ECD10A80;
  if (!qword_1ECD10A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10A80);
  }

  return result;
}

unint64_t sub_1DD798688()
{
  result = qword_1ECD10A88;
  if (!qword_1ECD10A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10A88);
  }

  return result;
}

uint64_t sub_1DD7986DC(uint64_t a1)
{
  sub_1DD76F160(319, &qword_1EE017388, &type metadata for SessionConfiguration.PlannerType);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1DD79890C(319, &qword_1EE015DE0, &qword_1ECD10850, &unk_1DD886FA0);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1DD79890C(319, &qword_1EE015DF0, &qword_1ECD10818, &qword_1DD886DA8);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_1DD76F160(319, &qword_1EE015DB0, MEMORY[0x1E69E6370]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_1DD798960(319);
          if (v11 > 0x3F)
          {
            return v10;
          }

          sub_1DD76F160(319, &qword_1EE017380, &type metadata for SessionConfiguration.ParticipantSettings);
          if (v12 > 0x3F)
          {
            return v10;
          }

          sub_1DD76F160(319, qword_1EE017630, &type metadata for DebuggerSettings);
          if (v13 > 0x3F)
          {
            return v10;
          }

          sub_1DD76F160(319, &qword_1EE017460, &type metadata for ClientIdentityChain);
          if (v14 > 0x3F)
          {
            return v10;
          }

          sub_1DD76F160(319, qword_1EE018820, &type metadata for DeviceDetails);
          if (v15 > 0x3F)
          {
            return v10;
          }

          sub_1DD76F160(319, &qword_1EE018658, &type metadata for GenderSettings);
          if (v16 > 0x3F)
          {
            return v10;
          }

          else
          {
            sub_1DD76F160(319, &qword_1EE017000, &type metadata for CrossAPIAssociationKey);
            v2 = v17;
            if (v18 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_1DD79890C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1DD717E88(a3, a4);
    v5 = sub_1DD8755C0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DD798960(uint64_t a1)
{
  if (!qword_1EE0185F8[0])
  {
    type metadata accessor for LocaleSettings(255);
    v1 = sub_1DD8755C0();
    if (!v2)
    {
      atomic_store(v1, qword_1EE0185F8);
    }
  }
}

uint64_t sub_1DD7989C8(uint64_t a1)
{
  result = sub_1DD874890();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_1DD798A4C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DD798A70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD798AC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_1DD798B2C(uint64_t a1)
{
  result = sub_1DD8755C0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD798B9C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
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
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  v14 = sub_1DD6E5ED0(a1, v5, v4);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1DD798D14(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
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
          v6 = v16;
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

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            sub_1DD6E5E68(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1DD799088()
{
  result = qword_1ECD10A90;
  if (!qword_1ECD10A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10A90);
  }

  return result;
}

unint64_t sub_1DD7990E0()
{
  result = qword_1ECD10A98;
  if (!qword_1ECD10A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10A98);
  }

  return result;
}

unint64_t sub_1DD799138()
{
  result = qword_1ECD10AA0;
  if (!qword_1ECD10AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AA0);
  }

  return result;
}

unint64_t sub_1DD799190()
{
  result = qword_1ECD10AA8;
  if (!qword_1ECD10AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AA8);
  }

  return result;
}

unint64_t sub_1DD7991E8()
{
  result = qword_1ECD10AB0;
  if (!qword_1ECD10AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AB0);
  }

  return result;
}

unint64_t sub_1DD799240()
{
  result = qword_1ECD10AB8;
  if (!qword_1ECD10AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AB8);
  }

  return result;
}

unint64_t sub_1DD799298()
{
  result = qword_1ECD10AC0;
  if (!qword_1ECD10AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AC0);
  }

  return result;
}

unint64_t sub_1DD7992F0()
{
  result = qword_1ECD10AC8;
  if (!qword_1ECD10AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AC8);
  }

  return result;
}

unint64_t sub_1DD799348()
{
  result = qword_1ECD10AD0;
  if (!qword_1ECD10AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AD0);
  }

  return result;
}

unint64_t sub_1DD7993A0()
{
  result = qword_1ECD10AD8;
  if (!qword_1ECD10AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AD8);
  }

  return result;
}

unint64_t sub_1DD7993F8()
{
  result = qword_1ECD10AE0;
  if (!qword_1ECD10AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AE0);
  }

  return result;
}

unint64_t sub_1DD799450()
{
  result = qword_1ECD10AE8;
  if (!qword_1ECD10AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AE8);
  }

  return result;
}

unint64_t sub_1DD7994A8()
{
  result = qword_1EE018760;
  if (!qword_1EE018760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018760);
  }

  return result;
}

unint64_t sub_1DD799500()
{
  result = qword_1EE018768;
  if (!qword_1EE018768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018768);
  }

  return result;
}

unint64_t sub_1DD799558()
{
  result = qword_1EE017468;
  if (!qword_1EE017468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE017468);
  }

  return result;
}

unint64_t sub_1DD7995B0()
{
  result = qword_1EE017470;
  if (!qword_1EE017470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE017470);
  }

  return result;
}

unint64_t sub_1DD799608()
{
  result = qword_1EE018C80;
  if (!qword_1EE018C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018C80);
  }

  return result;
}

unint64_t sub_1DD799660()
{
  result = qword_1EE018C88;
  if (!qword_1EE018C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018C88);
  }

  return result;
}

unint64_t sub_1DD7996B8()
{
  result = qword_1ECD10AF0;
  if (!qword_1ECD10AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AF0);
  }

  return result;
}

unint64_t sub_1DD799710()
{
  result = qword_1ECD10AF8;
  if (!qword_1ECD10AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10AF8);
  }

  return result;
}

unint64_t sub_1DD799768()
{
  result = qword_1ECD10B00;
  if (!qword_1ECD10B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B00);
  }

  return result;
}

unint64_t sub_1DD7997C0()
{
  result = qword_1ECD10B08;
  if (!qword_1ECD10B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B08);
  }

  return result;
}

unint64_t sub_1DD799818()
{
  result = qword_1ECD10B10;
  if (!qword_1ECD10B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B10);
  }

  return result;
}

unint64_t sub_1DD799870()
{
  result = qword_1ECD10B18;
  if (!qword_1ECD10B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B18);
  }

  return result;
}

unint64_t sub_1DD7998C8()
{
  result = qword_1ECD10B20;
  if (!qword_1ECD10B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B20);
  }

  return result;
}

unint64_t sub_1DD799920()
{
  result = qword_1ECD10B28;
  if (!qword_1ECD10B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B28);
  }

  return result;
}

unint64_t sub_1DD799978()
{
  result = qword_1ECD10B30;
  if (!qword_1ECD10B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B30);
  }

  return result;
}

unint64_t sub_1DD7999D0()
{
  result = qword_1ECD10B38;
  if (!qword_1ECD10B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B38);
  }

  return result;
}

unint64_t sub_1DD799A28()
{
  result = qword_1ECD10B40;
  if (!qword_1ECD10B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B40);
  }

  return result;
}

unint64_t sub_1DD799A80()
{
  result = qword_1ECD10B48;
  if (!qword_1ECD10B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B48);
  }

  return result;
}

unint64_t sub_1DD799AD8()
{
  result = qword_1EE018660;
  if (!qword_1EE018660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018660);
  }

  return result;
}

unint64_t sub_1DD799B30()
{
  result = qword_1EE018668;
  if (!qword_1EE018668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018668);
  }

  return result;
}

unint64_t sub_1DD799B88()
{
  result = qword_1EE018678;
  if (!qword_1EE018678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018678);
  }

  return result;
}

unint64_t sub_1DD799BE0()
{
  result = qword_1EE018680;
  if (!qword_1EE018680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018680);
  }

  return result;
}

unint64_t sub_1DD799C38()
{
  result = qword_1EE0186A0;
  if (!qword_1EE0186A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0186A0);
  }

  return result;
}

unint64_t sub_1DD799C90()
{
  result = qword_1EE0186A8;
  if (!qword_1EE0186A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0186A8);
  }

  return result;
}

unint64_t sub_1DD799CE8()
{
  result = qword_1EE0186B8;
  if (!qword_1EE0186B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0186B8);
  }

  return result;
}

unint64_t sub_1DD799D40()
{
  result = qword_1EE0186C0;
  if (!qword_1EE0186C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0186C0);
  }

  return result;
}

unint64_t sub_1DD799D98()
{
  result = qword_1EE018690;
  if (!qword_1EE018690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018690);
  }

  return result;
}

unint64_t sub_1DD799DF0()
{
  result = qword_1EE018698;
  if (!qword_1EE018698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018698);
  }

  return result;
}

unint64_t sub_1DD799E48()
{
  result = qword_1EE0186C8;
  if (!qword_1EE0186C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0186C8);
  }

  return result;
}

unint64_t sub_1DD799EA0()
{
  result = qword_1EE0186D0;
  if (!qword_1EE0186D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0186D0);
  }

  return result;
}

unint64_t sub_1DD799EF8()
{
  result = qword_1EE018640;
  if (!qword_1EE018640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018640);
  }

  return result;
}

unint64_t sub_1DD799F50()
{
  result = qword_1EE018648;
  if (!qword_1EE018648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018648);
  }

  return result;
}

unint64_t sub_1DD799FA8()
{
  result = qword_1ECD10B50;
  if (!qword_1ECD10B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B50);
  }

  return result;
}

unint64_t sub_1DD79A000()
{
  result = qword_1ECD10B58;
  if (!qword_1ECD10B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B58);
  }

  return result;
}

unint64_t sub_1DD79A058()
{
  result = qword_1ECD10B60;
  if (!qword_1ECD10B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B60);
  }

  return result;
}

unint64_t sub_1DD79A0B0()
{
  result = qword_1ECD10B68;
  if (!qword_1ECD10B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B68);
  }

  return result;
}

unint64_t sub_1DD79A108()
{
  result = qword_1ECD10B70;
  if (!qword_1ECD10B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B70);
  }

  return result;
}

unint64_t sub_1DD79A160()
{
  result = qword_1ECD10B78;
  if (!qword_1ECD10B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B78);
  }

  return result;
}

unint64_t sub_1DD79A1B8()
{
  result = qword_1ECD10B80;
  if (!qword_1ECD10B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B80);
  }

  return result;
}

unint64_t sub_1DD79A210()
{
  result = qword_1ECD10B88;
  if (!qword_1ECD10B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B88);
  }

  return result;
}

unint64_t sub_1DD79A268()
{
  result = qword_1EE017398;
  if (!qword_1EE017398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE017398);
  }

  return result;
}

unint64_t sub_1DD79A2C0()
{
  result = qword_1EE0173A0;
  if (!qword_1EE0173A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0173A0);
  }

  return result;
}

unint64_t sub_1DD79A314()
{
  result = qword_1ECD10B90;
  if (!qword_1ECD10B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10B90);
  }

  return result;
}

uint64_t AnySessionMessage.sessionId.getter()
{
  sub_1DD6DF224(v0, v0[3]);
  v1 = sub_1DD6E5C7C();
  return v2(v1);
}

uint64_t AnySessionMessage.clientRequestId.getter()
{
  sub_1DD6DF224(v0, v0[3]);
  v1 = sub_1DD6E5F58();
  return v2(v1);
}

uint64_t AnySessionMessage.payload.getter()
{
  sub_1DD6DF224(v0, v0[3]);
  v1 = sub_1DD6E5C7C();
  return v2(v1);
}

uint64_t AnySessionMessage.init<A>(_:)()
{
  sub_1DD6E1F34();
  v2[3] = v0;
  v2[4] = v1;
  sub_1DD79A52C(v2);
  sub_1DD824B14();
  v4 = *(v3 + 32);

  return v4();
}

uint64_t *sub_1DD79A52C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1DD79A598(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6552746E65696C63 && a2 == 0xEF64497473657571;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD79A6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79A598(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79A6E0(uint64_t a1)
{
  v2 = sub_1DD6FE71C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79A71C(uint64_t a1)
{
  v2 = sub_1DD6FE71C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79A7B4()
{
  v0 = sub_1DD825338();
  v1(v0);
  return sub_1DD8263B0();
}

uint64_t SessionServerMessage.clientSessionId.getter()
{
  type metadata accessor for SessionServerMessage(0);
  sub_1DD6E9B14();
  return sub_1DD6DDEFC();
}

uint64_t SessionServerMessage.timestamp.getter()
{
  v0 = sub_1DD6E0A5C();
  type metadata accessor for SessionServerMessage(v0);
  sub_1DD874790();
  sub_1DD6DE1C4();
  v1 = sub_1DD6FE878();

  return v2(v1);
}

uint64_t SessionServerMessage.init(sessionId:eventId:clientRequestId:clientSessionId:timestamp:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1DD6FF8A8();
  v42 = v19;
  v43 = v20;
  v22 = v21;
  sub_1DD825B54();
  v23 = sub_1DD874820();
  sub_1DD6DE1C4();
  v25 = *(v24 + 32);
  v25(v14, v18, v23);
  type metadata accessor for SessionServerMessage(0);
  sub_1DD827658();
  v25(v14 + v26, v17, v23);
  sub_1DD825300();
  sub_1DD6E5E68(v27, v28, v29, v30);
  sub_1DD6E27BC();
  sub_1DD6E59B8();
  v31 = (v14 + *(v18 + 28));
  *v31 = v16;
  v31[1] = v15;
  v32 = (v14 + *(v18 + 36));
  *v32 = v22;
  v32[1] = v42;
  sub_1DD874790();
  sub_1DD6DF448();
  sub_1DD6E58C4();

  return v36(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, a11, a12, a13, a14);
}

uint64_t SessionServerMessage.init(sessionId:clientRequestId:clientSessionId:timestamp:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1DD6FF8A8();
  v44 = v15;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1DD6F9E24();
  v24 = sub_1DD874820();
  sub_1DD6DDEAC();
  v25 = sub_1DD826680();
  v26(v25);
  v27 = type metadata accessor for SessionServerMessage(0);
  sub_1DD6E0508();
  _s16IntelligenceFlow15SessionClientIDVACycfC_0();
  v28 = sub_1DD825864();
  v29(v28, v24);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v30, v31, v32, v24);
  sub_1DD6E27BC();
  sub_1DD6E59B8();
  v33 = (v14 + *(v27 + 28));
  *v33 = v23;
  v33[1] = v21;
  v34 = (v14 + *(v27 + 36));
  *v34 = v19;
  v34[1] = v17;
  sub_1DD874790();
  sub_1DD6DF448();
  sub_1DD6E58C4();

  return v38(v35, v36, v37, v38, v39, v40, v41, v42, a9, v44, a11, a12, a13, a14);
}

uint64_t sub_1DD79AB30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449746E657665 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6576457972657571 && a2 == 0xEC0000006449746ELL;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6552746E65696C63 && a2 == 0xEF64497473657571;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6553746E65696C63 && a2 == 0xEF64496E6F697373;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD875A30();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD79AD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79AB30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79ADA8(uint64_t a1)
{
  v2 = sub_1DD6F3014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79ADE4(uint64_t a1)
{
  v2 = sub_1DD6F3014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79AE30(uint64_t a1)
{
  v2 = sub_1DD6F436C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79AE6C(uint64_t a1)
{
  v2 = sub_1DD6F436C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79AEB4(uint64_t a1)
{
  v2 = sub_1DD79AF70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79AEF0(uint64_t a1)
{
  v2 = sub_1DD79AF70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD79AF70()
{
  result = qword_1ECD10BF8;
  if (!qword_1ECD10BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10BF8);
  }

  return result;
}

uint64_t sub_1DD79AFE8(uint64_t a1)
{
  v2 = sub_1DD79B0A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79B024(uint64_t a1)
{
  v2 = sub_1DD79B0A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD79B0A4()
{
  result = qword_1ECD10C08;
  if (!qword_1ECD10C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10C08);
  }

  return result;
}

uint64_t sub_1DD79B160()
{
  v4 = sub_1DD825000();
  v5(v4);
  v6 = sub_1DD701458();
  v0(v6);
  sub_1DD6DE1C4();
  v9 = *(v8 + 16);

  return v9(v2, v1 + v3, v7);
}

uint64_t static MessagePayload.StepExecutedWithReturnedValue.== infix(_:_:)()
{
  sub_1DD6E1F34();
  v3 = *(v2 + 8);
  v4 = v0[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *v1 == *v0 && v3 == v4;
      if (v5 || (sub_1DD875A30() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

LABEL_8:
  v6 = type metadata accessor for MessagePayload.StepExecutedWithReturnedValue(0);
  sub_1DD6F4D70(v6);

  return _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
}

uint64_t sub_1DD79B26C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001DD8B6430 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD79B338(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1DD79B378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79B26C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79B3A0(uint64_t a1)
{
  v2 = sub_1DD79B550();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79B3DC(uint64_t a1)
{
  v2 = sub_1DD79B550();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.StepExecutedWithReturnedValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1DD826CE0();
  sub_1DD6F8C0C();
  sub_1DD710A9C(&qword_1ECD10C10, &qword_1DD889120);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DE340();
  sub_1DD6DEAD0();
  sub_1DD79B550();
  sub_1DD8250D8();
  sub_1DD875BB0();
  sub_1DD705FD8();
  sub_1DD825620();
  sub_1DD875920();
  if (!v16)
  {
    type metadata accessor for MessagePayload.StepExecutedWithReturnedValue(0);
    sub_1DD6DEC54();
    sub_1DD874FA0();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v18);
    sub_1DD700E54();
    sub_1DD6E730C();
    sub_1DD8759D0();
  }

  v19 = sub_1DD825168();
  v20(v19);
  sub_1DD825790();
  sub_1DD826CF4();
}

unint64_t sub_1DD79B550()
{
  result = qword_1ECD10C18;
  if (!qword_1ECD10C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10C18);
  }

  return result;
}

void MessagePayload.StepExecutedWithReturnedValue.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD70068C();
  v15 = sub_1DD874FA0();
  sub_1DD6DDEAC();
  v14 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E6200();
  sub_1DD710A9C(&qword_1ECD10C20, &qword_1DD889128);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD6E27D4();
  type metadata accessor for MessagePayload.StepExecutedWithReturnedValue(v8);
  sub_1DD8247B4();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE4A8();
  sub_1DD700C78();
  sub_1DD824D14(v0);
  sub_1DD79B550();
  sub_1DD8259BC();
  sub_1DD8268F0();
  sub_1DD875B90();
  if (v2)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD8259A4();
    sub_1DD8258D0();
    *v3 = sub_1DD875820();
    v3[1] = v10;
    sub_1DD6DEC54();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v11);
    sub_1DD826808();
    sub_1DD8258D0();
    sub_1DD8758D0();
    v12 = sub_1DD705C50();
    v13(v12);
    (*(v14 + 32))(v3 + *(v1 + 20), v4, v15);
    sub_1DD7006C0();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v0);
    sub_1DD8259EC();
    sub_1DD6E5ABC();
  }

  sub_1DD792AF8();
  sub_1DD6E0C78();
}

id MessagePayload.SessionError.error.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return sub_1DD719000(v2);
}

uint64_t MessagePayload.SessionError.init(error:hierarchy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = a2;
  return result;
}

id MessagePayload.SessionError.init(error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_1DD710A9C(&qword_1ECD10C28, &qword_1DD889130);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DD8782E0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;

  return sub_1DD719000(v3);
}

uint64_t MessagePayload.SessionError.localizedDescription.getter()
{
  v1 = *v0;
  swift_getErrorValue();
  v2 = v1;
  sub_1DD7029A8();
  sub_1DD875AB0();
  sub_1DD71900C(v1);
  return sub_1DD705564();
}

void static MessagePayload.SessionError.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v1 = *v0;
  v3 = *v2;
  v4 = *(v2 + 8);
  if (*(v0 + 8))
  {
    sub_1DD719000(*v0);
    v5 = sub_1DD6F4D4C();
    sub_1DD719000(v5);
    sub_1DD719000(v1);
    v6 = v1;
    if ((v4 & 1) == 0)
    {
LABEL_3:
      v7 = v3;
      v8 = sub_1DD874670();
      v9 = sub_1DD826F6C();
      sub_1DD71900C(v9);
      goto LABEL_6;
    }
  }

  else
  {
    v10 = sub_1DD6F4D4C();
    sub_1DD719000(v10);
    sub_1DD719000(v1);
    v6 = sub_1DD874670();
    if ((v4 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v8 = v3;
LABEL_6:
  sub_1DD804C4C(0, &qword_1ECD0E2A8, 0x1E69E58C0);
  sub_1DD6E594C();
  v11 = sub_1DD8755A0();

  v12 = sub_1DD6F4D4C();
  sub_1DD71900C(v12);
  sub_1DD71900C(v1);
  if (v11)
  {
    sub_1DD6E5F58();
    sub_1DD6DFED0();

    sub_1DD716BF4();
  }

  else
  {
    sub_1DD6DFED0();
  }
}

uint64_t sub_1DD79BAE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6863726172656968 && a2 == 0xE900000000000079)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD79BBB0(char a1)
{
  if (a1)
  {
    return 0x6863726172656968;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_1DD79BBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79BAE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79BC18(uint64_t a1)
{
  v2 = sub_1DD7FBFA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79BC54(uint64_t a1)
{
  v2 = sub_1DD7FBFA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.SessionError.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD700858();
  sub_1DD710A9C(&qword_1ECD10C30, &qword_1DD889138);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DEA6C();
  v3 = *v0;
  v4 = sub_1DD8267D8();
  sub_1DD6E7320(v4);
  sub_1DD719000(v3);
  sub_1DD7FBFA0();
  sub_1DD6E17D8();
  sub_1DD825680();
  sub_1DD875BB0();
  sub_1DD7FBFF4();
  sub_1DD792A28();
  sub_1DD6E5334();
  sub_1DD8759D0();
  sub_1DD71900C(v3);
  if (!v1)
  {
    sub_1DD6FF8F4();
    sub_1DD710A9C(&qword_1ECD10C48, &qword_1DD889140);
    sub_1DD7FC048();
    sub_1DD792A28();
    sub_1DD6E9630();
    sub_1DD8759D0();
  }

  v5 = sub_1DD6DE58C();
  v6(v5);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.SessionError.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825058();
  sub_1DD710A9C(&qword_1ECD10C58, &qword_1DD889148);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v4 = sub_1DD7FBFA0();
  sub_1DD6ED2A4(&type metadata for MessagePayload.SessionError.CodingKeys, v5, v4);
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD7FC0CC();
    sub_1DD826F48();
    sub_1DD82499C();
    sub_1DD8758D0();
    sub_1DD710A9C(&qword_1ECD10C48, &qword_1DD889140);
    sub_1DD6FF8F4();
    sub_1DD7FC120();
    sub_1DD826F48();
    sub_1DD825198();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    v6 = sub_1DD6DFF30();
    v7(v6);
    *v2 = v8;
    *(v2 + 8) = v9;
    *(v2 + 16) = v8;
    sub_1DD719000(v8);

    sub_1DD6E1EC8(v0);
    sub_1DD71900C(v8);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.PlannerReturnedRawPlan.plan.setter()
{
  sub_1DD6DE304();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MessagePayload.PlannerReturnedRawPlan.appIntentInvocationPreviews.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

IntelligenceFlow::MessagePayload::PlannerReturnedRawPlan __swiftcall MessagePayload.PlannerReturnedRawPlan.init(plan:source:)(IntelligenceFlow::MessagePayload::PlannerReturnedRawPlan plan, IntelligenceFlow::MessagePayload::PlannerReturnedRawPlan::Source source)
{
  v3 = *source;
  *v2 = plan.plan;
  *(v2 + 16) = v3;
  *(v2 + 24) = MEMORY[0x1E69E7CC0];
  plan.source = source;
  return plan;
}

IntelligenceFlow::MessagePayload::PlannerReturnedRawPlan __swiftcall MessagePayload.PlannerReturnedRawPlan.init(plan:appIntentInvocationPreviews:source:)(IntelligenceFlow::MessagePayload::PlannerReturnedRawPlan plan, Swift::OpaquePointer appIntentInvocationPreviews, IntelligenceFlow::MessagePayload::PlannerReturnedRawPlan::Source source)
{
  v4 = *source;
  *v3 = plan.plan;
  *(v3 + 24) = appIntentInvocationPreviews;
  *(v3 + 16) = v4;
  plan.source = appIntentInvocationPreviews._rawValue;
  LOBYTE(plan.appIntentInvocationPreviews._rawValue) = source;
  return plan;
}

IntelligenceFlow::MessagePayload::PlannerReturnedRawPlan __swiftcall MessagePayload.PlannerReturnedRawPlan.init(plan:)(IntelligenceFlow::MessagePayload::PlannerReturnedRawPlan plan)
{
  *v1 = plan.plan;
  *(v1 + 16) = 2;
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  return plan;
}

uint64_t sub_1DD79C0F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001DD8B6450 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7265764F6E616C70 && a2 == 0xEC00000065646972;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E616C506C6C7566 && a2 == 0xEB0000000072656ELL;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000020 && 0x80000001DD8B6470 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000016 && 0x80000001DD8B64A0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD875A30();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1DD79C2A8(char a1)
{
  result = 0x7265764F6E616C70;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6E616C506C6C7566;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_1DD79C370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79C0F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79C398(uint64_t a1)
{
  v2 = sub_1DD7FC1A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79C3D4(uint64_t a1)
{
  v2 = sub_1DD7FC1A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79C410(uint64_t a1)
{
  v2 = sub_1DD7FC2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79C44C(uint64_t a1)
{
  v2 = sub_1DD7FC2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79C488(uint64_t a1)
{
  v2 = sub_1DD7FC2F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79C4C4(uint64_t a1)
{
  v2 = sub_1DD7FC2F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79C500(uint64_t a1)
{
  v2 = sub_1DD7FC348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79C53C(uint64_t a1)
{
  v2 = sub_1DD7FC348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79C578(uint64_t a1)
{
  v2 = sub_1DD7FC1F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79C5B4(uint64_t a1)
{
  v2 = sub_1DD7FC1F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79C5F0(uint64_t a1)
{
  v2 = sub_1DD7FC24C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79C62C(uint64_t a1)
{
  v2 = sub_1DD7FC24C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.PlannerReturnedRawPlan.Source.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1DD6DED2C();
  sub_1DD826F30();
  sub_1DD710A9C(&qword_1ECD10C70, &qword_1DD889150);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD82480C(v29, v43);
  sub_1DD710A9C(&qword_1ECD10C78, &qword_1DD889158);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6E9924(v31, v44);
  sub_1DD710A9C(&qword_1ECD10C80, &qword_1DD889160);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD82495C(v33, v45);
  sub_1DD710A9C(&qword_1ECD10C88, &qword_1DD889168);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD824948(v35, v46);
  sub_1DD710A9C(&qword_1ECD10C90, &qword_1DD889170);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6E9560();
  sub_1DD710A9C(&qword_1ECD10C98, &qword_1DD889178);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD6E7258();
  v38 = *v26;
  sub_1DD825500(v27);
  sub_1DD7FC1A4();
  sub_1DD7039CC();
  sub_1DD875BB0();
  switch(v38)
  {
    case 1:
      sub_1DD7FC2F4();
      sub_1DD827458();
      sub_1DD824848();
      sub_1DD875910();
      goto LABEL_7;
    case 2:
      sub_1DD6E0FF8();
      sub_1DD7FC2A0();
      sub_1DD824848();
      sub_1DD875910();
      goto LABEL_7;
    case 3:
      sub_1DD7FC24C();
      sub_1DD824848();
      sub_1DD875910();
      goto LABEL_7;
    case 4:
      sub_1DD6E70D8();
      sub_1DD7FC1F8();
      sub_1DD824848();
      sub_1DD875910();
LABEL_7:
      v39 = sub_1DD6DED98();
      break;
    default:
      sub_1DD7FC348();
      sub_1DD824848();
      sub_1DD875910();
      v39 = sub_1DD6ED80C();
      break;
  }

  v40(v39);
  v41 = sub_1DD825570();
  v42(v41);
  sub_1DD8268CC();
  sub_1DD6E0C78();
}

void MessagePayload.PlannerReturnedRawPlan.Source.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1DD6DED2C();
  sub_1DD826784();
  v86 = v28;
  sub_1DD710A9C(&qword_1ECD10CD0, &qword_1DD889180);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6E0C6C();
  sub_1DD8268E4(v30);
  sub_1DD710A9C(&qword_1ECD10CD8, &qword_1DD889188);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD824F70(v32);
  sub_1DD710A9C(&qword_1ECD10CE0, &qword_1DD889190);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD82486C(v34, v84);
  sub_1DD710A9C(&qword_1ECD10CE8, &qword_1DD889198);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD6E7258();
  sub_1DD710A9C(&qword_1ECD10CF0, &qword_1DD8891A0);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6DEA6C();
  sub_1DD710A9C(&qword_1ECD10CF8, &unk_1DD8891A8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD6E17C8();
  sub_1DD6E7320(v27);
  sub_1DD7FC1A4();
  sub_1DD875B90();
  if (!v87)
  {
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD826B24();
    if (!v38)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v39 == v40)
      {
        __break(1u);
        return;
      }

      v85 = *(v46 + v45);
      sub_1DD77E6E4(v41, v42, v43, v44, v45);
      sub_1DD6ED830();
      v48 = v47;
      v50 = v49;
      swift_unknownObjectRelease();
      if (v48 == v50 >> 1)
      {
        switch(v85)
        {
          case 1:
            sub_1DD7FC2F4();
            sub_1DD8257E0();
            sub_1DD827268(v78, v79, v80, v81);
            swift_unknownObjectRelease();
            goto LABEL_17;
          case 2:
            sub_1DD6E0FF8();
            sub_1DD7FC2A0();
            sub_1DD8257E0();
            sub_1DD827268(v70, v71, v72, v73);
            swift_unknownObjectRelease();
            goto LABEL_17;
          case 3:
            sub_1DD7FC24C();
            sub_1DD8257E0();
            sub_1DD827268(v74, v75, v76, v77);
            swift_unknownObjectRelease();
LABEL_17:
            v55 = sub_1DD6E61C4();
            break;
          case 4:
            sub_1DD6E70D8();
            sub_1DD7FC1F8();
            sub_1DD8257E0();
            sub_1DD827268(v66, v67, v68, v69);
            swift_unknownObjectRelease();
            v55 = sub_1DD705E24();
            break;
          default:
            sub_1DD7FC348();
            sub_1DD8257E0();
            sub_1DD827268(v51, v52, v53, v54);
            swift_unknownObjectRelease();
            v55 = sub_1DD6E61C4();
            v57 = v26;
            break;
        }

        v56(v55, v57);
        v82 = sub_1DD6ED180();
        v83(v82);
        *v86 = v85;
        sub_1DD6E1EC8(v27);
        goto LABEL_12;
      }
    }

    v58 = sub_1DD875740();
    sub_1DD6E41BC(v58, MEMORY[0x1E69E6B28]);
    v60 = v59;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v60 = &type metadata for MessagePayload.PlannerReturnedRawPlan.Source;
    v61 = sub_1DD875810();
    sub_1DD6DF100(v61);
    sub_1DD824B14();
    v62 = sub_1DD6FEB10();
    v63(v62);
    swift_willThrow();
    swift_unknownObjectRelease();
    v64 = sub_1DD6ED180();
    v65(v64);
  }

  sub_1DD6E1EC8(v27);
LABEL_12:
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

void static MessagePayload.PlannerReturnedRawPlan.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = *(v3 + 16);
  v5 = *(v2 + 16);
  v6 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (v6 || (sub_1DD875A30()) && v4 == v5)
  {
    sub_1DD6DDEFC();

    sub_1DD715F90();
  }
}

uint64_t sub_1DD79D10C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1851878512 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001BLL && 0x80000001DD8B64C0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD79D220(char a1)
{
  if (!a1)
  {
    return 1851878512;
  }

  if (a1 == 1)
  {
    return 0x656372756F73;
  }

  return 0xD00000000000001BLL;
}

uint64_t sub_1DD79D278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79D10C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79D2A0(uint64_t a1)
{
  v2 = sub_1DD7FCA58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79D2DC(uint64_t a1)
{
  v2 = sub_1DD7FCA58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.PlannerReturnedRawPlan.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD700858();
  sub_1DD710A9C(&qword_1ECD10D00, &qword_1DD8891B8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEA6C();
  sub_1DD826A0C();
  v2 = sub_1DD8267D8();
  sub_1DD6E7320(v2);
  sub_1DD7FCA58();
  sub_1DD6E17D8();
  sub_1DD825680();
  sub_1DD875BB0();
  sub_1DD824B80();
  sub_1DD6E0E40();
  sub_1DD875970();
  if (!v0)
  {
    sub_1DD6E4104();
    sub_1DD7FCAAC();
    sub_1DD705E14();
    sub_1DD8759D0();
    sub_1DD8263D0();
    sub_1DD710A9C(&qword_1ECD10D18, &qword_1DD8891C0);
    sub_1DD7FCB00();
    sub_1DD826298();
    sub_1DD6FF6E0();
    sub_1DD8759D0();
  }

  v3 = sub_1DD6EEDBC();
  v4(v3);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.PlannerReturnedRawPlan.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_1DD6DED2C();
  sub_1DD8255B0();
  sub_1DD710A9C(&qword_1ECD10D30, &qword_1DD8891C8);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v18 = sub_1DD7FCA58();
  sub_1DD6ED2A4(&type metadata for MessagePayload.PlannerReturnedRawPlan.CodingKeys, v19, v18);
  if (v13)
  {
    sub_1DD6E1EC8(v12);
  }

  else
  {
    sub_1DD8259A4();
    sub_1DD6E5374();
    sub_1DD875870();
    sub_1DD825610();
    sub_1DD7FCBD8();
    sub_1DD705C28();
    sub_1DD8758D0();
    sub_1DD710A9C(&qword_1ECD10D18, &qword_1DD8891C0);
    sub_1DD8263D0();
    sub_1DD7FCC2C();
    sub_1DD825118();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    v20 = sub_1DD6DEA2C();
    v21(v20);
    *v14 = v16;
    *(v14 + 8) = v15;
    *(v14 + 16) = a12;
    *(v14 + 24) = v22;

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.UserTurnStarted.turnId.setter()
{
  sub_1DD6DE304();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MessagePayload.UserTurnStarted.siriRequestContext.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.UserTurnStarted(v0);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.UserTurnStarted.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  type metadata accessor for MessagePayload.UserTurnStarted(0);
  sub_1DD874B70();
  sub_1DD6E0C90();

  return sub_1DD6E5E68(v1, v2, v3, v4);
}

uint64_t MessagePayload.UserTurnStarted.init(turnId:siriRequestContext:)()
{
  sub_1DD824C64();
  *v3 = 0;
  type metadata accessor for MessagePayload.UserTurnStarted(0);
  sub_1DD874B70();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v4, v5, v6, v7);
  *(v2 + 8) = v1;
  *(v2 + 16) = v0;
  return sub_1DD807414();
}

void static MessagePayload.UserTurnStarted.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v3 = v2;
  v5 = v4;
  v6 = sub_1DD874B70();
  sub_1DD6DDEAC();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6ED3C0();
  v10 = sub_1DD710A9C(&qword_1ECD10D50, &qword_1DD8891D0);
  sub_1DD6DEA10(v10);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DEA6C();
  v12 = sub_1DD710A9C(&qword_1ECD10D58, &qword_1DD8891D8);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD82660C();
  if (*v5)
  {
    if (!*v3)
    {
      goto LABEL_19;
    }
  }

  else if (*v3)
  {
    goto LABEL_19;
  }

  v14 = *(v5 + 8) == *(v3 + 8) && *(v5 + 16) == *(v3 + 16);
  if (v14 || (sub_1DD875A30() & 1) != 0)
  {
    type metadata accessor for MessagePayload.UserTurnStarted(0);
    v15 = *(v12 + 48);
    sub_1DD82598C();
    sub_1DD700E60();
    sub_1DD82598C();
    sub_1DD700E60();
    sub_1DD6E26E4(v1);
    if (!v14)
    {
      sub_1DD6E5C7C();
      sub_1DD700E60();
      sub_1DD6E26E4(v1 + v15);
      if (!v16)
      {
        sub_1DD826A58();
        v19(v0, v1 + v15, v6);
        sub_1DD6EEDA4();
        sub_1DD6E1E84(v20);
        sub_1DD6DEA04();
        sub_1DD8750F0();
        v21 = *(v8 + 8);
        v22 = sub_1DD6DDEFC();
        v21(v22);
        v23 = sub_1DD770D4C();
        v21(v23);
        sub_1DD824154(v1, &qword_1ECD10D50);
        goto LABEL_19;
      }

      v17 = sub_1DD6DED98();
      v18(v17, v6);
LABEL_18:
      sub_1DD824154(v1, &qword_1ECD10D58);
      goto LABEL_19;
    }

    sub_1DD6E26E4(v1 + v15);
    if (!v14)
    {
      goto LABEL_18;
    }

    sub_1DD824154(v1, &qword_1ECD10D50);
  }

LABEL_19:
  sub_1DD6DFED0();
}

uint64_t static MessagePayload.UserTurn.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      return 0;
    }
  }

  else if (*a2)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1DD79DB6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852994932 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496E727574 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x80000001DD8B64E0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD79DC80(char a1)
{
  if (!a1)
  {
    return 1852994932;
  }

  if (a1 == 1)
  {
    return 0x64496E727574;
  }

  return 0xD000000000000012;
}

uint64_t sub_1DD79DCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79DB6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79DD00(uint64_t a1)
{
  v2 = sub_1DD7FCD24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79DD3C(uint64_t a1)
{
  v2 = sub_1DD7FCD24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.UserTurnStarted.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1DD826CE0();
  sub_1DD6F8C0C();
  sub_1DD710A9C(&qword_1ECD10D68, &qword_1DD8891E0);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DE340();
  sub_1DD6DEAD0();
  sub_1DD7FCD24();
  sub_1DD8250D8();
  sub_1DD875BB0();
  sub_1DD7FCD78();
  sub_1DD7055A8();
  sub_1DD8759D0();
  if (!v16)
  {
    sub_1DD6E4104();
    sub_1DD825620();
    sub_1DD875970();
    type metadata accessor for MessagePayload.UserTurnStarted(0);
    sub_1DD8263D0();
    sub_1DD874B70();
    sub_1DD6EEDA4();
    sub_1DD6E1E84(v18);
    sub_1DD700E54();
    sub_1DD6E730C();
    sub_1DD875960();
  }

  v19 = sub_1DD825168();
  v20(v19);
  sub_1DD825790();
  sub_1DD826CF4();
}

void MessagePayload.UserTurnStarted.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1DD6DED2C();
  v24 = v23;
  v25 = sub_1DD710A9C(&qword_1ECD10D50, &qword_1DD8891D0);
  sub_1DD6DEA10(v25);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DDFE4();
  sub_1DD710A9C(&qword_1ECD10D88, &qword_1DD8891E8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6E7258();
  v28 = type metadata accessor for MessagePayload.UserTurnStarted(0);
  v29 = sub_1DD6DEA10(v28);
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD824734();
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0xE000000000000000;
  v30 = sub_1DD874B70();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v31, v32, v33, v30);
  sub_1DD824CF8(v24);
  sub_1DD7FCD24();
  sub_1DD7039CC();
  sub_1DD875B90();
  if (!v21)
  {
    sub_1DD7FCDCC();
    sub_1DD6F09C4();
    sub_1DD8758D0();
    *v22 = HIBYTE(a11);
    sub_1DD6E4104();
    sub_1DD826118();
    *(v22 + 8) = sub_1DD875870();
    *(v22 + 16) = v34;
    sub_1DD8263D0();
    sub_1DD6EEDA4();
    sub_1DD6E1E84(v35);
    sub_1DD826118();
    sub_1DD875860();
    v36 = sub_1DD8256EC();
    v37(v36);
    sub_1DD807414();
    sub_1DD701480();
    sub_1DD6E5870();
  }

  sub_1DD6E1EC8(v24);
  sub_1DD7061EC();
  sub_1DD6E5ABC();
  sub_1DD826464();
  sub_1DD6E0C78();
}

uint64_t sub_1DD79E1D8(uint64_t a1)
{
  v2 = sub_1DD7FCE20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79E214(uint64_t a1)
{
  v2 = sub_1DD7FCE20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79E2B8(uint64_t a1)
{
  v2 = sub_1DD7FCE74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79E2F4(uint64_t a1)
{
  v2 = sub_1DD7FCE74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79E374(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x686365657073 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD79E438(char a1)
{
  if (a1)
  {
    return 1954047348;
  }

  else
  {
    return 0x686365657073;
  }
}

uint64_t sub_1DD79E484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79E374(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD79E4AC(uint64_t a1)
{
  v2 = sub_1DD7FCEC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79E4E8(uint64_t a1)
{
  v2 = sub_1DD7FCEC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79E524(uint64_t a1)
{
  v2 = sub_1DD7FCFC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79E560(uint64_t a1)
{
  v2 = sub_1DD7FCFC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79E59C(uint64_t a1)
{
  v2 = sub_1DD7FCF1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79E5D8(uint64_t a1)
{
  v2 = sub_1DD7FCF1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.UserTurn.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD826784();
  sub_1DD710A9C(&qword_1ECD10DC0, &qword_1DD889200);
  sub_1DD6DDEAC();
  v16 = v2;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD82480C(v4, v14);
  sub_1DD710A9C(&qword_1ECD10DC8, &qword_1DD889208);
  sub_1DD6DDEAC();
  v15 = v5;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6F0A58();
  sub_1DD710A9C(&qword_1ECD10DD0, &qword_1DD889210);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEBA0();
  v8 = *v0;
  sub_1DD824D14(v1);
  sub_1DD7FCEC8();
  sub_1DD6E4218();
  sub_1DD8274A0();
  sub_1DD875BB0();
  if (v8)
  {
    sub_1DD6FF8F4();
    sub_1DD7FCF1C();
    sub_1DD6F3128();
    sub_1DD875910();
    sub_1DD7FCF70();
    v9 = v16;
    sub_1DD8759D0();
    v10 = sub_1DD705E24();
  }

  else
  {
    sub_1DD7FCFC4();
    sub_1DD826808();
    sub_1DD6F3128();
    sub_1DD875910();
    sub_1DD7FD018();
    v9 = v15;
    sub_1DD8759D0();
    v10 = sub_1DD6E4290();
  }

  v11(v10, v9);
  v12 = sub_1DD6E60FC();
  v13(v12);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void MessagePayload.UserTurn.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1DD6DED2C();
  v57 = v26;
  v28 = v27;
  v56 = sub_1DD710A9C(&qword_1ECD10E00, &qword_1DD889218);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6DEBA0();
  sub_1DD710A9C(&qword_1ECD10E08, &qword_1DD889220);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6DDFE4();
  v31 = sub_1DD710A9C(&qword_1ECD10E10, &qword_1DD889228);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6DE340();
  sub_1DD824CF8(v28);
  sub_1DD7FCEC8();
  sub_1DD8256E0();
  sub_1DD875B90();
  if (!v23)
  {
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD826B7C();
    if (!v33)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v40 == v41)
      {
        __break(1u);
        return;
      }

      v42 = *(v39 + v38);
      sub_1DD6F43D8(v34, v35, v36, v37, v38);
      sub_1DD6ED830();
      sub_1DD6E0194();
      v44 = v43;
      swift_unknownObjectRelease();
      v25 = v24;
      if (!(v44 >> 1))
      {
        if (v42)
        {
          sub_1DD6FF8F4();
          sub_1DD7FCF1C();
          sub_1DD824AB4();
          sub_1DD875800();
          sub_1DD7FD06C();
          sub_1DD8250A8();
          sub_1DD8758D0();
          sub_1DD827394();
          swift_unknownObjectRelease();
          v51 = sub_1DD6E4290();
          v53 = v56;
        }

        else
        {
          sub_1DD7FCFC4();
          sub_1DD824AB4();
          sub_1DD875800();
          sub_1DD7FD0C0();
          sub_1DD6FE82C();
          sub_1DD8758D0();
          sub_1DD827394();
          swift_unknownObjectRelease();
          v51 = sub_1DD824C0C();
        }

        v52(v51, v53);
        v54 = sub_1DD824A60();
        v55(v54);
        *v57 = v42;
        sub_1DD6E1EC8(v28);
        goto LABEL_10;
      }
    }

    v45 = sub_1DD875740();
    sub_1DD6E41BC(v45, MEMORY[0x1E69E6B28]);
    sub_1DD82702C();
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v25 = &type metadata for MessagePayload.UserTurn;
    v46 = sub_1DD875810();
    sub_1DD6DF100(v46);
    sub_1DD8250B8();
    v47 = sub_1DD826518();
    v48(v47);
    swift_willThrow();
    swift_unknownObjectRelease();
    v49 = sub_1DD6E61C4();
    v50(v49, v31);
  }

  sub_1DD6E1EC8(v28);
LABEL_10:
  sub_1DD6DF120();
  sub_1DD6E0C78();
}

double MessagePayload.Request.variables.getter()
{
  type metadata accessor for MessagePayload.Request(0);

  return result;
}

uint64_t MessagePayload.Request.variables.setter()
{
  v2 = sub_1DD6DE290();
  v3 = *(type metadata accessor for MessagePayload.Request(v2) + 20);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MessagePayload.Request.variables.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.Request(v0);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.Request.safetyMode.setter()
{
  v2 = sub_1DD6DE290();
  result = type metadata accessor for MessagePayload.Request(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t MessagePayload.Request.safetyMode.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.Request(v0);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.Request.prescribedPlan.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = (v1 + *(type metadata accessor for MessagePayload.Request(v2) + 28));
  v4 = v3[2];
  v5 = v3[1];
  v6 = *(v3 + 41);
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v4;
  *(v0 + 41) = v6;
  return sub_1DD700E60();
}

__n128 MessagePayload.Request.prescribedPlan.setter()
{
  v2 = sub_1DD6DE290();
  v3 = (v1 + *(type metadata accessor for MessagePayload.Request(v2) + 28));
  v7[0] = v3[2];
  *(v7 + 9) = *(v3 + 41);
  v4 = v3[1];
  v6[0] = *v3;
  v6[1] = v4;
  sub_1DD824154(v6, &unk_1ECD10E28);
  sub_1DD6FEB38();
  v3[2] = *(v0 + 32);
  result = *(v0 + 41);
  *(v3 + 41) = result;
  return result;
}

uint64_t MessagePayload.Request.prescribedPlan.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.Request(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD79EFF4()
{
  v0 = sub_1DD825338();
  v1(v0);
  return sub_1DD8263B0();
}

uint64_t MessagePayload.Request.rewriteMetadataEventID.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.Request(v0);
  return sub_1DD6DDF9C();
}

void MessagePayload.Request.rewriteMetadataInlined.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = type metadata accessor for MessagePayload.Request(v0);
  v2 = sub_1DD825320(*(v1 + 36));
  sub_1DD6FF5F4(v2, v3, v4);
}

double MessagePayload.Request.rewriteMetadataInlined.setter()
{
  v0 = sub_1DD82580C();
  v1 = type metadata accessor for MessagePayload.Request(v0);
  v2 = sub_1DD6E3A44(*(v1 + 36));
  sub_1DD6FE2E0(v2, v3, v4);
  *&result = sub_1DD82640C(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14).n128_u64[0];
  return result;
}

uint64_t MessagePayload.Request.rewriteMetadataInlined.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.Request(v0);
  return sub_1DD6DDF9C();
}

double MessagePayload.Request.suggestedInvocation.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = (v1 + *(type metadata accessor for MessagePayload.Request(v2) + 40));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;

  return result;
}

uint64_t MessagePayload.Request.suggestedInvocation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for MessagePayload.Request(0);
  result = sub_1DD6F43C0();
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t MessagePayload.Request.suggestedInvocation.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.Request(v0);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.Request.siriRequestContext.getter()
{
  v0 = sub_1DD6E0A5C();
  type metadata accessor for MessagePayload.Request(v0);
  return sub_1DD700E60();
}

uint64_t MessagePayload.Request.siriRequestContext.setter()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.Request(v0);
  sub_1DD826F84();
  return sub_1DD807414();
}

uint64_t MessagePayload.Request.siriRequestContext.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for MessagePayload.Request(v0);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.Request.init(content:safetyMode:)(uint64_t a1, char a2)
{
  v4 = sub_1DD6F9E24();
  v5 = type metadata accessor for MessagePayload.Request(v4);
  *(v2 + v5[5]) = 0;
  sub_1DD8269E4(v2 + v5[7]);
  sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v6, v7, v8, v9);
  sub_1DD6F448C(v5[9]);
  *(v10 + 16) = 0;
  sub_1DD6F448C(v5[10]);
  sub_1DD874B70();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v11, v12, v13, v14);
  sub_1DD6E0E18();
  sub_1DD6E87AC();
  result = sub_1DD6E59B8();
  *(v2 + v5[6]) = a2;
  return result;
}

uint64_t MessagePayload.Request.init(content:variables:safetyMode:prescribedPlan:rewriteMetadataEventID:rewriteMetadataInlined:siriRequestContext:)(uint64_t a1, uint64_t a2, char a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1DD82758C();
  v10 = sub_1DD826D58();
  v11 = v10[5];
  v12 = v7 + v10[7];
  *(v12 + 48) = 0;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *v12 = 0u;
  *(v12 + 56) = -1;
  sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v13, v14, v15, v16);
  v17 = v7 + v10[9];
  sub_1DD827360();
  sub_1DD6F448C(v10[10]);
  sub_1DD874B70();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v18, v19, v20, v21);
  sub_1DD6E0E18();
  sub_1DD6F441C();
  sub_1DD6E59B8();
  *(v7 + v11) = v8;
  *(v7 + v10[6]) = a3;
  *&v32[9] = *(v12 + 41);
  v22 = *(v12 + 32);
  v31[1] = *(v12 + 16);
  *v32 = v22;
  v31[0] = *v12;
  sub_1DD824154(v31, &unk_1ECD10E28);
  v23 = a4[1];
  *v12 = *a4;
  *(v12 + 16) = v23;
  *(v12 + 32) = a4[2];
  *(v12 + 41) = *(a4 + 41);
  sub_1DD807414();
  v24 = sub_1DD82676C();
  sub_1DD6FE2E0(v24, v25, v26);
  *v17 = v30;
  *(v17 + 16) = v29;
  return sub_1DD807414();
}

uint64_t MessagePayload.Request.init(content:)()
{
  v2 = sub_1DD6E0A5C();
  type metadata accessor for MessagePayload.Request(v2);
  sub_1DD826354();
  *(v0 + v3) = 0;
  sub_1DD8269E4(v0 + *(v4 + 28));
  sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v5, v6, v7, v8);
  v9 = (v0 + v1[9]);
  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
  v10 = (v0 + v1[10]);
  *v10 = 0;
  v10[1] = 0;
  sub_1DD874B70();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v11, v12, v13, v14);
  sub_1DD6E0E18();
  sub_1DD6E21D0();
  result = sub_1DD6E59B8();
  *(v0 + v1[6]) = 0;
  return result;
}

__n128 MessagePayload.Request.init(content:variables:safetyMode:prescribedPlan:rewriteMetadataEventID:rewriteMetadataInlined:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1DD826DB8();
  a29 = v31;
  a30 = v32;
  v34 = v33;
  v53 = v35;
  v37 = v36;
  v38 = sub_1DD826D58();
  v39 = v38[5];
  v40 = (v30 + v38[7]);
  sub_1DD8269C8();
  sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v41, v42, v43, v44);
  v45 = (v30 + v38[9]);
  *v45 = 0;
  v45[1] = 0;
  v45[2] = 0;
  sub_1DD6F448C(v38[10]);
  sub_1DD874B70();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v46, v47, v48, v49);
  sub_1DD6E0E18();
  sub_1DD8258C4();
  sub_1DD6E59B8();
  *(v30 + v39) = v37;
  *(v30 + v38[6]) = v53;
  *(&a16 + 9) = *(v40 + 41);
  v50 = v40[2];
  a15 = v40[1];
  a16 = v50;
  a14 = *v40;
  sub_1DD824154(&a14, &unk_1ECD10E28);
  v51 = v34[1];
  *v40 = *v34;
  v40[1] = v51;
  v40[2] = v34[2];
  *(v40 + 41) = *(v34 + 41);
  sub_1DD807414();
  sub_1DD6FE2E0(*v45, v45[1], v45[2]);
  *v45 = a13;
  v45[2] = a12;
  sub_1DD826D9C();
  return result;
}

void static MessagePayload.Request.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v4 = v3;
  sub_1DD827638();
  v5 = sub_1DD874B70();
  sub_1DD6DDEAC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DDEE8();
  v138 = v9;
  v10 = sub_1DD710A9C(&qword_1ECD10D50, &qword_1DD8891D0);
  sub_1DD6DEA10(v10);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E0C6C();
  v139 = sub_1DD710A9C(&qword_1ECD10D58, &qword_1DD8891D8);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6E0C6C();
  v140 = v13;
  sub_1DD6E9A9C();
  v14 = sub_1DD874820();
  sub_1DD6DDEAC();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6E535C();
  v18 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v18);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DE340();
  v141 = sub_1DD710A9C(&qword_1ECD10E30, &qword_1DD889238);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD82660C();
  sub_1DD6E6384();
  static MessagePayload.RequestContent.== infix(_:_:)();
  if ((v21 & 1) == 0)
  {
    goto LABEL_26;
  }

  v136 = v7;
  v137 = v5;
  v22 = type metadata accessor for MessagePayload.Request(0);
  v23 = v22[5];
  v24 = *(v4 + v23);
  if (*(v2 + v23))
  {
    if (!v24)
    {
      goto LABEL_26;
    }

    v25 = v0;
    v26 = v1;
    v27 = v16;
    v28 = v14;
    v29 = v2;
    v30 = v4;
    v31 = v22;

    sub_1DD825674();
    sub_1DD7A874C();
    v33 = v32;

    v22 = v31;
    v4 = v30;
    v2 = v29;
    v14 = v28;
    v16 = v27;
    v1 = v26;
    v0 = v25;
    if ((v33 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v24)
  {
    goto LABEL_26;
  }

  if (*(v2 + v22[6]) != *(v4 + v22[6]))
  {
    goto LABEL_26;
  }

  v34 = (v2 + v22[7]);
  v35 = v34[1];
  *v167 = v34[2];
  *&v167[9] = *(v34 + 41);
  v36 = v34[1];
  v165 = *v34;
  v166 = v36;
  v37 = (v4 + v22[7]);
  *&v170[9] = *(v37 + 41);
  v38 = v37[2];
  v39 = *v37;
  v40 = *v37;
  v169 = v37[1];
  *v170 = v38;
  v168 = v39;
  v161 = v165;
  v162 = v35;
  v163 = v34[2];
  *&v160[7] = v40;
  v164 = *(v34 + 6);
  *&v160[23] = v169;
  *&v160[39] = v37[2];
  *&v160[55] = *(v37 + 6);
  v41 = v170[24];
  if (v167[24] == 255)
  {
    if (v170[24] != 255)
    {
      v43 = v167[24];
      sub_1DD6FF6A4();
      sub_1DD700E60();
      sub_1DD6FF6A4();
      sub_1DD700E60();
      goto LABEL_20;
    }

    v134 = v22;
    v44 = v34[1];
    v153 = *v34;
    v154 = v44;
    *v155 = v34[2];
    *&v155[16] = *(v34 + 6);
    v155[24] = -1;
    sub_1DD700E60();
    sub_1DD700E60();
    sub_1DD824154(&v153, &unk_1ECD10E28);
  }

  else
  {
    v42 = v34[2];
    v154 = v34[1];
    *v155 = v42;
    *&v155[16] = *(v34 + 6);
    v153 = *v34;
    v155[24] = v167[24];
    v150 = v153;
    v151 = v154;
    *v152 = v42;
    *&v152[9] = *&v155[9];
    if (v170[24] == 255)
    {
      v43 = v167[24];
      v147 = v153;
      v148 = v154;
      *v149 = *v155;
      *&v149[9] = *&v155[9];
      sub_1DD6FF6A4();
      sub_1DD700E60();
      sub_1DD6FF6A4();
      sub_1DD700E60();
      sub_1DD6FF6A4();
      sub_1DD700E60();
      sub_1DD7FD114(&v147);
LABEL_20:
      v153 = v161;
      v154 = v162;
      *v155 = v163;
      v156 = *v160;
      *&v155[16] = v164;
      v155[24] = v43;
      v157 = *&v160[16];
      *v158 = *&v160[32];
      *&v158[15] = *&v160[47];
      v159 = v41;
      v54 = &unk_1ECD10E38;
      v55 = &v153;
LABEL_25:
      sub_1DD824154(v55, v54);
      goto LABEL_26;
    }

    v134 = v22;
    v45 = v37[1];
    v147 = *v37;
    v148 = v45;
    *v149 = v37[2];
    *&v149[16] = *(v37 + 6);
    v149[24] = v170[24];
    sub_1DD826BF0();
    v135 = v46;
    sub_1DD700E60();
    sub_1DD826BF0();
    sub_1DD700E60();
    sub_1DD826BF0();
    sub_1DD700E60();
    v133 = static MessagePayload.RequestPrescribedPlan.== infix(_:_:)(&v150, &v147, v47, v48, v49, v50, v51, v52);
    v143[0] = v147;
    v143[1] = v148;
    *v144 = *v149;
    *&v144[9] = *&v149[9];
    sub_1DD7FD114(v143);
    v145[0] = v150;
    v145[1] = v151;
    *v146 = *v152;
    *&v146[9] = *&v152[9];
    sub_1DD7FD114(v145);
    v147 = v161;
    v148 = v162;
    *v149 = v163;
    *&v149[16] = v164;
    v149[24] = v135;
    sub_1DD824154(&v147, &unk_1ECD10E28);
    if ((v133 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v53 = *(v141 + 48);
  sub_1DD700E60();
  sub_1DD700E60();
  sub_1DD6E26E4(v0);
  if (v56)
  {
    sub_1DD6E26E4(v0 + v53);
    if (v56)
    {
      sub_1DD824154(v0, &qword_1ECD0E540);
      goto LABEL_28;
    }

LABEL_24:
    v54 = &qword_1ECD10E30;
    v55 = v0;
    goto LABEL_25;
  }

  sub_1DD700E60();
  sub_1DD6E26E4(v0 + v53);
  if (v56)
  {
    v57 = sub_1DD6F4498();
    v58(v57);
    goto LABEL_24;
  }

  sub_1DD826578();
  v59(v1, v0 + v53, v14);
  sub_1DD6E14DC();
  sub_1DD6E1E84(v60);
  sub_1DD6E0F70();
  v61 = sub_1DD8750F0();
  v62 = *(v16 + 8);
  v63 = sub_1DD770D4C();
  v62(v63);
  v64 = sub_1DD8265C8();
  v62(v64);
  sub_1DD824154(v0, &qword_1ECD0E540);
  if ((v61 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_28:
  v65 = v134[9];
  v66 = *(v2 + v65);
  v67 = *(v2 + v65 + 8);
  v68 = (v4 + v65);
  v70 = *v68;
  v69 = v68[1];
  v71 = v68[2];
  if (!v67)
  {
    v87 = sub_1DD82551C();
    sub_1DD6FF5F4(v87, v88, v89);
    if (!v69)
    {
      sub_1DD6FF5F4(v70, 0, v71);
      v104 = sub_1DD82551C();
      sub_1DD6FE2E0(v104, v105, v106);
      goto LABEL_43;
    }

    v90 = sub_1DD705C50();
    sub_1DD6FF5F4(v90, v91, v71);
    goto LABEL_40;
  }

  if (!v69)
  {
    v92 = sub_1DD8249AC();
    sub_1DD6FF5F4(v92, v93, v94);
    sub_1DD6FF5F4(v70, 0, v71);
    v95 = sub_1DD8249AC();
    sub_1DD6FF5F4(v95, v96, v97);

LABEL_40:
    v98 = sub_1DD8249AC();
    sub_1DD6FE2E0(v98, v99, v100);
    v101 = sub_1DD705C50();
    v103 = v71;
LABEL_41:
    sub_1DD6FE2E0(v101, v102, v103);
    goto LABEL_26;
  }

  if (v66 != v70 || v67 != v69)
  {
    sub_1DD6E5C7C();
    sub_1DD705D5C();
    if ((sub_1DD875A30() & 1) == 0)
    {
      v114 = sub_1DD8249AC();
      sub_1DD6FF5F4(v114, v115, v116);
      v117 = sub_1DD705C50();
      sub_1DD6FF5F4(v117, v118, v71);
      v119 = sub_1DD8249AC();
      sub_1DD6FF5F4(v119, v120, v121);
      v122 = sub_1DD705C50();
      sub_1DD6FE2E0(v122, v123, v71);

      v101 = sub_1DD8249AC();
      goto LABEL_41;
    }
  }

  sub_1DD700D0C();
  sub_1DD7152B8();
  v142 = v73;
  v74 = sub_1DD8249AC();
  sub_1DD6FF5F4(v74, v75, v76);
  v77 = sub_1DD705C50();
  sub_1DD6FF5F4(v77, v78, v71);
  v79 = sub_1DD8249AC();
  sub_1DD6FF5F4(v79, v80, v81);
  v82 = sub_1DD705C50();
  sub_1DD6FE2E0(v82, v83, v71);

  v84 = sub_1DD8249AC();
  sub_1DD6FE2E0(v84, v85, v86);
  if ((v142 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_43:
  v107 = v134[10];
  v108 = *(v4 + v107 + 8);
  if (!*(v2 + v107 + 8))
  {
    v109 = v137;
    if (!v108)
    {

LABEL_56:
      v124 = *(v139 + 48);
      sub_1DD6FF6A4();
      sub_1DD700E60();
      sub_1DD6FF6A4();
      sub_1DD700E60();
      sub_1DD6DE1FC(v140, 1, v109);
      if (v56)
      {
        sub_1DD6DE1FC(v140 + v124, 1, v109);
        if (v56)
        {
          sub_1DD824154(v140, &qword_1ECD10D50);
          goto LABEL_26;
        }
      }

      else
      {
        sub_1DD700E60();
        sub_1DD6DE1FC(v140 + v124, 1, v109);
        if (!v125)
        {
          sub_1DD826A58();
          v128(v138, v140 + v124, v109);
          sub_1DD6EEDA4();
          sub_1DD6E1E84(v129);
          sub_1DD6E0F70();
          sub_1DD8750F0();
          v130 = *(v136 + 8);
          v131 = sub_1DD6DED5C();
          v130(v131);
          v132 = sub_1DD6EFF74();
          v130(v132);
          sub_1DD824154(v140, &qword_1ECD10D50);
          goto LABEL_26;
        }

        v126 = sub_1DD825148();
        v127(v126);
      }

      v54 = &qword_1ECD10D58;
      v55 = v140;
      goto LABEL_25;
    }

LABEL_54:

    goto LABEL_26;
  }

  v109 = v137;
  if (!v108)
  {
    goto LABEL_54;
  }

  v110 = sub_1DD824D88(v2 + v107);
  if (v56)
  {
    v113 = v111 == v108;
  }

  else
  {
    v113 = 0;
  }

  if (v113 || (sub_1DD8278F0(v110, v111, v112) & 1) != 0)
  {
    goto LABEL_56;
  }

LABEL_26:
  sub_1DD6DFED0();
}

void static MessagePayload.RequestContent.== infix(_:_:)()
{
  sub_1DD6DEB38();
  sub_1DD82758C();
  v2 = type metadata accessor for SystemPromptResolution(0);
  v3 = sub_1DD6DEA10(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DE4A8();
  type metadata accessor for MessagePayload.RequestContent(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE21C();
  sub_1DD825028();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6F8C84();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v27 - v7);
  v9 = sub_1DD710A9C(&qword_1ECD10E40, &qword_1DD889248);
  sub_1DD6DEA10(v9);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E17C8();
  v12 = (v0 + *(v11 + 56));
  sub_1DD6E5870();
  sub_1DD6DDEDC();
  sub_1DD6E5870();
  sub_1DD6E5F58();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD824764();
      sub_1DD825980();
      sub_1DD6E5870();
      v22 = *v8;
      v21 = v8[1];
      sub_1DD6E9594();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_16;
      }

      if (v22 == *v12 && v21 == v12[1])
      {
      }

      else
      {
        v24 = sub_1DD770D4C();
        sub_1DD6FA430(v24, v25, v26);
        sub_1DD827818();
      }

      goto LABEL_20;
    case 2u:
      sub_1DD824764();
      sub_1DD701174();
      sub_1DD6E5870();
      v14 = v1[1];
      v13 = v1[2];
      v15 = v1[3];
      sub_1DD6E9594();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v16 = *v1;
        v17 = *v12;
        v18 = v12[1];
        v20 = v12[2];
        v19 = v12[3];
        v28[0] = v16;
        v28[1] = v14;
        v28[2] = v13;
        v28[3] = v15;
        v27[0] = v17;
        v27[1] = v18;
        v27[2] = v20;
        v27[3] = v19;
        static MessagePayload.RequestContent.SpeechContent.== infix(_:_:)(v28);

        goto LABEL_20;
      }

LABEL_16:

      goto LABEL_18;
    case 3u:
      sub_1DD824764();
      sub_1DD825974();
      sub_1DD6E5870();
      sub_1DD6E9594();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        sub_1DD701480();
        sub_1DD6E59B8();
        sub_1DD770D4C();
        static SystemPromptResolution.== infix(_:_:)();
        sub_1DD6E5ABC();
        sub_1DD7029A8();
        sub_1DD6E5ABC();
LABEL_20:
        sub_1DD8248BC();
        sub_1DD6E5ABC();
      }

      else
      {
        sub_1DD824EB8();
        sub_1DD6E5ABC();
LABEL_18:
        sub_1DD824154(v0, &qword_1ECD10E40);
      }

      sub_1DD6DFED0();
      return;
    default:
      sub_1DD6E9594();
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_20;
      }

      goto LABEL_18;
  }
}

uint64_t sub_1DD7A04CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C626169726176 && a2 == 0xE900000000000073;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F4D797465666173 && a2 == 0xEA00000000006564;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6269726373657270 && a2 == 0xEE006E616C506465;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x80000001DD8B6500 == a2;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x80000001DD8B6520 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x80000001DD8B6540 == a2;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000012 && 0x80000001DD8B64E0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD875A30();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD7A0764(char a1)
{
  result = 0x746E65746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x656C626169726176;
      break;
    case 2:
      result = 0x6F4D797465666173;
      break;
    case 3:
      result = 0x6269726373657270;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7A0874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A04CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7A089C(uint64_t a1)
{
  v2 = sub_1DD7FD144();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A08D8(uint64_t a1)
{
  v2 = sub_1DD7FD144();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.Request.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v23;
  a20 = v24;
  sub_1DD6E86E0();
  sub_1DD710A9C(&qword_1ECD10E48, &unk_1DD889250);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v26 = sub_1DD7FD144();
  sub_1DD6E1808(&type metadata for MessagePayload.Request.CodingKeys, v27, v26);
  LOBYTE(v45) = 0;
  type metadata accessor for MessagePayload.RequestContent(0);
  sub_1DD6F4434();
  sub_1DD6E1E84(v28);
  sub_1DD6E9630();
  sub_1DD8759D0();
  if (!v20)
  {
    type metadata accessor for MessagePayload.Request(0);
    sub_1DD825AA8();
    *&v45 = *(v21 + v29);
    LOBYTE(v42) = 1;
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD7FD198();
    sub_1DD6E9630();
    sub_1DD875960();
    sub_1DD705DE4();
    sub_1DD6E5334();
    sub_1DD875980();
    v30 = (v21 + *(v22 + 28));
    v31 = v30[1];
    v45 = *v30;
    v46 = v31;
    v33 = *v30;
    v32 = v30[1];
    v47[0] = v30[2];
    *(v47 + 9) = *(v30 + 41);
    v42 = v33;
    v43 = v32;
    v44[0] = v30[2];
    *(v44 + 9) = *(v30 + 41);
    v41[63] = 3;
    sub_1DD700E60();
    sub_1DD7FD254();
    sub_1DD6E5334();
    sub_1DD875960();
    sub_1DD8268A0();
    sub_1DD824154(v41, &unk_1ECD10E28);
    sub_1DD874820();
    sub_1DD6E14DC();
    sub_1DD6E1E84(v34);
    sub_1DD8262A4();
    sub_1DD6E9630();
    sub_1DD875960();
    v40 = sub_1DD6F8CE0(*(v22 + 36));
    sub_1DD6FF5F4(v40, v36, *(v35 + 16));
    sub_1DD6FF638();
    sub_1DD6E5334();
    sub_1DD875960();
    sub_1DD6F4468(&a14);
    sub_1DD7FD2A8();
    sub_1DD6E5E30();

    sub_1DD6DE334();
    sub_1DD875960();

    sub_1DD874B70();
    sub_1DD6EEDA4();
    sub_1DD6E1E84(v37);
    sub_1DD6E9630();
    sub_1DD875960();
  }

  v38 = sub_1DD6EFFB4();
  v39(v38);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.Request.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD10D50, &qword_1DD8891D0);
  sub_1DD6DEA10(v4);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v6);
  v7 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v7);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E0C6C();
  v10 = sub_1DD6ED230(v9);
  type metadata accessor for MessagePayload.RequestContent(v10);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v12);
  v13 = sub_1DD710A9C(&qword_1ECD10E78, &qword_1DD889260);
  sub_1DD6DF3FC(v13, &v59);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DE340();
  v15 = type metadata accessor for MessagePayload.Request(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD8247F4();
  v18 = (v1 + *(v17 + 28));
  sub_1DD8269C8();
  v19 = sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v20, v21, v22, v19);
  v23 = (v1 + v15[9]);
  *v23 = 0;
  v23[1] = 0;
  v49 = v23;
  v23[2] = 0;
  v24 = (v1 + v15[10]);
  *v24 = 0;
  v24[1] = 0;
  v48 = v24;
  v25 = sub_1DD874B70();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v26, v27, v28, v25);
  sub_1DD6FE8B0(v3);
  sub_1DD7FD144();
  sub_1DD8256E0();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD826A00();
    v30 = sub_1DD826894();
    sub_1DD6E1EC8(v30);

    v31 = v18[1];
    v58 = *v18;
    v59 = v31;
    v60[0] = v18[2];
    *(v60 + 9) = *(v18 + 41);
    sub_1DD824154(&v58, &unk_1ECD10E28);
    sub_1DD824154(v15 + v1, &qword_1ECD0E540);
    v32 = sub_1DD826718();
    sub_1DD6FE2E0(v32, v33, v34);

    sub_1DD700C6C();
    sub_1DD824154(v1 + v35, v36);
  }

  else
  {
    LOBYTE(v58) = 0;
    sub_1DD6F4434();
    sub_1DD6E1E84(v29);
    sub_1DD8269BC();
    sub_1DD6E99D8();
    sub_1DD8758D0();
    sub_1DD6E59B8();
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    LOBYTE(v55[0]) = 1;
    sub_1DD7FD2FC();
    sub_1DD826A88();
    sub_1DD6E99D8();
    sub_1DD875860();
    *(v1 + v15[5]) = v58;
    sub_1DD826FF0();
    v37 = sub_1DD875880();
    sub_1DD827578(v37);
    v57 = v38;
    sub_1DD7FD3B8();
    sub_1DD6E99D8();
    sub_1DD875860();
    v52 = v58;
    v53 = v59;
    *v54 = v60[0];
    *&v54[9] = *(v60 + 9);
    v39 = v18[1];
    v55[0] = *v18;
    v55[1] = v39;
    *v56 = v18[2];
    *&v56[9] = *(v18 + 41);
    sub_1DD824154(v55, &unk_1ECD10E28);
    *v18 = v52;
    v18[1] = v53;
    v18[2] = *v54;
    *(v18 + 41) = *&v54[9];
    LOBYTE(v50) = 4;
    sub_1DD6E14DC();
    sub_1DD6E1E84(v40);
    sub_1DD8256D4();
    sub_1DD6E99D8();
    sub_1DD875860();
    sub_1DD826A00();
    sub_1DD807414();
    sub_1DD700CAC();
    sub_1DD6E99D8();
    sub_1DD875860();
    v41 = sub_1DD826718();
    sub_1DD6FE2E0(v41, v42, v43);
    *v49 = v50;
    v49[2] = v51;
    sub_1DD7FD40C();
    sub_1DD6E99D8();
    sub_1DD875860();
    sub_1DD826E88();

    *v48 = v50;
    v48[1] = v3;
    sub_1DD6EEDA4();
    sub_1DD6E1E84(v44);
    sub_1DD79A3A4();
    sub_1DD6E99D8();
    sub_1DD875860();
    v45 = sub_1DD6FFA00();
    v46(v45);
    sub_1DD700C6C();
    sub_1DD807414();
    sub_1DD70131C();
    sub_1DD6E5870();
    v47 = sub_1DD826894();
    sub_1DD6E1EC8(v47);
    sub_1DD8259F8();
    sub_1DD6E5ABC();
  }

  sub_1DD6F9B18();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7A155C(uint64_t a1)
{
  v2 = sub_1DD7FD460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A1598(uint64_t a1)
{
  v2 = sub_1DD7FD460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A1650(uint64_t a1)
{
  v2 = sub_1DD6FE130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A168C(uint64_t a1)
{
  v2 = sub_1DD6FE130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessagePayload.RequestContent.SpeechContent.init(text:speechPackage:preITNSpeechPackage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v5 = *a3;
  v6 = *a4;
  *a5 = result;
  a5[1] = a2;
  a5[2] = v5;
  a5[3] = v6;
  return result;
}

uint64_t MessagePayload.RequestContent.SpeechContent.init(text:speechPackage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  a4[1] = a2;
  a4[2] = v4;
  a4[3] = 0;
  return result;
}

uint64_t sub_1DD7A1744(uint64_t a1)
{
  v2 = sub_1DD7FD4B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A1780(uint64_t a1)
{
  v2 = sub_1DD7FD4B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.RequestContent.SpeechContent.Candidate.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  sub_1DD710A9C(&qword_1ECD10EB8, &qword_1DD889280);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD7FD4B4();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v1 = sub_1DD6FF808();
  v2(v1);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.RequestContent.SpeechContent.init(candidates:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (a1[2])
  {
    v4 = a1[4];
    v3 = a1[5];
  }

  else
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v3;
  a2[2] = 0;
  a2[3] = 0;
  return result;
}

BOOL static MessagePayload.RequestContent.SpeechContent.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = v3[2];
  v5 = v3[3];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (!v8 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    sub_1DD6E0C60();
    sub_1DD716910();
    if ((v9 & 1) == 0)
    {
      return 0;
    }

    if (v5)
    {
LABEL_10:
      if (v6)
      {
        sub_1DD6E21D0();
        sub_1DD716910();
        return (v10 & 1) != 0;
      }

LABEL_18:

      return 0;
    }
  }

  else
  {
    if (v7)
    {
      goto LABEL_18;
    }

    if (v5)
    {
      goto LABEL_10;
    }
  }

  if (v6)
  {
    goto LABEL_18;
  }

  return 1;
}

uint64_t sub_1DD7A1AB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6150686365657073 && a2 == 0xED00006567616B63;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x80000001DD8B6560 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7A1BD4(char a1)
{
  if (!a1)
  {
    return 1954047348;
  }

  if (a1 == 1)
  {
    return 0x6150686365657073;
  }

  return 0xD000000000000013;
}

uint64_t sub_1DD7A1C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A1AB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7A1C64(uint64_t a1)
{
  v2 = sub_1DD7FD508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A1CA0(uint64_t a1)
{
  v2 = sub_1DD7FD508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.RequestContent.SpeechContent.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  sub_1DD710A9C(&qword_1ECD10ED0, &qword_1DD889290);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEA6C();
  sub_1DD6FE770(v2);
  sub_1DD7FD508();
  sub_1DD6E17D8();
  sub_1DD875BB0();
  sub_1DD6F9BF8();
  sub_1DD825668();
  sub_1DD875970();
  if (!v0)
  {
    sub_1DD82682C();
    sub_1DD7FD55C();

    sub_1DD6DE334();
    sub_1DD875960();

    sub_1DD705DE4();

    sub_1DD6DE334();
    sub_1DD875960();
  }

  v4 = sub_1DD6FF768();
  v5(v4);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.RequestContent.SpeechContent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  sub_1DD8255B0();
  sub_1DD710A9C(&qword_1ECD10EE8, &qword_1DD889298);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6E7258();
  sub_1DD6E49C0(v20);
  sub_1DD7FD508();
  sub_1DD825968();
  sub_1DD827908(v24, v25, v26);
  if (v21)
  {
    sub_1DD6E1EC8(v20);
  }

  else
  {
    LOBYTE(a10) = 0;
    sub_1DD825560();
    v30 = sub_1DD875870();
    v31 = v27;
    sub_1DD82682C();
    sub_1DD7FD5B0();
    sub_1DD6E710C();
    sub_1DD825ACC();
    sub_1DD875860();
    sub_1DD705DE4();
    sub_1DD6E710C();
    sub_1DD826118();
    sub_1DD875860();
    v28 = sub_1DD6E0E30();
    v29(v28);
    *v22 = v30;
    v22[1] = v31;
    v22[2] = a10;
    v22[3] = a10;

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

void static SystemPromptResolution.== infix(_:_:)()
{
  sub_1DD6DEB38();
  sub_1DD6ED7A4();
  sub_1DD874820();
  sub_1DD6DDEAC();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E535C();
  v6 = sub_1DD6ED130();
  v8 = sub_1DD710A9C(v6, v7);
  sub_1DD6DEA10(v8);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DEBA0();
  v10 = sub_1DD710A9C(&qword_1ECD10E30, &qword_1DD889238);
  sub_1DD6DEA10(v10);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE340();
  v13 = *(v12 + 56);
  sub_1DD6FF97C();
  sub_1DD82598C();
  sub_1DD700E60();
  sub_1DD82598C();
  sub_1DD700E60();
  sub_1DD6E26E4(v2);
  if (!v14)
  {
    sub_1DD6EFF74();
    sub_1DD700E60();
    sub_1DD6E26E4(v2 + v13);
    if (!v14)
    {
      v17 = sub_1DD8252A0();
      v18(v17);
      sub_1DD6E14DC();
      sub_1DD6E1E84(v19);
      sub_1DD6E60FC();
      v20 = sub_1DD8750F0();
      v21 = *(v4 + 8);
      v22 = sub_1DD770D4C();
      v21(v22);
      v23 = sub_1DD8258C4();
      v21(v23);
      sub_1DD824154(v2, &qword_1ECD0E540);
      if ((v20 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_11;
    }

    v15 = sub_1DD8258C4();
    v16(v15);
LABEL_9:
    sub_1DD824154(v2, &qword_1ECD10E30);
    goto LABEL_24;
  }

  sub_1DD6E26E4(v2 + v13);
  if (!v14)
  {
    goto LABEL_9;
  }

  sub_1DD824154(v2, &qword_1ECD0E540);
LABEL_11:
  v24 = type metadata accessor for SystemPromptResolution(0);
  sub_1DD826E64(v24[5]);
  if ((_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_1DD826E64(v24[6]);
  static SystemPromptResolution.UserAction.== infix(_:_:)();
  if ((v25 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_1DD825240();
  if (!v14)
  {
    goto LABEL_24;
  }

  sub_1DD826E58();
  if (!v28)
  {
    if (v26)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (v26)
  {
    sub_1DD825B9C(v27);
    v31 = v14 && v29 == v30;
    if (v31 || (sub_1DD875A30() & 1) != 0)
    {
LABEL_22:
      v32 = v1 + v24[8];
      v33 = *(v32 + 8);
      v34 = *(v32 + 16);
      v35 = *(v32 + 24);
      v36 = *(v32 + 32);
      v60[0] = *v32;
      v60[1] = v33;
      v60[2] = v34;
      v60[3] = v35;
      v61 = v36;
      v37 = v0 + v24[8];
      v38 = *(v37 + 8);
      v39 = *(v37 + 16);
      v40 = *(v37 + 24);
      v41 = *(v37 + 32);
      v58[0] = *v37;
      v58[1] = v38;
      v58[2] = v39;
      v58[3] = v40;
      v59 = v41;
      sub_1DD6E65D0();
      sub_1DD7FD604(v42, v43, v44, v45, v36);
      sub_1DD826680();
      sub_1DD702AB4();
      sub_1DD7FD604(v46, v47, v48, v49, v41);
      static SystemPromptResolution.ResolutionInput.== infix(_:_:)(v60, v58);
      sub_1DD826680();
      sub_1DD702AB4();
      sub_1DD7FD670(v50, v51, v52, v53, v41);
      sub_1DD6E65D0();
      sub_1DD7FD670(v54, v55, v56, v57, v36);
    }
  }

LABEL_24:
  sub_1DD6DFED0();
}

uint64_t sub_1DD7A23E8(uint64_t a1)
{
  v2 = sub_1DD6FDD68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A2424(uint64_t a1)
{
  v2 = sub_1DD6FDD68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A2460(uint64_t a1)
{
  v2 = sub_1DD7FD6DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A249C(uint64_t a1)
{
  v2 = sub_1DD7FD6DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A24D8(uint64_t a1)
{
  v2 = sub_1DD7FD730();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A2514(uint64_t a1)
{
  v2 = sub_1DD7FD730();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A2550(uint64_t a1)
{
  v2 = sub_1DD7FD7D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A258C(uint64_t a1)
{
  v2 = sub_1DD7FD7D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A25C8(uint64_t a1)
{
  v2 = sub_1DD6FDF68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A2604(uint64_t a1)
{
  v2 = sub_1DD6FDF68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessagePayload.RequestPrescribedPlan.SearchTool.query.setter()
{
  sub_1DD6DE304();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligenceFlow::MessagePayload::RequestPrescribedPlan::SearchTool __swiftcall MessagePayload.RequestPrescribedPlan.SearchTool.init(query:isLowConfidenceKnowledge:shouldOpenResultIfApplicable:)(IntelligenceFlow::MessagePayload::RequestPrescribedPlan::SearchTool query, Swift::Bool isLowConfidenceKnowledge, Swift::Bool shouldOpenResultIfApplicable)
{
  *v3 = query.query;
  *(v3 + 16) = isLowConfidenceKnowledge;
  *(v3 + 17) = shouldOpenResultIfApplicable;
  query.isLowConfidenceKnowledge = isLowConfidenceKnowledge;
  return query;
}

IntelligenceFlow::MessagePayload::RequestPrescribedPlan::SearchTool __swiftcall MessagePayload.RequestPrescribedPlan.SearchTool.init(query:isLowConfidenceKnowledge:)(IntelligenceFlow::MessagePayload::RequestPrescribedPlan::SearchTool query, Swift::Bool isLowConfidenceKnowledge)
{
  *v2 = query.query;
  *(v2 + 16) = isLowConfidenceKnowledge;
  *(v2 + 17) = 0;
  query.isLowConfidenceKnowledge = isLowConfidenceKnowledge;
  return query;
}

uint64_t static MessagePayload.RequestPrescribedPlan.SearchTool.== infix(_:_:)(uint64_t a1)
{
  sub_1DD6E27E8(a1);
  sub_1DD700BB8();
  v7 = v7 && v5 == v6;
  if (v7)
  {
    if (v3 != v4)
    {
      return 0;
    }

    return v1 ^ v2 ^ 1u;
  }

  sub_1DD875A30();
  result = sub_1DD6FE86C();
  if ((v9 & 1) != 0 && ((v3 ^ v4) & 1) == 0)
  {
    return v1 ^ v2 ^ 1u;
  }

  return result;
}

uint64_t sub_1DD7A278C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001DD8B65A0 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001CLL && 0x80000001DD8B65C0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7A28A4(char a1)
{
  if (!a1)
  {
    return 0x7972657571;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0xD00000000000001CLL;
}

uint64_t sub_1DD7A2904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A278C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7A292C(uint64_t a1)
{
  v2 = sub_1DD7FD928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A2968(uint64_t a1)
{
  v2 = sub_1DD7FD928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.RequestPrescribedPlan.SearchTool.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  sub_1DD710A9C(&qword_1ECD10F90, &qword_1DD8892F0);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEA6C();
  sub_1DD826A0C();
  sub_1DD6FE770(v2);
  sub_1DD7FD928();
  sub_1DD6E17D8();
  sub_1DD875BB0();
  sub_1DD825870();
  sub_1DD875970();
  if (!v0)
  {
    sub_1DD6DEC54();
    sub_1DD705E14();
    sub_1DD875980();
    sub_1DD6E0FF8();
    sub_1DD705E14();
    sub_1DD875980();
  }

  v4 = sub_1DD6EEDBC();
  v5(v4);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.RequestPrescribedPlan.SearchTool.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD8255B0();
  sub_1DD710A9C(&qword_1ECD10FA0, &qword_1DD8892F8);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v6 = sub_1DD7FD928();
  sub_1DD6ED2A4(&type metadata for MessagePayload.RequestPrescribedPlan.SearchTool.CodingKeys, v7, v6);
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD8259A4();
    sub_1DD6E5374();
    sub_1DD875870();
    sub_1DD825CD4();
    sub_1DD824CE8();
    sub_1DD6E5374();
    v11 = sub_1DD875880();
    sub_1DD825178();
    sub_1DD6E5374();
    v8 = sub_1DD875880();
    v9 = sub_1DD6E0F98();
    v10(v9);
    *v2 = v4;
    *(v2 + 8) = v3;
    *(v2 + 16) = v11 & 1;
    *(v2 + 17) = v8 & 1;

    sub_1DD826950();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t static StatementID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a2 + 16);
    if (v3)
    {
      if (v4)
      {
        v5 = *(a1 + 8) == *(a2 + 8) && v3 == v4;
        if (v5 || (sub_1DD875A30() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1DD7A2D48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001DD8B65E0 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x41746E656D656C65 && a2 == 0xEE007865646E4974)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD7A2E20(char a1)
{
  if (a1)
  {
    return 0x41746E656D656C65;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1DD7A2E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A2D48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7A2E98(uint64_t a1)
{
  v2 = sub_1DD7FD97C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A2ED4(uint64_t a1)
{
  v2 = sub_1DD7FD97C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessagePayload.RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.elementAtIndex.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

IntelligenceFlow::MessagePayload::RequestPrescribedPlan::OpenSuccessValueFromLatestRequestTool __swiftcall MessagePayload.RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.init(elementAtIndex:)(IntelligenceFlow::MessagePayload::RequestPrescribedPlan::OpenSuccessValueFromLatestRequestTool elementAtIndex)
{
  *v1 = elementAtIndex.elementAtIndex.value;
  *(v1 + 8) = elementAtIndex.elementAtIndex.is_nil;
  return elementAtIndex;
}

uint64_t static MessagePayload.RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DD7A3028(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x41746E656D656C65 && a2 == 0xEE007865646E4974)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7A30D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A3028(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7A30FC(uint64_t a1)
{
  v2 = sub_1DD7FD9D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A3138(uint64_t a1)
{
  v2 = sub_1DD7FD9D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  sub_1DD710A9C(&qword_1ECD10FC0, &qword_1DD889310);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEBA0();
  sub_1DD6E7320(v0);
  sub_1DD7FD9D0();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD8255A4();
  sub_1DD875950();
  v2 = sub_1DD6FF808();
  v3(v2);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void MessagePayload.RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD70068C();
  v3 = v2;
  sub_1DD710A9C(&qword_1ECD10FD0, &qword_1DD889318);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DEBA0();
  sub_1DD6DE568();
  sub_1DD7FD9D0();
  sub_1DD6E4218();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (!v1)
  {
    sub_1DD6FAC28();
    v5 = sub_1DD875850();
    v7 = v6;
    v8 = sub_1DD6DDEDC();
    v9(v8);
    *v3 = v5;
    *(v3 + 8) = v7 & 1;
  }

  sub_1DD6E1EC8(v0);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7A33D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7A3464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A33D8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7A3490(uint64_t a1)
{
  v2 = sub_1DD7FDA24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A34CC(uint64_t a1)
{
  v2 = sub_1DD7FDA24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.RequestPrescribedPlan.LowConfidenceKnowledgeTool.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  sub_1DD710A9C(&qword_1ECD10FD8, &qword_1DD889320);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD7FDA24();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v1 = sub_1DD6FF808();
  v2(v1);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7A369C(uint64_t a1)
{
  v2 = sub_1DD7FDA78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A36D8(uint64_t a1)
{
  v2 = sub_1DD7FDA78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessagePayload.RequestPrescribedPlan.ConvertTool.query.setter()
{
  sub_1DD6DE304();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MessagePayload.RequestPrescribedPlan.ConvertTool.partner.setter()
{
  sub_1DD6DE304();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t MessagePayload.RequestPrescribedPlan.ConvertTool.directInvocationClient.setter()
{
  sub_1DD6DE304();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

void __swiftcall MessagePayload.RequestPrescribedPlan.ConvertTool.init(query:isExplicit:)(IntelligenceFlow::MessagePayload::RequestPrescribedPlan::ConvertTool *__return_ptr retstr, Swift::String query, Swift::Bool isExplicit)
{
  retstr->directInvocationClient = 0u;
  retstr->partner = 0u;
  sub_1DD8271EC(query._countAndFlagsBits, query._object, isExplicit, retstr);
}

void __swiftcall MessagePayload.RequestPrescribedPlan.ConvertTool.init(query:isExplicit:partner:)(IntelligenceFlow::MessagePayload::RequestPrescribedPlan::ConvertTool *__return_ptr retstr, Swift::String query, Swift::Bool isExplicit, Swift::String_optional partner)
{
  retstr->directInvocationClient.value._countAndFlagsBits = 0;
  retstr->directInvocationClient.value._object = 0;
  _s16IntelligenceFlow14MessagePayloadO21RequestPrescribedPlanO11DisplayToolV5query10isExplicit7partnerAGSS_SbSSSgtcfC_0(query._countAndFlagsBits, query._object, isExplicit, partner.value._countAndFlagsBits, partner.value._object, retstr);
}

void __swiftcall MessagePayload.RequestPrescribedPlan.ConvertTool.init(query:isExplicit:partner:directInvocationClient:)(IntelligenceFlow::MessagePayload::RequestPrescribedPlan::ConvertTool *__return_ptr retstr, Swift::String query, Swift::Bool isExplicit, Swift::String_optional partner, Swift::String_optional directInvocationClient)
{
  retstr->query = query;
  retstr->isExplicit = isExplicit;
  retstr->partner = partner;
  retstr->directInvocationClient = directInvocationClient;
}

void static MessagePayload.RequestPrescribedPlan.ConvertTool.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v1 = sub_1DD6E27E8(v0);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v9 = *(v2 + 16);
  v11 = *(v2 + 24);
  v10 = *(v2 + 32);
  v13 = *(v2 + 40);
  v12 = *(v2 + 48);
  if (v1 == *v2 && *(v3 + 8) == *(v2 + 8))
  {
    if (v4 != v9)
    {
      goto LABEL_25;
    }
  }

  else
  {
    sub_1DD875A30();
    sub_1DD6FE86C();
    if (v15 & 1) == 0 || ((v4 ^ v9))
    {
      goto LABEL_25;
    }
  }

  if (v6)
  {
    if (!v10)
    {
      goto LABEL_25;
    }

    if (v5 != v11 || v6 != v10)
    {
      sub_1DD6EFF74();
      sub_1DD7051CC();
      if ((sub_1DD875A30() & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else if (v10)
  {
    goto LABEL_25;
  }

  if (v8 && v12 && (v7 != v13 || v8 != v12))
  {
    v18 = sub_1DD6DDEFC();
    sub_1DD7013BC(v18, v19);
  }

LABEL_25:
  sub_1DD6DFED0();
}

uint64_t sub_1DD7A3A40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x63696C7078457369 && a2 == 0xEA00000000007469;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72656E74726170 && a2 == 0xE700000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000016 && 0x80000001DD8B6600 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1DD7A3BA4(char a1)
{
  result = 0x7972657571;
  switch(a1)
  {
    case 1:
      result = 0x63696C7078457369;
      break;
    case 2:
      result = 0x72656E74726170;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7A3C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A3A40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7A3C5C(uint64_t a1)
{
  v2 = sub_1DD7FDACC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A3C98(uint64_t a1)
{
  v2 = sub_1DD7FDACC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.RequestPrescribedPlan.ConvertTool.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD700858();
  sub_1DD710A9C(&qword_1ECD11008, &qword_1DD889340);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEA6C();
  sub_1DD826A0C();
  v2 = sub_1DD8267D8();
  sub_1DD6E7320(v2);
  sub_1DD7FDACC();
  sub_1DD6E17D8();
  sub_1DD825680();
  sub_1DD875BB0();
  sub_1DD824B80();
  sub_1DD6E0E40();
  sub_1DD875970();
  if (!v0)
  {
    sub_1DD6DEC54();
    sub_1DD705E14();
    sub_1DD875980();
    sub_1DD6E0FF8();
    sub_1DD6F9BF8();
    sub_1DD6E0E40();
    sub_1DD875920();
    sub_1DD6E6174();
    sub_1DD824D30();
    sub_1DD875920();
  }

  v3 = sub_1DD6EEDBC();
  v4(v3);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.RequestPrescribedPlan.ConvertTool.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1DD6DED2C();
  sub_1DD6E6390();
  v25 = v24;
  sub_1DD710A9C(&qword_1ECD11018, &qword_1DD889348);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6E7258();
  sub_1DD6FE770(v22);
  sub_1DD7FDACC();
  sub_1DD825968();
  sub_1DD875B90();
  if (v23)
  {
    sub_1DD6E1EC8(v22);
  }

  else
  {
    sub_1DD825188();
    sub_1DD825ACC();
    v27 = sub_1DD875870();
    v29 = v28;
    sub_1DD824CE8();
    sub_1DD825560();
    v39 = sub_1DD875880();
    sub_1DD825178();
    sub_1DD825560();
    v37 = sub_1DD875820();
    v38 = v30;
    sub_1DD6E6174();
    sub_1DD825560();
    sub_1DD875820();
    v32 = v31;
    sub_1DD826470();
    v36 = v33;
    v34 = sub_1DD825570();
    v35(v34);
    *v25 = v27;
    *(v25 + 8) = v29;
    *(v25 + 16) = v39;
    *(v25 + 24) = v37;
    *(v25 + 32) = v38;
    *(v25 + 40) = v36;
    *(v25 + 48) = v32;

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

void __swiftcall MessagePayload.RequestPrescribedPlan.DisplayTool.init(query:isExplicit:)(IntelligenceFlow::MessagePayload::RequestPrescribedPlan::DisplayTool *__return_ptr retstr, Swift::String query, Swift::Bool isExplicit)
{
  retstr->partner.value._countAndFlagsBits = 0;
  retstr->partner.value._object = 0;
  sub_1DD8271EC(query._countAndFlagsBits, query._object, isExplicit, retstr);
}

uint64_t sub_1DD7A40C0(uint64_t a1)
{
  v2 = sub_1DD7FDB20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A40FC(uint64_t a1)
{
  v2 = sub_1DD7FDB20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s16IntelligenceFlow14MessagePayloadO21RequestPrescribedPlanO11DisplayToolV2eeoiySbAG_AGtFZ_0(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v2 + 16);
  v9 = *(v2 + 24);
  v8 = *(v2 + 32);
  if (v1 == *v2 && *(v3 + 8) == *(v2 + 8))
  {
    if (v4 != v7)
    {
      return 0;
    }

    goto LABEL_9;
  }

  sub_1DD875A30();
  result = sub_1DD6FE86C();
  if ((v12 & 1) != 0 && ((v4 ^ v7) & 1) == 0)
  {
LABEL_9:
    if (v6)
    {
      if (v8)
      {
        if (v5 == v9 && v6 == v8)
        {
          return 1;
        }

        v14 = sub_1DD6DDEFC();
        if (sub_1DD7013BC(v14, v15))
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DD7A42C8()
{
  sub_1DD6E1F34();
  v3 = v1 == 0x7972657571 && v2 == 0xE500000000000000;
  if (v3 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x63696C7078457369 && v0 == 0xEA00000000007469;
    if (v5 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
    {

      return 1;
    }

    else if (v1 == 0x72656E74726170 && v0 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      sub_1DD824AA4();
      sub_1DD875A30();
      sub_1DD82698C();
      if (v1)
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

uint64_t sub_1DD7A43B8(uint64_t a1)
{
  v2 = sub_1DD7FDB74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A43F4(uint64_t a1)
{
  v2 = sub_1DD7FDB74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD7A4464()
{
  sub_1DD6DED2C();
  v11 = v1;
  v3 = v2;
  v5 = sub_1DD825C68(v2, v4);
  sub_1DD710A9C(v5, v6);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  sub_1DD826A0C();
  v8 = sub_1DD824D14(v3);
  v11(v8);
  sub_1DD875BB0();
  sub_1DD824B80();
  sub_1DD825CC8();
  sub_1DD875970();
  if (!v0)
  {
    sub_1DD6DEC54();
    sub_1DD705E14();
    sub_1DD875980();
    sub_1DD6E0FF8();
    sub_1DD824D30();
    sub_1DD875920();
  }

  v9 = sub_1DD6EEDBC();
  v10(v9);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void sub_1DD7A45D8()
{
  sub_1DD6DED2C();
  v4 = v3;
  sub_1DD825A04();
  v19 = v5;
  v8 = sub_1DD825C68(v6, v7);
  sub_1DD710A9C(v8, v9);
  sub_1DD6DDEAC();
  v11 = v10;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DDFE4();
  v13 = v0[3];
  v14 = sub_1DD6E7320(v0);
  v4(v14);
  sub_1DD827014();
  sub_1DD827524();
  sub_1DD825680();
  sub_1DD875B90();
  if (v2)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD824D60();
    sub_1DD875870();
    sub_1DD825CD4();
    sub_1DD824CE8();
    sub_1DD825108();
    v20 = sub_1DD875880();
    sub_1DD825178();
    sub_1DD825108();
    sub_1DD875820();
    v16 = v15;
    sub_1DD826470();
    v18 = v17;
    (*(v11 + 8))(v1);
    *v19 = v13;
    *(v19 + 8) = 0;
    *(v19 + 16) = v20;
    *(v19 + 24) = v18;
    *(v19 + 32) = v16;

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t static MessagePayload.RequestPrescribedPlan.== infix(_:_:)(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[1];
  v110 = *a1;
  v111 = v8;
  *v112 = a1[2];
  v9 = *v112;
  v10 = a2[1];
  *v113 = *a2;
  *&v113[16] = v10;
  v12 = *a2;
  v11 = a2[1];
  *v114 = a2[2];
  *&v114[9] = *(a2 + 41);
  v13 = *(a1 + 41);
  *&v112[9] = v13;
  v115[0] = v110;
  v115[1] = v8;
  v116[0] = v9;
  *(v116 + 9) = v13;
  v116[2] = v12;
  v116[3] = v11;
  v117[0] = a2[2];
  *(v117 + 9) = *(a2 + 41);
  v14 = *(&v110 + 9) | ((*(&v110 + 13) | (HIBYTE(v110) << 16)) << 32);
  v15 = v8;
  v16 = BYTE1(v8);
  v17 = v13 >> 56;
  switch(HIBYTE(v13))
  {
    case 1:
      if (v114[24] != 1)
      {
        goto LABEL_34;
      }

      v46 = BYTE8(v110) | (v14 << 8);
      if (v110 == *v113 && v46 == *&v113[8])
      {
        v75 = sub_1DD8271F8(v17, v46, *v113, *&v113[8], a5, a6, a7, a8, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, *(&v110 + 1), v111, *(&v111 + 1), *v112, *&v112[8], *&v112[16], *&v112[24]);
        sub_1DD8272B0(v75, v76, v77, v78, v79, v80, v81, v82, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
        sub_1DD824154(v115, &unk_1ECD11050);
        goto LABEL_46;
      }

      v48 = sub_1DD875A30();
      v49 = v48;
      v57 = sub_1DD8271F8(v48, v50, v51, v52, v53, v54, v55, v56, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, *(&v110 + 1), v111, *(&v111 + 1), *v112, *&v112[8], *&v112[16], *&v112[24]);
      sub_1DD8272B0(v57, v58, v59, v60, v61, v62, v63, v64, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
      sub_1DD824154(v115, &unk_1ECD11050);
      v65 = 0;
      if (v49)
      {
        goto LABEL_46;
      }

      return v65 & 1;
    case 2:
      if (v114[24] == 2)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    case 3:
      if (v114[24] != 3)
      {

LABEL_33:

LABEL_34:

LABEL_35:
        sub_1DD8271F8(v17, a2, a3, a4, a5, a6, a7, a8, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, *(&v110 + 1), v111, *(&v111 + 1), *v112, *&v112[8], *&v112[16], *&v112[24]);
        sub_1DD824154(v115, &unk_1ECD11050);
        goto LABEL_36;
      }

      v95 = v110;
      v96 = BYTE8(v110) | (v14 << 8);
      LOBYTE(v97) = v8 & 1;
      v98 = *(&v8 + 1);
      LOBYTE(v99) = v112[0];
      *(&v99 + 1) = *&v112[1];
      HIBYTE(v99) = (*&v112[1] | ((*&v112[5] | (v112[7] << 16)) << 32)) >> 48;
      *(&v99 + 5) = *&v112[5];
      v100 = *&v112[8];
      v101 = v13 >> 56;
      *v91 = *v113;
      sub_1DD827644(&v110);
      v94 = *(v45 + 104);
      static MessagePayload.RequestPrescribedPlan.ConvertTool.== infix(_:_:)();
LABEL_31:
      v65 = v37;
      v66 = sub_1DD8271F8(v37, v38, v39, v40, v41, v42, v43, v44, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, *(&v110 + 1), v111, *(&v111 + 1), *v112, *&v112[8], *&v112[16], *&v112[24]);
      sub_1DD8272B0(v66, v67, v68, v69, v70, v71, v72, v73, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
      sub_1DD824154(v115, &unk_1ECD11050);
      return v65 & 1;
    case 4:
      if (v114[24] == 4)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    case 5:
      if (v114[24] != 5)
      {
        goto LABEL_33;
      }

LABEL_10:
      v95 = v110;
      v96 = BYTE8(v110) | (v14 << 8);
      LOBYTE(v97) = v8 & 1;
      v98 = *(&v8 + 1);
      LOBYTE(v99) = v112[0];
      *(&v99 + 1) = *&v112[1];
      HIBYTE(v99) = (*&v112[1] | ((*&v112[5] | (v112[7] << 16)) << 32)) >> 48;
      *(&v99 + 5) = *&v112[5];
      *v91 = *v113;
      sub_1DD827644(&v110);
      v37 = static MessagePayload.RequestPrescribedPlan.DisplayTool.== infix(_:_:)(&v95, v91);
      goto LABEL_31;
    case 6:
      if (v114[24] != 6)
      {
        goto LABEL_34;
      }

      LODWORD(v95) = v110;
      LOBYTE(v96) = BYTE8(v110);
      *(&v96 + 1) = *(&v110 + 9);
      HIBYTE(v96) = (*(&v110 + 9) | ((*(&v110 + 13) | (HIBYTE(v110) << 16)) << 32)) >> 48;
      *(&v96 + 5) = *(&v110 + 13);
      LOWORD(v97) = v8;
      *(&v97 + 2) = v8 >> 16;
      HIWORD(v97) = WORD3(v8);
      v98 = *(&v8 + 1);
      LOBYTE(v99) = v112[0] & 1;
      *v91 = *v113;
      *&v91[8] = *&v113[8];
      v92 = *&v113[24];
      LOBYTE(v93) = v114[0] & 1;
      v37 = static AncestorID.== infix(_:_:)(&v95, v91);
      goto LABEL_31;
    case 7:
      if (v114[24] != 7)
      {
        goto LABEL_35;
      }

      sub_1DD824154(v115, &unk_1ECD11050);
      if (BYTE8(v110))
      {
        if ((v113[8] & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_46;
      }

      if ((v113[8] & 1) == 0 && v110 == *v113)
      {
        goto LABEL_46;
      }

      goto LABEL_36;
    default:
      if (v114[24])
      {
        goto LABEL_34;
      }

      v18 = BYTE8(v110) | (v14 << 8);
      if (v110 == *v113 && v18 == *&v113[8])
      {
        v83 = sub_1DD8271F8(v17, v18, *v113, *&v113[8], a5, a6, a7, a8, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, *(&v110 + 1), v111, *(&v111 + 1), *v112, *&v112[8], *&v112[16], *&v112[24]);
        sub_1DD8272B0(v83, v84, v85, v86, v87, v88, v89, v90, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
        sub_1DD824154(v115, &unk_1ECD11050);
      }

      else
      {
        v20 = sub_1DD875A30();
        v21 = v20;
        v29 = sub_1DD8271F8(v20, v22, v23, v24, v25, v26, v27, v28, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, *(&v110 + 1), v111, *(&v111 + 1), *v112, *&v112[8], *&v112[16], *&v112[24]);
        sub_1DD8272B0(v29, v30, v31, v32, v33, v34, v35, v36, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
        sub_1DD824154(v115, &unk_1ECD11050);
        if ((v21 & 1) == 0)
        {
LABEL_36:
          v65 = 0;
          return v65 & 1;
        }
      }

      if ((v15 ^ v113[16]) & 1) != 0 || ((v16 ^ v113[17]))
      {
        goto LABEL_36;
      }

LABEL_46:
      v65 = 1;
      return v65 & 1;
  }
}

uint64_t sub_1DD7A4BE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F54686372616573 && a2 == 0xEA00000000006C6FLL;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x80000001DD8B6620 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6F6F5474786574 && a2 == 0xE800000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x54747265766E6F63 && a2 == 0xEB000000006C6F6FLL;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x5479616C70736964 && a2 == 0xEB000000006C6F6FLL;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6764656C776F6E6BLL && a2 == 0xED00006C6F6F5465;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C6F6F546E65706FLL && a2 == 0xE800000000000000;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000025 && 0x80000001DD8B6640 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD875A30();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD7A4E78(char a1)
{
  result = 0x6F54686372616573;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      v3 = 1954047348;
      goto LABEL_10;
    case 3:
      result = 0x54747265766E6F63;
      break;
    case 4:
      result = 0x5479616C70736964;
      break;
    case 5:
      result = 0x6764656C776F6E6BLL;
      break;
    case 6:
      v3 = 1852141679;
LABEL_10:
      result = v3 | 0x6C6F6F5400000000;
      break;
    case 7:
      result = 0xD000000000000025;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7A4F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A4BE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7A4FA4(uint64_t a1)
{
  v2 = sub_1DD7FDC00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A4FE0(uint64_t a1)
{
  v2 = sub_1DD7FDC00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A501C(uint64_t a1)
{
  v2 = sub_1DD7FDEF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A5058(uint64_t a1)
{
  v2 = sub_1DD7FDEF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A5094(uint64_t a1)
{
  v2 = sub_1DD7FDE4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A50D0(uint64_t a1)
{
  v2 = sub_1DD7FDE4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A510C(uint64_t a1)
{
  v2 = sub_1DD7FDDA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A5148(uint64_t a1)
{
  v2 = sub_1DD7FDDA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A5184(uint64_t a1)
{
  v2 = sub_1DD7FE044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A51C0(uint64_t a1)
{
  v2 = sub_1DD7FE044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A51FC(uint64_t a1)
{
  v2 = sub_1DD7FDC54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A5238(uint64_t a1)
{
  v2 = sub_1DD7FDC54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A5274(uint64_t a1)
{
  v2 = sub_1DD7FDCFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A52B0(uint64_t a1)
{
  v2 = sub_1DD7FDCFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A52EC(uint64_t a1)
{
  v2 = sub_1DD7FE0EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A5328(uint64_t a1)
{
  v2 = sub_1DD7FE0EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A5364(uint64_t a1)
{
  v2 = sub_1DD7FDF9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A53A0(uint64_t a1)
{
  v2 = sub_1DD7FDF9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.RequestPrescribedPlan.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  sub_1DD710A9C(&qword_1ECD11058, &qword_1DD889378);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD824B94(v27, v81);
  sub_1DD710A9C(&qword_1ECD11060, &qword_1DD889380);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD8249DC(v29, v82);
  v30 = sub_1DD710A9C(&qword_1ECD11068, &qword_1DD889388);
  sub_1DD6DF3FC(v30, &a16);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD8247DC(v32, v83);
  v33 = sub_1DD710A9C(&qword_1ECD11070, &qword_1DD889390);
  sub_1DD6DF3FC(v33, &a13);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v35);
  v36 = sub_1DD710A9C(&qword_1ECD11078, &qword_1DD889398);
  sub_1DD6DF3FC(v36, &a10);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD825454(v38, v84);
  v39 = sub_1DD710A9C(&qword_1ECD11080, &qword_1DD8893A0);
  sub_1DD6DF3FC(v39, &v90 + 8);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1DD82543C(v41, v85);
  v42 = sub_1DD710A9C(&qword_1ECD11088, &qword_1DD8893A8);
  sub_1DD6DF3FC(v42, &v88);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1DD6DE340();
  v44 = sub_1DD710A9C(&qword_1ECD11090, &qword_1DD8893B0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1DD6DEA6C();
  sub_1DD710A9C(&qword_1ECD11098, &qword_1DD8893B8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1DD6DEBA0();
  v86 = *(v20 + 40);
  v87 = *(v20 + 24);
  v47 = *(v20 + 56);
  sub_1DD6E7320(v25);
  sub_1DD7FDC00();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  switch(v47)
  {
    case 1:
      sub_1DD7FE044();
      sub_1DD824AD4();
      sub_1DD875910();
      sub_1DD7FE098();
      sub_1DD8759D0();
      v69 = sub_1DD824890();
      v70(v69);
      v50 = sub_1DD6FF900();
      goto LABEL_11;
    case 2:
      sub_1DD7FDF9C();
      sub_1DD6F9BEC();
      sub_1DD824AD4();
      sub_1DD8271B0(v57, v58, v59, v60);
      sub_1DD825350();
      sub_1DD8275DC();
      sub_1DD7FDFF0();
      sub_1DD8255D0();
      sub_1DD8759D0();
      goto LABEL_10;
    case 3:
      sub_1DD7FDEF4();
      sub_1DD6F9BEC();
      sub_1DD824AD4();
      sub_1DD8271B0(v61, v62, v63, v64);
      sub_1DD825350();
      v90 = v86;
      sub_1DD8275DC();
      sub_1DD7FDF48();
      sub_1DD8255D0();
      sub_1DD8759D0();
      goto LABEL_10;
    case 4:
      sub_1DD7FDE4C();
      sub_1DD6F9BEC();
      sub_1DD824AD4();
      sub_1DD8271B0(v53, v54, v55, v56);
      sub_1DD825350();
      sub_1DD8275DC();
      sub_1DD7FDEA0();
      sub_1DD8255D0();
      sub_1DD8759D0();
      goto LABEL_10;
    case 5:
      sub_1DD7FDDA4();
      sub_1DD6F9BEC();
      sub_1DD824AD4();
      sub_1DD8271B0(v71, v72, v73, v74);
      sub_1DD825350();
      sub_1DD8275DC();
      sub_1DD7FDDF8();
      sub_1DD8255D0();
      sub_1DD8759D0();
      goto LABEL_10;
    case 6:
      LOWORD(a10) = WORD4(v87);
      sub_1DD7FDCFC();
      sub_1DD6F9BEC();
      sub_1DD824AD4();
      sub_1DD8271B0(v75, v76, v77, v78);
      v88 = v87;
      v89 = BYTE8(v87) & 1;
      sub_1DD7FDD50();
      sub_1DD825AB4();
      sub_1DD8759D0();
      goto LABEL_10;
    case 7:
      sub_1DD7FDC54();
      sub_1DD824AD4();
      sub_1DD8271B0(v65, v66, v67, v68);
      sub_1DD7FDCA8();
      sub_1DD825AB4();
      sub_1DD8759D0();
LABEL_10:
      v79 = sub_1DD824838();
      v80(v79);
      v50 = sub_1DD6E61C4();
LABEL_11:
      v51 = v21;
      break;
    default:
      sub_1DD7FE0EC();
      sub_1DD6E710C();
      sub_1DD875910();
      sub_1DD7FE140();
      sub_1DD8759D0();
      v48 = sub_1DD702E84();
      v49(v48, v44);
      v50 = sub_1DD6FBE88();
      break;
  }

  v52(v50, v51);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void MessagePayload.RequestPrescribedPlan.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v114 = v26;
  v112 = sub_1DD710A9C(&qword_1ECD11128, &qword_1DD8893C0);
  sub_1DD6DDEAC();
  v115 = v27;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6E0C6C();
  sub_1DD8268FC(v29);
  v113 = sub_1DD710A9C(&qword_1ECD11130, &qword_1DD8893C8);
  sub_1DD6DDEAC();
  v111 = v30;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD824C9C(v32, v104);
  v33 = sub_1DD710A9C(&qword_1ECD11138, &qword_1DD8893D0);
  sub_1DD6DF3FC(v33, &a18);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD824CB0(v35, v105);
  v110 = sub_1DD710A9C(&qword_1ECD11140, &qword_1DD8893D8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD824948(v37, v106);
  v38 = sub_1DD710A9C(&qword_1ECD11148, &qword_1DD8893E0);
  sub_1DD6DF3FC(v38, &a17);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD824FEC(v40, v107);
  v41 = sub_1DD710A9C(&qword_1ECD11150, &qword_1DD8893E8);
  sub_1DD6DF3FC(v41, &a16);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD824A38(v43, v108);
  v44 = sub_1DD710A9C(&qword_1ECD11158, &qword_1DD8893F0);
  sub_1DD6DF3FC(v44, &a15);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1DD6E7258();
  sub_1DD710A9C(&qword_1ECD11160, &qword_1DD8893F8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1DD6DEBA0();
  v47 = sub_1DD710A9C(&qword_1ECD11168, &qword_1DD889400);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1DD6F0A58();
  sub_1DD6E1C64();
  sub_1DD7FDC00();
  sub_1DD6EF0F4();
  sub_1DD875B90();
  if (!v20)
  {
    v49 = v116;
    sub_1DD875900();
    sub_1DD6ED750();
    sub_1DD826B24();
    v50 = v47;
    if (!v51)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v58 == v59)
      {
        __break(1u);
        return;
      }

      v109 = *(v57 + v56);
      sub_1DD77E6E4(v52, v53, v54, v55, v56);
      sub_1DD6ED830();
      sub_1DD6E0194();
      v61 = v60;
      swift_unknownObjectRelease();
      if (v47 == v61 >> 1)
      {
        v62 = v47;
        v63 = v114;
        switch(v109)
        {
          case 1:
            LOBYTE(v118) = 1;
            sub_1DD7FE044();
            sub_1DD6EFF94();
            sub_1DD6E710C();
            sub_1DD875800();
            sub_1DD7FE38C();
            sub_1DD824DF8();
            sub_1DD8758D0();
            swift_unknownObjectRelease();
            v97 = sub_1DD6E5DE8();
            v98(v97);
            sub_1DD825128();
            v99(v21, v62);
            sub_1DD8256F8();
            v91 = v118;
            v92 = v119;
            v95 = v118 & 0xFFFFFFFF00000000;
            v96 = v119 & 0xFFFFFFFFFFFFFF00;
            goto LABEL_20;
          case 2:
            LOBYTE(v118) = 2;
            sub_1DD7FDF9C();
            sub_1DD8251C8(&type metadata for MessagePayload.RequestPrescribedPlan.TextToolCodingKeys, &v118);
            sub_1DD7FE338();
            sub_1DD824A28();
            sub_1DD826A34();
            sub_1DD8758D0();
            sub_1DD8252B8();
            swift_unknownObjectRelease();
            goto LABEL_18;
          case 3:
            LOBYTE(v118) = 3;
            sub_1DD7FDEF4();
            sub_1DD8251C8(&type metadata for MessagePayload.RequestPrescribedPlan.ConvertToolCodingKeys, &v118);
            sub_1DD7FE2E4();
            sub_1DD824A28();
            sub_1DD826A34();
            sub_1DD8758D0();
            sub_1DD8252B8();
            swift_unknownObjectRelease();
            v76 = sub_1DD6E1858();
            v77(v76);
            v78 = sub_1DD8258AC();
            v79(v78);
            sub_1DD8256F8();
            v91 = v118;
            v92 = v119;
            v93 = v120;
            v86 = v121;
            v87 = v122;
            v95 = v118 & 0xFFFFFFFF00000000;
            v96 = v119 & 0xFFFFFFFFFFFFFF00;
            v88 = v123;
            v89 = v122 & 0xFFFFFFFFFFFFFF00;
            goto LABEL_20;
          case 4:
            LOBYTE(v118) = 4;
            sub_1DD7FDE4C();
            sub_1DD8251C8(&type metadata for MessagePayload.RequestPrescribedPlan.DisplayToolCodingKeys, &v118);
            sub_1DD7FE290();
            v49 = v110;
            sub_1DD6FF7A8();
            sub_1DD8258D0();
            sub_1DD8758D0();
            sub_1DD8252B8();
            swift_unknownObjectRelease();
            v74 = sub_1DD6FA9F4();
            goto LABEL_19;
          case 5:
            LOBYTE(v118) = 5;
            sub_1DD7FDDA4();
            sub_1DD8251C8(&type metadata for MessagePayload.RequestPrescribedPlan.KnowledgeToolCodingKeys, &v118);
            sub_1DD7FE23C();
            sub_1DD824A28();
            sub_1DD826A34();
            sub_1DD8758D0();
            sub_1DD8252B8();
            swift_unknownObjectRelease();
LABEL_18:
            v74 = sub_1DD6E1858();
LABEL_19:
            v75(v74, v49);
            v100 = sub_1DD8258AC();
            v101(v100);
            sub_1DD8256F8();
            v91 = v118;
            v92 = v119;
            v93 = v120;
            v95 = v118 & 0xFFFFFFFF00000000;
            v96 = v119 & 0xFFFFFFFFFFFFFF00;
            v86 = v121;
            v87 = v122;
            v89 = v122 & 0xFFFFFFFFFFFFFF00;
            goto LABEL_20;
          case 6:
            LOBYTE(v118) = 6;
            sub_1DD7FDCFC();
            sub_1DD6E710C();
            sub_1DD875800();
            sub_1DD7FE1E8();
            sub_1DD826238();
            sub_1DD8258D0();
            sub_1DD8758D0();
            sub_1DD827410();
            swift_unknownObjectRelease();
            (*(v111 + 8))(v116, v113);
            v102 = sub_1DD6DDEDC();
            v103(v102);
            v89 = 0;
            v95 = 0;
            v91 = v118;
            v92 = v119;
            v93 = v120;
            v86 = v121;
            v87 = v122;
            v96 = v119 & 0xFFFFFFFFFFFFFF00;
            v94 = v120 >> 8;
            v90 = v120 & 0xFFFFFFFFFFFF0000;
            goto LABEL_20;
          case 7:
            LOBYTE(v118) = 7;
            sub_1DD7FDC54();
            sub_1DD6E710C();
            sub_1DD875800();
            sub_1DD7FE194();
            sub_1DD826238();
            sub_1DD8265A8();
            sub_1DD8758D0();
            sub_1DD827410();
            swift_unknownObjectRelease();
            (*(v115 + 8))(v117, v112);
            v80 = sub_1DD705C50();
            v81(v80);
            sub_1DD8256F8();
            v96 = 0;
            v91 = v118;
            v92 = v119;
            v95 = v118 & 0xFFFFFFFF00000000;
            v73 = v25;
            v63 = v114;
            goto LABEL_21;
          default:
            LOBYTE(v118) = 0;
            sub_1DD7FE0EC();
            sub_1DD825CA4();
            sub_1DD8251C8(v64, v65);
            sub_1DD7FE3E0();
            sub_1DD824A28();
            sub_1DD826A34();
            sub_1DD8758D0();
            sub_1DD8252B8();
            swift_unknownObjectRelease();
            v82 = sub_1DD6E1858();
            v83(v82);
            v84 = sub_1DD8258AC();
            v85(v84);
            v89 = 0;
            v90 = 0;
            v91 = v118;
            v92 = v119;
            v93 = v120;
            LOBYTE(v94) = BYTE1(v120);
            v95 = v118 & 0xFFFFFFFF00000000;
            v96 = v119 & 0xFFFFFFFFFFFFFF00;
LABEL_20:
            v73 = v25;
LABEL_21:
            *v63 = v95 | v91;
            *(v63 + 8) = v96 | v92;
            *(v63 + 16) = v90 | v93 | (v94 << 8);
            *(v63 + 24) = v86;
            *(v63 + 32) = v89 | v87;
            *(v63 + 40) = v88;
            *(v63 + 56) = v109;
            break;
        }

        goto LABEL_10;
      }
    }

    v66 = sub_1DD875740();
    sub_1DD6E41BC(v66, MEMORY[0x1E69E6B28]);
    v68 = v67;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v68 = &type metadata for MessagePayload.RequestPrescribedPlan;
    sub_1DD875810();
    sub_1DD6DF12C();
    sub_1DD824B14();
    v69 = sub_1DD6FEB10();
    v70(v69);
    swift_willThrow();
    swift_unknownObjectRelease();
    v71 = sub_1DD6FFA00();
    v72(v71, v50);
  }

  v73 = v25;
LABEL_10:
  sub_1DD6E1EC8(v73);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7A6918(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7A69A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A6918(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7A69D0(uint64_t a1)
{
  v2 = sub_1DD7FE434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A6A0C(uint64_t a1)
{
  v2 = sub_1DD7FE434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.RequestSuggestedInvocation.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  sub_1DD710A9C(&qword_1ECD111B0, &qword_1DD889408);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD7FE434();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v1 = sub_1DD6FF808();
  v2(v1);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.Query.query.setter()
{
  sub_1DD6DE304();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MessagePayload.Query.variables.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t MessagePayload.Query.clientQueryId.setter()
{
  sub_1DD6DE304();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t MessagePayload.Query.init(query:safetyMode:clientQueryId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = 0;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  return result;
}

uint64_t MessagePayload.Query.init(query:variables:safetyMode:clientQueryId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t MessagePayload.Query.init(query:safetyMode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = a3;
  return result;
}

uint64_t MessagePayload.Query.init(query:variables:safetyMode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t MessagePayload.Query.init(query:variables:)()
{
  sub_1DD8250F8();

  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *v2 = v1;
  *(v2 + 8) = v0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  return result;
}

uint64_t MessagePayload.Query.init(query:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  return result;
}

uint64_t MessagePayload.Query.init(query:variables:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  return result;
}

void static MessagePayload.Query.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DD827764();
  v6 = sub_1DD6E27E8(v5);
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  v11 = *(v8 + 32);
  v12 = *(v8 + 40);
  v13 = *(v7 + 16);
  v14 = *(v7 + 24);
  v16 = *(v7 + 32);
  v15 = *(v7 + 40);
  v17 = v6 == *v7 && *(v8 + 8) == *(v7 + 8);
  if (v17 || (sub_1DD875A30() & 1) != 0)
  {
    if (v9)
    {
      if (!v13)
      {
        goto LABEL_19;
      }

      sub_1DD6DDEDC();
      sub_1DD7A874C();
      sub_1DD827878();
      if ((v9 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v13)
    {
      goto LABEL_19;
    }

    if (((v10 ^ v14) & 1) == 0 && v12 && v15 && (v11 != v16 || v12 != v15))
    {
      v19 = sub_1DD6DDEFC();
      sub_1DD7013BC(v19, v20);
    }
  }

LABEL_19:
  sub_1DD827720();
}

uint64_t sub_1DD7A6E70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C626169726176 && a2 == 0xE900000000000073;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F4D797465666173 && a2 == 0xEA00000000006564;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7551746E65696C63 && a2 == 0xED00006449797265)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DD7A6FDC(char a1)
{
  result = 0x7972657571;
  switch(a1)
  {
    case 1:
      result = 0x656C626169726176;
      break;
    case 2:
      result = 0x6F4D797465666173;
      break;
    case 3:
      result = 0x7551746E65696C63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7A7078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A6E70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7A70A0(uint64_t a1)
{
  v2 = sub_1DD7FE488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A70DC(uint64_t a1)
{
  v2 = sub_1DD7FE488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.Query.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  sub_1DD710A9C(&qword_1ECD111C8, &qword_1DD889418);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEA6C();
  sub_1DD6E49C0(v2);
  v4 = sub_1DD7FE488();
  sub_1DD6E1808(&type metadata for MessagePayload.Query.CodingKeys, v5, v4);
  sub_1DD705FD8();
  sub_1DD705C50();
  sub_1DD825CC8();
  sub_1DD875970();
  if (!v0)
  {
    sub_1DD825014();
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD7FD198();
    sub_1DD825630();
    sub_1DD6FF6E0();
    sub_1DD875960();
    sub_1DD6E0FF8();
    sub_1DD705E14();
    sub_1DD875980();
    sub_1DD6E6174();
    sub_1DD824D30();
    sub_1DD875920();
  }

  v6 = sub_1DD6EEDBC();
  v7(v6);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.Query.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1DD6DED2C();
  sub_1DD8255B0();
  sub_1DD710A9C(&qword_1ECD111D8, &qword_1DD889420);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6E7258();
  sub_1DD6E49C0(v22);
  sub_1DD7FE488();
  sub_1DD825968();
  sub_1DD827908(v26, v27, v28);
  if (v23)
  {
    sub_1DD6E1EC8(v22);
  }

  else
  {
    sub_1DD825188();
    sub_1DD825ACC();
    v29 = sub_1DD875870();
    v31 = v30;
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD82552C();
    sub_1DD7FD2FC();
    sub_1DD824B6C();
    sub_1DD8258B8();
    sub_1DD825ACC();
    sub_1DD875860();
    sub_1DD825178();
    sub_1DD825560();
    v39 = sub_1DD875880();
    sub_1DD6E6174();
    sub_1DD825560();
    sub_1DD875820();
    v33 = v32;
    sub_1DD826470();
    v37 = v34;
    v35 = sub_1DD825570();
    v36(v35);
    *v24 = v29;
    *(v24 + 8) = v31;
    *(v24 + 16) = v38;
    *(v24 + 24) = v39;
    *(v24 + 32) = v37;
    *(v24 + 40) = v33;

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7A74EC()
{
  sub_1DD705CF0();
  if (v2 == 0x74696E676F636572 && v0 == 0xEB000000006E6F69)
  {

    v4 = 0;
  }

  else
  {
    sub_1DD8256B0();
    sub_1DD875A30();
    sub_1DD82698C();
    v4 = v1 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7A7558(uint64_t a1)
{
  v2 = sub_1DD7FE4DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A7594(uint64_t a1)
{
  v2 = sub_1DD7FE4DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.SpeechQuery.Candidate.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  sub_1DD710A9C(&qword_1ECD111E0, &qword_1DD889428);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD7FE4DC();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v1 = sub_1DD6FF808();
  v2(v1);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.SpeechQuery.clientQueryId.setter()
{
  sub_1DD6DE304();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

IntelligenceFlow::MessagePayload::SpeechQuery __swiftcall MessagePayload.SpeechQuery.init(candidates:safetyMode:clientQueryId:)(Swift::OpaquePointer candidates, Swift::Bool safetyMode, Swift::String_optional clientQueryId)
{
  *v3 = candidates;
  *(v3 + 8) = safetyMode;
  *(v3 + 16) = clientQueryId;
  result.clientQueryId = clientQueryId;
  result.candidates = candidates;
  result.safetyMode = safetyMode;
  return result;
}

IntelligenceFlow::MessagePayload::SpeechQuery __swiftcall MessagePayload.SpeechQuery.init(candidates:safetyMode:)(IntelligenceFlow::MessagePayload::SpeechQuery candidates, Swift::Bool safetyMode)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = candidates.candidates._rawValue;
  *(v2 + 8) = safetyMode;
  candidates.safetyMode = safetyMode;
  return candidates;
}

IntelligenceFlow::MessagePayload::SpeechQuery __swiftcall MessagePayload.SpeechQuery.init(candidates:)(IntelligenceFlow::MessagePayload::SpeechQuery candidates)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = candidates.candidates._rawValue;
  *(v1 + 8) = 0;
  return candidates;
}

uint64_t static MessagePayload.SpeechQuery.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1DD7152B8();
  result = sub_1DD6FE86C();
  if ((v9 & 1) != 0 && ((v2 ^ v5) & 1) == 0)
  {
    if (v3)
    {
      if (v6)
      {
        if (v4 == v7 && v3 == v6)
        {
          return 1;
        }

        v11 = sub_1DD6E21D0();
        if (sub_1DD7013BC(v11, v12))
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DD7A7850(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F4D797465666173 && a2 == 0xEA00000000006564;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7551746E65696C63 && a2 == 0xED00006449797265)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

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

uint64_t sub_1DD7A7974(char a1)
{
  if (!a1)
  {
    return 0x74616469646E6163;
  }

  if (a1 == 1)
  {
    return 0x6F4D797465666173;
  }

  return 0x7551746E65696C63;
}

uint64_t sub_1DD7A79E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A7850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7A7A0C(uint64_t a1)
{
  v2 = sub_1DD7FE530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A7A48(uint64_t a1)
{
  v2 = sub_1DD7FE530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.SpeechQuery.encode(to:)()
{
  sub_1DD6DED2C();
  v1 = v0;
  sub_1DD710A9C(&qword_1ECD111F8, &qword_1DD889438);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DEA6C();
  sub_1DD824D14(v1);
  v3 = sub_1DD7FE530();

  sub_1DD6E17D8();
  sub_1DD8268F0();
  sub_1DD875BB0();
  sub_1DD710A9C(&qword_1ECD11208, &qword_1DD889440);
  sub_1DD7FE584();
  sub_1DD825BAC();
  sub_1DD82557C();
  sub_1DD8265A8();
  sub_1DD8759D0();

  if (!v3)
  {
    sub_1DD8256BC();
    sub_1DD875980();
    sub_1DD6EFF74();
    sub_1DD825668();
    sub_1DD875920();
  }

  v4 = sub_1DD6DEA04();
  v5(v4);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

void MessagePayload.SpeechQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD8255B0();
  sub_1DD710A9C(&qword_1ECD11220, &qword_1DD889448);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v14 = sub_1DD7FE530();
  sub_1DD6ED2A4(&type metadata for MessagePayload.SpeechQuery.CodingKeys, v15, v14);
  if (v11)
  {
    sub_1DD6E1EC8(v10);
  }

  else
  {
    sub_1DD710A9C(&qword_1ECD11208, &qword_1DD889440);
    sub_1DD7FE65C();
    sub_1DD6E9644();
    sub_1DD8258B8();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    sub_1DD6E5374();
    v16 = sub_1DD875880();
    sub_1DD6E5374();
    v17 = sub_1DD875820();
    v19 = v18;
    v23 = v16 & 1;
    v20 = v17;
    v21 = sub_1DD6E0F98();
    v22(v21);
    *v12 = a10;
    *(v12 + 8) = v23;
    *(v12 + 16) = v20;
    *(v12 + 24) = v19;

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7A7E00(uint64_t a1, uint64_t a2)
{
  if (a1 == 1851878512 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7A7E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A7E00(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7A7EB8(uint64_t a1)
{
  v2 = sub_1DD7FE734();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A7EF4(uint64_t a1)
{
  v2 = sub_1DD7FE734();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.PrescribedPlan.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  sub_1DD710A9C(&qword_1ECD11238, &qword_1DD889450);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD7FE734();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v1 = sub_1DD6FF808();
  v2(v1);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7A8074(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x697263736E617274 && a2 == 0xEA00000000007470)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7A8114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A8074(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7A8140(uint64_t a1)
{
  v2 = sub_1DD7FE788();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A817C(uint64_t a1)
{
  v2 = sub_1DD7FE788();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.MockTranscript.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  sub_1DD710A9C(&qword_1ECD11250, &qword_1DD889460);
  sub_1DD6E125C();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD7FE788();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v1 = sub_1DD6FF808();
  v2(v1);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7A82FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736C6562616CLL && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7A8388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A82FC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7A83B4(uint64_t a1)
{
  v2 = sub_1DD7FE7DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A83F0(uint64_t a1)
{
  v2 = sub_1DD7FE7DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A8520()
{
  v0 = sub_1DD826B18();
  v1(v0);
  sub_1DD6E9B14();
  return sub_1DD6DDEFC();
}

uint64_t MessagePayload.ClientEffectInvocation.toolId.getter()
{
  type metadata accessor for MessagePayload.ClientEffectInvocation(0);
  sub_1DD6E9B14();
  return sub_1DD6DDEFC();
}

double MessagePayload.ClientEffectInvocation.parameters.getter()
{
  type metadata accessor for MessagePayload.ClientEffectInvocation(0);

  return result;
}

void MessagePayload.ClientEffectInvocation.init(stepId:sessionId:clientRequestId:clientSessionId:toolName:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1DD826528();
  v44 = v30;
  v45 = v31;
  v43 = v32;
  sub_1DD825B3C();
  v34 = v33;
  v35 = sub_1DD874820();
  sub_1DD6DE1C4();
  v37 = *(v36 + 32);
  v38 = sub_1DD6DFF24();
  v37(v38);
  type metadata accessor for MessagePayload.ClientEffectInvocation(0);
  sub_1DD826B0C();
  (v37)(v34 + v39, v28, v35);
  v40 = (v34 + v29[6]);
  *v40 = v27;
  v40[1] = v26;
  v41 = (v34 + v29[7]);
  *v41 = v25;
  v41[1] = v43;
  v42 = (v34 + v29[8]);
  *v42 = v44;
  v42[1] = v45;
  *(v34 + v29[9]) = a25;
  sub_1DD8264FC();
}

void static MessagePayload.ClientEffectInvocation.== infix(_:_:)()
{
  sub_1DD6E1F34();
  if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
  {
    v0 = type metadata accessor for MessagePayload.ClientEffectInvocation(0);
    sub_1DD6F4D70(v0);
    if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
    {
      sub_1DD824820(v0[6]);
      v3 = v3 && v1 == v2;
      if (v3 || (sub_1DD875A30() & 1) != 0)
      {
        sub_1DD824820(v0[7]);
        v6 = v3 && v4 == v5;
        if (v6 || (sub_1DD875A30() & 1) != 0)
        {
          sub_1DD824820(v0[8]);
          v9 = v3 && v7 == v8;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {
            sub_1DD826EDC(v0[9]);

            sub_1DD7A874C();
          }
        }
      }
    }
  }
}

void sub_1DD7A874C()
{
  sub_1DD6DEB38();
  v2 = v1;
  sub_1DD6DE290();
  v3 = sub_1DD874FA0();
  sub_1DD6DDEAC();
  v68 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE21C();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD8268E4(&v57 - v10);
  v11 = sub_1DD710A9C(&qword_1ECD151C8, &qword_1DD8A70A8);
  v12 = sub_1DD6DEA10(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DE21C();
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v63 = v2;
  if (v0 == v2 || *(v0 + 16) != *(v63 + 16))
  {
LABEL_20:
    sub_1DD6DFED0();
  }

  else
  {
    v61 = &v57 - v14;
    v62 = v15;
    v60 = v8;
    v17 = 0;
    v58 = v0;
    v18 = *(v0 + 64);
    v57 = v0 + 64;
    v19 = 1 << *(v0 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v64 = v68 + 16;
    v65 = (v68 + 32);
    v59 = v68 + 8;
    while (1)
    {
      v23 = v62;
      if (!v21)
      {
        break;
      }

      v66 = (v21 - 1) & v21;
      v24 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_12:
      v27 = (*(v58 + 48) + 16 * v24);
      v28 = *v27;
      v29 = v27[1];
      v31 = v67;
      v30 = v68;
      (*(v68 + 16))(v67, *(v58 + 56) + *(v68 + 72) * v24, v3, v16);
      v32 = sub_1DD710A9C(&qword_1ECD0FA80, &qword_1DD881480);
      v33 = *(v32 + 48);
      *v23 = v28;
      *(v23 + 1) = v29;
      (*(v30 + 32))(&v23[v33], v31, v3);
      sub_1DD6E09D4();
      sub_1DD6E5E68(v34, v35, v36, v32);

LABEL_13:
      v37 = v61;
      sub_1DD6E3A64();
      v38 = sub_1DD710A9C(&qword_1ECD0FA80, &qword_1DD881480);
      sub_1DD6E26E4(v37);
      if (v39)
      {
        goto LABEL_20;
      }

      (*v65)(v60, v37 + *(v38 + 48), v3);
      v40 = sub_1DD6E9594();
      sub_1DD6FB688(v40, v41);
      v43 = v42;

      if ((v43 & 1) == 0)
      {
        v55 = sub_1DD6FAA70();
        v56(v55);
        goto LABEL_20;
      }

      v44 = v68;
      v45 = sub_1DD826A94();
      v46(v45);
      sub_1DD6E05D4();
      sub_1DD6E1E84(&unk_1ECD0E2A0);
      sub_1DD8257C8();
      v47 = sub_1DD8750F0();
      v48 = *(v44 + 8);
      v49 = sub_1DD6E60FC();
      v48(v49);
      v50 = sub_1DD6FAA70();
      v48(v50);
      v21 = v66;
      if ((v47 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    while (1)
    {
      v25 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        sub_1DD710A9C(&qword_1ECD0FA80, &qword_1DD881480);
        sub_1DD6E0C90();
        sub_1DD6E5E68(v51, v52, v53, v54);
        v66 = 0;
        goto LABEL_13;
      }

      v26 = *(v57 + 8 * v25);
      ++v17;
      if (v26)
      {
        v66 = (v26 - 1) & v26;
        v24 = __clz(__rbit64(v26)) | (v25 << 6);
        v17 = v25;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_1DD7A8B68()
{
  sub_1DD6DEB38();
  if (v0 == v1 || (v2 = v1, v3 = v0, *(v0 + 16) != *(v1 + 16)))
  {
LABEL_13:
    sub_1DD6DFED0();
  }

  else
  {
    v4 = 0;
    v5 = v0 + 64;
    sub_1DD6E51DC();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;
    while (v8)
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      v15 = *(*(v3 + 56) + 8 * (v11 | (v4 << 6)));

      v16 = sub_1DD6E5C7C();
      v18 = sub_1DD6FB688(v16, v17);
      v20 = v19;

      if ((v20 & 1) == 0 || *(*(v2 + 56) + 8 * v18) != v15)
      {
        goto LABEL_13;
      }
    }

    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 >= v10)
      {
        goto LABEL_13;
      }

      ++v12;
      if (*(v5 + 8 * v4))
      {
        sub_1DD826C80();
        v8 = v14 & v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DD7A8C6C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v45 = result;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v46 = (v8 - 1) & v8;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(v3 + 56) + 24 * v13;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);

    v47 = v19;
    sub_1DD800D00(v18, v19, v20);
    v21 = v15 == 0;
    if (!v15)
    {
      return v21;
    }

    v22 = sub_1DD6FB688(v16, v15);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_55;
    }

    v25 = *(v2 + 56) + 24 * v22;
    v27 = *v25;
    v26 = *(v25 + 8);
    v28 = *(v25 + 16);
    if (*(v25 + 16))
    {
      if (v28 != 1)
      {
        if (v20 != 2)
        {
LABEL_53:

          goto LABEL_54;
        }

        v31 = v47;
        if (v27 == v18 && v26 == v47)
        {

          v38 = v18;
          v39 = v47;
          v40 = 2;
          goto LABEL_38;
        }

        v33 = sub_1DD875A30();

        sub_1DD800D28(v27, v26, 2);
        v34 = v18;
        v35 = v47;
        v36 = 2;
        goto LABEL_34;
      }

      if (v20 != 1)
      {
        goto LABEL_53;
      }

      v29 = *(v27 + 16);
      if (v29 != *(v18 + 16))
      {
        goto LABEL_52;
      }

      if (v29)
      {
        if (v27 != v18)
        {
          v44 = v2;
          v41 = (v27 + 40);
          v42 = (v18 + 40);
          while (1)
          {
            v43 = *(v41 - 1) == *(v42 - 1) && *v41 == *v42;
            if (!v43 && (sub_1DD875A30() & 1) == 0)
            {
              break;
            }

            v41 += 2;
            v42 += 2;
            if (!--v29)
            {
              sub_1DD800D00(v27, v26, 1);
              sub_1DD800D28(v27, v26, 1);
              v2 = v44;
              goto LABEL_49;
            }
          }

LABEL_52:
          LOBYTE(v20) = 1;
          sub_1DD800D00(v27, v26, 1);
LABEL_54:
          sub_1DD800D28(v27, v26, v28);
LABEL_55:
          sub_1DD800D28(v18, v47, v20);
          return 0;
        }

        sub_1DD800D00(v18, v26, 1);
        v30 = v18;
      }

      else
      {
        sub_1DD800D00(v27, v26, 1);
        v30 = v27;
      }

      sub_1DD800D28(v30, v26, 1);
LABEL_49:
      v8 = v46;
      v31 = v47;
LABEL_50:
      result = sub_1DD800D28(v18, v31, v28);
      v3 = v45;
    }

    else
    {
      if (v20)
      {
        goto LABEL_53;
      }

      v31 = v47;
      if (v27 == v18 && v26 == v47)
      {

        v38 = v18;
        v39 = v47;
        v40 = 0;
LABEL_38:
        sub_1DD800D28(v38, v39, v40);
        v8 = v46;
        goto LABEL_50;
      }

      v33 = sub_1DD875A30();

      sub_1DD800D28(v27, v26, 0);
      v34 = v18;
      v35 = v47;
      v36 = 0;
LABEL_34:
      result = sub_1DD800D28(v34, v35, v36);
      v3 = v45;
      v8 = v46;
      if ((v33 & 1) == 0)
      {
        return v21;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v46 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

void sub_1DD7A9018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue.Value(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v68[2] = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v69 = v68 - v10;
  v78 = sub_1DD710A9C(&qword_1ECD11570, &qword_1DD889610);
  MEMORY[0x1EEE9AC00](v78);
  v12 = v68 - v11;
  v77 = type metadata accessor for MessagePayload.ActionWillExecute.ParameterValue(0);
  v81 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v82 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v68 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v75 = v68 - v18;
  v19 = sub_1DD710A9C(&qword_1ECD151D0, &qword_1DD8A70B0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = (v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  if (a1 == a2 || *(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v73 = a2;
  v74 = (v68 - v23);
  v76 = v6;
  v24 = 0;
  v25 = *(a1 + 64);
  v68[0] = a1 + 64;
  v68[1] = v8;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  v30 = &unk_1ECD151D8;
  v83 = v16;
  v71 = v29;
  v72 = a1;
  v70 = v21;
  while (v28)
  {
    v80 = (v28 - 1) & v28;
    v31 = __clz(__rbit64(v28)) | (v24 << 6);
LABEL_12:
    v34 = (*(a1 + 48) + 16 * v31);
    v36 = *v34;
    v35 = v34[1];
    sub_1DD6E5870();
    v37 = sub_1DD710A9C(v30, &qword_1DD8A70B8);
    *v21 = v36;
    v21[1] = v35;
    sub_1DD6E59B8();
    sub_1DD6E5E68(v21, 0, 1, v37);

LABEL_13:
    v38 = v30;
    v39 = v74;
    sub_1DD6E3A64();
    v40 = v38;
    v41 = sub_1DD710A9C(v38, &qword_1DD8A70B8);
    v42 = sub_1DD6E5ED0(v39, 1, v41) == 1;
    if (v42)
    {
      return;
    }

    v79 = v42;
    v43 = v12;
    v44 = *v39;
    v45 = v39[1];
    sub_1DD6E59B8();
    sub_1DD6FB688(v44, v45);
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      goto LABEL_48;
    }

    sub_1DD6E5870();
    v48 = v43;
    v49 = &v43[*(v78 + 48)];
    sub_1DD6E5870();
    sub_1DD6E5870();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD6E5870();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1DD6E5ABC();
        goto LABEL_46;
      }

      sub_1DD6E59B8();
      v50 = _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
      sub_1DD6E5ABC();
      sub_1DD6E5ABC();
      v51 = v72;
      if ((v50 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v52 = v69;
      sub_1DD6E5870();
      v53 = *v52;
      v54 = v52[1];
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v48 = v43;
LABEL_46:
        sub_1DD824154(v48, &qword_1ECD11570);
        goto LABEL_47;
      }

      v55 = *v49;
      v56 = *(v49 + 1);
      if (v53 == v55 && v54 == v56)
      {

        v51 = v72;
      }

      else
      {
        v58 = sub_1DD875A30();

        v51 = v72;
        if ((v58 & 1) == 0)
        {
LABEL_43:
          sub_1DD6E5ABC();
LABEL_47:
          sub_1DD6E5ABC();
LABEL_48:
          sub_1DD6E5ABC();
          return;
        }
      }
    }

    sub_1DD6E5ABC();
    v59 = v77;
    v60 = &v82[*(v77 + 20)];
    v61 = *v60;
    v62 = v60[8];
    sub_1DD6E5ABC();
    v63 = &v83[*(v59 + 20)];
    v64 = *v63;
    v65 = v63[8];
    sub_1DD6E5ABC();
    if (v62 == 255)
    {
      v66 = v65 == 255;
      a1 = v51;
      v12 = v43;
      v21 = v70;
      v29 = v71;
      v30 = v40;
LABEL_40:
      v28 = v80;
      if (!v66)
      {
        return;
      }
    }

    else
    {
      v29 = v71;
      if (v65 == 255)
      {
        return;
      }

      v30 = v40;
      if (v62)
      {
        if (v62 == 1)
        {
          v66 = v65 == 1 && v61 == v64;
        }

        else
        {
          v66 = v65 == 2;
        }

        a1 = v51;
        v12 = v43;
        v21 = v70;
        goto LABEL_40;
      }

      a1 = v51;
      v12 = v43;
      v21 = v70;
      v28 = v80;
      if (v65)
      {
        return;
      }
    }
  }

  while (1)
  {
    v32 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v32 >= v29)
    {
      v67 = sub_1DD710A9C(v30, &qword_1DD8A70B8);
      sub_1DD6E5E68(v21, 1, 1, v67);
      v80 = 0;
      goto LABEL_13;
    }

    v33 = *(v68[0] + 8 * v32);
    ++v24;
    if (v33)
    {
      v80 = (v33 - 1) & v33;
      v31 = __clz(__rbit64(v33)) | (v32 << 6);
      v24 = v32;
      goto LABEL_12;
    }
  }

  __break(1u);
}