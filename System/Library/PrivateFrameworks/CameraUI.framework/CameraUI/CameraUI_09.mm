uint64_t sub_1A39599FC(char *a1)
{
  v2 = sub_1A3A2F2A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v62 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = &unk_1F1653EC0;
  sub_1A3957724(&v69);
  v61 = v3;
  v63 = v2;
  v5 = v69;
  v6 = *(v69 + 2);
  if (v6)
  {
    v60 = a1;
    v77 = MEMORY[0x1E69E7CC0];
    sub_1A39569C0(0, v6, 0);
    v7 = v77;
    v8 = objc_opt_self();
    v64 = 0x80000001A3AA4BD0;
    v65 = v8;
    v9 = 32;
    v66 = v5;
    do
    {
      v68 = v6;
      v10 = v5[v9];
      LODWORD(v67) = v10 < 0x14;
      v75 = sub_1A3955768(v10);
      v76 = v11;
      MEMORY[0x1A58F7770](8250, 0xE200000000000000);
      v12 = sub_1A3953AD8(v10);
      v14 = v13;
      sub_1A39598B0(1, v12, v13, v15);

      v16 = sub_1A3A31DF0();
      v18 = v17;

      v69 = 0xD000000000000017;
      v70 = v64;
      MEMORY[0x1A58F7770](v16, v18);

      v20 = v69;
      v19 = v70;
      v22 = sub_1A395994C(1uLL, v12, v14, v21);
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v73 = v20;
      v74 = v19;
      v69 = v22;
      v70 = v24;
      v71 = v26;
      v72 = v28;
      sub_1A38E849C();
      sub_1A3A318E0();

      v29 = sub_1A3A31810();

      v30 = [v65 BOOLInCameraDomainForKey:v29 defaultValue:v67 & (0xF11E2u >> v10)];

      if (v30)
      {
        v31 = 1702195828;
      }

      else
      {
        v31 = 0x65736C6166;
      }

      if (v30)
      {
        v32 = 0xE400000000000000;
      }

      else
      {
        v32 = 0xE500000000000000;
      }

      MEMORY[0x1A58F7770](v31, v32);

      v33 = v75;
      v34 = v76;
      v77 = v7;
      v36 = *(v7 + 16);
      v35 = *(v7 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1A39569C0((v35 > 1), v36 + 1, 1);
        v7 = v77;
      }

      *(v7 + 16) = v36 + 1;
      v37 = v7 + 16 * v36;
      *(v37 + 32) = v33;
      *(v37 + 40) = v34;
      ++v9;
      v6 = v68 - 1;
      v5 = v66;
    }

    while (v68 != 1);

    a1 = v60;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v69 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2E0, &qword_1A3A778C8);
  sub_1A38A08F8(&qword_1ED9981E8, &qword_1EB0FF2E0, &qword_1A3A778C8, MEMORY[0x1E69E6310]);
  v67 = sub_1A3A31770();
  v68 = v38;

  swift_getKeyPath("x\biG");
  v69 = a1;
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2F080();

  v39 = objc_opt_self();
  v40 = [v39 solCamShutterButtonCenterMaterialEnabled];
  v41 = 1702195828;
  if (!v40)
  {
    v41 = 0x65736C6166;
  }

  v66 = v41;
  v42 = 0xE500000000000000;
  if (v40)
  {
    v43 = 0xE400000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  swift_getKeyPath("X\biG");
  v69 = a1;
  sub_1A3A2F080();

  v44 = [v39 solCamSelectedZoomCenteredEnabled];
  if (v44)
  {
    v45 = 1702195828;
  }

  else
  {
    v45 = 0x65736C6166;
  }

  if (v44)
  {
    v42 = 0xE400000000000000;
  }

  if (qword_1ED996460 != -1)
  {
    swift_once();
  }

  v46 = v63;
  v47 = __swift_project_value_buffer(v63, qword_1ED99D868);
  v49 = v61;
  v48 = v62;
  (*(v61 + 16))(v62, v47, v46);
  v50 = v68;
  sub_1A3A2EA50();
  sub_1A3A2EA50();
  sub_1A3A2EA50();
  v51 = sub_1A3A2F280();
  v52 = sub_1A3A31C10();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v69 = v54;
    *v53 = 136446722;
    v55 = v49;
    v56 = sub_1A39ABC10(v67, v50, &v69);

    *(v53 + 4) = v56;
    *(v53 + 12) = 2082;
    v57 = sub_1A39ABC10(v66, v43, &v69);

    *(v53 + 14) = v57;
    *(v53 + 22) = 2082;
    v58 = sub_1A39ABC10(v45, v42, &v69);

    *(v53 + 24) = v58;
    _os_log_impl(&dword_1A3640000, v51, v52, "CameraUI Settings (Switches):\n%{public}s | shutter-center-material: %{public}s | selected-zoom-centered: %{public}s", v53, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1A58FAC10](v54, -1, -1);
    MEMORY[0x1A58FAC10](v53, -1, -1);

    return (*(v55 + 8))(v62, v63);
  }

  else
  {

    return (*(v49 + 8))(v48, v46);
  }
}

uint64_t sub_1A395A0F8(uint64_t a1, uint64_t a2)
{
  v3 = 0x6D6574737953;
  v4 = byte_1F1653F18;
  v5 = 0xE600000000000000;
  v6 = 0x74614D726F6C6F43;
  v7 = 0xEB00000000786972;
  v8 = 0x6F43656C706D6953;
  v9 = 0xEB00000000726F6CLL;
  if (byte_1F1653F18 != 4)
  {
    v8 = 1852401748;
    v9 = 0xE400000000000000;
  }

  if (byte_1F1653F18 != 3)
  {
    v6 = v8;
    v7 = v9;
  }

  v10 = 0x6C476172656D6143;
  v11 = 0xEB00000000737361;
  if (byte_1F1653F18 != 1)
  {
    v10 = 0x6C42656C706D6953;
    v11 = 0xEA00000000007275;
  }

  if (byte_1F1653F18)
  {
    v5 = v11;
  }

  else
  {
    v10 = 0x6D6574737953;
  }

  if (byte_1F1653F18 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (byte_1F1653F18 <= 2u)
  {
    v13 = v5;
  }

  else
  {
    v13 = v7;
  }

  if (v12 == a1 && v13 == a2)
  {
    goto LABEL_18;
  }

  v15 = sub_1A3A321C0();

  if (v15)
  {
    return v4;
  }

  v4 = byte_1F1653F19;
  if (byte_1F1653F19 > 2u)
  {
    if (byte_1F1653F19 == 3)
    {
      v17 = 0x74614D726F6C6F43;
      v18 = 7891314;
    }

    else
    {
      if (byte_1F1653F19 != 4)
      {
        v19 = 0xE400000000000000;
        if (a1 != 1852401748)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v17 = 0x6F43656C706D6953;
      v18 = 7499628;
    }

LABEL_31:
    v19 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v17 != a1)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (byte_1F1653F19)
  {
    if (byte_1F1653F19 != 1)
    {
      v19 = 0xEA00000000007275;
      if (a1 != 0x6C42656C706D6953)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    v17 = 0x6C476172656D6143;
    v18 = 7566177;
    goto LABEL_31;
  }

  v19 = 0xE600000000000000;
  if (a1 != 0x6D6574737953)
  {
    goto LABEL_37;
  }

LABEL_36:
  if (v19 == a2)
  {
LABEL_18:

    return v4;
  }

LABEL_37:
  v20 = sub_1A3A321C0();

  if (v20)
  {
    return v4;
  }

  v4 = byte_1F1653F1A;
  if (byte_1F1653F1A > 2u)
  {
    if (byte_1F1653F1A == 3)
    {
      v21 = 0x74614D726F6C6F43;
      v22 = 0xEB00000000786972;
    }

    else if (byte_1F1653F1A == 4)
    {
      v21 = 0x6F43656C706D6953;
      v22 = 0xEB00000000726F6CLL;
    }

    else
    {
      v22 = 0xE400000000000000;
      v21 = 1852401748;
    }
  }

  else if (byte_1F1653F1A)
  {
    if (byte_1F1653F1A == 1)
    {
      v21 = 0x6C476172656D6143;
      v22 = 0xEB00000000737361;
    }

    else
    {
      v21 = 0x6C42656C706D6953;
      v22 = 0xEA00000000007275;
    }
  }

  else
  {
    v22 = 0xE600000000000000;
    v21 = 0x6D6574737953;
  }

  if (v21 == a1 && v22 == a2)
  {
    goto LABEL_18;
  }

  v23 = sub_1A3A321C0();

  if (v23)
  {
    return v4;
  }

  v4 = byte_1F1653F1B;
  if (byte_1F1653F1B > 2u)
  {
    if (byte_1F1653F1B == 3)
    {
      v24 = 0x74614D726F6C6F43;
      v25 = 0xEB00000000786972;
    }

    else if (byte_1F1653F1B == 4)
    {
      v24 = 0x6F43656C706D6953;
      v25 = 0xEB00000000726F6CLL;
    }

    else
    {
      v25 = 0xE400000000000000;
      v24 = 1852401748;
    }
  }

  else if (byte_1F1653F1B)
  {
    if (byte_1F1653F1B == 1)
    {
      v24 = 0x6C476172656D6143;
      v25 = 0xEB00000000737361;
    }

    else
    {
      v24 = 0x6C42656C706D6953;
      v25 = 0xEA00000000007275;
    }
  }

  else
  {
    v25 = 0xE600000000000000;
    v24 = 0x6D6574737953;
  }

  if (v24 == a1 && v25 == a2)
  {
    goto LABEL_18;
  }

  v26 = sub_1A3A321C0();

  if (v26)
  {
    return v4;
  }

  v4 = byte_1F1653F1C;
  if (byte_1F1653F1C > 2u)
  {
    if (byte_1F1653F1C == 3)
    {
      v27 = 0x74614D726F6C6F43;
      v28 = 0xEB00000000786972;
    }

    else if (byte_1F1653F1C == 4)
    {
      v27 = 0x6F43656C706D6953;
      v28 = 0xEB00000000726F6CLL;
    }

    else
    {
      v28 = 0xE400000000000000;
      v27 = 1852401748;
    }
  }

  else if (byte_1F1653F1C)
  {
    if (byte_1F1653F1C == 1)
    {
      v27 = 0x6C476172656D6143;
      v28 = 0xEB00000000737361;
    }

    else
    {
      v27 = 0x6C42656C706D6953;
      v28 = 0xEA00000000007275;
    }
  }

  else
  {
    v28 = 0xE600000000000000;
    v27 = 0x6D6574737953;
  }

  if (v27 == a1 && v28 == a2)
  {
    goto LABEL_18;
  }

  v29 = sub_1A3A321C0();

  if (v29)
  {
    return v4;
  }

  v4 = byte_1F1653F1D;
  if (byte_1F1653F1D > 2u)
  {
    if (byte_1F1653F1D == 3)
    {
      v3 = 0x74614D726F6C6F43;
      v30 = 0xEB00000000786972;
    }

    else if (byte_1F1653F1D == 4)
    {
      v3 = 0x6F43656C706D6953;
      v30 = 0xEB00000000726F6CLL;
    }

    else
    {
      v30 = 0xE400000000000000;
      v3 = 1852401748;
    }
  }

  else if (byte_1F1653F1D)
  {
    if (byte_1F1653F1D == 1)
    {
      v3 = 0x6C476172656D6143;
      v30 = 0xEB00000000737361;
    }

    else
    {
      v3 = 0x6C42656C706D6953;
      v30 = 0xEA00000000007275;
    }
  }

  else
  {
    v30 = 0xE600000000000000;
  }

  if (v3 == a1 && v30 == a2)
  {
    goto LABEL_18;
  }

  v31 = sub_1A3A321C0();

  if (v31)
  {
    return v4;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_1A395A71C(void *a1)
{
  v2 = sub_1A3A2F2A0();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_1A3A77850, v4);
  v42 = a1;
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2F080();

  v7 = [objc_opt_self() solCamGroupingType];
  LOBYTE(v42) = sub_1A3908FE8(v7);
  v8 = sub_1A3A31880();
  v10 = v9;
  swift_getKeyPath(byte_1A3A77878);
  v42 = a1;
  sub_1A3A2F080();

  v11 = sub_1A39C3974(a1[2], a1[3]);
  v41 = v8;
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = sub_1A395A0F8(v11, v12);

  if (v13 <= 2u)
  {
    if (!v13)
    {
      v15 = 0xE600000000000000;
      v40 = 0x6D6574737953;
      goto LABEL_15;
    }

    if (v13 != 1)
    {
      v40 = 0x4220656C706D6953;
      v15 = 0xEB0000000072756CLL;
      goto LABEL_15;
    }

LABEL_14:
    v40 = 0x47206172656D6143;
    v15 = 0xEC0000007373616CLL;
    goto LABEL_15;
  }

  if (v13 > 4u)
  {
    if (v13 == 5)
    {
      v40 = 0x74614D206E696854;
      v15 = 0xED00006C61697265;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v14 = 0x614D20726F6C6F43;
  if (v13 != 3)
  {
    v14 = 0x4320656C706D6953;
  }

  v40 = v14;
  if (v13 == 3)
  {
    v15 = 0xEC00000078697274;
  }

  else
  {
    v15 = 0xEC000000726F6C6FLL;
  }

LABEL_15:
  swift_getKeyPath(byte_1A3A778A0);
  v42 = a1;
  sub_1A3A2F080();

  v16 = sub_1A39C3974(a1[4], a1[5]);
  v18 = v3;
  if (!v17)
  {
    goto LABEL_20;
  }

  v19 = sub_1A395A0F8(v16, v17);

  if (v19 > 2u)
  {
    if (v19 - 5 >= 2)
    {
      v20 = v19 == 3;
      v21 = 0x614D20726F6C6F43;
      v22 = 0xEC00000078697274;
      v23 = 0x4320656C706D6953;
      v24 = 0xEC000000726F6C6FLL;
      goto LABEL_22;
    }

LABEL_20:
    v25 = 0x74614D206E696854;
    v26 = 0xED00006C61697265;
    goto LABEL_29;
  }

  if (!v19)
  {
    v26 = 0xE600000000000000;
    v25 = 0x6D6574737953;
    goto LABEL_29;
  }

  v20 = v19 == 1;
  v21 = 0x47206172656D6143;
  v22 = 0xEC0000007373616CLL;
  v23 = 0x4220656C706D6953;
  v24 = 0xEB0000000072756CLL;
LABEL_22:
  if (v20)
  {
    v25 = v21;
  }

  else
  {
    v25 = v23;
  }

  if (v20)
  {
    v26 = v22;
  }

  else
  {
    v26 = v24;
  }

LABEL_29:
  if (qword_1ED996460 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v2, qword_1ED99D868);
  (*(v18 + 16))(v6, v27, v2);
  sub_1A3A2EA50();
  sub_1A3A2EA50();
  sub_1A3A2EA50();
  v28 = sub_1A3A2F280();
  v29 = sub_1A3A31C10();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v39 = v2;
    v32 = v31;
    v42 = v31;
    *v30 = 136446722;
    v33 = sub_1A39ABC10(v41, v10, &v42);
    v41 = v6;
    v34 = v18;
    v35 = v33;

    *(v30 + 4) = v35;
    *(v30 + 12) = 2082;
    v36 = sub_1A39ABC10(v40, v15, &v42);

    *(v30 + 14) = v36;
    *(v30 + 22) = 2082;
    v37 = sub_1A39ABC10(v25, v26, &v42);

    *(v30 + 24) = v37;
    _os_log_impl(&dword_1A3640000, v28, v29, "CameraUI Settings (Material Settings):\ngrouping: %{public}s | style: %{public}s | fallback-style: %{public}s", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1A58FAC10](v32, -1, -1);
    MEMORY[0x1A58FAC10](v30, -1, -1);

    return (*(v34 + 8))(v41, v39);
  }

  else
  {

    return (*(v18 + 8))(v6, v2);
  }
}

uint64_t sub_1A395ADE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1A395AE3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE508, &unk_1A3A77940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1A395AEA4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 72) = result;
  return result;
}

double sub_1A395AEB4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 80) = result;
  return result;
}

void sub_1A395B014(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1A39598B0(1, 0xD000000000000021, 0x80000001A3AA2100, a4);
  v4 = sub_1A3A31DF0();
  v6 = v5;

  MEMORY[0x1A58F7770](v4, v6);

  sub_1A395994C(1uLL, 0xD000000000000021, 0x80000001A3AA2100, v7);
  sub_1A38E849C();
  sub_1A3A318E0();

  sub_1A39C3B44(0xD000000000000011, 0x80000001A3AA20E0);

  CEKProgressClamped();
  sub_1A39598B0(1, 0xD000000000000024, 0x80000001A3AA4F20, v8);
  v9 = sub_1A3A31DF0();
  v11 = v10;

  MEMORY[0x1A58F7770](v9, v11);

  sub_1A395994C(1uLL, 0xD000000000000024, 0x80000001A3AA4F20, v12);
  sub_1A3A318E0();

  sub_1A39C3A48(0xD000000000000017, 0x80000001A3AA4BD0);

  CEKInterpolate();
}

uint64_t sub_1A395B230(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_1A3A316D0();
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
  result = sub_1A3A320B0();
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
    result = sub_1A3A320B0();
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

unint64_t sub_1A395B330(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A3A321E0();

  if (v2 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A395B384(const char *a1, uint64_t a2)
{
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  swift_getKeyPath(byte_1A3A77828);
  sub_1A3955B1C(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  swift_getKeyPath(a1);
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v4 = sub_1A394FC58(a2);

  return v4 & 1;
}

unint64_t sub_1A395B4F4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraUISettings.BoolPreferenceKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraUISettings.BoolPreferenceKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A395B788()
{
  result = qword_1EB0FF390;
  if (!qword_1EB0FF390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF390);
  }

  return result;
}

uint64_t sub_1A395B7DC()
{
  *(*(v0 + 16) + 128) = *(v0 + 24);
  sub_1A3A2EA50();
}

uint64_t sub_1A395B818()
{
  *(*(v0 + 16) + 120) = *(v0 + 24);
  sub_1A3A2EA50();
}

id sub_1A395B87C(SEL *a1, SEL *a2)
{
  v5 = *(v2 + 16);
  v6 = objc_opt_self();
  result = [v6 *a1];
  if (v5 != result)
  {
    return [v6 *a2];
  }

  return result;
}

uint64_t sub_1A395B90C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = result;
  v4 = 0;
  v5 = a2 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v12 = v6;
    for (i = v4; ; ++i)
    {
      if (i >= v2)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v13 = *(v5 + 8 * i);
      v8 = v13;
      MEMORY[0x1EEE9AC00](result);
      v11[2] = &v13;
      sub_1A38A8F64(v8);
      if (sub_1A38EDEDC(sub_1A395DF38, v11, v3))
      {
        break;
      }

      result = sub_1A3890F2C(v8);
      if (v4 == v2)
      {
        return v12;
      }
    }

    v6 = v12;
    result = swift_isUniquelyReferenced_nonNull_native();
    v14 = v6;
    if ((result & 1) == 0)
    {
      result = sub_1A3956980(0, *(v6 + 16) + 1, 1);
      v6 = v14;
    }

    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    if (v10 >= v9 >> 1)
    {
      result = sub_1A3956980((v9 > 1), v10 + 1, 1);
      v6 = v14;
    }

    *(v6 + 16) = v10 + 1;
    *(v6 + 8 * v10 + 32) = v8;
  }

  while (v4 != v2);
  return v6;
}

uint64_t sub_1A395BA98(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 32;
    v6 = (result + 32);
    v7 = MEMORY[0x1E69E7CC0];
    while (v4 < v2)
    {
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_17;
      }

      v11 = *(v5 + 8 * v4++);
      v12 = *(v3 + 16);
      v13 = v6;
      while (v12)
      {
        v14 = *v13++;
        --v12;
        if (v14 == v11)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1A3956A20(0, *(v7 + 16) + 1, 1);
          }

          v9 = *(v7 + 16);
          v8 = *(v7 + 24);
          if (v9 >= v8 >> 1)
          {
            result = sub_1A3956A20((v8 > 1), v9 + 1, 1);
          }

          *(v7 + 16) = v9 + 1;
          *(v7 + 8 * v9 + 32) = v11;
          break;
        }
      }

      if (v10 == v2)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1A395BBBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A78120);
  sub_1A395DAFC(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2F080();

  *a2 = *(v3 + 120);
  return sub_1A3A2EA50();
}

uint64_t sub_1A395BC94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A78148);
  sub_1A395DAFC(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2F080();

  *a2 = *(v3 + 128);
  return sub_1A3A2EA50();
}

