uint64_t sub_1A9931300()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x796150726565702ELL;
  if (v1 != 5)
  {
    v3 = 0x495544442ELL;
  }

  v4 = 0x7465656D2ELL;
  if (v1 != 3)
  {
    v4 = 0x65726168732ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x636972656E65672ELL;
  if (v1 != 1)
  {
    v5 = 0x706F72447269612ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A99313D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1A9975EB0();
    if (v10)
    {
      v11 = sub_1A9975ED0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1A9975EC0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1A9975EB0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1A9975ED0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1A9975EC0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1A9931604(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1A9931794(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1A97B43C4(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1A99313D4(v13, a3, a4, &v12);
  v10 = v4;
  sub_1A97B43C4(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1A9931794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1A9975EB0();
  v11 = result;
  if (result)
  {
    result = sub_1A9975ED0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1A9975EC0();
  sub_1A99313D4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1A993184C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1A97B40FC(a3, a4);
          return sub_1A9931604(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s7Sharing9SFAirDropO06NearbyA11InteractionV5StateO1loiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v38 - v6;
  v8 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - v12;
  v14 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6850, &qword_1A99AC360);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v38 - v19;
  v21 = *(v18 + 56);
  sub_1A992AB54(v38, &v38 - v19, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  sub_1A992AB54(v39, &v20[v21], type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v23 = swift_getEnumCaseMultiPayload();
        if (v23 == 4 || v23 == 2)
        {
          goto LABEL_24;
        }

        if (v23 != 1)
        {
          goto LABEL_25;
        }

        goto LABEL_13;
      }

      goto LABEL_25;
    }

    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_25;
    }

LABEL_24:
    sub_1A992B5F4(v20, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
    return 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1A992AB54(v20, v16, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
    v28 = swift_getEnumCaseMultiPayload();
    if (v28 == 1)
    {
      sub_1A9932D14(v16, v13, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
      v31 = v11;
      sub_1A9932D14(&v20[v21], v11, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
      v32 = v8;
      v33 = *(v8 + 24);
      if (*&v13[v33 + 8] || !*(v31 + v33 + 8))
      {
        sub_1A97C13A4(&v13[*(v8 + 20)], v7, &unk_1EB3B29B0, &qword_1A9990640);
        sub_1A992B5F4(v13, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
        v34 = sub_1A99762C0();
        v35 = *(*(v34 - 8) + 48);
        v36 = v35(v7, 1, v34);
        sub_1A97B06FC(v7, &unk_1EB3B29B0, &qword_1A9990640);
        if (v36 == 1)
        {
          sub_1A97C13A4(v31 + *(v32 + 20), v5, &unk_1EB3B29B0, &qword_1A9990640);
          sub_1A992B5F4(v31, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
          v37 = v35(v5, 1, v34);
          sub_1A97B06FC(v5, &unk_1EB3B29B0, &qword_1A9990640);
          if (v37 != 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_1A992B5F4(v31, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
        }

        sub_1A992B5F4(v20, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
        return 0;
      }

      sub_1A992B5F4(v31, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
      v27 = v13;
      v26 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext;
      goto LABEL_23;
    }

    if (v28 == 4 || v28 == 2)
    {
      v26 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext;
      v27 = v16;
      goto LABEL_23;
    }

    sub_1A992B5F4(v16, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
    goto LABEL_25;
  }

  v25 = swift_getEnumCaseMultiPayload();
  if ((v25 - 2) < 3)
  {
    goto LABEL_24;
  }

  if (v25)
  {
LABEL_13:
    v26 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State;
    v27 = &v20[v21];
LABEL_23:
    sub_1A992B5F4(v27, v26);
    goto LABEL_24;
  }

LABEL_25:
  sub_1A97B06FC(v20, &qword_1EB3B6850, &qword_1A99AC360);
  return 0;
}

BOOL _s7Sharing9SFAirDropO06NearbyA11InteractionV5StateO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6850, &qword_1A99AC360);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v21 - v15;
  v17 = *(v14 + 56);
  sub_1A992AB54(a1, &v21 - v15, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  sub_1A992AB54(a2, &v16[v17], type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1A992AB54(v16, v12, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1A9932D14(v12, v9, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
        sub_1A9932D14(&v16[v17], v7, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
        v19 = _s7Sharing9SFAirDropO06NearbyA11InteractionV17ConnectionContextV2eeoiySbAG_AGtFZ_0(v9, v7);
        sub_1A992B5F4(v7, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
        sub_1A992B5F4(v9, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
        sub_1A992B5F4(v16, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
        return v19;
      }

      sub_1A992B5F4(v12, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
    }

    else if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_12;
    }

LABEL_16:
    sub_1A97B06FC(v16, &qword_1EB3B6850, &qword_1A99AC360);
    return 0;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_16;
  }

LABEL_12:
  sub_1A992B5F4(v16, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  return 1;
}

BOOL _s7Sharing9SFAirDropO06NearbyA11InteractionV17ConnectionContextV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1A99762C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v71 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6858, &qword_1A99AC368);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v71 - v18;
  if ((sub_1A9927FBC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v73 = v11;
  v74 = v17;
  v75 = v7;
  v20 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
  v78 = v5;
  v76 = v20;
  v21 = *(v20 + 20);
  v22 = *(v14 + 48);
  sub_1A97C13A4(&a1[v21], v19, &unk_1EB3B29B0, &qword_1A9990640);
  v77 = a2;
  v23 = &a2[v21];
  v24 = v78;
  sub_1A97C13A4(v23, &v19[v22], &unk_1EB3B29B0, &qword_1A9990640);
  v25 = *(v24 + 48);
  if (v25(v19, 1, v4) == 1)
  {
    if (v25(&v19[v22], 1, v4) != 1)
    {
      goto LABEL_7;
    }

    v72 = v25;
    sub_1A97B06FC(v19, &unk_1EB3B29B0, &qword_1A9990640);
  }

  else
  {
    sub_1A97C13A4(v19, v13, &unk_1EB3B29B0, &qword_1A9990640);
    if (v25(&v19[v22], 1, v4) == 1)
    {
      (*(v24 + 8))(v13, v4);
      goto LABEL_7;
    }

    v72 = v25;
    v27 = v75;
    (*(v24 + 32))(v75, &v19[v22], v4);
    sub_1A992AAB8(&qword_1EB3ACCD0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v28 = sub_1A99767A0();
    v29 = *(v24 + 8);
    v29(v27, v4);
    v29(v13, v4);
    sub_1A97B06FC(v19, &unk_1EB3B29B0, &qword_1A9990640);
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  v31 = v76;
  v30 = v77;
  v32 = v76[6];
  v33 = &a1[v32];
  v34 = *&a1[v32 + 8];
  v35 = &v77[v32];
  v36 = *(v35 + 1);
  if (v34)
  {
    if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v37 = v31[7];
  v38 = &a1[v37];
  v39 = *&a1[v37 + 8];
  v40 = &v30[v37];
  v41 = *(v40 + 1);
  if (v39)
  {
    if (!v41 || (*v38 != *v40 || v39 != v41) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  v42 = v31[8];
  v43 = &a1[v42];
  v44 = *&a1[v42 + 8];
  v45 = &v30[v42];
  v46 = *(v45 + 1);
  if (v44)
  {
    if (!v46 || (*v43 != *v45 || v44 != v46) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v46)
  {
    return 0;
  }

  v47 = v31[9];
  v48 = &a1[v47];
  v49 = *&a1[v47 + 8];
  v50 = &v30[v47];
  v51 = *(v50 + 1);
  if (v49)
  {
    if (!v51 || (*v48 != *v50 || v49 != v51) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v51)
  {
    return 0;
  }

  v52 = v31[10];
  v53 = a1[v52];
  v54 = v30[v52];
  if (v53 == 2)
  {
    if (v54 != 2)
    {
      return 0;
    }

LABEL_44:
    if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
    {
      return 0;
    }

    v55 = v31[12];
    v56 = *(v14 + 48);
    v19 = v74;
    sub_1A97C13A4(&a1[v55], v74, &unk_1EB3B29B0, &qword_1A9990640);
    sub_1A97C13A4(&v30[v55], &v19[v56], &unk_1EB3B29B0, &qword_1A9990640);
    v57 = v72;
    if (v72(v19, 1, v4) == 1)
    {
      if (v57(&v19[v56], 1, v4) == 1)
      {
        sub_1A97B06FC(v19, &unk_1EB3B29B0, &qword_1A9990640);
LABEL_51:
        v63 = v31[13];
        v64 = &a1[v63];
        v66 = *&a1[v63];
        v65 = *(v64 + 1);
        v67 = &v77[v63];
        v69 = *v67;
        v68 = v67[1];
        if (v65 >> 60 == 15)
        {
          if (v68 >> 60 == 15)
          {
            sub_1A97C1554(v66, *(v64 + 1));
            sub_1A97C1554(v69, v68);
            sub_1A97D8688(v66, v65);
            return 1;
          }
        }

        else if (v68 >> 60 != 15)
        {
          sub_1A97C1554(v66, *(v64 + 1));
          sub_1A97C1554(v69, v68);
          v70 = sub_1A993184C(v66, v65, v69, v68);
          sub_1A97D8688(v69, v68);
          sub_1A97D8688(v66, v65);
          return v70;
        }

        sub_1A97C1554(v66, *(v64 + 1));
        sub_1A97C1554(v69, v68);
        sub_1A97D8688(v66, v65);
        sub_1A97D8688(v69, v68);
        return 0;
      }
    }

    else
    {
      v58 = v73;
      sub_1A97C13A4(v19, v73, &unk_1EB3B29B0, &qword_1A9990640);
      if (v57(&v19[v56], 1, v4) != 1)
      {
        v59 = v78;
        v60 = v75;
        (*(v78 + 32))(v75, &v19[v56], v4);
        sub_1A992AAB8(&qword_1EB3ACCD0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v61 = sub_1A99767A0();
        v62 = *(v59 + 8);
        v62(v60, v4);
        v62(v58, v4);
        sub_1A97B06FC(v19, &unk_1EB3B29B0, &qword_1A9990640);
        if ((v61 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_51;
      }

      (*(v78 + 8))(v58, v4);
    }

LABEL_7:
    sub_1A97B06FC(v19, &qword_1EB3B6858, &qword_1A99AC368);
    return 0;
  }

  result = 0;
  if (v54 != 2 && ((v54 ^ v53) & 1) == 0)
  {
    goto LABEL_44;
  }

  return result;
}

unint64_t sub_1A99329CC()
{
  result = qword_1EB3B65B0;
  if (!qword_1EB3B65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B65B0);
  }

  return result;
}

unint64_t sub_1A9932A20()
{
  result = qword_1EB3B65B8;
  if (!qword_1EB3B65B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B65B8);
  }

  return result;
}

unint64_t sub_1A9932A74()
{
  result = qword_1EB3B65C8;
  if (!qword_1EB3B65C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B65C8);
  }

  return result;
}

unint64_t sub_1A9932AC8()
{
  result = qword_1EB3B65E8;
  if (!qword_1EB3B65E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B65E8);
  }

  return result;
}

unint64_t sub_1A9932B1C()
{
  result = qword_1EB3B65F0;
  if (!qword_1EB3B65F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B65F0);
  }

  return result;
}

unint64_t sub_1A9932B70()
{
  result = qword_1EB3B65F8;
  if (!qword_1EB3B65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B65F8);
  }

  return result;
}

unint64_t sub_1A9932BC4()
{
  result = qword_1EB3B6648;
  if (!qword_1EB3B6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6648);
  }

  return result;
}

unint64_t sub_1A9932C18()
{
  result = qword_1EB3B6650;
  if (!qword_1EB3B6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6650);
  }

  return result;
}

unint64_t sub_1A9932C6C()
{
  result = qword_1EB3B6658;
  if (!qword_1EB3B6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6658);
  }

  return result;
}

unint64_t sub_1A9932CC0()
{
  result = qword_1EB3B6660;
  if (!qword_1EB3B6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6660);
  }

  return result;
}

uint64_t sub_1A9932D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A9932D7C()
{
  result = qword_1EB3B6668;
  if (!qword_1EB3B6668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6668);
  }

  return result;
}

unint64_t sub_1A9932DD0()
{
  result = qword_1EB3B6678;
  if (!qword_1EB3B6678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6678);
  }

  return result;
}

unint64_t sub_1A9932E24()
{
  result = qword_1EB3B6680;
  if (!qword_1EB3B6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6680);
  }

  return result;
}

unint64_t sub_1A9932E78()
{
  result = qword_1EB3B6688;
  if (!qword_1EB3B6688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6688);
  }

  return result;
}

unint64_t sub_1A9932ECC()
{
  result = qword_1EB3B66C0;
  if (!qword_1EB3B66C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B66C0);
  }

  return result;
}

unint64_t sub_1A9932F20()
{
  result = qword_1EB3B66D0;
  if (!qword_1EB3B66D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B66D0);
  }

  return result;
}

unint64_t sub_1A9932F74()
{
  result = qword_1EB3B66E0;
  if (!qword_1EB3B66E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B66E0);
  }

  return result;
}

unint64_t sub_1A9932FCC()
{
  result = qword_1EB3B6708;
  if (!qword_1EB3B6708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6708);
  }

  return result;
}

unint64_t sub_1A9933024()
{
  result = qword_1EB3B6710;
  if (!qword_1EB3B6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6710);
  }

  return result;
}

void sub_1A9933108(uint64_t a1)
{
  sub_1A99762C0();
  if (v1 <= 0x3F)
  {
    sub_1A97D8914(319, &qword_1EB3AC8A8, MEMORY[0x1E6969080]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A99331DC(uint64_t a1)
{
  result = sub_1A99762C0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SFClientIdentity(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A9933298(uint64_t a1)
{
  result = sub_1A99762C0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1A9933334(uint64_t a1)
{
  sub_1A99762C0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SFAirDrop.NearbySharingInteraction.State(319);
    if (v2 <= 0x3F)
    {
      sub_1A9976230();
      if (v3 <= 0x3F)
      {
        sub_1A993357C(319, &qword_1EB3AC8C8, MEMORY[0x1E69E87E8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A993344C(uint64_t a1)
{
  sub_1A993357C(319, &qword_1EB3ACCC8, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    sub_1A97D8914(319, &qword_1EB3AB718, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1A97D8914(319, &qword_1EB3AB698, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        sub_1A99762C0();
        if (v4 <= 0x3F)
        {
          sub_1A97D8914(319, &qword_1EB3AC8A8, MEMORY[0x1E6969080]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A993357C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A99770A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s24NearbySharingInteractionV17ConnectionContextV15InteractionTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s24NearbySharingInteractionV17ConnectionContextV15InteractionTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s24NearbySharingInteractionV11FailureTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t _s24NearbySharingInteractionV11FailureTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1A9933884(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1A99338A0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1A99338C8(uint64_t a1)
{
  result = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A9933A60()
{
  result = qword_1EB3B6720;
  if (!qword_1EB3B6720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6720);
  }

  return result;
}

unint64_t sub_1A9933AB8()
{
  result = qword_1EB3B6728;
  if (!qword_1EB3B6728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6728);
  }

  return result;
}

unint64_t sub_1A9933B10()
{
  result = qword_1EB3B6730;
  if (!qword_1EB3B6730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6730);
  }

  return result;
}

unint64_t sub_1A9933B68()
{
  result = qword_1EB3B6738;
  if (!qword_1EB3B6738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6738);
  }

  return result;
}

unint64_t sub_1A9933BC0()
{
  result = qword_1EB3B6740;
  if (!qword_1EB3B6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6740);
  }

  return result;
}

unint64_t sub_1A9933C18()
{
  result = qword_1EB3B6748;
  if (!qword_1EB3B6748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6748);
  }

  return result;
}

unint64_t sub_1A9933C70()
{
  result = qword_1EB3B6750;
  if (!qword_1EB3B6750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6750);
  }

  return result;
}

unint64_t sub_1A9933CC8()
{
  result = qword_1EB3B6758;
  if (!qword_1EB3B6758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6758);
  }

  return result;
}

unint64_t sub_1A9933D20()
{
  result = qword_1EB3B6760;
  if (!qword_1EB3B6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6760);
  }

  return result;
}

unint64_t sub_1A9933D78()
{
  result = qword_1EB3B6768;
  if (!qword_1EB3B6768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6768);
  }

  return result;
}

unint64_t sub_1A9933DD0()
{
  result = qword_1EB3B6770;
  if (!qword_1EB3B6770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6770);
  }

  return result;
}

unint64_t sub_1A9933E28()
{
  result = qword_1EB3B6778;
  if (!qword_1EB3B6778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6778);
  }

  return result;
}

unint64_t sub_1A9933E80()
{
  result = qword_1EB3B6780;
  if (!qword_1EB3B6780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6780);
  }

  return result;
}

unint64_t sub_1A9933ED8()
{
  result = qword_1EB3B6788;
  if (!qword_1EB3B6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6788);
  }

  return result;
}

unint64_t sub_1A9933F30()
{
  result = qword_1EB3B6790;
  if (!qword_1EB3B6790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6790);
  }

  return result;
}

unint64_t sub_1A9933F88()
{
  result = qword_1EB3B6798;
  if (!qword_1EB3B6798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6798);
  }

  return result;
}

unint64_t sub_1A9933FE0()
{
  result = qword_1EB3B67A0;
  if (!qword_1EB3B67A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67A0);
  }

  return result;
}

unint64_t sub_1A9934038()
{
  result = qword_1EB3B67A8;
  if (!qword_1EB3B67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67A8);
  }

  return result;
}

unint64_t sub_1A9934090()
{
  result = qword_1EB3B67B0;
  if (!qword_1EB3B67B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67B0);
  }

  return result;
}

unint64_t sub_1A99340E8()
{
  result = qword_1EB3B67B8;
  if (!qword_1EB3B67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67B8);
  }

  return result;
}

unint64_t sub_1A9934140()
{
  result = qword_1EB3B67C0;
  if (!qword_1EB3B67C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67C0);
  }

  return result;
}

unint64_t sub_1A9934198()
{
  result = qword_1EB3B67C8;
  if (!qword_1EB3B67C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67C8);
  }

  return result;
}

unint64_t sub_1A99341F0()
{
  result = qword_1EB3B67D0;
  if (!qword_1EB3B67D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67D0);
  }

  return result;
}

unint64_t sub_1A9934248()
{
  result = qword_1EB3B67D8;
  if (!qword_1EB3B67D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67D8);
  }

  return result;
}

unint64_t sub_1A99342A0()
{
  result = qword_1EB3B67E0;
  if (!qword_1EB3B67E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67E0);
  }

  return result;
}

unint64_t sub_1A99342F8()
{
  result = qword_1EB3B67E8;
  if (!qword_1EB3B67E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67E8);
  }

  return result;
}

unint64_t sub_1A9934350()
{
  result = qword_1EB3B67F0;
  if (!qword_1EB3B67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67F0);
  }

  return result;
}

unint64_t sub_1A99343A8()
{
  result = qword_1EB3B67F8;
  if (!qword_1EB3B67F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B67F8);
  }

  return result;
}

unint64_t sub_1A9934400()
{
  result = qword_1EB3B6800;
  if (!qword_1EB3B6800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6800);
  }

  return result;
}

unint64_t sub_1A9934458()
{
  result = qword_1EB3B6808;
  if (!qword_1EB3B6808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6808);
  }

  return result;
}

unint64_t sub_1A99344B0()
{
  result = qword_1EB3B6810;
  if (!qword_1EB3B6810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6810);
  }

  return result;
}

unint64_t sub_1A9934508()
{
  result = qword_1EB3B6818;
  if (!qword_1EB3B6818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6818);
  }

  return result;
}

unint64_t sub_1A9934560()
{
  result = qword_1EB3B6820;
  if (!qword_1EB3B6820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6820);
  }

  return result;
}

unint64_t sub_1A99345B8()
{
  result = qword_1EB3B6828;
  if (!qword_1EB3B6828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6828);
  }

  return result;
}

unint64_t sub_1A9934610()
{
  result = qword_1EB3B6830;
  if (!qword_1EB3B6830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6830);
  }

  return result;
}

unint64_t sub_1A9934668()
{
  result = qword_1EB3B6838;
  if (!qword_1EB3B6838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6838);
  }

  return result;
}

unint64_t sub_1A99346C0()
{
  result = qword_1EB3B6840;
  if (!qword_1EB3B6840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6840);
  }

  return result;
}

unint64_t sub_1A9934718()
{
  result = qword_1EB3ABB70;
  if (!qword_1EB3ABB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABB70);
  }

  return result;
}

unint64_t sub_1A9934770()
{
  result = qword_1EB3ABB78;
  if (!qword_1EB3ABB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABB78);
  }

  return result;
}

unint64_t sub_1A99347C8()
{
  result = qword_1EB3ABB98;
  if (!qword_1EB3ABB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABB98);
  }

  return result;
}

unint64_t sub_1A9934820()
{
  result = qword_1EB3ABBA0;
  if (!qword_1EB3ABBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABBA0);
  }

  return result;
}

unint64_t sub_1A9934878()
{
  result = qword_1EB3ABBB0;
  if (!qword_1EB3ABBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABBB0);
  }

  return result;
}

unint64_t sub_1A99348D0()
{
  result = qword_1EB3ABBB8;
  if (!qword_1EB3ABBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABBB8);
  }

  return result;
}

unint64_t sub_1A9934928()
{
  result = qword_1EB3ABBC0;
  if (!qword_1EB3ABBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABBC0);
  }

  return result;
}

