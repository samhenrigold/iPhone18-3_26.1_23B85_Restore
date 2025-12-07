uint64_t sub_1D1BBD6A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v50 = a3;
  v4 = sub_1D1E66A7C();
  v47 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C5F8, &qword_1D1E9FA00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v45 - v8;
  v10 = type metadata accessor for StaticHH2Update(0);
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() processInfo];
  v13 = [v12 processName];

  v14 = sub_1D1E6781C();
  v16 = v15;

  if (v14 == 0x6F42676E69727053 && v16 == 0xEB00000000647261)
  {

    goto LABEL_12;
  }

  v18 = sub_1D1E6904C();

  if (v18)
  {
LABEL_12:
    v26 = type metadata accessor for StaticSoftwareUpdate(0);
    v27 = *(*(v26 - 8) + 56);
    v28 = v26;
    v29 = v50;
    v30 = 1;
    goto LABEL_13;
  }

  v19 = a1;
  v20 = [a1 softwareUpdateController];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 availableUpdate];

    if (v22)
    {
      v23 = a1;
      v24 = v50;

      return sub_1D1D263B0(v22, v23, v24);
    }
  }

  if (![a1 isFirmwareUpdateAvailable])
  {
    v34 = v49;
    if (v49)
    {
      v35 = [a1 uniqueIdentifier];
      sub_1D1E66A5C();

      if (*(v34 + 16))
      {
        v36 = sub_1D1742188();
        v37 = v48;
        if (v38)
        {
          sub_1D1BC8E68(*(v34 + 56) + *(v48 + 72) * v36, v9, type metadata accessor for StaticHH2Update);
          v39 = 0;
        }

        else
        {
          v39 = 1;
        }
      }

      else
      {
        v39 = 1;
        v37 = v48;
      }

      (*(v47 + 8))(v6, v4);
      (*(v37 + 56))(v9, v39, 1, v10);
      if ((*(v37 + 48))(v9, 1, v10) != 1)
      {
        v41 = v46;
        sub_1D1BC91F4(v9, v46, type metadata accessor for StaticHH2Update);
        v42 = [v19 uniqueIdentifier];
        v43 = v50;
        sub_1D1E66A5C();

        v44 = type metadata accessor for StaticSoftwareUpdate(0);
        sub_1D1BC91F4(v41, v43 + *(v44 + 20), type metadata accessor for StaticHH2Update);
        type metadata accessor for StaticSoftwareUpdate.Kind(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
      }
    }

    else
    {
      (*(v48 + 56))(v9, 1, 1, v10);
    }

    sub_1D1741A30(v9, &qword_1EC64C5F8, &qword_1D1E9FA00);
    v40 = type metadata accessor for StaticSoftwareUpdate(0);
    return (*(*(v40 - 8) + 56))(v50, 1, 1, v40);
  }

  v31 = [a1 uniqueIdentifier];
  v32 = v50;
  sub_1D1E66A5C();

  v33 = type metadata accessor for StaticSoftwareUpdate(0);
  type metadata accessor for StaticSoftwareUpdate.Kind(0);
  swift_storeEnumTagMultiPayload();
  v27 = *(*(v33 - 8) + 56);
  v29 = v32;
  v30 = 0;
  v28 = v33;
LABEL_13:

  return v27(v29, v30, 1, v28);
}

uint64_t sub_1D1BBDC8C(void *a1)
{
  v2 = [a1 configuredName];
  if (v2)
  {
    goto LABEL_5;
  }

  HMAccessory.specialMediaCategory.getter(&v10);
  v3 = v11;
  if (v11 == 255 || (v4 = v10, v5 = sub_1D1C06E10(&v10), v7 = v6, sub_1D18EB2D8(v4, v3), !v7))
  {
    v2 = [a1 name];
LABEL_5:
    v8 = v2;
    v5 = sub_1D1E6781C();
  }

  return v5;
}

uint64_t sub_1D1BBDD50(void *a1, char a2)
{
  v4 = [a1 category];
  v5 = [v4 categoryType];

  v6 = sub_1D1E6781C();
  v8 = v7;

  if (v6 == sub_1D1E6781C() && v8 == v9)
  {
    goto LABEL_9;
  }

  v11 = sub_1D1E6904C();

  if ((v11 & 1) == 0)
  {
    v13 = [a1 category];
    v14 = [v13 categoryType];

    v15 = sub_1D1E6781C();
    v17 = v16;

    if (v15 != sub_1D1E6781C() || v17 != v18)
    {
      v12 = sub_1D1E6904C();
      goto LABEL_10;
    }

LABEL_9:
    v12 = 1;
LABEL_10:

    goto LABEL_11;
  }

  v12 = 1;
LABEL_11:
  v19 = [a1 category];
  v20 = [v19 categoryType];

  v21 = sub_1D1E6781C();
  v23 = v22;

  if (v21 == sub_1D1E6781C() && v23 == v24)
  {
    v25 = 1;
  }

  else
  {
    v25 = sub_1D1E6904C();
  }

  HMAccessory.specialMediaCategory.getter(&v28);
  if (v29 != 255)
  {
    sub_1D18EB2D8(v28, v29);
    v26 = [a1 mediaProfile];
    if (v26 || (v26 = [a1 siriEndpointProfile]) != 0)
    {

LABEL_20:
      a2 = 1;
      return a2 & 1;
    }
  }

  if ((v12 | v25))
  {
    goto LABEL_20;
  }

  return a2 & 1;
}

uint64_t sub_1D1BBDFD8(void *a1, char a2)
{
  v3 = a1;
  v4 = [a1 category];
  v5 = [v4 categoryType];

  v6 = sub_1D1E6781C();
  v8 = v7;

  if (v6 == sub_1D1E6781C() && v8 == v9)
  {

    v12 = 0;
  }

  else
  {
    v11 = sub_1D1E6904C();

    v12 = 0;
    if ((v11 & 1) == 0)
    {
      v66 = v3;
      v13 = [v3 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v14 = sub_1D1E67C1C();

      v65 = a2;
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
      if (v14 >> 62)
      {
        goto LABEL_67;
      }

      v67 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
      v16 = 0;
      while (1)
      {
        if (v67 == v16)
        {

          v12 = 1;
          goto LABEL_30;
        }

        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1D3891EF0](v16, v14);
        }

        else
        {
          if (v16 >= *(v15 + 16))
          {
            goto LABEL_66;
          }

          v18 = *(v14 + 8 * v16 + 32);
        }

        v19 = v18;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_65;
        }

        v20 = [v18 serviceType];
        v21 = sub_1D1E6781C();
        v23 = v22;

        if (v21 == sub_1D1E6781C() && v23 == v24)
        {

          goto LABEL_28;
        }

        v26 = sub_1D1E6904C();

        if (v26)
        {
          break;
        }

        v27 = [v19 serviceType];
        v28 = sub_1D1E6781C();
        v30 = v29;

        if (v28 == sub_1D1E6781C() && v30 == v31)
        {

          goto LABEL_29;
        }

        v17 = sub_1D1E6904C();

        ++v16;
        if (v17)
        {
          goto LABEL_28;
        }
      }

LABEL_28:

LABEL_29:
      v12 = 0;
LABEL_30:
      v3 = v66;
      a2 = v65;
    }
  }

  v32 = sub_1D1BBE660(v3, a2 & 1);
  v33 = [v3 category];
  v34 = [v33 categoryType];

  v35 = sub_1D1E6781C();
  v37 = v36;

  if (v35 == sub_1D1E6781C() && v37 == v38)
  {

    v41 = 0;
  }

  else
  {
    v40 = sub_1D1E6904C();

    v41 = 0;
    if ((v40 & 1) == 0)
    {
      v66 = v3;
      v42 = [v3 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v43 = sub_1D1E67C1C();

      v68 = v12;
      v65 = v32;
      v15 = v43 & 0xFFFFFFFFFFFFFF8;
      if (v43 >> 62)
      {
        v44 = sub_1D1E6873C();
      }

      else
      {
        v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v45 = 0;
      v14 = v43 & 0xC000000000000001;
      while (v44 != v45)
      {
        if (v14)
        {
          v47 = MEMORY[0x1D3891EF0](v45, v43);
        }

        else
        {
          if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v47 = *(v43 + 8 * v45 + 32);
        }

        v48 = v47;
        if (__OFADD__(v45, 1))
        {
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          v67 = sub_1D1E6873C();
          goto LABEL_8;
        }

        v49 = [v47 serviceType];
        v50 = sub_1D1E6781C();
        v52 = v51;

        v53._countAndFlagsBits = v50;
        v53._object = v52;
        ServiceKind.init(rawValue:)(v53);
        if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3130 == v54)
        {

          goto LABEL_52;
        }

        v46 = sub_1D1E6904C();

        ++v45;
        if (v46)
        {

LABEL_52:
          v41 = 0;
LABEL_53:
          v3 = v66;
          v12 = v68;
          v32 = v65;
          goto LABEL_54;
        }
      }

      v41 = 1;
      goto LABEL_53;
    }
  }

LABEL_54:
  v55 = v12 & v32;
  v56 = [v3 category];
  v57 = [v56 categoryType];

  v58 = sub_1D1E6781C();
  v60 = v59;

  if (v58 == sub_1D1E6781C() && v60 == v61)
  {
  }

  else
  {
    v63 = sub_1D1E6904C();

    if ((v63 & 1) == 0)
    {
      return v55 & 1;
    }
  }

  v55 |= v41;
  return v55 & 1;
}