void sub_1A395BD6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2F8, &qword_1A3A77938);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1A395BE78(uint64_t a1)
{
  if (qword_1ED996478 != -1)
  {
LABEL_18:
    swift_once();
  }

  v2 = qword_1ED99D888;
  v3 = *(qword_1ED99D888 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = 0;
  v5 = v3 - 1;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    for (i = v4; ; ++i)
    {
      if (i >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v8 = *(v2 + 32 + 8 * i);
      v4 = i + 1;
      type metadata accessor for ChromeElementModel();
      sub_1A38A8F64(v8);
      if (sub_1A39B11D4(v8, 4, a1, v9))
      {
        break;
      }

      sub_1A3890F2C(v8);
      if (v3 == v4)
      {
        return v6;
      }
    }

    v14 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1A3956980(0, *(v6 + 16) + 1, 1);
    }

    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    v12 = v11 + 1;
    if (v11 >= v10 >> 1)
    {
      sub_1A3956980((v10 > 1), v11 + 1, 1);
      v12 = v11 + 1;
    }

    *(v6 + 16) = v12;
    *(v6 + 8 * v11 + 32) = v8;
    v5 = v14;
  }

  while (v14 != i);
  return v6;
}

uint64_t sub_1A395BFFC(uint64_t a1, uint64_t a2)
{
  if (qword_1ED996480 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v4 = off_1ED997FE0;
    swift_getKeyPath(aP_6);
    v5 = OBJC_IVAR____TtC8CameraUIP33_AD1680641DDDA8199D384A5228EC6D4815SettingsManager___observationRegistrar;
    v45 = v4;
    v42 = sub_1A395DAFC(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
    v43 = v5;
    sub_1A3A2F080();

    v6 = v4[2];
    swift_getKeyPath(byte_1A3A78120);
    v45 = v6;
    v7 = sub_1A395DAFC(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
    sub_1A3A2EA60();
    v41 = v7;
    sub_1A3A2F080();

    v8 = *(v6 + 120);
    sub_1A3A2EA50();

    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = 0;
      v40 = v9 - 1;
      v44 = MEMORY[0x1E69E7CC0];
      do
      {
        v11 = v10;
        while (1)
        {
          if (v11 >= *(v8 + 16))
          {
            __break(1u);
            goto LABEL_38;
          }

          v12 = *(v8 + 32 + 8 * v11);
          type metadata accessor for ChromeElementModel();
          sub_1A38A8F64(v12);
          v14 = sub_1A39B11D4(v12, a2, a1, v13);
          v15 = sub_1A39B73F8(v12, a1);
          if (v14 & 1) != 0 && (v15)
          {
            break;
          }

          ++v11;
          sub_1A3890F2C(v12);
          if (v9 == v11)
          {
            goto LABEL_16;
          }
        }

        v16 = v44;
        v45 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A3956980(0, *(v44 + 16) + 1, 1);
          v16 = v45;
        }

        v18 = *(v16 + 16);
        v17 = *(v16 + 24);
        v19 = v18 + 1;
        if (v18 >= v17 >> 1)
        {
          sub_1A3956980((v17 > 1), v18 + 1, 1);
          v19 = v18 + 1;
          v16 = v45;
        }

        v10 = v11 + 1;
        *(v16 + 16) = v19;
        v44 = v16;
        *(v16 + 8 * v18 + 32) = v12;
      }

      while (v40 != v11);
    }

    else
    {
      v44 = MEMORY[0x1E69E7CC0];
    }

LABEL_16:

    swift_getKeyPath(aP_6);
    v45 = v4;
    sub_1A3A2F080();

    v20 = v4[2];
    swift_getKeyPath(byte_1A3A78148);
    v45 = v20;
    sub_1A3A2EA60();
    sub_1A3A2F080();

    v21 = *(v20 + 128);
    sub_1A3A2EA50();

    v22 = *(v21 + 16);
    if (!v22)
    {
      break;
    }

    v23 = 0;
    v43 = v22 - 1;
    v24 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v25 = v23;
    while (v25 < *(v21 + 16))
    {
      v26 = *(v21 + 32 + 8 * v25);
      type metadata accessor for ChromeElementModel();
      sub_1A38A8F64(v26);
      v28 = sub_1A39B11D4(v26, a2, a1, v27);
      v29 = sub_1A39B73F8(v26, a1);
      if (v28 & 1) != 0 && (v29)
      {
        v45 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A3956980(0, v24[2] + 1, 1);
          v24 = v45;
        }

        v31 = v24[2];
        v30 = v24[3];
        v32 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          sub_1A3956980((v30 > 1), v31 + 1, 1);
          v32 = v31 + 1;
          v24 = v45;
        }

        v23 = v25 + 1;
        v24[2] = v32;
        v24[v31 + 4] = v26;
        if (v43 != v25)
        {
          goto LABEL_18;
        }

        goto LABEL_30;
      }

      ++v25;
      sub_1A3890F2C(v26);
      if (v22 == v25)
      {
        goto LABEL_30;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_30:

  v45 = 31;
  MEMORY[0x1EEE9AC00](v33);
  v39[2] = &v45;
  if (sub_1A38EDEDC(sub_1A395DF38, v39, v24))
  {

    v24 = &unk_1F1654290;
  }

  result = v44;
  if (*(v44 + 16) >= 3uLL)
  {
    sub_1A395BD6C(v44, v44 + 32, 0, 5uLL);
    v36 = v35;

    result = v36;
  }

  v37 = v24[2];
  if (v37 >= 3)
  {
    v38 = result;
    sub_1A395BD6C(v24, (v24 + 4), v37 - 2, (2 * v37) | 1);

    return v38;
  }

  return result;
}

uint64_t sub_1A395C540(uint64_t a1)
{
  if (qword_1ED996480 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v2 = off_1ED997FE0;
    swift_getKeyPath(aP_6);
    sub_1A395DAFC(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
    sub_1A3A2F080();

    v3 = *(v2[2] + 88);
    v4 = *(v3 + 16);
    sub_1A3A2EA50();
    if (v4)
    {
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      do
      {
        v7 = v5;
        while (1)
        {
          if (v7 >= *(v3 + 16))
          {
            __break(1u);
            goto LABEL_52;
          }

          v8 = *(v3 + 32 + 8 * v7);
          v5 = v7 + 1;
          type metadata accessor for ChromeElementModel();
          sub_1A38A8F64(v8);
          if (sub_1A39B11D4(v8, 0, a1, v9))
          {
            break;
          }

          sub_1A3890F2C(v8);
          ++v7;
          if (v4 == v5)
          {
            goto LABEL_16;
          }
        }

        v40 = v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A3956980(0, *(v6 + 16) + 1, 1);
        }

        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        v12 = v11 + 1;
        if (v11 >= v10 >> 1)
        {
          sub_1A3956980((v10 > 1), v11 + 1, 1);
          v12 = v11 + 1;
        }

        *(v6 + 16) = v12;
        *(v6 + 8 * v11 + 32) = v8;
        v2 = v40;
      }

      while (v4 - 1 != v7);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

LABEL_16:

    swift_getKeyPath(aP_6);
    sub_1A3A2F080();

    v13 = *(v2[2] + 96);
    v14 = *(v13 + 16);
    sub_1A3A2EA50();
    if (!v14)
    {
      break;
    }

    v15 = MEMORY[0x1E69E7CC0];
    v16 = 0;
    while (v16 < *(v13 + 16))
    {
      v17 = *(v13 + 32 + 8 * v16);
      v18 = v16 + 1;
      type metadata accessor for ChromeElementModel();
      sub_1A38A8F64(v17);
      if (sub_1A39B11D4(v17, 0, a1, v19))
      {
        v41 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A3956980(0, *(v15 + 16) + 1, 1);
        }

        v20 = v15;
        v21 = *(v15 + 16);
        v22 = *(v20 + 24);
        v23 = v21 + 1;
        if (v21 >= v22 >> 1)
        {
          sub_1A3956980((v22 > 1), v21 + 1, 1);
          v23 = v21 + 1;
          v20 = v41;
        }

        *(v20 + 16) = v23;
        *(v20 + 8 * v21 + 32) = v17;
        v15 = v20;
        if (v14 - 1 == v16)
        {
          goto LABEL_29;
        }

        ++v16;
      }

      else
      {
        sub_1A3890F2C(v17);
        ++v16;
        if (v14 == v18)
        {
          goto LABEL_29;
        }
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_29:

  v24 = sub_1A395BFFC(a1, 0);

  v25 = MEMORY[0x1E69E7CC0];
  if (*(v24 + 16))
  {
    sub_1A3A2EA50();
    v26 = v24;
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  swift_getKeyPath(byte_1A3A78170);
  sub_1A395DAFC(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v27 = *(a1 + 584);
  if (v27 == 2)
  {

    v28 = sub_1A395B90C(&unk_1F1654390, v6);

    sub_1A395DB78(&unk_1F16543B0);
    v6 = v28;
    goto LABEL_36;
  }

  if (v27 == 1)
  {

    v6 = MEMORY[0x1E69E7CC0];
LABEL_36:
    v29 = v15;
    goto LABEL_39;
  }

  v29 = v15;
  if (!v27)
  {

LABEL_39:
    v30 = *(v6 + 16);
    if (v30)
    {
      sub_1A39569E0(0, v30, 0);
      v31 = 32;
      v32 = v25;
      do
      {
        v33 = *(v6 + v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2F8, &qword_1A3A77938);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1A3A681C0;
        *(v34 + 32) = v33;
        sub_1A38A8F64(v33);
        v36 = *(v32 + 16);
        v35 = *(v32 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_1A39569E0((v35 > 1), v36 + 1, 1);
        }

        *(v32 + 16) = v36 + 1;
        *(v32 + 8 * v36 + 32) = v34;
        v31 += 8;
        --v30;
      }

      while (v30);

      v29 = v15;
      if (*(v26 + 16))
      {
LABEL_45:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF398, &qword_1A3A77E20);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1A3A681C0;
        *(inited + 32) = v26;
        sub_1A3955C58(inited);
        if (*(v29 + 16))
        {
LABEL_46:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF398, &qword_1A3A77E20);
          v38 = swift_initStackObject();
          *(v38 + 16) = xmmword_1A3A681C0;
          *(v38 + 32) = v29;
          sub_1A3955C58(v38);
          return v32;
        }

LABEL_49:

        return v32;
      }
    }

    else
    {

      v32 = MEMORY[0x1E69E7CC0];
      if (*(v26 + 16))
      {
        goto LABEL_45;
      }
    }

    if (*(v29 + 16))
    {
      goto LABEL_46;
    }

    goto LABEL_49;
  }

  result = sub_1A3A321F0();
  __break(1u);
  return result;
}

double sub_1A395CB84(uint64_t a1)
{
  if (qword_1ED996480 != -1)
  {
LABEL_18:
    swift_once();
  }

  v2 = off_1ED997FE0;
  swift_getKeyPath(aP_6, v16, v17);
  v17 = v2;
  sub_1A395DAFC(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  v3 = *(v2[2] + 104);
  v4 = *(v3 + 16);
  sub_1A3A2EA50();
  if (v4)
  {
    v5 = 0;
    v6 = v4 - 1;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = v5;
      while (1)
      {
        if (v8 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        v9 = *(v3 + 32 + 8 * v8);
        v5 = v8 + 1;
        type metadata accessor for ChromeElementModel();
        sub_1A38A8F64(v9);
        if (sub_1A39B11D4(v9, 0, a1, v10))
        {
          break;
        }

        sub_1A3890F2C(v9);
        ++v8;
        if (v4 == v5)
        {
          goto LABEL_16;
        }
      }

      v16 = v6;
      v17 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1A3956980(0, v7[2] + 1, 1);
      }

      v12 = v7[2];
      v11 = v7[3];
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_1A3956980((v11 > 1), v12 + 1, 1);
        v13 = v12 + 1;
      }

      v7[2] = v13;
      v7[v12 + 4] = v9;
      v6 = v16;
    }

    while (v16 != v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF398, &qword_1A3A77E20);
  v14 = swift_allocObject();
  *&result = 1;
  *(v14 + 16) = xmmword_1A3A681C0;
  *(v14 + 32) = v7;
  return result;
}

void *sub_1A395CDB8(void *a1)
{
  v63 = a1;
  if (qword_1ED996480 != -1)
  {
    goto LABEL_290;
  }

  while (1)
  {
    v1 = off_1ED997FE0;
    swift_getKeyPath(aP_6);
    v69 = v1;
    sub_1A395DAFC(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
    sub_1A3A2F080();

    v2 = *(v1[2] + 112);
    v3 = *(v2 + 16);
    sub_1A3A2EA50();
    if (v3)
    {
      v4 = 0;
      v64 = MEMORY[0x1E69E7CC0];
      v5 = v63;
      do
      {
        v6 = v4;
        while (1)
        {
          if (v6 >= *(v2 + 16))
          {
LABEL_286:
            __break(1u);
            goto LABEL_287;
          }

          v7 = *(v2 + 32 + 8 * v6);
          v4 = v6 + 1;
          type metadata accessor for ChromeElementModel();
          sub_1A38A8F64(v7);
          if (sub_1A39B11D4(v7, 0, v5, v8))
          {
            break;
          }

          sub_1A3890F2C(v7);
          ++v6;
          if (v3 == v4)
          {
            goto LABEL_16;
          }
        }

        v9 = v64;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A3956980(0, *(v9 + 16) + 1, 1);
          v9 = v69;
        }

        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1A3956980((v11 > 1), v12 + 1, 1);
          v9 = v69;
        }

        *(v9 + 16) = v12 + 1;
        v64 = v9;
        *(v9 + 8 * v12 + 32) = v7;
        v5 = v63;
      }

      while (v3 - 1 != v6);
    }

    else
    {
      v64 = MEMORY[0x1E69E7CC0];
    }

LABEL_16:

    v69 = &unk_1F1653D10;
    MEMORY[0x1EEE9AC00](v13);
    v53[2] = &v69;
    v14 = v64;
    if ((sub_1A38EDEDC(sub_1A395DAC4, v53, v64) & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF398, &qword_1A3A77E20);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1A3A681C0;
      *(v42 + 32) = v14;
      goto LABEL_275;
    }

    v15 = *(v14 + 16);
    if (!v15)
    {
      break;
    }

    v16 = 0;
    *&v68 = v14 + 32;
    v17 = MEMORY[0x1E69E7CC0];
    v58 = v15;
    while (v16 < *(v14 + 16))
    {
      v18 = *(v68 + 8 * v16++);
      if (v18 < 0x23)
      {
        goto LABEL_266;
      }

      if (*(v18 + 16) != 2)
      {
        sub_1A3A2EA50();
        goto LABEL_266;
      }

      if (v18 != &unk_1F1653D10)
      {
        sub_1A3A2EA50();
        v19 = 0;
        v20 = 0;
        while (1)
        {
          v21 = v19;
          if (v20 >= *(v18 + 16))
          {
            __break(1u);
            goto LABEL_286;
          }

          v22 = 8 * v20;
          v23 = *(v18 + 32 + v22);
          v24 = *(&unk_1F1653D10 + v22 + 32);
          switch(v23)
          {
            case 0uLL:
              if (v24)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 1uLL:
              if (v24 != 1)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 2uLL:
              if (v24 != 2)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 3uLL:
              if (v24 != 3)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 4uLL:
              if (v24 != 4)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 5uLL:
              if (v24 != 5)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 6uLL:
              if (v24 != 6)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 7uLL:
              if (v24 != 7)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 8uLL:
              if (v24 != 8)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 9uLL:
              if (v24 != 9)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0xAuLL:
              if (v24 != 10)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0xBuLL:
              if (v24 != 11)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0xCuLL:
              if (v24 != 12)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0xDuLL:
              if (v24 != 13)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0xEuLL:
              if (v24 != 14)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0xFuLL:
              if (v24 != 15)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x10uLL:
              if (v24 != 16)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x11uLL:
              if (v24 != 17)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x12uLL:
              if (v24 != 18)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x13uLL:
              if (v24 != 19)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x14uLL:
              if (v24 != 20)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x15uLL:
              if (v24 != 21)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x16uLL:
              if (v24 != 22)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x17uLL:
              if (v24 != 23)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x18uLL:
              if (v24 != 24)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x19uLL:
              if (v24 != 25)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x1AuLL:
              if (v24 != 26)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x1BuLL:
              if (v24 == 27)
              {
                goto LABEL_27;
              }

              goto LABEL_266;
            case 0x1CuLL:
              if (v24 != 28)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x1DuLL:
              if (v24 != 29)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x1EuLL:
              if (v24 != 30)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x1FuLL:
              if (v24 != 31)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x20uLL:
              if (v24 != 32)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x21uLL:
              if (v24 != 33)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            case 0x22uLL:
              if (v24 != 34)
              {
                goto LABEL_266;
              }

              goto LABEL_27;
            default:
              if (v24 < 0x23)
              {
                goto LABEL_266;
              }

              v25 = v23[2];
              if (v25 != *(v24 + 16))
              {
                goto LABEL_266;
              }

              if (v25)
              {
                v26 = v23 == v24;
              }

              else
              {
                v26 = 1;
              }

              if (v26)
              {
                goto LABEL_27;
              }

              v59 = v17;
              v65 = v24 + 32;
              v66 = v23 + 4;
              v27 = v23;
              sub_1A38A8F64(v24);
              v67 = v27;
              sub_1A38A8F64(v27);
              v28 = 0;
              break;
          }

LABEL_107:
          if (v28 >= v67[2])
          {
            goto LABEL_288;
          }

          if (v28 >= *(v24 + 16))
          {
            goto LABEL_289;
          }

          v29 = v66[v28];
          v30 = *(v65 + 8 * v28);
          switch(v29)
          {
            case 0uLL:
              if (v30)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 1uLL:
              if (v30 != 1)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 2uLL:
              if (v30 != 2)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 3uLL:
              if (v30 != 3)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 4uLL:
              if (v30 != 4)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 5uLL:
              if (v30 != 5)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 6uLL:
              if (v30 != 6)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 7uLL:
              if (v30 != 7)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 8uLL:
              if (v30 != 8)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 9uLL:
              if (v30 != 9)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0xAuLL:
              if (v30 != 10)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0xBuLL:
              if (v30 != 11)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0xCuLL:
              if (v30 != 12)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0xDuLL:
              if (v30 != 13)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0xEuLL:
              if (v30 != 14)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0xFuLL:
              if (v30 != 15)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x10uLL:
              if (v30 != 16)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x11uLL:
              if (v30 != 17)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x12uLL:
              if (v30 != 18)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x13uLL:
              if (v30 != 19)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x14uLL:
              if (v30 != 20)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x15uLL:
              if (v30 != 21)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x16uLL:
              if (v30 != 22)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x17uLL:
              if (v30 != 23)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x18uLL:
              if (v30 != 24)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x19uLL:
              if (v30 != 25)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x1AuLL:
              if (v30 != 26)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x1BuLL:
              if (v30 == 27)
              {
                goto LABEL_106;
              }

              goto LABEL_264;
            case 0x1CuLL:
              if (v30 != 28)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x1DuLL:
              if (v30 != 29)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x1EuLL:
              if (v30 != 30)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x1FuLL:
              if (v30 != 31)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x20uLL:
              if (v30 != 32)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x21uLL:
              if (v30 != 33)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            case 0x22uLL:
              if (v30 != 34)
              {
                goto LABEL_264;
              }

              goto LABEL_106;
            default:
              if (v30 < 0x23 || (v31 = *(v29 + 16), v31 != *(v30 + 16)))
              {
LABEL_264:
                sub_1A3890F2C(v24);
                sub_1A3890F2C(v67);
                goto LABEL_265;
              }

              if (v31)
              {
                v32 = v29 == v30;
              }

              else
              {
                v32 = 1;
              }

              if (v32)
              {
                goto LABEL_106;
              }

              v60 = v30 + 32;
              v61 = v29 + 32;
              v33 = v29;
              v57 = v31;
              sub_1A38A8F64(v30);
              v62 = v33;
              result = sub_1A38A8F64(v33);
              v35 = v57;
              v36 = 0;
              break;
          }

LABEL_187:
          if (v36 >= *(v62 + 16))
          {
            break;
          }

          if (v36 >= *(v30 + 16))
          {
            goto LABEL_292;
          }

          v37 = *(v61 + 8 * v36);
          v38 = *(v60 + 8 * v36);
          switch(v37)
          {
            case 0uLL:
              if (!v38)
              {
                goto LABEL_186;
              }

              goto LABEL_271;
            case 1uLL:
              if (v38 != 1)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 2uLL:
              if (v38 != 2)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 3uLL:
              if (v38 != 3)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 4uLL:
              if (v38 != 4)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 5uLL:
              if (v38 != 5)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 6uLL:
              if (v38 != 6)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 7uLL:
              if (v38 != 7)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 8uLL:
              if (v38 != 8)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 9uLL:
              if (v38 != 9)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0xAuLL:
              if (v38 != 10)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0xBuLL:
              if (v38 != 11)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0xCuLL:
              if (v38 != 12)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0xDuLL:
              if (v38 != 13)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0xEuLL:
              if (v38 != 14)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0xFuLL:
              if (v38 != 15)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x10uLL:
              if (v38 != 16)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x11uLL:
              if (v38 != 17)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x12uLL:
              if (v38 != 18)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x13uLL:
              if (v38 != 19)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x14uLL:
              if (v38 != 20)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x15uLL:
              if (v38 != 21)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x16uLL:
              if (v38 != 22)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x17uLL:
              if (v38 != 23)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x18uLL:
              if (v38 != 24)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x19uLL:
              if (v38 != 25)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x1AuLL:
              if (v38 != 26)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x1BuLL:
              if (v38 == 27)
              {
                goto LABEL_186;
              }

              goto LABEL_271;
            case 0x1CuLL:
              if (v38 != 28)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x1DuLL:
              if (v38 != 29)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x1EuLL:
              if (v38 != 30)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x1FuLL:
              if (v38 != 31)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x20uLL:
              if (v38 != 32)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x21uLL:
              if (v38 != 33)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            case 0x22uLL:
              if (v38 != 34)
              {
                goto LABEL_271;
              }

              goto LABEL_186;
            default:
              if (v38 < 0x23 || (v55 = *(v60 + 8 * v36), v56 = v37, sub_1A38A8F64(v55), sub_1A38A8F64(v56), v54 = sub_1A39FCD24(v56, v55), sub_1A3890F2C(v55), result = sub_1A3890F2C(v56), v35 = v57, (v54 & 1) == 0))
              {
LABEL_271:
                sub_1A3890F2C(v30);
                sub_1A3890F2C(v62);
                sub_1A3890F2C(v24);
                sub_1A3890F2C(v67);
                v14 = v64;
LABEL_265:
                v15 = v58;
                v17 = v59;
LABEL_266:
                v39 = swift_isUniquelyReferenced_nonNull_native();
                v69 = v17;
                if ((v39 & 1) == 0)
                {
                  sub_1A3956980(0, v17[2] + 1, 1);
                  v17 = v69;
                }

                v41 = v17[2];
                v40 = v17[3];
                if (v41 >= v40 >> 1)
                {
                  sub_1A3956980((v40 > 1), v41 + 1, 1);
                  v17 = v69;
                }

                v17[2] = v41 + 1;
                v17[v41 + 4] = v18;
                goto LABEL_20;
              }

LABEL_186:
              if (v35 != ++v36)
              {
                goto LABEL_187;
              }

              sub_1A3890F2C(v30);
              sub_1A3890F2C(v62);
              v14 = v64;
LABEL_106:
              if (++v28 != v25)
              {
                goto LABEL_107;
              }

              sub_1A3890F2C(v24);
              sub_1A3890F2C(v67);
              v15 = v58;
              v17 = v59;
LABEL_27:
              v19 = 1;
              v20 = 1;
              if (v21)
              {
                sub_1A3890F2C(v18);
                goto LABEL_20;
              }

              break;
          }
        }

        __break(1u);
LABEL_292:
        __break(1u);
        return result;
      }

LABEL_20:
      if (v16 == v15)
      {
        goto LABEL_274;
      }
    }

LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    swift_once();
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_274:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF398, &qword_1A3A77E20);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1A3A70140;
  *(v42 + 32) = &unk_1F16543B8;
  *(v42 + 40) = v17;
LABEL_275:
  swift_getKeyPath(a0_5);
  v43 = v63;
  v69 = v63;
  sub_1A395DAFC(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if ((*(v43 + 1177) & 1) == 0)
  {
    swift_getKeyPath(byte_1A3A780F8);
    v69 = v43;
    sub_1A3A2F080();

    if ((*(v43 + 1178) & 1) == 0)
    {
      sub_1A395BFFC(v43, 0);
      v45 = v44;

      v46 = *(v45 + 16);
      if (v46)
      {
        v67 = v42;
        v69 = MEMORY[0x1E69E7CC0];
        sub_1A39569E0(0, v46, 0);
        v47 = 32;
        v48 = v69;
        v68 = xmmword_1A3A681C0;
        do
        {
          v49 = *(v45 + v47);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2F8, &qword_1A3A77938);
          v50 = swift_allocObject();
          *(v50 + 16) = v68;
          *(v50 + 32) = v49;
          sub_1A38A8F64(v49);
          v69 = v48;
          v52 = v48[2];
          v51 = v48[3];
          if (v52 >= v51 >> 1)
          {
            sub_1A39569E0((v51 > 1), v52 + 1, 1);
            v48 = v69;
          }

          v48[2] = v52 + 1;
          v48[v52 + 4] = v50;
          v47 += 8;
          --v46;
        }

        while (v46);

        v69 = v48;
        sub_1A3955C58(v67);
        return v69;
      }

      else
      {
      }
    }
  }

  return v42;
}

uint64_t sub_1A395DAFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A395DBCC(uint64_t a1)
{
  if (qword_1ED996480 != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v2 = off_1ED997FE0;
    swift_getKeyPath(aP_6);
    sub_1A395DAFC(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
    sub_1A3A2F080();

    v3 = *(v2[2] + 144);
    v4 = *(v3 + 16);
    sub_1A3A2EA50();
    if (!v4)
    {
      break;
    }

    v5 = 0;
    while (v5 < *(v3 + 16))
    {
      v6 = *(v3 + 32 + 8 * v5);
      type metadata accessor for ChromeElementModel();
      sub_1A38A8F64(v6);
      if (sub_1A39B11D4(v6, 3, a1, v7))
      {
        goto LABEL_8;
      }

      ++v5;
      sub_1A3890F2C(v6);
      if (v4 == v5)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_10:
    swift_once();
  }

LABEL_7:
  v6 = 35;
LABEL_8:

  return v6;
}

void *sub_1A395DD30(uint64_t a1)
{
  if (qword_1ED996480 != -1)
  {
LABEL_18:
    swift_once();
  }

  v2 = off_1ED997FE0;
  swift_getKeyPath(aP_6, v15, v16);
  v16 = v2;
  sub_1A395DAFC(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  v3 = *(v2[2] + 136);
  v4 = *(v3 + 16);
  sub_1A3A2EA50();
  if (v4)
  {
    v5 = 0;
    v6 = v4 - 1;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = v5;
      while (1)
      {
        if (v8 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        v9 = *(v3 + 32 + 8 * v8);
        v5 = v8 + 1;
        type metadata accessor for ChromeElementModel();
        sub_1A38A8F64(v9);
        if (sub_1A39B11D4(v9, 3, a1, v10))
        {
          break;
        }

        sub_1A3890F2C(v9);
        ++v8;
        if (v4 == v5)
        {
          goto LABEL_16;
        }
      }

      v15 = v6;
      v16 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1A3956980(0, v7[2] + 1, 1);
      }

      v12 = v7[2];
      v11 = v7[3];
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_1A3956980((v11 > 1), v12 + 1, 1);
        v13 = v12 + 1;
      }

      v7[2] = v13;
      v7[v12 + 4] = v9;
      v6 = v15;
    }

    while (v15 != v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:

  return v7;
}

double sub_1A395DF54@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A78378);
  sub_1A390A488();
  sub_1A3A2F080();

  result = *(v3 + 720);
  *a2 = result;
  return result;
}

double sub_1A395DFF4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A783A0);
  sub_1A390A488();
  sub_1A3A2F080();

  result = *(v3 + 728);
  *a2 = result;
  return result;
}

double sub_1A395E094@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A783C8);
  sub_1A390A488();
  sub_1A3A2F080();

  result = *(v3 + 736);
  *a2 = result;
  return result;
}