unint64_t sub_1A9934980()
{
  result = qword_1EB3ABBC8;
  if (!qword_1EB3ABBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABBC8);
  }

  return result;
}

unint64_t sub_1A99349D8()
{
  result = qword_1EB3ABBD0;
  if (!qword_1EB3ABBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABBD0);
  }

  return result;
}

unint64_t sub_1A9934A30()
{
  result = qword_1EB3ABBD8;
  if (!qword_1EB3ABBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABBD8);
  }

  return result;
}

uint64_t sub_1A9934A84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65766973736170 && a2 == 0xE700000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1819047270 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A9934BA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x54676E696C6C6F70 && a2 == 0xEB00000000657079 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E6BB0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A9934D14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A99E7200 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E5540 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6341656D61537369 && a2 == 0xED0000746E756F63 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A99E8650 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E8670 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079)
  {

    return 9;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1A993505C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001A99E8690 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEA0000000000676ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657463656E6E6F63 && a2 == 0xE900000000000064 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A99E84B0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465646E65 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1A99777E0();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A9935228(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEE00656D69546E6FLL || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A99E86B0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616974696E497369 && a2 == 0xEB00000000726F74)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1A9935430()
{
  result = qword_1EB3B6848;
  if (!qword_1EB3B6848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6848);
  }

  return result;
}

uint64_t SFNoThrowAsyncSequence.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  return sub_1A993559C(a1, a2, a3, a4, sub_1A9935B4C, a5);
}

{
  return sub_1A993559C(a1, a2, a3, a4, sub_1A9935BE4, a5);
}

uint64_t sub_1A99354B4()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B6860);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B6860);
  if (qword_1EB3B0B18 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3B3638);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1A993559C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v13 = *(a3 - 8);
  v14 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  result = (*(v13 + 32))(&v15[v14], a1, a3);
  *a7 = a6;
  a7[1] = v15;
  return result;
}

void *sub_1A993567C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = sub_1A9976500();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  sub_1A99764F0();
  v12 = swift_allocBox();
  MEMORY[0x1AC589270](a2, a3);
  sub_1A99764D0();
  (*(v9 + 8))(v11, v8);
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = v12;
  *a4 = &unk_1A99AC638;
  a4[1] = result;
  return result;
}

uint64_t sub_1A99357D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a1;
  v5[6] = sub_1A99764F0();
  v5[7] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1A9935858, 0, 0);
}

uint64_t sub_1A9935858()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1A9935908;
  v2 = v0[6];
  v3 = v0[5];

  return MEMORY[0x1EEDB5C50](v3, v2);
}

uint64_t sub_1A9935908()
{
  v3 = *v0;

  swift_endAccess();
  v1 = *(v3 + 8);

  return v1();
}

void *sub_1A9935A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v13 = swift_allocBox();
  (*(v10 + 16))(v12, a1, a3);
  sub_1A9976D30();
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = v13;
  *a5 = &unk_1A99AC648;
  a5[1] = result;
  return result;
}

uint64_t objectdestroyTm_3()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1A9935C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[13] = a1;
  v5[16] = swift_getAssociatedTypeWitness();
  v5[17] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1A9935CE4, 0, 0);
}

uint64_t sub_1A9935CE4()
{
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_1A9935DC8;
  v3 = v0[16];
  v4 = v0[13];

  return MEMORY[0x1EEE6D8C8](v4, v3, AssociatedConformanceWitness);
}

uint64_t sub_1A9935DC8()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A9935F04, 0, 0);
  }

  else
  {
    swift_endAccess();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A9935F04()
{
  v14 = v0;
  swift_endAccess();
  if (qword_1EB3B0B88 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_1A99764A0();
  __swift_project_value_buffer(v2, qword_1EB3B6860);
  v3 = v1;
  v4 = sub_1A9976480();
  v5 = sub_1A9976F80();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13[0] = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1A99778E0();
    v10 = sub_1A97AF148(v8, v9, v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1A9662000, v4, v5, "Unexpected error by sequence in SFNoThrowAsyncSequence {error: %s}", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1AC58D2C0](v7, -1, -1);
    MEMORY[0x1AC58D2C0](v6, -1, -1);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000035, 0x80000001A99E86F0);
  swift_getErrorValue();
  v11 = sub_1A99778E0();
  MEMORY[0x1AC5895B0](v11);

  MEMORY[0x1AC5895B0](125, 0xE100000000000000);
  return sub_1A9977470();
}

uint64_t SFNoThrowAsyncSequence.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A97E0380, 0, 0);
}

uint64_t sub_1A9936168(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A97BD530;

  return SFNoThrowAsyncSequence.AsyncIterator.next()(a1);
}

uint64_t sub_1A9936200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1A99362CC;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t sub_1A99362CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t SFThrowingAsyncSequence.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  return sub_1A9936884(a1, a2, a3, a4, a5, sub_1A9936574, a6);
}

{
  return sub_1A9936884(a1, a2, a3, a4, a5, sub_1A9936B3C, a6);
}

void *sub_1A9936410@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v17 = a2;
  v9 = sub_1A99765B0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  sub_1A99765A0();
  v13 = swift_allocBox();
  MEMORY[0x1AC589260](a3, a4);
  sub_1A9976580();
  (*(v10 + 8))(v12, v9);
  result = swift_allocObject();
  v15 = v17;
  result[2] = a1;
  result[3] = v15;
  result[4] = a3;
  result[5] = a4;
  result[6] = v13;
  *a5 = &unk_1A99AC628;
  a5[1] = result;
  return result;
}

uint64_t sub_1A993658C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a1;
  v6[6] = sub_1A99765A0();
  v6[7] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1A9936614, 0, 0);
}

uint64_t sub_1A9936614()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1A99366C4;
  v2 = v0[6];
  v3 = v0[5];

  return MEMORY[0x1EEDB5D38](v3, v2);
}

uint64_t sub_1A99366C4()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A9936800, 0, 0);
  }

  else
  {
    swift_endAccess();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A9936800()
{
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A9936884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v15 = *(a4 - 8);
  v16 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  result = (*(v15 + 32))(&v17[v16], a1, a4);
  *a8 = a7;
  a8[1] = v17;
  return result;
}

void *sub_1A9936968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v15 = swift_allocBox();
  (*(v12 + 16))(v14, a1, a4);
  sub_1A9976D30();
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  result[6] = v15;
  *a6 = &unk_1A99AC618;
  a6[1] = result;
  return result;
}

uint64_t objectdestroy_6Tm()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 48) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1A9936B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a1;
  v6[8] = swift_getAssociatedTypeWitness();
  v6[9] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1A97DD748, 0, 0);
}

uint64_t SFThrowingAsyncSequence.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A97E0380, 0, 0);
}

uint64_t sub_1A9936C58(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A97B2638;

  return SFThrowingAsyncSequence.AsyncIterator.next()(a1);
}

uint64_t sub_1A9936D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A9936D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A9936DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A9936E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A9936E84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2988;

  return sub_1A9936B9C(a1, v8, v4, v5, v6, v7);
}

uint64_t sub_1A9936F4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2638;

  return sub_1A993658C(a1, v8, v4, v5, v6, v7);
}

uint64_t sub_1A9937014(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A97B2638;

  return sub_1A99357D0(a1, v6, v4, v5, v7);
}

uint64_t sub_1A99370D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A97B2988;

  return sub_1A9935C44(a1, v6, v4, v5, v7);
}

uint64_t SFAirDrop.TXTRecord.init(txtRecord:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_1A9976600();
  if (!v5)
  {
    v15 = sub_1A99765F0();
    result = (*(*(v15 - 8) + 8))(a1, v15);
LABEL_22:
    v16 = 2;
LABEL_69:
    *a2 = v16;
    return result;
  }

  v6 = v5;
  v7 = HIBYTE(v5) & 0xF;
  v8 = result & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    v33 = sub_1A99765F0();
    (*(*(v33 - 8) + 8))(a1, v33);

    goto LABEL_22;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    v36 = 0;
    v11 = sub_1A99376CC(result, v6, 10);
    v31 = v34;
LABEL_66:
    v32 = sub_1A99765F0();
    (*(*(v32 - 8) + 8))(a1, v32);

    if (v31 & 1 | (v11 > 3))
    {
      v16 = 2;
    }

    else
    {
      v16 = v11;
    }

    goto LABEL_69;
  }

  if ((v6 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1A9977340();
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v11 = 0;
          if (result)
          {
            v20 = (result + 1);
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                goto LABEL_64;
              }

              v22 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_64;
              }

              v11 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                goto LABEL_64;
              }

              ++v20;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_56;
        }

        goto LABEL_64;
      }

      goto LABEL_75;
    }

    if (v10 != 45)
    {
      if (v8)
      {
        v11 = 0;
        if (result)
        {
          while (1)
          {
            v26 = *result - 48;
            if (v26 > 9)
            {
              goto LABEL_64;
            }

            v27 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_64;
            }

            v11 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              goto LABEL_64;
            }

            ++result;
            if (!--v8)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_64:
      v11 = 0;
      LOBYTE(v7) = 1;
      goto LABEL_65;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        v11 = 0;
        if (result)
        {
          v12 = (result + 1);
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_64;
            }

            v14 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_64;
            }

            v11 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_64;
            }

            ++v12;
            if (!--v7)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_56:
        LOBYTE(v7) = 0;
LABEL_65:
        v36 = v7;
        v31 = v7;
        goto LABEL_66;
      }

      goto LABEL_64;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v35[0] = result;
  v35[1] = v6 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v7)
      {
        v11 = 0;
        v28 = v35;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            break;
          }

          ++v28;
          if (!--v7)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v7)
    {
      if (--v7)
      {
        v11 = 0;
        v17 = v35 + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          v19 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v19 - v18;
          if (__OFSUB__(v19, v18))
          {
            break;
          }

          ++v17;
          if (!--v7)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_74;
  }

  if (v7)
  {
    if (--v7)
    {
      v11 = 0;
      v23 = v35 + 1;
      while (1)
      {
        v24 = *v23 - 48;
        if (v24 > 9)
        {
          break;
        }

        v25 = 10 * v11;
        if ((v11 * 10) >> 64 != (10 * v11) >> 63)
        {
          break;
        }

        v11 = v25 + v24;
        if (__OFADD__(v25, v24))
        {
          break;
        }

        ++v23;
        if (!--v7)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_76:
  __break(1u);
  return result;
}

uint64_t SFAirDrop.TXTRecord.addToEndpoint(_:)(uint64_t a1)
{
  dictionary_with_initial_length = nw_txt_record_create_dictionary_with_initial_length();
  sub_1A9977730();
  v2 = sub_1A99768E0();
  v3 = sub_1A9976890();

  nw_txt_record_set_key(dictionary_with_initial_length, "deviceRelationship", (v3 + 32), v2);

  nw_endpoint_set_txt_record();
  return swift_unknownObjectRelease();
}

void *sub_1A9937658(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1238, &unk_1A9991A40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1A99376CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1A99769C0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1A99381E4(result, v5);
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
      result = sub_1A9977340();
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

unsigned __int8 *sub_1A9937C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_1A99769C0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1A99381E4(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
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
      result = sub_1A9977340();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
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
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1A99381E4(uint64_t a1, unint64_t a2)
{
  v2 = sub_1A99769D0();
  v6 = sub_1A9938264(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1A9938264(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1A9977130();
    if (!v9 || (v10 = v9, v11 = sub_1A9937658(v9, 0), v12 = sub_1A99383BC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1A99768C0();

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
      return sub_1A99768C0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1A9977340();
LABEL_4:

  return sub_1A99768C0();
}

unint64_t sub_1A99383BC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1A99385DC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1A9976960();
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
          result = sub_1A9977340();
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

    result = sub_1A99385DC(v12, a6, a7);
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

    result = sub_1A9976940();
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

unint64_t sub_1A99385DC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1A9976970();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1AC5895F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t combineLatest<A, B, C, D, E>(_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14)
{
  v39 = a8;
  v48 = a5;
  v41 = a2;
  v50 = a9;
  v49 = a12;
  v47 = a13;
  v45 = a11;
  v46 = a4;
  v42 = *(a11 - 8);
  v43 = a3;
  v44 = a14;
  v16 = MEMORY[0x1EEE9AC00](a1);
  v40 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a10 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v19);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v24);
  v31 = &v39 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v39 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33);
  (*(v28 + 16))(v31, v41, a7);
  v35 = v39;
  (*(v23 + 16))(v26, v43, v39);
  (*(v18 + 16))(v21, v46, a10);
  v36 = v40;
  v37 = v45;
  (*(v42 + 16))(v40, v48, v45);
  return sub_1A99389D8(v33, v31, v26, v21, v36, a6, a7, v35, v50, a10, v37, v49, v47, v44);
}

uint64_t sub_1A99389D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v24[0] = a6;
  v24[1] = a7;
  v24[2] = a8;
  v24[3] = a10;
  v24[4] = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  v21 = type metadata accessor for AsyncCombineLatest5Sequence(0, v24);
  (*(*(a7 - 8) + 32))(a9 + v21[25], a2, a7);
  (*(*(a8 - 8) + 32))(a9 + v21[26], a3, a8);
  (*(*(a10 - 8) + 32))(a9 + v21[27], a4, a10);
  return (*(*(a11 - 8) + 32))(a9 + v21[28], a5, a11);
}

uint64_t AsyncCombineLatest5Sequence.Iterator.next()(uint64_t a1, void *a2)
{
  *(v2 + 208) = a1;
  v23 = a2[2];
  v24 = a2[7];
  *(v2 + 216) = swift_getAssociatedTypeWitness();
  v21 = a2[3];
  v22 = a2[8];
  *(v2 + 224) = swift_getAssociatedTypeWitness();
  v19 = a2[4];
  v20 = a2[9];
  *(v2 + 232) = swift_getAssociatedTypeWitness();
  *(v2 + 240) = swift_getTupleTypeMetadata3();
  v4 = a2[10];
  v5 = a2[5];
  *(v2 + 248) = swift_getAssociatedTypeWitness();
  v6 = a2[11];
  v7 = a2[6];
  *(v2 + 256) = swift_getAssociatedTypeWitness();
  *(v2 + 264) = swift_getTupleTypeMetadata2();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v2 + 272) = TupleTypeMetadata2;
  v9 = sub_1A99770A0();
  *(v2 + 280) = v9;
  *(v2 + 288) = *(v9 - 8);
  v10 = swift_task_alloc();
  *(v2 + 296) = v10;
  *(v2 + 304) = *(TupleTypeMetadata2 - 8);
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 320) = swift_task_alloc();
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = swift_task_alloc();
  *(v2 + 352) = swift_task_alloc();
  v11 = swift_task_alloc();
  *(v2 + 16) = v23;
  *(v2 + 360) = v11;
  *(v2 + 24) = v21;
  *(v2 + 32) = v19;
  *(v2 + 40) = v24;
  *(v2 + 48) = v22;
  *(v2 + 56) = v20;
  v12 = type metadata accessor for AsyncCombineLatest3Sequence(255, v2 + 16);
  *&v13 = v5;
  *(&v13 + 1) = v7;
  *&v14 = v4;
  *(&v14 + 1) = v6;
  *(v2 + 160) = v14;
  *(v2 + 144) = v13;
  v15 = type metadata accessor for AsyncCombineLatest2Sequence(255, v2 + 144);
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  *(v2 + 176) = v12;
  *(v2 + 184) = v15;
  *(v2 + 192) = WitnessTable;
  *(v2 + 200) = v17;
  type metadata accessor for AsyncCombineLatest2Sequence.Iterator(0, v2 + 176);
  *v11 = v2;
  v11[1] = sub_1A9938F24;

  return AsyncCombineLatest2Sequence.Iterator.next()(v10);
}

uint64_t sub_1A9938F24()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_1A99397B4;
  }

  else
  {
    v2 = sub_1A9939038;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A9939038()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 272);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 232);
    v5 = *(v0 + 208);
    v56 = *(v0 + 216);
    v58 = *(v0 + 248);
    (*(*(v0 + 288) + 8))(v1, *(v0 + 280));
    *(v0 + 64) = v56;
    *(v0 + 80) = v4;
    *(v0 + 88) = v58;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    (*(*(TupleTypeMetadata - 8) + 56))(v5, 1, 1, TupleTypeMetadata);
  }

  else
  {
    v46 = *(v0 + 352);
    v51 = *(v0 + 336);
    v52 = *(v0 + 344);
    v50 = *(v0 + 328);
    v49 = *(v0 + 320);
    v43 = *(v0 + 312);
    v7 = *(v0 + 256);
    v21 = *(v0 + 264);
    v9 = *(v0 + 240);
    v8 = *(v0 + 248);
    v10 = *(v0 + 224);
    v11 = *(v0 + 232);
    v55 = v7;
    v12 = *(v0 + 216);
    v23 = *(v0 + 208);
    v42 = *(v2 + 32);
    v42();
    *(v0 + 104) = v12;
    *(v0 + 112) = v10;
    *(v0 + 120) = v11;
    *(v0 + 128) = v8;
    *(v0 + 136) = v7;
    v22 = swift_getTupleTypeMetadata();
    v53 = v22[12];
    v27 = v22[16];
    v29 = v22[20];
    v30 = v22[24];
    v13 = *(v2 + 16);
    v13(v52, v46, v3);
    v40 = *(v9 + 64);
    v41 = *(v9 + 48);
    v39 = v52 + *(v3 + 48);
    v38 = *(v21 + 48);
    v59 = *(v12 - 8);
    (*(v59 + 32))(v23, v52, v12);
    v13(v51, v46, v3);
    v36 = v51 + *(v3 + 48);
    v37 = *(v9 + 64);
    v35 = *(v21 + 48);
    v57 = *(v10 - 8);
    (*(v57 + 32))(v23 + v53, v51 + *(v9 + 48));
    v13(v50, v46, v3);
    v33 = v50 + *(v3 + 48);
    v34 = *(v9 + 48);
    v32 = *(v21 + 48);
    v54 = *(v11 - 8);
    (*(v54 + 32))(v23 + v27, v50 + *(v9 + 64));
    v13(v49, v46, v3);
    v26 = *(v9 + 64);
    v28 = *(v9 + 48);
    v24 = v49 + *(v3 + 48);
    v25 = *(v21 + 48);
    v14 = *(v8 - 8);
    (*(v14 + 32))(v23 + v29);
    (v42)(v43, v46, v3);
    v44 = *(v9 + 48);
    v47 = *(v9 + 64);
    v15 = v43 + *(v3 + 48);
    v16 = *(v55 - 8);
    (*(v16 + 32))(v23 + v30, v15 + *(v21 + 48));
    (*(*(v22 - 1) + 56))(v23, 0, 1);
    v31 = *(v14 + 8);
    v31(v15, v8);
    v17 = *(v54 + 8);
    v17(v43 + v47, v11);
    v48 = *(v57 + 8);
    v48(v43 + v44, v10);
    v45 = *(v59 + 8);
    v45(v43, v12);
    v18 = *(v16 + 8);
    v18(v24 + v25, v55);
    v17(v49 + v26, v11);
    v48(v49 + v28, v10);
    v45(v49, v12);
    v18(v33 + v32, v55);
    v31(v33, v8);
    v48(v50 + v34, v10);
    v45(v50, v12);
    v18(v36 + v35, v55);
    v31(v36, v8);
    v17(v51 + v37, v11);
    v45(v51, v12);
    v18(v39 + v38, v55);
    v31(v39, v8);
    v17(v52 + v40, v11);
    v48(v52 + v41, v10);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1A99397B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A9939864(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A97B2638;

  return AsyncCombineLatest5Sequence.Iterator.next()(a1, a2);
}

uint64_t sub_1A993990C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v6[4] = *(AssociatedTypeWitness - 8);
  v6[5] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[6] = v13;
  *v13 = v6;
  v13[1] = sub_1A97FF5F8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t AsyncCombineLatest5Sequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v5 = *(a1 + 16);
  v33 = *(a1 + 24);
  v34 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  v31 = *(a1 + 56);
  v32 = v6;
  v30 = v7;
  v27 = *(a1 + 72);
  *&v36 = v5;
  *(&v36 + 1) = v33;
  *&v37 = v6;
  *(&v37 + 1) = v31;
  v38 = v7;
  v39 = v27;
  v8 = type metadata accessor for AsyncCombineLatest3Sequence(255, &v36);
  v9 = *(a1 + 80);
  v28 = *(a1 + 40);
  v29 = v9;
  v37 = v9;
  v36 = v28;
  v10 = type metadata accessor for AsyncCombineLatest2Sequence(255, &v36);
  WitnessTable = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  *&v36 = v8;
  *(&v36 + 1) = v10;
  *&v37 = WitnessTable;
  *(&v37 + 1) = v25;
  v24 = type metadata accessor for AsyncCombineLatest2Sequence(0, &v36);
  v11 = *(v24 - 8);
  v12 = MEMORY[0x1EEE9AC00](v24);
  v14 = &v24 - v13;
  v15 = *(v10 - 8);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = &v24 - v17;
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v24 - v20;
  combineLatest<A, B, C>(_:_:_:)(v3, v3 + *(a1 + 100), v3 + *(a1 + 104), v34, v33, v32, v31, v30, &v24 - v20, v27);
  combineLatest<A, B>(_:_:)(v3 + *(a1 + 108), v3 + *(a1 + 112), v28, *(&v28 + 1), v29, *(&v29 + 1), v18);
  combineLatest<A, B>(_:_:)(v21, v18, v8, v10, WitnessTable, v25, v14);
  v22 = v24;
  AsyncCombineLatest2Sequence.makeAsyncIterator()(v24, &v36);
  (*(v11 + 8))(v14, v22);
  (*(v15 + 8))(v18, v10);
  result = (*(v19 + 8))(v21, v8);
  *v35 = v36;
  return result;
}