uint64_t sub_1D1BBE660(void *a1, int a2)
{
  v3 = [a1 category];
  v4 = [v3 categoryType];

  v5 = sub_1D1E6781C();
  v7 = v6;

  if (v5 == sub_1D1E6781C() && v7 == v8)
  {

    v11 = 1;
    goto LABEL_10;
  }

  v10 = sub_1D1E6904C();

  if (v10)
  {
    v11 = 1;
LABEL_10:
    v41 = v11;
    goto LABEL_11;
  }

  v12 = [a1 uniqueIdentifiersForBridgedAccessories];
  if (v12)
  {
    v13 = v12;
    sub_1D1E66A7C();
    v14 = sub_1D1E67C1C();

    v15 = *(v14 + 16);

    v11 = v15 != 0;
    goto LABEL_10;
  }

  v41 = 0;
LABEL_11:
  v16 = [a1 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v17 = sub_1D1E67C1C();

  v44 = v17;
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_147:

    return v41 & (a2 ^ 1u);
  }

LABEL_146:
  v18 = sub_1D1E6873C();
  if (!v18)
  {
    goto LABEL_147;
  }

LABEL_13:
  v19 = 0;
  v43 = v18;
  while (1)
  {
    if ((v44 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1D3891EF0](v19, v44);
      v21 = __OFADD__(v19++, 1);
      if (v21)
      {
        goto LABEL_144;
      }
    }

    else
    {
      if (v19 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_145;
      }

      v20 = *(v44 + 32 + 8 * v19);
      v21 = __OFADD__(v19++, 1);
      if (v21)
      {
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }
    }

    if (qword_1EC642398 != -1)
    {
      v39 = v20;
      swift_once();
      v20 = v39;
    }

    v22 = qword_1EC6BE1B0;
    v45 = v20;
    v23 = [v20 serviceType];
    v24 = sub_1D1E6781C();
    v26 = v25;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    ServiceKind.init(rawValue:)(v27);
    v28 = v46 == 53 ? 0 : v46;
    if (*(v22 + 16))
    {
      sub_1D1E6920C();
      ServiceKind.rawValue.getter();
      sub_1D1E678EC();

      v29 = sub_1D1E6926C();
      v30 = -1 << *(v22 + 32);
      v31 = v29 & ~v30;
      if ((*(v22 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
      {
        break;
      }
    }

LABEL_14:

    if (v19 == v43)
    {
      goto LABEL_147;
    }
  }

  v32 = ~v30;
  while (1)
  {
    v33 = "takeSnaphotsWhenBusy";
    switch(*(*(v22 + 48) + v31))
    {
      case 1:
        v34 = "0000003E-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 2:
        v34 = "00000270-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 3:
        v34 = "000000BB-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 4:
        v34 = "0000008D-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 5:
        v34 = "00000096-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 6:
        v34 = "00000042-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 7:
        v34 = "00000110-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 8:
        v34 = "00000204-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 9:
        v34 = "00000097-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0xA:
        v34 = "0000007F-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0xB:
        v34 = "00000080-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0xC:
        v34 = "00000129-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0xD:
        v34 = "00000237-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0xE:
        v34 = "00000081-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0xF:
        v34 = "00000121-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x10:
        v34 = "00000040-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x11:
        v34 = "000000D7-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x12:
        v34 = "000000BA-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x13:
        v34 = "00000041-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x14:
        v34 = "000000BC-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x15:
        v34 = "000000BD-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x16:
        v34 = "00000082-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x17:
        v34 = "000000D9-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x18:
        v34 = "000000CF-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x19:
        v34 = "000000CC-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x1A:
        v34 = "00000083-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x1B:
        v34 = "00000084-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x1C:
        v34 = "00000043-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x1D:
        v34 = "00000044-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x1E:
        v34 = "00000045-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x1F:
        v34 = "00000112-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x20:
        v34 = "00000085-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x21:
        v34 = "00000086-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x22:
        v34 = "00000047-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x23:
        v34 = "0000007E-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x24:
        v34 = "000000B9-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x25:
        v34 = "00000087-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x26:
        v34 = "00000113-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x27:
        v34 = "00000088-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x28:
        v34 = "00000089-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x29:
        v34 = "00000049-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x2A:
        v34 = "00000125-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x2B:
        v34 = "00000122-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x2C:
        v34 = "000000D8-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x2D:
        v34 = "0000008A-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x2E:
        v34 = "0000004A-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x2F:
        v34 = "000000D0-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x30:
        v34 = "000000B7-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x31:
        v34 = "0000020A-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x32:
        v34 = "0000020F-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x33:
        v34 = "0000008B-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x34:
        v34 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_79:
        v33 = v34 - 32;
        break;
      default:
        break;
    }

    v35 = v33 | 0x8000000000000000;
    v36 = "takeSnaphotsWhenBusy";
    switch(v28)
    {
      case 1:
        v37 = "0000003E-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 2:
        v37 = "00000270-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 3:
        v37 = "000000BB-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 4:
        v37 = "0000008D-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 5:
        v37 = "00000096-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 6:
        v37 = "00000042-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 7:
        v37 = "00000110-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 8:
        v37 = "00000204-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 9:
        v37 = "00000097-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 10:
        v37 = "0000007F-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 11:
        v37 = "00000080-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 12:
        v37 = "00000129-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 13:
        v37 = "00000237-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 14:
        v37 = "00000081-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 15:
        v37 = "00000121-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 16:
        v37 = "00000040-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 17:
        v37 = "000000D7-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 18:
        v37 = "000000BA-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 19:
        v37 = "00000041-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 20:
        v37 = "000000BC-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 21:
        v37 = "000000BD-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 22:
        v37 = "00000082-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 23:
        v37 = "000000D9-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 24:
        v37 = "000000CF-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 25:
        v37 = "000000CC-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 26:
        v37 = "00000083-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 27:
        v37 = "00000084-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 28:
        v37 = "00000043-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 29:
        v37 = "00000044-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 30:
        v37 = "00000045-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 31:
        v37 = "00000112-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 32:
        v37 = "00000085-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 33:
        v37 = "00000086-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 34:
        v37 = "00000047-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 35:
        v37 = "0000007E-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 36:
        v37 = "000000B9-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 37:
        v37 = "00000087-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 38:
        v37 = "00000113-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 39:
        v37 = "00000088-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 40:
        v37 = "00000089-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 41:
        v37 = "00000049-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 42:
        v37 = "00000125-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 43:
        v37 = "00000122-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 44:
        v37 = "000000D8-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 45:
        v37 = "0000008A-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 46:
        v37 = "0000004A-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 47:
        v37 = "000000D0-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 48:
        v37 = "000000B7-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 49:
        v37 = "0000020A-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 50:
        v37 = "0000020F-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 51:
        v37 = "0000008B-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 52:
        v37 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_133:
        v36 = v37 - 32;
        break;
      default:
        break;
    }

    if (v35 == (v36 | 0x8000000000000000))
    {

      return 0;
    }

    v38 = sub_1D1E6904C();

    if (v38)
    {
      break;
    }

    v31 = (v31 + 1) & v32;
    if (((*(v22 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  return 0;
}

uint64_t sub_1D1BBEFB4(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v76 = &v74 - v5;
  v81 = type metadata accessor for StaticService(0);
  v6 = *(v81 - 8);
  v7 = MEMORY[0x1EEE9AC00](v81);
  v75 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v77 = &v74 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v85 = &v74 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v74 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v74 - v16;
  v84 = a1;
  v18 = [a1 category];
  v19 = [v18 categoryType];

  v20 = sub_1D1E6781C();
  v22 = v21;

  if (v20 == sub_1D1E6781C() && v22 == v23)
  {
    goto LABEL_3;
  }

  v24 = sub_1D1E6904C();

  if (v24)
  {
    goto LABEL_5;
  }

  v67 = [v84 category];
  v68 = [v67 categoryType];

  v69 = sub_1D1E6781C();
  v71 = v70;

  if (v69 == sub_1D1E6781C() && v71 == v72)
  {
LABEL_3:
  }

  else
  {
    v73 = sub_1D1E6904C();

    if ((v73 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_5:
  v25 = 0;
  v26 = *(a2 + 16);
  v83 = 0x80000001D1EB31F0;
  v84 = v26;
  v27 = v81;
  while (1)
  {
    if (v84 == v25)
    {
      return 0;
    }

    v80 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v29 = *(v6 + 72);
    v82 = a2 + v80;
    sub_1D1BC8E68(a2 + v80 + v29 * v25, v17, type metadata accessor for StaticService);
    LOBYTE(v87[0]) = v17[*(v27 + 104)];
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v83 == v30)
    {
      break;
    }

    ++v25;
    v28 = sub_1D1E6904C();

    sub_1D1BC9194(v17, type metadata accessor for StaticService);
    if (v28)
    {
      goto LABEL_11;
    }
  }

  sub_1D1BC9194(v17, type metadata accessor for StaticService);
LABEL_11:
  v79 = 0x80000001D1EB2FB0;
  v31 = a2 + v80;
  v32 = v84 + 1;
  while (1)
  {
    if (!--v32)
    {
      return 0;
    }

    sub_1D1BC8E68(v31, v15, type metadata accessor for StaticService);
    LOBYTE(v87[0]) = v15[*(v27 + 104)];
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v79 == v34)
    {
      break;
    }

    v31 += v29;
    v33 = sub_1D1E6904C();

    sub_1D1BC9194(v15, type metadata accessor for StaticService);
    if (v33)
    {
      goto LABEL_17;
    }
  }

  sub_1D1BC9194(v15, type metadata accessor for StaticService);
LABEL_17:
  v35 = 0;
  v78 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D1BC8E68(v82 + v35 * v29, v85, type metadata accessor for StaticService);
    if (qword_1EC642398 != -1)
    {
      swift_once();
    }

    v36 = qword_1EC6BE1B0;
    if (!*(qword_1EC6BE1B0 + 16))
    {
      goto LABEL_18;
    }

    v37 = *(v85 + *(v81 + 104));
    sub_1D1E6920C();
    v86 = v37;
    ServiceKind.rawValue.getter();
    sub_1D1E678EC();

    v38 = sub_1D1E6926C();
    v39 = -1 << *(v36 + 32);
    v40 = v38 & ~v39;
    if (((*(v36 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
    {
      goto LABEL_18;
    }

    v41 = ~v39;
    while (1)
    {
      LOBYTE(v87[0]) = *(*(v36 + 48) + v40);
      v86 = v37;
      v42 = ServiceKind.rawValue.getter();
      v44 = v43;
      if (v42 == ServiceKind.rawValue.getter() && v44 == v45)
      {
        break;
      }

      v47 = sub_1D1E6904C();

      if (v47)
      {
        goto LABEL_33;
      }

      v40 = (v40 + 1) & v41;
      if (((*(v36 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

LABEL_33:
    v48 = v76;
    sub_1D1741C08(v85 + *(v81 + 116), v76, &qword_1EC642590, qword_1D1E71260);
    v49 = sub_1D1E66A7C();
    v50 = (*(*(v49 - 8) + 48))(v48, 1, v49);
    sub_1D1741A30(v48, &qword_1EC642590, qword_1D1E71260);
    if (v50 == 1)
    {
      sub_1D1BC91F4(v85, v75, type metadata accessor for StaticService);
      v51 = v78;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v51;
      v88 = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D17915E0(0, *(v51 + 16) + 1, 1);
        v53 = v88;
      }

      v55 = *(v53 + 16);
      v54 = *(v53 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_1D17915E0(v54 > 1, v55 + 1, 1);
        v53 = v88;
      }

      *(v53 + 16) = v55 + 1;
      v78 = v53;
      sub_1D1BC91F4(v75, v53 + v80 + v55 * v29, type metadata accessor for StaticService);
    }

    else
    {
LABEL_18:
      sub_1D1BC9194(v85, type metadata accessor for StaticService);
    }

    v35 = v35 + 1;
  }

  while (v35 != v84);
  v57 = v77;
  result = v78;
  v58 = *(v78 + 16);
  if (!v58)
  {
LABEL_52:
    v66 = 1;
LABEL_53:

    return v66;
  }

  v59 = 0;
  v60 = *(v81 + 104);
  v61 = v78 + v80;
  while (v59 < *(result + 16))
  {
    sub_1D1BC8E68(v61, v57, type metadata accessor for StaticService);
    LOBYTE(v87[0]) = *(v57 + v60);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v83 == v62)
    {
      goto LABEL_41;
    }

    v63 = sub_1D1E6904C();
    v57 = v77;

    if (v63)
    {
      goto LABEL_42;
    }

    LOBYTE(v87[0]) = *(v57 + v60);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v79 == v64)
    {
LABEL_41:

LABEL_42:
      sub_1D1BC9194(v57, type metadata accessor for StaticService);
      goto LABEL_43;
    }

    v65 = sub_1D1E6904C();
    v57 = v77;

    sub_1D1BC9194(v57, type metadata accessor for StaticService);
    if ((v65 & 1) == 0)
    {
      v66 = 0;
      goto LABEL_53;
    }

LABEL_43:
    ++v59;
    v61 += v29;
    result = v78;
    if (v58 == v59)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1BBF91C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [a1 category];
  v9 = [v8 categoryType];

  v10 = sub_1D1E6781C();
  v12 = v11;

  if (v10 == sub_1D1E6781C() && v12 == v13)
  {
    goto LABEL_8;
  }

  v15 = sub_1D1E6904C();

  if (v15)
  {
    goto LABEL_9;
  }

  v16 = [a1 category];
  v17 = [v16 categoryType];

  v18 = sub_1D1E6781C();
  v20 = v19;

  if (v18 == sub_1D1E6781C() && v20 == v21)
  {
LABEL_8:
  }

  else
  {
    v33 = sub_1D1E6904C();

    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_9:
  v22 = *(a2 + 16);
  if (!v22)
  {
    return 0;
  }

  v23 = 0;
  v24 = *(v4 + 104);
  v25 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v26 = *(v5 + 72);
  while (1)
  {
    sub_1D1BC8E68(v25, v7, type metadata accessor for StaticService);
    v34[15] = v7[v24];
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3310 == v27)
    {

      result = sub_1D1BC9194(v7, type metadata accessor for StaticService);
      v31 = 1;
    }

    else
    {
      v29 = sub_1D1E6904C();

      result = sub_1D1BC9194(v7, type metadata accessor for StaticService);
      v31 = v29 & 1;
    }

    v32 = __OFADD__(v23, v31);
    v23 += v31;
    if (v32)
    {
      break;
    }

    v25 += v26;
    if (!--v22)
    {
      return v23 > 2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1BBFC34(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3;
  v6 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for StaticMatterDevice(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6 == 2)
  {
    sub_1D1741C08(a2, v9, &qword_1EC643650, &qword_1D1E71D40);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1D1741A30(v9, &qword_1EC643650, &qword_1D1E71D40);
      if (([a1 isReachable] & 1) != 0 || objc_msgSend(a1, sel_suspendedState) == 3)
      {
        v3 = 1;
        return v3 & 1;
      }

      v15 = [a1 suspendedState] == 2;
    }

    else
    {
      sub_1D1BC91F4(v9, v13, type metadata accessor for StaticMatterDevice);
      v14 = *&v13[*(v10 + 28)];
      sub_1D1BC9194(v13, type metadata accessor for StaticMatterDevice);
      v15 = v14 == 1;
    }

    v3 = v15;
  }

  return v3 & 1;
}

Swift::String __swiftcall StaticAccessory.DeviceIdentifier.stringVersion()()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1BC8E68(v1, v8, type metadata accessor for StaticAccessory.DeviceIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v9 = sub_1D1E66A1C();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    v12 = v11;
    v13 = v9;
  }

  else
  {
    v13 = *v8;
    v12 = v8[1];
  }

  result._object = v12;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t sub_1D1BBFFEC(uint64_t a1)
{
  v2 = sub_1D1BC985C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BC0028(uint64_t a1)
{
  v2 = sub_1D1BC985C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BC0064()
{
  if (*v0)
  {
    return 1684632949;
  }

  else
  {
    return 0x746F6F7465756C62;
  }
}

uint64_t sub_1D1BC009C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746F6F7465756C62 && a2 == 0xE900000000000068;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1BC0180(uint64_t a1)
{
  v2 = sub_1D1BC97B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BC01BC(uint64_t a1)
{
  v2 = sub_1D1BC97B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BC01F8(uint64_t a1)
{
  v2 = sub_1D1BC9808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BC0234(uint64_t a1)
{
  v2 = sub_1D1BC9808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticAccessory.DeviceIdentifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C460, &qword_1D1E9E638);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v23 - v3;
  v4 = sub_1D1E66A7C();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C468, &qword_1D1E9E640);
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C470, &qword_1D1E9E648);
  v12 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v14 = &v23 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BC97B4();
  sub_1D1E6930C();
  sub_1D1BC8E68(v30, v11, type metadata accessor for StaticAccessory.DeviceIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v26;
    v16 = v24;
    v17 = v11;
    v18 = v27;
    (*(v26 + 32))(v24, v17, v27);
    v33 = 1;
    sub_1D1BC9808();
    v19 = v25;
    v20 = v31;
    sub_1D1E68DFC();
    sub_1D1BC8FB4(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v21 = v29;
    sub_1D1E68F1C();
    (*(v28 + 8))(v19, v21);
    (*(v15 + 8))(v16, v18);
  }

  else
  {
    v32 = 0;
    sub_1D1BC985C();
    v20 = v31;
    sub_1D1E68DFC();
    sub_1D1E68ECC();

    (*(v23 + 8))(v8, v6);
  }

  return (*(v12 + 8))(v14, v20);
}

uint64_t StaticAccessory.DeviceIdentifier.hash(into:)(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1BC8E68(v1, v8, type metadata accessor for StaticAccessory.DeviceIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1D3892850](1);
    sub_1D1BC8FB4(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x1D3892850](0);
    sub_1D1E678EC();
  }
}

uint64_t StaticAccessory.DeviceIdentifier.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  sub_1D1BC8E68(v1, v8, type metadata accessor for StaticAccessory.DeviceIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1D3892850](1);
    sub_1D1BC8FB4(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x1D3892850](0);
    sub_1D1E678EC();
  }

  return sub_1D1E6926C();
}

uint64_t StaticAccessory.DeviceIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C490, &qword_1D1E9E650);
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v45 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C498, &qword_1D1E9E658);
  v49 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v7 = &v45 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C4A0, &unk_1D1E9E660);
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v9 = &v45 - v8;
  v10 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - v17;
  v19 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D1BC97B4();
  v20 = v57;
  sub_1D1E692FC();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v46 = v16;
  v47 = v13;
  v21 = v7;
  v23 = v52;
  v22 = v53;
  v24 = v54;
  v48 = v18;
  v57 = v10;
  v25 = v56;
  v26 = sub_1D1E68DDC();
  v27 = (2 * *(v26 + 16)) | 1;
  v59 = v26;
  v60 = v26 + 32;
  v61 = 0;
  v62 = v27;
  v28 = sub_1D18085D0();
  if (v28 == 2 || v61 != v62 >> 1)
  {
    v34 = sub_1D1E688EC();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
    *v36 = v57;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v55 + 8))(v9, v22);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  if (v28)
  {
    v63 = 1;
    sub_1D1BC9808();
    sub_1D1E68C4C();
    v29 = v48;
    sub_1D1E66A7C();
    sub_1D1BC8FB4(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v30 = v47;
    v31 = v50;
    sub_1D1E68D7C();
    (*(v51 + 8))(v24, v31);
    (*(v55 + 8))(v9, v22);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v32 = v30;
    v33 = v56;
  }

  else
  {
    v63 = 0;
    sub_1D1BC985C();
    sub_1D1E68C4C();
    v38 = v9;
    v39 = sub_1D1E68D2C();
    v40 = v55;
    v41 = v39;
    v43 = v42;
    (*(v49 + 8))(v21, v23);
    (*(v40 + 8))(v38, v22);
    swift_unknownObjectRelease();
    v44 = v46;
    *v46 = v41;
    v44[1] = v43;
    swift_storeEnumTagMultiPayload();
    v32 = v44;
    v33 = v25;
    v29 = v48;
  }

  sub_1D1BC91F4(v32, v29, type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1BC91F4(v29, v33, type metadata accessor for StaticAccessory.DeviceIdentifier);
  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t sub_1D1BC1158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1D1E6920C();
  a4(v6);
  return sub_1D1E6926C();
}

uint64_t StaticAccessory.BatteryStatus.description.getter()
{
  if (*v0)
  {
    return 0x6C616D726F6ELL;
  }

  else
  {
    return 7827308;
  }
}

HomeDataModel::StaticAccessory::BatteryStatus_optional __swiftcall StaticAccessory.BatteryStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

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

uint64_t sub_1D1BC12A0@<X0>(char *a2@<X8>)
{
  v3 = sub_1D1E68C2C();

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

  *a2 = v5;
  return result;
}

void sub_1D1BC1300(uint64_t *a1@<X8>)
{
  v2 = 7827308;
  if (*v1)
  {
    v2 = 0x6C616D726F6ELL;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D1BC1334(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C616D726F6ELL;
  }

  else
  {
    v3 = 7827308;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C616D726F6ELL;
  }

  else
  {
    v5 = 7827308;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D1E6904C();
  }

  return v8 & 1;
}

uint64_t sub_1D1BC13D0()
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1BC1448(uint64_t a1)
{
  sub_1D1E678EC();
}

uint64_t sub_1D1BC14AC(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t StaticAccessory.copyReplacing(id:name:lastSeenDate:lastSeenBatteryStatus:deviceIdentifier:deviceMetadata:dateAdded:isDoubleHigh:homeId:roomIds:roomName:isCurrentAccessory:isFavorite:shouldShowInDashboard:contributesToHomeStatus:showAsIndividualTiles:staticServicesDictionary:staticServiceIDs:primaryServiceId:specialMediaCategory:accessoryCategory:bridgedAccessoryIds:showAsBridge:isNonServiceBased:isCeilingFanWithLight:isPowerStrip:symptoms:supportsCHIP:requiresThreadRouter:softwareUpdate:isReachable:homeNonResponsiveType:matterNodeID:isNativeMatterAccessory:matterDevice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, _BYTE *a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17, unsigned __int8 a18, unsigned __int8 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned int (*a24)(uint64_t, uint64_t, uint64_t), uint64_t a25, unsigned __int8 *a26, unsigned __int8 a27, unsigned __int8 a28, unsigned __int8 a29, unsigned __int8 a30, uint64_t a31, unsigned __int8 a32, char a33, uint64_t a34, unsigned __int8 a35, unsigned __int8 *a36, uint64_t a37, char a38, char a39, uint64_t a40)
{
  v191 = a8;
  v190 = a7;
  v187 = a6;
  v213 = a5;
  v193 = a4;
  v210 = a3;
  v198 = a2;
  v203 = a1;
  v200 = a36;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v42 = MEMORY[0x1EEE9AC00](v41 - 8);
  v196 = &v173[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v42);
  v197 = &v173[-v44];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v46 = MEMORY[0x1EEE9AC00](v45 - 8);
  v194 = &v173[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v46);
  v209 = &v173[-v48];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v50 = MEMORY[0x1EEE9AC00](v49 - 8);
  v189 = &v173[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v50);
  v208 = &v173[-v52];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v55 = &v173[-v54];
  v186 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v56 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v206 = &v173[-((v57 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v59 = MEMORY[0x1EEE9AC00](v58 - 8);
  v205 = &v173[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = MEMORY[0x1EEE9AC00](v59);
  v63 = &v173[-v62];
  MEMORY[0x1EEE9AC00](v61);
  v204 = &v173[-v64];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v66 = MEMORY[0x1EEE9AC00](v65 - 8);
  v184 = &v173[-((v67 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = MEMORY[0x1EEE9AC00](v66);
  v207 = &v173[-v69];
  v70 = MEMORY[0x1EEE9AC00](v68);
  v188 = &v173[-v71];
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v173[-v72];
  v74 = sub_1D1E66A7C();
  v75 = MEMORY[0x1EEE9AC00](v74);
  v202 = &v173[-((v76 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v173[-v77];
  v211 = *v213;
  v201 = *a23;
  v192 = *(a23 + 8);
  v80 = v79;
  LODWORD(v213) = *v200;
  sub_1D1741C08(v203, v73, &qword_1EC642590, qword_1D1E71260);
  v81 = *(v80 + 48);
  v82 = v81(v73, 1, v74);
  v203 = v74;
  v212 = v80;
  v199 = v81;
  v200 = (v80 + 48);
  v195 = v78;
  if (v82 == 1)
  {
    (*(v80 + 16))(v78, v214, v74);
    if (v81(v73, 1, v74) != 1)
    {
      sub_1D1741A30(v73, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v80 + 32))(v78, v73, v74);
  }

  sub_1D1741C08(v193, v63, &qword_1EC642570, &qword_1D1E6C6A0);
  v83 = sub_1D1E669FC();
  v84 = *(v83 - 8);
  v85 = *(v84 + 48);
  v86 = v85(v63, 1, v83);
  v87 = v189;
  v88 = v186;
  if (v86 == 1)
  {
    v89 = type metadata accessor for StaticAccessory(0);
    sub_1D1741C08(v214 + *(v89 + 20), v204, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v85(v63, 1, v83) != 1)
    {
      sub_1D1741A30(v63, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    v90 = v204;
    (*(v84 + 32))(v204, v63, v83);
    (*(v84 + 56))(v90, 0, 1, v83);
  }

  v91 = v203;
  v92 = v212;
  if (v211 == 2)
  {
    v211 = *(v214 + *(type metadata accessor for StaticAccessory(0) + 24));
  }

  if (v210)
  {
    v193 = v210;
  }

  else
  {
    v93 = (v214 + *(type metadata accessor for StaticAccessory(0) + 28));
    v94 = v93[1];
    v198 = *v93;
    v193 = v94;
  }

  sub_1D1741C08(v187, v55, &qword_1EC643C58, &unk_1D1E995D0);
  v95 = *(v56 + 48);
  if (v95(v55, 1, v88) == 1)
  {
    v96 = type metadata accessor for StaticAccessory(0);
    sub_1D1BC8E68(v214 + *(v96 + 32), v206, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v97 = v95(v55, 1, v88);

    if (v97 != 1)
    {
      sub_1D1741A30(v55, &qword_1EC643C58, &unk_1D1E995D0);
    }
  }

  else
  {
    sub_1D1BC91F4(v55, v206, type metadata accessor for StaticAccessory.DeviceIdentifier);
  }

  LODWORD(v210) = a10;
  sub_1D1741C08(v190, v87, &qword_1EC644620, &unk_1D1E75A00);
  v98 = type metadata accessor for StaticDeviceMetadata(0);
  v99 = *(v98 - 8);
  v100 = *(v99 + 48);
  if (v100(v87, 1, v98) == 1)
  {
    v101 = type metadata accessor for StaticAccessory(0);
    v102 = v214;
    sub_1D1741C08(v214 + *(v101 + 36), v208, &qword_1EC644620, &unk_1D1E75A00);
    if (v100(v87, 1, v98) != 1)
    {
      sub_1D1741A30(v87, &qword_1EC644620, &unk_1D1E75A00);
    }
  }

  else
  {
    v103 = v208;
    sub_1D1BC91F4(v87, v208, type metadata accessor for StaticDeviceMetadata);
    (*(v99 + 56))(v103, 0, 1, v98);
    v102 = v214;
  }

  sub_1D1741C08(v191, v205, &qword_1EC642570, &qword_1D1E6C6A0);
  v104 = v192;
  v105 = v188;
  if (v210 == 2)
  {
    LODWORD(v210) = *(v102 + *(type metadata accessor for StaticAccessory(0) + 44));
  }

  sub_1D1741C08(a11, v105, &qword_1EC642590, qword_1D1E71260);
  v106 = v199;
  if (v199(v105, 1, v91) == 1)
  {
    v107 = type metadata accessor for StaticAccessory(0);
    (*(v92 + 16))(v202, v102 + *(v107 + 48), v91);
    if (v106(v105, 1, v91) != 1)
    {
      sub_1D1741A30(v105, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v92 + 32))(v202, v105, v91);
  }

  v181 = a12;
  if (a12)
  {
    v190 = a12;
  }

  else
  {
    v190 = *(v102 + *(type metadata accessor for StaticAccessory(0) + 52));
  }

  v109 = a15;
  v110 = a14;
  if (!a14)
  {
    v111 = (v102 + *(type metadata accessor for StaticAccessory(0) + 56));
    a13 = *v111;
    v110 = v111[1];
  }

  v112 = a16;
  if (a15 == 2)
  {
    v113 = type metadata accessor for StaticAccessory(0);
    v112 = a16;
    v109 = *(v102 + *(v113 + 60));
  }

  v114 = a17;
  if (v112 == 2)
  {
    v115 = type metadata accessor for StaticAccessory(0);
    v114 = a17;
    v112 = *(v102 + *(v115 + 64));
  }

  v116 = a18;
  LODWORD(v187) = v112;
  if (v114 == 2)
  {
    v114 = *(v102 + *(type metadata accessor for StaticAccessory(0) + 68));
  }

  LODWORD(v214) = a19;
  v191 = a13;
  LODWORD(v186) = v114;
  if (a18 == 2)
  {
    v116 = *(v102 + *(type metadata accessor for StaticAccessory(0) + 72));
  }

  LODWORD(v189) = v109;
  v188 = v110;
  if (v214 == 2)
  {
    LODWORD(v214) = *(v102 + *(type metadata accessor for StaticAccessory(0) + 76));
  }

  if (a20)
  {
    v183 = a20;
  }

  else
  {
    v183 = *(v102 + *(type metadata accessor for StaticAccessory(0) + 80));
  }

  v117 = v91;
  v118 = v104;
  if (a21)
  {
    v182 = a21;
  }

  else
  {
    v182 = *(v102 + *(type metadata accessor for StaticAccessory(0) + 84));
  }

  v185 = v116;
  v119 = v184;
  sub_1D1741C08(a22, v184, &qword_1EC642590, qword_1D1E71260);
  v120 = v199;
  if (v199(v119, 1, v117) == 1)
  {
    v121 = type metadata accessor for StaticAccessory(0);
    sub_1D1741C08(v102 + *(v121 + 88), v207, &qword_1EC642590, qword_1D1E71260);
    v122 = v120(v119, 1, v117);

    v123 = v119;
    v124 = v194;
    if (v122 != 1)
    {
      sub_1D1741A30(v123, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    v125 = v212;
    v126 = v207;
    (*(v212 + 32))(v207, v119, v117);
    (*(v125 + 56))(v126, 0, 1, v117);

    v124 = v194;
  }

  v128 = v201;
  v129 = v118;
  v130 = v118;
  if (v118 == 255)
  {
    v131 = v102 + *(type metadata accessor for StaticAccessory(0) + 92);
    v128 = *v131;
    v130 = *(v131 + 8);
    sub_1D18EB144(*v131, *(v131 + 8));
  }

  v194 = v128;
  v132 = a25;
  if (!a25)
  {
    v133 = v102 + *(type metadata accessor for StaticAccessory(0) + 96);
    a24 = *v133;
    v132 = *(v133 + 8);
  }

  v134 = a27;
  v200 = a26;
  if (!a26)
  {
    v200 = *(v102 + *(type metadata accessor for StaticAccessory(0) + 100));
  }

  v135 = a28;
  if (a27 == 2)
  {
    v136 = type metadata accessor for StaticAccessory(0);
    v135 = a28;
    v134 = *(v102 + *(v136 + 104));
  }

  v137 = a29;
  LODWORD(v184) = v130;
  if (v135 == 2)
  {
    v138 = type metadata accessor for StaticAccessory(0);
    v137 = a29;
    v135 = *(v102 + *(v138 + 108));
  }

  v139 = a30;
  v179 = v135;
  v176 = a25;
  if (v137 == 2)
  {
    v140 = type metadata accessor for StaticAccessory(0);
    v139 = a30;
    v137 = *(v102 + *(v140 + 112));
  }

  v199 = a24;
  v181 = v132;
  v180 = v134;
  v178 = v137;
  if (v139 == 2)
  {
    v177 = *(v102 + *(type metadata accessor for StaticAccessory(0) + 116));
  }

  else
  {
    v177 = v139;
  }

  v141 = a35;
  sub_1D1741C08(a34, v124, &qword_1EC644760, &unk_1D1E9E530);
  v142 = type metadata accessor for StaticSoftwareUpdate(0);
  v143 = *(v142 - 8);
  v144 = *(v143 + 48);
  if (v144(v124, 1, v142) == 1)
  {
    v145 = type metadata accessor for StaticAccessory(0);
    sub_1D1741C08(v102 + *(v145 + 120), v209, &qword_1EC644760, &unk_1D1E9E530);
    v146 = v144(v124, 1, v142);
    sub_1D18EB144(v201, v129);

    if (v146 != 1)
    {
      sub_1D1741A30(v124, &qword_1EC644760, &unk_1D1E9E530);
    }
  }

  else
  {
    v147 = v209;
    sub_1D1BC91F4(v124, v209, type metadata accessor for StaticSoftwareUpdate);
    (*(v143 + 56))(v147, 0, 1, v142);
    sub_1D18EB144(v201, v129);
  }

  if (a35 == 2)
  {
    v141 = *(v102 + *(type metadata accessor for StaticAccessory(0) + 124));
  }

  if (v213 == 3)
  {
    LODWORD(v213) = *(v102 + *(type metadata accessor for StaticAccessory(0) + 128));
  }

  v148 = a32;
  v149 = a31;
  if (!a31)
  {
    v149 = *(v102 + *(type metadata accessor for StaticAccessory(0) + 132));
  }

  v150 = a33;
  LODWORD(v201) = v141;
  if (a32 == 2)
  {
    v148 = *(v102 + *(type metadata accessor for StaticAccessory(0) + 136));
  }

  v176 = v149;
  if (a33 == 2)
  {
    v150 = *(v102 + *(type metadata accessor for StaticAccessory(0) + 140));
  }

  v151 = a39;
  if (a38)
  {
    v152 = v102 + *(type metadata accessor for StaticAccessory(0) + 144);
    v175 = *v152;
    v174 = *(v152 + 8);
  }

  else
  {
    v174 = 0;
    v175 = a37;
  }

  v192 = v148;
  if (a39 == 2)
  {
    v151 = *(v102 + *(type metadata accessor for StaticAccessory(0) + 148));
  }

  v153 = v196;
  sub_1D1741C08(a40, v196, &qword_1EC643650, &qword_1D1E71D40);
  v154 = type metadata accessor for StaticMatterDevice(0);
  v155 = *(v154 - 8);
  v156 = *(v155 + 48);
  if (v156(v153, 1, v154) == 1)
  {
    v157 = type metadata accessor for StaticAccessory(0);
    v158 = v197;
    sub_1D1741C08(v102 + *(v157 + 152), v197, &qword_1EC643650, &qword_1D1E71D40);
    v159 = v156(v153, 1, v154);

    if (v159 != 1)
    {
      sub_1D1741A30(v153, &qword_1EC643650, &qword_1D1E71D40);
    }
  }

  else
  {
    v160 = v197;
    sub_1D1BC91F4(v153, v197, type metadata accessor for StaticMatterDevice);
    (*(v155 + 56))(v160, 0, 1, v154);
    v158 = v160;
  }

  v161 = *(v212 + 32);
  v162 = v203;
  v161(a9, v195, v203);
  v163 = type metadata accessor for StaticAccessory(0);
  sub_1D1741A90(v204, a9 + v163[5], &qword_1EC642570, &qword_1D1E6C6A0);
  *(a9 + v163[6]) = v211;
  v164 = (a9 + v163[7]);
  v165 = v193;
  *v164 = v198;
  v164[1] = v165;
  sub_1D1BC91F4(v206, a9 + v163[8], type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1741A90(v208, a9 + v163[9], &qword_1EC644620, &unk_1D1E75A00);
  sub_1D1741A90(v205, a9 + v163[10], &qword_1EC642570, &qword_1D1E6C6A0);
  *(a9 + v163[11]) = v210 & 1;
  v161(a9 + v163[12], v202, v162);
  *(a9 + v163[13]) = v190;
  v166 = (a9 + v163[14]);
  v167 = v188;
  *v166 = v191;
  v166[1] = v167;
  *(a9 + v163[15]) = v189 & 1;
  *(a9 + v163[16]) = v187 & 1;
  *(a9 + v163[17]) = v186 & 1;
  *(a9 + v163[18]) = v185 & 1;
  *(a9 + v163[19]) = v214 & 1;
  *(a9 + v163[20]) = v183;
  *(a9 + v163[21]) = v182;
  sub_1D1741A90(v207, a9 + v163[22], &qword_1EC642590, qword_1D1E71260);
  v168 = a9 + v163[23];
  *v168 = v194;
  *(v168 + 8) = v184;
  v169 = (a9 + v163[24]);
  v170 = v181;
  *v169 = v199;
  v169[1] = v170;
  *(a9 + v163[25]) = v200;
  *(a9 + v163[26]) = v180 & 1;
  *(a9 + v163[27]) = v179 & 1;
  *(a9 + v163[28]) = v178 & 1;
  *(a9 + v163[29]) = v177 & 1;
  sub_1D1741A90(v209, a9 + v163[30], &qword_1EC644760, &unk_1D1E9E530);
  *(a9 + v163[31]) = v201 & 1;
  *(a9 + v163[32]) = v213;
  *(a9 + v163[33]) = v176;
  *(a9 + v163[34]) = v192 & 1;
  *(a9 + v163[35]) = v150 & 1;
  v171 = a9 + v163[36];
  *v171 = v175;
  *(v171 + 8) = v174;
  *(a9 + v163[37]) = v151 & 1;
  return sub_1D1741A90(v158, a9 + v163[38], &qword_1EC643650, &qword_1D1E71D40);
}

uint64_t sub_1D1BC2BB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1D1E66A7C();
  __swift_allocate_value_buffer(v3, qword_1EC64C2B0);
  v4 = __swift_project_value_buffer(v3, qword_1EC64C2B0);
  sub_1D1E66A0C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1BC2D04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1D1E66A7C();
  __swift_allocate_value_buffer(v3, qword_1EC64C2C8);
  v4 = __swift_project_value_buffer(v3, qword_1EC64C2C8);
  sub_1D1E66A0C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1BC2E58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1D1E66A7C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1D1BC2EF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v61 = v51 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v56 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v57 = v51 - v5;
  v52 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  MEMORY[0x1EEE9AC00](v52);
  v7 = (v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v59 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v51 - v11;
  v13 = sub_1D1E66A7C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v58 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v51[0] = v51 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v51 - v19;
  v21 = type metadata accessor for StaticAccessory(0);
  __swift_allocate_value_buffer(v21, qword_1EC64C2E0);
  v22 = __swift_project_value_buffer(v21, qword_1EC64C2E0);
  if (qword_1EC642370 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v13, qword_1EC64C2B0);
  v53 = *(v14 + 16);
  v54 = v20;
  v51[1] = v14 + 16;
  v53(v20, v23, v13);
  v24 = sub_1D1E669FC();
  v25 = *(*(v24 - 8) + 56);
  v55 = v12;
  v25(v12, 1, 1, v24);
  v26 = v57;
  sub_1D1E66A0C();
  v27 = (*(v14 + 48))(v26, 1, v13);
  v60 = v7;
  if (v27 == 1)
  {
    sub_1D1741A30(v57, &qword_1EC642590, qword_1D1E71260);
    *v7 = 0xD000000000000024;
    v7[1] = 0x80000001D1EC6310;
  }

  else
  {
    v28 = *(v14 + 32);
    v29 = v51[0];
    v28(v51[0], v57, v13);
    v28(v60, v29, v13);
  }

  swift_storeEnumTagMultiPayload();
  v30 = type metadata accessor for StaticDeviceMetadata(0);
  (*(*(v30 - 8) + 56))(v61, 1, 1, v30);
  v25(v59, 1, 1, v24);
  if (qword_1EE07DD68 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for StaticHome(0);
  v32 = __swift_project_value_buffer(v31, qword_1EE081500);
  v33 = v53;
  v53(v58, v32, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v34 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D1E739C0;
  if (qword_1EE07DC08 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for StaticRoom(0);
  v37 = __swift_project_value_buffer(v36, qword_1EE07DC10);
  v33(v35 + v34, v37, v13);
  v57 = sub_1D179BE14(v35);
  swift_setDeallocating();
  (*(v14 + 8))(v35 + v34, v13);
  swift_deallocClassInstance();
  v38 = sub_1D18D5D90(MEMORY[0x1E69E7CC0]);
  if (qword_1EC6423B8 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v13, qword_1EC6BE1D8);
  v40 = v56;
  v33(v56, v39, v13);
  (*(v14 + 56))(v40, 0, 1, v13);
  v41 = v21[30];
  v42 = type metadata accessor for StaticSoftwareUpdate(0);
  (*(*(v42 - 8) + 56))(v22 + v41, 1, 1, v42);
  v43 = v21[38];
  v44 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v44 - 8) + 56))(v22 + v43, 1, 1, v44);
  v45 = *(v14 + 32);
  v45(v22, v54, v13);
  sub_1D1741A90(v55, v22 + v21[5], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v22 + v21[6]) = 2;
  v46 = (v22 + v21[7]);
  *v46 = 0x6341207974706D45;
  v46[1] = 0xEF79726F73736563;
  sub_1D1BC91F4(v60, v22 + v21[8], type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1741A90(v61, v22 + v21[9], &qword_1EC644620, &unk_1D1E75A00);
  sub_1D1741A90(v59, v22 + v21[10], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v22 + v21[11]) = 0;
  v45(v22 + v21[12], v58, v13);
  *(v22 + v21[13]) = v57;
  *(v22 + v21[14]) = xmmword_1D1E9E4C0;
  *(v22 + v21[15]) = 0;
  *(v22 + v21[16]) = 0;
  *(v22 + v21[17]) = 1;
  *(v22 + v21[18]) = 1;
  *(v22 + v21[19]) = 0;
  *(v22 + v21[20]) = v38;
  *(v22 + v21[21]) = MEMORY[0x1E69E7CC0];
  result = sub_1D1741A90(v40, v22 + v21[22], &qword_1EC642590, qword_1D1E71260);
  v48 = v22 + v21[23];
  *v48 = 0;
  *(v48 + 8) = -1;
  v49 = (v22 + v21[24]);
  *v49 = 0;
  v49[1] = 0;
  *(v22 + v21[25]) = 0;
  *(v22 + v21[26]) = 0;
  *(v22 + v21[27]) = 0;
  *(v22 + v21[28]) = 0;
  *(v22 + v21[29]) = 0;
  *(v22 + v21[31]) = 1;
  *(v22 + v21[32]) = 0;
  *(v22 + v21[33]) = 0;
  *(v22 + v21[34]) = 0;
  *(v22 + v21[35]) = 0;
  v50 = v22 + v21[36];
  *v50 = 0;
  *(v50 + 8) = 1;
  *(v22 + v21[37]) = 0;
  return result;
}

double sub_1D1BC3804()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v74 = &v61 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v61 - v3;
  *&v69 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  MEMORY[0x1EEE9AC00](v69);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v72 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v61 - v10;
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v70 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v65 = &v61 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - v18;
  v20 = type metadata accessor for StaticAccessory(0);
  __swift_allocate_value_buffer(v20, qword_1EC64C2F8);
  v21 = __swift_project_value_buffer(v20, qword_1EC64C2F8);
  if (qword_1EC642378 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v12, qword_1EC64C2C8);
  v23 = *(v13 + 16);
  v66 = v13 + 16;
  v67 = v19;
  v75 = v23;
  v23(v19, v22, v12);
  v24 = sub_1D1E669FC();
  v25 = *(*(v24 - 8) + 56);
  v68 = v11;
  v25(v11, 1, 1, v24);
  sub_1D1E66A0C();
  v26 = (*(v13 + 48))(v4, 1, v12);
  v73 = v6;
  v71 = v13;
  if (v26 == 1)
  {
    sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
    *v6 = 0xD000000000000024;
    *(v6 + 1) = 0x80000001D1EC6310;
  }

  else
  {
    v27 = *(v13 + 32);
    v28 = v65;
    v27(v65, v4, v12);
    v27(v73, v28, v12);
  }

  swift_storeEnumTagMultiPayload();
  v29 = type metadata accessor for StaticDeviceMetadata(0);
  (*(*(v29 - 8) + 56))(v74, 1, 1, v29);
  v30 = v72;
  sub_1D1E6698C();
  v25(v30, 0, 1, v24);
  if (qword_1EC6423E0 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v12, qword_1EC6BE208);
  v32 = v75;
  v75(v70, v31, v12);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v34 = v71;
  v35 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v63 = *(v71 + 72);
  v64 = v33;
  v36 = swift_allocObject();
  v69 = xmmword_1D1E739C0;
  *(v36 + 16) = xmmword_1D1E739C0;
  if (qword_1EC6423F0 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v12, qword_1EC64DA98);
  v32(v36 + v35, v37, v12);
  v65 = sub_1D179BE14(v36);
  swift_setDeallocating();
  (*(v34 + 8))(v36 + v35, v12);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E0, &unk_1D1E9F9E0);
  v38 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40) - 8);
  v39 = (*(*v38 + 80) + 32) & ~*(*v38 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v69;
  v41 = v40 + v39;
  v42 = v38[14];
  if (qword_1EC6423C0 != -1)
  {
    swift_once();
  }

  v43 = __swift_project_value_buffer(v12, qword_1EC6BE1F0);
  v75(v41, v43, v12);
  if (qword_1EC6423B0 != -1)
  {
    swift_once();
  }

  v61 = 0x80000001D1EC6340;
  v44 = type metadata accessor for StaticService(0);
  v45 = __swift_project_value_buffer(v44, qword_1EC6BE1C0);
  sub_1D1BC8E68(v45, v41 + v42, type metadata accessor for StaticService);
  v62 = sub_1D18D5D90(v40);
  swift_setDeallocating();
  sub_1D1741A30(v41, &qword_1EC6436E8, &unk_1D1E71E40);
  swift_deallocClassInstance();
  v46 = swift_allocObject();
  *(v46 + 16) = v69;
  v47 = v75;
  v75(v46 + v35, v43, v12);
  v48 = v20[22];
  v47(v21 + v48, v43, v12);
  v49 = v71;
  (*(v71 + 56))(v21 + v48, 0, 1, v12);
  v50 = v20[30];
  v51 = type metadata accessor for StaticSoftwareUpdate(0);
  (*(*(v51 - 8) + 56))(v21 + v50, 1, 1, v51);
  v52 = v20[38];
  v53 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v53 - 8) + 56))(v21 + v52, 1, 1, v53);
  v54 = *(v49 + 32);
  v54(v21, v67, v12);
  sub_1D1741A90(v68, v21 + v20[5], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v21 + v20[6]) = 2;
  v55 = (v21 + v20[7]);
  v56 = v61;
  *v55 = 0xD000000000000016;
  v55[1] = v56;
  sub_1D1BC91F4(v73, v21 + v20[8], type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1741A90(v74, v21 + v20[9], &qword_1EC644620, &unk_1D1E75A00);
  sub_1D1741A90(v72, v21 + v20[10], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v21 + v20[11]) = 0;
  v54(v21 + v20[12], v70, v12);
  *(v21 + v20[13]) = v65;
  result = 4.07710212e87;
  *(v21 + v20[14]) = xmmword_1D1E9E4D0;
  *(v21 + v20[15]) = 0;
  *(v21 + v20[16]) = 0;
  *(v21 + v20[17]) = 1;
  *(v21 + v20[18]) = 1;
  *(v21 + v20[19]) = 0;
  *(v21 + v20[20]) = v62;
  *(v21 + v20[21]) = v46;
  v58 = v21 + v20[23];
  *v58 = 0;
  *(v58 + 8) = -1;
  v59 = (v21 + v20[24]);
  *v59 = 0;
  v59[1] = 0;
  *(v21 + v20[25]) = 0;
  *(v21 + v20[26]) = 0;
  *(v21 + v20[27]) = 0;
  *(v21 + v20[28]) = 0;
  *(v21 + v20[29]) = 0;
  *(v21 + v20[31]) = 1;
  *(v21 + v20[32]) = 0;
  *(v21 + v20[33]) = 0;
  *(v21 + v20[34]) = 0;
  *(v21 + v20[35]) = 0;
  v60 = v21 + v20[36];
  *v60 = 0;
  *(v60 + 8) = 1;
  *(v21 + v20[37]) = 0;
  return result;
}

uint64_t sub_1D1BC426C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for StaticAccessory(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return sub_1D1BC8E68(v7, a4, type metadata accessor for StaticAccessory);
}

uint64_t StaticAccessory.debugDescription.getter()
{
  v1 = sub_1D1E6929C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v25 + 1) = type metadata accessor for StaticAccessory(0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
  sub_1D1BC8E68(v0, boxed_opaque_existential_1, type metadata accessor for StaticAccessory);
  sub_1D1E6927C();
  v6 = sub_1D1E6928C();
  (*(v2 + 8))(v4, v1);
  v17[1] = v6;
  sub_1D1E68A9C();
  sub_1D1E68BFC();
  if (*(&v26 + 1))
  {
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v23[0] = v24;
      v23[1] = v25;
      v23[2] = v26;
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_1D1741C08(v23, &v18, &qword_1EC64C4A8, &qword_1D1EA3A70);
      if (v19)
      {
        v8 = v18;
      }

      else
      {
        v8 = 0x206E776F6E6B6E55;
      }

      if (v19)
      {
        v9 = v19;
      }

      else
      {
        v9 = 0xED00006C6562614CLL;
      }

      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1D3890F70](v8, v9);

      MEMORY[0x1D3890F70](8250, 0xE200000000000000);
      sub_1D1E68ABC();
      v10 = v21;
      v11 = v22;
      sub_1D1741A30(v23, &qword_1EC64C4A8, &qword_1D1EA3A70);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D177CF00(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_1D177CF00((v12 > 1), v13 + 1, 1, v7);
      }

      *(v7 + 2) = v13 + 1;
      v14 = &v7[16 * v13];
      *(v14 + 4) = v10;
      *(v14 + 5) = v11;
      sub_1D1E68BFC();
    }

    while (*(&v26 + 1));
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  *&v24 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v15 = sub_1D1E6770C();

  return v15;
}

uint64_t _s13HomeDataModel15StaticAccessoryV16DeviceIdentifierO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v27 = sub_1D1E66A7C();
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v26 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AA8, &unk_1D1E9F9F0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v26 - v15;
  v17 = (&v26 + *(v14 + 56) - v15);
  sub_1D1BC8E68(a1, &v26 - v15, type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1BC8E68(a2, v17, type metadata accessor for StaticAccessory.DeviceIdentifier);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D1BC8E68(v16, v12, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v22 = *v12;
    v21 = v12[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v22 == *v17 && v21 == v17[1])
      {
      }

      else
      {
        v24 = sub_1D1E6904C();

        if ((v24 & 1) == 0)
        {
          sub_1D1BC9194(v16, type metadata accessor for StaticAccessory.DeviceIdentifier);
          goto LABEL_8;
        }
      }

      sub_1D1BC9194(v16, type metadata accessor for StaticAccessory.DeviceIdentifier);
      v19 = 1;
      return v19 & 1;
    }

LABEL_7:
    sub_1D1741A30(v16, &qword_1EC642AA8, &unk_1D1E9F9F0);
LABEL_8:
    v19 = 0;
    return v19 & 1;
  }

  sub_1D1BC8E68(v16, v10, type metadata accessor for StaticAccessory.DeviceIdentifier);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v10, v27);
    goto LABEL_7;
  }

  v18 = v27;
  (*(v4 + 32))(v6, v17, v27);
  v19 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v20 = *(v4 + 8);
  v20(v6, v18);
  v20(v10, v18);
  sub_1D1BC9194(v16, type metadata accessor for StaticAccessory.DeviceIdentifier);
  return v19 & 1;
}

BOOL _s13HomeDataModel15StaticAccessoryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v162 = type metadata accessor for StaticMatterDevice(0);
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v163 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v146 - v6;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C600, &qword_1D1E9FA08);
  MEMORY[0x1EEE9AC00](v160);
  v9 = &v146 - v8;
  v158 = type metadata accessor for StaticSoftwareUpdate(0);
  v155 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v157 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v156 = &v146 - v12;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C608, &qword_1D1E9FA10);
  MEMORY[0x1EEE9AC00](v154);
  v159 = &v146 - v13;
  v14 = sub_1D1E66A7C();
  v167 = *(v14 - 8);
  v168 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v164 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v166 = &v146 - v17;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v165);
  v169 = &v146 - v18;
  v19 = type metadata accessor for StaticDeviceMetadata(0);
  v175 = *(v19 - 8);
  v176 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v171 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v173 = &v146 - v22;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644880, &qword_1D1E76500);
  MEMORY[0x1EEE9AC00](v174);
  v177 = &v146 - v23;
  v24 = sub_1D1E669FC();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v178 = &v146 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v170 = &v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v146 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v172 = &v146 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v146 - v35;
  v37 = a2;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v149 = v7;
  v150 = v9;
  v153 = type metadata accessor for StaticAccessory(0);
  v38 = v153[5];
  v151 = v32;
  v39 = *(v32 + 48);
  v152 = a1;
  sub_1D1741C08(a1 + v38, v36, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741C08(v37 + v38, &v36[v39], &qword_1EC642570, &qword_1D1E6C6A0);
  v40 = *(v25 + 48);
  v41 = v37;
  v42 = v24;
  if (v40(v36, 1, v24) == 1)
  {
    if (v40(&v36[v39], 1, v24) == 1)
    {
      v147 = v40;
      v148 = v24;
      sub_1D1741A30(v36, &qword_1EC642570, &qword_1D1E6C6A0);
      goto LABEL_11;
    }

LABEL_7:
    v43 = &qword_1EC642AC0;
    v44 = &qword_1D1E6E810;
    v45 = v36;
LABEL_8:
    sub_1D1741A30(v45, v43, v44);
    return 0;
  }

  sub_1D1741C08(v36, v31, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v40(&v36[v39], 1, v24) == 1)
  {
    (*(v25 + 8))(v31, v24);
    goto LABEL_7;
  }

  v147 = v40;
  v47 = v178;
  (*(v25 + 32))(v178, &v36[v39], v42);
  sub_1D1BC8FB4(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v48 = sub_1D1E6775C();
  v49 = *(v25 + 8);
  v49(v47, v42);
  v148 = v42;
  v49(v31, v42);
  sub_1D1741A30(v36, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v50 = v153;
  v51 = v153[6];
  v52 = v152;
  v53 = *(v152 + v51);
  v54 = *(v41 + v51);
  if (v53 == 2)
  {
    if (v54 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v54 == 2)
    {
      return 0;
    }

    if (v53)
    {
      v55 = 0x6C616D726F6ELL;
    }

    else
    {
      v55 = 7827308;
    }

    if (v53)
    {
      v56 = 0xE600000000000000;
    }

    else
    {
      v56 = 0xE300000000000000;
    }

    if (v54)
    {
      v57 = 0x6C616D726F6ELL;
    }

    else
    {
      v57 = 7827308;
    }

    if (v54)
    {
      v58 = 0xE600000000000000;
    }

    else
    {
      v58 = 0xE300000000000000;
    }

    if (v55 == v57 && v56 == v58)
    {
    }

    else
    {
      v59 = sub_1D1E6904C();

      if ((v59 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v60 = v50[7];
  v61 = *(v52 + v60);
  v62 = *(v52 + v60 + 8);
  v63 = (v41 + v60);
  if ((v61 != *v63 || v62 != v63[1]) && (sub_1D1E6904C() & 1) == 0 || (_s13HomeDataModel15StaticAccessoryV16DeviceIdentifierO2eeoiySbAE_AEtFZ_0(v52 + v50[8], v41 + v50[8]) & 1) == 0)
  {
    return 0;
  }

  v146 = v41;
  v64 = v50[9];
  v65 = *(v174 + 48);
  v66 = v177;
  sub_1D1741C08(v52 + v64, v177, &qword_1EC644620, &unk_1D1E75A00);
  sub_1D1741C08(v146 + v64, v66 + v65, &qword_1EC644620, &unk_1D1E75A00);
  v67 = v176;
  v68 = *(v175 + 48);
  if (v68(v66, 1, v176) == 1)
  {
    if (v68(v66 + v65, 1, v67) == 1)
    {
      sub_1D1741A30(v66, &qword_1EC644620, &unk_1D1E75A00);
      goto LABEL_42;
    }

LABEL_40:
    v43 = &qword_1EC644880;
    v44 = &qword_1D1E76500;
    v45 = v66;
    goto LABEL_8;
  }

  v69 = v173;
  sub_1D1741C08(v66, v173, &qword_1EC644620, &unk_1D1E75A00);
  if (v68(v66 + v65, 1, v67) == 1)
  {
    sub_1D1BC9194(v69, type metadata accessor for StaticDeviceMetadata);
    goto LABEL_40;
  }

  v70 = v171;
  sub_1D1BC91F4(v66 + v65, v171, type metadata accessor for StaticDeviceMetadata);
  v71 = _s13HomeDataModel20StaticDeviceMetadataV2eeoiySbAC_ACtFZ_0(v69, v70);
  sub_1D1BC9194(v70, type metadata accessor for StaticDeviceMetadata);
  sub_1D1BC9194(v69, type metadata accessor for StaticDeviceMetadata);
  sub_1D1741A30(v66, &qword_1EC644620, &unk_1D1E75A00);
  if ((v71 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  v72 = v153[10];
  v73 = *(v151 + 48);
  v36 = v172;
  sub_1D1741C08(v52 + v72, v172, &qword_1EC642570, &qword_1D1E6C6A0);
  v74 = v146 + v72;
  v75 = v146;
  sub_1D1741C08(v74, &v36[v73], &qword_1EC642570, &qword_1D1E6C6A0);
  v76 = v148;
  v77 = v147;
  if (v147(v36, 1, v148) == 1)
  {
    if (v77(&v36[v73], 1, v76) == 1)
    {
      sub_1D1741A30(v36, &qword_1EC642570, &qword_1D1E6C6A0);
      goto LABEL_48;
    }

    goto LABEL_7;
  }

  v78 = v170;
  sub_1D1741C08(v36, v170, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v77(&v36[v73], 1, v76) == 1)
  {
    (*(v25 + 8))(v78, v76);
    goto LABEL_7;
  }

  v79 = &v36[v73];
  v80 = v178;
  (*(v25 + 32))(v178, v79, v76);
  sub_1D1BC8FB4(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v81 = v78;
  v82 = sub_1D1E6775C();
  v83 = *(v25 + 8);
  v83(v80, v76);
  v83(v81, v76);
  v75 = v146;
  sub_1D1741A30(v36, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((v82 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  v84 = v153;
  if (*(v52 + v153[11]) != *(v75 + v153[11]) || (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_1D17A6E98(*(v52 + v84[13]), *(v75 + v84[13])) & 1) == 0)
  {
    return 0;
  }

  v85 = v84[14];
  v86 = (v52 + v85);
  v87 = *(v52 + v85 + 8);
  v88 = (v75 + v85);
  v89 = v88[1];
  if (v87)
  {
    if (!v89 || (*v86 != *v88 || v87 != v89) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v89)
  {
    return 0;
  }

  if (*(v52 + v84[15]) != *(v75 + v84[15]) || *(v52 + v84[16]) != *(v75 + v84[16]) || *(v52 + v84[17]) != *(v75 + v84[17]) || *(v152 + v153[18]) != *(v146 + v153[18]) || *(v152 + v153[19]) != *(v146 + v153[19]) || (sub_1D18490AC(*(v152 + v153[20]), *(v146 + v153[20])) & 1) == 0 || (sub_1D17796E4(*(v152 + v153[21]), *(v146 + v153[21])) & 1) == 0)
  {
    return 0;
  }

  v90 = v153[22];
  v91 = *(v165 + 48);
  v92 = v169;
  sub_1D1741C08(v152 + v90, v169, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v146 + v90, v92 + v91, &qword_1EC642590, qword_1D1E71260);
  v93 = *(v167 + 48);
  if (v93(v92, 1, v168) == 1)
  {
    if (v93(v169 + v91, 1, v168) == 1)
    {
      sub_1D1741A30(v169, &qword_1EC642590, qword_1D1E71260);
      goto LABEL_72;
    }

    goto LABEL_70;
  }

  v94 = v169;
  sub_1D1741C08(v169, v166, &qword_1EC642590, qword_1D1E71260);
  if (v93(v94 + v91, 1, v168) == 1)
  {
    (*(v167 + 8))(v166, v168);
LABEL_70:
    v43 = &qword_1EC642980;
    v44 = &unk_1D1E6E6E0;
    v45 = v169;
    goto LABEL_8;
  }

  v95 = v167;
  v96 = v169;
  v97 = v169 + v91;
  v98 = v164;
  v99 = v168;
  (*(v167 + 32))(v164, v97, v168);
  sub_1D1BC8FB4(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v100 = v166;
  v101 = sub_1D1E6775C();
  v102 = *(v95 + 8);
  v102(v98, v99);
  v102(v100, v99);
  sub_1D1741A30(v96, &qword_1EC642590, qword_1D1E71260);
  if ((v101 & 1) == 0)
  {
    return 0;
  }

LABEL_72:
  v103 = v153[23];
  v104 = (v152 + v103);
  v105 = *(v152 + v103);
  v106 = *(v152 + v103 + 8);
  v107 = v146 + v103;
  v108 = *v107;
  v109 = *(v107 + 8);
  if (v106 == 255)
  {
    sub_1D18EB144(*v104, 255);
    if (v109 == 255)
    {
      sub_1D18EB144(v108, 255);
      sub_1D18EB2D8(v105, 255);
      goto LABEL_81;
    }

    sub_1D18EB144(v108, v109);
LABEL_79:
    sub_1D18EB2D8(v105, v106);
    sub_1D18EB2D8(v108, v109);
    return 0;
  }

  v181 = v105;
  v182 = v106;
  if (v109 == 255)
  {
    sub_1D18EB144(v105, v106);
    sub_1D18EB144(v108, 255);
    sub_1D18EB144(v105, v106);
    sub_1D1771B5C(v105, v106);
    goto LABEL_79;
  }

  v179 = v108;
  v180 = v109;
  sub_1D18EB144(v105, v106);
  sub_1D18EB144(v108, v109);
  sub_1D18EB144(v105, v106);
  v110 = _s13HomeDataModel15StaticAccessoryV20SpecialMediaCategoryO2eeoiySbAE_AEtFZ_0(&v181, &v179);
  sub_1D1771B5C(v179, v180);
  sub_1D1771B5C(v181, v182);
  sub_1D18EB2D8(v105, v106);
  if (!v110)
  {
    return 0;
  }

LABEL_81:
  v111 = v153[24];
  v112 = (v152 + v111);
  v113 = *(v152 + v111 + 8);
  v114 = (v146 + v111);
  v115 = v114[1];
  if (v113)
  {
    if (!v115 || (*v112 != *v114 || v113 != v115) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v115)
  {
    return 0;
  }

  v116 = v153[25];
  v117 = *(v152 + v116);
  v118 = *(v146 + v116);
  if (v117)
  {
    if (!v118)
    {
      return 0;
    }

    v119 = sub_1D17796E4(v117, v118);

    if ((v119 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v118)
  {
    return 0;
  }

  if (*(v152 + v153[26]) != *(v146 + v153[26]) || *(v152 + v153[27]) != *(v146 + v153[27]) || *(v152 + v153[28]) != *(v146 + v153[28]) || *(v152 + v153[29]) != *(v146 + v153[29]))
  {
    return 0;
  }

  v120 = v153[30];
  v121 = *(v154 + 48);
  v122 = v159;
  sub_1D1741C08(v152 + v120, v159, &qword_1EC644760, &unk_1D1E9E530);
  sub_1D1741C08(v146 + v120, v122 + v121, &qword_1EC644760, &unk_1D1E9E530);
  v123 = *(v155 + 48);
  if (v123(v122, 1, v158) == 1)
  {
    if (v123(v159 + v121, 1, v158) == 1)
    {
      sub_1D1741A30(v159, &qword_1EC644760, &unk_1D1E9E530);
      goto LABEL_100;
    }

    goto LABEL_108;
  }

  v126 = v159;
  sub_1D1741C08(v159, v156, &qword_1EC644760, &unk_1D1E9E530);
  if (v123(v126 + v121, 1, v158) == 1)
  {
    sub_1D1BC9194(v156, type metadata accessor for StaticSoftwareUpdate);
LABEL_108:
    v43 = &qword_1EC64C608;
    v44 = &qword_1D1E9FA10;
LABEL_113:
    v130 = &v183;
LABEL_114:
    v45 = *(v130 - 32);
    goto LABEL_8;
  }

  sub_1D1BC91F4(v159 + v121, v157, type metadata accessor for StaticSoftwareUpdate);
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    sub_1D1BC9194(v157, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1BC9194(v156, type metadata accessor for StaticSoftwareUpdate);
    v43 = &qword_1EC644760;
    v44 = &unk_1D1E9E530;
    goto LABEL_113;
  }

  v127 = v156;
  v128 = v157;
  updated = _s13HomeDataModel20StaticSoftwareUpdateV4KindO2eeoiySbAE_AEtFZ_0(v156 + *(v158 + 20), v157 + *(v158 + 20));
  sub_1D1BC9194(v128, type metadata accessor for StaticSoftwareUpdate);
  sub_1D1BC9194(v127, type metadata accessor for StaticSoftwareUpdate);
  sub_1D1741A30(v159, &qword_1EC644760, &unk_1D1E9E530);
  if (!updated)
  {
    return 0;
  }

LABEL_100:
  if (*(v152 + v153[31]) != *(v146 + v153[31]) || *(v152 + v153[32]) != *(v146 + v153[32]))
  {
    return 0;
  }

  v124 = v153[33];
  v125 = *(v146 + v124);
  if (*(v152 + v124))
  {
    if (!v125 || (sub_1D17B30F0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v125)
  {
    return 0;
  }

  if (*(v152 + v153[34]) != *(v146 + v153[34]) || *(v152 + v153[35]) != *(v146 + v153[35]))
  {
    return 0;
  }

  v131 = v153[36];
  v132 = (v152 + v131);
  v133 = *(v152 + v131 + 8);
  v134 = (v146 + v131);
  v135 = *(v146 + v131 + 8);
  if (v133)
  {
    if (!v135)
    {
      return 0;
    }
  }

  else
  {
    if (*v132 != *v134)
    {
      LOBYTE(v135) = 1;
    }

    if (v135)
    {
      return 0;
    }
  }

  if (*(v152 + v153[37]) != *(v146 + v153[37]))
  {
    return 0;
  }

  v136 = v153[38];
  v137 = *(v160 + 48);
  v138 = v150;
  sub_1D1741C08(v152 + v136, v150, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1741C08(v146 + v136, v138 + v137, &qword_1EC643650, &qword_1D1E71D40);
  v139 = *(v161 + 48);
  if (v139(v138, 1, v162) != 1)
  {
    v140 = v150;
    sub_1D1741C08(v150, v149, &qword_1EC643650, &qword_1D1E71D40);
    if (v139(v140 + v137, 1, v162) != 1)
    {
      v141 = v150;
      v142 = &v150[v137];
      v143 = v163;
      sub_1D1BC91F4(v142, v163, type metadata accessor for StaticMatterDevice);
      v144 = v149;
      v145 = static StaticMatterDevice.== infix(_:_:)(v149, v143);
      sub_1D1BC9194(v143, type metadata accessor for StaticMatterDevice);
      sub_1D1BC9194(v144, type metadata accessor for StaticMatterDevice);
      sub_1D1741A30(v141, &qword_1EC643650, &qword_1D1E71D40);
      return (v145 & 1) != 0;
    }

    sub_1D1BC9194(v149, type metadata accessor for StaticMatterDevice);
    goto LABEL_130;
  }

  if (v139(&v150[v137], 1, v162) != 1)
  {
LABEL_130:
    v43 = &qword_1EC64C600;
    v44 = &qword_1D1E9FA08;
    v130 = &v182;
    goto LABEL_114;
  }

  sub_1D1741A30(v150, &qword_1EC643650, &qword_1D1E71D40);
  return 1;
}

BOOL _s13HomeDataModel15StaticAccessoryV20SpecialMediaCategoryO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v2 > 1)
      {
        if (v2 == 2)
        {
          if (v5 != 3 || v4 != 2)
          {
            goto LABEL_33;
          }

          sub_1D1771B5C(2, 3);
          v6 = 2;
        }

        else
        {
          if (v5 != 3 || v4 != 3)
          {
            goto LABEL_33;
          }

          sub_1D1771B5C(3, 3);
          v6 = 3;
        }
      }

      else
      {
        if (v2)
        {
          if (v5 != 3 || v4 != 1)
          {
            goto LABEL_33;
          }

          sub_1D1771B5C(1, 3);
          sub_1D1771B5C(1, 3);
          return v4;
        }

        if (v5 != 3 || v4)
        {
          goto LABEL_33;
        }

        sub_1D1771B5C(0, 3);
        v6 = 0;
      }

      sub_1D1771B5C(v6, 3);
      return 1;
    }

    if (v5 != 2)
    {
      goto LABEL_33;
    }

    sub_1D1771B5C(*a1, 2);
    sub_1D1771B5C(v4, 2);
    if ((v4 ^ v2))
    {
      return 0;
    }

    else
    {
      return (v2 >> 8) & 1 ^ ((v4 & 0x100) == 0);
    }
  }

  else
  {
    if (!*(a1 + 8))
    {
      if (*(a2 + 8))
      {

LABEL_33:
        sub_1D1771B4C(v4, v5);
        sub_1D1771B5C(v2, v3);
        v8 = v4;
        v9 = v5;
LABEL_34:
        sub_1D1771B5C(v8, v9);
        return 0;
      }

      if (v2)
      {
        if (v4)
        {
          sub_1D1771B4C(*a1, 0);
          sub_1D1771B4C(v4, 0);
          sub_1D1771B4C(v2, 0);
          v7 = sub_1D17A6E98(v2, v4);
          sub_1D1771B5C(v2, 0);
          sub_1D1771B5C(v4, 0);
          sub_1D1771B5C(v2, 0);
          return (v7 & 1) != 0;
        }

        sub_1D1771B4C(0, 0);
        sub_1D1771B4C(0, 0);
        sub_1D1771B4C(v2, 0);
        sub_1D1771B5C(v2, 0);
LABEL_40:
        v8 = v4;
        v9 = 0;
        goto LABEL_34;
      }

      sub_1D1771B4C(v11, 0);
      sub_1D1771B4C(0, 0);
      sub_1D1771B5C(0, 0);
      sub_1D1771B5C(v4, 0);
      if (v4)
      {
        goto LABEL_40;
      }

      return 1;
    }

    if (v5 != 1)
    {
      goto LABEL_33;
    }

    sub_1D1771B5C(*a1, 1);
    sub_1D1771B5C(v4, 1);
    return v4 == v2;
  }
}

uint64_t sub_1D1BC6510(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v5 = type metadata accessor for StaticService(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66A7C();
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
  result = MEMORY[0x1EEE9AC00](v10);
  v41 = &v35 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v39 = *(result + 48);
    v15 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v38 = *(v12 + 72);
    v42 = (v37 + 32);
    v36 = (v37 + 8);
    while (1)
    {
      v43 = v14;
      v17 = v41;
      sub_1D1741C08(v15, v41, &qword_1EC6436E8, &unk_1D1E71E40);
      v18 = *v42;
      v19 = v8;
      (*v42)(v44, v17, v8);
      v20 = v7;
      sub_1D1BC91F4(v17 + v39, v7, type metadata accessor for StaticService);
      v21 = *v45;
      v23 = sub_1D1742188();
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D1735934();
        }
      }

      else
      {
        sub_1D1723194(v26, a2 & 1);
        v28 = sub_1D1742188();
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_17;
        }

        v23 = v28;
      }

      v30 = *v45;
      if (v27)
      {
        v8 = v19;
        (*v36)(v44, v19);
        v16 = v30[7] + *(v40 + 72) * v23;
        v7 = v20;
        result = sub_1D1BCBDF0(v20, v16, type metadata accessor for StaticService);
      }

      else
      {
        v30[(v23 >> 6) + 8] |= 1 << v23;
        v8 = v19;
        v18((v30[6] + *(v37 + 72) * v23), v44, v19);
        v31 = v30[7] + *(v40 + 72) * v23;
        v7 = v20;
        result = sub_1D1BC91F4(v20, v31, type metadata accessor for StaticService);
        v32 = v30[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_16;
        }

        v30[2] = v34;
      }

      v15 += v38;
      a2 = 1;
      v14 = v43 - 1;
      if (v43 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1BC6914(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v5 = type metadata accessor for StaticAccessory(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66A7C();
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437A8, &unk_1D1E71F00);
  result = MEMORY[0x1EEE9AC00](v10);
  v41 = &v35 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v39 = *(result + 48);
    v15 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v38 = *(v12 + 72);
    v42 = (v37 + 32);
    v36 = (v37 + 8);
    while (1)
    {
      v43 = v14;
      v17 = v41;
      sub_1D1741C08(v15, v41, &qword_1EC6437A8, &unk_1D1E71F00);
      v18 = *v42;
      v19 = v8;
      (*v42)(v44, v17, v8);
      v20 = v7;
      sub_1D1BC91F4(v17 + v39, v7, type metadata accessor for StaticAccessory);
      v21 = *v45;
      v23 = sub_1D1742188();
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D17362B8();
        }
      }

      else
      {
        sub_1D1723F74(v26, a2 & 1);
        v28 = sub_1D1742188();
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_17;
        }

        v23 = v28;
      }

      v30 = *v45;
      if (v27)
      {
        v8 = v19;
        (*v36)(v44, v19);
        v16 = v30[7] + *(v40 + 72) * v23;
        v7 = v20;
        result = sub_1D1BCBDF0(v20, v16, type metadata accessor for StaticAccessory);
      }

      else
      {
        v30[(v23 >> 6) + 8] |= 1 << v23;
        v8 = v19;
        v18((v30[6] + *(v37 + 72) * v23), v44, v19);
        v31 = v30[7] + *(v40 + 72) * v23;
        v7 = v20;
        result = sub_1D1BC91F4(v20, v31, type metadata accessor for StaticAccessory);
        v32 = v30[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_16;
        }

        v30[2] = v34;
      }

      v15 += v38;
      a2 = 1;
      v14 = v43 - 1;
      if (v43 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1BC6D18(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v238 = a4;
  v299 = a3;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437A8, &unk_1D1E71F00);
  v239 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v219 = &v218 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v218 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v247 = &v218 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v237 = &v218 - v15;
  v236 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  MEMORY[0x1EEE9AC00](v236);
  v279 = (&v218 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v278 = &v218 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v277 = &v218 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v235 = &v218 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v287 = &v218 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v283 = &v218 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v234 = &v218 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v223 = &v218 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v286 = &v218 - v32;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
  v293 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v34 = (&v218 - v33);
  v245 = type metadata accessor for StaticService(0);
  v35 = *(v245 - 8);
  v36 = MEMORY[0x1EEE9AC00](v245);
  v288 = &v218 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v291 = &v218 - v38;
  v39 = sub_1D1E66A7C();
  v297 = *(v39 - 8);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v276 = &v218 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v222 = &v218 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v275 = &v218 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v298 = (&v218 - v47);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v292 = &v218 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v52 = &v218 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v218 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v284 = &v218 - v56;
  v274 = type metadata accessor for StaticAccessory(0);
  v242 = *(v274 - 8);
  MEMORY[0x1EEE9AC00](v274);
  v246 = &v218 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = *a2;
  v243 = a1;
  v58 = [a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v59 = sub_1D1E67C1C();

  if (v59 >> 62)
  {
LABEL_118:
    v60 = sub_1D1E6873C();
  }

  else
  {
    v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = MEMORY[0x1E69E7CC0];
  if (v60)
  {
    v304 = MEMORY[0x1E69E7CC0];
    v241 = v60;
    sub_1D178CEB8(0, v60 & ~(v60 >> 63), 0);
    if (v241 < 0)
    {
      __break(1u);
LABEL_120:

      v217 = v285;
      goto LABEL_121;
    }

    v62 = 0;
    v285 = 0;
    v63 = v59;
    v59 = v304;
    v232 = v63 & 0xC000000000000001;
    v221 = v63 & 0xFFFFFFFFFFFFFF8;
    v226 = v63;
    v220 = v63 + 32;
    v296 = (v297 + 32);
    v300 = (v297 + 8);
    v301 = (v297 + 16);
    v228 = (v297 + 48);
    v244 = (v35 + 48);
    v227 = (v297 + 56);
    v290 = xmmword_1D1E739C0;
    v231 = a5;
    v64 = v299;
    v273 = v11;
    v224 = v34;
    v230 = v35;
    v229 = v54;
    v35 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (__OFADD__(v62, 1))
      {
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      v272 = v62 + 1;
      if (v232)
      {
        v65 = MEMORY[0x1D3891EF0]();
      }

      else
      {
        if (v62 >= *(v221 + 16))
        {
          goto LABEL_117;
        }

        v65 = *(v220 + 8 * v62);
      }

      v34 = v65;
      v281 = [v65 room];
      if (v281)
      {
        if (!a5)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v281 = [v243 roomForEntireHome];
        if (!a5)
        {
          goto LABEL_19;
        }
      }

      v66 = [v34 uniqueIdentifier];
      sub_1D1E66A5C();

      if (a5[2])
      {
        v67 = sub_1D1742188();
        if (v68)
        {
          v69 = v67;
          v70 = a5[7];
          v71 = type metadata accessor for StaticMatterDevice(0);
          v72 = *(v71 - 8);
          v73 = v70 + *(v72 + 72) * v69;
          v74 = v284;
          sub_1D1BC8E68(v73, v284, type metadata accessor for StaticMatterDevice);
          (*v300)(v54, v39);
          (*(v72 + 56))(v74, 0, 1, v71);
        }

        else
        {
          (*v300)(v54, v39);
          v76 = type metadata accessor for StaticMatterDevice(0);
          (*(*(v76 - 8) + 56))(v284, 1, 1, v76);
        }

        v64 = v299;
        goto LABEL_22;
      }

      (*v300)(v54, v39);
LABEL_19:
      v75 = type metadata accessor for StaticMatterDevice(0);
      (*(*(v75 - 8) + 56))(v284, 1, 1, v75);
LABEL_22:
      v282 = v34;
      v77 = [v34 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v78 = sub_1D1E67C1C();

      v79 = v78;
      v80 = v78 >> 62;
      a5 = v298;
      if (v80)
      {
        v204 = v79;
        v11 = sub_1D1E6873C();
        v79 = v204;
      }

      else
      {
        v11 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v280 = v59;
      if (v11)
      {
        v81 = v79;
        v302 = v35;
        sub_1D178CEFC(0, v11 & ~(v11 >> 63), 0);
        if (v11 < 0)
        {
          goto LABEL_116;
        }

        v82 = 0;
        v83 = v302;
        v84 = v81;
        v295 = (v81 & 0xC000000000000001);
        v85 = v81;
        do
        {
          v86 = v11;
          if (v295)
          {
            v87 = MEMORY[0x1D3891EF0](v82, v84);
          }

          else
          {
            v87 = *(v84 + 8 * v82 + 32);
          }

          v88 = v87;
          v89 = v292;
          v90 = [v87 uniqueIdentifier];
          sub_1D1E66A5C();

          v302 = v83;
          v92 = *(v83 + 16);
          v91 = *(v83 + 24);
          if (v92 >= v91 >> 1)
          {
            sub_1D178CEFC((v91 > 1), v92 + 1, 1);
            v83 = v302;
          }

          ++v82;
          *(v83 + 16) = v92 + 1;
          (*(v297 + 32))(v83 + ((*(v297 + 80) + 32) & ~*(v297 + 80)) + *(v297 + 72) * v92, v89, v39);
          v11 = v86;
          a5 = v298;
          v84 = v85;
        }

        while (v86 != v82);

        v64 = v299;
        v35 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v83 = v35;
      }

      v302 = v35;
      v295 = *(v83 + 16);
      if (v295)
      {
        v93 = 0;
        v289 = *(v297 + 80);
        v94 = (v289 + 32) & ~v289;
        v294 = v83 + v94;
        v95 = *(v297 + 72);
        v96 = *(v297 + 16);
        v96(v52, v83 + v94, v39);
        while (1)
        {
          v98 = v302 + v94;
          v99 = *(v302 + 16) + 1;
          while (--v99)
          {
            sub_1D1BC8FB4(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
            v98 += v95;
            if (sub_1D1E6775C())
            {
              goto LABEL_38;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
          v97 = swift_allocObject();
          *(v97 + 16) = v290;
          v96((v97 + v94), v52, v39);
          sub_1D17A3840(v97);
LABEL_38:
          ++v93;
          (*v300)(v52, v39);
          if (v93 == v295)
          {
            break;
          }

          v96(v52, v294 + v95 * v93, v39);
        }

        a5 = v298;
        v64 = v299;
        v35 = MEMORY[0x1E69E7CC0];
      }

      else
      {
      }

      v100 = *(v302 + 16);
      v101 = v230;
      v294 = v302;
      if (v100)
      {
        v102 = v302 + ((*(v297 + 80) + 32) & ~*(v297 + 80));
        v103 = *(v297 + 72);
        v105 = v35;
        v295 = *(v297 + 16);
        v104 = v295;
        (v295)(a5, v102, v39);
        while (1)
        {
          if (*(v64 + 16) && (v106 = sub_1D1742188(), v64 = v299, (v107 & 1) != 0))
          {
            v108 = v103;
            v109 = v101;
            v110 = *(v101 + 72);
            v111 = v105;
            v112 = v288;
            sub_1D1BC8E68(*(v299 + 56) + v110 * v106, v288, type metadata accessor for StaticService);
            (*v300)(a5, v39);
            sub_1D1BC91F4(v112, v291, type metadata accessor for StaticService);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v111 = sub_1D177D048(0, v111[2] + 1, 1, v111);
            }

            v114 = v111[2];
            v113 = v111[3];
            v115 = v111;
            v101 = v109;
            if (v114 >= v113 >> 1)
            {
              v115 = sub_1D177D048((v113 > 1), v114 + 1, 1, v115);
            }

            v103 = v108;
            v115[2] = v114 + 1;
            v105 = v115;
            sub_1D1BC91F4(v291, v115 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + v114 * v110, type metadata accessor for StaticService);
            a5 = v298;
            v64 = v299;
            v104 = v295;
          }

          else
          {
            (*v300)(a5, v39);
          }

          v102 += v103;
          if (!--v100)
          {
            break;
          }

          v104(a5, v102, v39);
        }
      }

      else
      {
        v105 = v35;
      }

      v116 = *(v105 + 16);
      v263 = v105;
      if (v116)
      {
        v302 = MEMORY[0x1E69E7CC0];
        sub_1D178D2D8(0, v116, 0);
        v117 = v302;
        v118 = v105 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
        v119 = *(v101 + 72);
        v120 = v225;
        v121 = v224;
        do
        {
          v122 = *(v120 + 48);
          sub_1D1BC8E68(v118, v121 + v122, type metadata accessor for StaticService);
          (*v301)(v121, v121 + v122, v39);
          v302 = v117;
          v124 = *(v117 + 16);
          v123 = *(v117 + 24);
          if (v124 >= v123 >> 1)
          {
            sub_1D178D2D8((v123 > 1), v124 + 1, 1);
            v120 = v225;
            v117 = v302;
          }

          *(v117 + 16) = v124 + 1;
          sub_1D1741A90(v121, v117 + ((*(v293 + 80) + 32) & ~*(v293 + 80)) + *(v293 + 72) * v124, &qword_1EC6436E8, &unk_1D1E71E40);
          v118 += v119;
          --v116;
        }

        while (v116);
      }

      else
      {
        v117 = MEMORY[0x1E69E7CC0];
      }

      v125 = v282;
      if (*(v117 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB8, &qword_1D1E7E7A0);
        v126 = sub_1D1E68BCC();
      }

      else
      {
        v126 = MEMORY[0x1E69E7CC8];
      }

      v302 = v126;
      a5 = v285;
      sub_1D1BC6510(v117, 1, &v302);
      v285 = a5;
      if (a5)
      {
        goto LABEL_120;
      }

      v127 = v302;
      sub_1D1BBBE58(v125, v302, v286);
      sub_1D1BBD6A8(v125, v238, v283);
      v265 = sub_1D1BBDC8C(v125);
      v264 = v128;
      v129 = sub_1D1E682DC();
      v131 = v130;
      v132 = [v125 supportsNativeMatter];
      v295 = v129;
      LODWORD(v289) = v131;
      v271 = v127;
      if ((v132 & 1) != 0 && (sub_1D1E682DC(), (v133 & 1) == 0))
      {
        v135 = sub_1D1E682DC() != 0;
        v134 = v136 | v135;
      }

      else
      {
        v134 = 0;
      }

      v270 = v134;
      v269 = sub_1D1BBDD50(v125, v134 & 1);
      v268 = sub_1D1BBDFD8(v125, v269 & 1);
      v137 = v263;
      v267 = sub_1D1BBEFB4(v125, v263);
      v266 = sub_1D1BBF91C(v125, v137);

      v138 = sub_1D1E669FC();
      v139 = *(*(v138 - 8) + 56);
      v140 = 1;
      v139(v287, 1, 1, v138);
      v141 = [v125 lastSeenStatus];
      if (v141)
      {
        v142 = v141;
        v143 = [v141 lastSeenDate];

        v144 = v235;
        sub_1D1E669BC();

        v140 = 0;
      }

      else
      {
        v144 = v235;
      }

      v145 = v287;
      sub_1D1741A30(v287, &qword_1EC642570, &qword_1D1E6C6A0);
      v139(v144, v140, 1, v138);
      sub_1D1741A90(v144, v145, &qword_1EC642570, &qword_1D1E6C6A0);
      v146 = v282;
      v147 = [v282 lastSeenStatus];
      if (v147)
      {
        v148 = v147;
        v149 = [v147 lowBatteryStatus];

        v150 = 2 * (v149 != 1);
        if (v149 == 2)
        {
          v150 = 1;
        }
      }

      else
      {
        v150 = 2;
      }

      v262 = v150;
      v151 = v281;
      LODWORD(v281) = [v146 supportsCHIP];
      LODWORD(v263) = [v146 requiresThreadRouter];
      v152 = [v146 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1741C08(v287, v277, &qword_1EC642570, &qword_1D1E6C6A0);
      v153 = [v146 deviceIdentifier];
      v154 = sub_1D1E6781C();
      v156 = v155;

      v157 = v237;
      sub_1D1E66A0C();
      if ((*v228)(v157, 1, v39) == 1)
      {
        sub_1D1741A30(v157, &qword_1EC642590, qword_1D1E71260);
        v158 = v279;
        *v279 = v154;
        v158[1] = v156;
      }

      else
      {

        v159 = *v296;
        v160 = v222;
        (*v296)(v222, v157, v39);
        v159(v279, v160, v39);
      }

      swift_storeEnumTagMultiPayload();
      v161 = v146;
      v162 = v273;
      sub_1D1CE96D0(v161, v273);
      v163 = type metadata accessor for StaticDeviceMetadata(0);
      (*(*(v163 - 8) + 56))(v162, 0, 1, v163);
      HMAccessory.dateAdded.getter(v278);
      v164 = sub_1D1A11844();
      if (v164 == 2)
      {
        v165 = v223;
        sub_1D1741C08(v286, v223, &qword_1EC6436F0, &qword_1D1E99BC0);
        v166 = v245;
        if ((*v244)(v165, 1, v245) == 1)
        {
          sub_1D1741A30(v165, &qword_1EC6436F0, &qword_1D1E99BC0);
          LODWORD(v282) = 0;
        }

        else
        {
          LODWORD(v282) = *(v165 + *(v166 + 28));
          sub_1D1BC9194(v165, type metadata accessor for StaticService);
        }
      }

      else
      {
        LODWORD(v282) = v164;
      }

      v167 = [v243 uniqueIdentifier];
      sub_1D1E66A5C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
      v168 = v297;
      v169 = (*(v297 + 80) + 32) & ~*(v297 + 80);
      v170 = swift_allocObject();
      *(v170 + 16) = v290;
      v171 = [v151 uniqueIdentifier];
      sub_1D1E66A5C();

      v172 = sub_1D179BE14(v170);
      swift_setDeallocating();
      (*(v168 + 8))(v170 + v169, v39);
      swift_deallocClassInstance();
      v173 = [v151 name];
      v260 = sub_1D1E6781C();
      v259 = v174;

      v258 = [v161 isCurrentAccessory];
      v257 = HMAccessory.isFavorite.getter();
      v256 = HMAccessory.shouldShowInDashboard.getter();
      v255 = HMAccessory.contributesToHomeStatus.getter();
      v254 = HMAccessory.showAsIndividualTiles.getter();
      v175 = v234;
      sub_1D1741C08(v286, v234, &qword_1EC6436F0, &qword_1D1E99BC0);
      v176 = (*v244)(v175, 1, v245);
      v261 = v172;
      if (v176 == 1)
      {
        sub_1D1741A30(v175, &qword_1EC6436F0, &qword_1D1E99BC0);
        v177 = 1;
        v178 = v247;
      }

      else
      {
        v178 = v247;
        (*v301)(v247, v175, v39);
        sub_1D1BC9194(v175, type metadata accessor for StaticService);
        v177 = 0;
      }

      (*v227)(v178, v177, 1, v39);
      HMAccessory.specialMediaCategory.getter(&v302);
      v253 = v302;
      v252 = v303;
      v179 = [v161 category];
      v180 = [v179 categoryType];

      v251 = sub_1D1E6781C();
      v250 = v181;

      v182 = [v161 uniqueIdentifiersForBridgedAccessories];
      if (v182)
      {
        v183 = v182;
        v249 = sub_1D1E67C1C();
      }

      else
      {
        v249 = 0;
      }

      v11 = v246;
      sub_1D1741C08(v283, &v246[*(v274 + 120)], &qword_1EC644760, &unk_1D1E9E530);
      v248 = sub_1D1BBFC34(v161, v284, 2u);
      v184 = [v161 symptomsHandler];
      if (v184)
      {
        v185 = v184;
        v186 = [v184 symptoms];

        sub_1D1741B10(0, &unk_1EE079BC0, 0x1E696CC78);
        sub_1D1BCBD88();
        v187 = sub_1D1E6816C();

        v188 = v285;
        sub_1D1BACEEC(v187);
        v190 = v189;
        v285 = v188;
        v178 = v247;

        v191 = sub_1D1784578(v190);

        v11 = v246;
      }

      else
      {

        v191 = 0;
      }

      v34 = &qword_1EC642570;
      sub_1D1741A30(v287, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v283, &qword_1EC644760, &unk_1D1E9E530);
      sub_1D1741A30(v286, &qword_1EC6436F0, &qword_1D1E99BC0);
      v192 = v274;
      sub_1D1741A90(v284, v11 + *(v274 + 152), &qword_1EC643650, &qword_1D1E71D40);
      v193 = *v296;
      (*v296)(v11, v275, v39);
      sub_1D1741A90(v277, v11 + v192[5], &qword_1EC642570, &qword_1D1E6C6A0);
      *(v11 + v192[6]) = v262;
      v194 = (v11 + v192[7]);
      v195 = v264;
      *v194 = v265;
      v194[1] = v195;
      sub_1D1BC91F4(v279, v11 + v192[8], type metadata accessor for StaticAccessory.DeviceIdentifier);
      sub_1D1741A90(v273, v11 + v192[9], &qword_1EC644620, &unk_1D1E75A00);
      sub_1D1741A90(v278, v11 + v192[10], &qword_1EC642570, &qword_1D1E6C6A0);
      *(v11 + v192[11]) = v282 & 1;
      v193((v11 + v192[12]), v276, v39);
      *(v11 + v192[13]) = v261;
      v196 = (v11 + v192[14]);
      v197 = v259;
      *v196 = v260;
      v196[1] = v197;
      *(v11 + v192[15]) = v258;
      *(v11 + v192[16]) = v257 & 1;
      *(v11 + v192[17]) = v256 & 1;
      *(v11 + v192[18]) = v255 & 1;
      *(v11 + v192[19]) = v254 & 1;
      *(v11 + v192[20]) = v271;
      *(v11 + v192[21]) = v294;
      sub_1D1741A90(v178, v11 + v192[22], &qword_1EC642590, qword_1D1E71260);
      v198 = v11 + v192[23];
      *v198 = v253;
      *(v198 + 8) = v252;
      v199 = (v11 + v192[24]);
      v200 = v250;
      *v199 = v251;
      v199[1] = v200;
      *(v11 + v192[25]) = v249;
      *(v11 + v192[26]) = v268 & 1;
      *(v11 + v192[27]) = v269 & 1;
      *(v11 + v192[28]) = v267 & 1;
      *(v11 + v192[29]) = v266 & 1;
      *(v11 + v192[31]) = v248 & 1;
      *(v11 + v192[32]) = v233;
      *(v11 + v192[33]) = v191;
      *(v11 + v192[34]) = v281;
      *(v11 + v192[35]) = v263;
      v201 = v11 + v192[36];
      *v201 = v295;
      *(v201 + 8) = v289 & 1;
      *(v11 + v192[37]) = v270 & 1;
      v59 = v280;
      v304 = v280;
      v203 = *(v280 + 16);
      v202 = *(v280 + 24);
      v64 = v299;
      if (v203 >= v202 >> 1)
      {
        sub_1D178CEB8((v202 > 1), v203 + 1, 1);
        v64 = v299;
        v59 = v304;
      }

      *(v59 + 16) = v203 + 1;
      sub_1D1BC91F4(v11, v59 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v203, type metadata accessor for StaticAccessory);
      v62 = v272;
      a5 = v231;
      v54 = v229;
      v35 = MEMORY[0x1E69E7CC0];
      if (v272 == v241)
      {

        v205 = *(v59 + 16);
        if (!v205)
        {
          goto LABEL_111;
        }

LABEL_104:
        v302 = v35;
        sub_1D178D298(0, v205, 0);
        v206 = v302;
        v207 = (*(v242 + 80) + 32) & ~*(v242 + 80);
        v280 = v59;
        v208 = v59 + v207;
        v209 = *(v242 + 72);
        v210 = (v297 + 16);
        v211 = v219;
        do
        {
          v212 = *(v240 + 48);
          sub_1D1BC8E68(v208, v211 + v212, type metadata accessor for StaticAccessory);
          (*v210)(v211, v211 + v212, v39);
          v302 = v206;
          v214 = *(v206 + 16);
          v213 = *(v206 + 24);
          if (v214 >= v213 >> 1)
          {
            sub_1D178D298((v213 > 1), v214 + 1, 1);
            v211 = v219;
            v206 = v302;
          }

          *(v206 + 16) = v214 + 1;
          sub_1D1741A90(v211, v206 + ((*(v239 + 80) + 32) & ~*(v239 + 80)) + *(v239 + 72) * v214, &qword_1EC6437A8, &unk_1D1E71F00);
          v208 += v209;
          --v205;
        }

        while (v205);

        if (*(v206 + 16))
        {
          goto LABEL_109;
        }

LABEL_112:
        v215 = MEMORY[0x1E69E7CC8];
        goto LABEL_113;
      }
    }
  }

  v285 = 0;
  v59 = MEMORY[0x1E69E7CC0];
  v35 = v61;
  v205 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v205)
  {
    goto LABEL_104;
  }

LABEL_111:

  v206 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_112;
  }

LABEL_109:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A80, &qword_1D1E6E7D0);
  v215 = sub_1D1E68BCC();
LABEL_113:
  v302 = v215;
  a5 = v285;
  sub_1D1BC6914(v206, 1, &v302);
  if (a5)
  {
    while (1)
    {

      v217 = a5;
LABEL_121:

      __break(1u);
    }
  }

  return v302;
}

uint64_t sub_1D1BC8E68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BC8EF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1BC8F60()
{
  result = qword_1EC64C318;
  if (!qword_1EC64C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C318);
  }

  return result;
}

uint64_t sub_1D1BC8FB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D1BC8FFC()
{
  result = qword_1EC64C320;
  if (!qword_1EC64C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C320);
  }

  return result;
}

uint64_t sub_1D1BC9050(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644D50, &qword_1D1E77910);
    sub_1D1BC8FB4(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1BC90EC()
{
  result = qword_1EC64C338;
  if (!qword_1EC64C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C338);
  }

  return result;
}

unint64_t sub_1D1BC9140()
{
  result = qword_1EC64C350;
  if (!qword_1EC64C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C350);
  }

  return result;
}

uint64_t sub_1D1BC9194(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1BC91F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1BC925C()
{
  result = qword_1EC64C360;
  if (!qword_1EC64C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C360);
  }

  return result;
}

uint64_t sub_1D1BC92B0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1BC8FB4(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1BC934C()
{
  result = qword_1EC64C378;
  if (!qword_1EC64C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C378);
  }

  return result;
}

uint64_t sub_1D1BC93A0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64C340, &qword_1D1E9E550);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1BC9418()
{
  result = qword_1EC64C388;
  if (!qword_1EC64C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C388);
  }

  return result;
}

unint64_t sub_1D1BC946C()
{
  result = qword_1EC64C3D0;
  if (!qword_1EC64C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C3D0);
  }

  return result;
}

unint64_t sub_1D1BC94C0()
{
  result = qword_1EC64C3D8;
  if (!qword_1EC64C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C3D8);
  }

  return result;
}

unint64_t sub_1D1BC9514()
{
  result = qword_1EC64C3E0;
  if (!qword_1EC64C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C3E0);
  }

  return result;
}

unint64_t sub_1D1BC9568()
{
  result = qword_1EC64C3E8;
  if (!qword_1EC64C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C3E8);
  }

  return result;
}

unint64_t sub_1D1BC95BC()
{
  result = qword_1EC64C3F0;
  if (!qword_1EC64C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C3F0);
  }

  return result;
}

unint64_t sub_1D1BC9610()
{
  result = qword_1EC64C3F8;
  if (!qword_1EC64C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C3F8);
  }

  return result;
}

unint64_t sub_1D1BC9664()
{
  result = qword_1EC64C400;
  if (!qword_1EC64C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C400);
  }

  return result;
}

unint64_t sub_1D1BC96B8()
{
  result = qword_1EC64C408;
  if (!qword_1EC64C408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C408);
  }

  return result;
}

unint64_t sub_1D1BC970C()
{
  result = qword_1EC64C410;
  if (!qword_1EC64C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C410);
  }

  return result;
}

unint64_t sub_1D1BC9760()
{
  result = qword_1EC64C458;
  if (!qword_1EC64C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C458);
  }

  return result;
}

unint64_t sub_1D1BC97B4()
{
  result = qword_1EC64C478;
  if (!qword_1EC64C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C478);
  }

  return result;
}

unint64_t sub_1D1BC9808()
{
  result = qword_1EC64C480;
  if (!qword_1EC64C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C480);
  }

  return result;
}

unint64_t sub_1D1BC985C()
{
  result = qword_1EC64C488;
  if (!qword_1EC64C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C488);
  }

  return result;
}

uint64_t sub_1D1BC9940(void *a1)
{
  a1[1] = sub_1D1BC8FB4(&qword_1EC64C4B0, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
  a1[2] = sub_1D1BC8FB4(&qword_1EC64C4B8, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
  a1[3] = sub_1D1BC8FB4(&qword_1EC644758, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
  a1[4] = sub_1D1BC8FB4(&qword_1EC644708, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
  a1[5] = sub_1D1BC8FB4(&qword_1EE07AB10, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
  result = sub_1D1BC8FB4(&qword_1EC64C4C0, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
  a1[6] = result;
  return result;
}

uint64_t sub_1D1BC9A64(void *a1)
{
  a1[1] = sub_1D1BC8FB4(&qword_1EC644758, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
  a1[2] = sub_1D1BC8FB4(&qword_1EC644708, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
  a1[3] = sub_1D1BC8FB4(&qword_1EE07AB10, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
  result = sub_1D1BC8FB4(&qword_1EC64C4C0, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
  a1[4] = result;
  return result;
}

unint64_t sub_1D1BC9B3C()
{
  result = qword_1EC64C4C8;
  if (!qword_1EC64C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C4C8);
  }

  return result;
}

unint64_t sub_1D1BC9B94()
{
  result = qword_1EC64C4D0;
  if (!qword_1EC64C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C4D0);
  }

  return result;
}

unint64_t sub_1D1BC9C7C()
{
  result = qword_1EC64C4D8;
  if (!qword_1EC64C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C4D8);
  }

  return result;
}

unint64_t sub_1D1BC9CD4()
{
  result = qword_1EC64C4E0;
  if (!qword_1EC64C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C4E0);
  }

  return result;
}

void sub_1D1BC9D50(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D1BCA1C4(319, &qword_1EE07E020, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D17BDF80(319, qword_1EE07CAB8, &type metadata for StaticAccessory.BatteryStatus);
      if (v3 <= 0x3F)
      {
        type metadata accessor for StaticAccessory.DeviceIdentifier(319);
        if (v4 <= 0x3F)
        {
          sub_1D1BCA1C4(319, &qword_1EE07DF30, type metadata accessor for StaticDeviceMetadata, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1D1791340(319);
            if (v6 <= 0x3F)
            {
              sub_1D17BDF80(319, qword_1EE07D1F8, MEMORY[0x1E69E6158]);
              if (v7 <= 0x3F)
              {
                sub_1D1BCA118(319);
                if (v8 <= 0x3F)
                {
                  sub_1D1BCA1C4(319, &qword_1EE07B750, MEMORY[0x1E69695A8], MEMORY[0x1E69E62F8]);
                  if (v9 <= 0x3F)
                  {
                    sub_1D1BCA1C4(319, &qword_1EE07E018, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
                    if (v10 <= 0x3F)
                    {
                      sub_1D17BDF80(319, qword_1EE07CA78, &type metadata for StaticAccessory.SpecialMediaCategory);
                      if (v11 <= 0x3F)
                      {
                        sub_1D19ADBB8(319, &qword_1EE07B748, &qword_1EC644D50, &qword_1D1E77910);
                        if (v12 <= 0x3F)
                        {
                          sub_1D1BCA1C4(319, &qword_1EE07DE40, type metadata accessor for StaticSoftwareUpdate, MEMORY[0x1E69E6720]);
                          if (v13 <= 0x3F)
                          {
                            sub_1D19ADBB8(319, &qword_1EE07B6E0, &qword_1EC64C340, &qword_1D1E9E550);
                            if (v14 <= 0x3F)
                            {
                              sub_1D17BDF80(319, &qword_1EE07B5F8, MEMORY[0x1E69E76D8]);
                              if (v15 <= 0x3F)
                              {
                                sub_1D1BCA1C4(319, qword_1EE07A818, type metadata accessor for StaticMatterDevice, MEMORY[0x1E69E6720]);
                                if (v16 <= 0x3F)
                                {
                                  swift_cvw_initStructMetadataWithLayoutString();
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
            }
          }
        }
      }
    }
  }
}

void sub_1D1BCA118(uint64_t a1)
{
  if (!qword_1EE07B7D8)
  {
    sub_1D1E66A7C();
    type metadata accessor for StaticService(255);
    sub_1D1BC8FB4(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_1D1E6769C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE07B7D8);
    }
  }
}

void sub_1D1BCA1C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D1BCA248(uint64_t a1)
{
  result = sub_1D1E66A7C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StaticAccessory.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_17;
  }

  if (a2 + 34 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 34) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 34;
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

      return (*a1 | (v4 << 8)) - 34;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v8 = v6 - 35;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StaticAccessory.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDE)
  {
    v4 = 0;
  }

  if (a2 > 0xDD)
  {
    v5 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D1BCA4C8()
{
  result = qword_1EC64C4E8;
  if (!qword_1EC64C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C4E8);
  }

  return result;
}

unint64_t sub_1D1BCA520()
{
  result = qword_1EC64C4F0;
  if (!qword_1EC64C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C4F0);
  }

  return result;
}

unint64_t sub_1D1BCA578()
{
  result = qword_1EC64C4F8;
  if (!qword_1EC64C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C4F8);
  }

  return result;
}

unint64_t sub_1D1BCA5D0()
{
  result = qword_1EC64C500;
  if (!qword_1EC64C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C500);
  }

  return result;
}

unint64_t sub_1D1BCA628()
{
  result = qword_1EC64C508;
  if (!qword_1EC64C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C508);
  }

  return result;
}

unint64_t sub_1D1BCA680()
{
  result = qword_1EC64C510;
  if (!qword_1EC64C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C510);
  }

  return result;
}

unint64_t sub_1D1BCA6D8()
{
  result = qword_1EC64C518;
  if (!qword_1EC64C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C518);
  }

  return result;
}

unint64_t sub_1D1BCA730()
{
  result = qword_1EC64C520;
  if (!qword_1EC64C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C520);
  }

  return result;
}

unint64_t sub_1D1BCA788()
{
  result = qword_1EC64C528;
  if (!qword_1EC64C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C528);
  }

  return result;
}

unint64_t sub_1D1BCA7E0()
{
  result = qword_1EC64C530;
  if (!qword_1EC64C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C530);
  }

  return result;
}

unint64_t sub_1D1BCA838()
{
  result = qword_1EC64C538;
  if (!qword_1EC64C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C538);
  }

  return result;
}

unint64_t sub_1D1BCA890()
{
  result = qword_1EC64C540;
  if (!qword_1EC64C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C540);
  }

  return result;
}

unint64_t sub_1D1BCA8E8()
{
  result = qword_1EC64C548;
  if (!qword_1EC64C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C548);
  }

  return result;
}

unint64_t sub_1D1BCA940()
{
  result = qword_1EC64C550;
  if (!qword_1EC64C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C550);
  }

  return result;
}

unint64_t sub_1D1BCA998()
{
  result = qword_1EC64C558;
  if (!qword_1EC64C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C558);
  }

  return result;
}

unint64_t sub_1D1BCA9F0()
{
  result = qword_1EC64C560;
  if (!qword_1EC64C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C560);
  }

  return result;
}

unint64_t sub_1D1BCAA48()
{
  result = qword_1EC64C568;
  if (!qword_1EC64C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C568);
  }

  return result;
}

unint64_t sub_1D1BCAAA0()
{
  result = qword_1EC64C570;
  if (!qword_1EC64C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C570);
  }

  return result;
}

unint64_t sub_1D1BCAAF8()
{
  result = qword_1EC64C578;
  if (!qword_1EC64C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C578);
  }

  return result;
}

unint64_t sub_1D1BCAB50()
{
  result = qword_1EC64C580;
  if (!qword_1EC64C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C580);
  }

  return result;
}

unint64_t sub_1D1BCABA8()
{
  result = qword_1EC64C588;
  if (!qword_1EC64C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C588);
  }

  return result;
}

unint64_t sub_1D1BCAC00()
{
  result = qword_1EC64C590;
  if (!qword_1EC64C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C590);
  }

  return result;
}

unint64_t sub_1D1BCAC58()
{
  result = qword_1EC64C598;
  if (!qword_1EC64C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C598);
  }

  return result;
}

unint64_t sub_1D1BCACB0()
{
  result = qword_1EC64C5A0;
  if (!qword_1EC64C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5A0);
  }

  return result;
}

unint64_t sub_1D1BCAD08()
{
  result = qword_1EC64C5A8;
  if (!qword_1EC64C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5A8);
  }

  return result;
}

unint64_t sub_1D1BCAD60()
{
  result = qword_1EC64C5B0;
  if (!qword_1EC64C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5B0);
  }

  return result;
}

unint64_t sub_1D1BCADB8()
{
  result = qword_1EC64C5B8;
  if (!qword_1EC64C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5B8);
  }

  return result;
}

unint64_t sub_1D1BCAE10()
{
  result = qword_1EC64C5C0;
  if (!qword_1EC64C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5C0);
  }

  return result;
}

unint64_t sub_1D1BCAE68()
{
  result = qword_1EC64C5C8;
  if (!qword_1EC64C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5C8);
  }

  return result;
}

unint64_t sub_1D1BCAEC0()
{
  result = qword_1EC64C5D0;
  if (!qword_1EC64C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5D0);
  }

  return result;
}

unint64_t sub_1D1BCAF18()
{
  result = qword_1EC64C5D8;
  if (!qword_1EC64C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5D8);
  }

  return result;
}

unint64_t sub_1D1BCAF70()
{
  result = qword_1EC64C5E0;
  if (!qword_1EC64C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5E0);
  }

  return result;
}

uint64_t sub_1D1BCAFC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6565537473616CLL && a2 == 0xEC00000065746144 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC60F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC6110 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654D656369766564 && a2 == 0xEE00617461646174 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C62756F447369 && a2 == 0xEC00000068676948 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6449656D6F68 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7364496D6F6F72 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC6130 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC5DC0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC6150 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC6170 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EC6190 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC61B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC61D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EBDFE0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC61F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EC6210 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x72427341776F6873 && a2 == 0xEC00000065676469 || (sub_1D1E6904C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC6230 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC6250 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x537265776F507369 && a2 == 0xEC00000070697274 || (sub_1D1E6904C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6572617774666F73 && a2 == 0xEE00657461647055 || (sub_1D1E6904C() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6168636165527369 && a2 == 0xEB00000000656C62 || (sub_1D1E6904C() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC6270 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x736D6F74706D7973 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x7374726F70707573 && a2 == 0xEC00000050494843 || (sub_1D1E6904C() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EC6290 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x6F4E72657474616DLL && a2 == 0xEC00000044496564 || (sub_1D1E6904C() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC62B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x654472657474616DLL && a2 == 0xEC00000065636976)
  {

    return 34;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 34;
    }

    else
    {
      return 35;
    }
  }
}

uint64_t sub_1D1BCBA90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74726F50726961 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5654656C707061 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6365526F69647561 && a2 == 0xED00007265766965 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6172656D6163 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646F50656D6F68 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x70646E4569726973 && a2 == 0xEC000000746E696FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72656B61657073 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1D1BCBCE0()
{
  result = qword_1EC64C5E8;
  if (!qword_1EC64C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5E8);
  }

  return result;
}

unint64_t sub_1D1BCBD34()
{
  result = qword_1EC64C5F0;
  if (!qword_1EC64C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5F0);
  }

  return result;
}

unint64_t sub_1D1BCBD88()
{
  result = qword_1EE079BB8;
  if (!qword_1EE079BB8)
  {
    sub_1D1741B10(255, &unk_1EE079BC0, 0x1E696CC78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE079BB8);
  }

  return result;
}

uint64_t sub_1D1BCBDF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void static StaticAccessory.SpecialMediaCategory.siriEndpoint(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 siriEndpointProfile];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 category];
    v7 = [v6 categoryType];

    v8 = sub_1D1E6781C();
    v10 = v9;

    if (sub_1D1E6781C() != v8 || v11 != v10)
    {
      v13 = sub_1D1E6904C();

      if (v13)
      {
        goto LABEL_12;
      }

      if (sub_1D1E6781C() != v8 || v16 != v10)
      {
        v19 = sub_1D1E6904C();

        if (v19)
        {
          goto LABEL_12;
        }

        if (sub_1D1E6781C() != v8 || v20 != v10)
        {
          v21 = sub_1D1E6904C();

          if (v21)
          {
            v17 = 256;
          }

          else
          {
            v17 = 0;
          }

          goto LABEL_13;
        }
      }
    }

LABEL_12:

    v17 = 256;
LABEL_13:
    v18 = [v5 supportsOnboarding];

    v14 = v17 | v18;
    v15 = 2;
    goto LABEL_14;
  }

  v14 = 0;
  v15 = -1;
LABEL_14:
  *a2 = v14;
  *(a2 + 8) = v15;
}

id static StaticAccessory.HomePodTypes.homePodType(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  result = [a1 homePodVariant];
  if (result >= 4)
  {
    v4 = 1;
  }

  else
  {
    v4 = result;
  }

  *a2 = v4;
  return result;
}

uint64_t StaticAccessory.categoryKind.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticAccessory(0) + 96));
  v2 = v1[1];
  if (!v2)
  {
    return 36;
  }

  v3 = *v1;

  return _s13HomeDataModel12CategoryKindO8rawValueACSgSS_tcfC_0(v3, v2);
}

void *Set<>.staticAccessoriesIgnoringCurrentDevice.getter(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for StaticAccessory(0);
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v3) = *(a1 + 32);
  v5 = v3 & 0x3F;
  v6 = ((1 << v3) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 > 0xD)
  {
    goto LABEL_19;
  }

  do
  {
    v21[1] = v21;
    v22 = v6;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v23 = v21 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v23, v7);
    v24 = 0;
    v9 = 0;
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v7 = v11 & *(a1 + 56);
    v6 = (v10 + 63) >> 6;
    while (v7)
    {
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v15 = v12 | (v9 << 6);
      sub_1D1BCEF78(*(a1 + 48) + *(v25 + 72) * v15, v4, type metadata accessor for StaticAccessory);
      v16 = v4[*(v2 + 60)];
      sub_1D1BCEFE0(v4, type metadata accessor for StaticAccessory);
      if ((v16 & 1) == 0)
      {
        *&v23[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
          return sub_1D19E09A0(v23, v22, v24, a1);
        }
      }
    }

    v13 = v9;
    while (1)
    {
      v9 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        return sub_1D19E09A0(v23, v22, v24, a1);
      }

      v14 = *(a1 + 56 + 8 * v9);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v7 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v19 = swift_slowAlloc();
  v20 = sub_1D1BCEE60(v19, v6, a1, sub_1D1BCC3E4, 0, sub_1D19FAC5C);
  MEMORY[0x1D3893640](v19, -1, -1);
  return v20;
}