double sub_1A395E134@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_1A3A78328);
  sub_1A390A488();
  sub_1A3A2F080();

  result = *(v3 + 744);
  *a2 = result;
  return result;
}

id sub_1A395E1D4(uint64_t a1, uint64_t a2, char a3)
{
  v30 = a1;
  v5 = sub_1A3A2FEE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x1E6993888]);
  v10 = sub_1A3A31810();
  v11 = [v9 initWithTitle_];

  v12 = v11;
  v13 = sub_1A3A31810();
  [v12 setAccessibilityIdentifier_];

  [v12 setTransparentGradients];
  sub_1A3A2EA60();
  v14 = a2;
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v15 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v14 = v31;
  }

  swift_getKeyPath(byte_1A3A78350);
  v31 = v14;
  sub_1A390A488();
  sub_1A3A2F080();

  v16 = *(v14 + 392);

  v17 = 68.0;
  if (v16)
  {
    v17 = 56.0;
  }

  [v12 setGradientInsets_];
  [v12 setSliderVerticalAlignment_];
  [v12 setValueLabelVisibility_];
  [v12 setTitleAlignment_];
  [v12 setFontStyle_];
  sub_1A3A2EA60();
  v18 = a2;
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v19 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v18 = v31;
  }

  swift_getKeyPath(byte_1A3A78378);
  v31 = v18;
  sub_1A3A2F080();

  v20 = *(v18 + 720);

  [v12 setMinimumValue_];
  sub_1A3A2EA60();
  v21 = a2;
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v22 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v21 = v31;
  }

  swift_getKeyPath(byte_1A3A783A0);
  v31 = v21;
  sub_1A3A2F080();

  v23 = *(v21 + 728);

  [v12 setMaximumValue_];
  sub_1A3A2EA60();
  v24 = a2;
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v25 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v24 = v31;
  }

  swift_getKeyPath(byte_1A3A783C8);
  v31 = v24;
  sub_1A3A2F080();

  v26 = *(v24 + 736);

  [v12 setDefaultValue_];
  sub_1A3A2EA60();
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v27 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    a2 = v31;
  }

  swift_getKeyPath(asc_1A3A78328);
  v31 = a2;
  sub_1A3A2F080();

  v28 = *(a2 + 744);

  [v12 setValue_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF3B8, &qword_1A3A783F0);
  sub_1A3A304D0();
  [v12 addTarget:v31 action:sel_intensityValueChanged_ forControlEvents:4096];

  return v12;
}

uint64_t sub_1A395E95C()
{

  return swift_deallocClassInstance();
}

id sub_1A395E9D4(void *a1)
{
  v3 = sub_1A39A12B8(*v1, *(v1 + 8));
  swift_getKeyPath(asc_1A3A78328);
  sub_1A390A488();
  sub_1A3A2F080();

  v4 = *(v3 + 744);

  return [a1 setValue_];
}

uint64_t sub_1A395EA94@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  type metadata accessor for ChromeIntensitySlider.Coordinator();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a1 = v5;

  return sub_1A3A2EA60();
}

uint64_t sub_1A395EAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A395EBE8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A395EB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A395EBE8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A395EBBC(uint64_t a1)
{
  sub_1A395EBE8();
  sub_1A3A301A0();
  __break(1u);
}

unint64_t sub_1A395EBE8()
{
  result = qword_1EB0FF3C0;
  if (!qword_1EB0FF3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF3C0);
  }

  return result;
}

void sub_1A395EC3C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1A3A2EA60();
  v4 = a2;
  v3();
}

uint64_t AVCaptureCameraLensSmudgeDetectionStatus.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x6E776F6E6B6E55;
      }

      return 0x726F727245;
    }

    return 0x64656764756D53;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6574654420746F4ELL;
      }

      return 0x726F727245;
    }

    return 0x64656C6261736944;
  }
}

uint64_t sub_1A395ED44()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x6E776F6E6B6E55;
      }

      return 0x726F727245;
    }

    return 0x64656764756D53;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x6574654420746F4ELL;
      }

      return 0x726F727245;
    }

    return 0x64656C6261736944;
  }
}

unint64_t CAMCaptureDevicePosition.description.getter(uint64_t a1)
{
  v1 = 0xD000000000000017;
  if (a1 == 1)
  {
    v1 = 0x614320746E6F7246;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6D6143206B636142;
  }
}

unint64_t sub_1A395EE54()
{
  v1 = 0xD000000000000017;
  if (*v0 == 1)
  {
    v1 = 0x614320746E6F7246;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D6143206B636142;
  }
}

uint64_t CAMCaptureMode.description.getter(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x6F6D6F6C53;
      }

      if (a1 == 3)
      {
        return 0x616D61726F6E6150;
      }

      return 0x657261757153;
    }

    if (!a1)
    {
      return 0x6F746F6850;
    }

    if (a1 == 1)
    {
      return 0x6F65646956;
    }

LABEL_20:
    sub_1A3A31F20();

    v3 = CAMCaptureMode.description.getter(a1);
    MEMORY[0x1A58F7770](v3);

    result = sub_1A3A32070("Fatal error", 11, 2, 0xD000000000000016, 0x80000001A3AA5040, "CameraUI/LensSmudgeDisplayState.swift", 37, 2, 55, 0);
    __break(1u);
    return result;
  }

  if (a1 > 7)
  {
    if ((a1 - 8) < 2)
    {
      return 0x6C616974617053;
    }

    goto LABEL_20;
  }

  if (a1 == 5)
  {
    return 0x7370616C656D6954;
  }

  if (a1 == 6)
  {
    return 0x7469617274726F50;
  }

  return 0x6974616D656E6943;
}

uint64_t sub_1A395F17C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_modeIsChanging) == 1)
  {
    sub_1A3A31F20();
    v3 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition);
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = 0xEC0000006172656DLL;
        v5 = 0x614320746E6F7246;
      }

      else
      {
        v4 = 0x80000001A3AA4FF0;
        v5 = 0xD000000000000017;
      }
    }

    else
    {
      v4 = 0xEC00000073617265;
      v5 = 0x6D6143206B636142;
    }

    MEMORY[0x1A58F7770](v5, v4);

    MEMORY[0x1A58F7770](0xD000000000000037, 0x80000001A3AA5280);
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v9 = 0xE700000000000000;
        v10 = 0x64656764756D53;
        goto LABEL_27;
      }

      if (a1 == 3)
      {
        v9 = 0xE700000000000000;
        v10 = 0x6E776F6E6B6E55;
        goto LABEL_27;
      }
    }

    else
    {
      if (!a1)
      {
        v9 = 0xE800000000000000;
        v10 = 0x64656C6261736944;
        goto LABEL_27;
      }

      if (a1 == 1)
      {
        v9 = 0xEC00000064657463;
        v10 = 0x6574654420746F4ELL;
LABEL_27:
        MEMORY[0x1A58F7770](v10, v9);

        sub_1A39613D0(0, 0xE000000000000000, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);

        *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState__status) = 3;
        return result;
      }
    }

    v9 = 0xE500000000000000;
    v10 = 0x726F727245;
    goto LABEL_27;
  }

  v6 = OBJC_IVAR___CAMLensSmudgeDisplayState__status;
  result = sub_1A395F450(a1, *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState__status));
  *(v1 + v6) = a1;
  if (a1 == 2)
  {
    v8 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition);
    if ([*(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_preferences) smudgeNotDetectedCountForDevicePosition_] >= 1)
    {
      sub_1A3961194(0, v8);
    }

    sub_1A3960924();

    return sub_1A3960A74();
  }

  else if (a1 == 1)
  {

    return sub_1A3960578();
  }

  return result;
}

uint64_t sub_1A395F450(uint64_t a1, uint64_t a2)
{
  sub_1A3A31F20();
  v5 = *(v2 + OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition);
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 0xEC0000006172656DLL;
      v7 = 0x614320746E6F7246;
    }

    else
    {
      v6 = 0x80000001A3AA4FF0;
      v7 = 0xD000000000000017;
    }
  }

  else
  {
    v6 = 0xEC00000073617265;
    v7 = 0x6D6143206B636142;
  }

  v8 = 0x64656764756D53;
  MEMORY[0x1A58F7770](v7, v6);

  MEMORY[0x1A58F7770](0xD000000000000016, 0x80000001A3AA53C0);
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v10 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E55;
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    v10 = 0xE700000000000000;
    v9 = 0x64656764756D53;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v9 = 0x6574654420746F4ELL;
        v10 = 0xEC00000064657463;
        goto LABEL_16;
      }

LABEL_13:
      v10 = 0xE500000000000000;
      v9 = 0x726F727245;
      goto LABEL_16;
    }

    v10 = 0xE800000000000000;
    v9 = 0x64656C6261736944;
  }

LABEL_16:
  MEMORY[0x1A58F7770](v9, v10);

  sub_1A389FD78();
  v11 = sub_1A3A31E40();
  v13 = v12;

  MEMORY[0x1A58F7770](0x203A73617728, 0xE600000000000000);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v14 = 0xE700000000000000;
      goto LABEL_26;
    }

    if (a2 == 3)
    {
      v14 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E55;
      goto LABEL_26;
    }

LABEL_23:
    v14 = 0xE500000000000000;
    v8 = 0x726F727245;
    goto LABEL_26;
  }

  if (!a2)
  {
    v14 = 0xE800000000000000;
    v8 = 0x64656C6261736944;
    goto LABEL_26;
  }

  if (a2 != 1)
  {
    goto LABEL_23;
  }

  v8 = 0x6574654420746F4ELL;
  v14 = 0xEC00000064657463;
LABEL_26:
  MEMORY[0x1A58F7770](v8, v14);

  MEMORY[0x1A58F7770](41, 0xE100000000000000);
  sub_1A39613D0(v11, v13, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);
}

uint64_t sub_1A395F7F8(uint64_t a1)
{
  v3 = sub_1A3A2ECE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v58 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  *&v17 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v19 = &v58 - v18;
  result = [v1 areSmudgeNotificationsEnabled];
  if (!result)
  {
    return result;
  }

  v21 = [v1 smudgeAcknowledgementDateForDevicePosition_];
  if (!v21)
  {
    return 1;
  }

  v22 = v21;
  sub_1A3A2ECA0();

  (*(v4 + 32))(v19, v15, v3);
  v23 = [v1 smudgeAcknowledgementCountForDevicePosition_];
  v24 = v23 - 1;
  if (v23 < 1)
  {
    (*(v4 + 8))(v19, v3);
    return 1;
  }

  v61 = v23;
  [v1 smudgeNotificationBaseTimeoutInSeconds];
  v26 = exp2(v24) * v25;
  v62 = v4;
  (*(v4 + 16))(v9, v19, v3);
  sub_1A3A2EC60();
  sub_1A3A2ECB0();
  v27 = sub_1A3A2ECC0();
  v63 = v27 == 1;
  v28 = 0x65726F666562;
  if (v27 == 1)
  {
    v28 = 0x7265746661;
  }

  v64 = v28;
  v29 = 0xE600000000000000;
  if (v27 == 1)
  {
    v29 = 0xE500000000000000;
  }

  v60 = v29;
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_1A3A31F20();
  v59 = "PortraitEffectIntensitySlider";
  v30 = 0x80000001A3AA4FF0;
  v31 = 0x614320746E6F7246;
  if (a1 == 1)
  {
    v30 = 0xEC0000006172656DLL;
  }

  else
  {
    v31 = 0xD000000000000017;
  }

  if (a1)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0x6D6143206B636142;
  }

  if (a1)
  {
    v33 = v30;
  }

  else
  {
    v33 = 0xEC00000073617265;
  }

  MEMORY[0x1A58F7770](v32, v33);

  MEMORY[0x1A58F7770](2108704, 0xE300000000000000);
  if (qword_1EB0FC190 != -1)
  {
    swift_once();
  }

  v34 = qword_1EB0FF3C8;
  v35 = sub_1A3A2EC80();
  v36 = [v34 stringFromDate_];

  v37 = sub_1A3A31850();
  v39 = v38;

  MEMORY[0x1A58F7770](v37, v39);

  MEMORY[0x1A58F7770](544434464, 0xE400000000000000);
  v40 = v60;
  MEMORY[0x1A58F7770](v64);
  MEMORY[0x1A58F7770](0x2065726F6E676920, 0xEE00203A65746164);
  v41 = sub_1A3A2EC80();
  v42 = [v34 stringFromDate_];

  v43 = sub_1A3A31850();
  v45 = v44;

  MEMORY[0x1A58F7770](v43, v45);

  MEMORY[0x1A58F7770](0xD000000000000018, 0x80000001A3AA5220);
  v65 = v61;
  v46 = sub_1A3A321A0();
  MEMORY[0x1A58F7770](v46);

  MEMORY[0x1A58F7770](0x756F656D6974202CLL, 0xEA00000000002074);
  if (qword_1EB0FC198 != -1)
  {
    swift_once();
  }

  v47 = [qword_1EB0FF3D0 stringFromTimeInterval_];
  if (v47)
  {
    v48 = v47;
    v49 = sub_1A3A31850();
    v51 = v50;

    MEMORY[0x1A58F7770](v49, v51);
  }

  else
  {
    MEMORY[0x1A58F7770](9666786, 0xA300000000000000);
  }

  v52 = v40;
  MEMORY[0x1A58F7770](46, 0xE100000000000000);
  v53 = v66;
  v54 = v67;
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_1A3A31F20();
  if (a1)
  {
    if (a1 == 1)
    {
      v55 = 0x614320746E6F7246;
      v56 = 0xEC0000006172656DLL;
    }

    else
    {
      v56 = v59 | 0x8000000000000000;
      v55 = 0xD000000000000017;
    }
  }

  else
  {
    v56 = 0xEC00000073617265;
    v55 = 0x6D6143206B636142;
  }

  MEMORY[0x1A58F7770](v55, v56);

  MEMORY[0x1A58F7770](45, 0xE100000000000000);
  MEMORY[0x1A58F7770](v64, v52);

  MEMORY[0x1A58F7770](0xD000000000000016, 0x80000001A3AA5240);
  sub_1A39613D0(v53, v54, v66, v67, &qword_1EB0FF3D8, &qword_1EB0FF3E0, MEMORY[0x1E69E9430]);

  v57 = *(v62 + 8);
  v57(v6, v3);
  v57(v12, v3);
  v57(v19, v3);
  return v63;
}