uint64_t sub_1A9939D7C(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1A9939E3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  AsyncCombineLatest5Sequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1A9939EA4(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A9939F84(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v42 = *(a3[2] - 8);
  v4 = *(v42 + 84);
  v5 = *(a3[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(v42 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a3[5];
  v9 = *(a3[4] - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(a3[6] - 8);
  v16 = *(v15 + 84);
  v17 = *(v5 + 80);
  v18 = *(*(a3[3] - 8) + 64);
  v19 = *(v9 + 80);
  v20 = *(*(a3[4] - 8) + 64);
  v21 = *(v12 + 80);
  v22 = *(v15 + 80);
  if (v16 <= v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = *(v15 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v24 = *(*(a3[2] - 8) + 64) + v17;
  v25 = *(*(v8 - 8) + 64) + v22;
  v26 = a2 - v23;
  if (a2 > v23)
  {
    v27 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
    v28 = 8 * v27;
    if (v27 <= 3)
    {
      v30 = ((v26 + ~(-1 << v28)) >> v28) + 1;
      if (HIWORD(v30))
      {
        v29 = *(a1 + v27);
        if (!v29)
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 > 0xFF)
      {
        v29 = *(a1 + v27);
        if (!*(a1 + v27))
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 < 2)
      {
LABEL_36:
        if (v23)
        {
          goto LABEL_37;
        }

        return 0;
      }
    }

    v29 = *(a1 + v27);
    if (!*(a1 + v27))
    {
      goto LABEL_36;
    }

LABEL_23:
    v31 = (v29 - 1) << v28;
    if (v27 > 3)
    {
      v31 = 0;
    }

    if (v27)
    {
      if (v27 <= 3)
      {
        v32 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
      }

      else
      {
        v32 = 4;
      }

      if (v32 > 2)
      {
        if (v32 == 3)
        {
          v33 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v33 = *a1;
        }
      }

      else if (v32 == 1)
      {
        v33 = *a1;
      }

      else
      {
        v33 = *a1;
      }
    }

    else
    {
      v33 = 0;
    }

    return v23 + (v33 | v31) + 1;
  }

LABEL_37:
  if (v4 == v23)
  {
    v34 = *(v42 + 48);

    return v34();
  }

  v36 = (a1 + v24) & ~v17;
  if (v6 == v23)
  {
    v37 = *(v5 + 48);
    v38 = *(v5 + 84);
    v39 = a3[3];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v18 + v19) & ~v19;
  if (v10 == v23)
  {
    v37 = *(v9 + 48);
    v38 = *(v9 + 84);
    v39 = a3[4];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v20 + v21) & ~v21;
  if (v13 == v23)
  {
    v37 = *(v12 + 48);
    v38 = *(v12 + 84);
    v39 = a3[5];

    return v37(v36, v38, v39);
  }

  v40 = *(v15 + 48);
  v41 = (v25 + v36) & ~v22;

  return v40(v41, v16);
}

char *sub_1A993A424(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v42 = a4[3];
  v43 = *(a4[2] - 8);
  v5 = *(v43 + 84);
  v6 = *(v42 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v43 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a4[5];
  v41 = a4[4];
  v10 = *(v41 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = *(a4[6] - 8);
  v17 = *(*(a4[2] - 8) + 64);
  v18 = *(v6 + 80);
  v19 = *(*(v42 - 8) + 64);
  v20 = *(v10 + 80);
  v21 = *(*(v41 - 8) + 64);
  v22 = *(v13 + 80);
  v23 = *(*(v9 - 8) + 64);
  v24 = *(v16 + 80);
  if (*(v16 + 84) <= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = *(v16 + 84);
  }

  v26 = v23 + v24;
  v27 = ((v23 + v24 + ((v21 + v22 + ((v19 + v20 + ((v17 + v18) & ~v18)) & ~v20)) & ~v22)) & ~v24) + *(*(a4[6] - 8) + 64);
  v28 = a3 >= v25;
  v29 = a3 - v25;
  if (v29 != 0 && v28)
  {
    if (v27 <= 3)
    {
      v34 = ((v29 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      if (HIWORD(v34))
      {
        v30 = 4;
      }

      else
      {
        if (v34 < 0x100)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        if (v34 >= 2)
        {
          v30 = v35;
        }

        else
        {
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  if (v25 < a2)
  {
    v31 = ~v25 + a2;
    if (v27 < 4)
    {
      v33 = (v31 >> (8 * v27)) + 1;
      if (v27)
      {
        v36 = v31 & ~(-1 << (8 * v27));
        v37 = result;
        bzero(result, v27);
        result = v37;
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *v37 = v36;
            if (v30 > 1)
            {
LABEL_60:
              if (v30 == 2)
              {
                *&result[v27] = v33;
              }

              else
              {
                *&result[v27] = v33;
              }

              return result;
            }
          }

          else
          {
            *v37 = v31;
            if (v30 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *v37 = v36;
        v37[2] = BYTE2(v36);
      }

      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v32 = result;
      bzero(result, v27);
      result = v32;
      *v32 = v31;
      v33 = 1;
      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v30)
    {
      result[v27] = v33;
    }

    return result;
  }

  if (v30 > 1)
  {
    if (v30 != 2)
    {
      *&result[v27] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_40;
    }

    *&result[v27] = 0;
LABEL_39:
    if (!a2)
    {
      return result;
    }

    goto LABEL_40;
  }

  if (!v30)
  {
    goto LABEL_39;
  }

  result[v27] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_40:
  if (v5 == v25)
  {
    v38 = *(v43 + 56);

    return v38();
  }

  else
  {
    v39 = &result[v17 + v18] & ~v18;
    if (v7 == v25)
    {
      v40 = *(v6 + 56);
    }

    else
    {
      v39 = (v39 + v19 + v20) & ~v20;
      if (v11 == v25)
      {
        v40 = *(v10 + 56);
      }

      else
      {
        v39 = (v39 + v21 + v22) & ~v22;
        if (v14 == v25)
        {
          v40 = *(v13 + 56);
        }

        else
        {
          v40 = *(v16 + 56);
          v39 = (v26 + v39) & ~v24;
        }
      }
    }

    return v40(v39);
  }
}

uint64_t sub_1A993A954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t SFProgressTask.initialValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = v3 + *(a1 + 36);
  v6 = *(a1 + 16);
  v7 = type metadata accessor for SFProgressContinuation(0, v6, *(a1 + 24), a3);
  v8 = *(*(v6 - 8) + 16);
  v9 = v5 + *(v7 + 44);

  return v8(a2, v9, v6);
}

uint64_t SFProgressTask.finalValue.getter(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v5 = sub_1A9975F80();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A40, &qword_1A99983B0);
  v3[10] = swift_task_alloc();
  v6 = sub_1A9976020();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = *(v4 - 8);
  v4 -= 8;
  v3[14] = v7;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v8 = *(v4 + 24);
  v3[18] = v8;
  v3[19] = *(v8 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v9 = *(v4 + 32);
  v3[23] = v9;
  v11 = type metadata accessor for SFProgressContinuation.Value(0, v8, v9, v10);
  v3[24] = v11;
  v3[25] = *(v11 - 8);
  v3[26] = swift_task_alloc();
  v12 = sub_1A99770A0();
  v3[27] = v12;
  v3[28] = *(v12 - 8);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v3[30] = sub_1A9976550();
  v3[31] = swift_getWitnessTable();
  v13 = sub_1A99765B0();
  v3[32] = v13;
  v3[33] = *(v13 - 8);
  v3[34] = swift_task_alloc();
  v14 = sub_1A99765A0();
  v3[35] = v14;
  v3[36] = *(v14 - 8);
  v3[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A993AE74, 0, 0);
}

uint64_t sub_1A993AE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 264);
  v5 = *(v4 + 272);
  v8 = *(v4 + 248);
  v7 = *(v4 + 256);
  v9 = *(v4 + 240);
  v10 = *(v4 + 184);
  v11 = *(v4 + 144);
  v12 = *(v4 + 48);
  v13 = *(*(v4 + 40) + 36);
  *(v4 + 328) = v13;
  v14 = v12 + v13;
  v15 = type metadata accessor for SFProgressContinuation(0, v11, v10, a4);
  *(v4 + 304) = v15;
  v16 = *(v14 + *(v15 + 40));
  *(v4 + 312) = v16;
  *(v4 + 16) = v16;
  MEMORY[0x1AC589260](v9, v8);
  sub_1A9976580();
  (*(v6 + 8))(v5, v7);
  v17 = swift_task_alloc();
  *(v4 + 320) = v17;
  WitnessTable = swift_getWitnessTable();
  *v17 = v4;
  v17[1] = sub_1A993AFDC;
  v19 = *(v4 + 280);
  v20 = *(v4 + 232);

  return MEMORY[0x1EEE6D8E0](v20, 0, 0, v19, WitnessTable);
}

uint64_t sub_1A993AFDC()
{

  if (v0)
  {
    v1 = sub_1A993BA4C;
  }

  else
  {
    v1 = sub_1A993B0EC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A993B0EC()
{
  v88 = v0;
  v1 = *(v0 + 232);
  if ((*(*(v0 + 200) + 48))(v1, 1, *(v0 + 192)) == 1)
  {
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
    sub_1A9976530();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(*(*(v0 + 184) - 8) + 32))(*(v0 + 32), *(v0 + 208));

        v3 = *(v0 + 8);
LABEL_18:

        return v3();
      }

      swift_willThrow();
    }

    else
    {
      (*(*(v0 + 152) + 32))(*(v0 + 176), *(v0 + 208), *(v0 + 144));
      if (sub_1A9976CC0())
      {
        if (qword_1EB3B0B90 != -1)
        {
          swift_once();
        }

        v8 = *(v0 + 168);
        v9 = *(v0 + 144);
        v10 = *(v0 + 152);
        v11 = *(v0 + 136);
        v81 = *(v0 + 128);
        v83 = *(v0 + 176);
        v12 = *(v0 + 112);
        v85 = *(v0 + 120);
        v14 = *(v0 + 40);
        v13 = *(v0 + 48);
        v15 = sub_1A99764A0();
        __swift_project_value_buffer(v15, qword_1EB3B6A78);
        v16 = *(v12 + 16);
        v16(v11, v13, v14);
        v17 = *(v10 + 16);
        v17(v8, v83, v9);
        v16(v81, v13, v14);
        v16(v85, v13, v14);
        v18 = sub_1A9976480();
        v19 = sub_1A9976F70();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = *(v0 + 304);
          v82 = v20;
          v67 = *(v0 + 160);
          v68 = *(v0 + 168);
          v21 = *(v0 + 144);
          v22 = *(v0 + 152);
          log = v18;
          v23 = *(v0 + 136);
          v86 = *(v0 + 128);
          v24 = *(v0 + 112);
          v78 = *(v0 + 120);
          v69 = *(v0 + 96);
          v70 = *(v0 + 80);
          v74 = *(v0 + 72);
          v72 = *(v0 + 88);
          v73 = *(v0 + 64);
          v75 = *(v0 + 56);
          v76 = *(v0 + 104);
          v25 = *(v0 + 40);
          v66 = v17;
          v26 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v87[0] = v79;
          *v26 = 136315906;
          v27 = (v23 + *(v25 + 36) + *(v20 + 48));
          v77 = v19;
          v29 = *v27;
          v28 = v27[1];
          v30 = *(v24 + 8);
          v71 = v30;

          (v30)(v23, v25);
          v31 = sub_1A97AF148(v29, v28, v87);

          *(v26 + 4) = v31;
          *(v26 + 12) = 2080;
          v66(v67, v68, v21);
          v32 = sub_1A9976860();
          v34 = v33;
          v84 = *(v22 + 8);
          v84(v68, v21);
          v35 = sub_1A97AF148(v32, v34, v87);

          *(v26 + 14) = v35;
          *(v26 + 22) = 2080;
          (*(v69 + 56))(v70, 1, 1, v72);
          (*(v73 + 104))(v74, *MEMORY[0x1E6968F70], v75);

          sub_1A9976010();
          v36 = sub_1A9975FB0();
          v38 = v37;
          v39 = v84;
          (*(v69 + 8))(v76, v72);
          (v71)(v86, v25);
          v40 = sub_1A97AF148(v36, v38, v87);

          *(v26 + 24) = v40;
          *(v26 + 32) = 2048;
          v41 = *(v78 + *(v25 + 36) + *(v82 + 56));
          v71();
          *(v26 + 34) = v41;
          _os_log_impl(&dword_1A9662000, log, v77, "SFProgressTask was cancelled {name: %s progress: %s} [%s:%ld]", v26, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x1AC58D2C0](v79, -1, -1);
          MEMORY[0x1AC58D2C0](v26, -1, -1);
        }

        else
        {
          v56 = *(v0 + 168);
          v58 = *(v0 + 144);
          v57 = *(v0 + 152);
          v60 = *(v0 + 128);
          v59 = *(v0 + 136);
          v61 = *(v0 + 40);
          v62 = *(*(v0 + 112) + 8);
          v62(*(v0 + 120), v61);

          v62(v60, v61);
          v39 = *(v57 + 8);
          v39(v56, v58);
          v62(v59, v61);
        }

        v63 = *(v0 + 176);
        v64 = *(v0 + 144);
        sub_1A9976BC0();
        sub_1A97FC63C();
        swift_allocError();
        sub_1A99766C0();
        swift_willThrow();
        v39(v63, v64);
      }

      else
      {
        v42 = *(v0 + 304);
        v43 = *(v0 + 176);
        v45 = *(v0 + 152);
        v44 = *(v0 + 160);
        v46 = *(v0 + 144);
        v47 = *(v0 + 48) + *(v0 + 328);
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1A99772B0();
        MEMORY[0x1AC5895B0](0xD000000000000040, 0x80000001A99E8750);
        MEMORY[0x1AC5895B0](*(v47 + v42[12]), *(v47 + v42[12] + 8));
        MEMORY[0x1AC5895B0](0x6572676F7270202CLL, 0xEC000000203A7373);
        (*(v45 + 16))(v44, v43, v46);
        v48 = sub_1A9976860();
        MEMORY[0x1AC5895B0](v48);

        MEMORY[0x1AC5895B0](125, 0xE100000000000000);
        v49 = v42[14];
        v50 = (v47 + v42[13]);
        v52 = *v50;
        v51 = v50[1];
        v53 = *(v47 + v49);
        sub_1A97BCDE0();
        swift_allocError();
        *v54 = 0;
        v54[1] = 0xE000000000000000;
        v54[2] = v52;
        v54[3] = v51;
        v54[4] = v53;
        v54[10] = 0;
        swift_willThrow();
        v55 = *(v45 + 8);

        v55(v43, v46);
      }
    }

    v3 = *(v0 + 8);
    goto LABEL_18;
  }

  (*(*(v0 + 224) + 8))(v1, *(v0 + 216));
  v4 = swift_task_alloc();
  *(v0 + 320) = v4;
  WitnessTable = swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_1A993AFDC;
  v6 = *(v0 + 280);
  v7 = *(v0 + 232);

  return MEMORY[0x1EEE6D8E0](v7, 0, 0, v6, WitnessTable);
}

uint64_t sub_1A993BA4C()
{
  (*(v0[36] + 8))(v0[37], v0[35]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A993BB78()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B6A78);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B6A78);
  if (qword_1EB3B0B18 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3B3638);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SFProgressContinuation.init(_:initialProgress:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v43 = a5;
  v44 = a6;
  v41 = a2;
  v42 = a4;
  v37 = a3;
  v40 = a1;
  v39 = type metadata accessor for SFProgressContinuation.Value(0, a7, a8, a4);
  v12 = MEMORY[0x1EEE9AC00](v39);
  v38 = &v33 - v13;
  v33 = *(a7 - 8);
  v14 = v33;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v17 = sub_1A9976D60();
  v35 = *(v17 - 8);
  v36 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v34 = &v33 - v18;
  v19 = sub_1A9976D70();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - v21;
  sub_1A993BFF0(&v33 - v21);
  v24 = type metadata accessor for SFProgressContinuation(0, a7, a8, v23);
  sub_1A9976D50();
  (*(v20 + 8))(v22, v19);
  v25 = *(v14 + 16);
  v26 = v37;
  v25(v16, v37, a7);
  sub_1A9976DA0();
  v27 = v34;
  sub_1A9976D80();
  (*(v35 + 8))(v27, v36);
  sub_1A9976550();
  v25(v38, v26, a7);
  swift_storeEnumTagMultiPayload();
  *(a9 + v24[10]) = sub_1A9976560();
  result = (*(v33 + 32))(a9 + v24[11], v26, a7);
  v29 = (a9 + v24[12]);
  v30 = v41;
  *v29 = v40;
  v29[1] = v30;
  v31 = (a9 + v24[13]);
  v32 = v43;
  *v31 = v42;
  v31[1] = v32;
  *(a9 + v24[14]) = v44;
  return result;
}

uint64_t sub_1A993BFF0@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x1E69E8790];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v4 = sub_1A9976D70();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t SFProgressContinuation.yield(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v22[1] = a2;
  v8 = type metadata accessor for SFProgressContinuation.Value(0, v6, v5, a4);
  v9 = *(v8 - 8);
  v24 = v8;
  v25 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v13 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v23 = sub_1A9976D60();
  v16 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v18 = v22 - v17;
  v22[0] = *(a2 + 36);
  v19 = *(v13 + 16);
  v19(v15, a1, v6);
  sub_1A9976DA0();
  sub_1A9976D80();
  (*(v16 + 8))(v18, v23);
  v19(v12, a1, v6);
  v20 = v24;
  swift_storeEnumTagMultiPayload();
  sub_1A9976520();
  return (*(v25 + 8))(v12, v20);
}

uint64_t SFProgressContinuation.finish(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 24);
  v6 = type metadata accessor for SFProgressContinuation.Value(0, *(a2 + 16), v5, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9976DA0();
  sub_1A9976D90();
  (*(*(v5 - 8) + 16))(v9, a1, v5);
  swift_storeEnumTagMultiPayload();
  sub_1A9976520();
  (*(v7 + 8))(v9, v6);
  v12 = 0;
  return sub_1A9976510();
}

void SFProgressContinuation.fail(with:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SFProgressContinuation.Value(0, *(a2 + 16), *(a2 + 24), a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v12 - v7);
  v13 = a1;
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9976DA0();
  sub_1A9976D90();
  *v8 = a1;
  swift_storeEnumTagMultiPayload();
  v10 = a1;
  sub_1A9976520();
  (*(v6 + 8))(v8, v5);
  v13 = a1;
  v11 = a1;
  sub_1A9976510();
}

void SFProgressContinuation.cancel(_:)(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    sub_1A9976BC0();
    sub_1A97FC63C();
    v3 = swift_allocError();
    sub_1A99766C0();
    a1 = 0;
  }

  v4 = a1;
  SFProgressContinuation.fail(with:)(v3, a2, v5, v6);
}

uint64_t SFProgressContinuation.task.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  return sub_1A993C784(v5, *(a1 + 16), *(a1 + 24), a2, v7);
}

uint64_t sub_1A993C784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  v9 = type metadata accessor for SFProgressTask(0, a2, a3, a5);
  v10 = v9[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B6A90, &qword_1A99AC7C0);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = 0;
  *&a4[v10] = v11;
  *&a4[v9[11]] = 0;
  v12 = v9[9];
  v14 = type metadata accessor for SFProgressContinuation(0, a2, a3, v13);
  v15 = *(v14 - 8);
  (*(v15 + 16))(&a4[v12], a1, v14);
  v16 = (a1 + *(v14 + 48));
  v18 = *v16;
  v17 = v16[1];
  v19 = *(v15 + 8);

  result = v19(a1, v14);
  *a4 = v18;
  *(a4 + 1) = v17;
  return result;
}

uint64_t SFProgressTask.init(_:initialProgress:operation:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a7;
  v52 = a8;
  v50 = a6;
  v53 = a4;
  v54 = a5;
  v56 = a3;
  v47 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v49 = &v43 - v15;
  v55 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for SFProgressContinuation(0, a10, a11, v18);
  v19 = *(v45 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v45);
  v46 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - v22;
  v44 = a10;
  v25 = type metadata accessor for SFProgressTask(0, a10, a11, v24);
  v26 = v25[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B6A90, &qword_1A99AC7C0);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 16) = 0;
  v28 = v47;
  *(v47 + v26) = v27;
  v48 = v25[11];
  *v28 = a1;
  v28[1] = a2;
  v29 = a2;
  v30 = v28;
  (*(v55 + 16))(v17, v56, a10);

  SFProgressContinuation.init(_:initialProgress:file:line:)(a1, v29, v17, v50, v51, v52, a10, a11, v23);
  v31 = v25[9];
  v32 = *(v19 + 16);
  v33 = v45;
  v32(v30 + v31, v23, v45);
  v34 = sub_1A9976C00();
  v35 = v49;
  (*(*(v34 - 8) + 56))(v49, 1, 1, v34);
  v36 = v46;
  v32(v46, v23, v33);
  v37 = (*(v19 + 80) + 64) & ~*(v19 + 80);
  v38 = swift_allocObject();
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  v39 = v44;
  *(v38 + 4) = v44;
  *(v38 + 5) = a11;
  v40 = v54;
  *(v38 + 6) = v53;
  *(v38 + 7) = v40;
  (*(v19 + 32))(&v38[v37], v36, v33);
  v41 = sub_1A97B4F40(0, 0, v35, &unk_1A99AC7D0, v38);
  (*(v55 + 8))(v56, v39);
  result = (*(v19 + 8))(v23, v33);
  *(v30 + v48) = v41;
  return result;
}

uint64_t sub_1A993CC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v10 = type metadata accessor for SFProgressContinuation(0, a7, a8, a4);
  v8[7] = v10;
  v11 = *(v10 - 8);
  v8[8] = v11;
  v8[9] = *(v11 + 64);
  v8[10] = swift_task_alloc();
  v8[11] = *(a8 - 8);
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A993CD78, 0, 0);
}

uint64_t sub_1A993CD78()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 16);
  v10 = *(v0 + 40);
  (*(v3 + 16))(v1, *(v0 + 32), v2);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 104) = v6;
  *(v6 + 16) = v10;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v11 = (v4 + *v4);
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_1A993CF18;
  v8 = *(v0 + 96);

  return v11(v8, sub_1A993F8BC, v6);
}

uint64_t sub_1A993CF18()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1A993D118;
  }

  else
  {

    v2 = sub_1A993D034;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A993D034()
{
  v1 = v0[15];
  sub_1A9976CD0();
  v5 = v0[11];
  v4 = v0[12];
  if (v1)
  {
    (*(v5 + 8))(v4, v0[6]);
    SFProgressContinuation.fail(with:)(v1, v0[7], v6, v7);
  }

  else
  {
    v8 = v0[6];
    v9 = v0[12];
    SFProgressContinuation.finish(with:)(v4, v0[7], v2, v3);
    (*(v5 + 8))(v9, v8);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A993D118()
{

  v1 = v0[15];
  SFProgressContinuation.fail(with:)(v1, v0[7], v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t SFProgressTask.cancel(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SFProgressContinuation(0, *(a2 + 16), *(a2 + 24), a4);
  SFProgressContinuation.cancel(_:)(a1, v7);
  result = *(v4 + *(a2 + 44));
  if (result)
  {

    return sub_1A9976CB0();
  }

  return result;
}

uint64_t SFProgressTask.makeAsyncIterator()(uint64_t a1)
{
  sub_1A993D2C0(*(v1 + *(a1 + 40)));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9976DE0();
  return sub_1A9976C70();
}

void sub_1A993D2C0(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 6);
  sub_1A993F89C(&a1[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(a1 + 6);
}

void *sub_1A993D31C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*result)
  {
    sub_1A99772B0();
    MEMORY[0x1AC5895B0](0xD000000000000034, 0x80000001A99E8810);
    v8 = a2 + *(type metadata accessor for SFProgressTask(0, a3, a4, v7) + 36);
    v10 = (v8 + *(type metadata accessor for SFProgressContinuation(0, a3, a4, v9) + 48));
    MEMORY[0x1AC5895B0](*v10, v10[1]);
    result = sub_1A9977470();
    __break(1u);
  }

  else
  {
    *result = 1;
  }

  return result;
}

uint64_t sub_1A993D404(uint64_t a1)
{
  SFProgressTask.makeAsyncIterator()(a1);
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

uint64_t SFProgressTask.split()(char *a1, char *a2, uint64_t a3)
{
  v67 = a1;
  v68 = a2;
  v65 = *(a3 - 8);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v64 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v73 = &v58 - v8;
  v9 = *(a3 + 16);
  v74 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 24);
  v69 = a3;
  v70 = v12;
  v14 = type metadata accessor for SFProgressContinuation(0, v9, v12, v13);
  v63 = *(v14 - 8);
  v61 = *(v63 + 64);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v62 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v60 = &v58 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v71 = &v58 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v58 - v21;
  v72 = &v58 - v21;
  v23 = *v3;
  v24 = v3[1];
  v25 = v3;
  v58 = v3;
  v75 = v23;
  v76 = v24;

  MEMORY[0x1AC5895B0](0x654C74696C70732DLL, 0xEA00000000007466);
  v26 = v75;
  v27 = v76;
  v28 = v25 + *(a3 + 36);
  v29 = *(v14 + 44);
  v30 = *(v74 + 16);
  v74 += 16;
  v30(v11, &v28[v29], v9);
  v31 = v27;
  v59 = v9;
  v32 = v70;
  SFProgressContinuation.init(_:initialProgress:file:line:)(v26, v31, v11, 0xD00000000000004CLL, 0x80000001A99E87A0, 190, v9, v70, v22);
  v75 = v23;
  v76 = v24;

  MEMORY[0x1AC5895B0](0x695274696C70732DLL, 0xEB00000000746867);
  v33 = v75;
  v34 = v76;
  v35 = v69;
  v36 = v58;
  v30(v11, v58 + *(v69 + 36) + *(v14 + 44), v9);
  v37 = v71;
  SFProgressContinuation.init(_:initialProgress:file:line:)(v33, v34, v11, 0xD00000000000004CLL, 0x80000001A99E87A0, 191, v9, v32, v71);
  v38 = sub_1A9976C00();
  (*(*(v38 - 8) + 56))(v73, 1, 1, v38);
  v40 = v64;
  v39 = v65;
  (*(v65 + 16))(v64, v36, v35);
  v41 = v63;
  v42 = *(v63 + 16);
  v43 = v60;
  v42(v60, v72, v14);
  v44 = v62;
  v42(v62, v37, v14);
  v45 = v39;
  v46 = (*(v39 + 80) + 48) & ~*(v39 + 80);
  v47 = *(v41 + 80);
  v48 = (v66 + v46 + v47) & ~v47;
  v49 = (v61 + v47 + v48) & ~v47;
  v50 = swift_allocObject();
  *(v50 + 2) = 0;
  *(v50 + 3) = 0;
  v51 = v69;
  v52 = v70;
  *(v50 + 4) = v59;
  *(v50 + 5) = v52;
  (*(v45 + 32))(&v50[v46], v40, v51);
  v53 = *(v41 + 32);
  v53(&v50[v48], v43, v14);
  v53(&v50[v49], v44, v14);
  sub_1A97B4F40(0, 0, v73, &unk_1A99AC7E0, v50);

  v54 = v72;
  SFProgressContinuation.task.getter(v14, v67);
  v55 = v71;
  SFProgressContinuation.task.getter(v14, v68);
  v56 = *(v41 + 8);
  v56(v55, v14);
  return (v56)(v54, v14);
}

uint64_t sub_1A993D9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v8[8] = *(a8 - 8);
  v8[9] = swift_task_alloc();
  v8[10] = *(a7 - 8);
  v8[11] = swift_task_alloc();
  sub_1A99770A0();
  v8[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v10 = sub_1A9976DD0();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A993DBBC, 0, 0);
}

uint64_t sub_1A993DBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SFProgressTask(0, v4[6], v4[7], a4);
  v4[16] = v5;
  SFProgressTask.makeAsyncIterator()(v5);
  v6 = swift_task_alloc();
  v4[17] = v6;
  *v6 = v4;
  v6[1] = sub_1A993DC84;
  v7 = v4[12];
  v8 = v4[13];

  return MEMORY[0x1EEE6DB90](v7, 0, 0, v8, v4 + 2);
}

uint64_t sub_1A993DC84()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1A993E234;
  }

  else
  {
    v2 = sub_1A993DD98;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A993DD98()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[6];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[18];
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_1A9976CD0();
    if (v4)
    {
      v6 = type metadata accessor for SFProgressContinuation(0, v0[6], v0[7], v5);
      SFProgressContinuation.fail(with:)(v4, v6, v7, v8);
      SFProgressContinuation.fail(with:)(v4, v6, v9, v10);

      v11 = v0[1];

      return v11();
    }

    else
    {
      v24 = swift_task_alloc();
      v0[19] = v24;
      *v24 = v0;
      v24[1] = sub_1A993E040;
      v25 = v0[16];
      v26 = v0[9];

      return SFProgressTask.finalValue.getter(v26, v25);
    }
  }

  else
  {
    v13 = v0[11];
    v14 = v0[7];
    (*(v2 + 32))(v13, v1, v3);
    v16 = type metadata accessor for SFProgressContinuation(0, v3, v14, v15);
    SFProgressContinuation.yield(_:)(v13, v16, v17, v18);
    SFProgressContinuation.yield(_:)(v13, v16, v19, v20);
    (*(v2 + 8))(v13, v3);
    v21 = swift_task_alloc();
    v0[17] = v21;
    *v21 = v0;
    v21[1] = sub_1A993DC84;
    v22 = v0[12];
    v23 = v0[13];

    return MEMORY[0x1EEE6DB90](v22, 0, 0, v23, v0 + 2);
  }
}

uint64_t sub_1A993E040()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1A993E310;
  }

  else
  {
    v2 = sub_1A993E154;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A993E154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[8];
  v5 = v4[9];
  v7 = v4[7];
  v8 = type metadata accessor for SFProgressContinuation(0, v4[6], v7, a4);
  SFProgressContinuation.finish(with:)(v5, v8, v9, v10);
  SFProgressContinuation.finish(with:)(v5, v8, v11, v12);
  (*(v6 + 8))(v5, v7);

  v13 = v4[1];

  return v13();
}