void *Set<>.staticAccessoriesIgnoringOnlySensors.getter(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for StaticAccessory(0);
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v3) = *(a1 + 32);
  v5 = v3 & 0x3F;
  v6 = ((1 << v3) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 > 0xD)
  {
    goto LABEL_19;
  }

  do
  {
    v21[1] = v21;
    v22 = v6;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v23 = v21 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v23, v7);
    v24 = 0;
    v6 = 0;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 56);
    v7 = (v9 + 63) >> 6;
    while (v11)
    {
      v12 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v15 = v12 | (v6 << 6);
      sub_1D1BCEF78(*(a1 + 48) + *(v25 + 72) * v15, v4, type metadata accessor for StaticAccessory);
      v16 = sub_1D1BCC724(v4);
      sub_1D1BCEFE0(v4, type metadata accessor for StaticAccessory);
      if (v16)
      {
        *&v23[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
          return sub_1D19E073C(v23, v22, v24, a1);
        }
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v7)
      {
        return sub_1D19E073C(v23, v22, v24, a1);
      }

      v14 = *(a1 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v11 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v19 = swift_slowAlloc();
  v20 = sub_1D1BCEE60(v19, v6, a1, sub_1D1BCC724, 0, sub_1D19FA9F4);
  MEMORY[0x1D3893640](v19, -1, -1);
  return v20;
}

uint64_t sub_1D1BCC724(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v49 - v7;
  v9 = type metadata accessor for StaticAccessory(0);
  if (*(a1 + *(v9 + 92) + 8) != 255)
  {
    return 1;
  }

  v59 = v8;
  v11 = sub_1D1BCE89C(*(a1 + *(v9 + 80)));
  v49 = v1;
  v12 = v11[8];
  v51 = (v11 + 8);
  v13 = 1 << *(v11 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v12;
  v50 = (v13 + 63) >> 6;
  v55 = v11;

  v16 = 0;
  v17 = 0;
  v53 = v3;
  v54 = v6;
  v52 = "takeSnaphotsWhenBusy";
  while (v15)
  {
    v20 = v17;
LABEL_15:
    v22 = __clz(__rbit64(v15)) | (v16 << 6);
    v23 = v55;
    v24 = v55[6];
    v25 = sub_1D1E66A7C();
    v57 = *(v25 - 8);
    v26 = v24 + *(v57 + 72) * v22;
    v27 = *(v57 + 16);
    v28 = v59;
    v58 = v25;
    v27(v59, v26);
    v29 = v23[7];
    v30 = type metadata accessor for StaticService(0);
    sub_1D1BCEF78(v29 + *(*(v30 - 8) + 72) * v22, v28 + *(v3 + 48), type metadata accessor for StaticService);
    sub_1D1741C08(v28, v6, &qword_1EC642DB0, &unk_1D1E6F360);
    v31 = *(v3 + 48);
    if (qword_1EE07AB30 != -1)
    {
      swift_once();
    }

    v32 = &v6[v31];
    v33 = off_1EE07AB38;
    v34 = *(off_1EE07AB38 + 2);
    v35 = v20;
    v56 = v32;
    if (v34)
    {
      v36 = *(v32 + *(v30 + 104));
      sub_1D1E6920C();
      v62 = v36;
      v63 = v36;
      ServiceKind.rawValue.getter();
      sub_1D1E678EC();

      v37 = sub_1D1E6926C();
      v38 = -1 << v33[32];
      v39 = v37 & ~v38;
      v61 = v33 + 56;
      v40 = v52;
      if ((*&v33[((v39 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v39))
      {
        v60 = ~v38;
        while (1)
        {
          v41 = v40;
          switch(*(*(v33 + 6) + v39))
          {
            case 1:
              v42 = "0000003E-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 2:
              v42 = "00000270-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 3:
              v42 = "000000BB-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 4:
              v42 = "0000008D-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 5:
              v42 = "00000096-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 6:
              v42 = "00000042-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 7:
              v42 = "00000110-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 8:
              v42 = "00000204-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 9:
              v42 = "00000097-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xA:
              v42 = "0000007F-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xB:
              v42 = "00000080-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xC:
              v42 = "00000129-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xD:
              v42 = "00000237-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xE:
              v42 = "00000081-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xF:
              v42 = "00000121-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x10:
              v42 = "00000040-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x11:
              v42 = "000000D7-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x12:
              v42 = "000000BA-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x13:
              v42 = "00000041-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x14:
              v42 = "000000BC-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x15:
              v42 = "000000BD-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x16:
              v42 = "00000082-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x17:
              v42 = "000000D9-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x18:
              v42 = "000000CF-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x19:
              v42 = "000000CC-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1A:
              v42 = "00000083-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1B:
              v42 = "00000084-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1C:
              v42 = "00000043-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1D:
              v42 = "00000044-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1E:
              v42 = "00000045-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1F:
              v42 = "00000112-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x20:
              v42 = "00000085-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x21:
              v42 = "00000086-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x22:
              v42 = "00000047-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x23:
              v42 = "0000007E-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x24:
              v42 = "000000B9-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x25:
              v42 = "00000087-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x26:
              v42 = "00000113-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x27:
              v42 = "00000088-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x28:
              v42 = "00000089-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x29:
              v42 = "00000049-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2A:
              v42 = "00000125-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2B:
              v42 = "00000122-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2C:
              v42 = "000000D8-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2D:
              v42 = "0000008A-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2E:
              v42 = "0000004A-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2F:
              v42 = "000000D0-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x30:
              v42 = "000000B7-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x31:
              v42 = "0000020A-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x32:
              v42 = "0000020F-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x33:
              v42 = "0000008B-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x34:
              v42 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_73:
              v41 = v42 - 32;
              break;
            default:
              break;
          }

          v43 = v41 | 0x8000000000000000;
          v44 = v40;
          switch(v62)
          {
            case 1:
              v45 = "0000003E-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 2:
              v45 = "00000270-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 3:
              v45 = "000000BB-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 4:
              v45 = "0000008D-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 5:
              v45 = "00000096-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 6:
              v45 = "00000042-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 7:
              v45 = "00000110-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 8:
              v45 = "00000204-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 9:
              v45 = "00000097-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 10:
              v45 = "0000007F-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 11:
              v45 = "00000080-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 12:
              v45 = "00000129-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 13:
              v45 = "00000237-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 14:
              v45 = "00000081-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 15:
              v45 = "00000121-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 16:
              v45 = "00000040-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 17:
              v45 = "000000D7-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 18:
              v45 = "000000BA-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 19:
              v45 = "00000041-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 20:
              v45 = "000000BC-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 21:
              v45 = "000000BD-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 22:
              v45 = "00000082-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 23:
              v45 = "000000D9-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 24:
              v45 = "000000CF-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 25:
              v45 = "000000CC-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 26:
              v45 = "00000083-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 27:
              v45 = "00000084-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 28:
              v45 = "00000043-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 29:
              v45 = "00000044-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 30:
              v45 = "00000045-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 31:
              v45 = "00000112-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 32:
              v45 = "00000085-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 33:
              v45 = "00000086-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 34:
              v45 = "00000047-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 35:
              v45 = "0000007E-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 36:
              v45 = "000000B9-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 37:
              v45 = "00000087-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 38:
              v45 = "00000113-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 39:
              v45 = "00000088-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 40:
              v45 = "00000089-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 41:
              v45 = "00000049-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 42:
              v45 = "00000125-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 43:
              v45 = "00000122-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 44:
              v45 = "000000D8-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 45:
              v45 = "0000008A-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 46:
              v45 = "0000004A-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 47:
              v45 = "000000D0-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 48:
              v45 = "000000B7-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 49:
              v45 = "0000020A-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 50:
              v45 = "0000020F-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 51:
              v45 = "0000008B-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 52:
              v45 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_127:
              v44 = v45 - 32;
              break;
            default:
              break;
          }

          if (v43 == (v44 | 0x8000000000000000))
          {
            break;
          }

          v46 = sub_1D1E6904C();

          if (v46)
          {
            goto LABEL_133;
          }

          v39 = (v39 + 1) & v60;
          if (((*&v61[(v39 >> 3) & 0xFFFFFFFFFFFFFF8] >> v39) & 1) == 0)
          {
            goto LABEL_131;
          }
        }

LABEL_133:
        v18 = 1;
      }

      else
      {
LABEL_131:
        v18 = 0;
      }

      v3 = v53;
    }

    else
    {
      v18 = 0;
    }

    v15 &= v15 - 1;
    sub_1D1741A30(v59, &qword_1EC642DB0, &unk_1D1E6F360);
    sub_1D1BCEFE0(v56, type metadata accessor for StaticService);
    v6 = v54;
    result = (*(v57 + 8))(v54, v58);
    v19 = __OFADD__(v35, v18);
    v17 = v35 + v18;
    if (v19)
    {
      goto LABEL_137;
    }
  }

  while (1)
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v21 >= v50)
    {
      v47 = v55;

      v48 = v47[2];

      return v17 < v48;
    }

    v15 = *&v51[8 * v21];
    ++v16;
    if (v15)
    {
      v20 = v17;
      v16 = v21;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

void *Set<>.staticAccessoriesIgnoringNativeMatter.getter(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for StaticAccessory(0);
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v3) = *(a1 + 32);
  v5 = v3 & 0x3F;
  v6 = ((1 << v3) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 > 0xD)
  {
    goto LABEL_19;
  }

  do
  {
    v21[1] = v21;
    v22 = v6;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v23 = v21 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v23, v7);
    v24 = 0;
    v9 = 0;
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v7 = v11 & *(a1 + 56);
    v6 = (v10 + 63) >> 6;
    while (v7)
    {
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v15 = v12 | (v9 << 6);
      sub_1D1BCEF78(*(a1 + 48) + *(v25 + 72) * v15, v4, type metadata accessor for StaticAccessory);
      v16 = v4[*(v2 + 148)];
      sub_1D1BCEFE0(v4, type metadata accessor for StaticAccessory);
      if ((v16 & 1) == 0)
      {
        *&v23[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
          return sub_1D19E09A0(v23, v22, v24, a1);
        }
      }
    }

    v13 = v9;
    while (1)
    {
      v9 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        return sub_1D19E09A0(v23, v22, v24, a1);
      }

      v14 = *(a1 + 56 + 8 * v9);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v7 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v19 = swift_slowAlloc();
  v20 = sub_1D1BCEE60(v19, v6, a1, sub_1D1BCD3DC, 0, sub_1D19FAC5C);
  MEMORY[0x1D3893640](v19, -1, -1);
  return v20;
}

void *Set<>.staticAccessoriesIgnoringSingleServices.getter(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for StaticAccessory(0);
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v3) = *(a1 + 32);
  v5 = v3 & 0x3F;
  v6 = ((1 << v3) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 > 0xD)
  {
    goto LABEL_25;
  }

  do
  {
    v24 = &v24;
    v25 = v6;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v24 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v7);
    v26 = 0;
    v10 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_13:
      v7 = v15 | (v10 << 6);
      sub_1D1BCEF78(*(a1 + 48) + *(v27 + 72) * v7, v4, type metadata accessor for StaticAccessory);
      if (v4[*(v2 + 108)] == 1)
      {
        sub_1D1BCEFE0(v4, type metadata accessor for StaticAccessory);
LABEL_19:
        *&v9[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        if (__OFADD__(v26++, 1))
        {
          __break(1u);
          return sub_1D19E09A0(v9, v25, v26, a1);
        }
      }

      else
      {
        StaticAccessory.staticServicesExcludingComponents.getter();
        v6 = *(v18 + 16);

        if (v6 >= 2 && (StaticAccessory.visibleStaticServices.getter(), v6 = *(v19 + 16), , v6))
        {
          v6 = v4[*(v2 + 76)];
          sub_1D1BCEFE0(v4, type metadata accessor for StaticAccessory);
          if ((v6 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_1D1BCEFE0(v4, type metadata accessor for StaticAccessory);
        }
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        return sub_1D19E09A0(v9, v25, v26, a1);
      }

      v17 = *(a1 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v22 = swift_slowAlloc();
  v23 = sub_1D1BCEE60(v22, v6, a1, sub_1D1BCD780, 0, sub_1D19FAC5C);
  MEMORY[0x1D3893640](v22, -1, -1);
  return v23;
}

uint64_t sub_1D1BCD780(uint64_t a1)
{
  v2 = type metadata accessor for StaticAccessory(0);
  if (*(a1 + *(v2 + 108)))
  {
    v3 = 1;
  }

  else
  {
    v4 = v2;
    StaticAccessory.staticServicesExcludingComponents.getter();
    v6 = *(v5 + 16);

    if (v6 >= 2 && (StaticAccessory.visibleStaticServices.getter(), v8 = *(v7 + 16), , v8))
    {
      v3 = *(a1 + *(v4 + 76)) ^ 1;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

void *Set<>.staticAccessoriesIgnoringSpeakers.getter(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for StaticAccessory(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v4) = *(a1 + 32);
  v6 = v4 & 0x3F;
  v7 = ((1 << v4) + 63) >> 6;
  v8 = 8 * v7;

  if (v6 > 0xD)
  {
    goto LABEL_35;
  }

  do
  {
    v26 = &v26;
    v27 = v7;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v28 = &v26 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v8);
    v29 = 0;
    v10 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v8 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v7 = v15 | (v10 << 6);
      sub_1D1BCEF78(*(a1 + 48) + *(v3 + 72) * v7, v5, type metadata accessor for StaticAccessory);
      v18 = &v5[*(v2 + 92)];
      v19 = *v18;
      v20 = v18[8];
      if (v20 <= 1)
      {
        if (v20)
        {
          v21 = v19;
          v14 = 1;
LABEL_6:
          sub_1D18EB2D8(v21, v14);
        }

LABEL_7:
        sub_1D1BCEFE0(v5, type metadata accessor for StaticAccessory);
      }

      else if (v20 == 2)
      {
        sub_1D18EB2D8(v19, 2);
        if ((v19 & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_1D1BCEFE0(v5, type metadata accessor for StaticAccessory);
        if ((v19 & 0x100) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v20 == 3)
        {
          if (v19 > 1)
          {
            if (v19 == 2)
            {
              v21 = 2;
            }

            else
            {
              v21 = 3;
            }
          }

          else
          {
            v21 = v19 != 0;
          }

          v14 = 3;
          goto LABEL_6;
        }

        sub_1D1BCEFE0(v5, type metadata accessor for StaticAccessory);
LABEL_29:
        *&v28[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
          return sub_1D19E09A0(v28, v27, v29, a1);
        }
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        return sub_1D19E09A0(v28, v27, v29, a1);
      }

      v17 = *(a1 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_35:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v24 = swift_slowAlloc();
  v25 = sub_1D1BCEE60(v24, v7, a1, sub_1D1BCDBB4, 0, sub_1D19FAC5C);
  MEMORY[0x1D3893640](v24, -1, -1);
  return v25;
}

BOOL sub_1D1BCDBB4(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for StaticAccessory(0) + 92);
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 <= 1)
  {
    if (v3)
    {
      v5 = v2;
      v6 = 1;
LABEL_15:
      sub_1D18EB2D8(v5, v6);
    }
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 == 255)
      {
        return 1;
      }

      if (v2 > 1)
      {
        if (v2 == 2)
        {
          v5 = 2;
        }

        else
        {
          v5 = 3;
        }
      }

      else
      {
        v5 = v2 != 0;
      }

      v6 = 3;
      goto LABEL_15;
    }

    sub_1D18EB2D8(v2, 2);
    if (v2)
    {
      return (v2 & 0x100) == 0;
    }
  }

  return 0;
}

void *Set<>.staticAccessoriesIgnoringBridgedServices.getter(unint64_t a1)
{
  v74 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v63 = &v49 - v6;
  v7 = type metadata accessor for StaticService(0);
  v66 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v68 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for StaticAccessory(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v14) = *(a1 + 32);
  v15 = v14 & 0x3F;
  v50 = ((1 << v14) + 63) >> 6;
  v16 = 8 * v50;

  if (v15 > 0xD)
  {
    goto LABEL_40;
  }

  do
  {
    v62 = v5;
    v49 = &v49;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v51 = &v49 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v51, v16);
    v52 = 0;
    v18 = 0;
    v19 = a1 + 56;
    v20 = 1 << *(a1 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(a1 + 56);
    v53 = (v20 + 63) >> 6;
    v69 = 0x80000001D1EB3580;
    v5 = v11;
    v58 = a1 + 56;
    v55 = v12;
    v56 = a1;
    v54 = v13;
    v65 = v7;
    while (1)
    {
      while (1)
      {
        if (v22)
        {
          v60 = (v22 - 1) & v22;
          v61 = v18;
          v23 = __clz(__rbit64(v22)) | (v18 << 6);
        }

        else
        {
          v24 = v18;
          do
          {
            v25 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              goto LABEL_39;
            }

            if (v25 >= v53)
            {
              return sub_1D19E09A0(v51, v50, v52, a1);
            }

            v26 = *(v19 + 8 * v25);
            ++v24;
          }

          while (!v26);
          v60 = (v26 - 1) & v26;
          v61 = v25;
          v23 = __clz(__rbit64(v26)) | (v25 << 6);
        }

        v27 = *(a1 + 48);
        v28 = v13[9];
        v57 = v23;
        v29 = v59;
        sub_1D1BCEF78(v27 + v28 * v23, v59, type metadata accessor for StaticAccessory);
        if (*(v29 + *(v12 + 104)) != 1)
        {
          break;
        }

        sub_1D1BCEFE0(v29, type metadata accessor for StaticAccessory);
        v19 = v58;
        v22 = v60;
        v18 = v61;
      }

      StaticAccessory.staticServicesExcludingComponents.getter();
      v11 = v30;
      v67 = *(v30 + 2);
      if (v67)
      {
        break;
      }

      v13 = MEMORY[0x1E69E7CC0];
LABEL_33:

      v16 = v13[2];

      sub_1D1BCEFE0(v59, type metadata accessor for StaticAccessory);
      v12 = v55;
      a1 = v56;
      v13 = v54;
      v19 = v58;
      v22 = v60;
      v18 = v61;
      if (!v16)
      {
        *&v51[(v57 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v57;
        if (__OFADD__(v52++, 1))
        {
          __break(1u);
          return sub_1D19E09A0(v51, v50, v52, a1);
        }
      }
    }

    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v64 = v30;
    while (v12 < *(v11 + 2))
    {
      a1 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v31 = *(v66 + 72);
      sub_1D1BCEF78(&v11[a1 + v31 * v12], v5, type metadata accessor for StaticService);
      v72 = v5[*(v7 + 104)];
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v69 == v32)
      {
      }

      else
      {
        v16 = v32;
        v33 = sub_1D1E6904C();

        if ((v33 & 1) == 0)
        {
          sub_1D1BCEFE0(v5, type metadata accessor for StaticService);
          goto LABEL_17;
        }
      }

      v70 = v31;
      v71 = a1;
      v34 = &v5[*(v7 + 116)];
      v35 = v63;
      sub_1D1741C08(v34, v63, &qword_1EC642590, qword_1D1E71260);
      v36 = sub_1D1E66A7C();
      v37 = *(v36 - 8);
      v38 = v5;
      v39 = *(v37 + 48);
      a1 = v37 + 48;
      v40 = v39(v35, 1, v36);
      sub_1D1741A30(v35, &qword_1EC642590, qword_1D1E71260);
      if (v40 != 1)
      {
        goto LABEL_27;
      }

      v7 = v65;
      v16 = v62;
      sub_1D1741C08(v38 + *(v65 + 148), v62, &qword_1EC642590, qword_1D1E71260);
      if (v39(v16, 1, v36) != 1)
      {
        sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
LABEL_27:
        sub_1D17978CC(v38, v68);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73 = v13;
        v5 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D17915E0(0, v13[2] + 1, 1);
          v13 = v73;
        }

        v11 = v64;
        v7 = v65;
        v43 = v70;
        v42 = v71;
        a1 = v13[2];
        v44 = v13[3];
        v16 = a1 + 1;
        if (a1 >= v44 >> 1)
        {
          sub_1D17915E0(v44 > 1, a1 + 1, 1);
          v13 = v73;
        }

        v13[2] = v16;
        sub_1D17978CC(v68, v13 + v42 + a1 * v43);
        goto LABEL_17;
      }

      sub_1D1BCEFE0(v38, type metadata accessor for StaticService);
      sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
      v5 = v38;
      v11 = v64;
LABEL_17:
      if (v67 == ++v12)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v47 = swift_slowAlloc();
  v48 = sub_1D1BCEE60(v47, v50, a1, sub_1D1BCE418, 0, sub_1D19FAC5C);
  MEMORY[0x1D3893640](v47, -1, -1);
  return v48;
}

void sub_1D1BCE418(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v34 = v31 - v7;
  v8 = type metadata accessor for StaticService(0);
  v37 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v38 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v31 - v11;
  if ((*(a1 + *(type metadata accessor for StaticAccessory(0) + 104)) & 1) == 0)
  {
    v31[1] = v1;
    StaticAccessory.staticServicesExcludingComponents.getter();
    v14 = v13;
    v36 = *(v13 + 16);
    if (v36)
    {
      v32 = v6;
      v15 = 0;
      v39 = 0x80000001D1EB3580;
      v16 = MEMORY[0x1E69E7CC0];
      v33 = v13;
      v35 = v8;
      do
      {
        if (v15 >= *(v14 + 16))
        {
          __break(1u);
          return;
        }

        v17 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v41 = *(v37 + 72);
        v42 = v16;
        sub_1D1BCEF78(v14 + v17 + v41 * v15, v12, type metadata accessor for StaticService);
        v43 = v12[*(v8 + 104)];
        if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v39 == v18)
        {
        }

        else
        {
          v19 = sub_1D1E6904C();

          if ((v19 & 1) == 0)
          {
            sub_1D1BCEFE0(v12, type metadata accessor for StaticService);
            goto LABEL_5;
          }
        }

        v40 = v17;
        v20 = &v12[*(v8 + 116)];
        v21 = v34;
        sub_1D1741C08(v20, v34, &qword_1EC642590, qword_1D1E71260);
        v22 = sub_1D1E66A7C();
        v23 = v12;
        v24 = *(*(v22 - 8) + 48);
        v25 = v24(v21, 1, v22);
        sub_1D1741A30(v21, &qword_1EC642590, qword_1D1E71260);
        if (v25 != 1)
        {
          goto LABEL_16;
        }

        v8 = v35;
        v26 = v32;
        sub_1D1741C08(v23 + *(v35 + 148), v32, &qword_1EC642590, qword_1D1E71260);
        if (v24(v26, 1, v22) != 1)
        {
          sub_1D1741A30(v26, &qword_1EC642590, qword_1D1E71260);
LABEL_16:
          sub_1D17978CC(v23, v38);
          v16 = v42;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = v16;
          v12 = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D17915E0(0, *(v16 + 16) + 1, 1);
            v16 = v44;
          }

          v8 = v35;
          v14 = v33;
          v28 = v40;
          v30 = *(v16 + 16);
          v29 = *(v16 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1D17915E0(v29 > 1, v30 + 1, 1);
            v16 = v44;
          }

          *(v16 + 16) = v30 + 1;
          sub_1D17978CC(v38, v16 + v28 + v30 * v41);
          goto LABEL_6;
        }

        sub_1D1BCEFE0(v23, type metadata accessor for StaticService);
        sub_1D1741A30(v26, &qword_1EC642590, qword_1D1E71260);
        v14 = v33;
        v12 = v23;
LABEL_5:
        v16 = v42;
LABEL_6:
        ++v15;
      }

      while (v36 != v15);
    }
  }
}

void *sub_1D1BCE89C(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1D1BCE9FC(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1D1BCEF00(v8, v4, v2);
  result = MEMORY[0x1D3893640](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1D1BCE9FC(unint64_t *a1, uint64_t a2, void *a3)
{
  v36 = a2;
  v37 = a1;
  v41 = type metadata accessor for StaticService(0);
  v44 = *(v41 - 8);
  result = MEMORY[0x1EEE9AC00](v41);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v45 = v6;
  v46 = a3;
  v10 = a3[8];
  v9 = a3 + 8;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v38 = 0;
  v39 = 0x80000001D1EB2DA0;
  v42 = v14;
  v43 = v9;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v47 = (v13 - 1) & v13;
LABEL_14:
    v18 = v15 | (v7 << 6);
    sub_1D1BCEF78(v46[7] + *(v44 + 72) * v18, v6, type metadata accessor for StaticService);
    if (qword_1EE07AB40 != -1)
    {
      swift_once();
    }

    v19 = qword_1EE081448;
    if (*(qword_1EE081448 + 16) && (v20 = *(v41 + 104), v21 = v6[v20], sub_1D1E6920C(), v49 = v21, ServiceKind.rawValue.getter(), sub_1D1E678EC(), , v22 = sub_1D1E6926C(), v23 = -1 << *(v19 + 32), v24 = v22 & ~v23, ((*(v19 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
    {
      v40 = v20;
      v35 = v18;
      v25 = ~v23;
      while (1)
      {
        LOBYTE(v48[0]) = *(*(v19 + 48) + v24);
        v49 = v21;
        v26 = ServiceKind.rawValue.getter();
        v28 = v27;
        if (v26 == ServiceKind.rawValue.getter() && v28 == v29)
        {
          break;
        }

        v31 = sub_1D1E6904C();

        if (v31)
        {
          goto LABEL_27;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v19 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

LABEL_27:
      v6 = v45;
      LOBYTE(v48[0]) = v45[v40];
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v39 == v32)
      {

        goto LABEL_6;
      }

      v33 = sub_1D1E6904C();

      result = sub_1D1BCEFE0(v6, type metadata accessor for StaticService);
      v14 = v42;
      v9 = v43;
      v13 = v47;
      if ((v33 & 1) == 0)
      {
        *(v37 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
        if (__OFADD__(v38++, 1))
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
LABEL_6:
      v6 = v45;
      result = sub_1D1BCEFE0(v45, type metadata accessor for StaticService);
      v14 = v42;
      v9 = v43;
      v13 = v47;
    }
  }

  v16 = v7;
  while (1)
  {
    v7 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v7 >= v14)
    {
      return sub_1D188B1C8(v37, v36, v38, v46);
    }

    v17 = v9[v7];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v47 = (v17 - 1) & v17;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void *sub_1D1BCEE60(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

void *sub_1D1BCEF00(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D1BCE9FC(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1D1BCEF78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BCEFE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *StaticAccessory.statusString(with:)(char *a1)
{
  v3 = type metadata accessor for MatterStateSnapshot(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v35 - v14;
  v16 = v1 + *(type metadata accessor for StaticAccessory(0) + 144);
  if (*(v16 + 8))
  {
    goto LABEL_12;
  }

  v35[1] = v1;
  v36 = a1;
  v35[0] = *v16;
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v17 = qword_1EE07DC60;
  swift_getKeyPath();
  v37 = v17;
  sub_1D18CE6D8();
  sub_1D1E66CAC();

  v18 = OBJC_IVAR____TtC13HomeDataModel9DataModel__homesToMatterSnapshots;
  swift_beginAccess();
  v19 = *(v17 + v18);
  if (*(v19 + 16))
  {

    v20 = sub_1D1742188();
    if (v21)
    {
      sub_1D1BD4044(*(v19 + 56) + *(v4 + 72) * v20, v9, type metadata accessor for MatterStateSnapshot);
      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    a1 = v36;
  }

  else
  {
    v22 = 1;
    a1 = v36;
  }

  (*(v4 + 56))(v9, v22, 1, v3);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_1D1741A30(v9, &unk_1EC64F390, &qword_1D1E92B10);
LABEL_12:
    v23 = type metadata accessor for StaticMatterDevice(0);
    (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
    goto LABEL_13;
  }

  sub_1D1BD4044(v9, v6, type metadata accessor for MatterStateSnapshot);
  sub_1D1741A30(v9, &unk_1EC64F390, &qword_1D1E92B10);
  v26 = *&v6[*(v3 + 24)];

  sub_1D1BD40AC(v6, type metadata accessor for MatterStateSnapshot);
  if (*(v26 + 16) && (v27 = sub_1D17420B0(v35[0]), (v28 & 1) != 0))
  {
    v29 = v27;
    v30 = *(v26 + 56);
    v31 = type metadata accessor for StaticMatterDevice(0);
    v32 = *(v31 - 8);
    v33 = v30 + *(v32 + 72) * v29;
    a1 = v36;
    sub_1D1BD4044(v33, v13, type metadata accessor for StaticMatterDevice);

    (*(v32 + 56))(v13, 0, 1, v31);
  }

  else
  {

    v34 = type metadata accessor for StaticMatterDevice(0);
    (*(*(v34 - 8) + 56))(v13, 1, 1, v34);
  }

LABEL_13:
  sub_1D1BCF544(v13, v15);
  v24 = StaticAccessory.statusString(with:associatedMatterDevice:)(a1, v15);
  sub_1D1741A30(v15, &qword_1EC643650, &qword_1D1E71D40);
  return v24;
}

uint64_t sub_1D1BCF544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *StaticAccessory.statusString(with:associatedMatterDevice:)(char *a1, uint64_t a2)
{
  v42 = a1;
  v3 = type metadata accessor for StaticService(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - v11;
  v41 = a2;
  sub_1D1741C08(a2, v10, &qword_1EC643650, &qword_1D1E71D40);
  v13 = type metadata accessor for StaticMatterDevice(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(v10, 1, v13);
  v40 = v12;
  if (v16 == 1)
  {
    v17 = type metadata accessor for StaticAccessory(0);
    v18 = v43;
    sub_1D1741C08(&v43[*(v17 + 152)], v12, &qword_1EC643650, &qword_1D1E71D40);
    if (v15(v10, 1, v13) != 1)
    {
      sub_1D1741A30(v10, &qword_1EC643650, &qword_1D1E71D40);
    }
  }

  else
  {
    sub_1D1BD410C(v10, v12, type metadata accessor for StaticMatterDevice);
    (*(v14 + 56))(v12, 0, 1, v13);
    v18 = v43;
  }

  v19 = type metadata accessor for StaticAccessory(0);
  v20 = v19;
  if (v18[*(v19 + 124)])
  {
    MEMORY[0x1EEE9AC00](v19);
    v21 = v18;
    *(&v40 - 2) = v18;
    result = sub_1D17868B8(sub_1D1820ECC, (&v40 - 4), v22);
    v24 = result;
    v25 = 0;
    v26 = result[2];
    while (1)
    {
      v27 = v26 == v25;
      if (v26 == v25)
      {
LABEL_10:

        v29 = v40;
        v18 = v21;
        goto LABEL_12;
      }

      if (v25 >= *(v24 + 16))
      {
        break;
      }

      sub_1D1BD4044(v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25++, v6, type metadata accessor for StaticService);
      *&v47[0] = *&v6[*(v3 + 128)];
      LOBYTE(v44) = v6[*(v3 + 104)];

      v28 = StaticCharacteristicsBag.isReachable(for:)(&v44);

      result = sub_1D1BD40AC(v6, type metadata accessor for StaticService);
      if (!v28)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = 0;
    v29 = v40;
LABEL_12:
    v30 = v18[*(v20 + 128)];
    v31 = StaticAccessory.isUpdating.getter() & 1;
    v32 = v42;
    v33 = v29;
    v34 = sub_1D1BCFFD8(v42, v29);
    v36 = v35;
    LOBYTE(v47[0]) = v32[4];
    v37 = sub_1D1BCFA04(v47, v41);
    LOBYTE(v44) = v27;
    BYTE1(v44) = v30;
    WORD1(v44) = 514;
    BYTE4(v44) = v31;
    *(&v44 + 1) = v34;
    *&v45 = v36;
    *(&v45 + 1) = v37;
    v46 = v38;
    v39 = StatusStrings.string(for:)(v32);
    v47[0] = v44;
    v47[1] = v45;
    v48 = v46;
    sub_1D1A46590(v47);
    sub_1D1741A30(v33, &qword_1EC643650, &qword_1D1E71D40);
    return v39;
  }

  return result;
}

uint64_t sub_1D1BCFA04(unsigned __int8 *a1, uint64_t a2)
{
  v38 = a2;
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35[-v9];
  v11 = type metadata accessor for StaticMatterDevice(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a1;
  v16 = type metadata accessor for StaticAccessory(0);
  v17 = *(v16 + 120);
  v40 = v15;
  result = sub_1D1D32844(v2 + v17, &v40);
  if (!v19)
  {
    v37 = v4;
    v20 = v38;
    v21 = *(v2 + *(v16 + 132));
    v39 = v15;
    result = _s13HomeDataModel12SymptomErrorO12statusString4with0F7ContextSSSgShyACGSg_AA06StatusI0OtFZ_0(v21, &v39);
    if (!v22)
    {
      v36 = v15;
      sub_1D1741C08(v20, v10, &qword_1EC643650, &qword_1D1E71D40);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        v23 = sub_1D1741A30(v10, &qword_1EC643650, &qword_1D1E71D40);
        v24 = v5;
      }

      else
      {
        sub_1D1BD410C(v10, v14, type metadata accessor for StaticMatterDevice);
        sub_1D1BD3934(v14);
        if (v25)
        {
          v26 = static String.hfLocalized(_:)(0xD00000000000001ELL, 0x80000001D1EC63C0);
          sub_1D1BD40AC(v14, type metadata accessor for StaticMatterDevice);
          return v26;
        }

        v24 = v5;
        v23 = sub_1D1BD40AC(v14, type metadata accessor for StaticMatterDevice);
      }

      MEMORY[0x1EEE9AC00](v23);
      *&v35[-16] = v2;
      result = sub_1D17868B8(sub_1D1823318, &v35[-32], v27);
      v28 = result;
      v29 = *(result + 16);
      if (v29)
      {
        v30 = 0;
        v31 = *(v37 + 40);
        v32 = result + ((*(v24 + 80) + 32) & ~*(v24 + 80));
        v33 = v36;
        while (1)
        {
          if (v30 >= *(v28 + 16))
          {
            __break(1u);
            return result;
          }

          sub_1D1BD4044(v32 + *(v24 + 72) * v30, v7, type metadata accessor for StaticService);
          v34 = v7[v31];
          result = sub_1D1BD40AC(v7, type metadata accessor for StaticService);
          if (v34 != 2 && (v34 & 1) != 0)
          {
            break;
          }

          if (v29 == ++v30)
          {
            goto LABEL_16;
          }
        }

        if (v33 != 2)
        {
          return 0;
        }

        return static String.hfLocalized(_:)(0xD00000000000001ELL, 0x80000001D1EC63C0);
      }

      else
      {
LABEL_16:

        return 0;
      }
    }
  }

  return result;
}

BOOL StaticAccessory.allServicesAreTheSameKind.getter()
{
  v0 = type metadata accessor for StaticService(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1BD0D48();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D178CF80(0, v6, 0);
    v7 = v17;
    v8 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = *(v1 + 72);
    do
    {
      sub_1D1BD4044(v8, v3, type metadata accessor for StaticService);
      v10 = v3[*(v0 + 104)];
      sub_1D1BD40AC(v3, type metadata accessor for StaticService);
      v17 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D178CF80((v11 > 1), v12 + 1, 1);
        v7 = v17;
      }

      *(v7 + 16) = v12 + 1;
      *(v7 + v12 + 32) = v10;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v13 = sub_1D1784388(v7);

  v14 = *(v13 + 16);

  return v14 == 1;
}

uint64_t sub_1D1BCFFD8(char *a1, uint64_t a2)
{
  v126 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v117 - v5;
  v7 = type metadata accessor for StaticMatterDevice(0);
  v124 = *(v7 - 8);
  *&v125 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v122 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v121 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v117 - v12;
  v14 = type metadata accessor for StaticService(0);
  v129 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v118 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v119 = &v117 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v117 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v117 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v117 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v117 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v127 = &v117 - v31;
  sub_1D1BD0D48();
  v33 = v32;
  v120 = type metadata accessor for StaticAccessory(0);
  v34 = v2 + *(v120 + 92);
  v35 = *(v34 + 8);
  if (v35 != 255)
  {
    if (v35 != 2)
    {

      return 0;
    }

    sub_1D1771B4C(*v34, 2);
  }

  v117 = v6;
  v123 = v33;
  v128 = v2;
  StaticAccessory.primaryStaticService.getter(v13);
  v36 = *(v129 + 48);
  if (v36(v13, 1, v14) != 1)
  {
    sub_1D1BD410C(v13, v127, type metadata accessor for StaticService);
    v38 = v126;
    if (v126[4] != 2)
    {
      goto LABEL_25;
    }

    v39 = v121;
    StaticAccessory.primaryStaticService.getter(v121);
    if (v36(v39, 1, v14) == 1)
    {
      sub_1D1741A30(v39, &qword_1EC6436F0, &qword_1D1E99BC0);
      v40 = 0;
    }

    else
    {
      v40 = *(v39 + *(v14 + 104));
      sub_1D1BD40AC(v39, type metadata accessor for StaticService);
    }

    v130 = v40;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3550 == v46)
    {
    }

    else
    {
      v48 = sub_1D1E6904C();

      if ((v48 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    MEMORY[0x1EEE9AC00](v47);
    *(&v117 - 2) = v49;
    result = sub_1D17868B8(sub_1D1823318, (&v117 - 4), v50);
    v51 = result;
    v52 = 0;
    v53 = *(result + 16);
    while (v53 != v52)
    {
      if (v52 >= *(v51 + 16))
      {
        goto LABEL_78;
      }

      sub_1D1BD4044(v51 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v52++, v30, type metadata accessor for StaticService);
      v54 = sub_1D17C4E00(v30[*(v14 + 104)], &unk_1F4D621A0);
      result = sub_1D1BD40AC(v30, type metadata accessor for StaticService);
      if (v54)
      {

        v43 = sub_1D1BD16CC();
        v44 = type metadata accessor for StaticService;
        v45 = v127;
        goto LABEL_23;
      }
    }

    v38 = v126;
LABEL_25:
    v121 = sub_1D1BD26AC(v123, v38, v128, v127);
    v122 = v55;

    v124 = static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC4FA0);
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v56 = swift_allocObject();
    v125 = xmmword_1D1E739C0;
    *(v56 + 16) = xmmword_1D1E739C0;
    sub_1D1BD0D48();
    v58 = *(v57 + 16);
    if (v58)
    {
      v59 = 0;
      v60 = *(v129 + 80);
      v123 = v57;
      v61 = v57 + ((v60 + 32) & ~v60);
      v62 = *(v129 + 72);
      while (1)
      {
        sub_1D1BD4044(v61, v27, type metadata accessor for StaticService);
        v63 = StaticService.isActivated.getter();
        result = sub_1D1BD40AC(v27, type metadata accessor for StaticService);
        v64 = __OFADD__(v59, v63 & 1);
        v59 += v63 & 1;
        if (v64)
        {
          break;
        }

        v61 += v62;
        if (!--v58)
        {

          goto LABEL_31;
        }
      }

      __break(1u);
    }

    else
    {

      v59 = 0;
LABEL_31:
      v65 = MEMORY[0x1E69E6530];
      v66 = MEMORY[0x1E69E65A8];
      *(v56 + 56) = MEMORY[0x1E69E6530];
      *(v56 + 64) = v66;
      *(v56 + 32) = v59;
      v123 = sub_1D1E6783C();
      v124 = v67;

      v68 = static String.hfLocalized(_:)(0xD000000000000018, 0x80000001D1EC63E0);
      v69 = swift_allocObject();
      *(v69 + 16) = v125;
      sub_1D1BD0D48();
      v71 = *(v70 + 16);
      if (!v71)
      {

        v72 = 0;
LABEL_37:
        *(v69 + 56) = v65;
        *(v69 + 64) = v66;
        *(v69 + 32) = v72;
        v77 = sub_1D1E6783C();
        v79 = v78;

        sub_1D1BD0D48();
        v81 = *(v80 + 16);

        if (v81 == 1)
        {
LABEL_38:
          sub_1D1BD40AC(v127, type metadata accessor for StaticService);
        }

        else
        {
          sub_1D1BD0D48();
          v83 = *(v82 + 16);
          if (v83)
          {
            v84 = 0;
            v85 = v82 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
            v86 = *(v129 + 72);
            while (1)
            {
              sub_1D1BD4044(v85, v21, type metadata accessor for StaticService);
              v87 = StaticService.isActivated.getter();
              result = sub_1D1BD40AC(v21, type metadata accessor for StaticService);
              v64 = __OFADD__(v84, v87 & 1);
              v84 += v87 & 1;
              if (v64)
              {
                goto LABEL_76;
              }

              v85 += v86;
              if (!--v83)
              {

                if (v84 == 1 && !StaticAccessory.allServicesAreTheSameKind.getter())
                {
                  goto LABEL_38;
                }

                goto LABEL_48;
              }
            }
          }

LABEL_48:
          sub_1D1BD0D48();
          v89 = *(v88 + 16);
          if (v89)
          {
            v90 = 0;
            v91 = (*(v129 + 80) + 32) & ~*(v129 + 80);
            v92 = v88 + v91;
            v93 = *(v129 + 72);
            v94 = v119;
            while (1)
            {
              sub_1D1BD4044(v92, v94, type metadata accessor for StaticService);
              v95 = StaticService.isActivated.getter();
              result = sub_1D1BD40AC(v94, type metadata accessor for StaticService);
              v64 = __OFADD__(v90, v95 & 1);
              v90 += v95 & 1;
              if (v64)
              {
                break;
              }

              v92 += v93;
              if (!--v89)
              {

                if (v90 <= 0)
                {
                  goto LABEL_60;
                }

                sub_1D1BD0D48();
                v97 = *(v96 + 16);
                if (v97)
                {
                  v98 = 0;
                  v99 = v96 + v91;
                  v100 = v118;
                  while (1)
                  {
                    sub_1D1BD4044(v99, v100, type metadata accessor for StaticService);
                    v101 = StaticService.isActivated.getter();
                    result = sub_1D1BD40AC(v100, type metadata accessor for StaticService);
                    v102 = (v101 & 1) == 0;
                    v64 = __OFADD__(v98, v102);
                    v98 += v102;
                    if (v64)
                    {
                      goto LABEL_79;
                    }

                    v99 += v93;
                    if (!--v97)
                    {

                      if (v98 <= 0)
                      {
                        goto LABEL_60;
                      }

                      v103 = swift_allocObject();
                      *(v103 + 16) = xmmword_1D1E73A90;
                      v104 = MEMORY[0x1E69E6158];
                      *(v103 + 56) = MEMORY[0x1E69E6158];
                      v105 = sub_1D1757D20();
                      v106 = v124;
                      *(v103 + 32) = v123;
                      *(v103 + 40) = v106;
                      *(v103 + 96) = v104;
                      *(v103 + 104) = v105;
                      *(v103 + 64) = v105;
                      *(v103 + 72) = v77;
                      *(v103 + 80) = v79;
                      v107 = sub_1D1E6783C();

                      sub_1D1BD40AC(v127, type metadata accessor for StaticService);
                      return v107;
                    }
                  }
                }

                goto LABEL_59;
              }
            }

LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
            return result;
          }

LABEL_59:

LABEL_60:
          if (StaticAccessory.allServicessOn.getter())
          {

            sub_1D1BD0D48();
            v109 = *(v108 + 16);

            if (v109 > 3 || (sub_1D1BD0D48(), v116 = *(v115 + 16), , v116 == 2) && StaticAccessory.allServicesAreTheSameKind.getter())
            {
              v110 = v123;
            }

            else
            {

              v110 = static String.hfLocalized(_:)(0xD00000000000001ALL, 0x80000001D1EBA580);
            }

            sub_1D1BD40AC(v127, type metadata accessor for StaticService);
            return v110;
          }

          if (StaticAccessory.allServicesOff.getter())
          {

            sub_1D1BD0D48();
            v112 = *(v111 + 16);

            if (v112 <= 3)
            {
              sub_1D1BD0D48();
              v114 = *(v113 + 16);

              if (v114 != 2 || !StaticAccessory.allServicesAreTheSameKind.getter())
              {

                v77 = static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBA5A0);
              }
            }

            sub_1D1BD40AC(v127, type metadata accessor for StaticService);
            return v77;
          }

          sub_1D1BD40AC(v127, type metadata accessor for StaticService);
        }

        return v121;
      }

      *&v125 = v68;
      v72 = 0;
      v73 = v70 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
      v74 = *(v129 + 72);
      while (1)
      {
        sub_1D1BD4044(v73, v24, type metadata accessor for StaticService);
        v75 = StaticService.isActivated.getter();
        result = sub_1D1BD40AC(v24, type metadata accessor for StaticService);
        v76 = (v75 & 1) == 0;
        v64 = __OFADD__(v72, v76);
        v72 += v76;
        if (v64)
        {
          break;
        }

        v73 += v74;
        if (!--v71)
        {

          v65 = MEMORY[0x1E69E6530];
          v66 = MEMORY[0x1E69E65A8];
          goto LABEL_37;
        }
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  sub_1D1741A30(v13, &qword_1EC6436F0, &qword_1D1E99BC0);
  v37 = v117;
  sub_1D1741C08(a2, v117, &qword_1EC643650, &qword_1D1E71D40);
  if ((*(v124 + 48))(v37, 1, v125) == 1)
  {
    sub_1D1741A30(v37, &qword_1EC643650, &qword_1D1E71D40);
    return 0;
  }

  v42 = v122;
  sub_1D1BD410C(v37, v122, type metadata accessor for StaticMatterDevice);
  v43 = sub_1D1BD132C(v126, v42);
  v44 = type metadata accessor for StaticMatterDevice;
  v45 = v42;
LABEL_23:
  sub_1D1BD40AC(v45, v44);
  return v43;
}

void sub_1D1BD0D48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v44 = &v42 - v1;
  v45 = type metadata accessor for StaticService(0);
  v50 = *(v45 - 8);
  v2 = MEMORY[0x1EEE9AC00](v45);
  v42 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v42 - v4;
  StaticAccessory.visibleStaticServices.getter();
  v49 = *(v5 + 16);
  if (v49)
  {
    v6 = 0;
    v43 = MEMORY[0x1E69E7CC0];
    v46 = v5;
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
        return;
      }

      v48 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v47 = *(v50 + 72);
      sub_1D1BD4044(v5 + v48 + v47 * v6, v51, type metadata accessor for StaticService);
      if (qword_1EC642398 != -1)
      {
        swift_once();
      }

      v7 = qword_1EC6BE1B0;
      if (*(qword_1EC6BE1B0 + 16))
      {
        v8 = *(v45 + 104);
        v9 = *(v51 + v8);
        sub_1D1E6920C();
        v52 = v9;
        ServiceKind.rawValue.getter();
        sub_1D1E678EC();

        v10 = sub_1D1E6926C();
        v11 = -1 << *(v7 + 32);
        v12 = v10 & ~v11;
        if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while (1)
          {
            LOBYTE(v53[0]) = *(*(v7 + 48) + v12);
            v52 = v9;
            v14 = ServiceKind.rawValue.getter();
            v16 = v15;
            if (v14 == ServiceKind.rawValue.getter() && v16 == v17)
            {
              break;
            }

            v19 = sub_1D1E6904C();

            if (v19)
            {
              goto LABEL_17;
            }

            v12 = (v12 + 1) & v13;
            if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

LABEL_17:
          v20 = v44;
          sub_1D1741C08(v51 + *(v45 + 116), v44, &qword_1EC642590, qword_1D1E71260);
          v21 = sub_1D1E66A7C();
          v22 = (*(*(v21 - 8) + 48))(v20, 1, v21);
          sub_1D1741A30(v20, &qword_1EC642590, qword_1D1E71260);
          if (v22 == 1)
          {
            if (qword_1EC642390 != -1)
            {
              swift_once();
            }

            v23 = off_1EC64C610;
            if (*(off_1EC64C610 + 2))
            {
              v24 = *(v51 + v8);
              sub_1D1E6920C();
              v52 = v24;
              ServiceKind.rawValue.getter();

              sub_1D1E678EC();

              v25 = sub_1D1E6926C();
              v26 = -1 << v23[32];
              v27 = v25 & ~v26;
              if ((*&v23[((v27 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v27))
              {
                v28 = ~v26;
                while (1)
                {
                  LOBYTE(v53[0]) = *(*(v23 + 6) + v27);
                  v52 = v24;
                  v29 = ServiceKind.rawValue.getter();
                  v31 = v30;
                  if (v29 == ServiceKind.rawValue.getter() && v31 == v32)
                  {
                    break;
                  }

                  v34 = sub_1D1E6904C();

                  if (v34)
                  {
                    goto LABEL_34;
                  }

                  v27 = (v27 + 1) & v28;
                  if (((*&v23[((v27 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v27) & 1) == 0)
                  {
                    goto LABEL_29;
                  }
                }

LABEL_34:

                sub_1D1BD410C(v51, v42, type metadata accessor for StaticService);
                v35 = v43;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v54 = v35;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1D17915E0(0, *(v35 + 16) + 1, 1);
                  v35 = v54;
                }

                v37 = v46;
                v38 = v47;
                v39 = v48;
                v41 = *(v35 + 16);
                v40 = *(v35 + 24);
                if (v41 >= v40 >> 1)
                {
                  sub_1D17915E0(v40 > 1, v41 + 1, 1);
                  v35 = v54;
                }

                *(v35 + 16) = v41 + 1;
                v43 = v35;
                sub_1D1BD410C(v42, v35 + v39 + v41 * v38, type metadata accessor for StaticService);
                v5 = v37;
                goto LABEL_31;
              }

LABEL_29:
            }
          }
        }
      }

LABEL_30:
      sub_1D1BD40AC(v51, type metadata accessor for StaticService);
      v5 = v46;
LABEL_31:
      if (++v6 == v49)
      {
        goto LABEL_40;
      }
    }
  }

  v43 = MEMORY[0x1E69E7CC0];
LABEL_40:
}

id sub_1D1BD132C(_BYTE *a1, uint64_t a2)
{
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = type metadata accessor for StaticEndpoint(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StaticMatterDevice(0);
  v17 = *(a2 + *(v16 + 56));
  v22 = a2;
  v24 = a2;

  sub_1D1746B78(sub_1D18076C8, v17, v9);

  v18 = *(v13 + 48);
  if (v18(v9, 1, v12) == 1)
  {

    sub_1D1771D7C(v19, v11);

    if (v18(v9, 1, v12) != 1)
    {
      sub_1D1741A30(v9, &qword_1EC644780, &qword_1D1E91AA0);
    }
  }

  else
  {
    sub_1D1BD410C(v9, v11, type metadata accessor for StaticEndpoint);
    (*(v13 + 56))(v11, 0, 1, v12);
  }

  if (v18(v11, 1, v12) == 1)
  {
    sub_1D1741A30(v11, &qword_1EC644780, &qword_1D1E91AA0);
    return 0;
  }

  else
  {
    sub_1D1BD410C(v11, v15, type metadata accessor for StaticEndpoint);
    sub_1D1BD4044(v22, v5, type metadata accessor for StaticMatterDevice);
    (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
    v21 = StaticEndpoint.statusString(with:associatedMatterDevice:)(v23);
    sub_1D1741A30(v5, &qword_1EC643650, &qword_1D1E71D40);
    sub_1D1BD40AC(v15, type metadata accessor for StaticEndpoint);
    return v21;
  }
}

uint64_t sub_1D1BD16CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v108 - v3;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v118 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v117 = &v108 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v119 = &v108 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v120 = &v108 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v121 = &v108 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v122 = &v108 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v108 - v22;
  v24 = type metadata accessor for StaticService(0);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v124 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v125 = &v108 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v108 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v123 = &v108 - v33;
  v34 = type metadata accessor for StaticAccessory(0);
  sub_1D1741C08(v1 + v34[22], v4, &qword_1EC642590, qword_1D1E71260);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
    (*(v25 + 56))(v23, 1, 1, v24);
LABEL_9:
    sub_1D1741A30(v23, &qword_1EC6436F0, &qword_1D1E99BC0);
    return 0;
  }

  v126 = v24;
  (*(v6 + 32))(v8, v4, v5);
  v35 = *(v1 + v34[20]);
  if (*(v35 + 16))
  {

    v36 = sub_1D1742188();
    if (v37)
    {
      sub_1D1BD4044(*(v35 + 56) + *(v25 + 72) * v36, v23, type metadata accessor for StaticService);
      (*(v6 + 8))(v8, v5);

      v38 = 0;
      goto LABEL_8;
    }
  }

  (*(v6 + 8))(v8, v5);
  v38 = 1;
LABEL_8:
  v39 = v126;
  v116 = *(v25 + 56);
  v116(v23, v38, 1, v126);
  v40 = *(v25 + 48);
  if (v40(v23, 1, v39) == 1)
  {
    goto LABEL_9;
  }

  v114 = v40;
  v115 = v1;
  v42 = v123;
  sub_1D1BD410C(v23, v123, type metadata accessor for StaticService);
  v128 = *(v42 + *(v39 + 128));
  v127 = 44;
  sub_1D1CE53A4(&v127);
  if (v44)
  {
    sub_1D1BD40AC(v42, type metadata accessor for StaticService);
    return 0;
  }

  v113 = v25 + 48;
  LOBYTE(v128) = 0;
  v110 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v128, v43);
  v112 = v45;
  v46 = *(v115 + v34[21]);
  MEMORY[0x1EEE9AC00](v110);
  *(&v108 - 2) = v47;
  result = sub_1D17868B8(sub_1D1823318, (&v108 - 4), v46);
  v48 = result;
  v49 = *(result + 16);
  if (v49)
  {
    v50 = 0;
    while (v50 < *(v48 + 16))
    {
      sub_1D1BD4044(v48 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v50, v32, type metadata accessor for StaticService);
      if (sub_1D17C4E00(v32[*(v39 + 104)], &unk_1F4D62128))
      {

        sub_1D1BD410C(v32, v122, type metadata accessor for StaticService);
        v51 = 0;
        goto LABEL_20;
      }

      ++v50;
      result = sub_1D1BD40AC(v32, type metadata accessor for StaticService);
      if (v49 == v50)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_62;
  }

LABEL_18:

  v51 = 1;
LABEL_20:
  v52 = v122;
  v116(v122, v51, 1, v39);
  v53 = v121;
  sub_1D1741C08(v52, v121, &qword_1EC6436F0, &qword_1D1E99BC0);
  if (v114(v53, 1, v39) == 1)
  {
    v54 = sub_1D1741A30(v53, &qword_1EC6436F0, &qword_1D1E99BC0);
LABEL_23:
    v109 = 0;
    v111 = 0;
    goto LABEL_25;
  }

  v128 = *(v53 + *(v39 + 128));
  v127 = 115;
  sub_1D1CE53A4(&v127);
  v56 = v55;
  v58 = v57;
  v54 = sub_1D1BD40AC(v53, type metadata accessor for StaticService);
  if (v58)
  {
    goto LABEL_23;
  }

  v54 = sub_1D19CB618(1, 0.0, 100.0, v56);
  v109 = v54;
  v111 = v59;
LABEL_25:
  MEMORY[0x1EEE9AC00](v54);
  *(&v108 - 2) = v115;
  v121 = v46;
  result = sub_1D17868B8(sub_1D1823318, (&v108 - 4), v46);
  v60 = result;
  v61 = *(result + 16);
  if (!v61)
  {
LABEL_32:

    v66 = 1;
    v67 = v120;
LABEL_35:
    v68 = v115;
    v69 = (v116)(v67, v66, 1, v126);
    MEMORY[0x1EEE9AC00](v69);
    *(&v108 - 2) = v68;
    result = sub_1D17868B8(sub_1D1823318, (&v108 - 4), v121);
    v70 = result;
    v71 = *(result + 16);
    if (v71)
    {
      v72 = 0;
      while (v72 < *(v70 + 16))
      {
        v73 = v124;
        sub_1D1BD4044(v70 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v72, v124, type metadata accessor for StaticService);
        LOBYTE(v128) = *(v73 + *(v126 + 104));
        if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3550 == v74)
        {

LABEL_44:

          v77 = v119;
          sub_1D1BD410C(v124, v119, type metadata accessor for StaticService);
          v76 = 0;
          goto LABEL_45;
        }

        v75 = sub_1D1E6904C();

        if (v75)
        {
          goto LABEL_44;
        }

        ++v72;
        result = sub_1D1BD40AC(v124, type metadata accessor for StaticService);
        if (v71 == v72)
        {
          goto LABEL_42;
        }
      }

      goto LABEL_63;
    }

LABEL_42:

    v76 = 1;
    v77 = v119;
LABEL_45:
    v79 = v117;
    v78 = v118;
    v80 = v114;
    v81 = v126;
    v116(v77, v76, 1, v126);
    sub_1D1741C08(v67, v79, &qword_1EC6436F0, &qword_1D1E99BC0);
    if (v80(v79, 1, v81) == 1)
    {
      sub_1D1741A30(v79, &qword_1EC6436F0, &qword_1D1E99BC0);
      v82 = v111;
    }

    else
    {
      v128 = *(v79 + *(v81 + 128));
      v127 = 41;
      sub_1D1CE53A4(&v127);
      v84 = v83;
      v86 = v85;
      sub_1D1BD40AC(v79, type metadata accessor for StaticService);
      v82 = v111;
      if ((v86 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    sub_1D1741C08(v77, v78, &qword_1EC6436F0, &qword_1D1E99BC0);
    if (v114(v78, 1, v81) == 1)
    {
      sub_1D1741A30(v78, &qword_1EC6436F0, &qword_1D1E99BC0);
      goto LABEL_51;
    }

    v128 = *(v78 + *(v81 + 128));
    v127 = 41;
    sub_1D1CE53A4(&v127);
    v84 = v87;
    v89 = v88;
    sub_1D1BD40AC(v78, type metadata accessor for StaticService);
    if (v89)
    {
LABEL_51:
      v90 = 0;
      v91 = 0;
      if (v82)
      {
LABEL_52:
        if (!v91)
        {
          static String.hfLocalized(_:)(0xD00000000000002FLL, 0x80000001D1EC6430);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_1D1E73A90;
          v104 = MEMORY[0x1E69E6158];
          *(v103 + 56) = MEMORY[0x1E69E6158];
          v105 = sub_1D1757D20();
          v106 = v112;
          *(v103 + 32) = v110;
          *(v103 + 40) = v106;
          *(v103 + 96) = v104;
          *(v103 + 104) = v105;
          v107 = v109;
          *(v103 + 64) = v105;
          *(v103 + 72) = v107;
          *(v103 + 80) = v82;
          v102 = sub_1D1E6784C();

          sub_1D1741A30(v77, &qword_1EC6436F0, &qword_1D1E99BC0);
          sub_1D1741A30(v67, &qword_1EC6436F0, &qword_1D1E99BC0);
          sub_1D1741A30(v122, &qword_1EC6436F0, &qword_1D1E99BC0);
          sub_1D1BD40AC(v123, type metadata accessor for StaticService);
          return v102;
        }

        static String.hfLocalized(_:)(0xD000000000000037, 0x80000001D1EC6460);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_1D1E6F900;
        v93 = MEMORY[0x1E69E6158];
        *(v92 + 56) = MEMORY[0x1E69E6158];
        v94 = sub_1D1757D20();
        v95 = v112;
        *(v92 + 32) = v110;
        *(v92 + 40) = v95;
        *(v92 + 96) = v93;
        *(v92 + 104) = v94;
        *(v92 + 64) = v94;
        *(v92 + 72) = v90;
        *(v92 + 80) = v91;
        *(v92 + 136) = v93;
        *(v92 + 144) = v94;
        *(v92 + 112) = v109;
        *(v92 + 120) = v82;
LABEL_57:
        v102 = sub_1D1E6784C();

        sub_1D1741A30(v77, &qword_1EC6436F0, &qword_1D1E99BC0);
        sub_1D1741A30(v67, &qword_1EC6436F0, &qword_1D1E99BC0);
        sub_1D1741A30(v122, &qword_1EC6436F0, &qword_1D1E99BC0);
        sub_1D1BD40AC(v123, type metadata accessor for StaticService);
        return v102;
      }

LABEL_55:
      if (!v91)
      {

        sub_1D1741A30(v77, &qword_1EC6436F0, &qword_1D1E99BC0);
        sub_1D1741A30(v67, &qword_1EC6436F0, &qword_1D1E99BC0);
        sub_1D1741A30(v122, &qword_1EC6436F0, &qword_1D1E99BC0);
        sub_1D1BD40AC(v123, type metadata accessor for StaticService);
        return v90;
      }

      static String.hfLocalized(_:)(0xD00000000000002FLL, 0x80000001D1EC6400);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_1D1E73A90;
      v99 = MEMORY[0x1E69E6158];
      *(v98 + 56) = MEMORY[0x1E69E6158];
      v100 = sub_1D1757D20();
      v101 = v112;
      *(v98 + 32) = v110;
      *(v98 + 40) = v101;
      *(v98 + 96) = v99;
      *(v98 + 104) = v100;
      *(v98 + 64) = v100;
      *(v98 + 72) = v90;
      *(v98 + 80) = v91;
      goto LABEL_57;
    }

LABEL_54:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643480, &qword_1D1E71900);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v84;
    v90 = _s13HomeDataModel17ClimateSummarizerO19humidityRangeString_17addPercentageSignSSSgSaySdG_SbtFZ_0(inited, 1);
    v91 = v97;
    swift_setDeallocating();
    if (v82)
    {
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  v62 = 0;
  while (v62 < *(v60 + 16))
  {
    v63 = v125;
    sub_1D1BD4044(v60 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v62, v125, type metadata accessor for StaticService);
    LOBYTE(v128) = *(v63 + *(v126 + 104));
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB30D0 == v64)
    {

LABEL_34:

      v67 = v120;
      sub_1D1BD410C(v125, v120, type metadata accessor for StaticService);
      v66 = 0;
      goto LABEL_35;
    }

    v65 = sub_1D1E6904C();

    if (v65)
    {
      goto LABEL_34;
    }

    ++v62;
    result = sub_1D1BD40AC(v125, type metadata accessor for StaticService);
    if (v61 == v62)
    {
      goto LABEL_32;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_1D1BD26AC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v93 = a4;
  v6 = type metadata accessor for StaticService(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v84 = &v83 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v85 = &v83 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v92 = &v83 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v87 = &v83 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v86 = &v83 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v83 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v88 = &v83 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v89 = &v83 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v83 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v90 = &v83 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v91 = &v83 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v83 - v35;
  v37 = *(a1 + 16);
  if (v37 == 1)
  {
    LOBYTE(v95) = a2[4];
    v96 = 0;
    return StaticService.characteristicStateString(context:temperatureScale:)(&v95, &v96).value._countAndFlagsBits;
  }

  StaticAccessory.primaryStaticService.getter(&v83 - v35);
  if ((*(v7 + 48))(v36, 1, v6) == 1)
  {
    sub_1D1741A30(v36, &qword_1EC6436F0, &qword_1D1E99BC0);
LABEL_5:
    LOBYTE(v95) = a2[4];
    v96 = 0;
    return StaticService.characteristicStateString(context:temperatureScale:)(&v95, &v96).value._countAndFlagsBits;
  }

  v94 = v6;
  v39 = v36[*(v6 + 104)];
  sub_1D1BD40AC(v36, type metadata accessor for StaticService);
  if (v39 > 0x34)
  {
    goto LABEL_5;
  }

  if (((1 << v39) & 0x19000010014000) == 0)
  {
    if (((1 << v39) & 0x400000100000) != 0)
    {
      v61 = v92;
      sub_1D1BD4044(v93, v92, type metadata accessor for StaticService);
      v62 = v94;
      if (v37)
      {
        v63 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
        v64 = *(v7 + 72);
        while (1)
        {
          sub_1D1BD4044(v63, v10, type metadata accessor for StaticService);
          if (sub_1D17C4E00(v10[*(v62 + 104)], &unk_1F4D62150))
          {
            break;
          }

          sub_1D1BD40AC(v10, type metadata accessor for StaticService);
          v63 += v64;
          if (!--v37)
          {
            goto LABEL_50;
          }
        }

        v75 = v84;
        sub_1D1BD410C(v10, v84, type metadata accessor for StaticService);
        v76 = v85;
        sub_1D1BD410C(v75, v85, type metadata accessor for StaticService);
        if (StaticService.isActivated.getter() & 1) == 0 && (StaticService.isActivated.getter())
        {
          v95 = *(v76 + *(v62 + 128));
          v96 = 115;
          sub_1D1CE53A4(&v96);
          if ((v78 & 1) == 0)
          {
            v79 = sub_1D19CB618(1, 0.0, 100.0, v77);
            v81 = v80;
            static String.hfLocalized(_:)(0xD00000000000001ALL, 0x80000001D1EC64A0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
            v82 = swift_allocObject();
            *(v82 + 16) = xmmword_1D1E739C0;
            *(v82 + 56) = MEMORY[0x1E69E6158];
            *(v82 + 64) = sub_1D1757D20();
            *(v82 + 32) = v79;
            *(v82 + 40) = v81;
            countAndFlagsBits = sub_1D1E6783C();

            sub_1D1BD40AC(v61, type metadata accessor for StaticService);
            v72 = v76;
            goto LABEL_51;
          }
        }

        sub_1D1BD40AC(v76, type metadata accessor for StaticService);
      }

LABEL_50:
      LOBYTE(v95) = a2[4];
      v96 = 0;
      countAndFlagsBits = StaticService.characteristicStateString(context:temperatureScale:)(&v95, &v96).value._countAndFlagsBits;
      v72 = v61;
      goto LABEL_51;
    }

    goto LABEL_5;
  }

  if (!v37)
  {
    return 0;
  }

  v92 = a2;
  v40 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v41 = *(v7 + 72);
  v42 = v40;
  v43 = v37;
  while (1)
  {
    sub_1D1BD4044(v42, v30, type metadata accessor for StaticService);
    if ((StaticService.isActivated.getter() & 1) == 0)
    {
      goto LABEL_12;
    }

    LOBYTE(v95) = v30[*(v94 + 104)];
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB31F0 == v45)
    {
      break;
    }

    v44 = sub_1D1E6904C();

    if (v44)
    {
      goto LABEL_17;
    }

LABEL_12:
    sub_1D1BD40AC(v30, type metadata accessor for StaticService);
    v42 += v41;
    if (!--v43)
    {
      goto LABEL_19;
    }
  }

LABEL_17:
  v46 = v30;
  v47 = v90;
  sub_1D1BD410C(v46, v90, type metadata accessor for StaticService);
  v48 = v91;
  sub_1D1BD410C(v47, v91, type metadata accessor for StaticService);
  v95 = *(v48 + *(v94 + 128));
  v96 = 12;
  v97 = StaticCharacteristicsBag.int(for:)(&v96);
  if (!v97.is_nil)
  {
    v65 = sub_1D19CB618(1, 0.0, 100.0, v97.value);
    v67 = v66;
    v68 = "HFCharacteristicValueSpeed";
    v69 = 0xD00000000000001FLL;
LABEL_45:
    static String.hfLocalized(_:)(v69, v68 | 0x8000000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1D1E739C0;
    *(v74 + 56) = MEMORY[0x1E69E6158];
    *(v74 + 64) = sub_1D1757D20();
    *(v74 + 32) = v65;
    *(v74 + 40) = v67;
    countAndFlagsBits = sub_1D1E6783C();

    v72 = v48;
    goto LABEL_51;
  }

  sub_1D1BD40AC(v48, type metadata accessor for StaticService);
LABEL_19:
  v93 = 0x80000001D1EB35B0;
  v49 = v40;
  v50 = v37;
  while (2)
  {
    sub_1D1BD4044(v49, v23, type metadata accessor for StaticService);
    if ((StaticService.isActivated.getter() & 1) == 0)
    {
LABEL_21:
      sub_1D1BD40AC(v23, type metadata accessor for StaticService);
      v49 += v41;
      if (!--v50)
      {
        goto LABEL_31;
      }

      continue;
    }

    break;
  }

  v52 = *(v94 + 104);
  LOBYTE(v95) = v23[v52];
  if (ServiceKind.rawValue.getter() != 0xD000000000000024 || 0x80000001D1EB2FB0 != v53)
  {
    v54 = sub_1D1E6904C();

    if (v54)
    {
      goto LABEL_29;
    }

    LOBYTE(v95) = v23[v52];
    if (ServiceKind.rawValue.getter() != 0xD000000000000024 || v93 != v55)
    {
      v51 = sub_1D1E6904C();

      if (v51)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }
  }

LABEL_29:
  v56 = v88;
  sub_1D1BD410C(v23, v88, type metadata accessor for StaticService);
  v48 = v89;
  sub_1D1BD410C(v56, v89, type metadata accessor for StaticService);
  v95 = *(v48 + *(v94 + 128));
  v96 = 115;
  sub_1D1CE53A4(&v96);
  if ((v58 & 1) == 0)
  {
    v65 = sub_1D19CB618(1, 0.0, 100.0, v57);
    v67 = v73;
    v68 = "TempHumidityAndFanSpeed";
    v69 = 0xD00000000000001ALL;
    goto LABEL_45;
  }

  sub_1D1BD40AC(v48, type metadata accessor for StaticService);
LABEL_31:
  v59 = v92;
  v60 = v87;
  while (1)
  {
    sub_1D1BD4044(v40, v60, type metadata accessor for StaticService);
    if (StaticService.isActivated.getter())
    {
      break;
    }

    sub_1D1BD40AC(v60, type metadata accessor for StaticService);
    result = 0;
    v40 += v41;
    if (!--v37)
    {
      return result;
    }
  }

  v70 = v86;
  sub_1D1BD410C(v60, v86, type metadata accessor for StaticService);
  LOBYTE(v95) = v59[4];
  v96 = 0;
  countAndFlagsBits = StaticService.characteristicStateString(context:temperatureScale:)(&v95, &v96).value._countAndFlagsBits;
  v72 = v70;
LABEL_51:
  sub_1D1BD40AC(v72, type metadata accessor for StaticService);
  return countAndFlagsBits;
}

uint64_t StaticAccessory.onServicesCount.getter()
{
  v0 = type metadata accessor for StaticService(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1BD0D48();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v8 = *(v1 + 72);
    while (1)
    {
      sub_1D1BD4044(v7, v3, type metadata accessor for StaticService);
      v9 = StaticService.isActivated.getter();
      result = sub_1D1BD40AC(v3, type metadata accessor for StaticService);
      v11 = __OFADD__(v6, v9 & 1);
      v6 += v9 & 1;
      if (v11)
      {
        break;
      }

      v7 += v8;
      if (!--v5)
      {

        return v6;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}