void sub_1A395FEE0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___CAMLensSmudgeDisplayState_modeIsChanging) = 0;
  sub_1A3A31F20();
  v2 = *(v0 + OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0xEC0000006172656DLL;
      v4 = 0x614320746E6F7246;
    }

    else
    {
      v3 = 0x80000001A3AA4FF0;
      v4 = 0xD000000000000017;
    }
  }

  else
  {
    v3 = 0xEC00000073617265;
    v4 = 0x6D6143206B636142;
  }

  v5 = 0x6E776F6E6B6E55;
  MEMORY[0x1A58F7770](v4, v3);

  MEMORY[0x1A58F7770](0xD000000000000014, 0x80000001A3AA51E0);
  v6 = 0xE700000000000000;
  MEMORY[0x1A58F7770](0x6E776F6E6B6E55, 0xE700000000000000);
  sub_1A389FD78();
  v7 = sub_1A3A31E40();
  v9 = v8;

  MEMORY[0x1A58F7770](0x203A73617728, 0xE600000000000000);
  v10 = OBJC_IVAR___CAMLensSmudgeDisplayState__status;
  v11 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState__status);
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      if (v11 == 3)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v5 = 0x64656764756D53;
  }

  else
  {
    if (v11)
    {
      if (v11 == 1)
      {
        v6 = 0xEC00000064657463;
        v5 = 0x6574654420746F4ELL;
        goto LABEL_15;
      }

LABEL_12:
      v6 = 0xE500000000000000;
      v5 = 0x726F727245;
      goto LABEL_15;
    }

    v6 = 0xE800000000000000;
    v5 = 0x64656C6261736944;
  }

LABEL_15:
  MEMORY[0x1A58F7770](v5, v6);

  MEMORY[0x1A58F7770](41, 0xE100000000000000);
  sub_1A39613D0(v7, v9, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);

  *(v1 + v10) = 3;
  v12 = OBJC_IVAR___CAMLensSmudgeDisplayState_timer;
  v13 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_timer);
  if (v13)
  {
    [v13 invalidate];
    v14 = *(v1 + v12);
  }

  else
  {
    v14 = 0;
  }

  *(v1 + v12) = 0;
}

char *sub_1A39601A0()
{
  v1 = v0;
  v2 = sub_1A3A2ECE0();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_preferences);
  v8 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition);
  result = [v7 smudgeAcknowledgementCountForDevicePosition_];
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    [v7 setSmudgeAcknowledgementCount:result + 1 forDevicePosition:v8];
    sub_1A3A2ECB0();
    v10 = sub_1A3A2EC80();
    (*(v3 + 8))(v6, v2);
    [v7 setSmudgeAcknowledgementDate:v10 forDevicePosition:v8];

    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1A3A31F20();
    if (v8)
    {
      if (v8 == 1)
      {
        v11 = 0xEC0000006172656DLL;
        v12 = 0x614320746E6F7246;
      }

      else
      {
        v11 = 0x80000001A3AA4FF0;
        v12 = 0xD000000000000017;
      }
    }

    else
    {
      v11 = 0xEC00000073617265;
      v12 = 0x6D6143206B636142;
    }

    MEMORY[0x1A58F7770](v12, v11);

    MEMORY[0x1A58F7770](0xD000000000000051, 0x80000001A3AA5180);
    sub_1A39613D0(v13, v14, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);

    sub_1A395FEE0();
    return sub_1A3989CF4(*(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper), *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper + 8));
  }

  return result;
}

uint64_t sub_1A3960578()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF428, &qword_1A3A784B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF430, &qword_1A3A784B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - v6;
  v8 = _s15AnalyticsHelperV9AnalyticsVMa(0);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = &v31 - v17;
  v19 = *(v0 + OBJC_IVAR___CAMLensSmudgeDisplayState_preferences);
  v20 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition);
  result = [v19 smudgeAcknowledgementCountForDevicePosition_];
  if (result >= 1)
  {
    v34 = v4;
    result = [v19 smudgeNotDetectedCountForDevicePosition_];
    v22 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      if (v22 > 3)
      {
        sub_1A3961018(0, v20);
        v23 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper + 8);
        v33 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper);
        v24 = [v33 smudgeAnalyticsDictionaryForDevicePosition_];
        if (v24)
        {
          v25 = v24;
          v32 = v23;
          v26 = sub_1A3A31710();

          sub_1A398B380(v26, v7);
          if ((*(v9 + 48))(v7, 1, v8) == 1)
          {
            sub_1A3961760(v7);
          }

          else
          {
            sub_1A39617C8(v7, v14);
            sub_1A39617C8(v14, v18);
            sub_1A396182C(v18, v11);
            v11[v8[14]] = 0;
            v27 = v34;
            sub_1A3A2ECD0();
            v28 = sub_1A3A2ECE0();
            (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
            sub_1A3961890(v27, &v11[v8[16]]);
            v29 = sub_1A398D23C(&v11[v8[11]]);

            v30 = &v11[v8[13]];
            *v30 = v29;
            v30[8] = 0;
            v11[v8[15]] = 1;
            [v33 removeSmudgeAnalyticsDictionaryForDevicePosition_];
            sub_1A398DE94(v11);
            sub_1A3961B00(v18);
            sub_1A3961B00(v11);
          }
        }

        v22 = 0;
      }

      else
      {
        sub_1A3989FA8(*(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper), *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper + 8));
      }

      return sub_1A3961194(v22, v20);
    }
  }

  return result;
}

void sub_1A3960924()
{
  v1 = v0;
  if (sub_1A395F7F8(*(v0 + OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition)))
  {
    v2 = OBJC_IVAR___CAMLensSmudgeDisplayState_timer;
    if (!*(v0 + OBJC_IVAR___CAMLensSmudgeDisplayState_timer))
    {
      v3 = objc_opt_self();
      v4 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_displayDuration);
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9[4] = sub_1A3961B5C;
      v9[5] = v5;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 1107296256;
      v9[2] = sub_1A395EC3C;
      v9[3] = &block_descriptor_5;
      v6 = _Block_copy(v9);

      v7 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:v4];
      _Block_release(v6);
      v8 = *(v1 + v2);
      *(v1 + v2) = v7;
    }
  }
}

uint64_t sub_1A3960A74()
{
  v1 = v0;
  v2 = 0xEC00000073617265;
  v3 = 0x6D6143206B636142;
  v4 = *(v0 + OBJC_IVAR___CAMLensSmudgeDisplayState_preferences);
  v5 = *(v0 + OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition);
  v6 = sub_1A395F7F8(v5);
  if ([v4 areSmudgeNotificationsEnabled])
  {
    if (v6)
    {
      sub_1A3A31F20();
      if (v5)
      {
        if (v5 == 1)
        {
          v3 = 0x614320746E6F7246;
          v2 = 0xEC0000006172656DLL;
        }

        else
        {
          v2 = 0x80000001A3AA4FF0;
          v3 = 0xD000000000000017;
        }
      }

      MEMORY[0x1A58F7770](v3, v2);

      MEMORY[0x1A58F7770](0xD00000000000001FLL, 0x80000001A3AA5380);
      sub_1A39613D0(0, 0xE000000000000000, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);

      v10 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper);
      v11 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper + 8);

      return sub_1A398A104(v10, v11);
    }

    else
    {
      sub_1A3A31F20();
      if (v5)
      {
        if (v5 == 1)
        {
          v3 = 0x614320746E6F7246;
          v2 = 0xEC0000006172656DLL;
        }

        else
        {
          v2 = 0x80000001A3AA4FF0;
          v3 = 0xD000000000000017;
        }
      }

      MEMORY[0x1A58F7770](v3, v2);

      MEMORY[0x1A58F7770](0xD00000000000001ELL, 0x80000001A3AA5360);
      sub_1A39613D0(0, 0xE000000000000000, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);

      v12 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper);
      v13 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper + 8);

      return sub_1A398A248(v12, v13);
    }
  }

  else
  {
    sub_1A3A31F20();
    if (v5)
    {
      if (v5 == 1)
      {
        v3 = 0x614320746E6F7246;
        v2 = 0xEC0000006172656DLL;
      }

      else
      {
        v2 = 0x80000001A3AA4FF0;
        v3 = 0xD000000000000017;
      }
    }

    MEMORY[0x1A58F7770](v3, v2);

    MEMORY[0x1A58F7770](0xD00000000000004CLL, 0x80000001A3AA5310);
    sub_1A39613D0(0, 0xE000000000000000, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);

    v7 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper);
    v8 = *(v1 + OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper + 8);

    return sub_1A398A38C(v7, v8);
  }
}

void sub_1A3960E18(void *a1, uint64_t a2)
{
  [a1 invalidate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___CAMLensSmudgeDisplayState_timer);
    *(Strong + OBJC_IVAR___CAMLensSmudgeDisplayState_timer) = 0;

    sub_1A395F17C(3);
    sub_1A3A31F20();
    v5 = OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition;
    v6 = *&v3[OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition];
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = 0xEC0000006172656DLL;
        v8 = 0x614320746E6F7246;
      }

      else
      {
        v7 = 0x80000001A3AA4FF0;
        v8 = 0xD000000000000017;
      }
    }

    else
    {
      v7 = 0xEC00000073617265;
      v8 = 0x6D6143206B636142;
    }

    MEMORY[0x1A58F7770](v8, v7);

    MEMORY[0x1A58F7770](0xD000000000000010, 0x80000001A3AA53A0);
    sub_1A39613D0(0, 0xE000000000000000, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);

    v9 = *&v3[OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper + 8];
    v10 = *&v3[OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper];
    sub_1A3989E74(v10, v9);

    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      if ([v11 respondsToSelector_])
      {
        [v12 lensSmudgeDisplayShouldBeHiddenForDevicePosition_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1A3961018(uint64_t a1, uint64_t a2)
{
  [v2 setSmudgeAcknowledgementCount:a1 forDevicePosition:a2];
  sub_1A3A31F20();
  v4 = 0x80000001A3AA4FF0;
  v5 = 0x614320746E6F7246;
  if (a2 == 1)
  {
    v4 = 0xEC0000006172656DLL;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6D6143206B636142;
  }

  if (a2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEC00000073617265;
  }

  MEMORY[0x1A58F7770](v6, v7);

  MEMORY[0x1A58F7770](0xD000000000000020, 0x80000001A3AA52C0);
  v8 = sub_1A3A321A0();
  MEMORY[0x1A58F7770](v8);

  MEMORY[0x1A58F7770](46, 0xE100000000000000);
  sub_1A39613D0(0, 0xE000000000000000, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);
}

uint64_t sub_1A3961194(uint64_t a1, uint64_t a2)
{
  [v2 setSmudgeNotDetectedCount:a1 forDevicePosition:a2];
  sub_1A3A31F20();
  v4 = 0x80000001A3AA4FF0;
  v5 = 0x614320746E6F7246;
  if (a2 == 1)
  {
    v4 = 0xEC0000006172656DLL;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6D6143206B636142;
  }

  if (a2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEC00000073617265;
  }

  MEMORY[0x1A58F7770](v6, v7);

  MEMORY[0x1A58F7770](0xD00000000000001DLL, 0x80000001A3AA52F0);
  v8 = sub_1A3A321A0();
  MEMORY[0x1A58F7770](v8);

  MEMORY[0x1A58F7770](46, 0xE100000000000000);
  sub_1A39613D0(0, 0xE000000000000000, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);
}

void sub_1A39613D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  if (a4)
  {
    v13 = a4;
  }

  else
  {
    sub_1A3A2EA50();
    a3 = a1;
    v13 = a2;
  }

  v14 = a3 == *a5 && v13 == *a6;
  if (v14 || (sub_1A3A321C0() & 1) != 0)
  {
    sub_1A3A2EA50();
  }

  else
  {
    *a5 = a3;
    *a6 = v13;
    sub_1A3A2EA50();

    if (qword_1ED996488 != -1)
    {
      swift_once();
    }

    v15 = sub_1A3A2F2A0();
    __swift_project_value_buffer(v15, qword_1ED9981F8);
    v16 = a7();
    sub_1A3A2EA50();
    oslog = sub_1A3A2F280();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_1A39ABC10(a1, a2, &v20);
      _os_log_impl(&dword_1A3640000, oslog, v16, "%{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1A58FAC10](v18, -1, -1);
      MEMORY[0x1A58FAC10](v17, -1, -1);
    }
  }
}

void sub_1A39615F0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1A3A31810();
  [v0 setDateFormat_];

  qword_1EB0FF3C8 = v0;
}

id sub_1A3961668()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setUnitsStyle_];
  [v0 setAllowedUnits_];
  result = [v0 setZeroFormattingBehavior_];
  qword_1EB0FF3D0 = v0;
  return result;
}

uint64_t sub_1A39616E0()
{
  v0 = sub_1A3A2F2A0();
  __swift_allocate_value_buffer(v0, qword_1ED9981F8);
  __swift_project_value_buffer(v0, qword_1ED9981F8);
  return sub_1A3A2F290();
}

uint64_t sub_1A3961760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF430, &qword_1A3A784B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A39617C8(uint64_t a1, uint64_t a2)
{
  v4 = _s15AnalyticsHelperV9AnalyticsVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A396182C(uint64_t a1, uint64_t a2)
{
  v4 = _s15AnalyticsHelperV9AnalyticsVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3961890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF428, &qword_1A3A784B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1A3961900(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR___CAMLensSmudgeDisplayState_modeIsChanging] = 0;
  *&v5[OBJC_IVAR___CAMLensSmudgeDisplayState_timer] = 0;
  *&v5[OBJC_IVAR___CAMLensSmudgeDisplayState__status] = 3;
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition] = a2;
  *&v5[OBJC_IVAR___CAMLensSmudgeDisplayState_displayDuration] = a4;
  *&v5[OBJC_IVAR___CAMLensSmudgeDisplayState_preferences] = a3;
  v10 = &v5[OBJC_IVAR___CAMLensSmudgeDisplayState_analyticsHelper];
  *v10 = a3;
  v10[1] = a2;
  v11 = a3;
  sub_1A3A31F20();

  v18 = 0x20809A9FF0;
  v19 = 0xA500000000000000;
  v12 = 0x80000001A3AA4FF0;
  v13 = 0x614320746E6F7246;
  if (a2 == 1)
  {
    v12 = 0xEC0000006172656DLL;
  }

  else
  {
    v13 = 0xD000000000000017;
  }

  if (a2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x6D6143206B636142;
  }

  if (a2)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xEC00000073617265;
  }

  MEMORY[0x1A58F7770](v14, v15);

  MEMORY[0x1A58F7770](0xD000000000000026, 0x80000001A3AA53E0);
  sub_1A39613D0(v18, v19, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);

  v17.receiver = v5;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_1A3961B00(uint64_t a1)
{
  v2 = _s15AnalyticsHelperV9AnalyticsVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A3A2EA60();
}

uint64_t sub_1A3961B84(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1A3A31560();
}

void *sub_1A3961D8C(uint64_t a1, uint64_t a2)
{
  v8 = sub_1A3A301E0();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(*(a2 - 8) + 16))(&v12 - v10, a1, a2, v9);
  swift_storeEnumTagMultiPayload();
  return sub_1A3A301F0();
}

void *sub_1A3961E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1A3A301E0();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(*(a3 - 8) + 16))(&v12 - v10, a1, a3, v9);
  swift_storeEnumTagMultiPayload();
  return sub_1A3A301F0();
}

uint64_t View.earViews<A, B>(screenSize:alignment:leftEar:rightEar:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, __int128 a12)
{
  v15 = *a1;
  v28 = 1;
  v27 = 1;
  v26 = 1;
  v25 = 1;
  *&v18 = a9;
  *(&v18 + 1) = a10;
  *&v19 = 0;
  BYTE8(v19) = 1;
  *&v20 = 0;
  BYTE8(v20) = 1;
  *&v21 = 0;
  BYTE8(v21) = 1;
  *&v22 = 0;
  WORD4(v22) = 1;
  BYTE10(v22) = v15;
  *&v23 = a2;
  *(&v23 + 1) = a3;
  *&v24 = a4;
  *(&v24 + 1) = a5;
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  *&v29 = a7;
  *(&v29 + 1) = a8;
  v30 = a12;
  v16 = type metadata accessor for EarViewsModifier(0, &v29);
  MEMORY[0x1A58F6B00](&v18, a6, v16, a11);
  v33 = v22;
  v34 = v23;
  v35 = v24;
  v29 = v18;
  v30 = v19;
  v31 = v20;
  v32 = v21;
  return (*(*(v16 - 8) + 8))(&v29, v16);
}

uint64_t sub_1A39620C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A3A2F680();
  v7 = v31;
  v8 = v31 * 0.5;
  v9 = v32;
  v10 = DWORD1(v32);
  v11 = *(&v32 + 1);
  v12 = v33;
  sub_1A3A2EA60();
  v13 = sub_1A3A31480();
  *v34 = v31 * 0.5;
  *(v34 + 1) = v31;
  v34[1] = v32;
  *v35 = v33;
  *&v35[16] = a1;
  *&v35[24] = 256;
  v29 = v32;
  *v30 = v33;
  *&v30[10] = *&v35[10];
  v28 = v34[0];
  v14 = *v30;
  v15 = *&v30[16];
  v37 = *v30;
  v38 = *&v30[16];
  v36[0] = v34[0];
  v36[1] = v32;
  *&v39 = v13;
  *(&v39 + 1) = v16;
  v17 = v32;
  *(a3 + 8) = v34[0];
  v18 = v38;
  *(a3 + 72) = v39;
  v19 = v37;
  *(a3 + 56) = v18;
  *a3 = a2;
  *(a3 + 40) = v19;
  *(a3 + 24) = v17;
  v40[2] = v14;
  v40[3] = v15;
  v40[0] = v28;
  v40[1] = v29;
  v41 = v13;
  v42 = v16;
  sub_1A388F6D8(v34, v21, &qword_1EB0FF508, &qword_1A3A786A8);
  sub_1A3A2EA60();
  sub_1A388F6D8(v36, v21, &qword_1EB0FEC90, &qword_1A3A75FE0);
  sub_1A388F740(v40, &qword_1EB0FEC90, &qword_1A3A75FE0);
  *v21 = v8;
  *&v21[1] = v7;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = a1;
  v27 = 256;
  return sub_1A388F740(v21, &qword_1EB0FF508, &qword_1A3A786A8);
}

uint64_t VerticalEarAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_1A3A322C0();
  MEMORY[0x1A58F8150](v1);
  return sub_1A3A32300();
}

unint64_t sub_1A3962328()
{
  result = qword_1EB0FF438;
  if (!qword_1EB0FF438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF438);
  }

  return result;
}

uint64_t sub_1A39623D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_1A3962430(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3962478(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

uint64_t sub_1A3962518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v24 = a1;
  v25 = a3;
  swift_getWitnessTable();
  sub_1A3A30260();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDFF8, &unk_1A3A78670);
  v5 = *(a2 + 16);
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE0B0, &unk_1A3A72A58);
  sub_1A3A2FA90();
  v23 = *(a2 + 24);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getTupleTypeMetadata3();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31030();
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31120();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF4C8, &qword_1A3A78680);
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31140();
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  v6 = sub_1A3A30200();
  WitnessTable = swift_getWitnessTable();
  v37 = MEMORY[0x1E697EBF8];
  v22[2] = MEMORY[0x1E697E858];
  v34 = swift_getWitnessTable();
  v35 = MEMORY[0x1E6980A30];
  v32 = swift_getWitnessTable();
  v33 = MEMORY[0x1E6981E60];
  v22[1] = v6;
  swift_getWitnessTable();
  sub_1A3A2FC00();
  v7 = sub_1A3A2FA90();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  v14 = v3[5];
  v38[4] = v3[4];
  v38[5] = v14;
  v38[6] = v3[6];
  v15 = v3[1];
  v38[0] = *v3;
  v38[1] = v15;
  v16 = v3[3];
  v38[2] = v3[2];
  v38[3] = v16;
  v26 = v5;
  v27 = v23;
  v28 = *(a2 + 32);
  v29 = v38;
  sub_1A3A31480();
  v17 = swift_getWitnessTable();
  sub_1A3A30C60();
  v18 = swift_getWitnessTable();
  v30 = v17;
  v31 = v18;
  swift_getWitnessTable();
  v19 = *(v8 + 16);
  v19(v13, v10, v7);
  v20 = *(v8 + 8);
  v20(v10, v7);
  v19(v25, v13, v7);
  return (v20)(v13, v7);
}