uint64_t sub_1A993E234()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  v1 = v0[2];
  v3 = type metadata accessor for SFProgressContinuation(0, v0[6], v0[7], v2);
  SFProgressContinuation.fail(with:)(v1, v3, v4, v5);
  SFProgressContinuation.fail(with:)(v1, v3, v6, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A993E310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[20];
  v6 = type metadata accessor for SFProgressContinuation(0, v4[6], v4[7], a4);
  SFProgressContinuation.fail(with:)(v5, v6, v7, v8);
  SFProgressContinuation.fail(with:)(v5, v6, v9, v10);

  v11 = v4[1];

  return v11();
}

uint64_t withProgressTask<A, B>(_:initialProgress:operation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v36 = a4;
  v37 = a5;
  v33 = a3;
  v35 = a1;
  v38 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v34 = &v33 - v13;
  v14 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SFProgressContinuation(0, a6, a7, v17);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v33 - v23;
  (*(v14 + 16))(v16, v33, a6);

  v25 = v16;
  v26 = a7;
  SFProgressContinuation.init(_:initialProgress:file:line:)(v35, a2, v25, 0xD00000000000004CLL, 0x80000001A99E87A0, 217, a6, a7, v24);
  v27 = sub_1A9976C00();
  v28 = v34;
  (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
  (*(v19 + 16))(v22, v24, v18);
  v29 = (*(v19 + 80) + 64) & ~*(v19 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = a6;
  *(v30 + 5) = v26;
  v31 = v37;
  *(v30 + 6) = v36;
  *(v30 + 7) = v31;
  (*(v19 + 32))(&v30[v29], v22, v18);

  sub_1A97B4F40(0, 0, v28, &unk_1A99AC7F0, v30);

  SFProgressContinuation.task.getter(v18, v38);
  return (*(v19 + 8))(v24, v18);
}

uint64_t sub_1A993E704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A993E72C, 0, 0);
}

uint64_t sub_1A993E72C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 16);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v3;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1A993E850;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v7, &unk_1A99AC8C0, v4, sub_1A993F864, v6, 0, 0, v8);
}

uint64_t sub_1A993E850()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1A993E974;
  }

  else
  {

    v2 = sub_1A9852E14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A993E974()
{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];

  v5 = type metadata accessor for SFProgressContinuation(0, v3, v2, v4);
  SFProgressContinuation.fail(with:)(v1, v5, v6, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A993EA1C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1A97B2638;

  return v8(a4);
}

uint64_t sub_1A993EB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[4];
  v7 = v4[5];
  v9 = *(type metadata accessor for SFProgressContinuation(0, v8, v7, a4) - 8);
  v10 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = v4[6];
  v14 = v4[7];
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_1A97B2988;

  return sub_1A993CC4C(a1, v11, v12, v13, v14, v4 + v10, v8, v7);
}

uint64_t sub_1A993EC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = v4[4];
  v8 = v4[5];
  v10 = *(type metadata accessor for SFProgressTask(0, v9, v8, a4) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v14 = *(type metadata accessor for SFProgressContinuation(0, v9, v8, v13) - 8);
  v15 = *(v14 + 80);
  v16 = (v11 + v12 + v15) & ~v15;
  v17 = (*(v14 + 64) + v15 + v16) & ~v15;
  v18 = v4[2];
  v19 = v4[3];
  v20 = swift_task_alloc();
  *(v6 + 16) = v20;
  *v20 = v6;
  v20[1] = sub_1A97B2638;

  return sub_1A993D9F8(a1, v18, v19, v4 + v11, v4 + v16, v4 + v17, v9, v8);
}

uint64_t objectdestroyTm_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for SFProgressContinuation(0, v5, *(v4 + 40), a4) - 8);
  v7 = (*(*v6 + 80) + 64) & ~*(*v6 + 80);
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v8 = sub_1A9976DE0();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  v9 = v6[11];
  v10 = sub_1A9976DA0();
  (*(*(v10 - 8) + 8))(v4 + v7 + v9, v10);

  (*(*(v5 - 8) + 8))(v4 + v7 + v6[13], v5);

  return swift_deallocObject();
}

uint64_t sub_1A993EFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[4];
  v7 = v4[5];
  v9 = *(type metadata accessor for SFProgressContinuation(0, v8, v7, a4) - 8);
  v10 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = v4[6];
  v14 = v4[7];
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_1A97B2988;

  return sub_1A993E704(a1, v11, v12, v13, v14, v4 + v10, v8, v7);
}

uint64_t sub_1A993F120(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  result = sub_1A9976DE0();
  if (v4 <= 0x3F)
  {
    result = sub_1A9976DA0();
    if (v6 <= 0x3F)
    {
      type metadata accessor for SFProgressContinuation.Value(255, v2, *(a1 + 24), v5);
      result = sub_1A9976550();
      if (v7 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1A993F278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SFProgressContinuation(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_1A993F350();
    if (v5 <= 0x3F)
    {
      sub_1A993F3A0(319);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A993F350()
{
  if (!qword_1EB3B6B18)
  {
    v0 = sub_1A9976470();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3B6B18);
    }
  }
}

void sub_1A993F3A0(uint64_t a1)
{
  if (!qword_1EB3B6B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
    v1 = sub_1A99770A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB3B6B20);
    }
  }
}

unint64_t sub_1A993F404(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_1A97F3654();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A993F494(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = 8;
  if (v3 > 8)
  {
    v5 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
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

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_1A993F5C8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_41:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v5] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_26;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t sub_1A993F79C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A97B2638;

  return sub_1A993EA1C(a1, v4, v5, v6);
}

uint64_t static NWParameters.airDropClientBrowserParameters(domain:type:bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1A9976610();
  sub_1A9976620();
  v8 = xpc_array_create(0, 0);
  v9 = sub_1A99764B0();
  v10 = sub_1A9976890();
  xpc_array_set_string(v8, v9, (v10 + 32));

  v11 = xpc_array_create(0, 0);
  v12 = sub_1A99764B0();
  v13 = sub_1A9976890();
  xpc_array_set_string(v11, v12, (v13 + 32));

  swift_unknownObjectRetain();
  nw_parameters_set_required_netagent_classes();
  if (a6)
  {
    sub_1A9976890();
    nw_parameters_set_attributed_bundle_identifier();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();
  return v7;
}

uint64_t static NWParameters.airDropNetworkBrowserParameters(domain:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1A9976610();
  sub_1A9976620();
  v5 = xpc_array_create(0, 0);
  v6 = sub_1A99764B0();
  v7 = sub_1A9976890();
  xpc_array_set_string(v5, v6, (v7 + 32));

  v8 = xpc_array_create(0, 0);
  v9 = sub_1A99764B0();
  v10 = sub_1A9976890();
  xpc_array_set_string(v8, v9, (v10 + 32));

  swift_unknownObjectRetain();
  nw_parameters_set_required_netagent_classes();
  nw_parameters_set_include_ble();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();
  return v4;
}

uint64_t SFNWInterfaceType.description.getter()
{
  v1 = *v0;
  v2 = 1818523489;
  v3 = 1768319351;
  if (v1 != 5)
  {
    v3 = 0x6465726977;
  }

  v4 = 0x4669576C61636F6CLL;
  if (v1 != 3)
  {
    v4 = 0x726568746FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x72616C756C6C6563;
  if (v1 != 1)
  {
    v5 = 0x6957746365726964;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A993FC70(uint64_t a1)
{
  v2 = sub_1A99409AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A993FCAC(uint64_t a1)
{
  v2 = sub_1A99409AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A993FCE8(uint64_t a1)
{
  v2 = sub_1A9940958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A993FD24(uint64_t a1)
{
  v2 = sub_1A9940958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A993FD60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A9941BB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A993FD94(uint64_t a1)
{
  v2 = sub_1A9940760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A993FDD0(uint64_t a1)
{
  v2 = sub_1A9940760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A993FE0C(uint64_t a1)
{
  v2 = sub_1A9940904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A993FE48(uint64_t a1)
{
  v2 = sub_1A9940904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A993FE84(uint64_t a1)
{
  v2 = sub_1A99408B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A993FEC0(uint64_t a1)
{
  v2 = sub_1A99408B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A993FEFC(uint64_t a1)
{
  v2 = sub_1A994085C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A993FF38(uint64_t a1)
{
  v2 = sub_1A994085C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A993FF74(uint64_t a1)
{
  v2 = sub_1A9940808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A993FFB0(uint64_t a1)
{
  v2 = sub_1A9940808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A993FFEC(uint64_t a1)
{
  v2 = sub_1A99407B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9940028(uint64_t a1)
{
  v2 = sub_1A99407B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFNWInterfaceType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6B28, &qword_1A99AC900);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6B30, &qword_1A99AC908);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6B38, &qword_1A99AC910);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6B40, &qword_1A99AC918);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v38 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6B48, &qword_1A99AC920);
  v55 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v54 = &v38 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6B50, &qword_1A99AC928);
  v53 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6B58, &qword_1A99AC930);
  v52 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6B60, &qword_1A99AC938);
  v18 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v20 = &v38 - v19;
  v21 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9940760();
  v56 = v20;
  sub_1A9977AA0();
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
        sub_1A9940958();
        v33 = v56;
        v32 = v57;
        sub_1A9977640();
        (*(v29 + 8))(v14, v38);
      }

      else
      {
        v60 = 2;
        sub_1A9940904();
        v37 = v30;
        v33 = v56;
        v32 = v57;
        sub_1A9977640();
        (*(v31 + 8))(v37, v39);
      }

      return (*v22)(v33, v32);
    }

    else
    {
      v58 = 0;
      sub_1A99409AC();
      v34 = v56;
      v35 = v57;
      sub_1A9977640();
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
        sub_1A9940808();
        v23 = v46;
        v24 = v56;
        v25 = v57;
        sub_1A9977640();
        v27 = v47;
        v26 = v48;
      }

      else
      {
        v64 = 6;
        sub_1A99407B4();
        v23 = v49;
        v24 = v56;
        v25 = v57;
        sub_1A9977640();
        v27 = v50;
        v26 = v51;
      }
    }

    else if (v21 == 3)
    {
      v61 = 3;
      sub_1A99408B0();
      v23 = v40;
      v24 = v56;
      v25 = v57;
      sub_1A9977640();
      v27 = v41;
      v26 = v42;
    }

    else
    {
      v62 = 4;
      sub_1A994085C();
      v23 = v43;
      v24 = v56;
      v25 = v57;
      sub_1A9977640();
      v27 = v44;
      v26 = v45;
    }

    (*(v27 + 8))(v23, v26);
    return (*v22)(v24, v25);
  }
}

unint64_t sub_1A9940760()
{
  result = qword_1EB3B6B68;
  if (!qword_1EB3B6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6B68);
  }

  return result;
}

unint64_t sub_1A99407B4()
{
  result = qword_1EB3B6B70;
  if (!qword_1EB3B6B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6B70);
  }

  return result;
}

unint64_t sub_1A9940808()
{
  result = qword_1EB3B6B78;
  if (!qword_1EB3B6B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6B78);
  }

  return result;
}

unint64_t sub_1A994085C()
{
  result = qword_1EB3B6B80;
  if (!qword_1EB3B6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6B80);
  }

  return result;
}

unint64_t sub_1A99408B0()
{
  result = qword_1EB3B6B88;
  if (!qword_1EB3B6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6B88);
  }

  return result;
}

unint64_t sub_1A9940904()
{
  result = qword_1EB3B6B90;
  if (!qword_1EB3B6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6B90);
  }

  return result;
}

unint64_t sub_1A9940958()
{
  result = qword_1EB3B6B98;
  if (!qword_1EB3B6B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6B98);
  }

  return result;
}

unint64_t sub_1A99409AC()
{
  result = qword_1EB3B6BA0;
  if (!qword_1EB3B6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6BA0);
  }

  return result;
}

uint64_t SFNWInterfaceType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6BA8, &qword_1A99AC940);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6BB0, &qword_1A99AC948);
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6BB8, &qword_1A99AC950);
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6BC0, &qword_1A99AC958);
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v47 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6BC8, &qword_1A99AC960);
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v63 = &v47 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6BD0, &qword_1A99AC968);
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6BD8, &qword_1A99AC970);
  v49 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6BE0, &unk_1A99AC978);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - v19;
  v21 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1A9940760();
  v22 = v69;
  sub_1A9977A70();
  if (!v22)
  {
    v23 = v16;
    v47 = v14;
    v48 = v13;
    v24 = v65;
    v25 = v66;
    v26 = v67;
    v69 = v18;
    v27 = sub_1A9977620();
    v28 = (2 * *(v27 + 16)) | 1;
    v70 = v27;
    v71 = v27 + 32;
    v72 = 0;
    v73 = v28;
    v29 = sub_1A97AB9CC();
    v30 = v20;
    if (v29 != 7 && v72 == v73 >> 1)
    {
      v74 = v29;
      if (v29 > 2u)
      {
        if (v29 > 4u)
        {
          v33 = v64;
          v43 = v69;
          if (v29 == 5)
          {
            v75 = 5;
            sub_1A9940808();
            v44 = v62;
            sub_1A9977530();
            (*(v58 + 8))(v44, v59);
          }

          else
          {
            v75 = 6;
            sub_1A99407B4();
            sub_1A9977530();
            (*(v60 + 8))(v26, v61);
          }

          (*(v43 + 8))(v30, v17);
          swift_unknownObjectRelease();
          v37 = v68;
        }

        else
        {
          v31 = v68;
          v32 = v69;
          v33 = v64;
          if (v29 == 3)
          {
            v75 = 3;
            sub_1A99408B0();
            sub_1A9977530();
            (*(v54 + 8))(v24, v55);
          }

          else
          {
            v75 = 4;
            sub_1A994085C();
            sub_1A9977530();
            (*(v56 + 8))(v25, v57);
          }

          (*(v32 + 8))(v30, v17);
          swift_unknownObjectRelease();
          v37 = v31;
        }

        goto LABEL_24;
      }

      if (v29)
      {
        if (v29 != 1)
        {
          v75 = 2;
          sub_1A9940904();
          v46 = v63;
          sub_1A9977530();
          v40 = *(v52 + 8);
          v41 = v46;
          v45 = v53;
          goto LABEL_19;
        }

        v75 = 1;
        sub_1A9940958();
        v39 = v48;
        sub_1A9977530();
        v40 = *(v50 + 8);
        v41 = v39;
        v42 = &v77;
      }

      else
      {
        v75 = 0;
        sub_1A99409AC();
        sub_1A9977530();
        v40 = *(v49 + 8);
        v41 = v23;
        v42 = &v76;
      }

      v45 = *(v42 - 32);
LABEL_19:
      v40(v41, v45);
      (*(v69 + 8))(v30, v17);
      swift_unknownObjectRelease();
      v37 = v68;
      v33 = v64;
LABEL_24:
      *v33 = v74;
      return __swift_destroy_boxed_opaque_existential_0Tm(v37);
    }

    v34 = sub_1A9977300();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
    *v36 = &type metadata for SFNWInterfaceType;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v69 + 8))(v30, v17);
    swift_unknownObjectRelease();
  }

  v37 = v68;
  return __swift_destroy_boxed_opaque_existential_0Tm(v37);
}