uint64_t sub_1A3962A38@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v76 = a6;
  v77 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDFF8, &unk_1A3A78670);
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE0B0, &unk_1A3A72A58);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getTupleTypeMetadata3();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31030();
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31120();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF4C8, &qword_1A3A78680);
  swift_getTupleTypeMetadata2();
  v10 = sub_1A3A31550();
  WitnessTable = swift_getWitnessTable();
  v64 = v10;
  v11 = sub_1A3A31140();
  v66 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v62 = v61 - v12;
  v14 = v13;
  v15 = sub_1A3A2FA90();
  v67 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v65 = v61 - v16;
  v17 = sub_1A3A2FA90();
  v70 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v69 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v68 = v61 - v20;
  v21 = sub_1A3A30200();
  v74 = *(v21 - 8);
  v75 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v61 - v22;
  v24 = *(a1 + 5);
  v97 = *(a1 + 4);
  v98 = v24;
  v99 = *(a1 + 6);
  v25 = *(a1 + 1);
  v93 = *a1;
  v94 = v25;
  v26 = *(a1 + 3);
  v95 = *(a1 + 2);
  v96 = v26;
  v71 = a2;
  v72 = a3;
  v92[0] = a2;
  v92[1] = a3;
  v73 = a4;
  v92[2] = a4;
  v92[3] = v77;
  v27 = type metadata accessor for EarViewsModifier(0, v92);
  sub_1A39632D0(v27, v28, v29, v30, v31, v32, v33, v34, v35);
  v37 = MEMORY[0x1E6980A30];
  if (v38 > 0.0)
  {
    v39 = *a1;
    if (*a1 != 0.0 || a1[1] != 0.0)
    {
      if (a1[3])
      {
        if (v39 >= a1[1])
        {
          v39 = a1[1];
        }

        static IslandAndNotchMetrics.width(from:)(v36, v39);
        if (v40)
        {
          goto LABEL_12;
        }

        if ((a1[5] & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else if ((a1[5] & 1) == 0)
      {
        goto LABEL_14;
      }

      v41 = *(a1 + 5);
      v97 = *(a1 + 4);
      v98 = v41;
      v99 = *(a1 + 6);
      v42 = *(a1 + 1);
      v93 = *a1;
      v94 = v42;
      v43 = *(a1 + 3);
      v95 = *(a1 + 2);
      v96 = v43;
      sub_1A39633B0(v27);
      if ((v44 & 1) == 0)
      {
LABEL_14:
        v50 = sub_1A3A31460();
        MEMORY[0x1EEE9AC00](v50);
        v51 = v62;
        sub_1A3A31130();
        sub_1A3A31460();
        v60 = swift_getWitnessTable();
        v61[1] = v14;
        v52 = v65;
        sub_1A3A30C00();
        (*(v66 + 8))(v51, v14);
        sub_1A3A2FAA0();
        sub_1A3A30610();
        v80 = v60;
        v81 = MEMORY[0x1E697EBF8];
        v53 = swift_getWitnessTable();
        v54 = v69;
        sub_1A3A30A40();
        (*(v67 + 8))(v52, v15);
        v78 = v53;
        v79 = MEMORY[0x1E6980A30];
        v77 = swift_getWitnessTable();
        v55 = v70;
        v56 = *(v70 + 16);
        v57 = v68;
        v56(v68, v54, v17);
        v58 = *(v55 + 8);
        v58(v54, v17);
        v56(v54, v57, v17);
        sub_1A3961D8C(v54, v17);
        v59 = v54;
        v45 = MEMORY[0x1E697EBF8];
        v58(v59, v17);
        v58(v57, v17);
        v37 = MEMORY[0x1E6980A30];
        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v90 = swift_getWitnessTable();
  v45 = MEMORY[0x1E697EBF8];
  v91 = MEMORY[0x1E697EBF8];
  v88 = swift_getWitnessTable();
  v89 = v37;
  v46 = swift_getWitnessTable();
  sub_1A3961E84(v46, v17, MEMORY[0x1E6981E70]);
LABEL_13:
  v86 = swift_getWitnessTable();
  v87 = v45;
  v84 = swift_getWitnessTable();
  v85 = v37;
  v82 = swift_getWitnessTable();
  v83 = MEMORY[0x1E6981E60];
  v47 = v75;
  swift_getWitnessTable();
  v48 = v74;
  (*(v74 + 16))(v76, v23, v47);
  return (*(v48 + 8))(v23, v47);
}

void sub_1A39632D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  if (*(v9 + 74))
  {
    if (*(v9 + 74) == 1)
    {
      if (*(v9 + 72))
      {

        static IslandAndNotchMetrics.bottomEdgeDistance(within:)(a1);
      }
    }

    else
    {
      sub_1A3964900(a1);
    }
  }

  else
  {

    static IslandAndNotchMetrics.safeAreaDistance(within:)(a1);
  }
}

id sub_1A39633B0(uint64_t a1)
{
  if (*v1 >= v1[1])
  {
    v2 = v1[1];
  }

  else
  {
    v2 = *v1;
  }

  v3 = static IslandAndNotchMetrics.width(from:)(a1, v2);
  if (v4)
  {
    *&result = 0.0;
  }

  else
  {
    v6 = *&v3;
    result = MobileGestalt_get_current_device();
    if (*&result == 0.0)
    {
      __break(1u);
    }

    else
    {
      v7 = result;
      v8 = MobileGestalt_copy_productType_obj();

      if (v8)
      {
        v9 = v6;
        v10 = sub_1A3A31850();
        v12 = v11;

        v13 = (v2 - v9) * 0.5;
        v14._countAndFlagsBits = v10;
        v14._object = v12;
        IslandAndNotchMetrics.init(rawValue:)(v14);
        v15 = 0.0;
        v16 = 5.0;
        if (((1 << v17) & 0x111) == 0)
        {
          v16 = 0.0;
        }

        if (v17 <= 8u)
        {
          v15 = v16;
        }

        *&result = v13 - v15;
      }

      else
      {
        *&result = 0.0;
      }
    }
  }

  return result;
}

uint64_t sub_1A39634B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v41 = a4;
  v42 = a5;
  v40 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDFF8, &unk_1A3A78670);
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE0B0, &unk_1A3A72A58);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  swift_getTupleTypeMetadata3();
  sub_1A3A31550();
  swift_getWitnessTable();
  sub_1A3A31030();
  swift_getTupleTypeMetadata2();
  sub_1A3A31550();
  swift_getWitnessTable();
  v13 = sub_1A3A31120();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v36 = a2;
  v37 = a3;
  v43 = a2;
  v44 = a3;
  v45 = v41;
  v46 = v42;
  v47 = a1;
  v48 = a7;
  v49 = a8;
  sub_1A3A300B0();
  sub_1A3A31110();
  WitnessTable = swift_getWitnessTable();
  v21 = *(v14 + 16);
  v21(v19, v16, v13);
  v22 = *(v14 + 8);
  v38 = v14 + 8;
  v39 = v22;
  v22(v16, v13);
  if (*(a1 + 73))
  {
    v34 = v13;
    v35 = v19;
    v23 = v36;
    v24 = v37;
    v25 = v21;
    v26 = v41;
    v33 = v16;
    v27 = WitnessTable;
    v28 = v42;
    sub_1A396475C(v36, v37, v41, v42, v50);
    *&v82 = v23;
    *(&v82 + 1) = v24;
    *&v83 = v26;
    v21 = v25;
    *(&v83 + 1) = v28;
    WitnessTable = v27;
    v16 = v33;
    v13 = v34;
    v29 = type metadata accessor for EarViewsModifier(0, &v82);
    static IslandAndNotchMetrics.safeAreaDistance(within:)(v29);
    sub_1A3A31480();
    sub_1A3A2F780();
    v79 = v50[10];
    v80 = v50[11];
    v81 = v51;
    v75 = v50[6];
    v76 = v50[7];
    v77 = v50[8];
    v78 = v50[9];
    v71 = v50[2];
    v72 = v50[3];
    v19 = v35;
    v73 = v50[4];
    v74 = v50[5];
    v69 = v50[0];
    v70 = v50[1];
    CAMPhotoFormatMake();
    v92 = v79;
    v93 = v80;
    v94 = v81;
    v88 = v75;
    v89 = v76;
    v90 = v77;
    v91 = v78;
    v84 = v71;
    v85 = v72;
    v86 = v73;
    v87 = v74;
    v82 = v69;
    v83 = v70;
  }

  else
  {
    sub_1A39649B8(&v82);
  }

  v21(v16, v19, v13);
  v65 = v92;
  v66 = v93;
  v67 = v94;
  v61 = v88;
  v62 = v89;
  v63 = v90;
  v64 = v91;
  v57 = v84;
  v58 = v85;
  v59 = v86;
  v60 = v87;
  v55 = v82;
  v56 = v83;
  v68[0] = v16;
  v68[1] = &v55;
  sub_1A388F6D8(&v82, &v69, &qword_1EB0FF4C8, &qword_1A3A78680);
  v54[0] = v13;
  v54[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF4C8, &qword_1A3A78680);
  v52 = WitnessTable;
  v53 = sub_1A39649DC();
  sub_1A3961B84(v68, 2uLL, v54);
  sub_1A388F740(&v82, &qword_1EB0FF4C8, &qword_1A3A78680);
  v30 = v19;
  v31 = v39;
  v39(v30, v13);
  v79 = v65;
  v80 = v66;
  v81 = v67;
  v75 = v61;
  v76 = v62;
  v77 = v63;
  v78 = v64;
  v71 = v57;
  v72 = v58;
  v73 = v59;
  v74 = v60;
  v69 = v55;
  v70 = v56;
  sub_1A388F740(&v69, &qword_1EB0FF4C8, &qword_1A3A78680);
  return v31(v16, v13);
}

uint64_t sub_1A3963A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v36 = a5;
  v42 = a4;
  v41 = a6;
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE0B0, &unk_1A3A72A58);
  sub_1A3A2FA90();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDFF8, &unk_1A3A78670);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  v40 = v13;
  swift_getTupleTypeMetadata3();
  sub_1A3A31550();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1A3A31030();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v37 = &v32 - v19;
  v20 = *(a1 + 56);
  v21 = *(a1 + 74);
  v38 = a2;
  v46 = a2;
  v39 = a3;
  v47 = a3;
  v48 = v42;
  v22 = v36;
  v49 = v36;
  v23 = type metadata accessor for EarViewsModifier(0, &v46);
  if (v21 >= 2 && (v20 & 1) != 0)
  {
    static IslandAndNotchMetrics.topEdgeDistance(within:)(v23);
  }

  sub_1A3A31480();
  v24 = sub_1A3A2F780();
  v25 = v55[2];
  v32 = v57;
  v34 = v59;
  v33 = v60;
  v66 = 1;
  v64 = v56;
  v62 = v58;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v39;
  *(&v32 - 8) = v38;
  *(&v32 - 7) = v26;
  *(&v32 - 6) = v42;
  *(&v32 - 5) = v22;
  *(&v32 - 4) = a1;
  *(&v32 - 3) = a7;
  *(&v32 - 2) = a8;
  sub_1A3A2FF40();
  sub_1A3A31020();
  v27 = swift_getWitnessTable();
  v28 = *(v15 + 16);
  v29 = v37;
  v28(v37, v17, v14);
  v30 = *(v15 + 8);
  v30(v17, v14);
  v46 = 0;
  LOBYTE(v47) = v66;
  *(&v47 + 1) = *v65;
  HIDWORD(v47) = *&v65[3];
  v48 = v25;
  LOBYTE(v49) = v64;
  *(&v49 + 1) = *v63;
  HIDWORD(v49) = *&v63[3];
  v50 = v32;
  v51 = v62;
  *v52 = *v61;
  *&v52[3] = *&v61[3];
  v53 = v34;
  v54 = v33;
  v55[0] = &v46;
  v28(v17, v29, v14);
  v55[1] = v17;
  v45[0] = v40;
  v45[1] = v14;
  v43 = sub_1A390FA98();
  v44 = v27;
  sub_1A3961B84(v55, 2uLL, v45);
  v30(v29, v14);
  return (v30)(v17, v14);
}

uint64_t sub_1A3963EF8@<X0>(void (**a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v98 = a3;
  v99 = a5;
  v85 = a4;
  v94 = a6;
  v93 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v86 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1A3A2FA90();
  v92 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v75 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FE0B0, &unk_1A3A72A58);
  v91 = sub_1A3A2FA90();
  v101 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v87 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v75 - v15;
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A3A2FA90();
  v84 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v75 - v21;
  v96 = sub_1A3A2FA90();
  v100 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v97 = &v75 - v26;
  (a1[10])(v25);
  v82 = a7;
  v27 = *(a1 + 5);
  v111 = *(a1 + 4);
  v112 = v27;
  v113 = *(a1 + 6);
  v28 = *(a1 + 1);
  v107 = *a1;
  v108 = v28;
  v29 = *(a1 + 3);
  v109 = *(a1 + 2);
  v110 = v29;
  v114 = a2;
  v115 = v98;
  v30 = v85;
  v116 = v85;
  v117 = v99;
  v83 = type metadata accessor for EarViewsModifier(0, &v114);
  sub_1A39632D0(v83, v31, v32, v33, v34, v35, v36, v37, v38);
  sub_1A3A31480();
  sub_1A3A30BF0();
  (*(v16 + 8))(v19, a2);
  v39 = MEMORY[0x1E697E040];
  v106[9] = v30;
  v106[10] = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  v41 = v95;
  sub_1A3A30B60();
  (*(v84 + 8))(v22, v20);
  v42 = sub_1A38A08F8(&qword_1EB0FE0A8, &qword_1EB0FE0B0, &unk_1A3A72A58, MEMORY[0x1E6980A18]);
  v106[7] = WitnessTable;
  v106[8] = v42;
  v43 = v96;
  v84 = swift_getWitnessTable();
  v44 = v100;
  v45 = *(v100 + 16);
  v80 = v100 + 16;
  v81 = v45;
  v45(v97, v41, v43);
  v46 = *(v44 + 8);
  v100 = v44 + 8;
  v85 = v46;
  v46(v41, v43);
  sub_1A3A31480();
  v47 = sub_1A3A2F780();
  v76 = v114;
  v77 = v116;
  v78 = v119;
  v79 = v118;
  v125 = 1;
  v123 = v115;
  v121 = v117;
  v48 = v86;
  a1[12](v47);
  v49 = *(a1 + 5);
  v111 = *(a1 + 4);
  v112 = v49;
  v113 = *(a1 + 6);
  v50 = *(a1 + 1);
  v107 = *a1;
  v108 = v50;
  v51 = *(a1 + 3);
  v109 = *(a1 + 2);
  v110 = v51;
  sub_1A39632D0(v83, v52, v53, v54, v55, v56, v57, v58, v51);
  sub_1A3A31480();
  v59 = v88;
  v61 = v98;
  v60 = v99;
  sub_1A3A30BF0();
  (*(v93 + 8))(v48, v61);
  v106[5] = v60;
  v106[6] = v39;
  v62 = v89;
  v63 = swift_getWitnessTable();
  v64 = v87;
  sub_1A3A30B60();
  (*(v92 + 8))(v59, v62);
  v106[3] = v63;
  v106[4] = v42;
  v65 = v91;
  v99 = swift_getWitnessTable();
  v66 = v101;
  v67 = *(v101 + 16);
  v68 = v90;
  v67(v90, v64, v65);
  v69 = *(v66 + 8);
  v101 = v66 + 8;
  v69(v64, v65);
  v71 = v95;
  v70 = v96;
  v72 = v97;
  v81(v95, v97, v96);
  *&v107 = 0;
  BYTE8(v107) = v125;
  *(&v107 + 9) = *v124;
  HIDWORD(v107) = *&v124[3];
  *&v108 = v76;
  BYTE8(v108) = v123;
  *(&v108 + 9) = *v122;
  HIDWORD(v108) = *&v122[3];
  *&v109 = v77;
  BYTE8(v109) = v121;
  *(&v109 + 9) = *v120;
  HIDWORD(v109) = *&v120[3];
  v110.n128_u64[0] = v79;
  v110.n128_u64[1] = v78;
  v106[0] = v71;
  v106[1] = &v107;
  v67(v64, v68, v65);
  v106[2] = v64;
  v105[0] = v70;
  v105[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDFF8, &unk_1A3A78670);
  v105[2] = v65;
  v102 = v84;
  v103 = sub_1A390FA98();
  v104 = v99;
  sub_1A3961B84(v106, 3uLL, v105);
  v69(v68, v65);
  v73 = v85;
  v85(v72, v70);
  v69(v64, v65);
  return v73(v71, v70);
}

uint64_t sub_1A396475C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v42 = a2;
  *(&v42 + 1) = a3;
  *&v43 = a4;
  *(&v43 + 1) = a5;
  v7 = type metadata accessor for EarViewsModifier(0, &v42);
  static IslandAndNotchMetrics.safeAreaDistance(within:)(v7);
  sub_1A3A31480();
  sub_1A3A2F780();
  v8 = v31;
  v9 = v33;
  v10 = v35;
  v11 = v36;
  v39 = 1;
  v38 = v32;
  v37 = v34;
  v12 = sub_1A3A30DB0();
  v13 = sub_1A3A30D60();
  sub_1A39620C0(v13, v12, &v25);

  v14 = v39;
  v15 = v38;
  v16 = v30;
  v41 = v30;
  v17 = v37;
  v19 = v26;
  v18 = v27;
  v40[2] = v27;
  v40[3] = v28;
  v20 = v28;
  v40[4] = v29;
  v21 = v25;
  v40[0] = v25;
  v40[1] = v26;
  *a6 = 0;
  *(a6 + 8) = v14;
  *(a6 + 16) = v8;
  *(a6 + 24) = v15;
  *(a6 + 32) = v9;
  *(a6 + 40) = v17;
  *(a6 + 48) = v10;
  *(a6 + 56) = v11;
  *(a6 + 96) = v18;
  *(a6 + 112) = v20;
  v22 = v29;
  *(a6 + 128) = v29;
  *(a6 + 144) = v16;
  *(a6 + 64) = v21;
  *(a6 + 80) = v19;
  v47 = v16;
  v44 = v18;
  v45 = v20;
  v46 = v22;
  v42 = v21;
  v43 = v19;
  sub_1A388F6D8(v40, v24, &qword_1EB0FEC88, &qword_1A3A786A0);
  return sub_1A388F740(&v42, &qword_1EB0FEC88, &qword_1A3A786A0);
}

double sub_1A3964900(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  if (*(v1 + 72))
  {
    static IslandAndNotchMetrics.bottomEdgeDistance(within:)(a1);
    v5 = v4;
    if ((v3 & 1) == 0)
    {
      return v5 - v2;
    }

    goto LABEL_5;
  }

  v5 = *(v1 + 64);
  if (*(v1 + 56))
  {
LABEL_5:
    static IslandAndNotchMetrics.topEdgeDistance(within:)(a1);
    v2 = v6;
  }

  return v5 - v2;
}

double sub_1A39649B8(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1A39649DC()
{
  result = qword_1EB0FF4D0;
  if (!qword_1EB0FF4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF4C8, &qword_1A3A78680);
    sub_1A3964A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF4D0);
  }

  return result;
}

unint64_t sub_1A3964A60()
{
  result = qword_1EB0FF4D8;
  if (!qword_1EB0FF4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF4E0, &qword_1A3A78688);
    sub_1A3964AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF4D8);
  }

  return result;
}

unint64_t sub_1A3964AEC()
{
  result = qword_1EB0FF4E8;
  if (!qword_1EB0FF4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF4F0, &qword_1A3A78690);
    sub_1A38A08F8(&qword_1EB0FF4F8, &qword_1EB0FF500, &qword_1A3A78698, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF4E8);
  }

  return result;
}