uint64_t SFNWInterfaceTypeCategory.description.getter()
{
  v1 = 0x6465726977;
  if (*v0 != 1)
  {
    v1 = 0x72616C75676572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72616C756C6C6563;
  }
}

uint64_t sub_1A9941400()
{
  v1 = 0x6465726977;
  if (*v0 != 1)
  {
    v1 = 0x72616C75676572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72616C756C6C6563;
  }
}

Sharing::SFNWInterfaceTypeCategory __swiftcall SFNWInterfaceType.category()()
{
  v2 = *v1;
  if (v2 >= 7)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0x1020202010002uLL >> (8 * v2);
  }

  *v0 = v3;
  return result;
}

unint64_t sub_1A994148C()
{
  result = qword_1EB3B6BE8;
  if (!qword_1EB3B6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6BE8);
  }

  return result;
}

unint64_t sub_1A99414E4()
{
  result = qword_1EB3B6BF0;
  if (!qword_1EB3B6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6BF0);
  }

  return result;
}

unint64_t sub_1A99415DC()
{
  result = qword_1EB3B6BF8;
  if (!qword_1EB3B6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6BF8);
  }

  return result;
}

unint64_t sub_1A9941634()
{
  result = qword_1EB3B6C00;
  if (!qword_1EB3B6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C00);
  }

  return result;
}

unint64_t sub_1A994168C()
{
  result = qword_1EB3B6C08;
  if (!qword_1EB3B6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C08);
  }

  return result;
}

unint64_t sub_1A99416E4()
{
  result = qword_1EB3B6C10;
  if (!qword_1EB3B6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C10);
  }

  return result;
}

unint64_t sub_1A994173C()
{
  result = qword_1EB3B6C18;
  if (!qword_1EB3B6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C18);
  }

  return result;
}

unint64_t sub_1A9941794()
{
  result = qword_1EB3B6C20;
  if (!qword_1EB3B6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C20);
  }

  return result;
}

unint64_t sub_1A99417EC()
{
  result = qword_1EB3B6C28;
  if (!qword_1EB3B6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C28);
  }

  return result;
}

unint64_t sub_1A9941844()
{
  result = qword_1EB3B6C30;
  if (!qword_1EB3B6C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C30);
  }

  return result;
}

unint64_t sub_1A994189C()
{
  result = qword_1EB3B6C38;
  if (!qword_1EB3B6C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C38);
  }

  return result;
}

unint64_t sub_1A99418F4()
{
  result = qword_1EB3B6C40;
  if (!qword_1EB3B6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C40);
  }

  return result;
}

unint64_t sub_1A994194C()
{
  result = qword_1EB3B6C48;
  if (!qword_1EB3B6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C48);
  }

  return result;
}

unint64_t sub_1A99419A4()
{
  result = qword_1EB3B6C50;
  if (!qword_1EB3B6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C50);
  }

  return result;
}

unint64_t sub_1A99419FC()
{
  result = qword_1EB3B6C58;
  if (!qword_1EB3B6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C58);
  }

  return result;
}

unint64_t sub_1A9941A54()
{
  result = qword_1EB3B6C60;
  if (!qword_1EB3B6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C60);
  }

  return result;
}

unint64_t sub_1A9941AAC()
{
  result = qword_1EB3B6C68;
  if (!qword_1EB3B6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C68);
  }

  return result;
}

unint64_t sub_1A9941B04()
{
  result = qword_1EB3B6C70;
  if (!qword_1EB3B6C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C70);
  }

  return result;
}

unint64_t sub_1A9941B5C()
{
  result = qword_1EB3B6C78;
  if (!qword_1EB3B6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6C78);
  }

  return result;
}

uint64_t sub_1A9941BB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1818523489 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616C756C6C6563 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6957746365726964 && a2 == 0xEB00000000646572 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4669576C61636F6CLL && a2 == 0xE900000000000069 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1768319351 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6465726977 && a2 == 0xE500000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t SFAppleIDAddKeyToKeychain(void *a1, uint64_t a2, int a3, void *a4)
{
  v50[4] = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = 0;
  result = 0;
  v8 = 4294960591;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (!v6 || !a2)
  {
    goto LABEL_69;
  }

  v14 = MEMORY[0x1E697AD38];
  if (!a3)
  {
    v14 = MEMORY[0x1E697AD40];
  }

  v13 = *v14;
  v15 = *MEMORY[0x1E697AFF8];
  v16 = *MEMORY[0x1E697B020];
  v17 = *MEMORY[0x1E697AD30];
  v49[0] = *MEMORY[0x1E697AFF8];
  v49[1] = v17;
  v50[0] = v16;
  v50[1] = v13;
  v18 = *MEMORY[0x1E697B320];
  v49[2] = *MEMORY[0x1E697B3D0];
  v49[3] = v18;
  v50[2] = a2;
  v50[3] = MEMORY[0x1E695E118];
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:4];
  v10 = v19;
  if (!v19)
  {
    v7 = 0;
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v8 = 4294960534;
    goto LABEL_69;
  }

  v20 = SecItemCopyMatching(v19, &result);
  if (v20 == -25300)
  {
    goto LABEL_15;
  }

  v21 = v20;
  if (v20)
  {
    OUTLINED_FUNCTION_4_2();
    if (v24 ^ v25 | v23 && (v22 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDAddKeyToKeychain(NSString * _Nonnull __strong, SecKeyRef _Nonnull, BOOL, NSData * _Nullable __autoreleasing * _Nullable)", 60, "SecItemCopyMatching failed with error %#m\n", v21);
    }

LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v12 = result;
  if (result)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v12;
      v11 = v12;
      goto LABEL_17;
    }
  }

LABEL_16:
  v11 = 0;
LABEL_17:
  v26 = [MEMORY[0x1E695DF90] dictionary];
  v7 = v26;
  if (!v26)
  {
    v9 = 0;
    v8 = 4294960568;
    goto LABEL_69;
  }

  [v26 setObject:@"com.apple.sharing.appleidauthentication" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
  [v7 setObject:*MEMORY[0x1E697ABE8] forKeyedSubscript:*MEMORY[0x1E697ABD8]];
  if (v11)
  {
    v27 = *MEMORY[0x1E697B3C8];
    v47[0] = v15;
    v47[1] = v27;
    v48[0] = v16;
    v48[1] = v11;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
    v9 = v28;
    if (!v28)
    {
      v8 = 4294960534;
      goto LABEL_69;
    }

    v29 = SecItemUpdate(v28, v7);
    if (!v29)
    {
      if (gLogCategory_SFAppleIDKeychainUtilities <= 30)
      {
        v31 = a4;
        if (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDAddKeyToKeychain(NSString * _Nonnull __strong, SecKeyRef _Nonnull, BOOL, NSData * _Nullable __autoreleasing * _Nullable)", 30, "Updated key in keychain for %{mask}\n", v6);
        }

        goto LABEL_56;
      }

      goto LABEL_55;
    }

    if (gLogCategory_SFAppleIDKeychainUtilities <= 60)
    {
      v30 = v29;
      if (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDAddKeyToKeychain(NSString * _Nonnull __strong, SecKeyRef _Nonnull, BOOL, NSData * _Nullable __autoreleasing * _Nullable)", 60, "### SecItemUpdate failed with error %#m\n", v30);
      }
    }

    if (SecItemDelete(v9))
    {
      OUTLINED_FUNCTION_4_2();
      if (v24 ^ v25 | v23)
      {
        v34 = v32;
        if (v33 != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDAddKeyToKeychain(NSString * _Nonnull __strong, SecKeyRef _Nonnull, BOOL, NSData * _Nullable __autoreleasing * _Nullable)", 60, "### SecItemDelete failed with error %#m\n", v34);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  [v7 addEntriesFromDictionary:v10];
  [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
  [v7 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E697AEB0]];
  if (!SecItemAdd(v7, &result))
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_4_2();
  if (v24 ^ v25 | v23)
  {
    v37 = v35;
    if (v36 != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDAddKeyToKeychain(NSString * _Nonnull __strong, SecKeyRef _Nonnull, BOOL, NSData * _Nullable __autoreleasing * _Nullable)", 60, "### First SecItemAdd failed with error %#m\n", v37);
    }
  }

  v38 = SecItemDelete(v7);
  if (v38)
  {
    v8 = v38;
    OUTLINED_FUNCTION_4_2();
    if (v24 ^ v25 | v23 && (v39 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDAddKeyToKeychain(NSString * _Nonnull __strong, SecKeyRef _Nonnull, BOOL, NSData * _Nullable __autoreleasing * _Nullable)", 60, "### SecItemDelete (after Add) failed with error %#m\n", v8);
    }

    goto LABEL_69;
  }

  v40 = SecItemAdd(v7, &result);
  if (!v40)
  {
LABEL_50:
    v41 = result;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 4294960540;
      v12 = v41;
      goto LABEL_69;
    }

    v12 = v41;

    if (gLogCategory_SFAppleIDKeychainUtilities <= 30)
    {
      if (gLogCategory_SFAppleIDKeychainUtilities == -1)
      {
        v31 = a4;
        v11 = v12;
        if (_LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDAddKeyToKeychain(NSString * _Nonnull __strong, SecKeyRef _Nonnull, BOOL, NSData * _Nullable __autoreleasing * _Nullable)", 30, "Added key to keychain for %{mask}\n", v6);
        }
      }

      else
      {
        v11 = v12;
        v31 = a4;
        LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDAddKeyToKeychain(NSString * _Nonnull __strong, SecKeyRef _Nonnull, BOOL, NSData * _Nullable __autoreleasing * _Nullable)", 30, "Added key to keychain for %{mask}\n", v6);
      }

      goto LABEL_56;
    }

    v11 = v12;
LABEL_55:
    v31 = a4;
LABEL_56:
    if (v31)
    {
      v42 = v11;
      v8 = 0;
      *v31 = v11;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_69;
  }

  v8 = v40;
  OUTLINED_FUNCTION_4_2();
  if (v24 ^ v25 | v23 && (v44 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDAddKeyToKeychain(NSString * _Nonnull __strong, SecKeyRef _Nonnull, BOOL, NSData * _Nullable __autoreleasing * _Nullable)", 60, "### Second SecItemAdd failed with error %#m\n", v8);
  }

LABEL_69:

  return v8;
}

uint64_t SFAppleIDRemoveKeyFromKeychain(void *a1, void *a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = *MEMORY[0x1E697B020];
    v7 = *MEMORY[0x1E697B3C8];
    v13[0] = *MEMORY[0x1E697AFF8];
    v13[1] = v7;
    v14[0] = v6;
    v14[1] = v4;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v9 = v8;
    if (v8)
    {
      v10 = SecItemDelete(v8);
      if (v10 == -25300)
      {
        if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDRemoveKeyFromKeychain(NSString * _Nullable __strong, NSData * _Nonnull __strong)", 60, "No such certificate in keychain\n");
        }

        v11 = 4294941996;
      }

      else
      {
        v11 = v10;
        if (v10)
        {
          if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDRemoveKeyFromKeychain(NSString * _Nullable __strong, NSData * _Nonnull __strong)", 60, "### RemoveKeyFromKeychainForAppleID failed with error %#m\n", v11);
          }
        }

        else
        {
          if (gLogCategory_SFAppleIDKeychainUtilities <= 30 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDRemoveKeyFromKeychain(NSString * _Nullable __strong, NSData * _Nonnull __strong)", 30, "Removed key from keychain for %{mask}\n", v3);
          }

          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 4294960534;
    }
  }

  else
  {
    v9 = 0;
    v11 = 4294960591;
  }

  return v11;
}

uint64_t SFAppleIDCopyKeyFromKeychainForReference(void *a1, CFTypeRef *a2)
{
  result[7] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  result[0] = 0;
  if (v3)
  {
    v5 = *MEMORY[0x1E697B3C8];
    result[1] = *MEMORY[0x1E697AFF8];
    result[2] = v5;
    result[4] = *MEMORY[0x1E697B020];
    result[5] = v3;
    result[3] = *MEMORY[0x1E697B328];
    result[6] = MEMORY[0x1E695E118];
    OUTLINED_FUNCTION_1_1();
    v7 = [v6 dictionaryWithObjects:? forKeys:? count:?];
    v8 = SecItemCopyMatching(v7, result);
    if (v8)
    {
      v11 = v8;
      if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDCopyKeyFromKeychainForReference(NSData * _Nonnull __strong, SecKeyRef  _Nullable * _Nullable)", 90, "### SecItemCopyMatching failed with error %#m\n", v11);
      }
    }

    else if (result[0])
    {
      v9 = CFGetTypeID(result[0]);
      TypeID = SecKeyGetTypeID();
      v11 = 0;
      if (a2 && v9 == TypeID)
      {
        v11 = 0;
        *a2 = result[0];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v7 = 0;
    v11 = 4294960591;
  }

  return v11;
}

uint64_t SFAppleIDCopyKeychainReferenceForKey(const void *a1, void *a2)
{
  result[7] = *MEMORY[0x1E69E9840];
  result[0] = 0;
  if (a1)
  {
    v3 = *MEMORY[0x1E697B3D0];
    result[1] = *MEMORY[0x1E697AFF8];
    result[2] = v3;
    result[4] = *MEMORY[0x1E697B020];
    result[5] = a1;
    result[3] = *MEMORY[0x1E697B320];
    result[6] = MEMORY[0x1E695E118];
    OUTLINED_FUNCTION_1_1();
    v5 = [v4 dictionaryWithObjects:? forKeys:? count:?];
    v6 = SecItemCopyMatching(v5, result);
    if (v6)
    {
      v8 = v6;
      if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDCopyKeychainReferenceForKey(SecKeyRef _Nullable, NSData * _Nullable __autoreleasing * _Nullable)", 90, "### SecItemCopyMatching failed with error %#m\n", v8);
      }
    }

    else if (result[0])
    {
      v7 = CFGetTypeID(result[0]);
      if (v7 == CFDataGetTypeID())
      {
        v8 = 0;
        if (a2)
        {
          *a2 = result[0];
        }
      }

      else
      {
        v8 = 4294960540;
      }
    }

    else
    {
      v8 = 4294960534;
    }
  }

  else
  {
    v5 = 0;
    v8 = 4294960591;
  }

  return v8;
}

uint64_t SFAppleIDRemoveCertificateFromKeychain(void *a1, void *a2)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = *MEMORY[0x1E697B3C8];
    v12[0] = *MEMORY[0x1E697AFF8];
    v12[1] = v6;
    v13[0] = *MEMORY[0x1E697B000];
    v13[1] = v4;
    v12[2] = *MEMORY[0x1E697B328];
    v13[2] = MEMORY[0x1E695E118];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v8 = v7;
    if (v7)
    {
      v9 = SecItemDelete(v7);
      if (v9 == -25300)
      {
        if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDRemoveCertificateFromKeychain(NSString * _Nullable __strong, NSData * _Nonnull __strong)", 60, "No such certificate in keychain\n");
        }

        v10 = 4294941996;
      }

      else
      {
        v10 = v9;
        if (v9)
        {
          if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDRemoveCertificateFromKeychain(NSString * _Nullable __strong, NSData * _Nonnull __strong)", 60, "### RemoveCertificateFromKeychainForAppleID failed with error %#m\n", v10);
          }
        }

        else
        {
          if (gLogCategory_SFAppleIDKeychainUtilities <= 30 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDRemoveCertificateFromKeychain(NSString * _Nullable __strong, NSData * _Nonnull __strong)", 30, "Removed certificate from keychain for %{mask}\n", v3);
          }

          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 4294960534;
    }
  }

  else
  {
    v8 = 0;
    v10 = 4294960591;
  }

  return v10;
}

uint64_t SFAppleIDCopyCertificateFromKeychainForReference(void *a1, CFTypeRef *a2)
{
  result[7] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  result[0] = 0;
  if (!v3)
  {
    v7 = 0;
    v8 = 4294960591;
    goto LABEL_15;
  }

  v5 = *MEMORY[0x1E697B3C8];
  result[1] = *MEMORY[0x1E697AFF8];
  result[2] = v5;
  result[4] = *MEMORY[0x1E697B000];
  result[5] = v3;
  result[3] = *MEMORY[0x1E697B328];
  result[6] = MEMORY[0x1E695E118];
  OUTLINED_FUNCTION_1_1();
  v7 = [v6 dictionaryWithObjects:? forKeys:? count:?];
  v8 = SecItemCopyMatching(v7, result);
  if (v8)
  {
    if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDCopyCertificateFromKeychainForReference(NSData * _Nonnull __strong, SecCertificateRef  _Nullable * _Nullable)", 90, "### SecItemCopyMatching failed with error %#m\n", v8);
    }
  }

  else
  {
    if (!result[0])
    {
      v8 = 0;
      goto LABEL_15;
    }

    v9 = CFGetTypeID(result[0]);
    TypeID = SecCertificateGetTypeID();
    if (a2 && v9 == TypeID)
    {
      v8 = 0;
      *a2 = result[0];
      result[0] = 0;
      goto LABEL_15;
    }
  }

  if (result[0])
  {
    CFRelease(result[0]);
  }

LABEL_15:

  return v8;
}

uint64_t SFAppleIDCopyKeychainReferenceForCertificate(const void *a1, void *a2)
{
  result[7] = *MEMORY[0x1E69E9840];
  result[0] = 0;
  if (!a1)
  {
    v5 = 0;
    v8 = 4294960591;
    goto LABEL_10;
  }

  v3 = *MEMORY[0x1E697B3D0];
  result[1] = *MEMORY[0x1E697AFF8];
  result[2] = v3;
  result[4] = *MEMORY[0x1E697B000];
  result[5] = a1;
  result[3] = *MEMORY[0x1E697B320];
  result[6] = MEMORY[0x1E695E118];
  OUTLINED_FUNCTION_1_1();
  v5 = [v4 dictionaryWithObjects:? forKeys:? count:?];
  v6 = SecItemCopyMatching(v5, result);
  if (v6)
  {
    v8 = v6;
    if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDCopyKeychainReferenceForCertificate(SecCertificateRef _Nullable, NSData * _Nullable __autoreleasing * _Nullable)", 90, "### SecItemCopyMatching failed with error %#m\n", v8);
    }
  }

  else
  {
    if (!result[0])
    {
      v8 = 4294960534;
      goto LABEL_10;
    }

    v7 = CFGetTypeID(result[0]);
    if (v7 == CFDataGetTypeID())
    {
      if (a2)
      {
        v8 = 0;
        *a2 = result[0];
        result[0] = 0;
        goto LABEL_10;
      }

      v8 = 0;
    }

    else
    {
      v8 = 4294960540;
    }
  }

  if (result[0])
  {
    CFRelease(result[0]);
  }

LABEL_10:

  return v8;
}

uint64_t SFAppleIDCreateCertificateWithPEMString(void *a1, SecCertificateRef *a2)
{
  v3 = a1;
  if (!v3)
  {
    v5 = 0;
LABEL_12:
    v7 = 0;
    v9 = 4294960591;
    goto LABEL_10;
  }

  v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  if (![v5 hasPrefix:@"-----BEGIN CERTIFICATE-----"] || !objc_msgSend(v5, "hasSuffix:", @"-----END CERTIFICATE-----"))
  {
    goto LABEL_12;
  }

  v6 = [v5 substringFromIndex:{objc_msgSend(@"-----BEGIN CERTIFICATE-----", "length")}];

  v5 = [v6 substringWithRange:{0, objc_msgSend(v6, "length") - objc_msgSend(@"-----END CERTIFICATE-----", "length")}];

  if (!v5)
  {
    v7 = 0;
    goto LABEL_14;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v5 options:1];
  if (!v7)
  {
LABEL_14:
    v9 = 4294960579;
    goto LABEL_10;
  }

  v8 = SecCertificateCreateWithData(*MEMORY[0x1E695E480], v7);
  if (v8)
  {
    if (a2)
    {
      v9 = 0;
      *a2 = v8;
    }

    else
    {
      CFRelease(v8);
      v9 = 0;
    }
  }

  else
  {
    v9 = 4294960534;
  }

LABEL_10:

  return v9;
}

void SFAppleIDCreateKeyPair(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = dispatch_get_global_queue(0, 0);
  v9 = v8;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;
  if (v7)
  {
    if (v5)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __SFAppleIDCreateKeyPair_block_invoke;
      block[3] = &unk_1E788A570;
      v12 = &v17;
      v17 = v5;
      v18 = v11;
      v19 = v7;
      dispatch_async(v9, block);
    }

    else
    {
      if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "void SFAppleIDCreateKeyPair(NSString * _Nonnull __strong, dispatch_queue_t  _Nullable __strong, SFAppleIDKeyPairCompletion  _Nullable __strong)", 90, "### KeyPairCreateForAppleID failed with error %#m\n", 4294960591);
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __SFAppleIDCreateKeyPair_block_invoke_3;
      v13[3] = &unk_1E788A598;
      v12 = &v14;
      v14 = v7;
      v15 = -6705;
      dispatch_async(v11, v13);
    }
  }
}