id static IslandAndNotchMetrics.width(from:)(uint64_t a1, double a2)
{
  result = MobileGestalt_get_current_device();
  if (*&result == 0.0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  v5 = MobileGestalt_copy_productType_obj();

  if (!v5)
  {
    *&result = 0.0;
    return result;
  }

  v6 = sub_1A3A31850();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  IslandAndNotchMetrics.init(rawValue:)(v9);
  *&result = 0.0;
  v10 = 229.0;
  switch(v17)
  {
    case 1:
    case 2:
    case 5:
    case 6:
    case 7:
      *&v11 = 208.0;
      goto LABEL_8;
    case 3:
    case 12:
    case 30:
      return result;
    case 4:
      *&v11 = 216.0;
      goto LABEL_8;
    case 8:
      *&v11 = 166.0;
      goto LABEL_8;
    case 9:
    case 10:
    case 11:
    case 13:
    case 14:
    case 25:
      *&v11 = 160.0;
      goto LABEL_8;
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
      *&v11 = 124.0;
LABEL_8:
      v10 = *&v11;
      break;
    default:
      break;
  }

  result = MobileGestalt_get_current_device();
  if (*&result == 0.0)
  {
    goto LABEL_15;
  }

  v12 = result;
  mainScreenWidth = MobileGestalt_get_mainScreenWidth();

  result = MobileGestalt_get_current_device();
  if (*&result != 0.0)
  {
    v14 = result;
    MobileGestalt_get_mainScreenScale();
    v16 = v15;

    *&result = v10 * (a2 / (mainScreenWidth / v16));
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

void static IslandAndNotchMetrics.topEdgeDistance(within:)(uint64_t a1)
{
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = MobileGestalt_copy_productType_obj();

  if (v3)
  {
    v4 = sub_1A3A31850();
    v6 = v5;

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    IslandAndNotchMetrics.init(rawValue:)(v7);
    if (v12 != 30)
    {
      v8 = MobileGestalt_get_current_device();
      if (v8)
      {
        v9 = v8;
        MobileGestalt_get_mainScreenHeight();

        v10 = MobileGestalt_get_current_device();
        if (v10)
        {
          v11 = v10;
          MobileGestalt_get_mainScreenScale();

          return;
        }

LABEL_10:
        __break(1u);
        return;
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }
  }
}

void static IslandAndNotchMetrics.bottomEdgeDistance(within:)(uint64_t a1)
{
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = MobileGestalt_copy_productType_obj();

  if (v3)
  {
    v4 = sub_1A3A31850();
    v6 = v5;

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    IslandAndNotchMetrics.init(rawValue:)(v7);
    if (v12 != 30)
    {
      v8 = MobileGestalt_get_current_device();
      if (v8)
      {
        v9 = v8;
        MobileGestalt_get_mainScreenHeight();

        v10 = MobileGestalt_get_current_device();
        if (v10)
        {
          v11 = v10;
          MobileGestalt_get_mainScreenScale();

          return;
        }

LABEL_10:
        __break(1u);
        return;
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }
  }
}

void static IslandAndNotchMetrics.safeAreaDistance(within:)(uint64_t a1)
{
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = MobileGestalt_copy_productType_obj();

  if (v3)
  {
    v4 = sub_1A3A31850();
    v6 = v5;

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    IslandAndNotchMetrics.init(rawValue:)(v7);
    if (v12 != 30)
    {
      v8 = MobileGestalt_get_current_device();
      if (v8)
      {
        v9 = v8;
        MobileGestalt_get_mainScreenHeight();

        v10 = MobileGestalt_get_current_device();
        if (v10)
        {
          v11 = v10;
          MobileGestalt_get_mainScreenScale();

          return;
        }

LABEL_10:
        __break(1u);
        return;
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }
  }
}

id static IslandAndNotchMetrics.widthOfEars(from:adjustment:)(char *a1, double a2)
{
  v3 = *a1;
  v4 = static IslandAndNotchMetrics.width(from:)(a1, a2);
  if (v5)
  {
    goto LABEL_10;
  }

  v6 = *&v4;
  result = MobileGestalt_get_current_device();
  if (*&result == 0.0)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = MobileGestalt_copy_productType_obj();

  if (!v9)
  {
LABEL_10:
    *&result = 0.0;
    return result;
  }

  v10 = v6;
  v11 = sub_1A3A31850();
  v13 = v12;

  v14 = (a2 - v10) * 0.5;
  if (v3)
  {
    v15._countAndFlagsBits = v11;
    v15._object = v13;
    IslandAndNotchMetrics.init(rawValue:)(v15);
    v16 = 0.0;
    v17 = 5.0;
    if (((1 << v18) & 0x111) == 0)
    {
      v17 = 0.0;
    }

    if (v18 <= 8u)
    {
      v16 = v17;
    }

    *&result = v14 - v16;
  }

  else
  {

    *&result = v14;
  }

  return result;
}

CameraUI::IslandAndNotchMetrics_optional __swiftcall IslandAndNotchMetrics.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A3A321E0();

  v5 = 0;
  v6 = 12;
  switch(v3)
  {
    case 0:
      goto LABEL_24;
    case 1:
      v5 = 1;
      goto LABEL_24;
    case 2:
      v5 = 2;
      goto LABEL_24;
    case 3:
      v5 = 3;
      goto LABEL_24;
    case 4:
      v5 = 4;
      goto LABEL_24;
    case 5:
      v5 = 5;
      goto LABEL_24;
    case 6:
      v5 = 6;
      goto LABEL_24;
    case 7:
      v5 = 7;
      goto LABEL_24;
    case 8:
      v5 = 8;
      goto LABEL_24;
    case 9:
      v5 = 9;
      goto LABEL_24;
    case 10:
      v5 = 10;
      goto LABEL_24;
    case 11:
      v5 = 11;
LABEL_24:
      v6 = v5;
      break;
    case 12:
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    default:
      v6 = 30;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t IslandAndNotchMetrics.Adjustment.hashValue.getter()
{
  v1 = *v0;
  sub_1A3A322C0();
  MEMORY[0x1A58F8150](v1);
  return sub_1A3A32300();
}

void static IslandAndNotchMetrics.frame(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = static IslandAndNotchMetrics.width(from:)(a1, a3);
  v6 = 0uLL;
  v7 = 0.0;
  if (v8)
  {
    v9 = 0;
    v10 = 1;
LABEL_8:
    *a2 = v6;
    *(a2 + 16) = v9;
    *(a2 + 24) = v7;
    *(a2 + 32) = v10;
    return;
  }

  v9 = v5;
  v11 = COERCE_DOUBLE(static IslandAndNotchMetrics.width(from:)(v5, a3));
  if (v12)
  {
LABEL_7:
    v9 = 0;
    v10 = 1;
    v6 = 0uLL;
    goto LABEL_8;
  }

  v13 = v11;
  v14 = MobileGestalt_get_current_device();
  if (v14)
  {
    v15 = v14;
    v16 = MobileGestalt_copy_productType_obj();

    if (v16)
    {

      static IslandAndNotchMetrics.topEdgeDistance(within:)(v17);
      v21 = v18;
      static IslandAndNotchMetrics.bottomEdgeDistance(within:)(v19);
      v10 = 0;
      v7 = v20 - v21;
      *&v6 = (a3 - v13) * 0.5;
      *(&v6 + 1) = v21;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t IslandAndNotchMetrics.rawValue.getter()
{
  result = 0x3231656E6F685069;
  switch(*v0)
  {
    case 4:
      result = 0x3331656E6F685069;
      break;
    case 5:
      result = 0x3331656E6F685069;
      break;
    case 6:
      result = 0x3331656E6F685069;
      break;
    case 7:
      result = 0x3331656E6F685069;
      break;
    case 8:
      result = 0x3431656E6F685069;
      break;
    case 9:
      result = 0x3431656E6F685069;
      break;
    case 0xA:
      result = 0x3431656E6F685069;
      break;
    case 0xB:
      result = 0x3431656E6F685069;
      break;
    case 0xC:
      result = 0x3431656E6F685069;
      break;
    case 0xD:
      result = 0x3431656E6F685069;
      break;
    case 0xE:
      result = 0x3431656E6F685069;
      break;
    case 0xF:
      result = 0x3531656E6F685069;
      break;
    case 0x10:
      result = 0x3531656E6F685069;
      break;
    case 0x11:
      result = 0x3531656E6F685069;
      break;
    case 0x12:
      result = 0x3531656E6F685069;
      break;
    case 0x13:
      result = 0x3631656E6F685069;
      break;
    case 0x14:
      result = 0x3631656E6F685069;
      break;
    case 0x15:
      result = 0x3731656E6F685069;
      break;
    case 0x16:
      result = 0x3731656E6F685069;
      break;
    case 0x17:
      result = 0x3731656E6F685069;
      break;
    case 0x18:
      result = 0x3731656E6F685069;
      break;
    case 0x19:
      result = 0x3731656E6F685069;
      break;
    case 0x1A:
      result = 0x3831656E6F685069;
      break;
    case 0x1B:
      result = 0x3831656E6F685069;
      break;
    case 0x1C:
      result = 0x3831656E6F685069;
      break;
    case 0x1D:
      result = 0x3831656E6F685069;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1A396571C()
{
  result = qword_1EB0FF510;
  if (!qword_1EB0FF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF510);
  }

  return result;
}

uint64_t sub_1A3965770()
{
  v0 = IslandAndNotchMetrics.rawValue.getter();
  v2 = v1;
  if (v0 == IslandAndNotchMetrics.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1A3A321C0();
  }

  return v5 & 1;
}

unint64_t sub_1A3965810()
{
  result = qword_1EB0FF518;
  if (!qword_1EB0FF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF518);
  }

  return result;
}

uint64_t sub_1A3965864()
{
  sub_1A3A322C0();
  IslandAndNotchMetrics.rawValue.getter();
  sub_1A3A318B0();

  return sub_1A3A32300();
}

uint64_t sub_1A39658CC(uint64_t a1)
{
  IslandAndNotchMetrics.rawValue.getter();
  sub_1A3A318B0();
}

uint64_t sub_1A3965930(uint64_t a1)
{
  sub_1A3A322C0();
  IslandAndNotchMetrics.rawValue.getter();
  sub_1A3A318B0();

  return sub_1A3A32300();
}

uint64_t sub_1A39659A0@<X0>(uint64_t *a1@<X8>)
{
  result = IslandAndNotchMetrics.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for IslandAndNotchMetrics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IslandAndNotchMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1A3965B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3A2ECE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8CameraUI20CAMDockKitController_lastTrackingSummary;
  if (*(a1 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_lastTrackingSummary) || (v9 = OBJC_IVAR____TtC8CameraUI20CAMDockKitController_trackingSummaryResetTime, swift_beginAccess(), (*(v5 + 16))(v7, a1 + v9, v4), sub_1A3A2EC90(), v11 = v10, (*(v5 + 8))(v7, v4), fabs(v11) >= 1.0))
  {
    *(a1 + v8) = a2;
    sub_1A3A2EA60();
  }
}

id CAMDockKitController.matchingTrackedSubjectForAnstID(_:)(uint64_t a1)
{
  v3 = sub_1A3A2ECE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v1 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_lastTrackingSummary))
  {
    return 0;
  }

  sub_1A3A2EA60();
  sub_1A3A2F010();
  sub_1A3A2EC90();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  if (v8 >= 1.0)
  {
LABEL_15:

    return 0;
  }

  v9 = sub_1A3A2F030();
  v10 = v9;
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = sub_1A3A320B0();
  if (!v11)
  {
LABEL_22:

    return 0;
  }

LABEL_5:
  v12 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1A58F7DC0](v12, v10);
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_21;
      }

      sub_1A3A2EA60();
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_14;
      }
    }

    if (sub_1A3A2F000() == a1)
    {
      break;
    }

    ++v12;
    if (v13 == v11)
    {
      goto LABEL_22;
    }
  }

  v14 = type metadata accessor for CAMDockKitTrackedObject();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC8CameraUI23CAMDockKitTrackedObject_identifier] = sub_1A3A2F000();
  v16 = sub_1A3A2EFE0();
  if (v17)
  {
    v18 = -1;
  }

  else
  {
    v18 = v16;
  }

  *&v15[OBJC_IVAR____TtC8CameraUI23CAMDockKitTrackedObject_saliency] = v18;
  v15[OBJC_IVAR____TtC8CameraUI23CAMDockKitTrackedObject_trackingLock] = sub_1A3A2EFF0() & 1;
  v21.receiver = v15;
  v21.super_class = v14;
  v19 = objc_msgSendSuper2(&v21, sel_init);

  return v19;
}

Swift::Bool __swiftcall CAMDockKitController.isTrackingLocked()()
{
  if (!*(v0 + OBJC_IVAR____TtC8CameraUI20CAMDockKitController_lastTrackingSummary))
  {
    return 0;
  }

  sub_1A3A2EA60();
  v1 = sub_1A3A2F030();

  v8 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1A58F7DC0](v3, v1);
        v4 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v5 = v8;
          goto LABEL_20;
        }

LABEL_10:
        if (sub_1A3A2EFF0())
        {
          sub_1A3A31FA0();
          sub_1A3A31FE0();
          sub_1A3A31FF0();
          sub_1A3A31FB0();
        }

        else
        {
        }

        ++v3;
        if (v4 == v2)
        {
          goto LABEL_15;
        }
      }

      if (v3 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_18:
      v2 = sub_1A3A320B0();
      if (!v2)
      {
        goto LABEL_19;
      }
    }

    sub_1A3A2EA60();
    v4 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

LABEL_19:
  v5 = MEMORY[0x1E69E7CC0];
LABEL_20:

  if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    v7 = sub_1A3A320B0();
  }

  else
  {
    v7 = *(v5 + 16);
  }

  return v7 > 0;
}

id CAMDockKitTrackedObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CAMDockKitTrackedObject.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CAMDockKitTrackedObject();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1A3966334(uint64_t a1)
{
  v2 = sub_1A3A31650();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A3A31670();
  v6 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A2F040();
  v9 = sub_1A3A2EC40();
  v11 = v10;
  v12 = sub_1A3A2F020();
  sub_1A3966640(v9, v11);
  if (v12)
  {
    sub_1A38C9AFC();
    v13 = sub_1A3A31C70();
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    *(v14 + 24) = v12;
    aBlock[4] = sub_1A3966694;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3904E20;
    aBlock[3] = &block_descriptor_6;
    v15 = _Block_copy(aBlock);
    v16 = v1;
    sub_1A3A2EA60();

    sub_1A3A31660();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A38C9B68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD668, qword_1A3A741D0);
    sub_1A38C9BC0();
    sub_1A3A31E80();
    MEMORY[0x1A58F7B00](0, v8, v5, v15);
    _Block_release(v15);

    (*(v3 + 8))(v5, v2);
    (*(v6 + 8))(v8, v18);
  }
}

double sub_1A3966640(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A3A2EA60();
}

id sub_1A39666B4()
{
  v1 = OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_scenePhaseModel;
  type metadata accessor for ChromeScenePhaseModel(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
  v4 = *MEMORY[0x1E697BE38];
  v5 = sub_1A3A2F540();
  (*(*(v5 - 8) + 104))(v2 + v3, v4, v5);
  sub_1A3A2F0B0();
  *&v0[v1] = v2;
  *&v0[OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState] = 256;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ChromeScenePhaseView();
  v6 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v6 setHidden_];
  v7 = [objc_opt_self() clearColor];
  [v6 setBackgroundColor_];

  [v6 setUserInteractionEnabled_];
  sub_1A396737C();
  sub_1A3966B84();

  return v6;
}

void sub_1A3966A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11.receiver = v3;
  v11.super_class = type metadata accessor for ChromeScenePhaseView();
  objc_msgSendSuper2(&v11, sel_didMoveToWindow);
  v4 = [v3 window];
  v5 = [v4 windowScene];

  if (v5)
  {
    v6 = [v5 activationState];
    v7 = v6 == 2 || v6 == -1;
    v8 = &v3[OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState];
    v9 = v3[OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState];
    v10 = v3[OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState + 1];
    *v8 = v7;
    v8[1] = (v6 + 1 > 3) | (2u >> ((v6 + 1) & 0xF)) & 1;
    if (v7 != v9 || ((((v6 + 1 > 3) | (2u >> ((v6 + 1) & 0xF))) ^ v10) & 1) != 0)
    {
      sub_1A396737C();
    }
  }
}

void sub_1A3966B84()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = *MEMORY[0x1E69DE348];
  v2 = objc_opt_self();
  v3 = [v2 mainQueue];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = sub_1A3967AB4;
  v27 = v4;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1A3966FA0;
  v25 = &block_descriptor_7;
  v5 = _Block_copy(&v22);

  v6 = [v0 addObserverForName:v1 object:0 queue:v3 usingBlock:v5];
  _Block_release(v5);
  swift_unknownObjectRelease();

  v7 = *MEMORY[0x1E69DE360];
  v8 = [v2 mainQueue];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = sub_1A3967B00;
  v27 = v9;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1A3966FA0;
  v25 = &block_descriptor_12;
  v10 = _Block_copy(&v22);

  v11 = [v0 addObserverForName:v7 object:0 queue:v8 usingBlock:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();

  v12 = *MEMORY[0x1E69DE338];
  v13 = [v2 mainQueue];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = sub_1A3967B34;
  v27 = v14;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1A3966FA0;
  v25 = &block_descriptor_16;
  v15 = _Block_copy(&v22);

  v16 = [v0 addObserverForName:v12 object:0 queue:v13 usingBlock:v15];
  _Block_release(v15);
  swift_unknownObjectRelease();

  v17 = *MEMORY[0x1E69DE358];
  v18 = [v2 mainQueue];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = sub_1A3967B68;
  v27 = v19;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1A3966FA0;
  v25 = &block_descriptor_20;
  v20 = _Block_copy(&v22);

  v21 = [v0 addObserverForName:v17 object:0 queue:v18 usingBlock:v20];
  _Block_release(v20);

  swift_unknownObjectRelease();
}

uint64_t sub_1A3966FA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A3A2EB60();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1A3A2EB40();
  sub_1A3A2EA60();
  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void *sub_1A3967094(uint64_t a1, uint64_t a2, char a3, void (*a4)(void *, void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_1A3A2EB50();
    a4(v8, a3 & 1);

    return sub_1A395AE3C(v8);
  }

  return result;
}

void sub_1A396711C(uint64_t a1, char a2)
{
  sub_1A39679F8(a1, v12);
  if (v13)
  {
    sub_1A3967A68();
    if (swift_dynamicCast())
    {
      v4 = [v2 window];
      v5 = [v4 windowScene];

      if (v5)
      {
        v6 = v2;
        v7 = v11;
        v8 = sub_1A3A31D10();

        if (v8)
        {
          v9 = &v6[OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState];
          v10 = v6[OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState + 1];
          *v9 = v6[OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState];
          v9[1] = a2 & 1;
          if (v10 != (a2 & 1))
          {
            sub_1A396737C();
          }
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1A395AE3C(v12);
  }
}

void sub_1A396724C(uint64_t a1, char a2)
{
  sub_1A39679F8(a1, v13);
  if (v14)
  {
    sub_1A3967A68();
    if (swift_dynamicCast())
    {
      v4 = [v2 window];
      v5 = [v4 windowScene];

      if (v5)
      {
        v6 = v2;
        v7 = v12;
        v8 = sub_1A3A31D10();

        if (v8)
        {
          v9 = &v6[OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState];
          v10 = v6[OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState + 1];
          v11 = v6[OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState];
          *v9 = a2 & 1;
          v9[1] = v10;
          if (v11 != (a2 & 1))
          {
            sub_1A396737C();
          }
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1A395AE3C(v13);
  }
}

uint64_t sub_1A396737C()
{
  v1 = sub_1A3A2F540();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_scenePhaseModel);
  if (*(v0 + OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState) == 1)
  {
    (*(v2 + 104))(v7, *MEMORY[0x1E697BE30], v1, v9);
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState + 1))
    {
      v13 = MEMORY[0x1E697BE38];
    }

    else
    {
      v13 = MEMORY[0x1E697BE40];
    }

    (*(v2 + 104))(v7, *v13, v1, v9);
  }

  (*(v2 + 32))(v11, v7, v1);
  swift_getKeyPath("(");
  v18[1] = v12;
  sub_1A39679B0(&qword_1ED996CF8, type metadata accessor for ChromeScenePhaseModel, &unk_1A3A78C78);
  sub_1A3A2F080();

  v14 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
  swift_beginAccess();
  v15 = *(v2 + 16);
  v15(v4, v12 + v14, v1);
  sub_1A39679B0(&qword_1ED996CF0, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
  LOBYTE(v14) = sub_1A3A31790();
  v16 = *(v2 + 8);
  v16(v4, v1);
  if ((v14 & 1) == 0)
  {
    v15(v4, v11, v1);
    sub_1A3967C08(v4);
  }

  return (v16)(v11, v1);
}

uint64_t sub_1A396765C()
{
  sub_1A3A322C0();
  sub_1A3A322E0();
  sub_1A3A322E0();
  return sub_1A3A32300();
}

uint64_t sub_1A39676FC(uint64_t a1)
{
  sub_1A3A322C0();
  sub_1A3A322E0();
  sub_1A3A322E0();
  return sub_1A3A32300();
}

id sub_1A3967780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for ChromeScenePhaseView();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for ChromeScenePhaseView.SceneState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for ChromeScenePhaseView.SceneState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A396795C()
{
  result = qword_1EB0FF548;
  if (!qword_1EB0FF548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF548);
  }

  return result;
}

uint64_t sub_1A39679B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A39679F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE508, &unk_1A3A77940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A3967A68()
{
  result = qword_1ED998270;
  if (!qword_1ED998270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED998270);
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A3A2EA60();
}

uint64_t sub_1A3967BB4()
{
  sub_1A3968434();
  sub_1A3A2FEF0();
  return v1;
}

uint64_t sub_1A3967C08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A3A2F540();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1A39683EC(&qword_1ED996CF0, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
  v14[0] = a1;
  LOBYTE(a1) = sub_1A3A31790();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1A3A78C98);
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_1A39683EC(&qword_1ED996CF8, type metadata accessor for ChromeScenePhaseModel, &unk_1A3A78C78);
    sub_1A3A2F070();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_1A3967EA8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(byte_1A3A78C98);
  v6 = v1;
  sub_1A39683EC(&qword_1ED996CF8, type metadata accessor for ChromeScenePhaseModel, &unk_1A3A78C78);
  sub_1A3A2F080();

  v3 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
  swift_beginAccess();
  v4 = sub_1A3A2F540();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1A3967FA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A78C98);
  sub_1A39683EC(&qword_1ED996CF8, type metadata accessor for ChromeScenePhaseModel, &unk_1A3A78C78);
  sub_1A3A2F080();

  v4 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
  swift_beginAccess();
  v5 = sub_1A3A2F540();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1A3968098(uint64_t a1)
{
  v2 = sub_1A3A2F540();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1A3967C08(v5);
}

uint64_t sub_1A3968164(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
  swift_beginAccess();
  v5 = sub_1A3A2F540();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1A3968200()
{
  v1 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
  v2 = sub_1A3A2F540();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___observationRegistrar;
  v4 = sub_1A3A2F0C0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1A3968304(uint64_t a1)
{
  result = sub_1A3A2F540();
  if (v2 <= 0x3F)
  {
    result = sub_1A3A2F0C0();
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

uint64_t sub_1A39683EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A3968434()
{
  result = qword_1ED9983B8;
  if (!qword_1ED9983B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9983B8);
  }

  return result;
}

void sub_1A39684E4(uint64_t a1)
{
  sub_1A3968568(319);
  if (v1 <= 0x3F)
  {
    sub_1A39685CC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A3968568(uint64_t a1)
{
  if (!qword_1ED998428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF558, qword_1A3A78D38);
    v1 = sub_1A3A2F640();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED998428);
    }
  }
}

void sub_1A39685CC(uint64_t a1)
{
  if (!qword_1ED998430)
  {
    sub_1A3A2F540();
    v1 = sub_1A3A2F640();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED998430);
    }
  }
}

uint64_t sub_1A3968624@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_1A3A78EF8);
  sub_1A3969880(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  *a2 = *(v3 + 944);
  return sub_1A3A2EA60();
}

id sub_1A39686FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aH_4);
  sub_1A3969880(qword_1ED998460, type metadata accessor for ChromeFilterViewModel, &unk_1A3A71B28);
  sub_1A3A2F080();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_1A39687B4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A3905698(v1, v3);
}

void sub_1A39687E4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A78F20);
  sub_1A3969880(qword_1ED998460, type metadata accessor for ChromeFilterViewModel, &unk_1A3A71B28);
  sub_1A3A2F080();

  *a2 = *(v3 + 32);
}

uint64_t sub_1A39688B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_1A3A79018);
  sub_1A3969880(qword_1ED998460, type metadata accessor for ChromeFilterViewModel, &unk_1A3A71B28);
  sub_1A3A2F080();

  *a2 = *(v3 + 40);
  return sub_1A3A2EA50();
}

void sub_1A396898C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A78F48);
  sub_1A3969880(qword_1ED998460, type metadata accessor for ChromeFilterViewModel, &unk_1A3A71B28);
  sub_1A3A2F080();

  *a2 = *(v3 + 48);
}

void sub_1A3968A5C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A78F70);
  sub_1A3969880(qword_1ED998460, type metadata accessor for ChromeFilterViewModel, &unk_1A3A71B28);
  sub_1A3A2F080();

  *a2 = *(v3 + 56);
}

void sub_1A3968B2C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A78F98);
  sub_1A3969880(qword_1ED998460, type metadata accessor for ChromeFilterViewModel, &unk_1A3A71B28);
  sub_1A3A2F080();

  *a2 = *(v3 + 64);
}

void sub_1A3968BFC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aH_5);
  sub_1A3969880(qword_1ED998460, type metadata accessor for ChromeFilterViewModel, &unk_1A3A71B28);
  sub_1A3A2F080();

  *a2 = *(v3 + 72);
}

id sub_1A3968CCC(uint64_t a1, unsigned __int8 *a2, char a3)
{
  v5 = sub_1A3A2FEE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(CAMFilterScrubberView) init];
  [v9 setTransparentGradients];
  sub_1A3A2EA60();
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v10 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    a2 = v18;
  }

  swift_getKeyPath(byte_1A3A79040);
  v18 = a2;
  sub_1A3969880(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v11 = a2[392];

  v12 = 68.0;
  if (v11)
  {
    v12 = 56.0;
  }

  [v9 setGradientInsets_];

  [v9 setDotIndicatorBehavior_];
  [v9 setPassThroughTouchesInFullyTransparentAreas_];

  [v9 setCellEffect_];
  [v9 setCornerStyle_];

  v13 = v9;
  v14 = sub_1A3A31810();
  [v13 setAccessibilityIdentifier_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF5E0, &qword_1A3A79068);
  sub_1A3A304D0();
  v15 = v18;
  [v13 setDelegate_];

  return v13;
}

void sub_1A3968FF0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_1A3A2FEE0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A2EA60();
  if ((a4 & 1) == 0)
  {
    sub_1A3A31C30();
    v11 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
    a3 = v19;
  }

  swift_getKeyPath(asc_1A3A78EF8);
  v19 = a3;
  sub_1A3969880(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v12 = *(a3 + 944);
  sub_1A3A2EA60();

  swift_getKeyPath(byte_1A3A78F20);
  v19 = v12;
  sub_1A3969880(qword_1ED998460, type metadata accessor for ChromeFilterViewModel, &unk_1A3A71B28);
  sub_1A3A2F080();

  [a1 setItemCount_];
  swift_getKeyPath(byte_1A3A78F48);
  v19 = v12;
  sub_1A3A2F080();

  [a1 setDefaultIndex_];
  swift_getKeyPath(byte_1A3A78F70);
  v19 = v12;
  sub_1A3A2F080();

  [a1 setSelectedIndex_];
  swift_getKeyPath(byte_1A3A78F98);
  v19 = v12;
  sub_1A3A2F080();

  [a1 setMarkedIndex_];
  swift_getKeyPath(aH_5);
  v19 = v12;
  sub_1A3A2F080();

  [a1 setSuspended_];
  swift_getKeyPath(aH_4);
  v19 = v12;
  sub_1A3A2F080();

  v19 = *(v12 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4A8, &qword_1A3A79010);
  [a1 setThumbnailContents_];
  swift_unknownObjectRelease();
  swift_getKeyPath(asc_1A3A79018);
  v19 = v12;
  sub_1A3A2F080();

  sub_1A3A2EA50();
  v13 = sub_1A3A31990();

  [a1 setItemDisplayNames_];

  swift_getKeyPath(byte_1A3A78F70);
  v19 = v12;
  sub_1A3A2F080();

  v14 = *(v12 + 56);
  swift_getKeyPath(asc_1A3A79018);
  v19 = v12;
  sub_1A3A2F080();

  if (v14 >= *(*(v12 + 40) + 16))
  {
    v17 = 0;
    goto LABEL_8;
  }

  swift_getKeyPath(asc_1A3A79018);
  v19 = v12;
  sub_1A3A2F080();

  v15 = *(v12 + 40);
  swift_getKeyPath(byte_1A3A78F70);
  v19 = v12;
  sub_1A3A2EA50();
  sub_1A3A2F080();

  v16 = *(v12 + 56);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *(v15 + 16))
  {
    sub_1A3A2EA50();

    v17 = sub_1A3A31810();

LABEL_8:
    [a1 setAccessibilityValue_];

    return;
  }

  __break(1u);
}

void *sub_1A3969710@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = type metadata accessor for ChromeFilterScrubber.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV8CameraUI20ChromeFilterScrubber11Coordinator_parent];
  *v7 = v3;
  v7[8] = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  sub_1A3A2EA60();
  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1A396978C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A39698C8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A39697F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A39698C8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A3969854(uint64_t a1)
{
  sub_1A39698C8();
  sub_1A3A301A0();
  __break(1u);
}

uint64_t sub_1A3969880(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A39698C8()
{
  result = qword_1EB0FF5E8;
  if (!qword_1EB0FF5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF5E8);
  }

  return result;
}

uint64_t type metadata accessor for GlassCircleElementButton(uint64_t a1)
{
  result = qword_1ED9984C0;
  if (!qword_1ED9984C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3969990(uint64_t a1)
{
  sub_1A3A30EF0();
  if (v1 <= 0x3F)
  {
    sub_1A394A6AC(319);
    if (v2 <= 0x3F)
    {
      sub_1A3969A58();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A3969A58()
{
  if (!qword_1EB0FCF80)
  {
    v0 = sub_1A3A2F640();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0FCF80);
    }
  }
}

void sub_1A3969AC4(uint64_t a1@<X8>)
{
  v80 = a1;
  v87 = sub_1A3A2FEE0();
  v89 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v79 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v75 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v75 - v8;
  v9 = type metadata accessor for GlassCircleElementButton(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF5F0, &qword_1A3A790E0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v75 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF5F8, &qword_1A3A790E8);
  v83 = *(v16 - 8);
  v84 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v75 - v17;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF600, &qword_1A3A790F0);
  MEMORY[0x1EEE9AC00](v92);
  v86 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v91 = &v75 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v90 = &v75 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v75 = &v75 - v25;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF608, &qword_1A3A790F8);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v75 - v26;
  sub_1A396B3B8(v1, &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GlassCircleElementButton);
  v27 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v28 = swift_allocObject();
  sub_1A396AFA4(&v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  v93 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF610, &qword_1A3A79100);
  sub_1A396B070();
  sub_1A3A30FE0();
  v85 = v9;
  v29 = *(v1 + *(v9 + 24));
  v30 = sub_1A396AE48();
  v94 = v29;
  LOBYTE(v95) = v30 & 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF618, &qword_1A3A79108);
  v32 = sub_1A38A08F8(&qword_1ED998518, &qword_1EB0FF5F0, &qword_1A3A790E0, MEMORY[0x1E697D680]);
  v33 = sub_1A38A08F8(&qword_1ED998520, &qword_1EB0FF618, &qword_1A3A79108, &unk_1A3A82F98);
  sub_1A3A30970();
  (*(v13 + 8))(v15, v12);
  v34 = *v1;
  if (*v1 != 15 && v34 != 16)
  {
    v94 = sub_1A39FDA64(*v1);
    v95 = v35;
    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](0x6E6F74747542, 0xE600000000000000);
  }

  v36 = v85;
  v94 = v12;
  v95 = v31;
  v96 = v32;
  v97 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v86;
  v38 = v84;
  sub_1A3A30B70();

  (*(v83 + 8))(v18, v38);
  v39 = v1 + *(v36 + 32);
  v40 = *v39;
  v41 = v39[8];
  sub_1A3A2EA60();
  v42 = v40;
  v43 = v87;
  if ((v41 & 1) == 0)
  {
    sub_1A3A31C30();
    v44 = sub_1A3A305C0();
    sub_1A3A2F270();

    v45 = v88;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v89 + 8))(v45, v43);
    v42 = v94;
  }

  swift_getKeyPath(asc_1A3A79110);
  v94 = v42;
  sub_1A396B370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (!*(v42 + 1192))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1A3A2EA60();
  v46 = sub_1A38BC058(v34);

  v48 = v82;
  (*(v46 + 56))(v47);

  v49 = *(v48 + 16);
  v50 = *(v48 + 24);
  sub_1A3A2EA50();
  sub_1A3890834(v48);
  v94 = v49;
  v95 = v50;
  sub_1A389FD78();
  sub_1A3A2FA10();

  sub_1A3666974(v37);
  sub_1A3A2EA60();
  v51 = v40;
  if ((v41 & 1) == 0)
  {
    sub_1A3A31C30();
    v52 = sub_1A3A305C0();
    sub_1A3A2F270();

    v53 = v88;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v89 + 8))(v53, v43);
    v51 = v94;
  }

  swift_getKeyPath(asc_1A3A79110);
  v94 = v51;
  sub_1A3A2F080();

  if (!*(v51 + 1192))
  {
    goto LABEL_17;
  }

  sub_1A3A2EA60();
  v54 = sub_1A38BC058(v34);

  v56 = v81;
  (*(v54 + 56))(v55);

  sub_1A3A2EA50();
  sub_1A3890834(v56);
  v57 = v91;
  sub_1A3A2FA70();

  sub_1A3666974(v57);
  sub_1A3A2EA60();
  if ((v41 & 1) == 0)
  {
    sub_1A3A31C30();
    v58 = sub_1A3A305C0();
    sub_1A3A2F270();

    v59 = v88;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v89 + 8))(v59, v43);
    v40 = v94;
  }

  swift_getKeyPath(asc_1A3A79110);
  v94 = v40;
  sub_1A3A2F080();

  if (*(v40 + 1192))
  {
    sub_1A3A2EA60();
    v60 = sub_1A38BC058(v34);

    v62 = v79;
    (*(v60 + 56))(v61);

    v64 = *(v62 + 32);
    v63 = *(v62 + 40);
    sub_1A3A2EA50();
    sub_1A3890834(v62);
    v94 = v64;
    v95 = v63;
    v65 = v75;
    v66 = v90;
    sub_1A3A2FA20();

    sub_1A3666974(v66);
    sub_1A396B1E4();
    v67 = v76;
    sub_1A3A30BC0();
    sub_1A3666974(v65);
    KeyPath = swift_getKeyPath(asc_1A3A79138);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF620, &unk_1A3A79168);
    v70 = v80;
    v71 = (v80 + *(v69 + 36));
    v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD938, &qword_1A3A6F1C0) + 28);
    v73 = *MEMORY[0x1E697F680];
    v74 = sub_1A3A30090();
    (*(*(v74 - 8) + 104))(v71 + v72, v73, v74);
    *v71 = KeyPath;
    (*(v77 + 32))(v70, v67, v78);
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_1A396A6C4(unint64_t *a1)
{
  v2 = sub_1A3A2FEE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GlassCircleElementButton(0);
  v10 = a1 + *(v9 + 32);
  v11 = *v10;
  v12 = v10[8];
  sub_1A3A2EA60();
  v13 = v11;
  v31 = v12;
  if ((v12 & 1) == 0)
  {
    sub_1A3A31C30();
    v14 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v13 = v32;
  }

  v29 = v3;
  v30 = v2;
  v15 = *a1;
  swift_getKeyPath(asc_1A3A79110, v29, v2);
  v32 = v13;
  sub_1A396B370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (v13[149])
  {
    sub_1A3A2EA60();
    v16 = sub_1A38BC058(v15);

    (*(v16 + 56))(v17);

    v18 = *&v8[*(v6 + 44)];
    sub_1A3A2EA60();
    sub_1A3890834(v8);
    v19 = v18(*(a1 + *(v9 + 24)), 0);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    LODWORD(v18) = v24;

    if (v18 <= 0xFB)
    {
      sub_1A3A2EA60();
      if ((v31 & 1) == 0)
      {
        sub_1A3A31C30();
        v26 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v29 + 8))(v5, v30);
        v11 = v32;
      }

      v27 = v11[153];
      v28 = v11[154];
      __swift_project_boxed_opaque_existential_1(v11 + 150, v27);
      (*(v28 + 8))(v19, v21, v23, v25, v11, v27, v28);

      sub_1A3890EA8(v19, v21, v23, v25);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A396AA80(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v29);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD610, &qword_1A3A6E9B0);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v27 - v9;
  v11 = type metadata accessor for GlassCircleElementButton(0);
  v12 = a1 + *(v11 + 32);
  v13 = *v12;
  v14 = v12[8];
  sub_1A3A2EA60();
  if ((v14 & 1) == 0)
  {
    sub_1A3A31C30();
    v15 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v13 = v31;
  }

  v16 = *a1;
  swift_getKeyPath(asc_1A3A79110);
  *&v31 = v13;
  sub_1A396B370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(v13 + 1192))
  {
    sub_1A3A2EA60();
    v17 = sub_1A38BC058(v16);

    (*(v17 + 56))(v18);

    sub_1A396B3B8(&v8[*(v29 + 36)], v10, type metadata accessor for ChromeElementIcon);
    sub_1A3890834(v8);
    v19 = *(v11 + 20);
    KeyPath = swift_getKeyPath(byte_1A3A79178);
    v21 = &v10[*(v28 + 36)];
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEAC8, &qword_1A3A75A10) + 28);
    v23 = sub_1A3A30EF0();
    (*(*(v23 - 8) + 16))(v21 + v22, a1 + v19, v23);
    *v21 = KeyPath;
    sub_1A3A31480();
    sub_1A3A2F780();
    v24 = v30;
    sub_1A396B420(v10, v30);
    v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF610, &qword_1A3A79100) + 36));
    v26 = v32;
    *v25 = v31;
    v25[1] = v26;
    v25[2] = v33;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A396AE48()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for GlassCircleElementButton(0) + 36);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v7 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A3670FF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1A396AFA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassCircleElementButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A396B008()
{
  v1 = *(type metadata accessor for GlassCircleElementButton(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_1A396A6C4(v2);
}

unint64_t sub_1A396B070()
{
  result = qword_1ED998508;
  if (!qword_1ED998508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF610, &qword_1A3A79100);
    sub_1A396B0FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998508);
  }

  return result;
}

unint64_t sub_1A396B0FC()
{
  result = qword_1ED998510;
  if (!qword_1ED998510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD610, &qword_1A3A6E9B0);
    sub_1A396B370(&qword_1ED996630, type metadata accessor for ChromeElementIcon, &unk_1A3A7B6F8);
    sub_1A38A08F8(&qword_1ED997CD0, &qword_1EB0FEAC8, &qword_1A3A75A10, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998510);
  }

  return result;
}

unint64_t sub_1A396B1E4()
{
  result = qword_1ED998528;
  if (!qword_1ED998528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF600, &qword_1A3A790F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF5F0, &qword_1A3A790E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF618, &qword_1A3A79108);
    sub_1A38A08F8(&qword_1ED998518, &qword_1EB0FF5F0, &qword_1A3A790E0, MEMORY[0x1E697D680]);
    sub_1A38A08F8(&qword_1ED998520, &qword_1EB0FF618, &qword_1A3A79108, &unk_1A3A82F98);
    swift_getOpaqueTypeConformance2();
    sub_1A396B370(&qword_1ED9966D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998528);
  }

  return result;
}

uint64_t sub_1A396B370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A396B3B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A396B420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD610, &qword_1A3A6E9B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A396B490()
{
  result = qword_1ED998530;
  if (!qword_1ED998530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF620, &unk_1A3A79168);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF600, &qword_1A3A790F0);
    sub_1A396B1E4();
    swift_getOpaqueTypeConformance2();
    sub_1A38A08F8(&qword_1ED996D00, &qword_1EB0FD938, &qword_1A3A6F1C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998530);
  }

  return result;
}

uint64_t sub_1A396B584(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + 8 * v7 + 32);
      v14 = v11;
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1A3956A20(0, *(v8 + 16) + 1, 1);
          v8 = v15;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_1A3956A20((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + 8 * v10 + 32) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_1A396B790()
{
  sub_1A38E805C(0, &qword_1EB0FF648, 0x1E69DCBA0);
  v1 = [v0 captureMenuOptionSymbolName];
  v2 = [objc_opt_self() systemImageNamed_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF650, &qword_1A3A791C8);
  inited = swift_initStackObject();
  strcpy((inited + 32), "menuIdentifier");
  *(inited + 16) = xmmword_1A3A681C0;
  *(inited + 47) = -18;
  *(inited + 48) = sub_1A3A31810();
  sub_1A3A1DAE0(inited);
  swift_setDeallocating();
  sub_1A388F740(inited + 32, &qword_1EB0FF658, &qword_1A3A791D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF660, &qword_1A3A791D8);
  v4 = sub_1A3A31C00();
  sub_1A38E805C(0, &qword_1EB0FF690, 0x1E69DCC60);
  sub_1A3A31810();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE510, &qword_1A3A74238);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A3A681B0;
  *(v5 + 32) = v4;
  return sub_1A3A31CB0();
}