void __SFAppleIDCreateKeyPair_block_invoke(uint64_t a1)
{
  v37[4] = *MEMORY[0x1E69E9840];
  error = 0;
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_16;
  }

  [v2 setObject:*MEMORY[0x1E697ADA8] forKeyedSubscript:*MEMORY[0x1E697AD68]];
  [v3 setObject:&unk_1F1D7CBE0 forKeyedSubscript:*MEMORY[0x1E697AD50]];
  v4 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = *(a1 + 32);
  if (!v6)
  {
    v6 = &stru_1F1D30528;
  }

  v7 = [v5 initWithFormat:@"Apple ID %@ private key", v6];
  if (v7)
  {
    v8 = *MEMORY[0x1E697AD18];
    v9 = *MEMORY[0x1E697ABD8];
    v36[0] = *MEMORY[0x1E697AD18];
    v36[1] = v9;
    v10 = *MEMORY[0x1E697ABE8];
    v37[0] = v4;
    v37[1] = v10;
    v11 = *MEMORY[0x1E697AEB0];
    v12 = a1;
    v13 = *MEMORY[0x1E697ADC8];
    v36[2] = *MEMORY[0x1E697AEB0];
    v36[3] = v13;
    v37[2] = MEMORY[0x1E695E110];
    v37[3] = v7;
    v27 = v7;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:4];
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = *(v12 + 32);
    if (!v16)
    {
      v16 = &stru_1F1D30528;
    }

    v26 = v12;
    v17 = [v15 initWithFormat:@"Apple ID %@ public key", v16];
    v18 = v17;
    if (v17)
    {
      v34[0] = v8;
      v34[1] = v9;
      v35[0] = MEMORY[0x1E695E118];
      v35[1] = v10;
      v34[2] = v11;
      v34[3] = v13;
      v35[2] = MEMORY[0x1E695E110];
      v35[3] = v17;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:4];
      [v3 setObject:v14 forKeyedSubscript:*MEMORY[0x1E697B2D0]];
      [v3 setObject:v19 forKeyedSubscript:*MEMORY[0x1E697B300]];
      [v3 setObject:@"com.apple.sharing.appleidauthentication" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
      v20 = SecKeyCreateRandomKey(v3, &error);
      if (v20)
      {
        v21 = v20;
        v22 = SecKeyCopyPublicKey(v20);
        a1 = v26;
        if (v22)
        {
          if (gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "void SFAppleIDCreateKeyPair(NSString * _Nonnull __strong, dispatch_queue_t  _Nullable __strong, SFAppleIDKeyPairCompletion  _Nullable __strong)_block_invoke", 50, "Created key pair for %{mask}\n", *(v26 + 32));
          }

          v23 = 0;
        }

        else
        {
          CFRelease(v21);
          v21 = 0;
          v23 = -6762;
        }
      }

      else
      {
        a1 = v26;
        if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "void SFAppleIDCreateKeyPair(NSString * _Nonnull __strong, dispatch_queue_t  _Nullable __strong, SFAppleIDKeyPairCompletion  _Nullable __strong)_block_invoke", 90, "### SecKeyCreateRandomKey failed with error %@\n", error);
        }

        v25 = error;
        v23 = NSErrorToOSStatus();

        v22 = 0;
        v21 = 0;
      }
    }

    else
    {
      v19 = 0;
      v22 = 0;
      v21 = 0;
      v23 = -6728;
      a1 = v26;
    }
  }

  else
  {
LABEL_16:
    v18 = 0;
    v19 = 0;
    v27 = 0;
    v14 = 0;
    v22 = 0;
    v21 = 0;
    v23 = -6728;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SFAppleIDCreateKeyPair_block_invoke_2;
  block[3] = &unk_1E788A548;
  v24 = *(a1 + 40);
  v29 = *(a1 + 48);
  v30 = v21;
  v31 = v22;
  v32 = v23;
  dispatch_async(v24, block);
}

uint64_t SFAppleIDCommonNameForCertificate(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v5 = SecCertificateCopyCommonNames();
      if (v5)
      {
        v2 = v5;
        if ([v5 count])
        {
          v3 = [v2 objectAtIndexedSubscript:0];
          v6 = 0;
          *a2 = v3;
        }

        else
        {
          v6 = 201208;
          if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDCommonNameForCertificate(SecCertificateRef _Nonnull, NSString * _Nullable __autoreleasing * _Nullable)", 90, "### Common names array has no elements\n");
          }

          v3 = 0;
        }
      }

      else
      {
        v6 = 201208;
        if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDCommonNameForCertificate(SecCertificateRef _Nonnull, NSString * _Nullable __autoreleasing * _Nullable)", 90, "### No common names for certificate\n");
        }

        OUTLINED_FUNCTION_6_0();
      }
    }

    else
    {
      OUTLINED_FUNCTION_6_0();
      v6 = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_0();
    v6 = 4294960591;
  }

  return v6;
}

uint64_t SFAppleIDCreationDateForKey(uint64_t a1, void *a2)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_2_3();
    v9 = 0;
    v8 = 4294960591;
    goto LABEL_12;
  }

  if (!a2)
  {
    OUTLINED_FUNCTION_2_3();
    v9 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  v6 = *MEMORY[0x1E697B3D0];
  v15[0] = *MEMORY[0x1E697AFF8];
  v15[1] = v6;
  v16[0] = *MEMORY[0x1E697B020];
  v16[1] = a1;
  v15[2] = *MEMORY[0x1E697B310];
  v16[2] = MEMORY[0x1E695E118];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v7 = SecItemCopyMatching(v2, &v14);
  if (v7)
  {
    v8 = v7;
    v3 = 0;
    v4 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v9 = v14;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = 0;
    v4 = 0;
LABEL_11:
    v8 = 4294960569;
    goto LABEL_12;
  }

  v10 = v9;
  v3 = v10;
  if (!v10)
  {
    v4 = 0;
    v9 = 0;
    goto LABEL_11;
  }

  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E697ACD0]];
  v4 = v11;
  if (v11)
  {
    v12 = v11;
    v8 = 0;
    *a2 = v4;
  }

  else
  {
    v8 = 4294960569;
  }

  v9 = v3;
LABEL_12:

  return v8;
}

uint64_t SFAppleIDExpirationDateForCertificate(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  if (!a2)
  {
    return 0;
  }

  SecCertificateNotValidAfter();
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
  if (v3)
  {
    v4 = v3;
    *a2 = v4;

    return 0;
  }

  return 4294960534;
}

uint64_t SFAppleIDSerialNumberForCertificate(__SecCertificate *a1, void *a2)
{
  error = 0;
  if (a1)
  {
    if (a2)
    {
      v6 = SecCertificateCopySerialNumberData(a1, &error);
      v2 = error;
      if (v6)
      {
        v3 = v6;
        v7 = malloc_type_malloc((2 * [(__CFData *)v6 length]) | 1, 0x100004077774924uLL);
        if (v7)
        {
          v8 = v7;
          [(__CFData *)v3 bytes];
          [(__CFData *)v3 length];
          DataToHexCStringEx();
          v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
          v4 = v9;
          if (v9)
          {
            v10 = v9;
            v11 = 0;
            *a2 = v4;
          }

          else
          {
            v11 = 4294960534;
          }

          free(v8);
        }

        else
        {
          v4 = 0;
          v11 = 4294960568;
        }
      }

      else
      {
        v11 = NSErrorToOSStatus();
        if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDSerialNumberForCertificate(SecCertificateRef _Nonnull, NSString * _Nullable __autoreleasing * _Nullable)", 60, "### SecCertificateCopySerialNumberData failed with error %{error}\n", v2);
        }

        v3 = 0;
        v4 = 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_3();
      v11 = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_3();
    v11 = 4294960591;
  }

  return v11;
}

uint64_t parseValidationRecord(void *a1, uint64_t a2, void *a3)
{
  v3 = a1;
  if (v3)
  {
    AppleIDValidationRecordSigningPolicy = SecPolicyCreateAppleIDValidationRecordSigningPolicy();
    if (AppleIDValidationRecordSigningPolicy)
    {
      v5 = AppleIDValidationRecordSigningPolicy;
      v6 = SecCMSVerifyCopyDataAndAttributes();
      if (v6)
      {
        v8 = 201211;
        if (gLogCategory_SFAppleIDKeychainUtilities <= 90)
        {
          v9 = v6;
          if (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus parseValidationRecord(NSData * _Nonnull __strong, SecTrustRef *, NSDictionary * _Nullable __autoreleasing * _Nullable)", 90, "### SecCMSVerifyCopyDataAndAttributes failed with error %#m\n", v9);
          }
        }
      }

      else
      {
        v8 = 201211;
        if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus parseValidationRecord(NSData * _Nonnull __strong, SecTrustRef *, NSDictionary * _Nullable __autoreleasing * _Nullable)", 90, "### SecCMSVerifyCopyDataAndAttributes returned NULL attachedRecordContents\n");
        }
      }

      CFRelease(v5);
    }

    else
    {
      if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus parseValidationRecord(NSData * _Nonnull __strong, SecTrustRef *, NSDictionary * _Nullable __autoreleasing * _Nullable)", 90, "### SecPolicyCreateAppleIDValidationRecordSigningPolicy failed\n");
      }

      v8 = 4294960534;
    }
  }

  else
  {
    v8 = 4294960591;
  }

  return v8;
}

id handleValidationRecordTrustResultSync(void *a1, void *a2)
{
  v4 = a1;
  if (a2 != 1 && a2 != 4)
  {
    if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "NSDictionary * _Nullable handleValidationRecordTrustResultSync(NSDictionary * _Nonnull __strong, SecTrustResultType)", 60, "Unexpected trust result %d\n");
    }

LABEL_19:
    v12 = 0;
    v9 = 0;
    OUTLINED_FUNCTION_6_0();
    goto LABEL_20;
  }

  Int64 = CFDictionaryGetInt64();
  if ((Int64 - 101) <= 0xFFFFFFFFFFFFFF9BLL)
  {
    if (gLogCategory_SFAppleIDKeychainUtilities <= 60)
    {
      a2 = Int64;
      if (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "NSDictionary * _Nullable handleValidationRecordTrustResultSync(NSDictionary * _Nonnull __strong, SecTrustResultType)", 60, "Unsupported version %ld (must be between 1 and 100)\n");
      }
    }

    goto LABEL_19;
  }

  CFDateGetTypeID();
  a2 = CFDictionaryGetTypedValue();
  if (a2)
  {
    CFDictionaryGetDouble();
    v8 = v7;
    v2 = [MEMORY[0x1E695DF00] date];
    v9 = [a2 dateByAddingTimeInterval:-86400.0];
    if ([v9 compare:v2] == -1)
    {
      v10 = 2592000.0;
      if (v8 != 0.0)
      {
        v10 = v8;
      }

      v11 = [a2 dateByAddingTimeInterval:v10];

      if ([v2 compare:v11] == -1)
      {
        v12 = v4;
      }

      else
      {
        v12 = 0;
      }

      v9 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v9 = 0;
    v2 = 0;
  }

LABEL_20:

  return v12;
}

void SFAppleIDParseValidationRecordData(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v22 = 0;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
  }

  v9 = v8;
  v10 = 201211;
  v21 = 0;
  v11 = parseValidationRecord(v5, &v22, &v21);
  v12 = v21;
  v13 = v12;
  if (!v11)
  {
    v14 = v22;
    result[0] = MEMORY[0x1E69E9820];
    result[1] = 3221225472;
    result[2] = __SFAppleIDParseValidationRecordData_block_invoke;
    result[3] = &unk_1E788A5C0;
    v19 = v12;
    v20 = v7;
    LODWORD(v14) = SecTrustEvaluateAsync(v14, v9, result);

    if (v14)
    {
      v10 = 201214;
    }

    else
    {
      v10 = 0;
    }
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v7 && v10)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __SFAppleIDParseValidationRecordData_block_invoke_2;
    v15[3] = &unk_1E788A598;
    v16 = v7;
    v17 = v10;
    dispatch_async(v9, v15);
  }
}

void __SFAppleIDParseValidationRecordData_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = handleValidationRecordTrustResultSync(v4, a3);
  if (v6)
  {
    v6[2](v6, v5, 0);
  }
}

uint64_t SFAppleIDVerifyCertificateChainSync(void *a1, int *a2)
{
  v3 = a1;
  trust = 0;
  error = 0;
  if (v3)
  {
    AppleIDAuthorityPolicy = SecPolicyCreateAppleIDAuthorityPolicy();
    if (AppleIDAuthorityPolicy)
    {
      v5 = SecTrustCreateWithCertificates(v3, AppleIDAuthorityPolicy, &trust);
      if (v5)
      {
        if (gLogCategory_SFAppleIDKeychainUtilities <= 90)
        {
          v12 = v5;
          if (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "BOOL SFAppleIDVerifyCertificateChainSync(NSArray * _Nonnull __strong, OSStatus * _Nullable)", 90, "### SecTrustCreateWithCertificates failed with error %#m\n", v12);
          }
        }
      }

      else
      {
        if (trust)
        {
          if (SecTrustEvaluateWithError(trust, &error))
          {
            v6 = 0;
            v7 = 0;
            v8 = 1;
          }

          else
          {
            v7 = error;
            if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "BOOL SFAppleIDVerifyCertificateChainSync(NSArray * _Nonnull __strong, OSStatus * _Nullable)", 90, "### SecTrustEvaluateWithError failed with error %{error}\n", v7);
            }

            v6 = NSErrorToOSStatus();
            v8 = 0;
          }

LABEL_7:
          if (trust)
          {
            CFRelease(trust);
          }

          if (!AppleIDAuthorityPolicy)
          {
LABEL_11:
            if (!a2)
            {
              goto LABEL_19;
            }

            goto LABEL_12;
          }

LABEL_10:
          CFRelease(AppleIDAuthorityPolicy);
          goto LABEL_11;
        }

        if (gLogCategory_SFAppleIDKeychainUtilities > 90)
        {
          v7 = 0;
          v8 = 0;
          v6 = -6762;
          goto LABEL_10;
        }

        if (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "BOOL SFAppleIDVerifyCertificateChainSync(NSArray * _Nonnull __strong, OSStatus * _Nullable)", 90, "### SecTrustCreateWithCertificates returned NULL trust\n");
        }
      }
    }

    else if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "BOOL SFAppleIDVerifyCertificateChainSync(NSArray * _Nonnull __strong, OSStatus * _Nullable)", 90, "### SecPolicyCreateAppleIDAuthorityPolicy failed\n");
    }

    v7 = 0;
    v8 = 0;
    v6 = -6762;
    goto LABEL_7;
  }

  v7 = 0;
  v8 = 0;
  v6 = -6705;
  if (!a2)
  {
    goto LABEL_19;
  }

LABEL_12:
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = -6700;
  }

  *a2 = v10;
LABEL_19:

  return v8;
}

uint64_t SFAppleIDSignedHashForData(void *a1, __SecKey *a2, const __CFData **a3)
{
  v5 = a1;
  error = 0;
  v6 = 4294960591;
  if (v5 && a2)
  {
    if (a3)
    {
      v7 = malloc_type_malloc(0x20uLL, 0x3B067BDDuLL);
      if (v7)
      {
        v8 = v7;
        if (CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), v7))
        {
          v9 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:32];
          if (v9)
          {
            v10 = v9;
            v11 = SecKeyCreateSignature(a2, *MEMORY[0x1E697B1C8], v9, &error);
            if (v11)
            {
              v12 = v11;
              *a3 = v12;

              v6 = 0;
            }

            else
            {
              if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDSignedHashForData(NSData * _Nonnull __strong, SecKeyRef _Nonnull, NSData * _Nullable __autoreleasing * _Nullable)", 90, "### SecKeyCreateSignature failed with error %@", error);
              }

              v14 = error;
              v6 = NSErrorToOSStatus();
            }
          }

          else
          {
            v6 = 4294960568;
          }
        }

        else
        {
          if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDSignedHashForData(NSData * _Nonnull __strong, SecKeyRef _Nonnull, NSData * _Nullable __autoreleasing * _Nullable)", 60, "### CC_SHA256 failed\n");
          }

          v6 = 4294960534;
        }

        free(v8);
      }

      else
      {
        v6 = 4294960568;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t SFAppleIDVerifySignedHashForData(void *a1, void *a2, __SecKey *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  error = 0;
  v8 = 4294960591;
  if (v5 && v6 && a3)
  {
    v9 = malloc_type_malloc(0x20uLL, 0x4610950EuLL);
    if (v9)
    {
      v10 = v9;
      if (CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), v9))
      {
        v11 = [MEMORY[0x1E695DEF0] dataWithBytes:v10 length:32];
        if (v11)
        {
          if (SecKeyVerifySignature(a3, *MEMORY[0x1E697B1C8], v11, v7, &error))
          {
            v8 = 0;
          }

          else
          {
            if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDVerifySignedHashForData(NSData * _Nonnull __strong, NSData * _Nonnull __strong, SecKeyRef _Nonnull)", 90, "### SecKeyVerifySignature failed with error %@", error);
            }

            v13 = error;
            v8 = NSErrorToOSStatus();
          }
        }

        else
        {
          v8 = 4294960568;
        }
      }

      else
      {
        if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDVerifySignedHashForData(NSData * _Nonnull __strong, NSData * _Nonnull __strong, SecKeyRef _Nonnull)", 60, "### CC_SHA256 failed\n");
        }

        v11 = 0;
        v8 = 4294960534;
      }

      free(v10);
    }

    else
    {
      v8 = 4294960568;
    }
  }

  return v8;
}

uint64_t SFAppleIDGetAllCertificatePersistentReferencesFromKeychain(void *a1)
{
  v46[4] = *MEMORY[0x1E69E9840];
  result = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_3();
    v5 = 0;
    v10 = 0;
    v13 = 0;
    goto LABEL_48;
  }

  v4 = a1;
  v5 = [MEMORY[0x1E695DF70] array];
  if (!v5)
  {
    OUTLINED_FUNCTION_3();
    v10 = 0;
    v13 = 4294960568;
    goto LABEL_48;
  }

  if (gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDGetAllCertificatePersistentReferencesFromKeychain(NSArray * _Nullable __autoreleasing * _Nullable)", 50, "Searching for Apple ID certificates\n");
  }

  v6 = *MEMORY[0x1E697B000];
  v7 = *MEMORY[0x1E697B260];
  v45[0] = *MEMORY[0x1E697AFF8];
  v45[1] = v7;
  v8 = *MEMORY[0x1E697B268];
  v46[0] = v6;
  v46[1] = v8;
  v9 = *MEMORY[0x1E697B328];
  v45[2] = *MEMORY[0x1E697ABD0];
  v45[3] = v9;
  v46[2] = @"com.apple.sharing.appleidauthentication";
  v46[3] = MEMORY[0x1E695E118];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:4];
  v11 = SecItemCopyMatching(v10, &result);
  if (v11 == -25300)
  {
    v12 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
    result = v12;
    goto LABEL_11;
  }

  v13 = v11;
  if (!v11)
  {
    v12 = result;
LABEL_11:
    if (v12)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v1 = v12;
      v3 = [v1 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v3)
      {
        v32 = v4;
        v33 = v10;
        v34 = v5;
        v35 = 0;
        v2 = 0;
        v14 = 0;
        v36 = 0;
        v15 = *v40;
        do
        {
          v16 = 0;
          do
          {
            v17 = v14;
            if (*v40 != v15)
            {
              objc_enumerationMutation(v1);
            }

            v14 = *(*(&v39 + 1) + 8 * v16);

            result = v14;
            v18 = CFGetTypeID(v14);
            if (v18 == SecCertificateGetTypeID())
            {
              v19 = result;

              v38 = 0;
              v20 = SFAppleIDCommonNameForCertificate(v19, &v38);
              v21 = v38;
              v2 = v21;
              if (v20)
              {
                OUTLINED_FUNCTION_4_2();
                if (v24 ^ v25 | v23 && (v22 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDGetAllCertificatePersistentReferencesFromKeychain(NSArray * _Nullable __autoreleasing * _Nullable)", 60, "### SFAppleIDCommonNameForCertificate failed with err=%#m\n", v20);
                }
              }

              else if ([v21 hasPrefix:@"com.apple.idms.appleid."])
              {

                v37 = 0;
                v26 = SFAppleIDCopyKeychainReferenceForCertificate(v19, &v37);
                v36 = v37;
                if (v26)
                {
                  if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDGetAllCertificatePersistentReferencesFromKeychain(NSArray * _Nullable __autoreleasing * _Nullable)", 60, "### SFAppleIDCopyKeychainReferenceForCertificate failed with err=%#m\n", v26);
                  }
                }

                else
                {
                  if (gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDGetAllCertificatePersistentReferencesFromKeychain(NSArray * _Nullable __autoreleasing * _Nullable)", 50, "Found Apple ID certificate with common name=%@\n", v2);
                  }

                  [v34 addObject:v36];
                  ++v35;
                }
              }
            }

            v16 = v16 + 1;
          }

          while (v3 != v16);
          v27 = [v1 countByEnumeratingWithState:&v39 objects:v44 count:16];
          v3 = v27;
        }

        while (v27);

        v10 = v33;
        v5 = v34;
        v4 = v32;
        v28 = v35;
        v3 = v36;
      }

      else
      {
        v2 = 0;
        v28 = 0;
      }

      if (gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDGetAllCertificatePersistentReferencesFromKeychain(NSArray * _Nullable __autoreleasing * _Nullable)", 50, "Found %d Apple ID certificates\n", v28);
      }

      v29 = v5;
      v13 = 0;
      *v4 = v5;
    }

    else
    {
      OUTLINED_FUNCTION_3();
      v13 = 4294960534;
    }

    goto LABEL_48;
  }

  OUTLINED_FUNCTION_4_2();
  if (v24 ^ v25 | v23 && (v31 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDGetAllCertificatePersistentReferencesFromKeychain(NSArray * _Nullable __autoreleasing * _Nullable)", 60, "### SecItemCopyMatching for certs failed with err=%#m\n", v13);
  }

  OUTLINED_FUNCTION_3();
LABEL_48:

  return v13;
}

uint64_t SFAppleIDGetAllKeyPersistentReferencesFromKeychain(unint64_t a1, unint64_t a2)
{
  v64[3] = *MEMORY[0x1E69E9840];
  result = 0;
  if (!(a1 | a2))
  {
    OUTLINED_FUNCTION_0_0();
    v6 = 0;
    v7 = 0;
    v12 = 0;
    v15 = 0;
    goto LABEL_79;
  }

  v4 = a2;
  v5 = a1;
  v6 = [MEMORY[0x1E695DF70] array];
  if (!v6)
  {
    OUTLINED_FUNCTION_0_0();
    v7 = 0;
LABEL_83:
    v12 = 0;
    v15 = 4294960568;
    goto LABEL_79;
  }

  v7 = [MEMORY[0x1E695DF70] array];
  if (!v7)
  {
    OUTLINED_FUNCTION_0_0();
    goto LABEL_83;
  }

  if (gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDGetAllKeyPersistentReferencesFromKeychain(NSArray * _Nullable __autoreleasing * _Nullable, NSArray * _Nullable __autoreleasing * _Nullable)", 50, "Searching for Apple ID keys\n");
  }

  v8 = *MEMORY[0x1E697B020];
  v9 = *MEMORY[0x1E697B260];
  v50 = *MEMORY[0x1E697AFF8];
  v61[0] = *MEMORY[0x1E697AFF8];
  v61[1] = v9;
  v10 = *MEMORY[0x1E697B268];
  v49 = v8;
  v62[0] = v8;
  v62[1] = v10;
  v11 = *MEMORY[0x1E697B328];
  v61[2] = *MEMORY[0x1E697ABD0];
  v61[3] = v11;
  v62[2] = @"com.apple.sharing.appleidauthentication";
  v62[3] = MEMORY[0x1E695E118];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:4];
  v13 = SecItemCopyMatching(v12, &result);
  if (v13 == -25300)
  {
    v14 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
    result = v14;
  }

  else
  {
    v15 = v13;
    if (v13)
    {
      if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDGetAllKeyPersistentReferencesFromKeychain(NSArray * _Nullable __autoreleasing * _Nullable, NSArray * _Nullable __autoreleasing * _Nullable)", 60, "### SecItemCopyMatching for certs failed with err=%#m\n", v15);
      }

      OUTLINED_FUNCTION_0_0();
      goto LABEL_79;
    }

    v14 = result;
  }

  if (!v14)
  {
    OUTLINED_FUNCTION_0_0();
    v15 = 4294960534;
    goto LABEL_79;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v14;
  v3 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (!v3)
  {
    v2 = 0;
    v47 = 0;
    v35 = 0;
    v36 = 0;
    goto LABEL_74;
  }

  v40 = v5;
  v41 = v4;
  v42 = v12;
  v43 = v7;
  v44 = v6;
  v45 = 0;
  v2 = 0;
  v48 = 0;
  v16 = 0;
  v46 = 0;
  v47 = 0;
  v17 = *v55;
  v18 = *MEMORY[0x1E697B3D0];
  v19 = *MEMORY[0x1E697B310];
  do
  {
    v20 = 0;
    do
    {
      v21 = v16;
      if (*v55 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v54 + 1) + 8 * v20);

      result = v16;
      v22 = CFGetTypeID(v16);
      if (v22 == SecKeyGetTypeID())
      {
        v23 = result;

        cf = 0;
        if (v23)
        {
          v63[0] = v50;
          v63[1] = v18;
          v64[0] = v49;
          v64[1] = v23;
          v63[2] = v19;
          v64[2] = MEMORY[0x1E695E118];
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:3];
          v25 = SecItemCopyMatching(v24, &cf);
          if (v25)
          {
            v29 = v25;
            if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDAttributeDictionaryForKey(SecKeyRef _Nonnull, NSDictionary * _Nullable __autoreleasing * _Nullable)", 90, "### SecItemCopyMatching failed with error %#m\n", v29);
            }

            goto LABEL_60;
          }

          if (cf)
          {
            v26 = CFGetTypeID(cf);
            if (v26 == CFDictionaryGetTypeID())
            {
              v27 = cf;
              v28 = cf;
              v29 = 0;
              cf = 0;
              goto LABEL_24;
            }

            v29 = 4294960540;
LABEL_60:
            if (cf)
            {
              CFRelease(cf);
            }

            v27 = 0;
          }

          else
          {
            v27 = 0;
            v29 = 4294960534;
          }
        }

        else
        {
          v27 = 0;
          v24 = 0;
          v29 = 4294960591;
        }

LABEL_24:

        v30 = v27;
        v2 = v30;
        if (v29)
        {
          if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDGetAllKeyPersistentReferencesFromKeychain(NSArray * _Nullable __autoreleasing * _Nullable, NSArray * _Nullable __autoreleasing * _Nullable)", 60, "### SFAppleIDAttributeDictionaryForKey failed with err=%#m\n", v29);
          }

          goto LABEL_35;
        }

        if (!v30)
        {
          goto LABEL_35;
        }

        CFStringGetTypeID();
        v31 = CFDictionaryGetTypedValue();

        if ([v31 length] && objc_msgSend(v31, "hasPrefix:", @"Apple ID "))
        {
          if (![v31 hasSuffix:@" private key"])
          {
            goto LABEL_32;
          }

          v53 = 0;
          v32 = SFAppleIDCopyKeychainReferenceForKey(v23, &v53);
          v47 = v53;
          if (v32)
          {
            if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDGetAllKeyPersistentReferencesFromKeychain(NSArray * _Nullable __autoreleasing * _Nullable, NSArray * _Nullable __autoreleasing * _Nullable)", 60, "### SFAppleIDCopyKeychainReferenceForKey failed with err=%#m\n", v32);
            }
          }

          else
          {
            if (gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDGetAllKeyPersistentReferencesFromKeychain(NSArray * _Nullable __autoreleasing * _Nullable, NSArray * _Nullable __autoreleasing * _Nullable)", 50, "Found Apple ID private key with label=%@\n", v31);
            }

            [v44 addObject:v47];
            ++v46;
LABEL_32:
            if ([v31 hasSuffix:@" public key"])
            {

              v52 = 0;
              v33 = SFAppleIDCopyKeychainReferenceForKey(v23, &v52);
              v47 = v52;
              if (v33)
              {
                if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDGetAllKeyPersistentReferencesFromKeychain(NSArray * _Nullable __autoreleasing * _Nullable, NSArray * _Nullable __autoreleasing * _Nullable)", 60, "### SFAppleIDCopyKeychainReferenceForKey failed with err=%#m\n", v33);
                }
              }

              else
              {
                if (gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDGetAllKeyPersistentReferencesFromKeychain(NSArray * _Nullable __autoreleasing * _Nullable, NSArray * _Nullable __autoreleasing * _Nullable)", 50, "Found Apple ID public key with label=%@\n", v31);
                }

                [v43 addObject:v47];
                ++v45;
              }
            }
          }
        }

        v48 = v31;
      }

LABEL_35:
      v20 = v20 + 1;
    }

    while (v3 != v20);
    v34 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    v3 = v34;
  }

  while (v34);

  v7 = v43;
  v6 = v44;
  v4 = v41;
  v12 = v42;
  v5 = v40;
  v36 = v45;
  v35 = v46;
  v3 = v48;
LABEL_74:

  if (gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDGetAllKeyPersistentReferencesFromKeychain(NSArray * _Nullable __autoreleasing * _Nullable, NSArray * _Nullable __autoreleasing * _Nullable)", 50, "Found %d private and %d public Apple ID keys", v35, v36);
  }

  v37 = v6;
  *v5 = v6;
  v38 = v7;
  v15 = 0;
  *v4 = v7;
LABEL_79:

  return v15;
}

uint64_t SFAppleIDRemoveAllCertificatesFromKeychain(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v22 = 0;
  v2 = SFAppleIDGetAllCertificatePersistentReferencesFromKeychain(&v22);
  v3 = v22;
  v4 = v3;
  if (v2)
  {
    if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDRemoveAllCertificatesFromKeychain(NSString * _Nullable __strong)", 60, "### SFAppleIDGetAllCertificatePersistentReferencesFromKeychain failed with err=%#m\n", v2);
    }
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      v10 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          v12 = v9;
          if (*v19 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v18 + 1) + 8 * i);

          v2 = SFAppleIDRemoveCertificateFromKeychain(v1, v9);
          if (v2)
          {
            OUTLINED_FUNCTION_5_0();
            if (v15 ^ v16 | v14 && (v13 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDRemoveAllCertificatesFromKeychain(NSString * _Nullable __strong)", 60, "### SFAppleIDRemoveCertificateFromKeychain failed with err=%#m\n", v2);
            }
          }

          else
          {
            ++v8;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v7);

      if (v8 && gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDRemoveAllCertificatesFromKeychain(NSString * _Nullable __strong)", 50, "Removed %d certificates from keychain\n", v8);
      }
    }

    else
    {

      v2 = 0;
    }
  }

  return v2;
}

uint64_t SFAppleIDRemoveAllKeysFromKeychain(void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v39 = 0;
  v40 = 0;
  v2 = SFAppleIDGetAllKeyPersistentReferencesFromKeychain(&v40, &v39);
  v3 = v40;
  v4 = v39;
  if (v2)
  {
    OUTLINED_FUNCTION_5_0();
    if (v16 ^ v17 | v15 && (v28 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDRemoveAllKeysFromKeychain(NSString * _Nullable __strong)", 60, "### SFAppleIDGetAllKeyPersistentReferencesFromKeychain failed with err=%#m\n", v2);
    }
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v29 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v35 objects:v42 count:16];
    v30 = v4;
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      v10 = *v36;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          v12 = v9;
          if (*v36 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v35 + 1) + 8 * i);

          v13 = SFAppleIDRemoveKeyFromKeychain(v1, v9);
          if (v13)
          {
            OUTLINED_FUNCTION_5_0();
            if (v16 ^ v17 | v15 && (v14 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDRemoveAllKeysFromKeychain(NSString * _Nullable __strong)", 60, "### SFAppleIDRemoveCertificateFromKeychain failed with err=%#m\n", v13);
            }
          }

          else
          {
            ++v8;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v7);

      if (v8 && gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDRemoveAllKeysFromKeychain(NSString * _Nullable __strong)", 50, "Removed %d private keys from keychain\n", v8);
      }

      v4 = v30;
    }

    else
    {

      v13 = 0;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = v4;
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = 0;
      v23 = *v32;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          v25 = v22;
          if (*v32 != v23)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v31 + 1) + 8 * j);

          v2 = SFAppleIDRemoveKeyFromKeychain(v1, v22);
          if (v2)
          {
            OUTLINED_FUNCTION_5_0();
            if (v16 ^ v17 | v15 && (v26 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDRemoveAllKeysFromKeychain(NSString * _Nullable __strong)", 60, "### SFAppleIDRemoveCertificateFromKeychain failed with err=%#m\n", v2);
            }
          }

          else
          {
            ++v21;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v20);

      if (v21)
      {
        v3 = v29;
        if (gLogCategory_SFAppleIDKeychainUtilities <= 50 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDRemoveAllKeysFromKeychain(NSString * _Nullable __strong)", 50, "Removed %d public keys from keychain\n", v21);
        }
      }

      else
      {
        v3 = v29;
      }

      v4 = v30;
    }

    else
    {

      v2 = v13;
      v3 = v29;
    }
  }

  return v2;
}

void SFBrowserCreate_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void SFBrowserSetDispatchQueue_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void SFBrowserSetMode_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SFBrowserSetOptions_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void SFBrowserCopyChildren_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void SFBrowserOpenNode_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void SFBrowserAddNode_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void SFBrowserRemoveNode_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void SFBrowserCloseNode_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void SFBrowserCopyNodeForURL_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void xpcDictionaryCopyCFStringForKey()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A9662000, v0, v1, "xpcDictionaryCopyCFStringForKey xpcNode is not a dictionary", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A9662000, v0, v1, "xpcDictionaryCopyCFStringForKey result is not a string", v2, v3, v4, v5);
}

void xpcDictionaryCopyCFArrayForKey()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A9662000, v0, v1, "xpcDictionaryCopyCFArrayForKey xpcNode is not a dictionary", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A9662000, v0, v1, "xpcDictionaryCopyCFArrayForKey result is not a array", v2, v3, v4, v5);
}

void xpcDictionaryCopyCFDataForKey()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A9662000, v0, v1, "xpcDictionaryCopyCFDataForKey xpcNode is not a dictionary", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A9662000, v0, v1, "xpcDictionaryCopyCFDataForKey result is not a data", v2, v3, v4, v5);
}

void xpcDictionaryCopyCFNumberForKey()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A9662000, v0, v1, "xpcDictionaryCopyCFNumberForKey xpcNode is not a dictionary", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A9662000, v0, v1, "xpcDictionaryCopyCFNumberForKey result is not a number", v2, v3, v4, v5);
}

void xpcDictionaryCopyCFURLForKey()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A9662000, v0, v1, "xpcDictionaryCopyCFURLForKey xpcNode is not a dictionary", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A9662000, v0, v1, "xpcDictionaryCopyCFURLForKey result is not a url", v2, v3, v4, v5);
}

void __getCKContainerIDClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKContainerIDClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationCloudSharingMailRequest.m" lineNumber:21 description:{@"Unable to find class %s", "CKContainerID"}];

  __break(1u);
}

void CloudKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFCollaborationCloudSharingMailRequest.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void __getCKShareClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKShareClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationCloudSharingMailRequest.m" lineNumber:22 description:{@"Unable to find class %s", "CKShare"}];

  __break(1u);
}

void __getCKContainerSetupInfoClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKContainerSetupInfoClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationCloudSharingMailRequest.m" lineNumber:20 description:{@"Unable to find class %s", "CKContainerSetupInfo"}];

  __break(1u);
}

void _SFOperationAddSandboxExtensionForFileURL_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = 136315394;
  v6 = a1;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "sandbox_extension_issue_file failed for file %s with error %d", &v5, 0x12u);
}

void _SFOperationAddSandboxExtensionForFileURL_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _SFOperationAddSandboxExtensionForFileURL_cold_3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __getAFPreferencesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFPreferencesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFSiriController.m" lineNumber:37 description:{@"Unable to find class %s", "AFPreferences"}];

  __break(1u);
}

void __getAFPreferencesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFSiriController.m" lineNumber:36 description:{@"%s", *a1}];

  __break(1u);
}

void __getVTPreferencesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVTPreferencesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFSiriController.m" lineNumber:31 description:{@"Unable to find class %s", "VTPreferences"}];

  __break(1u);
}

void __getVTPreferencesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *VoiceTriggerLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFSiriController.m" lineNumber:30 description:{@"%s", *a1}];

  __break(1u);
}

void __getUNNotificationSettingsCenterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUNNotificationSettingsCenterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFSiriController.m" lineNumber:46 description:{@"Unable to find class %s", "UNNotificationSettingsCenter"}];

  __break(1u);
}

void UserNotificationsSettingsLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UserNotificationsSettingsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFSiriController.m" lineNumber:44 description:{@"%s", *a1}];

  __break(1u);
}

void __getUNMutableNotificationSystemSettingsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUNMutableNotificationSystemSettingsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFSiriController.m" lineNumber:45 description:{@"Unable to find class %s", "UNMutableNotificationSystemSettings"}];

  __break(1u);
}

void __getTUUserConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUUserConfigurationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFSiriController.m" lineNumber:41 description:{@"Unable to find class %s", "TUUserConfiguration"}];

  __break(1u);
}

void __getTUUserConfigurationClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TelephonyUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFSiriController.m" lineNumber:40 description:{@"%s", *a1}];

  __break(1u);
}

void createURL_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "createURL: CFURLSetResourcePropertyForKey %@", &v3, 0xCu);
}

void SFIsBluetoothEnabled_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SFCreateLivePhotoBundle_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [a1 path];
  OUTLINED_FUNCTION_2();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1A9662000, a3, OS_LOG_TYPE_ERROR, "Failed write live photo bundle to %@ (%@)", v6, 0x16u);
}

void SFIsiCloudFamilyLink_cold_1(void *a1)
{
  v1 = [a1 targetApplicationProxy];
  v2 = [v1 bundleIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void SFIsiCloudFamilyLink_cold_2(uint64_t a1, void *a2)
{
  v7 = [a2 description];
  OUTLINED_FUNCTION_4_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void SFIsiCloudFamilyLink_cold_3(void *a1)
{
  v1 = [a1 scheme];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void SFRTIDataPayloadForData_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SFAirDropDownloadsURL_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SFRealpathForFileURL_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SFRealpathForFileURL_cold_2(uint64_t a1, int *a2, uint8_t *buf, os_log_t log)
{
  v4 = *a2;
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = v4;
  _os_log_fault_impl(&dword_1A9662000, log, OS_LOG_TYPE_FAULT, "SFRealpathForFileURL: realpath for %s failed: %d", buf, 0x12u);
}

void SFRealpathForFileURL_cold_4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SFPerformDataMigrationIfNeeded_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIDMPerformMigrationIfNeeded(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFUtilities.m" lineNumber:105 description:{@"%s", dlerror()}];

  __break(1u);
}

void SFAirDropModelImageNameFromModelString_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __getDMPerformMigrationIfNeededSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DataMigrationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFUtilities.m" lineNumber:104 description:{@"%s", *a1}];

  __break(1u);
}

void SFAppleIDClientCopyCertificate(uint64_t a1, void *a2)
{
  v5 = OUTLINED_FUNCTION_21(a1, a2);
  v6 = v2;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = SFMainQueue();
  }

  v8 = v7;
  if (!v3)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (v6)
  {
    v9 = objc_alloc_init(SFAppleIDClient);
    if (v9)
    {
      OUTLINED_FUNCTION_20(v9, v10);
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_17();
      v26 = v6;
      v11 = v4;
      OUTLINED_FUNCTION_14();
      [v12 copyCertificateForAppleID:? withCompletion:?];

LABEL_8:
      goto LABEL_9;
    }

LABEL_11:
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_16();
    v13 = v6;
    OUTLINED_FUNCTION_13(v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, __SFAppleIDClientCopyCertificate_block_invoke_2, &unk_1E788A598, v23, v25);
    v4 = v24;
    goto LABEL_8;
  }

LABEL_9:
}

void SFAppleIDClientCopyCertificateInfo(uint64_t a1, void *a2)
{
  v5 = OUTLINED_FUNCTION_21(a1, a2);
  v6 = v2;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = SFMainQueue();
  }

  v8 = v7;
  if (!v3)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    v12 = 201201;
    goto LABEL_13;
  }

  if (v6)
  {
    v9 = objc_alloc_init(SFAppleIDClient);
    if (v9)
    {
      OUTLINED_FUNCTION_20(v9, v10);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __SFAppleIDClientCopyCertificateInfo_block_invoke;
      v16[3] = &unk_1E788C438;
      v19 = v3;
      v17 = v4;
      v18 = v6;
      v11 = v4;
      [v11 myAccountWithCompletion:v16];

LABEL_8:
      goto LABEL_9;
    }

    v12 = -6762;
LABEL_13:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __SFAppleIDClientCopyCertificateInfo_block_invoke_2;
    block[3] = &unk_1E788A598;
    v14 = v6;
    v15 = v12;
    dispatch_async(v8, block);
    v11 = v14;
    goto LABEL_8;
  }

LABEL_9:
}