id sub_1A396BA08()
{
  result = [v0 menuControllerDelegate];
  if (!result)
  {
    return result;
  }

  v2 = [result availableCaptureModes];
  swift_unknownObjectRelease();
  sub_1A38E805C(0, &qword_1ED998538, 0x1E696AD98);
  sub_1A396F784();
  v3 = sub_1A3A31B10();

  v4 = 0;
  v5 = v3 & 0xC000000000000001;
  v6 = v3 + 56;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = qword_1F1654320[v4 + 4];
    v9 = sub_1A3A31B40();
    v10 = v9;
    if (v5)
    {
      v11 = sub_1A3A31EA0();

      if ((v11 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (!*(v3 + 16))
      {

        goto LABEL_4;
      }

      v14 = sub_1A3A31D00();
      v15 = -1 << *(v3 + 32);
      v16 = v14 & ~v15;
      if (((*(v6 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
LABEL_3:

        v5 = v3 & 0xC000000000000001;
        goto LABEL_4;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = *(*(v3 + 48) + 8 * v16);
        v19 = sub_1A3A31D10();

        if (v19)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v6 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v5 = v3 & 0xC000000000000001;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1A3956A20(0, *(v7 + 16) + 1, 1);
    }

    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1A3956A20((v12 > 1), v13 + 1, 1);
    }

    *(v7 + 16) = v13 + 1;
    *(v7 + 8 * v13 + 32) = v8;
LABEL_4:
    ++v4;
  }

  while (v4 != 10);

  MEMORY[0x1EEE9AC00](v20);
  v21 = sub_1A396D8E0(v7, 1, sub_1A396F7EC);

  sub_1A3A31810();
  if (v21 >> 62)
  {
    sub_1A38E805C(0, &qword_1EB0FF640, 0x1E69DCC78);
    sub_1A3A2EA50();
    sub_1A3A32080();
  }

  else
  {
    sub_1A3A2EA50();
    sub_1A3A321D0();
    sub_1A38E805C(0, &qword_1EB0FF640, 0x1E69DCC78);
  }

  sub_1A38E805C(0, &qword_1EB0FF690, 0x1E69DCC60);
  return sub_1A3A31CB0();
}

uint64_t sub_1A396BDA0(uint64_t a1, uint64_t a2)
{
  sub_1A3990574(a1);
  sub_1A38E805C(0, &qword_1EB0FF648, 0x1E69DCBA0);
  sub_1A396DC50(a1);
  v3 = sub_1A3A31810();

  v4 = [objc_opt_self() systemImageNamed_];

  v5 = MEMORY[0x1E69E6530];
  sub_1A3A321A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF698, &qword_1A3A791F0);
  inited = swift_initStackObject();
  strcpy((inited + 32), "menuIdentifier");
  *(inited + 16) = xmmword_1A3A70140;
  *(inited + 47) = -18;
  v7 = sub_1A3A31810();
  type metadata accessor for Identifier(0);
  *(inited + 48) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = 0x65756C6176;
  *(inited + 120) = v5;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = a1;
  sub_1A3A1DBE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF680, &qword_1A3A791E8);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF638, &qword_1A3A791C0);
  return sub_1A3A31C00();
}

uint64_t sub_1A396C040@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1A3918700(*a1);
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = 28239;
    }

    else
    {
      v5 = 6710863;
    }

    if (v4 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    v5 = 1869903169;
  }

  sub_1A38E805C(0, &qword_1EB0FF688, 0x1E69DC8B0);
  MEMORY[0x1A58F7770](v5, v6);

  v7 = sub_1A3A31810();

  v8 = CAMLocalizedFrameworkString(v7, 0);

  sub_1A3A31850();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF698, &qword_1A3A791F0);
  inited = swift_initStackObject();
  strcpy((inited + 32), "menuIdentifier");
  *(inited + 16) = xmmword_1A3A70140;
  *(inited + 47) = -18;
  v10 = sub_1A3A31810();
  type metadata accessor for Identifier(0);
  *(inited + 48) = v10;
  *(inited + 72) = v11;
  *(inited + 80) = 0x65756C6176;
  *(inited + 120) = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = v3;
  sub_1A3A1DBE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF680, &qword_1A3A791E8);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF638, &qword_1A3A791C0);
  result = sub_1A3A31DC0();
  *a2 = result;
  return result;
}

void sub_1A396C3E8(void *a1)
{
  [a1 removeMenuForIdentifier_];
  [a1 removeMenuForIdentifier_];
  [a1 removeMenuForIdentifier_];
  [a1 removeMenuForIdentifier_];
  [a1 removeMenuForIdentifier_];
  v3 = *MEMORY[0x1E69DE170];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A396F68C;
  *(v5 + 24) = v4;
  v19[4] = sub_1A396F694;
  v19[5] = v5;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1A396C7E4;
  v19[3] = &block_descriptor_8;
  v6 = _Block_copy(v19);
  v7 = v1;
  sub_1A3A2EA60();

  [a1 replaceChildrenOfMenuForIdentifier:v3 fromChildrenBlock:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v9 = [v7 captureMenu];
    v10 = *MEMORY[0x1E69DE100];
    [a1 insertChildMenu:v9 atStartOfMenuForIdentifier:*MEMORY[0x1E69DE100]];

    v11 = [v7 cameraRollMenu];
    [a1 insertChildMenu:v11 atStartOfMenuForIdentifier:v10];

    v12 = [v7 timerMenu];
    v13 = *MEMORY[0x1E69DE118];
    [a1 insertChildMenu:v12 atStartOfMenuForIdentifier:*MEMORY[0x1E69DE118]];

    v14 = [v7 livePhotoModeMenu];
    [a1 insertChildMenu:v14 atStartOfMenuForIdentifier:v13];

    v15 = [v7 flashModeMenu];
    [a1 insertChildMenu:v15 atStartOfMenuForIdentifier:v13];

    v16 = [v7 flipCameraMenu];
    [a1 insertChildMenu:v16 atEndOfMenuForIdentifier:v13];

    v17 = [v7 captureModeMenu];
    if (v17)
    {
      v18 = v17;
      [a1 insertChildMenu:v17 atStartOfMenuForIdentifier:*MEMORY[0x1E69DE230]];
    }

    else
    {
    }
  }
}

uint64_t sub_1A396C774(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE510, &qword_1A3A74238);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A3A681B0;
  *(v3 + 32) = [a2 cameraSettingsCommand];
  return v3;
}

id sub_1A396C7E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1A38E805C(0, &qword_1EB0FF640, 0x1E69DCC78);
  sub_1A3A319A0();
  v2();

  v3 = sub_1A3A31990();

  return v3;
}

void sub_1A396C8E4(void *a1)
{
  v2 = v1;
  v4 = [v1 menuControllerDelegate];
  if (v4)
  {
    v5 = v4;
    if ([a1 propertyList])
    {
      sub_1A3A31E60();
      swift_unknownObjectRelease();
    }

    else
    {
      v81 = 0u;
      v82 = 0u;
    }

    v83[0] = v81;
    v83[1] = v82;
    if (!*(&v82 + 1))
    {
      swift_unknownObjectRelease();
      sub_1A388F740(v83, &qword_1EB0FE508, &unk_1A3A77940);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF638, &qword_1A3A791C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_15;
    }

    if (!*(v80 + 16) || (v6 = sub_1A3A1B864(0x6E656449756E656DLL, 0xEE00726569666974), (v7 & 1) == 0))
    {

LABEL_15:
      swift_unknownObjectRelease();
      return;
    }

    sub_1A395ADE0(*(v80 + 56) + 32 * v6, v83);
    type metadata accessor for Identifier(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      swift_unknownObjectRelease();

      return;
    }

    v8 = v81;
    v9 = sub_1A3A31810();
    v10 = sub_1A3A31850();
    v12 = v11;
    if (v10 == sub_1A3A31850() && v12 == v13)
    {

LABEL_19:
      v15 = [v5 currentCaptureMode];
      *&v83[0] = 0;
      *(&v83[0] + 1) = 0xE000000000000000;
      if (v15 > 9)
      {
        sub_1A3A31F20();

        v79 = CAMCaptureMode.description.getter(v15);
        MEMORY[0x1A58F7770](v79);

        sub_1A3A32070("Fatal error", 11, 2, 0xD000000000000018, 0x80000001A3AA5AE0, "CameraUI/CAMSystemMenuController.swift", 38, 2, 243, 0);
        __break(1u);
        return;
      }

      if (((1 << v15) & 0x1AE) != 0)
      {

        v16 = [v5 cameraIsRecording];
        v17 = v16 == 0;
        if (v16)
        {
          v18 = 0xD000000000000021;
        }

        else
        {
          v18 = 0xD000000000000022;
        }

        if (v17)
        {
          v19 = "MENU_CAPTURE_TITLE";
        }

        else
        {
          v19 = "RT_RECORDING_TITLE";
        }

        MEMORY[0x1A58F7770](v18, v19 | 0x8000000000000000);
      }

      else
      {

        MEMORY[0x1A58F7770](0xD000000000000012, 0x80000001A3AA5B00);
      }

      sub_1A39906E0(v15);
      v20 = sub_1A3A31890();
      v22 = v21;

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](95, 0xE100000000000000);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](v20, v22);

      v23 = sub_1A3A31810();

      v24 = CAMLocalizedFrameworkString(v23, 0);

      if (!v24)
      {
        sub_1A3A31850();
        v24 = sub_1A3A31810();
      }

      [a1 setTitle_];

      v25 = [v2 captureMenuOptionSymbolName];
      v26 = [objc_opt_self() systemImageNamed_];

      [a1 setImage_];
      v27 = [v2 menuControllerDelegate];
      if (v27)
      {
        v28 = v27;
        if ([v5 shouldEnableCaptureMenuCommand] && (objc_msgSend(v28, sel_isShowingCameraRoll) & 1) == 0)
        {
          v29 = [a1 attributes] & 0xFFFFFFFFFFFFFFFELL;
        }

        else
        {
          v29 = [a1 attributes] | 1;
        }

        [a1 setAttributes_];
        swift_unknownObjectRelease();
      }

      goto LABEL_15;
    }

    v14 = sub_1A3A321C0();

    if (v14)
    {
      goto LABEL_19;
    }

    v30 = v8;
    v31 = sub_1A3A31810();
    v32 = sub_1A3A31850();
    v34 = v33;
    if (v32 == sub_1A3A31850() && v34 == v35)
    {

LABEL_39:
      [v5 isShowingCameraRoll];
      v37 = sub_1A3A31810();

      v38 = CAMLocalizedFrameworkString(v37, 0);

      if (!v38)
      {
        sub_1A3A31850();
        v38 = sub_1A3A31810();
      }

      [a1 setTitle_];

      goto LABEL_42;
    }

    v36 = sub_1A3A321C0();

    if (v36)
    {
      goto LABEL_39;
    }

    v30 = v30;
    v39 = sub_1A3A31810();
    v40 = sub_1A3A31850();
    v42 = v41;
    if (v40 == sub_1A3A31850() && v42 == v43)
    {

      goto LABEL_50;
    }

    v44 = sub_1A3A321C0();

    if (v44)
    {
LABEL_50:
      [a1 setState_];
      v45 = [v2 menuControllerDelegate];
      if (v45)
      {
        v46 = [v45 isShowingCameraRoll];
        v47 = [a1 attributes];
        if ((v46 & 1) == 0)
        {
LABEL_52:
          v48 = v47 & 0xFFFFFFFFFFFFFFFELL;
LABEL_63:
          [a1 setAttributes_];
          swift_unknownObjectRelease();
          goto LABEL_64;
        }

        goto LABEL_62;
      }

LABEL_64:

      goto LABEL_15;
    }

    v30 = v30;
    v49 = sub_1A3A31810();
    v50 = sub_1A3A31850();
    v52 = v51;
    if (v50 == sub_1A3A31850() && v52 == v53)
    {
    }

    else
    {
      v54 = sub_1A3A321C0();

      if ((v54 & 1) == 0)
      {
        v30 = v30;
        v58 = sub_1A3A31810();
        v59 = sub_1A3A31850();
        v61 = v60;
        if (v59 == sub_1A3A31850() && v61 == v62)
        {
        }

        else
        {
          v63 = sub_1A3A321C0();

          if ((v63 & 1) == 0)
          {
            v30 = v30;
            v65 = sub_1A3A31810();
            v66 = sub_1A3A31850();
            v68 = v67;
            if (v66 == sub_1A3A31850() && v68 == v69)
            {
            }

            else
            {
              v70 = sub_1A3A321C0();

              if ((v70 & 1) == 0)
              {
                v30 = v30;
                v72 = sub_1A3A31810();
                v73 = sub_1A3A31850();
                v75 = v74;
                if (v73 == sub_1A3A31850() && v75 == v76)
                {
                }

                else
                {
                  v77 = sub_1A3A321C0();

                  if ((v77 & 1) == 0)
                  {
LABEL_42:
                    swift_unknownObjectRelease();

                    return;
                  }
                }

                [a1 setState_];
                v78 = [v2 menuControllerDelegate];
                if (!v78)
                {
                  goto LABEL_64;
                }

                v56 = v78;
                v57 = [v5 shouldEnableTimerMenuCommand];
                goto LABEL_59;
              }
            }

            [a1 setState_];
            v71 = [v2 menuControllerDelegate];
            if (!v71)
            {
              goto LABEL_64;
            }

            v56 = v71;
            v57 = [v5 shouldEnableLivePhotoMenuCommand];
            goto LABEL_59;
          }
        }

        v64 = [v2 menuControllerDelegate];
        if (!v64)
        {
          goto LABEL_64;
        }

        v56 = v64;
        v57 = [v5 shouldEnableFlipCameraMenuCommand];
        goto LABEL_59;
      }
    }

    [a1 setState_];
    v55 = [v2 menuControllerDelegate];
    if (!v55)
    {
      goto LABEL_64;
    }

    v56 = v55;
    v57 = [v5 shouldEnableFlashMenuCommand];
LABEL_59:
    if ((v57 & 1) != 0 && ([v56 isShowingCameraRoll] & 1) == 0)
    {
      v47 = [a1 attributes];
      goto LABEL_52;
    }

    v47 = [a1 attributes];
LABEL_62:
    v48 = v47 | 1;
    goto LABEL_63;
  }
}

double sub_1A396D57C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  if ([a1 propertyList])
  {
    sub_1A3A31E60();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF638, &qword_1A3A791C0);
    if (swift_dynamicCast())
    {
      if (*(v6 + 16))
      {
        v3 = sub_1A3A1B864(0x65756C6176, 0xE500000000000000);
        if (v4)
        {
          sub_1A395ADE0(*(v6 + 56) + 32 * v3, a2);

          return result;
        }
      }
    }
  }

  else
  {
    sub_1A388F740(v9, &qword_1EB0FE508, &unk_1A3A77940);
  }

  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

id CAMSystemMenuController.init()@<X0>(void *a1@<X8>)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata(a1));

  return [v1 init];
}

id CAMSystemMenuController.init()()
{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = CAMSystemMenuController;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1A396D8E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  result = sub_1A3A31FD0();
  if (!v6)
  {
    return v12;
  }

  v8 = a2;
  v9 = (a1 + 32);
  while (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = *v9++;
    v11 = v8 + 1;
    a3(v10);
    sub_1A3A31FA0();
    sub_1A3A31FE0();
    sub_1A3A31FF0();
    result = sub_1A3A31FB0();
    v8 = v11;
    if (!--v6)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A396D9C8()
{
  sub_1A38E805C(0, &qword_1EB0FF648, 0x1E69DCBA0);
  v0 = sub_1A3A31810();
  v1 = CAMLocalizedFrameworkString(v0, 0);

  sub_1A3A31850();
  v2 = sub_1A3A31810();
  v3 = [objc_opt_self() systemImageNamed_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF650, &qword_1A3A791C8);
  inited = swift_initStackObject();
  strcpy((inited + 32), "menuIdentifier");
  *(inited + 16) = xmmword_1A3A681C0;
  *(inited + 47) = -18;
  *(inited + 48) = sub_1A3A31810();
  sub_1A3A1DAE0(inited);
  swift_setDeallocating();
  sub_1A388F740(inited + 32, &qword_1EB0FF658, &qword_1A3A791D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF660, &qword_1A3A791D8);
  v5 = sub_1A3A31C00();
  sub_1A38E805C(0, &qword_1EB0FF690, 0x1E69DCC60);
  sub_1A3A31810();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE510, &qword_1A3A74238);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A3A681B0;
  *(v6 + 32) = v5;
  return sub_1A3A31CB0();
}

uint64_t sub_1A396DC50(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x6F6D776F6C73;
      }

      if (a1 == 3)
      {
        return 1869504880;
      }

      return 0x657261757173;
    }

    if (!a1)
    {
      return 0x6F746F6870;
    }

    if (a1 == 1)
    {
      return 0x6F65646976;
    }

LABEL_20:
    sub_1A3A31F20();

    v3 = CAMCaptureMode.description.getter(a1);
    MEMORY[0x1A58F7770](v3);

    result = sub_1A3A32070("Fatal error", 11, 2, 0xD000000000000019, 0x80000001A3AA5D50, "CameraUI/CAMSystemMenuController.swift", 38, 2, 335, 0);
    __break(1u);
    return result;
  }

  if (a1 > 7)
  {
    if ((a1 - 8) < 2)
    {
      return 0x6C616974617073;
    }

    goto LABEL_20;
  }

  if (a1 == 5)
  {
    return 0x7370616C656D6974;
  }

  if (a1 == 6)
  {
    return 0xD000000000000010;
  }

  return 0x6974616D656E6963;
}

uint64_t sub_1A396DE30()
{
  v37 = MEMORY[0x1E69E7CC0];
  sub_1A3A31FD0();
  sub_1A38E805C(0, &qword_1EB0FF688, 0x1E69DC8B0);
  v0 = 0;
  v29 = off_1F165EA38;
  while (1)
  {
    v1 = *(&unk_1F1654FC0 + v0 + 32);
    if (v1 >= 3)
    {
      break;
    }

    v30 = (2 - v1);
    v29(&type metadata for ChromeFlashMode);
    v2 = sub_1A3A31810();

    v3 = CAMLocalizedFrameworkString(v2, 0);

    sub_1A3A31850();
    strcpy(v33, "menuIdentifier");
    v33[15] = -18;
    v4 = sub_1A3A31810();
    type metadata accessor for Identifier(0);
    v34 = v4;
    v35 = v5;
    v36[0] = 0x65756C6176;
    v36[1] = 0xE500000000000000;
    v36[5] = MEMORY[0x1E69E6530];
    v36[2] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF678, &qword_1A3A860C0);
    v6 = sub_1A3A320E0();
    sub_1A3A2EA60();
    sub_1A396F6F0(v33, &v30);
    v7 = v30;
    v8 = v31;
    v9 = sub_1A3A1B864(v30, v31);
    if (v10)
    {
      goto LABEL_12;
    }

    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v11 = (v6[6] + 16 * v9);
    *v11 = v7;
    v11[1] = v8;
    sub_1A3924CD4(v32, (v6[7] + 32 * v9));
    v12 = v6[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_13;
    }

    v6[2] = v14;
    sub_1A396F6F0(v36, &v30);
    v15 = v30;
    v16 = v31;
    v17 = sub_1A3A1B864(v30, v31);
    if (v18)
    {
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      sub_1A38E805C(0, &qword_1EB0FF640, 0x1E69DCC78);
      sub_1A3A2EA50();
      sub_1A3A32080();

LABEL_11:

      sub_1A38E805C(0, &qword_1EB0FF690, 0x1E69DCC60);
      return sub_1A3A31CB0();
    }

    *(v6 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
    v19 = (v6[6] + 16 * v17);
    *v19 = v15;
    v19[1] = v16;
    sub_1A3924CD4(v32, (v6[7] + 32 * v17));
    v20 = v6[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v13)
    {
      goto LABEL_13;
    }

    v6[2] = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF680, &qword_1A3A791E8);
    swift_arrayDestroy();
    *(&v32[0] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF638, &qword_1A3A791C0);
    v30 = v6;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1A3A31DC0();
    sub_1A3A31FA0();
    sub_1A3A31FE0();
    sub_1A3A31FF0();
    sub_1A3A31FB0();
    v0 += 8;
    if (v0 == 24)
    {
      v22 = v37;
      v23 = sub_1A3A31810();
      v24 = CAMLocalizedFrameworkString(v23, 0);

      sub_1A3A31850();
      v25 = sub_1A3A31810();
      v26 = [objc_opt_self() systemImageNamed_];

      sub_1A3A31810();
      if (v22 < 0 || (v22 & 0x4000000000000000) != 0)
      {
        goto LABEL_14;
      }

      sub_1A3A2EA50();
      sub_1A3A321D0();
      sub_1A38E805C(0, &qword_1EB0FF640, 0x1E69DCC78);
      goto LABEL_11;
    }
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1A3A31F20();
  MEMORY[0x1A58F7770](0xD000000000000015, 0x80000001A3AA5D10);
  v36[6] = v1;
  type metadata accessor for CAMFlashMode(0);
  sub_1A3A32060();
  result = sub_1A3A32070("Fatal error", 11, 2, v30, v31, "CameraUI/ChromeFlashMode.swift", 30, 2, 52, 0);
  __break(1u);
  return result;
}