void __SFAppleIDClientCopyCertificateInfo_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v7 = NSErrorToOSStatus();
  if (v7)
  {
    OUTLINED_FUNCTION_15();
  }

  else if (v18)
  {
    a3 = [v18 appleID];
    v3 = [a3 isEqualToString:*(a1 + 48)];

    if (v3)
    {
      a3 = [MEMORY[0x1E695DF90] dictionary];
      if (a3)
      {
        v8 = [v18 altDSID];

        if (v8)
        {
          v9 = [v18 altDSID];
          [a3 setObject:v9 forKeyedSubscript:@"encDsId"];
        }

        v10 = [v18 identity];
        v3 = [v10 copyCertificate];

        if (v3)
        {
          [a3 setObject:v3 forKeyedSubscript:@"CertificateReference"];
        }

        v11 = [v18 identity];
        v12 = [v11 serialNumber];

        if (v12)
        {
          v13 = [v18 identity];
          v14 = [v13 serialNumber];
          [a3 setObject:v14 forKeyedSubscript:@"SerialNumber"];
        }

        v15 = [v18 validationRecord];
        v4 = [v15 data];

        if (v4)
        {
          [a3 setObject:v4 forKeyedSubscript:@"AppleIDAccountValidationRecordData"];
        }

        v7 = 0;
      }

      else
      {
        v4 = 0;
        v3 = 0;
        v7 = 4294960568;
      }
    }

    else
    {
      OUTLINED_FUNCTION_15();
      v7 = 201201;
    }
  }

  else
  {
    OUTLINED_FUNCTION_15();
    v7 = 4294960534;
  }

  v16 = *(a1 + 40);
  v17 = a3;
  (*(v16 + 16))(v16, v17, v7);
  [*(a1 + 32) invalidate];
  if (v3)
  {
    CFRelease(v3);
  }
}

void SFAppleIDClientCopyIdentity(uint64_t a1, void *a2)
{
  v5 = OUTLINED_FUNCTION_21(a1, a2);
  v6 = v2;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = SFMainQueue();
  }

  v8 = v7;
  if (!v3)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (v6)
  {
    v9 = objc_alloc_init(SFAppleIDClient);
    if (v9)
    {
      OUTLINED_FUNCTION_20(v9, v10);
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_17();
      v26 = v6;
      v11 = v4;
      OUTLINED_FUNCTION_14();
      [v12 copyIdentityForAppleID:? withCompletion:?];

LABEL_8:
      goto LABEL_9;
    }

LABEL_11:
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_16();
    v13 = v6;
    OUTLINED_FUNCTION_13(v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, __SFAppleIDClientCopyIdentity_block_invoke_2, &unk_1E788A598, v23, v25);
    v4 = v24;
    goto LABEL_8;
  }

LABEL_9:
}

void SFAppleIDClientCopyMyAccountInfo(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = SFMainQueue();
  }

  v6 = v5;
  if (v4)
  {
    v7 = objc_alloc_init(SFAppleIDClient);
    if (v7)
    {
      v8 = v7;
      [(SFAppleIDClient *)v7 setDispatchQueue:v6];
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_17();
      v24 = __SFAppleIDClientCopyMyAccountInfo_block_invoke;
      v25 = &unk_1E788C488;
      v26 = v8;
      v27 = v4;
      v9 = v8;
      [(SFAppleIDClient *)v9 myAccountWithCompletion:v23];
    }

    else
    {
      OUTLINED_FUNCTION_1_7();
      OUTLINED_FUNCTION_16();
      v10 = v4;
      OUTLINED_FUNCTION_18(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, __SFAppleIDClientCopyMyAccountInfo_block_invoke_2, &unk_1E788A598, v20, v22);
      v9 = v21;
    }
  }
}

void __SFAppleIDClientCopyMyAccountInfo_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v5 = a3;
  if (v5)
  {
    NSErrorToOSStatus();
  }

  else if (v33)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    if (v6)
    {
      v7 = [v33 appleID];

      if (v7)
      {
        v8 = [v33 appleID];
        [v6 setObject:v8 forKeyedSubscript:@"AppleID"];
      }

      v9 = [v33 identity];
      v10 = [v9 certificateExpirationDate];

      if (v10)
      {
        v11 = [v33 identity];
        v12 = [v11 certificateExpirationDate];
        OUTLINED_FUNCTION_19();
      }

      v13 = [v33 identity];
      v14 = [v13 serialNumber];

      if (v14)
      {
        v15 = [v33 identity];
        v16 = [v15 serialNumber];
        OUTLINED_FUNCTION_19();
      }

      v17 = [v33 contactInfo];
      v18 = [v17 firstName];

      if (v18)
      {
        v19 = [v33 contactInfo];
        v20 = [v19 firstName];
        OUTLINED_FUNCTION_19();
      }

      v21 = [v33 contactInfo];
      v22 = [v21 lastName];

      if (v22)
      {
        v23 = [v33 contactInfo];
        v24 = [v23 lastName];
        OUTLINED_FUNCTION_19();
      }

      v25 = [v33 contactInfo];
      v26 = [v25 validatedEmailAddresses];

      if (v26)
      {
        v27 = [v33 contactInfo];
        v28 = [v27 validatedEmailAddresses];
        OUTLINED_FUNCTION_19();
      }

      v29 = [v33 contactInfo];
      v30 = [v29 validatedPhoneNumbers];

      if (v30)
      {
        v31 = [v33 contactInfo];
        v32 = [v31 validatedPhoneNumbers];
        OUTLINED_FUNCTION_19();
      }

      if (![v6 count])
      {
      }
    }
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void SFAppleIDClientCopyMyAppleID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = SFMainQueue();
  }

  v6 = v5;
  if (v4)
  {
    v7 = objc_alloc_init(SFAppleIDClient);
    if (v7)
    {
      v8 = v7;
      [(SFAppleIDClient *)v7 setDispatchQueue:v6];
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_17();
      v24 = __SFAppleIDClientCopyMyAppleID_block_invoke;
      v25 = &unk_1E788C488;
      v26 = v8;
      v27 = v4;
      v9 = v8;
      [(SFAppleIDClient *)v9 myAccountWithCompletion:v23];
    }

    else
    {
      OUTLINED_FUNCTION_1_7();
      OUTLINED_FUNCTION_16();
      v10 = v4;
      OUTLINED_FUNCTION_18(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, __SFAppleIDClientCopyMyAppleID_block_invoke_2, &unk_1E788A598, v20, v22);
      v9 = v21;
    }
  }
}

void SFAppleIDClientCopyPersonInfo(uint64_t a1, void *a2)
{
  v5 = OUTLINED_FUNCTION_21(a1, a2);
  v6 = v2;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = SFMainQueue();
  }

  v8 = v7;
  if (v6)
  {
    if (v3 && (v9 = objc_alloc_init(SFAppleIDClient)) != 0)
    {
      OUTLINED_FUNCTION_20(v9, v10);
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_17();
      v26 = v6;
      v11 = v4;
      OUTLINED_FUNCTION_14();
      [v12 personInfoWithEmailOrPhone:? completion:?];
    }

    else
    {
      OUTLINED_FUNCTION_1_7();
      OUTLINED_FUNCTION_16();
      v13 = v6;
      OUTLINED_FUNCTION_13(v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, __SFAppleIDClientCopyPersonInfo_block_invoke_2, &unk_1E788A598, v23, v25);
      v4 = v24;
    }
  }
}

void __SFAppleIDClientCopyPersonInfo_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    NSErrorToOSStatus();
    v7 = 0;
  }

  else if (v5)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    if (v7)
    {
      v8 = [v5 accountIdentifier];

      if (v8)
      {
        v9 = [v5 accountIdentifier];
        [OUTLINED_FUNCTION_8_0() setObject:? forKeyedSubscript:?];
      }

      v10 = [v5 altDSID];

      if (v10)
      {
        v11 = [v5 altDSID];
        [OUTLINED_FUNCTION_8_0() setObject:? forKeyedSubscript:?];
      }

      v12 = [v5 matchedValue];

      if (v12)
      {
        v13 = [v5 matchedValue];
        [OUTLINED_FUNCTION_8_0() setObject:? forKeyedSubscript:?];
      }

      v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "certificateStatus")}];
      [OUTLINED_FUNCTION_8_0() setObject:? forKeyedSubscript:?];

      v15[0] = v7;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      objc_claimAutoreleasedReturnValue();
    }
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void ExtensionFoundationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ExtensionFoundationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFShareSheetSessionTestingSnapshot.m" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void __getSLCollaborationFooterViewModelClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSLCollaborationFooterViewModelClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationItem.m" lineNumber:33 description:{@"Unable to find class %s", "SLCollaborationFooterViewModel"}];

  __break(1u);
}

void __getSLCollaborationFooterViewModelClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SocialLayerLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFCollaborationItem.m" lineNumber:32 description:{@"%s", *a1}];

  __break(1u);
}

void SharedWithYouCoreLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SharedWithYouCoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFCollaborationUtilities.m" lineNumber:120 description:{@"%s", *a1}];

  __break(1u);
}

void get_CKCloudKitPreShareType_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *get_CKCloudKitPreShareType(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:68 description:{@"%s", dlerror()}];

  __break(1u);
}

void get_CKCloudKitPostShareType_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *get_CKCloudKitPostShareType(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:69 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_CKSharingAccessTypeFromOptionsGroups_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CKShareParticipantPermission soft_CKSharingAccessTypeFromOptionsGroups(NSArray<_SWCollaborationOptionsGroup *> *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:79 description:{@"%s", dlerror()}];

  __break(1u);
}

void getCKShareTitleKey_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCKShareTitleKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:98 description:{@"%s", dlerror()}];

  __break(1u);
}

void get_SWPendingCollaborationTypeIdentifier_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *get_SWPendingCollaborationTypeIdentifier(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:128 description:{@"%s", dlerror()}];

  __break(1u);
}

void getUTCollaborationOptionsTypeIdentifier_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getUTCollaborationOptionsTypeIdentifier(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:122 description:{@"%s", dlerror()}];

  __break(1u);
}

void getCKErrorDomain_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCKErrorDomain(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:71 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getFPItemManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFPItemManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:55 description:{@"Unable to find class %s", "FPItemManager"}];

  __break(1u);
}

void FileProviderLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FileProviderLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFCollaborationUtilities.m" lineNumber:54 description:{@"%s", *a1}];

  __break(1u);
}

void CloudKitLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFCollaborationUtilities.m" lineNumber:66 description:{@"%s", *a1}];

  __break(1u);
}

void __getCKAllowedSharingOptionsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKAllowedSharingOptionsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:77 description:{@"Unable to find class %s", "CKAllowedSharingOptions"}];

  __break(1u);
}

void __getCloudSharingClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCloudSharingClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:47 description:{@"Unable to find class %s", "CloudSharing"}];

  __break(1u);
}

void __getCloudSharingClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudSharingLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFCollaborationUtilities.m" lineNumber:46 description:{@"%s", *a1}];

  __break(1u);
}

void __getCKPostSharingContextClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKPostSharingContextClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:97 description:{@"Unable to find class %s", "CKPostSharingContext"}];

  __break(1u);
}

void __getCKPreSharingContextClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKPreSharingContextClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:96 description:{@"Unable to find class %s", "CKPreSharingContext"}];

  __break(1u);
}

void __getCKContainerSetupInfoClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKContainerSetupInfoClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:74 description:{@"Unable to find class %s", "CKContainerSetupInfo"}];

  __break(1u);
}

void __getLPiCloudSharingMetadataClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPiCloudSharingMetadataClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:105 description:{@"Unable to find class %s", "LPiCloudSharingMetadata"}];

  __break(1u);
}

void LinkPresentationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LinkPresentationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFCollaborationUtilities.m" lineNumber:104 description:{@"%s", *a1}];

  __break(1u);
}

void __getLPImageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPImageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:106 description:{@"Unable to find class %s", "LPImage"}];

  __break(1u);
}

void __getLPSharedObjectMetadataClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPSharedObjectMetadataClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:108 description:{@"Unable to find class %s", "LPSharedObjectMetadata"}];

  __break(1u);
}

void __getLPLinkMetadataClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPLinkMetadataClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:107 description:{@"Unable to find class %s", "LPLinkMetadata"}];

  __break(1u);
}

void __getFPProviderDomainClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFPProviderDomainClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:56 description:{@"Unable to find class %s", "FPProviderDomain"}];

  __break(1u);
}

int *_btServiceEventHandler_cold_1(uint64_t a1, int **a2)
{
  result = *a2;
  v3 = **a2;
  if (v3 <= 90)
  {
    if (v3 != -1 || (result = _LogCategory_Initialize(), result))
    {
      OUTLINED_FUNCTION_2_10();
      return LogPrintF(v4, "void _btServiceEventHandler(BTDevice, BTServiceID, BTServiceEventType, BTServiceSpecificEvent, BTResult, void *)", 90, "### BTDeviceGetAddressString event %@ failed: %#m\n");
    }
  }

  return result;
}

int *_btServiceEventHandler_cold_2(int **a1, const char *a2, const char *a3)
{
  result = *a1;
  if (*result <= 30)
  {
    if (*result != -1)
    {
      return LogPrintF(result, "void _btServiceEventHandler(BTDevice, BTServiceID, BTServiceEventType, BTServiceSpecificEvent, BTResult, void *)", 30, "BTService connect, ignoring device: %s vs %s\n", a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      result = *a1;
      return LogPrintF(result, "void _btServiceEventHandler(BTDevice, BTServiceID, BTServiceEventType, BTServiceSpecificEvent, BTResult, void *)", 30, "BTService connect, ignoring device: %s vs %s\n", a2, a3);
    }
  }

  return result;
}

int *_btPairingAgentUserConfirmationHandler_cold_1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 136);
  if (*result <= 90)
  {
    if (*result != -1 || (result = _LogCategory_Initialize(), result))
    {
      OUTLINED_FUNCTION_2_10();
      return LogPrintF(v3, "void _btPairingAgentUserConfirmationHandler(BTPairingAgent, BTDevice, uint32_t, BTBool, void *)", 90, "### BTDeviceGetAddressString confirm %@ failed: %#m\n");
    }
  }

  return result;
}

void *SFLocalizePhoneNumber(void *a1)
{
  v1 = a1;
  active = CPPhoneNumberCopyActiveCountryCode();
  v3 = PNCopyBestGuessNormalizedNumberForCountry();
  if (v3)
  {
    [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
    v4 = CFPhoneNumberCreate();
    free(v3);
    if (v4)
    {
      CFPhoneNumberCreateString();
      v5 = OUTLINED_FUNCTION_1_14();
      CFRelease(v5);
    }

    else
    {
      v3 = 0;
    }
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  v7 = v6;

  return v6;
}

void *SFNormalizePhoneNumber(void *a1)
{
  v1 = a1;
  active = CPPhoneNumberCopyActiveCountryCode();
  v3 = PNCopyBestGuessNormalizedNumberForCountry();
  if (v3)
  {
    [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
    v4 = CFPhoneNumberCreate();
    free(v3);
    if (v4 && (String = CFPhoneNumberCreateString(), CFRelease(v4), String))
    {
      v6 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"+"];
      v3 = [String stringByTrimmingCharactersInSet:v6];
    }

    else
    {
      v3 = 0;
    }
  }

  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = v1;
  }

  v8 = v7;

  return v7;
}

void __getCNContactClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNContactClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFPeopleSuggestion.m" lineNumber:18 description:{@"Unable to find class %s", "CNContact"}];

  __break(1u);
}

void ContactsLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFPeopleSuggestion.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getCNMutableContactClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNMutableContactClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFPeopleSuggestion.m" lineNumber:19 description:{@"Unable to find class %s", "CNMutableContact"}];

  __break(1u);
}

void __getINImageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINImageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFPeopleSuggestion.m" lineNumber:22 description:{@"Unable to find class %s", "INImage"}];

  __break(1u);
}

void __getINImageClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntentsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFPeopleSuggestion.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void SFDeviceSetupHomeKitInfo_cold_2(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 name];
  LogPrintF(&gLogCategory_SFDeviceSetupUtilities, "NSArray<NSDictionary<NSString *,id> *> * _Nullable HomeKitMediaSystemDictionariesForHome(HMHome *__strong _Nonnull)", 30, "Adding HomeKit info for media system %@ in home %@ with info %@\n", a2, v5, a3);
}

void SFDeviceSetupHomeKitInfo_cold_3(void *a1, uint64_t a2)
{
  v3 = [a1 name];
  LogPrintF(&gLogCategory_SFDeviceSetupUtilities, "NSArray<NSDictionary<NSString *,id> *> * _Nullable HomeKitRoomDictionariesForHome(HMHome *__strong _Nonnull)", 30, "Adding HomeKit info for room %@ in home %@\n", a2, v3);
}

void SFDeviceSetupHomeKitInfo_cold_4(void *a1, uint64_t a2)
{
  v3 = [a1 name];
  LogPrintF(&gLogCategory_SFDeviceSetupUtilities, "NSArray<NSDictionary<NSString *,id> *> * _Nullable HomeKitAccessoryDictionariesForRoom(HMRoom *__strong _Nonnull)", 30, "Adding HomeKit info for accessory %@ in room %@\n", a2, v3);
}

void __getCKShareClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKShareClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationCloudSharingRequest.m" lineNumber:23 description:{@"Unable to find class %s", "CKShare"}];

  __break(1u);
}

void CloudKitLibrary_cold_1_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFCollaborationCloudSharingRequest.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getCKContainerSetupInfoClass_block_invoke_cold_1_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKContainerSetupInfoClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationCloudSharingRequest.m" lineNumber:21 description:{@"Unable to find class %s", "CKContainerSetupInfo"}];

  __break(1u);
}

uint64_t _handleServerPairSetupShowPIN(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v7 = a4;
  if (a3 < 5)
  {
    v12 = 4294960553;
  }

  else
  {
    RandomString();
    v8 = v7[19];
    if (v8)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = @"?";
      }

      (*(v8 + 16))(v8, a1, v11);
    }

    v12 = 0;
  }

  return v12;
}

void _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_10(&dword_1A9662000, v0, v1, "%s: Unexpected selector name %@", v2, v3, v4, v5, v6);
}

void _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_2(void *a1)
{
  [a1 count];
  v7 = 136315394;
  OUTLINED_FUNCTION_2_14();
  OUTLINED_FUNCTION_1_17(&dword_1A9662000, v1, v2, "%s: Unexpected number of arguments %ld", v3, v4, v5, v6, v7);
}

void _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_3(void *a1)
{
  v1 = [a1 objectAtIndexedSubscript:0];
  v8 = 136315394;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_17(&dword_1A9662000, v2, v3, "%s: Unsafe operand %@", v4, v5, v6, v7, v8);
}

void _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_4(void *a1)
{
  v1 = [a1 objectAtIndexedSubscript:1];
  v8 = 136315394;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_17(&dword_1A9662000, v2, v3, "%s: Unsafe operand %@", v4, v5, v6, v7, v8);
}

void _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_6()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_10(&dword_1A9662000, v0, v1, "%s: Argument expression not safe to execute %@", v2, v3, v4, v5, v6);
}

void _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_7(uint64_t a1, void *a2, uint64_t a3, NSObject *a4)
{
  *a3 = 136315650;
  *(a3 + 4) = "_SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions";
  *(a3 + 12) = 2112;
  *(a3 + 14) = a1;
  *(a3 + 22) = 2112;
  *(a3 + 24) = a2;
  v6 = a2;
  _os_log_debug_impl(&dword_1A9662000, a4, OS_LOG_TYPE_DEBUG, "%s: Keypath not of expected class (%@, %@)", a3, 0x20u);
}

void _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_8()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_10(&dword_1A9662000, v0, v1, "%s: Operand expression not safe to execute %@", v2, v3, v4, v5, v6);
}

void _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_9(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "_SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions";
  _os_log_debug_impl(&dword_1A9662000, log, OS_LOG_TYPE_DEBUG, "%s: No operand expression", &v1, 0xCu);
}

void _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_10()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_2_14();
  OUTLINED_FUNCTION_3_10(&dword_1A9662000, v0, v1, "%s: Unexpected NSExpression type %ld", v2, v3, v4, v5, v6);
}

void __getCNContactFormatterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getCNContactFormatterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFShareAudioService.m" lineNumber:26 description:{@"Unable to find class %s", "CNContactFormatter"}];

  __break(1u);
}

void __getCNContactFormatterClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void * _Nonnull ContactsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFShareAudioService.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}