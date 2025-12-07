__n128 SelectedMailbox.init(name:isReadOnly:flags:messageCount:firstUnseenMessage:permanentFlags:nextUID:uidValidity:modificationSequenceValue:)@<Q0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11, uint64_t a12, __int16 a13)
{
  v16[84] = BYTE4(a6) & 1;
  v16[80] = BYTE4(a8) & 1;
  v16[76] = a11 & 1;
  v16[75] = HIBYTE(a13) & 1;
  *&v17 = a1;
  DWORD2(v17) = a2;
  v18.n128_u64[0] = a4;
  v18.n128_u64[1] = a5;
  LODWORD(v19) = a6;
  BYTE4(v19) = BYTE4(a6) & 1;
  *(&v19 + 1) = a7;
  *v20 = a8;
  v20[4] = BYTE4(a8) & 1;
  *&v20[8] = a10;
  v20[12] = a11 & 1;
  *&v20[16] = a12;
  *&v20[24] = a13 & 0x1FF;
  v20[26] = a3;
  v21 = a1;
  v22 = a2;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = BYTE4(a6) & 1;
  v27 = a7;
  v28 = a8;
  v29 = BYTE4(a8) & 1;
  v30 = a10;
  v31 = a11 & 1;
  v32 = a12;
  v33 = a13 & 0x1FF;
  v34 = a3;
  sub_1B0B37A20(&v17, v16);
  sub_1B0B37A7C(&v21);
  v14 = *v20;
  *(a9 + 32) = v19;
  *(a9 + 48) = v14;
  *(a9 + 59) = *&v20[11];
  result = v18;
  *a9 = v17;
  *(a9 + 16) = result;
  return result;
}

uint64_t SelectedMailbox.name.setter(uint64_t a1, int a2)
{

  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t SelectedMailbox.flags.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SelectedMailbox.firstUnseenMessage.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t SelectedMailbox.permanentFlags.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t SelectedMailbox.nextUID.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

uint64_t SelectedMailbox.uidValidity.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

uint64_t SelectedMailbox.modificationSequenceValue.setter(uint64_t result, __int16 a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2;
  *(v2 + 73) = HIBYTE(a2) & 1;
  return result;
}

double sub_1B0C2802C@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0C28040(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 11) = *(a1 + 59);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 11) = *(a2 + 59);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return _s15IMAP2Connection15SelectedMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9) & 1;
}

BOOL static SelectedMailbox.ModificationSequence.__derived_enum_equals(_:_:)(_BOOL8 result, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  if (((a3 | result) & 0x8000000000000000) == 0)
  {
    return a3 == result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C280D0(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    v6 = *a1;
    if ((*a2 | v6) < 0)
    {
      __break(1u);
    }

    else
    {
      return *a2 == v6;
    }
  }

  return result;
}

uint64_t _s15IMAP2Connection15SelectedMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t *a2)
{
  if ((*(result + 8) | (*(result + 8) << 32)) != (*(a2 + 2) | (*(a2 + 2) << 32)))
  {
    goto LABEL_40;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    goto LABEL_40;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    v8 = result;
    result = sub_1B0AFE1EC(*(result + 16), a2[2]);
    if ((result & 1) == 0 || *(v8 + 24) != a2[3])
    {
      goto LABEL_40;
    }

    v4 = v8;
    v6 = a2;
    v10 = *(a2 + 36);
    if (*(v8 + 36))
    {
      if (!*(a2 + 36))
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (*(a2 + 8) != *(v8 + 32))
      {
        v10 = 1;
      }

      if (v10)
      {
        goto LABEL_40;
      }
    }

    v11 = *(v8 + 40);
    v12 = a2[5];
    if (v11)
    {
      if (!v12)
      {
        goto LABEL_40;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v13 = sub_1B0BE5598(v11, v12);

      v4 = v8;
      v6 = a2;
      if ((v13 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v12)
    {
      goto LABEL_40;
    }

    v14 = *(v6 + 52);
    if (*(v4 + 52))
    {
      if (!*(v6 + 52))
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (*(v6 + 12) != *(v4 + 48))
      {
        v14 = 1;
      }

      if (v14)
      {
        goto LABEL_40;
      }
    }

    v15 = *(v6 + 60);
    if (*(v4 + 60))
    {
      if (!*(v6 + 60))
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (*(v4 + 56) != *(v6 + 14))
      {
        v15 = 1;
      }

      if (v15)
      {
        goto LABEL_40;
      }
    }

    v16 = *(v6 + 73);
    if (*(v4 + 73))
    {
LABEL_37:
      if (v16)
      {
        goto LABEL_38;
      }

LABEL_40:
      v17 = 0;
      return v17 & 1;
    }

    if (*(v6 + 73))
    {
      goto LABEL_40;
    }
  }

  else
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        goto LABEL_40;
      }

      v6 = (v6 + 1);
      ++v7;
      if (!--v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  v16 = *(v6 + 72);
  if (*(v4 + 72))
  {
    goto LABEL_37;
  }

  if (v6[9])
  {
    goto LABEL_40;
  }

  v18 = *(v4 + 64);
  v19 = v6[8];
  if (((v19 | v18) & 0x8000000000000000) == 0)
  {
    if (v19 != v18)
    {
      goto LABEL_40;
    }

LABEL_38:
    v17 = *(v4 + 74) ^ *(v6 + 74) ^ 1;
    return v17 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C282E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 75))
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

uint64_t sub_1B0C28330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 74) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 75) = 1;
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

    *(result + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StartTLS(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

double sub_1B0C28460@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 5;
  return result;
}

double sub_1B0C28494@<D0>(char a1@<W3>, uint64_t a2@<X8>)
{
  if (a1 || *(v2 + 1) == 1)
  {
    *&v11 = 0;
    v10 = 5uLL;
    BYTE8(v11) = -64;
    sub_1B0BD6CF8(&v10);
  }

  else
  {
    sub_1B0C285C8(&v10);
  }

  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v45 = v33;
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v41 = v29;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v4 = v31;
  *(a2 + 128) = v30;
  *(a2 + 144) = v4;
  *(a2 + 160) = v44;
  *(a2 + 176) = v45;
  v5 = v39;
  *(a2 + 64) = v38;
  *(a2 + 80) = v5;
  v6 = v41;
  *(a2 + 96) = v40;
  *(a2 + 112) = v6;
  v7 = v35;
  *a2 = v34;
  *(a2 + 16) = v7;
  result = *&v36;
  v9 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v9;
  return result;
}

double sub_1B0C285C8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 176) = 7;
  return result;
}

void sub_1B0C285F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_1B0E460B8();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 32 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v10 >= v11 >> 1)
      {
        sub_1B041D32C((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 16 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_1B0425168(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_1B0425168(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
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
  }
}

double sub_1B0C28818@<D0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v2 = type metadata accessor for UnauthenticatedState(0);
  MEMORY[0x1EEE9AC00](v2);
  v74 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B0E43DF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v73 - v11;
  v13 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA74(v1, v15, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v7 + 32))(v12, v15, v6);
      (*(v7 + 16))(v9, v12, v6);
      v20 = sub_1B0E44B88();
      v21 = v36;
      (*(v7 + 8))(v12, v6);

      v22 = 0;
      v23 = 0;
LABEL_10:
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v17 = v75;
      sub_1B0C2CC20(v15, v75);
      v18 = v74;
      sub_1B038CA74(v17 + *(v4 + 24), v74, type metadata accessor for UnauthenticatedState);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v22 = 0xD000000000000015;
          sub_1B038C764(v18, type metadata accessor for UnauthenticatedState);
          v72 = "requestingCredentials";
          goto LABEL_38;
        case 2u:
          sub_1B038C764(v17, type metadata accessor for UnauthenticatedStateWithTasks);

          sub_1B038C764(v18, type metadata accessor for UnauthenticatedState);
          v20 = 0;
          v21 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v35 = 2;
          v23 = 0xEE00676E69746163;
          v22 = 0x69746E6568747561;
          goto LABEL_23;
        case 3u:
          sub_1B038C764(v18, type metadata accessor for UnauthenticatedState);
          v23 = 0x80000001B0F2D360;
          sub_1B038C764(v17, type metadata accessor for UnauthenticatedStateWithTasks);

          v20 = 0;
          v21 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v22 = 0xD000000000000011;
          goto LABEL_22;
        case 4u:
          sub_1B038C764(v18, type metadata accessor for UnauthenticatedState);
          sub_1B038C764(v17, type metadata accessor for UnauthenticatedStateWithTasks);

          v20 = 0;
          v21 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v35 = 2;
          v23 = 0xEF796C6E4F444955;
          v22 = 0x676E696C62616E65;
          goto LABEL_23;
        case 5u:
          v22 = 0xD000000000000015;
          sub_1B038C764(v18, type metadata accessor for UnauthenticatedState);
          v72 = "requestingCompression";
LABEL_38:
          v23 = (v72 - 32) | 0x8000000000000000;
          sub_1B038C764(v17, type metadata accessor for UnauthenticatedStateWithTasks);

          v20 = 0;
          v21 = 0;
          goto LABEL_10;
        case 6u:
          sub_1B038C764(v18, type metadata accessor for UnauthenticatedState);
          v23 = 0x80000001B0F2D380;
          sub_1B038C764(v17, type metadata accessor for UnauthenticatedStateWithTasks);

          v20 = 0;
          v21 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v22 = 0xD000000000000013;
          goto LABEL_22;
        case 7u:
          sub_1B038C764(v18, type metadata accessor for UnauthenticatedState);
          v23 = 0x80000001B0F2D340;
          sub_1B038C764(v17, type metadata accessor for UnauthenticatedStateWithTasks);

          v20 = 0;
          v21 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v22 = 0xD00000000000001ELL;
          goto LABEL_22;
        case 8u:
          sub_1B038C764(v18, type metadata accessor for UnauthenticatedState);
          v23 = 0x80000001B0F2D320;
          sub_1B038C764(v17, type metadata accessor for UnauthenticatedStateWithTasks);

          v20 = 0;
          v21 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v22 = 0xD000000000000012;
          goto LABEL_22;
        case 9u:
          sub_1B038C764(v18, type metadata accessor for UnauthenticatedState);
          sub_1B038C764(v17, type metadata accessor for UnauthenticatedStateWithTasks);

          v20 = 0;
          v21 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v35 = 2;
          v23 = 0xE400000000000000;
          v22 = 1701736292;
          goto LABEL_23;
        case 0xAu:
          sub_1B038C764(v18, type metadata accessor for UnauthenticatedState);
          sub_1B038C764(v17, type metadata accessor for UnauthenticatedStateWithTasks);

          v20 = 0;
          v21 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v35 = 2;
          v23 = 0xE600000000000000;
          v22 = 0x64656C696166;
          goto LABEL_23;
        case 0xBu:
          sub_1B038C764(v17, type metadata accessor for UnauthenticatedStateWithTasks);

          v20 = 0;
          v21 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v35 = 2;
          v23 = 0xEA0000000000676ELL;
          v22 = 0x697463656E6E6F63;
          goto LABEL_23;
        case 0xCu:
          v19 = "gettingPreAuthCapabilities";
          goto LABEL_30;
        case 0xDu:
          sub_1B038C764(v17, type metadata accessor for UnauthenticatedStateWithTasks);

          v20 = 0;
          v21 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v35 = 2;
          v23 = 0xEB00000000534C54;
          v22 = 0x676E697472617473;
          goto LABEL_23;
        case 0xEu:
          sub_1B038C764(v17, type metadata accessor for UnauthenticatedStateWithTasks);

          v20 = 0;
          v21 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v35 = 2;
          v23 = 0xED0000534C54726FLL;
          v22 = 0x46676E6974696177;
          goto LABEL_23;
        case 0xFu:
          v23 = 0x80000001B0F2D3C0;
          sub_1B038C764(v17, type metadata accessor for UnauthenticatedStateWithTasks);

          v20 = 0;
          v21 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v22 = 0xD00000000000001BLL;
          goto LABEL_22;
        default:
          sub_1B038C764(v18, type metadata accessor for UnauthenticatedState);
          v19 = "checkingIfPreAuthIsAllowed";
LABEL_30:
          v23 = (v19 - 32) | 0x8000000000000000;
          sub_1B038C764(v17, type metadata accessor for UnauthenticatedStateWithTasks);

          v20 = 0;
          v21 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v22 = 0xD00000000000001ALL;
          break;
      }

      goto LABEL_22;
    }

    memcpy(v99, v15, sizeof(v99));
    v37 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C285F0(v37);
    v39 = v38;

    v98 = v39;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C2A0EC(&v98);

    *&v100 = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v40 = sub_1B0E448E8();
    v42 = v41;

    v108 = *&v99[136];
    v109 = *&v99[152];
    v110 = *&v99[168];
    v104 = *&v99[72];
    v105 = *&v99[88];
    v106 = *&v99[104];
    v107 = *&v99[120];
    v100 = *&v99[8];
    v101 = *&v99[24];
    v102 = *&v99[40];
    v103 = *&v99[56];
    v43 = ServerID.logDescription.getter();
    v74 = v44;
    v96[2] = *&v99[320];
    v96[3] = *&v99[336];
    v97 = *&v99[352];
    v94 = *&v99[256];
    v95 = *&v99[272];
    v96[0] = *&v99[288];
    v96[1] = *&v99[304];
    v90 = *&v99[192];
    v91 = *&v99[208];
    v92 = *&v99[224];
    v93 = *&v99[240];
    v45 = sub_1B0BE2780(&v90);
    v46 = sub_1B03DB9A4(&v90);
    if (v45)
    {
      if (v45 != 1)
      {
        v61 = *(v46 + 8);
        v62 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v63 = sub_1B0B979B4(v62, v61);
        v65 = v64;
        sub_1B0BE278C(v99);
        v52 = 0;
        v53 = 0;
        v49 = 0;
        v51 = 0;
LABEL_21:
        v75 = v65;
        v88[0] = v40;
        v88[1] = v42;
        v66 = v74;
        v88[2] = v43;
        v88[3] = v74;
        v88[4] = v52;
        v88[5] = v53;
        v88[6] = v49;
        v88[7] = v51;
        v88[8] = v63;
        v88[9] = v65;
        memset(v89, 0, sizeof(v89));
        v32 = v63;
        v31 = v51;
        v30 = v49;
        v29 = v53;
        v28 = v52;
        sub_1B0C2CBB8(v88, &v77);
        sub_1B0398EFC(v89, &qword_1EB6E5888, &qword_1B0ED9768);
        *&v77 = v40;
        *(&v77 + 1) = v42;
        *&v78 = v43;
        *(&v78 + 1) = v66;
        *&v79 = v28;
        *(&v79 + 1) = v29;
        *&v80 = v30;
        *(&v80 + 1) = v31;
        *&v81 = v32;
        *(&v81 + 1) = v75;
        sub_1B0C2CBF0(&v77);
        v33 = v75;
        v27 = v66;
        v26 = v43;
        v25 = v42;
        v24 = v40;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
LABEL_22:
        v35 = 2;
LABEL_23:
        v34 = 2;
        goto LABEL_24;
      }

      v47 = *(v46 + 8);
      v48 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v49 = sub_1B0B979B4(v48, v47);
      v51 = v50;
      sub_1B0BE278C(v99);
      v52 = 0;
      v53 = 0;
    }

    else
    {
      v51 = *v46;
      if (*v46)
      {
        v55 = *(v46 + 24);
        v75 = *(v46 + 32);
        v56 = *(v46 + 16);
        v57 = *(v46 + 8);
        v85 = *&v99[320];
        v86 = *&v99[336];
        v87 = *&v99[352];
        v81 = *&v99[256];
        v82 = *&v99[272];
        v83 = *&v99[288];
        v84 = *&v99[304];
        v77 = *&v99[192];
        v78 = *&v99[208];
        v79 = *&v99[224];
        v80 = *&v99[240];
        v58 = sub_1B03DB9A4(&v77);
        sub_1B0BE2DA8(*v58, v58[1], v58[2], v58[3], v58[4]);
        v59 = sub_1B0B979B4(v51, v57);
        v53 = v60;
        sub_1B0B6DCF0(v56, v55, v75);
        sub_1B0BE278C(v99);
        v52 = v59;
        v49 = 0;
        v51 = 0;
      }

      else
      {
        sub_1B0BE278C(v99);
        v52 = 0;
        v53 = 0;
        v49 = 0;
      }
    }

    v63 = 0;
    v65 = 0;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1B038C764(v15, type metadata accessor for ConnectionState);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 2;
    v35 = 1;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 1;
    v35 = 2;
LABEL_24:
    v54 = 2;
    goto LABEL_25;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v54 = 1;
  v35 = 2;
  v34 = 2;
LABEL_25:
  *&v90 = v20;
  *(&v90 + 1) = v21;
  *&v91 = v22;
  *(&v91 + 1) = v23;
  *&v92 = v24;
  *(&v92 + 1) = v25;
  *&v93 = v26;
  *(&v93 + 1) = v27;
  *&v94 = v28;
  *(&v94 + 1) = v29;
  *&v95 = v30;
  *(&v95 + 1) = v31;
  *&v96[0] = v32;
  *(&v96[0] + 1) = v33;
  LOBYTE(v96[1]) = v35;
  BYTE1(v96[1]) = v34;
  BYTE2(v96[1]) = v54;
  *v99 = v20;
  *&v99[8] = v21;
  *&v99[16] = v22;
  *&v99[24] = v23;
  *&v99[32] = v24;
  *&v99[40] = v25;
  *&v99[48] = v26;
  *&v99[56] = v27;
  *&v99[64] = v28;
  *&v99[72] = v29;
  *&v99[80] = v30;
  *&v99[88] = v31;
  *&v99[96] = v32;
  *&v99[104] = v33;
  v99[112] = v35;
  v99[113] = v34;
  v99[114] = v54;
  sub_1B0C2A704(&v90, &v77);
  sub_1B0BE2970(v99);
  v67 = v95;
  v68 = v76;
  *(v76 + 64) = v94;
  *(v68 + 80) = v67;
  *(v68 + 96) = v96[0];
  *(v68 + 111) = *(v96 + 15);
  v69 = v91;
  *v68 = v90;
  *(v68 + 16) = v69;
  result = *&v92;
  v71 = v93;
  *(v68 + 32) = v92;
  *(v68 + 48) = v71;
  return result;
}

int64_t sub_1B0C297B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v66 = a2;
  v64 = sub_1B0E43BC8();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v57 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E58A0, &qword_1B0ED9780);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v57 - v9;
  v11 = sub_1B0E441A8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v57 - v15;
  v16 = sub_1B0E441D8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5520, &qword_1B0ED0CE8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v57 - v24;
  v26 = *(v2 + OBJC_IVAR____TtC15IMAP2Connection10Connection_createdAt);
  result = static MonotonicTime.now()();
  v28 = __OFSUB__(v26, result);
  v29 = v26 - result;
  if (v26 < result)
  {
    if (__OFSUB__(result, v26))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v28 = __OFSUB__(0, result - v26);
    v29 = v26 - result;
    if (!v28)
    {
LABEL_7:
      v30 = v29 / 1000000000.0;
      if (COERCE__INT64(fabs(v30)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v30 > -9.22337204e18)
      {
        if (v30 < 9.22337204e18)
        {
          if (!__OFSUB__(0, v30))
          {
            v65 = -v30;
            v83 = 1;
            v31 = v67;
            if (!v67)
            {
              v37 = sub_1B0E43DF8();
              (*(*(v37 - 8) + 56))(v25, 1, 1, v37);
              sub_1B0398EFC(v25, &qword_1EB6E5520, &qword_1B0ED0CE8);
              (*(v12 + 56))(v10, 1, 1, v11);
              sub_1B0398EFC(v10, &qword_1EB6E58A0, &qword_1B0ED9780);
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v45 = v66;
LABEL_23:
              v83 = v31 == 0;
              *&v69 = v65;
              *(&v69 + 1) = v40;
              *&v70 = v41;
              *(&v70 + 1) = v39;
              *&v71 = v38;
              *(&v71 + 1) = v42;
              *&v72 = v43;
              *(&v72 + 1) = v44;
              v73 = v31 == 0;
              v74 = v65;
              v75 = v40;
              v76 = v41;
              v77 = v39;
              v78 = v38;
              v79 = v42;
              v80 = v43;
              v81 = v44;
              v82 = v31 == 0;
              sub_1B0C2A73C(&v69, v68);
              result = sub_1B0C2A7C8(&v74);
              v55 = v72;
              *(v45 + 32) = v71;
              *(v45 + 48) = v55;
              *(v45 + 64) = v73;
              v56 = v70;
              *v45 = v69;
              *(v45 + 16) = v56;
              return result;
            }

            sub_1B0E43E18();
            v32 = sub_1B0E43DF8();
            v33 = *(v32 - 8);
            (*(v33 + 56))(v25, 0, 1, v32);
            sub_1B0C2CB48(v25, v22);
            v34 = (*(v33 + 88))(v22, v32);
            if (v34 == *MEMORY[0x1E6977C18])
            {
              (*(v33 + 96))(v22, v32);
              (*(v17 + 32))(v19, v22, v16);
              v74 = 0;
              v75 = 0xE000000000000000;
              v35 = 0x20676E6974696177;
              v36 = 0xE900000000000028;
            }

            else
            {
              if (v34 != *MEMORY[0x1E6977C10])
              {
                if (v34 != *MEMORY[0x1E6977C08])
                {
                  v45 = v66;
                  v46 = v62;
                  if (v34 == *MEMORY[0x1E6977C28])
                  {
                    v57 = 0xE900000000000067;
                    v40 = 0x6E69726170657270;
                  }

                  else if (v34 == *MEMORY[0x1E6977C00])
                  {
                    v57 = 0xE500000000000000;
                    v40 = 0x7964616572;
                  }

                  else if (v34 == *MEMORY[0x1E6977C20])
                  {
                    v57 = 0xE900000000000064;
                    v40 = 0x656C6C65636E6163;
                  }

                  else
                  {
                    (*(v33 + 8))(v22, v32);
                    v40 = 0;
                    v57 = 0;
                  }

LABEL_19:
                  sub_1B0E43C78();
                  if ((*(v12 + 48))(v10, 1, v11) == 1)
                  {
                    sub_1B0398EFC(v10, &qword_1EB6E58A0, &qword_1B0ED9780);
                    v38 = 0;
                    v39 = 0;
                  }

                  else
                  {
                    v47 = v59;
                    (*(v12 + 32))(v59, v10, v11);
                    (*(v12 + 16))(v58, v47, v11);
                    v39 = sub_1B0E44B88();
                    v38 = v48;
                    (*(v12 + 8))(v47, v11);
                  }

                  v49 = v60;
                  v31 = v67;
                  sub_1B0E43E48();
                  v50 = v63;
                  v51 = v61;
                  v52 = v49;
                  v53 = v64;
                  (*(v63 + 32))(v61, v52, v64);
                  (*(v50 + 16))(v46, v51, v53);
                  v42 = sub_1B0E44B88();
                  v43 = v54;
                  (*(v50 + 8))(v51, v53);
                  v44 = sub_1B0E43C68();
                  v41 = v57;
                  goto LABEL_23;
                }

                v57 = 0xE500000000000000;
                v40 = 0x7075746573;
LABEL_18:
                v45 = v66;
                v46 = v62;
                goto LABEL_19;
              }

              (*(v33 + 96))(v22, v32);
              (*(v17 + 32))(v19, v22, v16);
              v74 = 0;
              v75 = 0xE000000000000000;
              v35 = 0x282064656C696166;
              v36 = 0xE800000000000000;
            }

            MEMORY[0x1B2726E80](v35, v36);
            sub_1B0E46508();
            MEMORY[0x1B2726E80](41, 0xE100000000000000);
            v40 = v74;
            v57 = v75;
            (*(v17 + 8))(v19, v16);
            goto LABEL_18;
          }

          goto LABEL_36;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_35;
    }

    __break(1u);
  }

  if (!v28)
  {
    goto LABEL_7;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B0C2A0EC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0C0E064(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B0C2BF6C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B0C2A158()
{
  v1 = 25705;
  v2 = 0x6574617473;
  if (*v0 != 2)
  {
    v2 = 0x69796C7265646E75;
  }

  if (*v0)
  {
    v1 = 0x43676E696E6E7572;
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

uint64_t sub_1B0C2A1D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0C2C938(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0C2A1FC(uint64_t a1)
{
  sub_1B0C2A5D8();

  return sub_1B0E46F28();
}

uint64_t sub_1B0C2A238(uint64_t a1)
{
  sub_1B0C2A5D8();

  return sub_1B0E46F38();
}

uint64_t CommandConnection.CapturedValue.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5868, &qword_1B0ED9420);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0C2A5D8();
  sub_1B0E46D48();
  LOBYTE(v31) = 0;
  sub_1B0E46928();
  if (!v2)
  {
    *&v31 = *(v3 + 16);
    LOBYTE(v28[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5870, &qword_1B0ED9428);
    sub_1B0C2A62C();
    sub_1B0E46958();
    v9 = *(v3 + 104);
    v42[4] = *(v3 + 88);
    v42[5] = v9;
    v43[0] = *(v3 + 120);
    *(v43 + 15) = *(v3 + 135);
    v10 = *(v3 + 40);
    v42[0] = *(v3 + 24);
    v42[1] = v10;
    v11 = *(v3 + 72);
    v42[2] = *(v3 + 56);
    v42[3] = v11;
    v12 = *(v3 + 104);
    v35 = *(v3 + 88);
    v36 = v12;
    v37[0] = *(v3 + 120);
    *(v37 + 15) = *(v3 + 135);
    v13 = *(v3 + 40);
    v31 = *(v3 + 24);
    v32 = v13;
    v14 = *(v3 + 72);
    v33 = *(v3 + 56);
    v34 = v14;
    v30 = 2;
    sub_1B0C2A704(v42, v28);
    sub_1B0BE291C();
    sub_1B0E46958();
    v28[4] = v35;
    v28[5] = v36;
    *v29 = v37[0];
    *&v29[15] = *(v37 + 15);
    v28[0] = v31;
    v28[1] = v32;
    v28[2] = v33;
    v28[3] = v34;
    sub_1B0BE2970(v28);
    v15 = *(v3 + 160);
    v16 = *(v3 + 192);
    v39 = *(v3 + 176);
    v40 = v16;
    v17 = *(v3 + 160);
    v38[0] = *(v3 + 144);
    v38[1] = v17;
    v18 = *(v3 + 192);
    v25 = v39;
    v26 = v18;
    v41 = *(v3 + 208);
    v27 = *(v3 + 208);
    v23 = v38[0];
    v24 = v15;
    v22 = 3;
    sub_1B0C2A73C(v38, v20);
    sub_1B0C2A774();
    sub_1B0E46958();
    v20[2] = v25;
    v20[3] = v26;
    v21 = v27;
    v20[0] = v23;
    v20[1] = v24;
    sub_1B0C2A7C8(v20);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B0C2A5D8()
{
  result = qword_1EB6DD070;
  if (!qword_1EB6DD070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD070);
  }

  return result;
}

unint64_t sub_1B0C2A62C()
{
  result = qword_1EB6DB448;
  if (!qword_1EB6DB448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E5870, &qword_1B0ED9428);
    sub_1B0C2A6B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB448);
  }

  return result;
}

unint64_t sub_1B0C2A6B0()
{
  result = qword_1EB6DCE38;
  if (!qword_1EB6DCE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE38);
  }

  return result;
}

unint64_t sub_1B0C2A774()
{
  result = qword_1EB6DD008;
  if (!qword_1EB6DD008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD008);
  }

  return result;
}

__n128 CommandConnection.capturedValue.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = ConnectionID.debugDescription.getter(*(v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
  v9 = v8;
  swift_beginAccess();
  v10 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = sub_1B0C2AA20(v10);

  v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038CA74(v2 + v12, v6, type metadata accessor for ConnectionState);
  sub_1B0C28818(v23);
  sub_1B038C764(v6, type metadata accessor for ConnectionState);
  sub_1B0C297B0(*(*(v2 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection), v20);
  *&v22[21] = v20[1];
  *&v22[37] = v20[2];
  *&v22[53] = v20[3];
  v22[69] = v21;
  *&v22[5] = v20[0];
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11;
  v13 = v23[2];
  *(a1 + 72) = v23[3];
  *(a1 + 56) = v13;
  v14 = v23[0];
  *(a1 + 40) = v23[1];
  *(a1 + 24) = v14;
  *(a1 + 135) = *&v24[15];
  *(a1 + 120) = *v24;
  v15 = v23[4];
  *(a1 + 104) = v23[5];
  *(a1 + 88) = v15;
  *(a1 + 139) = *v22;
  result = *&v22[16];
  v17 = *&v22[32];
  v18 = *&v22[48];
  *(a1 + 201) = *&v22[62];
  *(a1 + 187) = v18;
  *(a1 + 171) = v17;
  *(a1 + 155) = result;
  return result;
}

uint64_t sub_1B0C2AA20(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1B0BFE5D4(0, v1, 0);
    v2 = v24;
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 8);
      v8 = *v4;
      v18[0] = *(v4 - 4);
      v18[1] = v5;
      v18[2] = v6;
      v19 = v7;
      v20 = v8;
      sub_1B0C2B184(v18, v21);
      v9 = v21[0];
      v10 = v21[1];
      v11 = v22;
      v12 = v23;
      v24 = v2;
      v14 = *(v2 + 16);
      v13 = *(v2 + 24);
      if (v14 >= v13 >> 1)
      {
        v17 = v22;
        sub_1B0BFE5D4((v13 > 1), v14 + 1, 1);
        v11 = v17;
        v2 = v24;
      }

      *(v2 + 16) = v14 + 1;
      v15 = v2 + 40 * v14;
      *(v15 + 32) = v9;
      *(v15 + 40) = v10;
      *(v15 + 48) = v11;
      *(v15 + 64) = v12;
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection0B5StateO13CapturedValueV13AuthenticatedVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1B0C2AB98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 209))
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

uint64_t sub_1B0C2ABE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B0C2AC8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1B0C2ACE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy115_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1B0C2ADAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 115))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1B0C2AE08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 114) = 0;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 115) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 115) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1B0C2AE94()
{
  result = qword_1EB6E5878;
  if (!qword_1EB6E5878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5878);
  }

  return result;
}

uint64_t sub_1B0C2AEE8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5890, &qword_1B0ED9770);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0C2CAA0();
  sub_1B0E46D48();
  v8[15] = 0;
  sub_1B0E46928();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1B0E468C8();
  v8[13] = 2;
  sub_1B0E46948();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B0C2B088()
{
  v1 = 1684957547;
  if (*v0 != 1)
  {
    v1 = 6645601;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6775156;
  }
}

uint64_t sub_1B0C2B0CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0C2D078(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0C2B0F4(uint64_t a1)
{
  sub_1B0C2CAA0();

  return sub_1B0E46F28();
}

uint64_t sub_1B0C2B130(uint64_t a1)
{
  sub_1B0C2CAA0();

  return sub_1B0E46F38();
}

int64_t sub_1B0C2B184@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = qword_1B0ED9C28[v3];
  v5 = qword_1B0ED9C40[v3];
  v6 = *(a1 + 4);
  sub_1B0E46508();
  result = static MonotonicTime.now()();
  v8 = __OFSUB__(v6, result);
  v9 = v6 - result;
  if (v6 < result)
  {
    if (__OFSUB__(result, v6))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v8 = __OFSUB__(0, result - v6);
    v9 = v6 - result;
    if (!v8)
    {
LABEL_7:
      v10 = v9 / 1000000000.0;
      if (COERCE__INT64(fabs(v10)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v10 > -9.22337204e18)
      {
        if (v10 < 9.22337204e18)
        {
          if (!__OFSUB__(0, v10))
          {
            *a2 = 0;
            a2[1] = 0xE000000000000000;
            a2[2] = v4;
            a2[3] = v5;
            a2[4] = -v10;
            return result;
          }

          goto LABEL_15;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1B0C2B2C8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E58C0, &qword_1B0ED9B18);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0C2D57C();
  sub_1B0E46D48();
  v8[15] = 0;
  sub_1B0E46928();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1B0E468C8();
  v8[13] = 2;
  sub_1B0E468C8();
  v8[12] = 3;
  sub_1B0E468C8();
  v8[11] = 4;
  sub_1B0E468C8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B0C2B4A8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5880, &qword_1B0ED9760);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0C2BE54();
  sub_1B0E46D48();
  LOBYTE(v19) = 0;
  sub_1B0E468C8();
  if (!v2)
  {
    LOBYTE(v19) = 1;
    sub_1B0E468C8();
    v10 = v3[4];
    v11 = v3[2];
    v25 = v3[3];
    v26 = v10;
    v12 = v3[4];
    v13 = v3[6];
    v27 = v3[5];
    v28 = v13;
    v14 = v3[2];
    v21 = v12;
    v22 = v27;
    v23 = v3[6];
    v24 = v14;
    v19 = v11;
    v20 = v25;
    v18 = 2;
    sub_1B0C2BEA8(&v24, v17);
    sub_1B0C2BF18();
    sub_1B0E468F8();
    v17[2] = v21;
    v17[3] = v22;
    v17[4] = v23;
    v17[0] = v19;
    v17[1] = v20;
    sub_1B0398EFC(v17, &qword_1EB6E5888, &qword_1B0ED9768);
    v16 = 3;
    sub_1B0E468D8();
    v16 = 4;
    sub_1B0E468D8();
    v16 = 5;
    sub_1B0E468D8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B0C2B780()
{
  v1 = *v0;
  v2 = 0x696C696261706163;
  v3 = 0x614D64656C696166;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x64657463656C6573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449726576726573;
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

uint64_t sub_1B0C2B840@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0C2D190(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0C2B868(uint64_t a1)
{
  sub_1B0C2D57C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0C2B8A4(uint64_t a1)
{
  sub_1B0C2D57C();

  return sub_1B0E46F38();
}

unint64_t sub_1B0C2B8F8()
{
  v1 = *v0;
  v2 = 0x697463656E6E6F63;
  v3 = 0xD000000000000014;
  v4 = 0x64656C696166;
  if (v1 != 4)
  {
    v4 = 0x656C6C65636E6163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E65687475616E75;
  if (v1 != 1)
  {
    v5 = 0x69746E6568747561;
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

uint64_t sub_1B0C2B9D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0C2D35C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0C2B9FC(uint64_t a1)
{
  sub_1B0C2BE54();

  return sub_1B0E46F28();
}

uint64_t sub_1B0C2BA38(uint64_t a1)
{
  sub_1B0C2BE54();

  return sub_1B0E46F38();
}

uint64_t sub_1B0C2BA8C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5898, &qword_1B0ED9778);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0C2CAF4();
  sub_1B0E46D48();
  v8[15] = 0;
  sub_1B0E46948();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1B0E468C8();
  v8[13] = 2;
  sub_1B0E468C8();
  v8[12] = 3;
  sub_1B0E468C8();
  v8[11] = 4;
  sub_1B0E46918();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B0C2BC70()
{
  v1 = *v0;
  v2 = 6645601;
  v3 = 1752457584;
  v4 = 0x746E696F70646E65;
  if (v1 != 3)
  {
    v4 = 30574;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574617473;
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

uint64_t sub_1B0C2BCEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0C2D5D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0C2BD14(uint64_t a1)
{
  sub_1B0C2CAF4();

  return sub_1B0E46F28();
}

uint64_t sub_1B0C2BD50(uint64_t a1)
{
  sub_1B0C2CAF4();

  return sub_1B0E46F38();
}

unint64_t sub_1B0C2BDA8()
{
  result = qword_1EB6DD060;
  if (!qword_1EB6DD060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD060);
  }

  return result;
}

unint64_t sub_1B0C2BE00()
{
  result = qword_1EB6DD068;
  if (!qword_1EB6DD068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD068);
  }

  return result;
}

unint64_t sub_1B0C2BE54()
{
  result = qword_1EB6DCF38;
  if (!qword_1EB6DCF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCF38);
  }

  return result;
}

uint64_t sub_1B0C2BEA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5888, &qword_1B0ED9768);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B0C2BF18()
{
  result = qword_1EB6DCF08;
  if (!qword_1EB6DCF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCF08);
  }

  return result;
}

uint64_t sub_1B0C2BF6C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B0E469A8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B0E45278();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B0C2C134(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1B0C2C064(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B0C2C064(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1B0E46A78(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0C2C134(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1B0B9443C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1B0C2C710((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1B0E46A78();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1B0E46A78();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF300(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1B0AFF300((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1B0C2C710((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B0B9443C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1B0B943B0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1B0E46A78(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1B0C2C710(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1B0E46A78() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1B0E46A78() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1B0C2C938(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x43676E696E6E7572 && a2 == 0xEF73646E616D6D6FLL || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69796C7265646E75 && a2 == 0xEA0000000000676ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

unint64_t sub_1B0C2CAA0()
{
  result = qword_1EB6DCE50;
  if (!qword_1EB6DCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE50);
  }

  return result;
}

unint64_t sub_1B0C2CAF4()
{
  result = qword_1EB6DD020;
  if (!qword_1EB6DD020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD020);
  }

  return result;
}

uint64_t sub_1B0C2CB48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5520, &qword_1B0ED0CE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C2CC20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C2CCB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1B0C2CCFC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1B0C2CD64()
{
  result = qword_1EB6E58A8;
  if (!qword_1EB6E58A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E58A8);
  }

  return result;
}

unint64_t sub_1B0C2CDBC()
{
  result = qword_1EB6E58B0;
  if (!qword_1EB6E58B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E58B0);
  }

  return result;
}

unint64_t sub_1B0C2CE14()
{
  result = qword_1EB6E58B8;
  if (!qword_1EB6E58B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E58B8);
  }

  return result;
}

unint64_t sub_1B0C2CE6C()
{
  result = qword_1EB6DD010;
  if (!qword_1EB6DD010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD010);
  }

  return result;
}

unint64_t sub_1B0C2CEC4()
{
  result = qword_1EB6DD018;
  if (!qword_1EB6DD018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD018);
  }

  return result;
}

unint64_t sub_1B0C2CF1C()
{
  result = qword_1EB6DCE40;
  if (!qword_1EB6DCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE40);
  }

  return result;
}

unint64_t sub_1B0C2CF74()
{
  result = qword_1EB6DCE48;
  if (!qword_1EB6DCE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE48);
  }

  return result;
}

unint64_t sub_1B0C2CFCC()
{
  result = qword_1EB6DCF28;
  if (!qword_1EB6DCF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCF28);
  }

  return result;
}

unint64_t sub_1B0C2D024()
{
  result = qword_1EB6DCF30;
  if (!qword_1EB6DCF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCF30);
  }

  return result;
}

uint64_t sub_1B0C2D078(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6775156 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6645601 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

uint64_t sub_1B0C2D190(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696C696261706163 && a2 == 0xEC00000073656974;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449726576726573 && a2 == 0xE800000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614D64656C696166 && a2 == 0xED0000786F626C69 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B0F2D440 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEF786F626C69614DLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B0C2D35C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463656E6E6F63 && a2 == 0xEA0000000000676ELL;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65687475616E75 && a2 == 0xEF64657461636974 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6568747561 && a2 == 0xED00006465746163 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B0F2C750 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B0E46A78();

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

unint64_t sub_1B0C2D57C()
{
  result = qword_1EB6DCF20;
  if (!qword_1EB6DCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCF20);
  }

  return result;
}

uint64_t sub_1B0C2D5D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6645601 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 30574 && a2 == 0xE200000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1B0C2D788()
{
  result = qword_1EB6E58C8;
  if (!qword_1EB6E58C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E58C8);
  }

  return result;
}

unint64_t sub_1B0C2D7E0()
{
  result = qword_1EB6DCF10;
  if (!qword_1EB6DCF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCF10);
  }

  return result;
}

unint64_t sub_1B0C2D838()
{
  result = qword_1EB6DCF18;
  if (!qword_1EB6DCF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCF18);
  }

  return result;
}

uint64_t sub_1B0C2D8A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 64);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      return 0x454C42414E45;
    }

    else if (v3 == 4)
    {
      return 0xD000000000000011;
    }

    else
    {
      v6 = v0[6];
      v5 = v0[7];
      v7 = v0[4];
      v8 = v0[5];
      v10 = v0[2];
      v9 = v0[3];
      if (v2 | v1 | v5 | v6 | v8 | v7 | v9 | v10)
      {
        if (v5 | v2 | v6 | v8 | v7 | v9 | v10)
        {
          v11 = 0;
        }

        else
        {
          v11 = v1 == 1;
        }

        if (v11)
        {
          return 0x534C545452415453;
        }

        else
        {
          return 0x53534552504D4F43;
        }
      }

      else
      {
        return 0x494C494241504143;
      }
    }
  }

  else if (*(v0 + 64))
  {
    if (v3 == 1)
    {
      MEMORY[0x1B2726E80](v1, v2);
      return 0x2048545541;
    }

    else
    {
      return 17481;
    }
  }

  else
  {
    return 0x4E49474F4CLL;
  }
}

uint64_t sub_1B0C2D9FC(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10 = a2[4].i8[0];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1B0C2DC74(v7, v9) & 1;
}

unint64_t sub_1B0C2DA5C()
{
  result = qword_1EB6DCD70;
  if (!qword_1EB6DCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCD70);
  }

  return result;
}

uint64_t sub_1B0C2DAB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1) == *(v4 - 1) && *v3 == v5;
        if (!v6 && (sub_1B0E46A78() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

BOOL sub_1B0C2DB54(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) - a2 != HIDWORD(a5) - a5)
  {
    return 0;
  }

  v7 = HIDWORD(a3);
  v8 = HIDWORD(a6);
  if (a3 == a6 && WORD2(a3) == WORD2(a6) && BYTE6(a3) == BYTE6(a6) && a1 == a4)
  {
    return 1;
  }

  v10 = a2;
  v12 = BYTE6(a3);
  v14 = a5;
  v15 = BYTE6(a6);
  swift_beginAccess();
  v16 = *(a1 + 24);
  swift_beginAccess();
  return memcmp((v16 + (v12 | (v7 << 8)) + v10), (*(a4 + 24) + (v15 | (v8 << 8)) + v14), v6 - v10) == 0;
}

uint64_t sub_1B0C2DC74(uint64_t a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  if (v8 > 2)
  {
    if (v8 != 3)
    {
      v17 = *(a1 + 40);
      v16 = *(a1 + 48);
      v18 = *(a1 + 56);
      if (v8 == 4)
      {
        v32[0] = v3;
        v32[1] = v4;
        v32[2] = v5;
        v32[3] = v6;
        v32[4] = v7;
        v32[5] = v17;
        v32[6] = v16;
        v32[7] = v18;
        if (a2[4].i8[0] == 4)
        {
          v19 = a2[1];
          v31[0] = *a2;
          v31[1] = v19;
          v20 = a2[3];
          v31[2] = a2[2];
          v31[3] = v20;
          v21 = static PushRegistrationInfo.__derived_struct_equals(_:_:)(v32, v31);
          return v21 & 1;
        }

        goto LABEL_47;
      }

      v27 = v5 | v4;
      v28 = v7 | v17 | v16;
      if (!(v27 | v3 | v6 | v28 | v18))
      {
        if (a2[4].i8[0] == 5)
        {
          v29 = vorrq_s8(vorrq_s8(*a2, a2[2]), vorrq_s8(a2[1], a2[3]));
          if (!*&vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL)))
          {
            goto LABEL_45;
          }
        }

        goto LABEL_47;
      }

      if (v3 != 1 || v27 | v6 | v28 | v18)
      {
        if (a2[4].i8[0] != 5 || a2->i64[0] != 2)
        {
          goto LABEL_47;
        }
      }

      else if (a2[4].i8[0] != 5 || a2->i64[0] != 1)
      {
        goto LABEL_47;
      }

      v30 = vorrq_s8(a2[2], a2[3]);
      if (*&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | a2[1].i64[1] | a2[1].i64[0] | a2->i64[1])
      {
LABEL_47:
        v21 = 0;
        return v21 & 1;
      }

LABEL_45:
      v21 = 1;
      return v21 & 1;
    }

    if (a2[4].i8[0] != 3)
    {
      goto LABEL_47;
    }

    v25 = a2->i64[0];

    return sub_1B044DA4C(v3, v25);
  }

  else
  {
    if (*(a1 + 64))
    {
      if (v8 != 1)
      {
        if (a2[4].i8[0] == 2)
        {
          v26 = a2[1].i64[0];
          if (sub_1B045202C(v4, a2->i64[1]) & 1) != 0 && (sub_1B0C2DAB0(v5, v26))
          {
            goto LABEL_45;
          }
        }

        goto LABEL_47;
      }

      if (a2[4].i8[0] != 1)
      {
        goto LABEL_47;
      }

      v9 = a2[1].i64[0];
      v10 = a2[1].i64[1];
      v11 = a2[2].u8[6];
      v12 = a2[2].u16[2];
      v13 = a2[2].u32[0];
      if ((v3 != a2->i64[0] || v4 != a2->i64[1]) && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_47;
      }

      if (v5)
      {
        if (v9)
        {

          v15 = sub_1B0C2DB54(v14, v6, v7 & 0xFFFFFFFFFFFFFFLL, v9, v10, (v13 | ((v12 | (v11 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL);

          if (v15)
          {
            goto LABEL_45;
          }
        }

        goto LABEL_47;
      }

      if (v9)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    if (a2[4].i8[0])
    {
      goto LABEL_47;
    }

    v22 = a2[1].i64[0];
    v23 = a2[1].i64[1];
    if ((v3 != a2->i64[0] || v4 != a2->i64[1]) && (sub_1B0E46A78() & 1) == 0)
    {
      goto LABEL_47;
    }

    if (v5 == v22 && v6 == v23)
    {
      goto LABEL_45;
    }

    return sub_1B0E46A78();
  }
}

uint64_t sub_1B0C2DF8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 65))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 64);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0C2DFD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0C2E02C(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 64) = a2;
  return result;
}

unint64_t sub_1B0C2E07C()
{
  result = qword_1EB6E58D0;
  if (!qword_1EB6E58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E58D0);
  }

  return result;
}

void *Timer.__allocating_init(queue:)(uint64_t a1)
{
  result = swift_allocObject();
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = a1;
  return result;
}

void *Timer.init(queue:)(uint64_t a1)
{
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = a1;
  return v1;
}

uint64_t Timer.deinit()
{
  if (*(v0 + 16))
  {

    sub_1B0E44448();
  }

  if (*(v0 + 24))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B0E45A98();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return v0;
}

uint64_t Timer.__deallocating_deinit()
{
  if (*(v0 + 16))
  {

    sub_1B0E44448();
  }

  if (*(v0 + 24))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B0E45A98();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t Timer.cancelPreviousAndAsync(after:closure:)(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a3;
  v4 = sub_1B0E44208();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1B0E443F8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  sub_1B0E443D8();
  sub_1B0E443E8();
  v15 = *(v9 + 8);
  v15(v11, v8);
  *v7 = 100;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7F38], v4);
  Timer.cancelPreviousAndAsync(at:leeway:closure:)(v14, v7, a2, v17);
  (*(v5 + 8))(v7, v4);
  return (v15)(v14, v8);
}

uint64_t Timer.cancelPreviousAndAsync(at:leeway:closure:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v33 = a3;
  v34 = a4;
  v40 = a1;
  v41 = a2;
  v6 = sub_1B0E44208();
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B0E45A38();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B0E44238();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1B0E44288();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1B0E44468();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v5[5];
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12, v14);
  v18 = v17;
  v19 = sub_1B0E44488();
  result = (*(v13 + 8))(v16, v12);
  if (v19)
  {
    Timer.cancel()();
    v21 = v5[4];
    sub_1B0E44278();
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = v21;
    v24 = v34;
    v23[4] = v33;
    v23[5] = v24;
    aBlock[4] = sub_1B041ED44;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B038C908;
    aBlock[3] = &block_descriptor_28;
    _Block_copy(aBlock);
    v42 = MEMORY[0x1E69E7CC0];
    sub_1B039E46C(&qword_1EB6DEE50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);

    v33 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
    v34 = v6;
    sub_1B03CFB8C(&qword_1EB6DEE20, &qword_1EB6E1880, &unk_1B0E99EA0);
    sub_1B0E460A8();
    sub_1B0E44458();
    swift_allocObject();
    v25 = sub_1B0E44428();

    sub_1B0421E38();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B039E46C(&qword_1EB6DAA70, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AA0, &qword_1B0EDC030);
    sub_1B03CFB8C(&qword_1EB6DAFA0, &qword_1EB6E5AA0, &qword_1B0EDC030);
    v26 = v35;
    v27 = v37;
    sub_1B0E460A8();
    v28 = sub_1B0E45A48();
    (*(v36 + 8))(v26, v27);
    ObjectType = swift_getObjectType();
    sub_1B0E45A68();
    v31 = v38;
    v30 = v39;
    v32 = v34;
    (*(v39 + 104))(v38, *MEMORY[0x1E69E7F40], v34);
    MEMORY[0x1B2727D90](v40, v31, v41, ObjectType);
    (*(v30 + 8))(v31, v32);
    sub_1B0E45AA8();
    v5[2] = v25;

    v5[3] = v28;
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Timer.cancel()()
{
  v1 = v0;
  v2 = sub_1B0E44468();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[5];
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1B0E44488();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (v1[2])
    {

      sub_1B0E44448();

      v9 = 1;
    }

    else
    {
      v9 = v1[3] != 0;
    }

    v1[2] = 0;

    if (v1[3])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1B0E45A98();
      swift_unknownObjectRelease();
    }

    v1[3] = 0;
    swift_unknownObjectRelease();
    if (v9)
    {
      ++v1[4];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B0C2EBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1B0E44238();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B0E44288();
  v14 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB6DCDB0 != -1)
  {
    swift_once();
  }

  v20[1] = qword_1EB6DCDB8;
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  aBlock[4] = sub_1B0C31550;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B038C908;
  aBlock[3] = &block_descriptor_12_0;
  v18 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_1B0E44258();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1B041E574(&qword_1EB6DEE50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B03CFB8C(&qword_1EB6DEE20, &qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B0E460A8();
  MEMORY[0x1B2727B00](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);
}

uint64_t sub_1B0C2EEF8(int a1, sec_protocol_metadata_t metadata, NSObject *a3, uint64_t a4, uint64_t a5)
{
  negotiated_tls_protocol_version = sec_protocol_metadata_get_negotiated_tls_protocol_version(metadata);
  negotiated_tls_ciphersuite = sec_protocol_metadata_get_negotiated_tls_ciphersuite(metadata);
  if (sec_protocol_metadata_get_server_name(metadata))
  {
    v11 = sub_1B0E44D88();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = sec_trust_copy_ref(a3);
  sub_1B041E7E8(negotiated_tls_protocol_version | (negotiated_tls_ciphersuite << 16), v11, v13, v14, a4, a5);
}

uint64_t sub_1B0C2EFC0(void *a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v9 = sub_1B0E44468();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB6DCDB0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EB6DCDB8;
  *v12 = qword_1EB6DCDB8;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v14 = v13;
  LOBYTE(v13) = sub_1B0E44488();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = sub_1B0BD8208(*(v4 + qword_1EB737B90), *(v4 + qword_1EB737B90 + 8), v4 + qword_1EB737B88);
        if (v16)
        {
          sub_1B0C2F268(a1, v16, v23, a3, a4);
          return swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      if (*(v4 + qword_1EB737B80) == 2)
      {
        v17 = sub_1B0BD8208(*(v4 + qword_1EB737B90), *(v4 + qword_1EB737B90 + 8), v4 + qword_1EB737B88);
        if (v17)
        {
          v18 = *(v17 + 16);
          v19 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          v20 = v18;
          v21 = [v19 initWithBool_];
          v22 = sub_1B0E44AC8();
          [v20 setAccountProperty:v21 forKey:v22];
          swift_unknownObjectRelease();
        }
      }

      v16 = 1;
    }

    return a3(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B0C2F268(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v104 = a5;
  v103 = a4;
  v100 = a3;
  v101 = a1;
  v102 = _s6LoggerVMa_0(0);
  v98 = *(v102 - 8);
  v6 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v99 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v95 = &v95 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v96 = (&v95 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v95 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v95 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v95 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v95 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v106 = &v95 - v23;
  v24 = sub_1B0E44468();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB6DCDB0 != -1)
  {
    swift_once();
  }

  v28 = qword_1EB6DCDB8;
  *v27 = qword_1EB6DCDB8;
  (*(v25 + 104))(v27, *MEMORY[0x1E69E8020], v24);
  v29 = v28;
  LOBYTE(v28) = sub_1B0E44488();
  (*(v25 + 8))(v27, v24);
  if (v28)
  {
    v30 = v106;
    sub_1B041EC54(v105 + qword_1EB737B88, v106, _s6LoggerVMa_0);
    v31 = a2;
    v32 = *(a2 + 16);
    v33 = sub_1B0BD7FDC();

    if (v33)
    {
      sub_1B041EC54(v30, v21, _s6LoggerVMa_0);
      sub_1B041EC54(v30, v18, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v34 = sub_1B0E43988();
      v35 = sub_1B0E458E8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v107[0] = v105;
        *v36 = 68158210;
        *(v36 + 4) = 2;
        *(v36 + 8) = 256;
        v37 = v102;
        v38 = v18[*(v102 + 20)];
        sub_1B038D6F0(v18, _s6LoggerVMa_0);
        *(v36 + 10) = v38;
        *(v36 + 11) = 2082;
        v39 = *&v21[*(v37 + 20) + 4];
        sub_1B038D6F0(v21, _s6LoggerVMa_0);
        v40 = ConnectionID.debugDescription.getter(v39);
        v42 = sub_1B0399D64(v40, v41, v107);

        *(v36 + 13) = v42;
        _os_log_impl(&dword_1B0389000, v34, v35, "[%.*hhx-%{public}s] Another certificate has already been trusted. Failing on certificate change.", v36, 0x15u);
        v43 = v105;
        __swift_destroy_boxed_opaque_existential_0(v105);
        MEMORY[0x1B272C230](v43, -1, -1);
        v44 = v36;
LABEL_13:
        MEMORY[0x1B272C230](v44, -1, -1);

LABEL_19:
        v103(0);
        sub_1B038D6F0(v30, _s6LoggerVMa_0);
        return;
      }

      sub_1B038D6F0(v18, _s6LoggerVMa_0);

      v60 = v21;
      goto LABEL_18;
    }

    v45 = *(a2 + 16);
    v46 = sub_1B0BD80D4();

    if ((v46 & 1) == 0)
    {
      v61 = v96;
      sub_1B041EC54(v30, v96, _s6LoggerVMa_0);
      v62 = v95;
      sub_1B041EC54(v30, v95, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v34 = sub_1B0E43988();
      v63 = sub_1B0E458E8();
      if (os_log_type_enabled(v34, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v107[0] = v65;
        *v64 = 68158210;
        *(v64 + 4) = 2;
        *(v64 + 8) = 256;
        v66 = v102;
        v67 = *(v62 + *(v102 + 20));
        sub_1B038D6F0(v62, _s6LoggerVMa_0);
        *(v64 + 10) = v67;
        *(v64 + 11) = 2082;
        v68 = *(v61 + *(v66 + 20) + 4);
        sub_1B038D6F0(v61, _s6LoggerVMa_0);
        v69 = ConnectionID.debugDescription.getter(v68);
        v71 = sub_1B0399D64(v69, v70, v107);

        *(v64 + 13) = v71;
        _os_log_impl(&dword_1B0389000, v34, v63, "[%.*hhx-%{public}s] User (previously) denied untrusted certificate(s).", v64, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x1B272C230](v65, -1, -1);
        v44 = v64;
        goto LABEL_13;
      }

      sub_1B038D6F0(v62, _s6LoggerVMa_0);

      v60 = v61;
LABEL_18:
      sub_1B038D6F0(v60, _s6LoggerVMa_0);
      goto LABEL_19;
    }

    v47 = v97;
    sub_1B041EC54(v30, v97, _s6LoggerVMa_0);
    sub_1B041EC54(v30, v13, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    swift_unknownObjectRetain_n();
    v48 = sub_1B0E43988();
    v49 = sub_1B0E45908();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v47;
      v51 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v107[0] = v96;
      *v51 = 68158466;
      *(v51 + 4) = 2;
      *(v51 + 8) = 256;
      v52 = v102;
      v53 = v13[*(v102 + 20)];
      LODWORD(v95) = v49;
      sub_1B038D6F0(v13, _s6LoggerVMa_0);
      *(v51 + 10) = v53;
      *(v51 + 11) = 2082;
      v54 = *(v50 + *(v52 + 20) + 4);
      sub_1B038D6F0(v50, _s6LoggerVMa_0);
      v55 = ConnectionID.debugDescription.getter(v54);
      v57 = sub_1B0399D64(v55, v56, v107);

      *(v51 + 13) = v57;
      *(v51 + 21) = 1024;
      v58 = *(v31 + 16);
      LOBYTE(v57) = sub_1B0BD80D4();
      swift_unknownObjectRelease();

      *(v51 + 23) = v57 & 1;
      swift_unknownObjectRelease();
      _os_log_impl(&dword_1B0389000, v48, v95, "[%.*hhx-%{public}s] [Prompt] Prompting user about untrusted certificate(s) (allowTrust: %{BOOL}d).", v51, 0x1Bu);
      v59 = v96;
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x1B272C230](v59, -1, -1);
      MEMORY[0x1B272C230](v51, -1, -1);
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1B038D6F0(v13, _s6LoggerVMa_0);

      swift_unknownObjectRelease();
      sub_1B038D6F0(v47, _s6LoggerVMa_0);
    }

    v97 = sub_1B0BEAC64();
    v102 = v72;
    v73 = *(v31 + 16);
    v74 = sub_1B0BD80D4();

    v75 = v99;
    sub_1B041EC54(v106, v99, _s6LoggerVMa_0);
    v76 = (*(v98 + 80) + 16) & ~*(v98 + 80);
    v77 = (v6 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    sub_1B041ECBC(v75, v78 + v76);
    v79 = (v78 + v77);
    v80 = v100;
    *v79 = v31;
    v79[1] = v80;
    v81 = (v78 + ((v77 + 23) & 0xFFFFFFFFFFFFFFF8));
    v82 = v104;
    *v81 = v103;
    v81[1] = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E59C8, &qword_1B0ED9EB8);
    if (v74)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B0EC1E70;
      strcpy(v107, "showContinue");
      BYTE5(v107[1]) = 0;
      HIWORD(v107[1]) = -5120;
      swift_unknownObjectRetain();

      sub_1B0E461E8();
      v84 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(inited + 96) = sub_1B0BD84D8(0, &qword_1EB6DA5B0, 0x1E696AD98);
      *(inited + 72) = v84;
      sub_1B0C30F90(inited);
      v86 = v85;
      swift_setDeallocating();
      sub_1B0398EFC(inited + 32, &qword_1EB6E1960, &qword_1B0E9A0C0);
    }

    else
    {
      v87 = swift_initStackObject();
      *(v87 + 16) = xmmword_1B0EC3500;
      strcpy(v107, "showContinue");
      BYTE5(v107[1]) = 0;
      HIWORD(v107[1]) = -5120;
      swift_unknownObjectRetain();

      sub_1B0E461E8();
      v88 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v89 = sub_1B0BD84D8(0, &qword_1EB6DA5B0, 0x1E696AD98);
      *(v87 + 96) = v89;
      *(v87 + 72) = v88;
      v107[0] = 0xD000000000000015;
      v107[1] = 0x80000001B0F2D590;
      sub_1B0E461E8();
      v90 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v87 + 168) = v89;
      *(v87 + 144) = v90;
      sub_1B0C30F90(v87);
      v86 = v91;
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1960, &qword_1B0E9A0C0);
      swift_arrayDestroy();
    }

    v92 = swift_allocObject();
    *(v92 + 16) = sub_1B0C316E4;
    *(v92 + 24) = v78;
    v93 = v101;
    v94 = v101;

    CertUITrustManager.showPrompt(hostname:service:trust:options:_:)(v97, v102, 0xD000000000000016, 0x80000001B0F2D570, v93, v86, sub_1B0C31794, v92);

    sub_1B038D6F0(v106, _s6LoggerVMa_0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B0C2FED8(unsigned __int8 a1, uint64_t a2, __SecTrust *a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v60 = a2;
  v61 = a7;
  v69 = a5;
  v70 = a6;
  v68 = a3;
  v8 = a1;
  v9 = sub_1B0E44238();
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1B0E44288();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = _s6LoggerVMa_0(0);
  v13 = *(v58 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v57 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  v20 = sub_1B0E43BC8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8 >= 2)
  {
    v62 = v12;
    if (qword_1EB6DCDB0 != -1)
    {
      swift_once();
    }

    v59 = qword_1EB6DCDB8;
    (*(v21 + 16))(&v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v60, v20);
    sub_1B041EC54(a4, v19, _s6LoggerVMa_0);
    v46 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v47 = (v22 + *(v13 + 80) + v46) & ~*(v13 + 80);
    v48 = swift_allocObject();
    v49 = v68;
    *(v48 + 16) = v61;
    *(v48 + 24) = v49;
    (*(v21 + 32))(v48 + v46, v23, v20);
    sub_1B041ECBC(v19, v48 + v47);
    v50 = (v48 + ((v14 + v47 + 7) & 0xFFFFFFFFFFFFFFF8));
    v51 = v70;
    *v50 = v69;
    v50[1] = v51;
    v76 = sub_1B0C31560;
    v77 = v48;
    aBlock = MEMORY[0x1E69E9820];
    v73 = 1107296256;
    v74 = sub_1B038C908;
    v75 = &block_descriptor_24_0;
    v52 = _Block_copy(&aBlock);

    v53 = v49;

    v54 = v62;
    sub_1B0E44258();
    v71 = MEMORY[0x1E69E7CC0];
    sub_1B041E574(&qword_1EB6DEE50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
    sub_1B03CFB8C(&qword_1EB6DEE20, &qword_1EB6E1880, &unk_1B0E99EA0);
    v55 = v64;
    v56 = v67;
    sub_1B0E460A8();
    MEMORY[0x1B2727B00](0, v54, v55, v52);
    _Block_release(v52);
    (*(v66 + 8))(v55, v56);
    (*(v63 + 8))(v54, v65);
  }

  else
  {
    if (qword_1EB6DCDB0 != -1)
    {
      swift_once();
    }

    v24 = qword_1EB6DCDB8;
    sub_1B041EC54(a4, v19, _s6LoggerVMa_0);
    v25 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v26 = swift_allocObject();
    v27 = v69;
    v28 = a4;
    v29 = v70;
    *(v26 + 16) = v69;
    *(v26 + 24) = v29;
    sub_1B041ECBC(v19, v26 + v25);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1B0C31660;
    *(v30 + 24) = v26;
    v76 = sub_1B042FD28;
    v77 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v73 = 1107296256;
    v74 = sub_1B042FC94;
    v75 = &block_descriptor_33;
    v31 = _Block_copy(&aBlock);

    LODWORD(v24) = SecTrustEvaluateAsyncWithError(v68, v24, v31);
    _Block_release(v31);

    v33 = v62;
    if (v24)
    {
      sub_1B041EC54(v28, v62, _s6LoggerVMa_0);
      v34 = v59;
      sub_1B041EC54(v28, v59, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v35 = sub_1B0E43988();
      v36 = sub_1B0E458E8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        aBlock = v38;
        *v37 = 68158210;
        *(v37 + 4) = 2;
        *(v37 + 8) = 256;
        v39 = v58;
        v40 = v34;
        v41 = *(v34 + *(v58 + 20));
        sub_1B038D6F0(v40, _s6LoggerVMa_0);
        *(v37 + 10) = v41;
        *(v37 + 11) = 2082;
        v42 = *(v33 + *(v39 + 20) + 4);
        sub_1B038D6F0(v33, _s6LoggerVMa_0);
        v43 = ConnectionID.debugDescription.getter(v42);
        v45 = sub_1B0399D64(v43, v44, &aBlock);

        *(v37 + 13) = v45;
        _os_log_impl(&dword_1B0389000, v35, v36, "[%.*hhx-%{public}s] SecTrustEvaluateAsyncWithError() failed.", v37, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x1B272C230](v38, -1, -1);
        MEMORY[0x1B272C230](v37, -1, -1);
      }

      else
      {
        sub_1B038D6F0(v34, _s6LoggerVMa_0);

        sub_1B038D6F0(v33, _s6LoggerVMa_0);
      }

      return v27(5);
    }
  }

  return result;
}

uint64_t sub_1B0C30704(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unint64_t), uint64_t a6)
{
  v45[1] = a6;
  v46 = a5;
  v45[0] = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v45[0]);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v45 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v45 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v45 - v17;
  v19 = a2;
  v20 = sub_1B0BEAC64();
  v22 = CertUITrustManager.rawTrustResult(forSSLTrust:hostname:service:)(a2, v20, v21, 0xD000000000000016, 0x80000001B0F2D570);

  if (v22 != 1)
  {
    sub_1B041EC54(a4, v12, _s6LoggerVMa_0);
    sub_1B041EC54(a4, v9, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v34 = sub_1B0E43988();
    v35 = sub_1B0E45908();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47 = v37;
      *v36 = 68158466;
      *(v36 + 4) = 2;
      *(v36 + 8) = 256;
      v38 = v45[0];
      v39 = v9[*(v45[0] + 20)];
      sub_1B038D6F0(v9, _s6LoggerVMa_0);
      *(v36 + 10) = v39;
      *(v36 + 11) = 2082;
      v40 = *&v12[*(v38 + 20) + 4];
      sub_1B038D6F0(v12, _s6LoggerVMa_0);
      v41 = ConnectionID.debugDescription.getter(v40);
      v43 = sub_1B0399D64(v41, v42, &v47);

      *(v36 + 13) = v43;
      *(v36 + 21) = 1024;
      *(v36 + 23) = v22;
      _os_log_impl(&dword_1B0389000, v34, v35, "[%.*hhx-%{public}s] Got %u from CertUI.", v36, 0x1Bu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x1B272C230](v37, -1, -1);
      MEMORY[0x1B272C230](v36, -1, -1);

      if (v22 >= 8)
      {
LABEL_7:
        v33 = 5;
        return v46(v33);
      }
    }

    else
    {
      sub_1B038D6F0(v9, _s6LoggerVMa_0);

      sub_1B038D6F0(v12, _s6LoggerVMa_0);
      if (v22 >= 8)
      {
        goto LABEL_7;
      }
    }

    v33 = 0x504030201050505uLL >> (8 * v22);
    return v46(v33);
  }

  sub_1B041EC54(a4, v18, _s6LoggerVMa_0);
  sub_1B041EC54(a4, v15, _s6LoggerVMa_0);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v23 = sub_1B0E43988();
  v24 = sub_1B0E458C8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v47 = v26;
    *v25 = 68158466;
    *(v25 + 4) = 2;
    *(v25 + 8) = 256;
    v27 = v45[0];
    v28 = v15[*(v45[0] + 20)];
    sub_1B038D6F0(v15, _s6LoggerVMa_0);
    *(v25 + 10) = v28;
    *(v25 + 11) = 2082;
    v29 = *&v18[*(v27 + 20) + 4];
    sub_1B038D6F0(v18, _s6LoggerVMa_0);
    v30 = ConnectionID.debugDescription.getter(v29);
    v32 = sub_1B0399D64(v30, v31, &v47);

    *(v25 + 13) = v32;
    *(v25 + 21) = 1024;
    *(v25 + 23) = 1;
    _os_log_impl(&dword_1B0389000, v23, v24, "[%.*hhx-%{public}s] Got %u from CertUI.", v25, 0x1Bu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1B272C230](v26, -1, -1);
    MEMORY[0x1B272C230](v25, -1, -1);
  }

  else
  {
    sub_1B038D6F0(v15, _s6LoggerVMa_0);

    sub_1B038D6F0(v18, _s6LoggerVMa_0);
  }

  v33 = 0;
  return v46(v33);
}

uint64_t sub_1B0C30C24()
{
  v7 = sub_1B0E459C8();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B0E45988();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1B0E44288();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1B0BD84D8(0, &qword_1EB6DEED0, 0x1E69E9610);
  sub_1B0E44258();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1B041E574(&qword_1EB6DEEE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1888, &unk_1B0EEDC60);
  sub_1B03CFB8C(&qword_1EB6DEEF0, &qword_1EB6E1888, &unk_1B0EEDC60);
  sub_1B0E460A8();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1B0E45A08();
  qword_1EB6E58E0 = result;
  return result;
}

unint64_t sub_1B0C30E84(uint64_t a1)
{
  v2 = sub_1B0E461B8();

  return sub_1B0C30EC8(a1, v2);
}

unint64_t sub_1B0C30EC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B0C3180C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B27282E0](v9, a1);
      sub_1B070B2CC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1B0C30F90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E59D0, &unk_1B0ED9EC0);
    v3 = sub_1B0E466A8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B0C3179C(v4, v13);
      v5 = sub_1B0C30E84(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v5;
      v7 = v3[6] + 40 * v5;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      sub_1B0392800(&v15, v3[7] + 32 * v5);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_9;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

void sub_1B0C310AC(char a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v14;
  if (a1)
  {
    v17 = 0;
LABEL_7:
    (a3)(v17, v15);
    return;
  }

  if (!a2)
  {
    v17 = 1;
    goto LABEL_7;
  }

  v18 = v13;
  sub_1B041EC54(a5, &v35 - v14, _s6LoggerVMa_0);
  sub_1B041EC54(a5, v11, _s6LoggerVMa_0);
  v19 = a2;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v20 = v19;
  v21 = sub_1B0E43988();
  v22 = sub_1B0E458E8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v36 = v22;
    v24 = v23;
    v35 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v24 = 68158466;
    *(v24 + 4) = 2;
    *(v24 + 8) = 256;
    v25 = v11[*(v18 + 20)];
    sub_1B038D6F0(v11, _s6LoggerVMa_0);
    *(v24 + 10) = v25;
    *(v24 + 11) = 2082;
    v26 = *&v16[*(v18 + 20) + 4];
    sub_1B038D6F0(v16, _s6LoggerVMa_0);
    v27 = ConnectionID.debugDescription.getter(v26);
    v29 = sub_1B0399D64(v27, v28, &v38);

    *(v24 + 13) = v29;
    *(v24 + 21) = 2112;
    type metadata accessor for CFError(0);
    sub_1B041E574(&unk_1EB6E59B8, type metadata accessor for CFError, MEMORY[0x1E6969E70]);
    swift_allocError();
    *v30 = v20;
    v31 = v20;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 23) = v32;
    v33 = v35;
    *v35 = v32;
    _os_log_impl(&dword_1B0389000, v21, v36, "[%.*hhx-%{public}s] SecTrustEvaluateAsyncWithError() completed with error: %@", v24, 0x1Fu);
    sub_1B0398EFC(v33, &unk_1EB6E2630, &qword_1B0E97970);
    MEMORY[0x1B272C230](v33, -1, -1);
    v34 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x1B272C230](v34, -1, -1);
    MEMORY[0x1B272C230](v24, -1, -1);
  }

  else
  {
    sub_1B038D6F0(v11, _s6LoggerVMa_0);

    sub_1B038D6F0(v16, _s6LoggerVMa_0);
  }

  a3(1);
}

uint64_t sub_1B0C3140C()
{
  sub_1B0E43F78();
  swift_allocObject();
  v0 = sub_1B0E43F68();
  v1 = sub_1B0E43F58();
  sec_protocol_options_add_tls_application_protocol(v1, "imap");
  swift_unknownObjectRelease();
  v2 = sub_1B0E43F58();
  sec_protocol_options_set_min_tls_protocol_version(v2, tls_protocol_version_TLSv10);
  swift_unknownObjectRelease();
  v3 = sub_1B0E43F58();
  v6[4] = sub_1B0C30BF8;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B041E604;
  v6[3] = &block_descriptor_29;
  v4 = _Block_copy(v6);
  if (qword_1EB6E5388 != -1)
  {
    swift_once();
  }

  sec_protocol_options_set_verify_block(v3, v4, qword_1EB6E58E0);
  _Block_release(v4);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1B0C31560()
{
  v1 = *(sub_1B0E43BC8() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(_s6LoggerVMa_0(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);

  return sub_1B0C30704(v9, v10, v0 + v2, v0 + v5, v7, v8);
}

void sub_1B0C31660(uint64_t a1, char a2, void *a3)
{
  v6 = *(_s6LoggerVMa_0(0) - 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  sub_1B0C310AC(a2, a3, v7, v8, v9);
}

uint64_t sub_1B0C316E4(char a1)
{
  v3 = *(_s6LoggerVMa_0(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);

  return sub_1B0BD71CC(a1, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_1B0C3179C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1960, &qword_1B0E9A0C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection20UnauthenticatedStateO5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 24) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B0C31890(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 25))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 24) & 0x3C | (*(a1 + 24) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0C318E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1B0C3194C(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 24) = *(result + 24) & 3 | (a2 << 6);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    *(result + 24) = -64;
  }

  return result;
}

uint64_t sub_1B0C3198C(uint64_t a1)
{
  v2 = sub_1B0E460B8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1B0C381DC(v2, *(a1 + 36), 0, a1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v4;
}

uint64_t sub_1B0C31A28(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B0C0C114(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B0C31B14()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v4 = *(v1 + 3) >> 1, v4 < v2))
  {
    v1 = sub_1B0C0C114(isUniquelyReferenced_nonNull_native, v2, 1, v1);
    v4 = *(v1 + 3) >> 1;
  }

  v5 = *(v1 + 2);
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if (v6 < 1)
  {
    __break(1u);
LABEL_21:
    v14 = *(v1 + 2);
    sub_1B0E466E8();
    if ((v25 & 1) == 0)
    {
      v15 = v24;
LABEL_24:
      v16 = *(v1 + 3);
      v17 = v16 >> 1;
      if ((v16 >> 1) < v14 + 1)
      {
        v19 = v1;
        v20 = v15;
        v21 = sub_1B0C0C114((v16 > 1), v14 + 1, 1, v19);
        v15 = v20;
        v1 = v21;
        v17 = *(v21 + 3) >> 1;
      }

      if (v14 <= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v14;
      }

      do
      {
        if (v18 == v14)
        {
          *(v1 + 2) = v18;
          v14 = v18;
          goto LABEL_24;
        }

        v1[v14++ + 32] = v15;
        sub_1B0E466E8();
        v15 = v22;
      }

      while ((v23 & 1) == 0);

      *(v1 + 2) = v14;
      goto LABEL_19;
    }

LABEL_18:

LABEL_19:
    *v0 = v1;
    return result;
  }

  result = sub_1B0E466E8();
  if (v27)
  {
    v8 = 0;
LABEL_12:
    if (!v8)
    {
LABEL_17:
      if (v8 != v6)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v8 = 0;
    v9 = v26;
    v10 = ~v5 + v4;
    while (1)
    {
      v1[v5 + 32 + v8] = v9;
      if (v10 == v8)
      {
        break;
      }

      result = sub_1B0E466E8();
      v9 = v26;
      ++v8;
      if (v27)
      {
        goto LABEL_12;
      }
    }

    v8 = v6;
  }

  v11 = *(v1 + 2);
  v12 = __OFADD__(v11, v8);
  v13 = v11 + v8;
  if (!v12)
  {
    *(v1 + 2) = v13;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

char *sub_1B0C31CE8(char *result, char *a2)
{
  v5 = a2 - result;
  if (result)
  {
    v6 = a2 - result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *v2;
  v8 = *(*v2 + 2);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a2;
  v3 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v10 = *(v7 + 3) >> 1, v10 < v9))
  {
    if (v8 <= v9)
    {
      v11 = v8 + v6;
    }

    else
    {
      v11 = v8;
    }

    result = sub_1B0C0C114(result, v11, 1, v7);
    v7 = result;
    v10 = *(result + 3) >> 1;
  }

  v12 = *(v7 + 2);
  v13 = v10 - v12;
  v14 = 0;
  if (v3 && v4 && v4 > v3 && v10 != v12)
  {
    if (v5 >= v13)
    {
      v14 = v10 - v12;
    }

    else
    {
      v14 = v5;
    }

    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    result = memmove(&v7[v12 + 32], v3, v14);
    v3 += v14;
  }

  if (v14 < v6)
  {
    goto LABEL_34;
  }

  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = *(v7 + 2);
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (!v16)
  {
    *(v7 + 2) = v17;
LABEL_24:
    if (v14 != v13 || v3 == 0 || v3 == v4)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v20 = *(v7 + 2);
  v23 = *v3;
  v21 = v3 + 1;
  v22 = v23;
  while (1)
  {
    v24 = *(v7 + 3);
    v25 = v24 >> 1;
    if ((v24 >> 1) < v20 + 1)
    {
      break;
    }

    if (v20 < v25)
    {
      goto LABEL_40;
    }

LABEL_37:
    *(v7 + 2) = v20;
  }

  result = sub_1B0C0C114((v24 > 1), v20 + 1, 1, v7);
  v7 = result;
  v25 = *(result + 3) >> 1;
  if (v20 >= v25)
  {
    goto LABEL_37;
  }

LABEL_40:
  v26 = v20 + 32;
  while (1)
  {
    v7[v26] = v22;
    if (v21 == v4)
    {
      break;
    }

    v27 = *v21++;
    v22 = v27;
    if (++v26 - v25 == 32)
    {
      v20 = v25;
      goto LABEL_37;
    }
  }

  *(v7 + 2) = v26 - 31;
LABEL_32:
  *v2 = v7;
  return result;
}

uint64_t sub_1B0C31E98(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E55B0, &qword_1B0ED3120);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - v6;
  sub_1B039E3F8(&qword_1EB6E5798, &qword_1EB6E55B0, &qword_1B0ED3120, MEMORY[0x1E69664C0]);
  result = sub_1B0E44F28();
  v9 = *v1;
  v10 = *(*v1 + 2);
  v11 = v10 + result;
  if (__OFADD__(v10, result))
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v14 = *(v9 + 3) >> 1, v14 < v11))
    {
      if (v10 <= v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = v10;
      }

      v9 = sub_1B0C0C114(isUniquelyReferenced_nonNull_native, v15, 1, v9);
      v14 = *(v9 + 3) >> 1;
    }

    v16 = v14 - *(v9 + 2);
    (*(v5 + 16))(v7, a1, v4);
    v17 = sub_1B0E44F18();
    result = (*(v5 + 8))(a1, v4);
    if (v17 >= v12)
    {
      if (v17 >= 1)
      {
        v18 = *(v9 + 2);
        v19 = __OFADD__(v18, v17);
        v20 = v18 + v17;
        if (v19)
        {
          __break(1u);
LABEL_20:
          v22 = v20;
          goto LABEL_21;
        }

        *(v9 + 2) = v20;
      }

      result = v27;
      if (v17 != v16)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  v21 = *(result + 16);
  if (v28 == v21)
  {
LABEL_13:

    *v2 = v9;
    return result;
  }

  if (v28 >= v21)
  {
    goto LABEL_33;
  }

  v22 = *(v9 + 2);
  v17 = result + 32;
  LOBYTE(v4) = *(result + 32 + v28);
  a1 = v28 + 1;
  while (1)
  {
    v23 = *(v9 + 3);
    v20 = v23 >> 1;
    if ((v23 >> 1) < v22 + 1)
    {
      break;
    }

    if (v22 < v20)
    {
      goto LABEL_24;
    }

LABEL_21:
    *(v9 + 2) = v22;
  }

  v26 = result;
  v9 = sub_1B0C0C114((v23 > 1), v22 + 1, 1, v9);
  result = v26;
  v20 = *(v9 + 3) >> 1;
  if (v22 >= v20)
  {
    goto LABEL_21;
  }

LABEL_24:
  v24 = v22 + 32;
  while (1)
  {
    v9[v24] = v4;
    v25 = *(result + 16);
    if (a1 == v25)
    {
      *(v9 + 2) = v24 - 31;
      goto LABEL_13;
    }

    if (a1 >= v25)
    {
      break;
    }

    LOBYTE(v4) = *(v17 + a1++);
    if (++v24 - v20 == 32)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

char *sub_1B0C32170@<X0>(char *result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *v3;
  v6 = *(*v3 + 2);
  v7 = v6 + a2;
  if (__OFADD__(v6, a2))
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v9 = *(v5 + 3) >> 1, v9 < v7))
    {
      if (v6 <= v7)
      {
        v10 = v7;
      }

      else
      {
        v10 = v6;
      }

      result = sub_1B0C0C114(result, v10, 1, v5);
      v5 = result;
      v9 = *(result + 3) >> 1;
    }

    v11 = *(v5 + 2);
    v12 = v9 - v11;
    if (!a2 || v9 == v11)
    {
      a3 = &v4[a2];
      if (!v4)
      {
        a3 = 0;
      }

      if (a2 <= 0)
      {
        v13 = 0;
LABEL_22:
        if (v13 != v12 || v4 == 0 || v4 == a3)
        {
          goto LABEL_30;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (a2 >= v12)
      {
        v13 = v9 - v11;
      }

      else
      {
        v13 = a2;
      }

      result = memcpy(&v5[v11 + 32], v4, v13);
      if (v12 >= a2)
      {
        a3 = &v4[a2];
        if (v13 >= 1)
        {
          v14 = *(v5 + 2);
          v15 = __OFADD__(v14, v13);
          v16 = v14 + v13;
          if (v15)
          {
            __break(1u);
            return result;
          }

          *(v5 + 2) = v16;
        }

        v4 += v13;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_33:
  v19 = *(v5 + 2);
  v22 = *v4;
  v20 = v4 + 1;
  v21 = v22;
  while (1)
  {
    v23 = *(v5 + 3);
    v24 = v23 >> 1;
    if ((v23 >> 1) < v19 + 1)
    {
      break;
    }

    if (v19 < v24)
    {
      goto LABEL_37;
    }

LABEL_34:
    *(v5 + 2) = v19;
  }

  v27 = v5;
  v28 = a3;
  result = sub_1B0C0C114((v23 > 1), v19 + 1, 1, v27);
  a3 = v28;
  v5 = result;
  v24 = *(result + 3) >> 1;
  if (v19 >= v24)
  {
    goto LABEL_34;
  }

LABEL_37:
  v25 = v19 + 32;
  while (1)
  {
    v5[v25] = v21;
    if (v20 == a3)
    {
      break;
    }

    v26 = *v20++;
    v21 = v26;
    if (++v25 - v24 == 32)
    {
      v19 = v24;
      goto LABEL_34;
    }
  }

  *(v5 + 2) = v25 - 31;
LABEL_30:
  *v3 = v5;
  return result;
}

uint64_t sub_1B0C32320(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1B0C0C69C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B0C32414(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = *v7;
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);
      v14[0] = *(v7 - 3);
      v14[1] = v10;
      v14[2] = v9;
      v15 = v8;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v11 = (a1)(v14);

      if (v3)
      {
        break;
      }

      v12 = v6-- == 0;
      v7 += 32;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_1B0C324D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v14[8] = *(a1 + 128);
  v14[9] = v2;
  v14[10] = *(a1 + 160);
  v15 = *(a1 + 176);
  v3 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v3;
  v4 = *(a1 + 112);
  v14[6] = *(a1 + 96);
  v14[7] = v4;
  v5 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v5;
  v6 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v6;
  v7 = *(a2 + 144);
  v16[8] = *(a2 + 128);
  v16[9] = v7;
  v16[10] = *(a2 + 160);
  v17 = *(a2 + 176);
  v8 = *(a2 + 80);
  v16[4] = *(a2 + 64);
  v16[5] = v8;
  v9 = *(a2 + 112);
  v16[6] = *(a2 + 96);
  v16[7] = v9;
  v10 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v10;
  v11 = *(a2 + 48);
  v16[2] = *(a2 + 32);
  v16[3] = v11;
  sub_1B0C37730(v14, v16);
  return v12 & 1;
}

uint64_t sub_1B0C3259C(__int128 *a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v79 = a3;
  v83 = a1;
  v8 = type metadata accessor for UnauthenticatedState(0);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Authenticator(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v82 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v76 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v76 - v22;
  v81 = a5;
  if (a4)
  {
    v77 = v8;
    sub_1B0433BE8(a5, &v76 - v22, _s6LoggerVMa_0);
    sub_1B0433BE8(a5, v20, _s6LoggerVMa_0);
    sub_1B04420D8(a2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v24 = v83;
    sub_1B0BD6700(v83, v89);
    sub_1B04420D8(a2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v25 = sub_1B0E43988();
    v26 = sub_1B0E458E8();
    sub_1B0BD2F90(v24);
    sub_1B0447F00(a2);

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v78 = a2;
      v28 = v27;
      v29 = swift_slowAlloc();
      *&v89[0] = v29;
      *v28 = 68158722;
      *(v28 + 4) = 2;
      *(v28 + 8) = 256;
      v30 = v20[*(v12 + 20)];
      sub_1B04479C4(v20, _s6LoggerVMa_0);
      *(v28 + 10) = v30;
      *(v28 + 11) = 2082;
      v31 = *&v23[*(v12 + 20) + 4];
      sub_1B04479C4(v23, _s6LoggerVMa_0);
      v32 = ConnectionID.debugDescription.getter(v31);
      v34 = sub_1B0399D64(v32, v33, v89);

      *(v28 + 13) = v34;
      *(v28 + 21) = 2082;
      v35 = v83;
      v37 = sub_1B0C0E5E8(v36);
      v39 = sub_1B0399D64(v37, v38, v89);

      *(v28 + 23) = v39;
      *(v28 + 31) = 2082;
      v40 = ResponseText.debugDescription.getter(v78, v79, a4);
      v42 = sub_1B0399D64(v40, v41, v89);

      *(v28 + 33) = v42;
      _os_log_impl(&dword_1B0389000, v25, v26, "[%.*hhx-%{public}s] Authentication failed for mechanism '%{public}s': %{public}s", v28, 0x29u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v29, -1, -1);
      a2 = v78;
      MEMORY[0x1B272C230](v28, -1, -1);
      sub_1B0447F00(a2);

      v43 = v35;
      goto LABEL_9;
    }

    sub_1B04479C4(v20, _s6LoggerVMa_0);
    sub_1B0447F00(a2);

    sub_1B04479C4(v23, _s6LoggerVMa_0);
  }

  else
  {
    v78 = a2;
    sub_1B0433BE8(a5, v17, _s6LoggerVMa_0);
    sub_1B0433BE8(a5, v14, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v44 = v83;
    sub_1B0BD6700(v83, v89);
    v45 = sub_1B0E43988();
    v46 = sub_1B0E458E8();
    sub_1B0BD2F90(v44);
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v77 = v8;
      v49 = v48;
      *&v89[0] = v48;
      *v47 = 68158466;
      *(v47 + 4) = 2;
      *(v47 + 8) = 256;
      v50 = v14[*(v12 + 20)];
      sub_1B04479C4(v14, _s6LoggerVMa_0);
      *(v47 + 10) = v50;
      *(v47 + 11) = 2082;
      v51 = *&v17[*(v12 + 20) + 4];
      sub_1B04479C4(v17, _s6LoggerVMa_0);
      v52 = ConnectionID.debugDescription.getter(v51);
      v54 = sub_1B0399D64(v52, v53, v89);

      *(v47 + 13) = v54;
      *(v47 + 21) = 2082;
      v55 = v83;
      v57 = sub_1B0C0E5E8(v56);
      v59 = sub_1B0399D64(v57, v58, v89);

      *(v47 + 23) = v59;
      _os_log_impl(&dword_1B0389000, v45, v46, "[%.*hhx-%{public}s] Authentication failed for mechanism '%{public}s'.", v47, 0x1Fu);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v49, -1, -1);
      MEMORY[0x1B272C230](v47, -1, -1);

      a2 = v78;
      v43 = v55;
      goto LABEL_9;
    }

    sub_1B04479C4(v14, _s6LoggerVMa_0);

    sub_1B04479C4(v17, _s6LoggerVMa_0);
    a2 = v78;
  }

  v43 = v83;
LABEL_9:
  v60 = v80;
  sub_1B0433BE8(v84, v80, type metadata accessor for UnauthenticatedState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v62 = v81;
  if (EnumCaseMultiPayload != 2)
  {
    return sub_1B04479C4(v60, type metadata accessor for UnauthenticatedState);
  }

  sub_1B04479C4(v84, type metadata accessor for UnauthenticatedState);
  v63 = v60;
  v64 = v82;
  sub_1B0C3A6F0(v63, v82, type metadata accessor for Authenticator);
  v65 = sub_1B0BD4C68(v43, a2, v79, a4, v62);
  MEMORY[0x1EEE9AC00](v65);
  *(&v76 - 2) = v64;
  sub_1B0BD4E3C(sub_1B0BD13C4, v66, v85);
  v90 = v87;
  v91 = v88;
  v89[1] = v85[1];
  v89[2] = v86;
  v89[0] = v85[0];
  if ((~*(&v86 + 1) & 0x3000000000000000) != 0 || (*(&v90 + 1) & 0x1000000000000000) == 0)
  {
    sub_1B0398EFC(v89, &qword_1EB6E53D0, &unk_1B0ECFB80);
    sub_1B0C3A6F0(v82, v84, type metadata accessor for Authenticator);
  }

  else
  {
    v67 = v82;
    sub_1B0BD3F38();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    sub_1B04479C4(v67, type metadata accessor for Authenticator);
    v74 = v84;
    *v84 = v69;
    v74[1] = v71;
    v74[2] = v73;
    *(v74 + 24) = 0;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B0C32E28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v79 - v10;
  sub_1B04479C4(v3, type metadata accessor for UnauthenticatedState);
  if (!a1)
  {
    type metadata accessor for UnauthenticatedState(0);
    swift_storeEnumTagMultiPayload();
    return 0xFFFFFFFF00000000;
  }

  sub_1B0433BE8(a2, v11, _s6LoggerVMa_0);
  sub_1B0433BE8(a2, v8, _s6LoggerVMa_0);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v12 = sub_1B0E43988();
  v13 = sub_1B0E458D8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v80 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v79 = a1;
    v17 = v16;
    *&v93 = v16;
    *v15 = 68158210;
    *(v15 + 4) = 2;
    *(v15 + 8) = 256;
    v18 = v8[*(v6 + 20)];
    sub_1B04479C4(v8, _s6LoggerVMa_0);
    *(v15 + 10) = v18;
    *(v15 + 11) = 2082;
    v19 = *&v11[*(v6 + 20) + 4];
    sub_1B04479C4(v11, _s6LoggerVMa_0);
    v20 = ConnectionID.debugDescription.getter(v19);
    v22 = sub_1B0399D64(v20, v21, &v93);

    *(v15 + 13) = v22;
    _os_log_impl(&dword_1B0389000, v12, v13, "[%.*hhx-%{public}s] Received capabilities from server", v15, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    v23 = v17;
    a1 = v79;
    MEMORY[0x1B272C230](v23, -1, -1);
    v24 = v15;
    v3 = v80;
    MEMORY[0x1B272C230](v24, -1, -1);
  }

  else
  {
    sub_1B04479C4(v8, _s6LoggerVMa_0);

    sub_1B04479C4(v11, _s6LoggerVMa_0);
  }

  v26 = Capability.id.unsafeMutableAddressor();
  v27 = v26[1];
  v28 = v26[2];
  v29 = *(v26 + 24);
  *&v93 = *v26;
  *(&v93 + 1) = v27;
  *&v94 = v28;
  BYTE8(v94) = v29;
  MEMORY[0x1EEE9AC00](v26);
  *(&v79 - 2) = &v93;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30 = sub_1B0C32414(sub_1B0C10BD0, (&v79 - 4), a1);

  if (v30)
  {
    *v3 = a1;
    type metadata accessor for UnauthenticatedState(0);
    swift_storeEnumTagMultiPayload();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    if (sub_1B0C336B8(a1))
    {
      v31 = Capability.CompressionKind.deflate.unsafeMutableAddressor();
      v32 = *v31;
      v33 = v31[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v34 = static Capability.compression(_:)(v32, v33);
      v36 = v35;
      v38 = v37;
      v40 = v39;

      *&v93 = v34;
      *(&v93 + 1) = v36;
      *&v94 = v38;
      BYTE8(v94) = v40 & 1;
      MEMORY[0x1EEE9AC00](v41);
      *(&v79 - 2) = &v93;
      LOBYTE(v34) = sub_1B0C32414(sub_1B0C10BD0, (&v79 - 4), a1);

      if ((v34 & 1) == 0)
      {
        v42 = Capability.applePushService.unsafeMutableAddressor();
        v43 = v42[1];
        v44 = v42[2];
        v45 = *(v42 + 24);
        *&v93 = *v42;
        *(&v93 + 1) = v43;
        *&v94 = v44;
        BYTE8(v94) = v45;
        MEMORY[0x1EEE9AC00](v42);
        *(&v79 - 2) = &v93;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v46 = sub_1B0C32414(sub_1B0C10BD0, (&v79 - 4), a1);

        if (v46)
        {
          v47 = ServerID.empty.unsafeMutableAddressor();
          v49 = v47[1];
          v48 = v47[2];
          v82 = *v47;
          v83 = v49;
          v84 = v48;
          v50 = v47[6];
          v52 = v47[3];
          v51 = v47[4];
          v87 = v47[5];
          v88 = v50;
          v85 = v52;
          v86 = v51;
          v53 = v47[10];
          v55 = v47[7];
          v54 = v47[8];
          v91 = v47[9];
          v92 = v53;
          v89 = v55;
          v90 = v54;
          v100 = v47[7];
          v101 = v47[8];
          v102 = v47[9];
          v103 = v47[10];
          v96 = v47[3];
          v56 = v96;
          v97 = v47[4];
          v98 = v47[5];
          v99 = v47[6];
          v93 = *v47;
          v94 = v47[1];
          v95 = v47[2];
          *v3 = a1;
          *(v3 + 56) = v56;
          v57 = v94;
          *(v3 + 40) = v95;
          v58 = v93;
          *(v3 + 24) = v57;
          *(v3 + 8) = v58;
          v59 = v97;
          v60 = v98;
          *(v3 + 104) = v99;
          *(v3 + 88) = v60;
          *(v3 + 72) = v59;
          v61 = v102;
          *(v3 + 168) = v103;
          *(v3 + 152) = v61;
          v62 = v100;
          *(v3 + 136) = v101;
          *(v3 + 120) = v62;
          type metadata accessor for UnauthenticatedState(0);
          swift_storeEnumTagMultiPayload();
          sub_1B039F420(&v82, v81);
          return 0x8000000000000003;
        }
      }
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v63 = ServerID.empty.unsafeMutableAddressor();
    v65 = v63[1];
    v64 = v63[2];
    v82 = *v63;
    v83 = v65;
    v84 = v64;
    v66 = v63[6];
    v68 = v63[3];
    v67 = v63[4];
    v87 = v63[5];
    v88 = v66;
    v85 = v68;
    v86 = v67;
    v69 = v63[10];
    v71 = v63[7];
    v70 = v63[8];
    v91 = v63[9];
    v92 = v69;
    v89 = v71;
    v90 = v70;
    v100 = v63[7];
    v101 = v63[8];
    v102 = v63[9];
    v103 = v63[10];
    v96 = v63[3];
    v72 = v96;
    v97 = v63[4];
    v98 = v63[5];
    v99 = v63[6];
    v93 = *v63;
    v94 = v63[1];
    v95 = v63[2];
    *v3 = a1;
    *(v3 + 56) = v72;
    v73 = v94;
    *(v3 + 40) = v95;
    v74 = v93;
    *(v3 + 24) = v73;
    *(v3 + 8) = v74;
    v75 = v97;
    v76 = v98;
    *(v3 + 104) = v99;
    *(v3 + 88) = v76;
    *(v3 + 72) = v75;
    v77 = v102;
    *(v3 + 168) = v103;
    *(v3 + 152) = v77;
    v78 = v100;
    *(v3 + 136) = v101;
    *(v3 + 120) = v78;
    type metadata accessor for UnauthenticatedState(0);
    swift_storeEnumTagMultiPayload();
    sub_1B039F420(&v82, v81);
  }

  return ClientCommand.EncodingOptions.init(_:)(a1) & 0x101FF;
}

BOOL sub_1B0C336B8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E59F0, &unk_1B0EDA820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC60E0;
  v3 = Capability.uidOnly.unsafeMutableAddressor();
  v4 = v3[1];
  v5 = v3[2];
  v6 = *(v3 + 24);
  *(inited + 32) = *v3;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = Capability.enable.unsafeMutableAddressor();
  v8 = v7[1];
  v9 = v7[2];
  v10 = *(v7 + 24);
  *(inited + 64) = *v7;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  *(inited + 88) = v10;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = Capability.uidBatches.unsafeMutableAddressor();
  v12 = v11[1];
  v13 = v11[2];
  v14 = *(v11 + 24);
  *(inited + 96) = *v11;
  *(inited + 104) = v12;
  *(inited + 112) = v13;
  *(inited + 120) = v14;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = Capability.partial.unsafeMutableAddressor();
  v16 = v15[1];
  v17 = v15[2];
  v18 = *(v15 + 24);
  *(inited + 128) = *v15;
  *(inited + 136) = v16;
  *(inited + 144) = v17;
  *(inited + 152) = v18;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = Capability.extendedSearch.unsafeMutableAddressor();
  v20 = v19[1];
  v21 = v19[2];
  v22 = *(v19 + 24);
  *(inited + 160) = *v19;
  *(inited + 168) = v20;
  *(inited + 176) = v21;
  *(inited + 184) = v22;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23 = sub_1B0BF4574(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  LOBYTE(a1) = sub_1B0C370C8(a1, v23);

  return (a1 & 1) == 0;
}

_OWORD *sub_1B0C33814(uint64_t a1, uint64_t a2)
{
  *&v555 = a2;
  v3 = *(a1 + 144);
  v639 = *(a1 + 128);
  v640 = v3;
  v641 = *(a1 + 160);
  v642 = *(a1 + 176);
  v4 = *(a1 + 80);
  v635 = *(a1 + 64);
  v636 = v4;
  v5 = *(a1 + 112);
  v637 = *(a1 + 96);
  v638 = v5;
  v6 = *(a1 + 16);
  v631 = *a1;
  v632 = v6;
  v7 = *(a1 + 48);
  v633 = *(a1 + 32);
  v634 = v7;
  *&v554 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v554);
  v542 = &v518 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v544 = &v518 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v541 = &v518 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v543 = &v518 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v524 = &v518 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v525 = &v518 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v526 = &v518 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v527 = &v518 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v522 = &v518 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v523 = &v518 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v520 = &v518 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v521 = &v518 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v545 = &v518 - v32;
  MEMORY[0x1EEE9AC00](v33);
  *&v546 = &v518 - v34;
  MEMORY[0x1EEE9AC00](v35);
  *&v550 = &v518 - v36;
  MEMORY[0x1EEE9AC00](v37);
  *&v552 = &v518 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v539 = &v518 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v540 = &v518 - v42;
  MEMORY[0x1EEE9AC00](v43);
  *&v549 = &v518 - v44;
  MEMORY[0x1EEE9AC00](v45);
  *&v551 = &v518 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v535 = &v518 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v536 = &v518 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v537 = &v518 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v538 = &v518 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v533 = &v518 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v534 = &v518 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v531 = &v518 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v532 = &v518 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v530 = &v518 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v528 = &v518 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v529 = &v518 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v518 = &v518 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v519 = &v518 - v72;
  v556 = type metadata accessor for UnauthenticatedState(0);
  MEMORY[0x1EEE9AC00](v556);
  v74 = &v518 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  *&v547 = &v518 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v518 - v78;
  MEMORY[0x1EEE9AC00](v80);
  v82 = (&v518 - v81);
  MEMORY[0x1EEE9AC00](v83);
  *&v548 = &v518 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v87 = (&v518 - v86);
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v518 - v89;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v518 - v92;
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v518 - v95;
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v518 - v98;
  MEMORY[0x1EEE9AC00](v100);
  *&v553 = &v518 - v101;
  v102 = *(a1 + 144);
  v625[8] = *(a1 + 128);
  v625[9] = v102;
  v625[10] = *(a1 + 160);
  v626 = *(a1 + 176);
  v103 = *(a1 + 80);
  v625[4] = *(a1 + 64);
  v625[5] = v103;
  v104 = *(a1 + 112);
  v625[6] = *(a1 + 96);
  v625[7] = v104;
  v105 = *(a1 + 16);
  v625[0] = *a1;
  v625[1] = v105;
  v106 = *(a1 + 48);
  v625[2] = *(a1 + 32);
  v625[3] = v106;
  v107 = sub_1B0C376E8(v625);
  if (v107 <= 5)
  {
    if (v107 <= 2)
    {
      if (!v107)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v173 = *v172;
        v174 = v172[3];
        if ((~*v172 & 0xF000000000000007) != 0 && ((v173 >> 59) & 0x1E | (v173 >> 2) & 1) == 1)
        {
          v174 = *((v173 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        }

        else if (v174)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        }

        v294 = sub_1B0C32E28(v174, v555);
LABEL_62:

        if (v294 <= 0xFFFFFFFEFFFFFFFFLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E56F8, &qword_1B0ED5CF8);
          result = swift_allocObject();
          result[1] = xmmword_1B0EC1E70;
          *(result + 4) = v294;
          *(result + 5) = 0;
          *(result + 6) = 0;
          *(result + 7) = 0;
          return result;
        }

        return MEMORY[0x1E69E7CC0];
      }

      if (v107 == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v109 = *v108;
        v110 = v108[1];
        v112 = v108[2];
        v111 = v108[3];
        v113 = v108[4];
        v114 = v108[5];
        v115 = v108[6];
        v116 = v553;
        sub_1B0433BE8(v557, v553, type metadata accessor for UnauthenticatedState);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload != 1)
        {
          if (!EnumCaseMultiPayload)
          {
            v118 = *v116;
            v119 = *(v109 + 16);
            if (!v119)
            {
LABEL_85:
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B044A64C(v110, v112, v111);
              sub_1B0BB8F60(v113, v114, v115);
              sub_1B04479C4(v557, type metadata accessor for UnauthenticatedState);

              sub_1B044A65C(v110, v112, v111);
              sub_1B0BE2F48(v113, v114, v115);
LABEL_86:

LABEL_87:
              v385 = v555;
              v386 = v529;
              sub_1B0433BE8(v555, v529, _s6LoggerVMa_0);
              v387 = v528;
              sub_1B0433BE8(v385, v528, _s6LoggerVMa_0);
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              v388 = sub_1B0E43988();
              v389 = sub_1B0E458F8();
              if (os_log_type_enabled(v388, v389))
              {
                v390 = swift_slowAlloc();
                v391 = swift_slowAlloc();
                *&v613 = v391;
                *v390 = 68158210;
                *(v390 + 4) = 2;
                *(v390 + 8) = 256;
                v392 = v554;
                v393 = *(v387 + *(v554 + 20));
                sub_1B04479C4(v387, _s6LoggerVMa_0);
                *(v390 + 10) = v393;
                *(v390 + 11) = 2082;
                v394 = *(v386 + *(v392 + 20) + 4);
                sub_1B04479C4(v386, _s6LoggerVMa_0);
                v395 = ConnectionID.debugDescription.getter(v394);
                v397 = sub_1B0399D64(v395, v396, &v613);

                *(v390 + 13) = v397;
                _os_log_impl(&dword_1B0389000, v388, v389, "[%.*hhx-%{public}s] Credentials don't allow PREAUTH.", v390, 0x15u);
                __swift_destroy_boxed_opaque_existential_0Tm(v391);
                MEMORY[0x1B272C230](v391, -1, -1);
                MEMORY[0x1B272C230](v390, -1, -1);
              }

              else
              {
                sub_1B04479C4(v387, _s6LoggerVMa_0);

                sub_1B04479C4(v386, _s6LoggerVMa_0);
              }

              v477 = v557;
              *(v557 + 8) = 0;
              *(v477 + 16) = 0;
              *v477 = 2;
              *(v477 + 24) = -64;
              swift_storeEnumTagMultiPayload();
              return MEMORY[0x1E69E7CC0];
            }

            v120 = (v109 + 104);
            while (1)
            {
              v123 = *(v120 - 2);
              if (((*v120 >> 59) & 6 | ((v123 & 0x2000000000000000) != 0)) == 4)
              {
                v124 = vorrq_s8(*(v120 - 9), *(v120 - 7));
                v125 = *&vorr_s8(*v124.i8, *&vextq_s8(v124, v124, 8uLL)) | *(v120 - 5) | *(v120 - 4) | *(v120 - 3) | *(v120 - 1) | v123;
                if (*v120 == 0x2000000000000000 && v125 == 0)
                {
                  break;
                }
              }

              v120 += 10;
              if (!--v119)
              {
                goto LABEL_85;
              }
            }

            sub_1B0BB8F60(v113, v114, v115);
            if (v115 == 1)
            {
              goto LABEL_22;
            }

            if (v110 >> 62 != 1)
            {

              sub_1B0BE2F48(v113, v114, v115);
              v516 = v557;
LABEL_153:
              sub_1B04479C4(v516, type metadata accessor for UnauthenticatedState);
              goto LABEL_87;
            }

            if (v115)
            {
              if (v113)
              {
                v500 = v557;
                if (v113 == 1)
                {
                  if (v110 != 772)
                  {
                    goto LABEL_152;
                  }
                }

                else if (v110 - 771 >= 2)
                {
                  goto LABEL_152;
                }
              }

              else
              {
                v500 = v557;
                if (v110 - 771 >= 2)
                {
                  goto LABEL_152;
                }
              }

              if (v111)
              {
                if (v114 == v112 && v115 == v111)
                {
                  sub_1B0BE2F48(v113, v112, v111);
                  goto LABEL_22;
                }

                v517 = sub_1B0E46A78();
                sub_1B0BE2F48(v113, v114, v115);
                if (v517)
                {
                  goto LABEL_22;
                }

                goto LABEL_155;
              }

LABEL_152:

              sub_1B0BE2F48(v113, v114, v115);
              v516 = v500;
              goto LABEL_153;
            }

            sub_1B0BE2F48(v113, v114, 0);
            if (v113 == 1)
            {
              if (v110 != 772)
              {
LABEL_155:
                sub_1B04479C4(v557, type metadata accessor for UnauthenticatedState);
                goto LABEL_86;
              }
            }

            else if (v110 - 771 >= 2)
            {
              goto LABEL_155;
            }

LABEL_22:
            v127 = v555;
            v128 = v519;
            sub_1B0433BE8(v555, v519, _s6LoggerVMa_0);
            v129 = v518;
            sub_1B0433BE8(v127, v518, _s6LoggerVMa_0);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v130 = sub_1B0E43988();
            v131 = sub_1B0E458D8();
            if (os_log_type_enabled(v130, v131))
            {
              v132 = swift_slowAlloc();
              v133 = swift_slowAlloc();
              v134 = v129;
              v135 = v133;
              *&v613 = v133;
              *v132 = 68158210;
              *(v132 + 4) = 2;
              *(v132 + 8) = 256;
              v136 = v554;
              v137 = *(v134 + *(v554 + 20));
              sub_1B04479C4(v134, _s6LoggerVMa_0);
              *(v132 + 10) = v137;
              *(v132 + 11) = 2082;
              v138 = *(v128 + *(v136 + 20) + 4);
              sub_1B04479C4(v128, _s6LoggerVMa_0);
              v139 = ConnectionID.debugDescription.getter(v138);
              v141 = sub_1B0399D64(v139, v140, &v613);

              *(v132 + 13) = v141;
              _os_log_impl(&dword_1B0389000, v130, v131, "[%.*hhx-%{public}s] Authenticated with PREAUTH.", v132, 0x15u);
              __swift_destroy_boxed_opaque_existential_0Tm(v135);
              MEMORY[0x1B272C230](v135, -1, -1);
              MEMORY[0x1B272C230](v132, -1, -1);
            }

            else
            {
              sub_1B04479C4(v129, _s6LoggerVMa_0);

              sub_1B04479C4(v128, _s6LoggerVMa_0);
            }

            v294 = sub_1B0C32E28(v118, v555);
            goto LABEL_62;
          }

          v372 = v555;
          v373 = v532;
          sub_1B0433BE8(v555, v532, _s6LoggerVMa_0);
          v374 = v531;
          sub_1B0433BE8(v372, v531, _s6LoggerVMa_0);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v375 = sub_1B0E43988();
          v376 = sub_1B0E458E8();
          if (os_log_type_enabled(v375, v376))
          {
            v377 = swift_slowAlloc();
            v378 = swift_slowAlloc();
            *&v613 = v378;
            *v377 = 68158210;
            *(v377 + 4) = 2;
            *(v377 + 8) = 256;
            v379 = v554;
            v380 = *(v374 + *(v554 + 20));
            sub_1B04479C4(v374, _s6LoggerVMa_0);
            *(v377 + 10) = v380;
            *(v377 + 11) = 2082;
            v381 = *(v373 + *(v379 + 20) + 4);
            sub_1B04479C4(v373, _s6LoggerVMa_0);
            v382 = ConnectionID.debugDescription.getter(v381);
            v384 = sub_1B0399D64(v382, v383, &v613);

            *(v377 + 13) = v384;
            _os_log_impl(&dword_1B0389000, v375, v376, "[%.*hhx-%{public}s] Received unexpected credentials.", v377, 0x15u);
            __swift_destroy_boxed_opaque_existential_0Tm(v378);
            MEMORY[0x1B272C230](v378, -1, -1);
            MEMORY[0x1B272C230](v377, -1, -1);
          }

          else
          {
            sub_1B04479C4(v374, _s6LoggerVMa_0);

            sub_1B04479C4(v373, _s6LoggerVMa_0);
          }

          v367 = type metadata accessor for UnauthenticatedState;
          v368 = v553;
          goto LABEL_127;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B044A64C(v110, v112, v111);
        sub_1B0BB8F60(v113, v114, v115);
        *&v554 = v115;
        v369 = v114;
        v370 = v557;
        sub_1B04479C4(v557, type metadata accessor for UnauthenticatedState);
        v154 = *v116;
        *&v613 = v109;
        *(&v613 + 1) = v154;
        *&v614 = v110;
        *(&v614 + 1) = v112;
        *&v615 = v111;
        *(&v615 + 1) = v113;
        *&v616 = v369;
        *(&v616 + 1) = v554;
        v371 = v530;
        sub_1B0433BE8(v555, v530, _s6LoggerVMa_0);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BD4184(&v613, v371, v99);
        swift_storeEnumTagMultiPayload();
        sub_1B0C3A6F0(v99, v370, type metadata accessor for UnauthenticatedState);
LABEL_118:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E56F8, &qword_1B0ED5CF8);
        v485 = swift_allocObject();
        *(v485 + 16) = xmmword_1B0EC1E70;
        v486 = ClientCommand.EncodingOptions.init(_:)(v154);
        result = v485;
        *(v485 + 32) = v486 & 0x101FF;
        *(v485 + 40) = 0;
        *(v485 + 48) = 0;
        *(v485 + 56) = 0;
        return result;
      }

      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v614 = *(v238 + 16);
      v615 = *(v238 + 32);
      v616 = *(v238 + 48);
      v617 = *(v238 + 64);
      v613 = *v238;
      sub_1B0C3259C(&v613, *(v238 + 80), *(v238 + 88), *(v238 + 96), v555);
      return MEMORY[0x1E69E7CC0];
    }

    if (v107 != 3)
    {
      v142 = v557;
      if (v107 != 4)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v261 = *v260;
        v263 = v260[1];
        v262 = v260[2];
        v264 = v260[3];
        sub_1B0433BE8(v142, v74, type metadata accessor for UnauthenticatedState);
        v265 = swift_getEnumCaseMultiPayload();
        if (v265 == 8)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B04479C4(v142, type metadata accessor for UnauthenticatedState);
          v266 = *(v74 + 1);
          v591 = *v74;
          v592 = v266;
          v267 = *(v74 + 3);
          v593 = *(v74 + 2);
          v594 = v267;
          v268 = *(v74 + 8);
          v269 = *(v74 + 184);
          v270 = *(v74 + 216);
          v621 = *(v74 + 200);
          v622 = v270;
          v623 = *(v74 + 232);
          v271 = *(v74 + 120);
          v272 = *(v74 + 152);
          v617 = *(v74 + 136);
          v618 = v272;
          v273 = *(v74 + 168);
          v620 = v269;
          v619 = v273;
          v274 = *(v74 + 88);
          v613 = *(v74 + 72);
          v614 = v274;
          v275 = *(v74 + 104);
          v616 = v271;
          v615 = v275;
          sub_1B0A1C37C();
          v276 = v619;
          *(v142 + 120) = v620;
          v277 = v622;
          *(v142 + 136) = v621;
          *(v142 + 152) = v277;
          *(v142 + 168) = v623;
          v278 = v615;
          *(v142 + 56) = v616;
          v279 = v618;
          *(v142 + 72) = v617;
          *(v142 + 88) = v279;
          *(v142 + 104) = v276;
          v280 = v614;
          *(v142 + 8) = v613;
          *(v142 + 24) = v280;
          *v142 = v268;
          *(v142 + 40) = v278;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E56F8, &qword_1B0ED5CF8);
          result = swift_allocObject();
          result[1] = xmmword_1B0EC1E70;
          *(result + 4) = v261 | 0x4000000000000000;
          *(result + 5) = v263;
          *(result + 6) = v262;
          *(result + 7) = v264;
          return result;
        }

        sub_1B04479C4(v74, type metadata accessor for UnauthenticatedState);
        v360 = v555;
        v296 = v544;
        sub_1B0433BE8(v555, v544, _s6LoggerVMa_0);
        v297 = v542;
        sub_1B0433BE8(v360, v542, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v298 = sub_1B0E43988();
        v299 = sub_1B0E458E8();
        if (os_log_type_enabled(v298, v299))
        {
          v300 = swift_slowAlloc();
          v301 = swift_slowAlloc();
          *&v613 = v301;
          *v300 = 68158210;
          *(v300 + 4) = 2;
          *(v300 + 8) = 256;
          v361 = v554;
          v362 = *(v297 + *(v554 + 20));
          sub_1B04479C4(v297, _s6LoggerVMa_0);
          *(v300 + 10) = v362;
          *(v300 + 11) = 2082;
          v363 = *(v296 + *(v361 + 20) + 4);
          sub_1B04479C4(v296, _s6LoggerVMa_0);
          v364 = ConnectionID.debugDescription.getter(v363);
          v366 = sub_1B0399D64(v364, v365, &v613);

          *(v300 + 13) = v366;
          v308 = "[%.*hhx-%{public}s] Unexpected gotPushResponse";
          goto LABEL_125;
        }

        goto LABEL_126;
      }

      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v630 = *v143;
      v144 = *(v143 + 2);
      v145 = *(v143 + 40);
      v627 = *(v143 + 24);
      v628 = v145;
      v629 = *(v143 + 7);
      v146 = v547;
      sub_1B0433BE8(v142, v547, type metadata accessor for UnauthenticatedState);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v147 = *(a1 + 144);
        v621 = *(a1 + 128);
        v622 = v147;
        v623 = *(a1 + 160);
        v624 = *(a1 + 176);
        v148 = *(a1 + 80);
        v617 = *(a1 + 64);
        v618 = v148;
        v149 = *(a1 + 112);
        v619 = *(a1 + 96);
        v620 = v149;
        v150 = *(a1 + 16);
        v613 = *a1;
        v614 = v150;
        v151 = *(a1 + 48);
        v615 = *(a1 + 32);
        v616 = v151;
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        sub_1B03B5C80(v152, &v591, &qword_1EB6E59E8, &unk_1B0EDA810);
        sub_1B04479C4(v142, type metadata accessor for UnauthenticatedState);
        v155 = *v146;
        v153 = v146 + 1;
        v154 = v155;
        if (v144)
        {
          *v142 = v630;
          *(v142 + 16) = v144;
          v156 = v628;
          *(v142 + 24) = v627;
          *(v142 + 40) = v156;
          *(v142 + 56) = v629;
          v157 = (v142 + 64);
          v158 = 72;
        }

        else
        {
          v158 = 8;
          v157 = v142;
        }

        *v157 = v154;
        v431 = (v142 + v158);
        v432 = v153[9];
        v431[8] = v153[8];
        v431[9] = v432;
        v431[10] = v153[10];
        v433 = v153[5];
        v431[4] = v153[4];
        v431[5] = v433;
        v434 = v153[7];
        v431[6] = v153[6];
        v431[7] = v434;
        v435 = v153[1];
        *v431 = *v153;
        v431[1] = v435;
        v436 = v153[3];
        v431[2] = v153[2];
        v431[3] = v436;
        swift_storeEnumTagMultiPayload();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v437 = Capability.id.unsafeMutableAddressor();
        v438 = v437[1];
        v439 = v437[2];
        v440 = *(v437 + 24);
        *&v591 = *v437;
        *(&v591 + 1) = v438;
        *&v592 = v439;
        BYTE8(v592) = v440;
        MEMORY[0x1EEE9AC00](v437);
        *(&v518 - 2) = &v591;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v441 = sub_1B0C32414(sub_1B0BD6614, (&v518 - 4), v154);

        if ((v441 & 1) == 0)
        {
          goto LABEL_118;
        }

        return MEMORY[0x1E69E7CC0];
      }

      sub_1B04479C4(v146, type metadata accessor for UnauthenticatedState);
      v346 = v555;
      v296 = v543;
      sub_1B0433BE8(v555, v543, _s6LoggerVMa_0);
      v297 = v541;
      sub_1B0433BE8(v346, v541, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v298 = sub_1B0E43988();
      v299 = sub_1B0E458E8();
      if (os_log_type_enabled(v298, v299))
      {
        v300 = swift_slowAlloc();
        v301 = swift_slowAlloc();
        *&v613 = v301;
        *v300 = 68158210;
        *(v300 + 4) = 2;
        *(v300 + 8) = 256;
        v347 = v554;
        v348 = *(v297 + *(v554 + 20));
        sub_1B04479C4(v297, _s6LoggerVMa_0);
        *(v300 + 10) = v348;
        *(v300 + 11) = 2082;
        v349 = *(v296 + *(v347 + 20) + 4);
        sub_1B04479C4(v296, _s6LoggerVMa_0);
        v350 = ConnectionID.debugDescription.getter(v349);
        v352 = sub_1B0399D64(v350, v351, &v613);

        *(v300 + 13) = v352;
        v308 = "[%.*hhx-%{public}s] Unexpected setPushInformation";
        goto LABEL_125;
      }

LABEL_126:
      sub_1B04479C4(v297, _s6LoggerVMa_0);

      v368 = v296;
      v367 = _s6LoggerVMa_0;
LABEL_127:
      sub_1B04479C4(v368, v367);
      return MEMORY[0x1E69E7CC0];
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v207 = v206[1];
    v575 = *v206;
    v576 = v207;
    v208 = v206[3];
    v577 = v206[2];
    v578 = v208;
    v210 = *(v206 + 8);
    v209 = *(v206 + 9);
    v211 = v206[8];
    v571 = v206[7];
    v572 = v211;
    v212 = v206[10];
    v573 = v206[9];
    v574 = v212;
    v213 = v206[6];
    v569 = v206[5];
    v570 = v213;
    v214 = v557;
    sub_1B0433BE8(v557, v87, type metadata accessor for UnauthenticatedState);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v215 = *(a1 + 144);
      v621 = *(a1 + 128);
      v622 = v215;
      v623 = *(a1 + 160);
      v624 = *(a1 + 176);
      v216 = *(a1 + 80);
      v617 = *(a1 + 64);
      v618 = v216;
      v217 = *(a1 + 112);
      v619 = *(a1 + 96);
      v620 = v217;
      v218 = *(a1 + 16);
      v613 = *a1;
      v614 = v218;
      v219 = *(a1 + 48);
      v615 = *(a1 + 32);
      v616 = v219;
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      sub_1B039F420(v220, &v591);
      sub_1B04479C4(v214, type metadata accessor for UnauthenticatedState);
      v221 = *v87;
      if (v209)
      {
        if (sub_1B0E44B98() == 0xD000000000000012 && 0x80000001B0F2D600 == v222)
        {

LABEL_106:
          v443 = &unk_1F271B7E8;
LABEL_108:
          *&v555 = v443;
          if (sub_1B0C336B8(v221))
          {
            v444 = Capability.CompressionKind.deflate.unsafeMutableAddressor();
            v445 = *v444;
            v446 = v444[1];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v447 = static Capability.compression(_:)(v445, v446);
            v449 = v448;
            v451 = v450;
            v453 = v452;

            *&v591 = v447;
            *(&v591 + 1) = v449;
            *&v592 = v451;
            BYTE8(v592) = v453 & 1;
            MEMORY[0x1EEE9AC00](v454);
            *(&v518 - 2) = &v591;
            LOBYTE(v446) = sub_1B0C32414(sub_1B0C10BD0, (&v518 - 4), v221);

            if (v446)
            {
              v455 = v576;
              v456 = v557;
              *(v557 + 8) = v575;
              *(v456 + 24) = v455;
              v457 = v578;
              *(v456 + 40) = v577;
              *(v456 + 56) = v457;
              v458 = v572;
              *(v456 + 120) = v571;
              *(v456 + 136) = v458;
              v459 = v574;
              *(v456 + 152) = v573;
              *(v456 + 168) = v459;
              v460 = v570;
              *(v456 + 88) = v569;
              *v456 = v221;
              *(v456 + 72) = v210;
              *(v456 + 80) = v209;
              *(v456 + 104) = v460;
            }

            else
            {
              v466 = Capability.applePushService.unsafeMutableAddressor();
              v467 = v466[1];
              v468 = v466[2];
              v469 = *(v466 + 24);
              *&v591 = *v466;
              *(&v591 + 1) = v467;
              *&v592 = v468;
              BYTE8(v592) = v469;
              MEMORY[0x1EEE9AC00](v466);
              *(&v518 - 2) = &v591;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v470 = sub_1B0C32414(sub_1B0C10BD0, (&v518 - 4), v221);

              v471 = v576;
              v472 = v557;
              *(v557 + 8) = v575;
              *(v472 + 24) = v471;
              v473 = v578;
              *(v472 + 40) = v577;
              *(v472 + 56) = v473;
              v474 = v572;
              *(v472 + 120) = v571;
              *(v472 + 136) = v474;
              v475 = v574;
              *(v472 + 152) = v573;
              *(v472 + 168) = v475;
              v476 = v570;
              *(v472 + 88) = v569;
              *v472 = v221;
              *(v472 + 72) = v210;
              *(v472 + 80) = v209;
              *(v472 + 104) = v476;
              if (v470)
              {
                swift_storeEnumTagMultiPayload();
                *&v591 = v555;
                sub_1B0C32320(&unk_1F271B828);
                return v591;
              }
            }
          }

          else
          {
            v461 = v576;
            *(v214 + 8) = v575;
            *(v214 + 24) = v461;
            v462 = v578;
            *(v214 + 40) = v577;
            *(v214 + 56) = v462;
            v463 = v572;
            *(v214 + 120) = v571;
            *(v214 + 136) = v463;
            v464 = v574;
            *(v214 + 152) = v573;
            *(v214 + 168) = v464;
            v465 = v570;
            *(v214 + 88) = v569;
            *v214 = v221;
            *(v214 + 72) = v210;
            *(v214 + 80) = v209;
            *(v214 + 104) = v465;
          }

          swift_storeEnumTagMultiPayload();
          return v555;
        }

        v442 = sub_1B0E46A78();

        if (v442)
        {
          goto LABEL_106;
        }
      }

      v443 = MEMORY[0x1E69E7CC0];
      goto LABEL_108;
    }

    sub_1B04479C4(v87, type metadata accessor for UnauthenticatedState);
    v295 = v555;
    v296 = v540;
    sub_1B0433BE8(v555, v540, _s6LoggerVMa_0);
    v297 = v539;
    sub_1B0433BE8(v295, v539, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v298 = sub_1B0E43988();
    v299 = sub_1B0E458E8();
    if (!os_log_type_enabled(v298, v299))
    {
      goto LABEL_126;
    }

    v300 = swift_slowAlloc();
    v301 = swift_slowAlloc();
    *&v613 = v301;
    *v300 = 68158210;
    *(v300 + 4) = 2;
    *(v300 + 8) = 256;
    v302 = v554;
    v303 = *(v297 + *(v554 + 20));
    sub_1B04479C4(v297, _s6LoggerVMa_0);
    *(v300 + 10) = v303;
    *(v300 + 11) = 2082;
    v304 = *(v296 + *(v302 + 20) + 4);
    sub_1B04479C4(v296, _s6LoggerVMa_0);
    v305 = ConnectionID.debugDescription.getter(v304);
    v307 = sub_1B0399D64(v305, v306, &v613);

    *(v300 + 13) = v307;
    v308 = "[%.*hhx-%{public}s] Unexpected identifiedServer";
LABEL_125:
    _os_log_impl(&dword_1B0389000, v298, v299, v308, v300, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v301);
    MEMORY[0x1B272C230](v301, -1, -1);
    MEMORY[0x1B272C230](v300, -1, -1);

    return MEMORY[0x1E69E7CC0];
  }

  if (v107 > 8)
  {
    if ((v107 - 9) >= 2)
    {
      v223 = v555;
      v224 = v552;
      sub_1B0433BE8(v555, v552, _s6LoggerVMa_0);
      v225 = v550;
      sub_1B0433BE8(v223, v550, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v226 = sub_1B0E43988();
      v227 = sub_1B0E45908();
      v228 = os_log_type_enabled(v226, v227);
      v229 = v557;
      if (v228)
      {
        v230 = swift_slowAlloc();
        v231 = swift_slowAlloc();
        *&v613 = v231;
        *v230 = 68158210;
        *(v230 + 4) = 2;
        *(v230 + 8) = 256;
        v232 = v554;
        v233 = *(v225 + *(v554 + 20));
        sub_1B04479C4(v225, _s6LoggerVMa_0);
        *(v230 + 10) = v233;
        *(v230 + 11) = 2082;
        v234 = *(v224 + *(v232 + 20) + 4);
        sub_1B04479C4(v224, _s6LoggerVMa_0);
        v235 = ConnectionID.debugDescription.getter(v234);
        v237 = sub_1B0399D64(v235, v236, &v613);

        *(v230 + 13) = v237;
        _os_log_impl(&dword_1B0389000, v226, v227, "[%.*hhx-%{public}s] Did enable UIDONLY", v230, 0x15u);
        __swift_destroy_boxed_opaque_existential_0Tm(v231);
        MEMORY[0x1B272C230](v231, -1, -1);
        MEMORY[0x1B272C230](v230, -1, -1);
      }

      else
      {
        sub_1B04479C4(v225, _s6LoggerVMa_0);

        sub_1B04479C4(v224, _s6LoggerVMa_0);
      }

      v309 = v548;
      sub_1B0433BE8(v229, v548, type metadata accessor for UnauthenticatedState);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_1B04479C4(v309, type metadata accessor for UnauthenticatedState);
        v332 = v555;
        v296 = v546;
        sub_1B0433BE8(v555, v546, _s6LoggerVMa_0);
        v297 = v545;
        sub_1B0433BE8(v332, v545, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v298 = sub_1B0E43988();
        v299 = sub_1B0E458E8();
        if (!os_log_type_enabled(v298, v299))
        {
          goto LABEL_126;
        }

        v300 = swift_slowAlloc();
        v301 = swift_slowAlloc();
        *&v613 = v301;
        *v300 = 68158210;
        *(v300 + 4) = 2;
        *(v300 + 8) = 256;
        v333 = v554;
        v334 = *(v297 + *(v554 + 20));
        sub_1B04479C4(v297, _s6LoggerVMa_0);
        *(v300 + 10) = v334;
        *(v300 + 11) = 2082;
        v335 = *(v296 + *(v333 + 20) + 4);
        sub_1B04479C4(v296, _s6LoggerVMa_0);
        v336 = ConnectionID.debugDescription.getter(v335);
        v338 = sub_1B0399D64(v336, v337, &v613);

        *(v300 + 13) = v338;
        v308 = "[%.*hhx-%{public}s] Unexpected enabledCapabilities";
        goto LABEL_125;
      }

      sub_1B04479C4(v229, type metadata accessor for UnauthenticatedState);
      v310 = *v309;
      v311 = *(v309 + 120);
      v312 = *(v309 + 152);
      v587 = *(v309 + 136);
      v588 = v312;
      v589 = *(v309 + 168);
      v313 = *(v309 + 56);
      v314 = *(v309 + 88);
      v583 = *(v309 + 72);
      v584 = v314;
      v585 = *(v309 + 104);
      v586 = v311;
      v315 = *(v309 + 24);
      v579 = *(v309 + 8);
      v580 = v315;
      v581 = *(v309 + 40);
      v582 = v313;
      v316 = Capability.CompressionKind.deflate.unsafeMutableAddressor();
      v317 = *v316;
      v318 = v316[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v319 = static Capability.compression(_:)(v317, v318);
      v321 = v320;
      v323 = v322;
      v325 = v324;

      *&v613 = v319;
      *(&v613 + 1) = v321;
      *&v614 = v323;
      BYTE8(v614) = v325 & 1;
      MEMORY[0x1EEE9AC00](v326);
      *(&v518 - 2) = &v613;
      LOBYTE(v318) = sub_1B0C32414(sub_1B0C10BD0, (&v518 - 4), v310);

      if (v318)
      {
        v327 = v585;
        *(v229 + 120) = v586;
        v328 = v588;
        *(v229 + 136) = v587;
        *(v229 + 152) = v328;
        *(v229 + 168) = v589;
        v329 = v581;
        *(v229 + 56) = v582;
        v330 = v584;
        *(v229 + 72) = v583;
        *(v229 + 88) = v330;
        *(v229 + 104) = v327;
        v331 = v580;
        *(v229 + 8) = v579;
        *(v229 + 24) = v331;
        *v229 = v310;
        *(v229 + 40) = v329;
        swift_storeEnumTagMultiPayload();
        return MEMORY[0x1E69E7CC0];
      }

      v398 = Capability.applePushService.unsafeMutableAddressor();
      v399 = v398[1];
      v400 = v398[2];
      v401 = *(v398 + 24);
      *&v613 = *v398;
      *(&v613 + 1) = v399;
      *&v614 = v400;
      BYTE8(v614) = v401;
      MEMORY[0x1EEE9AC00](v398);
      *(&v518 - 2) = &v613;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v402 = sub_1B0C32414(sub_1B0C10BD0, (&v518 - 4), v310);

      v403 = v585;
      *(v229 + 120) = v586;
      v404 = v588;
      *(v229 + 136) = v587;
      *(v229 + 152) = v404;
      *(v229 + 168) = v589;
      v405 = v581;
      *(v229 + 56) = v582;
      v406 = v584;
      *(v229 + 72) = v583;
      *(v229 + 88) = v406;
      *(v229 + 104) = v403;
      v407 = v580;
      *(v229 + 8) = v579;
      *(v229 + 24) = v407;
      *v229 = v310;
      *(v229 + 40) = v405;
      if (v402)
      {
        swift_storeEnumTagMultiPayload();
        return &unk_1F271B868;
      }
    }

    else
    {
      v159 = v557;
      sub_1B0433BE8(v557, v90, type metadata accessor for UnauthenticatedState);
      if (swift_getEnumCaseMultiPayload() - 5 > 1)
      {
        v281 = v555;
        v282 = v551;
        sub_1B0433BE8(v555, v551, _s6LoggerVMa_0);
        v283 = v549;
        sub_1B0433BE8(v281, v549, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v284 = sub_1B0E43988();
        v285 = sub_1B0E458E8();
        if (os_log_type_enabled(v284, v285))
        {
          v286 = swift_slowAlloc();
          v287 = swift_slowAlloc();
          *&v613 = v287;
          *v286 = 68158210;
          *(v286 + 4) = 2;
          *(v286 + 8) = 256;
          v288 = v554;
          v289 = *(v283 + *(v554 + 20));
          sub_1B04479C4(v283, _s6LoggerVMa_0);
          *(v286 + 10) = v289;
          *(v286 + 11) = 2082;
          v290 = *(v282 + *(v288 + 20) + 4);
          sub_1B04479C4(v282, _s6LoggerVMa_0);
          v291 = ConnectionID.debugDescription.getter(v290);
          v293 = sub_1B0399D64(v291, v292, &v613);

          *(v286 + 13) = v293;
          _os_log_impl(&dword_1B0389000, v284, v285, "[%.*hhx-%{public}s] Unexpected enabledCompress", v286, 0x15u);
          __swift_destroy_boxed_opaque_existential_0Tm(v287);
          MEMORY[0x1B272C230](v287, -1, -1);
          MEMORY[0x1B272C230](v286, -1, -1);
        }

        else
        {
          sub_1B04479C4(v283, _s6LoggerVMa_0);

          sub_1B04479C4(v282, _s6LoggerVMa_0);
        }

        v367 = type metadata accessor for UnauthenticatedState;
        v368 = v90;
        goto LABEL_127;
      }

      sub_1B04479C4(v159, type metadata accessor for UnauthenticatedState);
      v161 = *(v90 + 21);
      v160 = *(v90 + 22);
      v162 = *v90;
      v163 = *(v90 + 8);
      v164 = *(v90 + 24);
      v554 = *(v90 + 40);
      v555 = v163;
      v549 = *(v90 + 56);
      v550 = v164;
      v165 = *(v90 + 72);
      v166 = *(v90 + 88);
      v552 = *(v90 + 104);
      v553 = v165;
      v547 = *(v90 + 120);
      v548 = v166;
      v551 = *(v90 + 136);
      v546 = *(v90 + 152);
      v167 = Capability.applePushService.unsafeMutableAddressor();
      v168 = v167[1];
      v169 = v167[2];
      v170 = *(v167 + 24);
      *&v613 = *v167;
      *(&v613 + 1) = v168;
      *&v614 = v169;
      BYTE8(v614) = v170;
      MEMORY[0x1EEE9AC00](v167);
      *(&v518 - 2) = &v613;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v171 = sub_1B0C32414(sub_1B0C10BD0, (&v518 - 4), v162);

      *v159 = v162;
      *(v159 + 24) = v550;
      *(v159 + 8) = v555;
      *(v159 + 56) = v549;
      *(v159 + 40) = v554;
      *(v159 + 88) = v548;
      *(v159 + 72) = v553;
      *(v159 + 120) = v547;
      *(v159 + 104) = v552;
      *(v159 + 152) = v546;
      *(v159 + 136) = v551;
      *(v159 + 168) = v161;
      *(v159 + 176) = v160;
      if (v171)
      {
        swift_storeEnumTagMultiPayload();
        return &unk_1F271B7A8;
      }
    }

LABEL_122:
    swift_storeEnumTagMultiPayload();
    return MEMORY[0x1E69E7CC0];
  }

  if (v107 == 6)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v176 = *v175;
    v177 = v175[1];
    v178 = v175[2];
    v179 = *(v175 + 24);
    if (v179 >= 0xC0)
    {
      v180 = v178 | v177;
      if (v179 == 192 && v176 == 8 && !v180)
      {
        v181 = v557;
        sub_1B0433BE8(v557, v79, type metadata accessor for UnauthenticatedState);
        if (swift_getEnumCaseMultiPayload() != 8)
        {
          sub_1B04479C4(v79, type metadata accessor for UnauthenticatedState);
          v478 = v555;
          v296 = v525;
          sub_1B0433BE8(v555, v525, _s6LoggerVMa_0);
          v297 = v524;
          sub_1B0433BE8(v478, v524, _s6LoggerVMa_0);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v298 = sub_1B0E43988();
          v299 = sub_1B0E458E8();
          if (os_log_type_enabled(v298, v299))
          {
            v300 = swift_slowAlloc();
            v301 = swift_slowAlloc();
            *&v613 = v301;
            *v300 = 68158210;
            *(v300 + 4) = 2;
            *(v300 + 8) = 256;
            v479 = v554;
            v480 = *(v297 + *(v554 + 20));
            sub_1B04479C4(v297, _s6LoggerVMa_0);
            *(v300 + 10) = v480;
            *(v300 + 11) = 2082;
            v481 = *(v296 + *(v479 + 20) + 4);
            sub_1B04479C4(v296, _s6LoggerVMa_0);
            v482 = ConnectionID.debugDescription.getter(v481);
            v484 = sub_1B0399D64(v482, v483, &v613);

            *(v300 + 13) = v484;
            v308 = "[%.*hhx-%{public}s] Unexpected unableToGetPushResponse";
            goto LABEL_125;
          }

          goto LABEL_126;
        }

        sub_1B04479C4(v181, type metadata accessor for UnauthenticatedState);
        v182 = *(v79 + 1);
        v613 = *v79;
        v614 = v182;
        v183 = *(v79 + 3);
        v615 = *(v79 + 2);
        v616 = v183;
        v184 = *(v79 + 8);
        v185 = *(v79 + 184);
        v186 = *(v79 + 216);
        v610 = *(v79 + 200);
        v611 = v186;
        v612 = *(v79 + 232);
        v187 = *(v79 + 120);
        v188 = *(v79 + 152);
        v606 = *(v79 + 136);
        v607 = v188;
        v189 = *(v79 + 168);
        v609 = v185;
        v608 = v189;
        v190 = *(v79 + 88);
        v602 = *(v79 + 72);
        v603 = v190;
        v191 = *(v79 + 104);
        v605 = v187;
        v604 = v191;
        sub_1B0A1C37C();
        v192 = v555;
        v193 = v527;
        sub_1B0433BE8(v555, v527, _s6LoggerVMa_0);
        v194 = v526;
        sub_1B0433BE8(v192, v526, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v195 = sub_1B0E43988();
        v196 = sub_1B0E458E8();
        if (os_log_type_enabled(v195, v196))
        {
          v197 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          *&v591 = v198;
          *v197 = 68158210;
          *(v197 + 4) = 2;
          *(v197 + 8) = 256;
          v199 = v554;
          v200 = *(v554 + 20);
          *&v555 = v184;
          v201 = *(v194 + v200);
          sub_1B04479C4(v194, _s6LoggerVMa_0);
          *(v197 + 10) = v201;
          *(v197 + 11) = 2082;
          v202 = *(v193 + *(v199 + 20) + 4);
          sub_1B04479C4(v193, _s6LoggerVMa_0);
          v203 = ConnectionID.debugDescription.getter(v202);
          v205 = sub_1B0399D64(v203, v204, &v591);

          *(v197 + 13) = v205;
          v184 = v555;
          _os_log_impl(&dword_1B0389000, v195, v196, "[%.*hhx-%{public}s] Unable to get push response", v197, 0x15u);
          __swift_destroy_boxed_opaque_existential_0Tm(v198);
          MEMORY[0x1B272C230](v198, -1, -1);
          MEMORY[0x1B272C230](v197, -1, -1);
        }

        else
        {
          sub_1B04479C4(v194, _s6LoggerVMa_0);

          sub_1B04479C4(v193, _s6LoggerVMa_0);
        }

        v487 = v608;
        v488 = v557;
        *(v557 + 120) = v609;
        v489 = v611;
        *(v488 + 136) = v610;
        *(v488 + 152) = v489;
        *(v488 + 168) = v612;
        v490 = v604;
        *(v488 + 56) = v605;
        v491 = v607;
        *(v488 + 72) = v606;
        *(v488 + 88) = v491;
        *(v488 + 104) = v487;
        v492 = v603;
        *(v488 + 8) = v602;
        *(v488 + 24) = v492;
        *v488 = v184;
        *(v488 + 40) = v490;
        goto LABEL_122;
      }

      if (v179 == 192 && v176 == 9 && !v180)
      {
        v408 = v557;
        sub_1B0433BE8(v557, v82, type metadata accessor for UnauthenticatedState);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          sub_1B04479C4(v408, type metadata accessor for UnauthenticatedState);
          v409 = *v82;
          v410 = v555;
          v411 = v521;
          sub_1B0433BE8(v555, v521, _s6LoggerVMa_0);
          v412 = v520;
          sub_1B0433BE8(v410, v520, _s6LoggerVMa_0);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v413 = sub_1B0E43988();
          v414 = sub_1B0E458E8();
          if (os_log_type_enabled(v413, v414))
          {
            v415 = swift_slowAlloc();
            *&v553 = swift_slowAlloc();
            *&v613 = v553;
            *v415 = 68158210;
            *(v415 + 4) = 2;
            *(v415 + 8) = 256;
            v416 = v554;
            v417 = *(v554 + 20);
            *&v555 = v409;
            v418 = *(v412 + v417);
            sub_1B04479C4(v412, _s6LoggerVMa_0);
            *(v415 + 10) = v418;
            *(v415 + 11) = 2082;
            v419 = *(v411 + *(v416 + 20) + 4);
            sub_1B04479C4(v411, _s6LoggerVMa_0);
            v420 = ConnectionID.debugDescription.getter(v419);
            v422 = sub_1B0399D64(v420, v421, &v613);

            *(v415 + 13) = v422;
            v409 = v555;
            _os_log_impl(&dword_1B0389000, v413, v414, "[%.*hhx-%{public}s] Unable to identify server.", v415, 0x15u);
            v423 = v553;
            __swift_destroy_boxed_opaque_existential_0Tm(v553);
            MEMORY[0x1B272C230](v423, -1, -1);
            MEMORY[0x1B272C230](v415, -1, -1);
          }

          else
          {
            sub_1B04479C4(v412, _s6LoggerVMa_0);

            sub_1B04479C4(v411, _s6LoggerVMa_0);
          }

          v501 = ServerID.empty.unsafeMutableAddressor();
          v503 = v501[1];
          v502 = v501[2];
          v591 = *v501;
          v592 = v503;
          v593 = v502;
          v504 = v501[5];
          v506 = v501[3];
          v505 = v501[4];
          v597 = v501[6];
          v596 = v504;
          v594 = v506;
          v595 = v505;
          v507 = v501[9];
          v509 = v501[7];
          v508 = v501[8];
          v601 = v501[10];
          v600 = v507;
          v598 = v509;
          v599 = v508;
          v620 = v501[7];
          v621 = v501[8];
          v622 = v501[9];
          v623 = v501[10];
          v616 = v501[3];
          v510 = v616;
          v617 = v501[4];
          v618 = v501[5];
          v619 = v501[6];
          v613 = *v501;
          v614 = v501[1];
          v615 = v501[2];
          *v408 = v409;
          *(v408 + 56) = v510;
          v511 = v617;
          *(v408 + 40) = v615;
          v512 = v613;
          *(v408 + 24) = v614;
          *(v408 + 8) = v512;
          v513 = v618;
          *(v408 + 104) = v619;
          *(v408 + 88) = v513;
          *(v408 + 72) = v511;
          v514 = v622;
          *(v408 + 168) = v623;
          *(v408 + 152) = v514;
          v515 = v620;
          *(v408 + 136) = v621;
          *(v408 + 120) = v515;
          swift_storeEnumTagMultiPayload();
          sub_1B039F420(&v591, &v590);
          return MEMORY[0x1E69E7CC0];
        }

        sub_1B04479C4(v82, type metadata accessor for UnauthenticatedState);
        v493 = v555;
        v296 = v523;
        sub_1B0433BE8(v555, v523, _s6LoggerVMa_0);
        v297 = v522;
        sub_1B0433BE8(v493, v522, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v298 = sub_1B0E43988();
        v299 = sub_1B0E458E8();
        if (os_log_type_enabled(v298, v299))
        {
          v300 = swift_slowAlloc();
          v301 = swift_slowAlloc();
          *&v613 = v301;
          *v300 = 68158210;
          *(v300 + 4) = 2;
          *(v300 + 8) = 256;
          v494 = v554;
          v495 = *(v297 + *(v554 + 20));
          sub_1B04479C4(v297, _s6LoggerVMa_0);
          *(v300 + 10) = v495;
          *(v300 + 11) = 2082;
          v496 = *(v296 + *(v494 + 20) + 4);
          sub_1B04479C4(v296, _s6LoggerVMa_0);
          v497 = ConnectionID.debugDescription.getter(v496);
          v499 = sub_1B0399D64(v497, v498, &v613);

          *(v300 + 13) = v499;
          v308 = "[%.*hhx-%{public}s] Unexpected unableToIdentifyServer";
          goto LABEL_125;
        }

        goto LABEL_126;
      }
    }

    v424 = v557;
    sub_1B04479C4(v557, type metadata accessor for UnauthenticatedState);
    *v424 = v176;
    *(v424 + 8) = v177;
    *(v424 + 16) = v178;
    *(v424 + 24) = v179;
    swift_storeEnumTagMultiPayload();
    v621 = v639;
    v622 = v640;
    v623 = v641;
    v624 = v642;
    v617 = v635;
    v618 = v636;
    v619 = v637;
    v620 = v638;
    v613 = v631;
    v614 = v632;
    v615 = v633;
    v616 = v634;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    sub_1B0C37700(*v425, *(v425 + 8), *(v425 + 16), *(v425 + 24));
    return MEMORY[0x1E69E7CC0];
  }

  if (v107 == 7)
  {
    v121 = v557;
    sub_1B0433BE8(v557, v96, type metadata accessor for UnauthenticatedState);
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1B04479C4(v121, type metadata accessor for UnauthenticatedState);
      sub_1B04479C4(v96, type metadata accessor for UnauthenticatedState);
      swift_storeEnumTagMultiPayload();
      return &unk_1F271B728;
    }

    sub_1B04479C4(v96, type metadata accessor for UnauthenticatedState);
    v339 = v555;
    v296 = v534;
    sub_1B0433BE8(v555, v534, _s6LoggerVMa_0);
    v297 = v533;
    sub_1B0433BE8(v339, v533, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v298 = sub_1B0E43988();
    v299 = sub_1B0E458E8();
    if (!os_log_type_enabled(v298, v299))
    {
      goto LABEL_126;
    }

    v300 = swift_slowAlloc();
    v301 = swift_slowAlloc();
    *&v613 = v301;
    *v300 = 68158210;
    *(v300 + 4) = 2;
    *(v300 + 8) = 256;
    v340 = v554;
    v341 = *(v297 + *(v554 + 20));
    sub_1B04479C4(v297, _s6LoggerVMa_0);
    *(v300 + 10) = v341;
    *(v300 + 11) = 2082;
    v342 = *(v296 + *(v340 + 20) + 4);
    sub_1B04479C4(v296, _s6LoggerVMa_0);
    v343 = ConnectionID.debugDescription.getter(v342);
    v345 = sub_1B0399D64(v343, v344, &v613);

    *(v300 + 13) = v345;
    v308 = "[%.*hhx-%{public}s] Unexpected startTLS";
    goto LABEL_125;
  }

  v239 = v557;
  sub_1B0433BE8(v557, v93, type metadata accessor for UnauthenticatedState);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1B04479C4(v93, type metadata accessor for UnauthenticatedState);
    v353 = v555;
    v296 = v536;
    sub_1B0433BE8(v555, v536, _s6LoggerVMa_0);
    v297 = v535;
    sub_1B0433BE8(v353, v535, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v298 = sub_1B0E43988();
    v299 = sub_1B0E458E8();
    if (os_log_type_enabled(v298, v299))
    {
      v300 = swift_slowAlloc();
      v301 = swift_slowAlloc();
      *&v613 = v301;
      *v300 = 68158210;
      *(v300 + 4) = 2;
      *(v300 + 8) = 256;
      v354 = v554;
      v355 = *(v297 + *(v554 + 20));
      sub_1B04479C4(v297, _s6LoggerVMa_0);
      *(v300 + 10) = v355;
      *(v300 + 11) = 2082;
      v356 = *(v296 + *(v354 + 20) + 4);
      sub_1B04479C4(v296, _s6LoggerVMa_0);
      v357 = ConnectionID.debugDescription.getter(v356);
      v359 = sub_1B0399D64(v357, v358, &v613);

      *(v300 + 13) = v359;
      v308 = "[%.*hhx-%{public}s] Unexpected serverAcceptedCompress";
      goto LABEL_125;
    }

    goto LABEL_126;
  }

  sub_1B04479C4(v239, type metadata accessor for UnauthenticatedState);
  v240 = *v93;
  v241 = *(v93 + 120);
  v242 = *(v93 + 152);
  v566 = *(v93 + 136);
  v567 = v242;
  v568 = *(v93 + 168);
  v243 = *(v93 + 56);
  v244 = *(v93 + 88);
  v562 = *(v93 + 72);
  v563 = v244;
  v564 = *(v93 + 104);
  v565 = v241;
  v245 = *(v93 + 24);
  v558 = *(v93 + 8);
  v559 = v245;
  v560 = *(v93 + 40);
  v561 = v243;
  v246 = v555;
  v247 = v538;
  sub_1B0433BE8(v555, v538, _s6LoggerVMa_0);
  v248 = v537;
  sub_1B0433BE8(v246, v537, _s6LoggerVMa_0);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v249 = sub_1B0E43988();
  v250 = sub_1B0E458D8();
  if (os_log_type_enabled(v249, v250))
  {
    v251 = swift_slowAlloc();
    v252 = swift_slowAlloc();
    *&v613 = v252;
    *v251 = 68158210;
    *(v251 + 4) = 2;
    *(v251 + 8) = 256;
    v253 = v554;
    v254 = *(v554 + 20);
    *&v555 = v240;
    v255 = *(v248 + v254);
    sub_1B04479C4(v248, _s6LoggerVMa_0);
    *(v251 + 10) = v255;
    *(v251 + 11) = 2082;
    v256 = *(v247 + *(v253 + 20) + 4);
    sub_1B04479C4(v247, _s6LoggerVMa_0);
    v257 = ConnectionID.debugDescription.getter(v256);
    v259 = sub_1B0399D64(v257, v258, &v613);

    *(v251 + 13) = v259;
    v240 = v555;
    _os_log_impl(&dword_1B0389000, v249, v250, "[%.*hhx-%{public}s] Server accepted compression.", v251, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v252);
    MEMORY[0x1B272C230](v252, -1, -1);
    MEMORY[0x1B272C230](v251, -1, -1);
  }

  else
  {
    sub_1B04479C4(v248, _s6LoggerVMa_0);

    sub_1B04479C4(v247, _s6LoggerVMa_0);
  }

  v426 = v564;
  *(v239 + 120) = v565;
  v427 = v567;
  *(v239 + 136) = v566;
  *(v239 + 152) = v427;
  *(v239 + 168) = v568;
  v428 = v560;
  *(v239 + 56) = v561;
  v429 = v563;
  *(v239 + 72) = v562;
  *(v239 + 88) = v429;
  *(v239 + 104) = v426;
  v430 = v559;
  *(v239 + 8) = v558;
  *(v239 + 24) = v430;
  *v239 = v240;
  *(v239 + 40) = v428;
  swift_storeEnumTagMultiPayload();
  return &unk_1F271B768;
}

uint64_t sub_1B0C36F00(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if (!(v3 >> 62))
  {
    if (v4 >> 62)
    {
      return 0;
    }

    return sub_1B0C1BE5C(v3, a1[1], a1[2], v4, v5, v6);
  }

  if (v3 >> 62 == 1)
  {
    if (v4 >> 62 != 1)
    {
      return 0;
    }

    return sub_1B0C1BE5C(v3, a1[1], a1[2], v4, v5, v6);
  }

  return v4 >> 62 == 2 && v4 == 0x8000000000000000 && (v6 | v5) == 0;
}

uint64_t sub_1B0C36F70(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    sub_1B0E46298();
    v2 = 0xD000000000000020;
    v1 = 0x80000001B0F2D5D0;
    goto LABEL_5;
  }

  if (a1 >> 62 == 1)
  {
    sub_1B0E46298();
    v1 = 0x80000001B0F2D5B0;
    v2 = 0xD000000000000010;
LABEL_5:
    MEMORY[0x1B2726E80](v2, v1);
    type metadata accessor for tls_protocol_version_t(0);
    sub_1B0E46508();
    MEMORY[0x1B2726E80](0x206574697573202CLL, 0xE800000000000000);
    type metadata accessor for tls_ciphersuite_t(0);
    sub_1B0E46508();
    return 0;
  }

  return 1701736302;
}

uint64_t sub_1B0C370C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 1)
  {
    result = sub_1B0C3198C(a2);
    v10[0] = result;
    v10[1] = v6;
    v10[2] = v7;
    v11 = v8;
    if (v6)
    {
      MEMORY[0x1EEE9AC00](result);
      v9[2] = v10;
      v3 = sub_1B0C32414(sub_1B0C10BD0, v9, a1);

      return v3 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      return v3 & 1;
    }

    return sub_1B0C371B0(a1, a2);
  }

  return result;
}

uint64_t sub_1B0C371B0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v19 = *MEMORY[0x1E69E9840];
  v15 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17 = &v15;
  v18 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v11 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = &v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_1B0C38270(v8, v3, a2);
  }

  else
  {
    v12 = swift_slowAlloc();
    bzero(v12, v11);
    sub_1B0C38238(v12, &v16);
    v13 = v16;
    MEMORY[0x1B272C230](v12, -1, -1);
    v9 = v13;
  }

  return v9 & 1;
}

uint64_t sub_1B0C37330(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_1B0E46A78(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (((v4 ^ v2) & 0xFFFFFFFFFFFFC000) != 0)
      {
        v9 = 1;
      }

      else
      {
        v9 = v5;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1B0C373C8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, unint64_t a7, unsigned __int8 a8)
{
  if ((a4 >> 6) <= 1u)
  {
    if (a4 >> 6)
    {
      if ((a8 & 0xC0) != 0x40)
      {
        return 0;
      }

      v9 = a8 & 0x3F;
      if ((a4 & 0x3F) != 0)
      {
        if ((a4 & 0x3F) == 1)
        {
          if (v9 != 1)
          {
            return 0;
          }
        }

        else if (v9 != 2)
        {
          return 0;
        }
      }

      else if ((a8 & 0x3F) != 0)
      {
        return 0;
      }
    }

    else
    {
      if (a8 > 0x3Fu)
      {
        return 0;
      }

      if (a3 > 1)
      {
        if (a3 == 2)
        {
          return a7 == 2;
        }

        if (a3 == 3)
        {
          return a7 == 3;
        }
      }

      else
      {
        if (!a3)
        {
          return !a7;
        }

        if (a3 == 1)
        {
          return a7 == 1;
        }
      }

      if (a7 < 4)
      {
        return 0;
      }
    }

    return (static ResponseText.__derived_struct_equals(_:_:)(a1, a2, a3, a5, a6, a7) & 1) != 0;
  }

  if (a4 >> 6 != 2)
  {
    v10 = a3 | a2;
    if (!(a3 | a2 | a1) && a4 == 192)
    {
      return a8 >= 0xC0u && !(a7 | a6 | a5) && a8 == 192;
    }

    if (a4 == 192 && a1 == 1 && !v10)
    {
      if (a8 != 192 || a5 != 1)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 2 && !v10)
    {
      if (a8 != 192 || a5 != 2)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 3 && !v10)
    {
      if (a8 != 192 || a5 != 3)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 4 && !v10)
    {
      if (a8 != 192 || a5 != 4)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 5 && !v10)
    {
      if (a8 != 192 || a5 != 5)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 6 && !v10)
    {
      if (a8 != 192 || a5 != 6)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 7 && !v10)
    {
      if (a8 != 192 || a5 != 7)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 8 && !v10)
    {
      if (a8 != 192 || a5 != 8)
      {
        return 0;
      }
    }

    else if (a8 != 192 || a5 != 9)
    {
      return 0;
    }

    return !(a7 | a6);
  }

  if ((a8 & 0xC0) != 0x80)
  {
    return 0;
  }

  if (a1 == a5 && a2 == a6)
  {
    return 1;
  }

  return sub_1B0E46A78();
}

uint64_t sub_1B0C376E8(uint64_t a1)
{
  if (*(a1 + 176) <= 6u)
  {
    return *(a1 + 176);
  }

  else
  {
    return (*a1 + 7);
  }
}

double sub_1B0C37700(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 == 2)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }
  }

  else if (a4 >> 6)
  {
    return sub_1B0A91FD0(a1, a2, a3, a4 & 0x3F);
  }

  else
  {
    return sub_1B0BD67B0(a1, a2, a3);
  }

  return result;
}

void sub_1B0C37730(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 144);
  v165[8] = *(a1 + 128);
  v165[9] = v4;
  v165[10] = *(a1 + 160);
  v166 = *(a1 + 176);
  v5 = *(a1 + 80);
  v165[4] = *(a1 + 64);
  v165[5] = v5;
  v6 = *(a1 + 112);
  v165[6] = *(a1 + 96);
  v165[7] = v6;
  v7 = *(a1 + 16);
  v165[0] = *a1;
  v165[1] = v7;
  v8 = *(a1 + 48);
  v165[2] = *(a1 + 32);
  v165[3] = v8;
  v9 = sub_1B0C376E8(v165);
  if (v9 > 5)
  {
    if (v9 == 6)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v60 = *v59;
      v61 = *(v59 + 8);
      v62 = *(v59 + 16);
      v63 = *(v59 + 24);
      v64 = a2[9];
      v161 = a2[8];
      v162 = v64;
      v163 = a2[10];
      v164 = *(a2 + 176);
      v65 = a2[5];
      v157 = a2[4];
      v158 = v65;
      v66 = a2[7];
      v159 = a2[6];
      v160 = v66;
      v67 = a2[1];
      v153 = *a2;
      v154 = v67;
      v68 = a2[3];
      v155 = a2[2];
      v156 = v68;
      if (sub_1B0C376E8(&v153) == 6)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        sub_1B0C373C8(v60, v61, v62, v63, *v69, *(v69 + 8), *(v69 + 16), *(v69 + 24));
      }
    }

    else
    {
      v31 = a2[9];
      v161 = a2[8];
      v162 = v31;
      v163 = a2[10];
      v164 = *(a2 + 176);
      v32 = a2[5];
      v157 = a2[4];
      v158 = v32;
      v33 = a2[7];
      v159 = a2[6];
      v160 = v33;
      v34 = a2[1];
      v153 = *a2;
      v154 = v34;
      v35 = a2[3];
      v155 = a2[2];
      v156 = v35;
      sub_1B0C376E8(&v153);
    }
  }

  else if (v9 > 2)
  {
    if (v9 == 3)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v138 = v70[7];
      v139 = v70[8];
      v140 = v70[9];
      v141 = v70[10];
      *&v134[32] = v70[3];
      v135 = v70[4];
      v136 = v70[5];
      v137 = v70[6];
      v133 = *v70;
      *v134 = v70[1];
      *&v134[16] = v70[2];
      v164 = *(a2 + 176);
      v71 = a2[10];
      v162 = a2[9];
      v163 = v71;
      v72 = a2[8];
      v160 = a2[7];
      v161 = v72;
      v73 = a2[6];
      v158 = a2[5];
      v159 = v73;
      v74 = a2[4];
      v156 = a2[3];
      v157 = v74;
      v75 = a2[2];
      v154 = a2[1];
      v155 = v75;
      v153 = *a2;
      if (sub_1B0C376E8(&v153) == 3)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        *&v149[32] = v76[7];
        v150 = v76[8];
        v151 = v76[9];
        v152 = v76[10];
        *&v147[32] = v76[3];
        v148 = v76[4];
        *v149 = v76[5];
        *&v149[16] = v76[6];
        v146 = *v76;
        *v147 = v76[1];
        *&v147[16] = v76[2];
        static ServerID.__derived_struct_equals(_:_:)(&v133, &v146);
      }
    }

    else if (v9 == 4)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v170 = *v36;
      v37 = *(v36 + 2);
      v38 = *(v36 + 40);
      v167 = *(v36 + 24);
      v168 = v38;
      v169 = *(v36 + 7);
      v39 = a2[9];
      v161 = a2[8];
      v162 = v39;
      v163 = a2[10];
      v164 = *(a2 + 176);
      v40 = a2[5];
      v157 = a2[4];
      v158 = v40;
      v41 = a2[7];
      v159 = a2[6];
      v160 = v41;
      v42 = a2[3];
      v155 = a2[2];
      v156 = v42;
      v43 = a2[1];
      v153 = *a2;
      v154 = v43;
      if (sub_1B0C376E8(&v153) == 4)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v145 = *v44;
        v45 = *(v44 + 2);
        v46 = *(v44 + 40);
        v142 = *(v44 + 24);
        v143 = v46;
        v144 = *(v44 + 7);
        if (v37)
        {
          if (v45)
          {
            v131 = v145;
            *v132 = v45;
            *&v132[8] = v142;
            *&v132[24] = v143;
            *&v132[40] = v144;
            v146 = v145;
            *v147 = *v132;
            *&v147[16] = *&v132[16];
            *&v147[32] = *&v132[32];
            v128 = v170;
            v130 = v169;
            *&v129[24] = v168;
            *&v129[8] = v167;
            *v129 = v37;
            sub_1B0C3A95C(a1, &v133);
            sub_1B0C3A95C(a2, &v133);
            static PushRegistrationInfo.__derived_struct_equals(_:_:)(&v128, &v146);
            sub_1B0398EFC(&v131, &qword_1EB6E59E8, &unk_1B0EDA810);
            v133 = v170;
            *&v134[8] = v167;
            *&v134[24] = v168;
            *v134 = v37;
            *&v134[40] = v169;
            sub_1B0398EFC(&v133, &qword_1EB6E59E8, &unk_1B0EDA810);
            return;
          }
        }

        else if (!v45)
        {
          v146 = v170;
          *&v147[8] = v167;
          *&v147[24] = v168;
          *v147 = 0;
          *&v147[40] = v169;
          sub_1B0C3A95C(a1, &v133);
          sub_1B0C3A95C(a2, &v133);
          sub_1B0398EFC(&v146, &qword_1EB6E59E8, &unk_1B0EDA810);
          return;
        }

        v146 = v170;
        *&v147[8] = v167;
        *&v147[24] = v168;
        v148 = v145;
        *&v149[24] = v143;
        *v147 = v37;
        *&v147[40] = v169;
        *v149 = v45;
        *&v149[40] = v144;
        *&v149[8] = v142;
        sub_1B0C3A95C(a1, &v133);
        sub_1B0C3A95C(a2, &v133);
        sub_1B0398EFC(&v146, &qword_1EB6E5A00, &unk_1B0EDBCF0);
      }
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v105 = *v104;
      v106 = *(v104 + 8);
      v107 = *(v104 + 16);
      v108 = *(v104 + 24);
      v109 = a2[9];
      v161 = a2[8];
      v162 = v109;
      v163 = a2[10];
      v164 = *(a2 + 176);
      v110 = a2[5];
      v157 = a2[4];
      v158 = v110;
      v111 = a2[7];
      v159 = a2[6];
      v160 = v111;
      v112 = a2[1];
      v153 = *a2;
      v154 = v112;
      v113 = a2[3];
      v155 = a2[2];
      v156 = v113;
      if (sub_1B0C376E8(&v153) == 5)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        static PushRegistrationResponse.__derived_struct_equals(_:_:)(v105, v106, v107, v108, *v114, *(v114 + 8), *(v114 + 16), *(v114 + 24));
      }
    }
  }

  else if (v9)
  {
    if (v9 != 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v79 = *v77;
      v78 = v77[1];
      v125 = v77[2];
      v127 = v77[3];
      v80 = v77[4];
      v81 = v77[5];
      v82 = v77[6];
      v83 = v77[7];
      v85 = v77[8];
      v84 = v77[9];
      v121 = v77[10];
      v119 = v77[11];
      v123 = v77[12];
      v86 = a2[9];
      v161 = a2[8];
      v162 = v86;
      v163 = a2[10];
      v164 = *(a2 + 176);
      v87 = a2[7];
      v159 = a2[6];
      v160 = v87;
      v88 = a2[5];
      v157 = a2[4];
      v158 = v88;
      v89 = a2[3];
      v155 = a2[2];
      v156 = v89;
      v90 = a2[1];
      v153 = *a2;
      v154 = v90;
      if (sub_1B0C376E8(&v153) != 2)
      {
        return;
      }

      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v92 = *v91;
      v93 = v91[1];
      v94 = v91[2];
      v95 = *(v91 + 3);
      v96 = v91[7];
      v97 = v91[10];
      v98 = v91[11];
      v99 = v91[12];
      if ((v83 & 0x1000000000000000) != 0)
      {
        v115 = *(v91 + 5);
        v116 = *(v91 + 4);
        *&v146 = v79;
        *(&v146 + 1) = v78;
        *v147 = v125;
        *&v147[8] = v127;
        *&v147[16] = v80;
        *&v147[24] = v81;
        *&v147[32] = v82;
        *&v147[40] = v83 & 0xEFFFFFFFFFFFFFFFLL;
        *&v148 = v85;
        *(&v148 + 1) = v84;
        if ((v96 & 0x1000000000000000) == 0)
        {
          return;
        }

        v100 = v98;
        v101 = v97;
        v102 = v99;
        *&v133 = v92;
        *(&v133 + 1) = v93;
        *&v134[8] = v95;
        *&v134[24] = v115;
        *v134 = v94;
        *&v134[40] = v96 & 0xEFFFFFFFFFFFFFFFLL;
        v135 = v116;
        if ((sub_1B0C0FEBC(&v146, &v133) & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if ((v96 & 0x1000000000000000) != 0)
        {
          return;
        }

        v100 = v91[11];
        v101 = v91[10];
        v102 = v91[12];
        if (v79 != v92 || v78 != v93)
        {
          v117 = v91[3];
          v103 = sub_1B0E46A78();
          *&v95 = v117;
          if ((v103 & 1) == 0)
          {
            return;
          }
        }

        if ((v125 != v94 || v127 != v95) && (sub_1B0E46A78() & 1) == 0)
        {
          return;
        }
      }

      if (v123 && v102)
      {
        sub_1B04420D8(v101);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        static ResponseText.__derived_struct_equals(_:_:)(v121, v119, v123, v101, v100, v102);
        sub_1B0447F00(v101);
      }

      return;
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v11 = *v10;
    v124 = *(v10 + 1);
    v126 = *(v10 + 3);
    v12 = v10[5];
    v13 = v10[6];
    v14 = a2[3];
    v155 = a2[2];
    v156 = v14;
    v15 = a2[7];
    v159 = a2[6];
    v160 = v15;
    v16 = a2[5];
    v157 = a2[4];
    v158 = v16;
    v164 = *(a2 + 176);
    v17 = a2[10];
    v162 = a2[9];
    v163 = v17;
    v161 = a2[8];
    v18 = a2[1];
    v153 = *a2;
    v154 = v18;
    if (sub_1B0C376E8(&v153) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v20 = *v19;
      v21 = *(v11 + 16);
      if (v21 == *(*v19 + 16))
      {
        v120 = *(v19 + 3);
        v122 = *(v19 + 1);
        v118 = *(v19 + 5);
        if (!v21 || v11 == v20)
        {
LABEL_12:
          v131 = v124;
          *v132 = v126;
          *&v132[16] = v12;
          *&v132[24] = v13;
          v128 = v122;
          *v129 = v120;
          *&v129[16] = v118;
          sub_1B0BEFCC8(&v131, &v128);
        }

        else
        {
          v22 = (v11 + 32);
          v23 = (v20 + 32);
          while (1)
          {
            v146 = *v22;
            v24 = v22[1];
            v25 = v22[2];
            v26 = v22[4];
            *&v147[32] = v22[3];
            v148 = v26;
            *v147 = v24;
            *&v147[16] = v25;
            v133 = *v23;
            v27 = v23[1];
            v28 = v23[2];
            v29 = v23[4];
            *&v134[32] = v23[3];
            v135 = v29;
            *v134 = v27;
            *&v134[16] = v28;
            sub_1B069506C(&v146, &v128);
            sub_1B069506C(&v133, &v128);
            v30 = static Credentials.__derived_enum_equals(_:_:)(&v146, &v133);
            sub_1B070BB30(&v133);
            sub_1B070BB30(&v146);
            if ((v30 & 1) == 0)
            {
              break;
            }

            v22 += 5;
            v23 += 5;
            if (!--v21)
            {
              goto LABEL_12;
            }
          }
        }
      }
    }
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v48 = *v47;
    v49 = v47[1];
    v51 = v47[2];
    v50 = v47[3];
    v52 = a2[9];
    v161 = a2[8];
    v162 = v52;
    v163 = a2[10];
    v164 = *(a2 + 176);
    v53 = a2[5];
    v157 = a2[4];
    v158 = v53;
    v54 = a2[7];
    v159 = a2[6];
    v160 = v54;
    v55 = a2[1];
    v153 = *a2;
    v154 = v55;
    v56 = a2[3];
    v155 = a2[2];
    v156 = v56;
    if (!sub_1B0C376E8(&v153))
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v58 = v57[3];
      if ((static ResponseText.__derived_struct_equals(_:_:)(v48, v49, v51, *v57, v57[1], v57[2]) & 1) != 0 && v50 && v58)
      {
        sub_1B044DA4C(v50, v58);
      }
    }
  }
}

uint64_t sub_1B0C381DC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 32 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1B0C38238@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0C38270(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1B0C38270(uint64_t result, uint64_t a2, uint64_t a3)
{
  v26 = result;
  v25 = 0;
  v3 = 0;
  v4 = *(a2 + 16);
  v28 = a2 + 32;
  v33 = a3 + 56;
  v27 = v4;
  while (2)
  {
    if (v3 == v4)
    {
      return 0;
    }

    v5 = v3;
    while (1)
    {
      if (v5 >= v4)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      if (__OFADD__(v5, 1))
      {
        goto LABEL_30;
      }

      v29 = v5 + 1;
      v6 = (v28 + 32 * v5);
      v8 = *v6;
      v7 = v6[1];
      v9 = v6[2];
      v10 = *(v6 + 24);
      sub_1B0E46C28();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v32 = v10;
      v31 = v9;
      sub_1B0E46C68();
      if (!v10)
      {
        MEMORY[0x1B2728DB0](v9 >> 14);
      }

      v11 = sub_1B0E46CB8();
      v12 = -1 << *(a3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & *(v33 + 8 * (v13 >> 6))) == 0)
      {
LABEL_4:

        goto LABEL_5;
      }

      v16 = ~v12;
      v17 = *(a3 + 48);
      while (1)
      {
        v19 = v17 + 32 * v13;
        v20 = *(v19 + 16);
        v21 = *(v19 + 24);
        v22 = *v19 == v8 && *(v19 + 8) == v7;
        if (!v22 && (sub_1B0E46A78() & 1) == 0)
        {
          goto LABEL_15;
        }

        if ((v21 & 1) == 0)
        {
          break;
        }

        if (v32)
        {
          goto LABEL_23;
        }

LABEL_15:
        v13 = (v13 + 1) & v16;
        v14 = v13 >> 6;
        v15 = 1 << v13;
        if ((*(v33 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_4;
        }
      }

      v18 = v32;
      if (((v20 ^ v31) & 0xFFFFFFFFFFFFC000) != 0)
      {
        v18 = 1;
      }

      if (v18)
      {
        goto LABEL_15;
      }

LABEL_23:

      v23 = *(v26 + 8 * v14);
      *(v26 + 8 * v14) = v23 | v15;
      if ((v23 & v15) == 0)
      {
        break;
      }

LABEL_5:
      v5 = v29;
      v4 = v27;
      if (v29 == v27)
      {
        return 0;
      }
    }

    v24 = v25 + 1;
    v3 = v29;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_31;
    }

    ++v25;
    v22 = v24 == *(a3 + 16);
    v4 = v27;
    result = 1;
    if (!v22)
    {
      continue;
    }

    return result;
  }
}

unint64_t sub_1B0C384B8(uint64_t a1, NSObject *a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t), uint64_t a5)
{
  v266 = a5;
  v267 = a4;
  v290 = a3;
  v287 = a2;
  v286 = type metadata accessor for UnauthenticatedState(0);
  MEMORY[0x1EEE9AC00](v286);
  v282 = &v263 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v283);
  v278 = &v263 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v279 = &v263 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v285 = &v263 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v284 = &v263 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v263 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v263 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v268 = &v263 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v269 = &v263 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v264 = &v263 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v265 = &v263 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v273 = &v263 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v275 = &v263 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v272 = &v263 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v274 = &v263 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v270 = &v263 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v271 = &v263 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v280 = &v263 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v281 = &v263 - v43;
  v44 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v44);
  v276 = &v263 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = (&v263 - v47);
  MEMORY[0x1EEE9AC00](v49);
  v51 = (&v263 - v50);
  MEMORY[0x1EEE9AC00](v52);
  v54 = (&v263 - v53);
  MEMORY[0x1EEE9AC00](v55);
  v57 = (&v263 - v56);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E59F8, &unk_1B0EDA830);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v60 = &v263 - v59;
  v62 = *(v61 + 56);
  v277 = a1;
  sub_1B0433BE8(a1, &v263 - v59, type metadata accessor for UntaggedResponse);
  v288 = v62;
  sub_1B0433BE8(v290, &v60[v62], type metadata accessor for UnauthenticatedState);
  v289 = v60;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v64 = v289;
        if (EnumCaseMultiPayload == 4)
        {
          sub_1B0433BE8(v289, v48, type metadata accessor for UntaggedResponse);
          v66 = *v48;
          v65 = v48[1];
          v67 = v48[2];
          v68 = v287;
          v69 = v281;
          sub_1B0433BE8(v287, v281, _s6LoggerVMa_0);
          v70 = v280;
          sub_1B0433BE8(v68, v280, _s6LoggerVMa_0);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B04420D8(v66);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v71 = sub_1B0E43988();
          v72 = sub_1B0E458E8();
          sub_1B0447F00(v66);

          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v287 = swift_slowAlloc();
            *&v291 = v287;
            *v73 = 68158466;
            *(v73 + 4) = 2;
            *(v73 + 8) = 256;
            v74 = v70;
            v75 = v283;
            v76 = *(v74 + *(v283 + 20));
            sub_1B04479C4(v74, _s6LoggerVMa_0);
            *(v73 + 10) = v76;
            *(v73 + 11) = 2082;
            v77 = v69;
            v78 = *(v69 + *(v75 + 20) + 4);
            sub_1B04479C4(v77, _s6LoggerVMa_0);
            v79 = ConnectionID.debugDescription.getter(v78);
            v81 = sub_1B0399D64(v79, v80, &v291);

            *(v73 + 13) = v81;
            *(v73 + 21) = 2082;
            v82 = ResponseText.debugDescription.getter(v66, v65, v67);
            v84 = sub_1B0399D64(v82, v83, &v291);

            *(v73 + 23) = v84;
            _os_log_impl(&dword_1B0389000, v71, v72, "[%.*hhx-%{public}s] Server sent BYE: %{public}s", v73, 0x1Fu);
            v85 = v287;
            swift_arrayDestroy();
            v64 = v289;
            MEMORY[0x1B272C230](v85, -1, -1);
            MEMORY[0x1B272C230](v73, -1, -1);
          }

          else
          {
            sub_1B04479C4(v70, _s6LoggerVMa_0);

            sub_1B04479C4(v69, _s6LoggerVMa_0);
          }

          v164 = v282;
          v165 = v290;
          sub_1B0C3A6F0(v290, v282, type metadata accessor for UnauthenticatedState);
          if (swift_getEnumCaseMultiPayload() != 15)
          {
            sub_1B04479C4(v164, type metadata accessor for UnauthenticatedState);
          }

          v166 = sub_1B0BCE634(v66);
          if (v168 == 4)
          {
            v166 = 0;
            v167 = 0;
            v168 = 0;
            v169 = -64;
          }

          else
          {
            v169 = 0;
          }

          *v165 = v166;
          *(v165 + 8) = v167;
          *(v165 + 16) = v168;
          *(v165 + 24) = v169;
          swift_storeEnumTagMultiPayload();
          goto LABEL_43;
        }

LABEL_71:
        v223 = v287;
        v224 = v279;
        sub_1B0433BE8(v287, v279, _s6LoggerVMa_0);
        v225 = v278;
        sub_1B0433BE8(v223, v278, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v226 = v276;
        sub_1B0433BE8(v277, v276, type metadata accessor for UntaggedResponse);
        v227 = sub_1B0E43988();
        v228 = sub_1B0E458E8();
        if (os_log_type_enabled(v227, v228))
        {
          v229 = swift_slowAlloc();
          v290 = swift_slowAlloc();
          *&v291 = v290;
          *v229 = 68158466;
          *(v229 + 4) = 2;
          *(v229 + 8) = 256;
          v230 = v283;
          v231 = *(v225 + *(v283 + 20));
          sub_1B04479C4(v225, _s6LoggerVMa_0);
          *(v229 + 10) = v231;
          *(v229 + 11) = 2082;
          v232 = *(v224 + *(v230 + 20) + 4);
          sub_1B04479C4(v224, _s6LoggerVMa_0);
          v233 = ConnectionID.debugDescription.getter(v232);
          v235 = sub_1B0399D64(v233, v234, &v291);

          *(v229 + 13) = v235;
          *(v229 + 21) = 2080;
          v236 = UntaggedResponse.name.getter();
          v238 = v237;
          sub_1B04479C4(v226, type metadata accessor for UntaggedResponse);
          v239 = sub_1B0399D64(v236, v238, &v291);

          *(v229 + 23) = v239;
          _os_log_impl(&dword_1B0389000, v227, v228, "[%.*hhx-%{public}s] Ignoring unexpected %s.", v229, 0x1Fu);
          v240 = v290;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v240, -1, -1);
          MEMORY[0x1B272C230](v229, -1, -1);
        }

        else
        {
          sub_1B04479C4(v225, _s6LoggerVMa_0);

          sub_1B04479C4(v226, type metadata accessor for UntaggedResponse);
          sub_1B04479C4(v224, _s6LoggerVMa_0);
        }

        sub_1B0398EFC(v64, &qword_1EB6E59F8, &unk_1B0EDA830);
        return 0xFFFFFFFF00000000;
      }

      v113 = v290;
      sub_1B04479C4(v290, type metadata accessor for UnauthenticatedState);
      sub_1B0433BE8(v289, v57, type metadata accessor for UntaggedResponse);
      v114 = *v57;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        sub_1B0447F00(v114);

        v173 = v287;
        v174 = v274;
        sub_1B0433BE8(v287, v274, _s6LoggerVMa_0);
        v175 = v272;
        sub_1B0433BE8(v173, v272, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v176 = sub_1B0E43988();
        v177 = sub_1B0E458E8();
        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          *&v291 = v179;
          *v178 = 68158210;
          *(v178 + 4) = 2;
          *(v178 + 8) = 256;
          v180 = v283;
          v181 = *(v175 + *(v283 + 20));
          sub_1B04479C4(v175, _s6LoggerVMa_0);
          *(v178 + 10) = v181;
          *(v178 + 11) = 2082;
          v182 = *(v174 + *(v180 + 20) + 4);
          sub_1B04479C4(v174, _s6LoggerVMa_0);
          v183 = ConnectionID.debugDescription.getter(v182);
          v185 = sub_1B0399D64(v183, v184, &v291);

          *(v178 + 13) = v185;
          _os_log_impl(&dword_1B0389000, v176, v177, "[%.*hhx-%{public}s] Received unexpected PREAUTH greeting from server.", v178, 0x15u);
          __swift_destroy_boxed_opaque_existential_0Tm(v179);
          MEMORY[0x1B272C230](v179, -1, -1);
          MEMORY[0x1B272C230](v178, -1, -1);
        }

        else
        {
          sub_1B04479C4(v175, _s6LoggerVMa_0);

          sub_1B04479C4(v174, _s6LoggerVMa_0);
        }

        v203 = v288;
        v202 = v289;
        *(v113 + 8) = 0;
        *(v113 + 16) = 0;
        *v113 = 3;
        *(v113 + 24) = -64;
        swift_storeEnumTagMultiPayload();
        sub_1B04479C4(v202 + v203, type metadata accessor for UnauthenticatedState);
        v171 = v202;
        goto LABEL_46;
      }

      v115 = v287;
      v116 = v271;
      sub_1B0433BE8(v287, v271, _s6LoggerVMa_0);
      v117 = v270;
      sub_1B0433BE8(v115, v270, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v118 = sub_1B0E43988();
      v119 = sub_1B0E458D8();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        *&v291 = v121;
        *v120 = 68158210;
        *(v120 + 4) = 2;
        *(v120 + 8) = 256;
        v122 = v283;
        v123 = v117;
        v124 = *(v117 + *(v283 + 20));
        sub_1B04479C4(v123, _s6LoggerVMa_0);
        *(v120 + 10) = v124;
        *(v120 + 11) = 2082;
        v125 = v116;
        v126 = *(v116 + *(v122 + 20) + 4);
        v113 = v290;
        sub_1B04479C4(v125, _s6LoggerVMa_0);
        v127 = ConnectionID.debugDescription.getter(v126);
        v129 = sub_1B0399D64(v127, v128, &v291);

        *(v120 + 13) = v129;
        _os_log_impl(&dword_1B0389000, v118, v119, "[%.*hhx-%{public}s] Received PREAUTH greeting from server. Requesting credentials.", v120, 0x15u);
        __swift_destroy_boxed_opaque_existential_0Tm(v121);
        MEMORY[0x1B272C230](v121, -1, -1);
        MEMORY[0x1B272C230](v120, -1, -1);
      }

      else
      {
        sub_1B04479C4(v117, _s6LoggerVMa_0);

        sub_1B04479C4(v116, _s6LoggerVMa_0);
      }

      v200 = ~v114 & 0xF000000000000007;

      v201 = v289;
      if (v200)
      {
        if (((v114 >> 59) & 0x1E | (v114 >> 2) & 1) == 1)
        {
          v200 = *((v114 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0447F00(v114);
        }

        else
        {
          sub_1B0447F00(v114);
          v200 = 0;
        }
      }

      *v113 = v200;
      swift_storeEnumTagMultiPayload();
      sub_1B04479C4(v201, type metadata accessor for UntaggedResponse);
      return 0x8000000000000001;
    }

    else
    {
      v64 = v289;
      sub_1B0433BE8(v289, v54, type metadata accessor for UntaggedResponse);
      v89 = *v54;
      v90 = v54[2];
      v91 = v288;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        sub_1B0447F00(v89);

        v151 = v287;
        v152 = v275;
        sub_1B0433BE8(v287, v275, _s6LoggerVMa_0);
        v153 = v273;
        sub_1B0433BE8(v151, v273, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v154 = sub_1B0E43988();
        v155 = sub_1B0E458D8();
        if (os_log_type_enabled(v154, v155))
        {
          v156 = swift_slowAlloc();
          v157 = swift_slowAlloc();
          *&v291 = v157;
          *v156 = 68158210;
          *(v156 + 4) = 2;
          *(v156 + 8) = 256;
          v158 = v283;
          v159 = *(v153 + *(v283 + 20));
          sub_1B04479C4(v153, _s6LoggerVMa_0);
          *(v156 + 10) = v159;
          *(v156 + 11) = 2082;
          v160 = *(v152 + *(v158 + 20) + 4);
          sub_1B04479C4(v152, _s6LoggerVMa_0);
          v161 = ConnectionID.debugDescription.getter(v160);
          v163 = sub_1B0399D64(v161, v162, &v291);
          v91 = v288;

          *(v156 + 13) = v163;
          _os_log_impl(&dword_1B0389000, v154, v155, "[%.*hhx-%{public}s] Untagged OK from server.", v156, 0x15u);
          __swift_destroy_boxed_opaque_existential_0Tm(v157);
          MEMORY[0x1B272C230](v157, -1, -1);
          MEMORY[0x1B272C230](v156, -1, -1);
        }

        else
        {
          sub_1B04479C4(v153, _s6LoggerVMa_0);

          sub_1B04479C4(v152, _s6LoggerVMa_0);
        }

        v170 = v64 + v91;
        goto LABEL_44;
      }

      v92 = v287;
      if ((~v89 & 0xF000000000000007) == 0 || ((v89 >> 59) & 0x1E | (v89 >> 2) & 1) != 1)
      {
        sub_1B04479C4(v290, type metadata accessor for UnauthenticatedState);
        v186 = v269;
        sub_1B0433BE8(v92, v269, _s6LoggerVMa_0);
        v187 = v268;
        sub_1B0433BE8(v92, v268, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v188 = sub_1B0E43988();
        v189 = sub_1B0E458D8();
        if (os_log_type_enabled(v188, v189))
        {
          v190 = swift_slowAlloc();
          v191 = swift_slowAlloc();
          v288 = v89;
          v192 = v191;
          *&v291 = v191;
          *v190 = 68158210;
          *(v190 + 4) = 2;
          *(v190 + 8) = 256;
          v287 = v90;
          v193 = v283;
          v194 = v187;
          v195 = *(v187 + *(v283 + 20));
          sub_1B04479C4(v194, _s6LoggerVMa_0);
          *(v190 + 10) = v195;
          *(v190 + 11) = 2082;
          v196 = *(v186 + *(v193 + 20) + 4);
          sub_1B04479C4(v186, _s6LoggerVMa_0);
          v197 = ConnectionID.debugDescription.getter(v196);
          v199 = sub_1B0399D64(v197, v198, &v291);

          *(v190 + 13) = v199;
          _os_log_impl(&dword_1B0389000, v188, v189, "[%.*hhx-%{public}s] Received OK greeting from server.", v190, 0x15u);
          __swift_destroy_boxed_opaque_existential_0Tm(v192);
          MEMORY[0x1B272C230](v192, -1, -1);
          MEMORY[0x1B272C230](v190, -1, -1);

          sub_1B0447F00(v288);
        }

        else
        {
          sub_1B04479C4(v187, _s6LoggerVMa_0);
          sub_1B0447F00(v89);

          sub_1B04479C4(v186, _s6LoggerVMa_0);
        }

        swift_storeEnumTagMultiPayload();
        goto LABEL_45;
      }

      v93 = *((v89 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v94 = v265;
      sub_1B0433BE8(v287, v265, _s6LoggerVMa_0);
      v95 = v264;
      sub_1B0433BE8(v92, v264, _s6LoggerVMa_0);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v96 = sub_1B0E43988();
      v97 = sub_1B0E458D8();

      if (os_log_type_enabled(v96, v97))
      {
        LODWORD(v284) = v97;
        v286 = v96;
        v98 = swift_slowAlloc();
        v282 = swift_slowAlloc();
        *&v291 = v282;
        *v98 = 68158466;
        *(v98 + 4) = 2;
        *(v98 + 8) = 256;
        v99 = v283;
        v100 = *(v95 + *(v283 + 20));
        sub_1B04479C4(v95, _s6LoggerVMa_0);
        *(v98 + 10) = v100;
        *(v98 + 11) = 2082;
        v101 = *(v94 + *(v99 + 20) + 4);
        sub_1B04479C4(v94, _s6LoggerVMa_0);
        v102 = ConnectionID.debugDescription.getter(v101);
        v104 = sub_1B0399D64(v102, v103, &v291);

        *(v98 + 13) = v104;
        v285 = v98;
        *(v98 + 21) = 2080;
        v105 = *(v93 + 16);
        v106 = MEMORY[0x1E69E7CC0];
        v288 = v93;
        if (v105)
        {
          *&v297 = MEMORY[0x1E69E7CC0];
          sub_1B041D32C(0, v105, 0);
          v106 = v297;
          v107 = (v93 + 40);
          do
          {
            v108 = *(v107 - 1);
            v109 = *v107;
            *&v297 = v106;
            v111 = *(v106 + 16);
            v110 = *(v106 + 24);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            if (v111 >= v110 >> 1)
            {
              sub_1B041D32C((v110 > 1), v111 + 1, 1);
              v106 = v297;
            }

            *(v106 + 16) = v111 + 1;
            v112 = v106 + 16 * v111;
            *(v112 + 32) = v108;
            *(v112 + 40) = v109;
            v107 += 4;
            --v105;
          }

          while (v105);
        }

        *&v297 = v106;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
        sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0, MEMORY[0x1E69E6310]);
        v243 = sub_1B0E448E8();
        v245 = v244;

        v246 = sub_1B0399D64(v243, v245, &v291);

        v247 = v285;
        *(v285 + 23) = v246;
        v248 = v286;
        _os_log_impl(&dword_1B0389000, v286, v284, "[%.*hhx-%{public}s] Received OK greeting with capabilities from server: %s.", v247, 0x1Fu);
        v249 = v282;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v249, -1, -1);
        MEMORY[0x1B272C230](v247, -1, -1);

        v64 = v289;
        v92 = v287;
        v93 = v288;
      }

      else
      {
        sub_1B04479C4(v95, _s6LoggerVMa_0);

        v242 = sub_1B04479C4(v94, _s6LoggerVMa_0);
      }

      v267(&v291, v242);
      v250 = sub_1B0449908(v93, &v291, v92);
      v297 = v291;
      v298 = v292;
      sub_1B044A66C(&v297);
      v295 = v293;
      v296 = v294;
      sub_1B044A6B4(&v295);

      sub_1B0447F00(v89);

      sub_1B04479C4(v64, type metadata accessor for UntaggedResponse);
      return v250;
    }
  }

  v86 = v16;
  v87 = v284;
  v88 = v285;
  v64 = v289;
  if ((EnumCaseMultiPayload - 21) < 2)
  {
LABEL_43:
    v170 = v64 + v288;
LABEL_44:
    sub_1B04479C4(v170, type metadata accessor for UnauthenticatedState);
LABEL_45:
    v171 = v64;
LABEL_46:
    sub_1B04479C4(v171, type metadata accessor for UntaggedResponse);
    return 0xFFFFFFFF00000000;
  }

  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      goto LABEL_71;
    }

    goto LABEL_43;
  }

  sub_1B0433BE8(v289, v51, type metadata accessor for UntaggedResponse);
  v130 = *v51;
  v131 = v288;
  v132 = swift_getEnumCaseMultiPayload();
  switch(v132)
  {
    case 2:

      v170 = v64 + v131;
      goto LABEL_44;
    case 12:
      v204 = v287;
      sub_1B0433BE8(v287, v19, _s6LoggerVMa_0);
      v205 = v86;
      sub_1B0433BE8(v204, v86, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v206 = sub_1B0E43988();
      v207 = sub_1B0E45908();

      if (os_log_type_enabled(v206, v207))
      {
        LODWORD(v288) = v207;
        v208 = swift_slowAlloc();
        v286 = swift_slowAlloc();
        *&v291 = v286;
        *v208 = 68158466;
        *(v208 + 4) = 2;
        *(v208 + 8) = 256;
        v209 = v283;
        v210 = *(v205 + *(v283 + 20));
        sub_1B04479C4(v205, _s6LoggerVMa_0);
        *(v208 + 10) = v210;
        *(v208 + 11) = 2082;
        v211 = *&v19[*(v209 + 20) + 4];
        sub_1B04479C4(v19, _s6LoggerVMa_0);
        v212 = ConnectionID.debugDescription.getter(v211);
        v214 = sub_1B0399D64(v212, v213, &v291);

        *(v208 + 13) = v214;
        *(v208 + 21) = 2082;
        v215 = *(v130 + 16);
        v216 = MEMORY[0x1E69E7CC0];
        if (v215)
        {
          v285 = v206;
          *&v297 = MEMORY[0x1E69E7CC0];
          sub_1B041D32C(0, v215, 0);
          v216 = v297;
          v217 = (v130 + 40);
          do
          {
            v218 = *(v217 - 1);
            v219 = *v217;
            *&v297 = v216;
            v221 = *(v216 + 16);
            v220 = *(v216 + 24);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            if (v221 >= v220 >> 1)
            {
              sub_1B041D32C((v220 > 1), v221 + 1, 1);
              v216 = v297;
            }

            *(v216 + 16) = v221 + 1;
            v222 = v216 + 16 * v221;
            *(v222 + 32) = v218;
            *(v222 + 40) = v219;
            v217 += 4;
            --v215;
          }

          while (v215);
          v206 = v285;
        }

        *&v297 = v216;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
        sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0, MEMORY[0x1E69E6310]);
        v251 = sub_1B0E448E8();
        v253 = v252;

        v254 = sub_1B0399D64(v251, v253, &v291);

        *(v208 + 23) = v254;
        _os_log_impl(&dword_1B0389000, v206, v288, "[%.*hhx-%{public}s] Got pre-auth capabilities: %{public}s.", v208, 0x1Fu);
        v255 = v286;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v255, -1, -1);
        MEMORY[0x1B272C230](v208, -1, -1);

        v64 = v289;
        v204 = v287;
      }

      else
      {
        sub_1B04479C4(v86, _s6LoggerVMa_0);

        v241 = sub_1B04479C4(v19, _s6LoggerVMa_0);
      }

      v267(&v291, v241);
      v256 = sub_1B0449908(v130, &v291, v204);
      v297 = v291;
      v298 = v292;
      sub_1B044A66C(&v297);
      v295 = v293;
      v296 = v294;
      sub_1B044A6B4(&v295);

      sub_1B04479C4(v64, type metadata accessor for UntaggedResponse);
      return v256;
    case 15:
      v133 = v287;
      sub_1B0433BE8(v287, v87, _s6LoggerVMa_0);
      sub_1B0433BE8(v133, v88, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v134 = sub_1B0E43988();
      v135 = sub_1B0E45908();

      if (os_log_type_enabled(v134, v135))
      {
        LODWORD(v288) = v135;
        v136 = swift_slowAlloc();
        v286 = swift_slowAlloc();
        *&v291 = v286;
        *v136 = 68158466;
        *(v136 + 4) = 2;
        *(v136 + 8) = 256;
        v137 = v283;
        v138 = *(v88 + *(v283 + 20));
        sub_1B04479C4(v88, _s6LoggerVMa_0);
        *(v136 + 10) = v138;
        *(v136 + 11) = 2082;
        v139 = *(v87 + *(v137 + 20) + 4);
        sub_1B04479C4(v87, _s6LoggerVMa_0);
        v140 = ConnectionID.debugDescription.getter(v139);
        v142 = sub_1B0399D64(v140, v141, &v291);

        *(v136 + 13) = v142;
        *(v136 + 21) = 2082;
        v143 = *(v130 + 16);
        v144 = MEMORY[0x1E69E7CC0];
        if (v143)
        {
          v285 = v134;
          *&v297 = MEMORY[0x1E69E7CC0];
          sub_1B041D32C(0, v143, 0);
          v144 = v297;
          v145 = (v130 + 40);
          do
          {
            v146 = *(v145 - 1);
            v147 = *v145;
            *&v297 = v144;
            v148 = *(v144 + 16);
            v149 = *(v144 + 24);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            if (v148 >= v149 >> 1)
            {
              sub_1B041D32C((v149 > 1), v148 + 1, 1);
              v144 = v297;
            }

            *(v144 + 16) = v148 + 1;
            v150 = v144 + 16 * v148;
            *(v150 + 32) = v146;
            *(v150 + 40) = v147;
            v145 += 4;
            --v143;
          }

          while (v143);
          v134 = v285;
        }

        *&v297 = v144;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
        sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0, MEMORY[0x1E69E6310]);
        v257 = sub_1B0E448E8();
        v259 = v258;

        v260 = sub_1B0399D64(v257, v259, &v291);

        *(v136 + 23) = v260;
        _os_log_impl(&dword_1B0389000, v134, v288, "[%.*hhx-%{public}s] Got post-auth capabilities: %{public}s.", v136, 0x1Fu);
        v261 = v286;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v261, -1, -1);
        MEMORY[0x1B272C230](v136, -1, -1);

        v64 = v289;
        v133 = v287;
      }

      else
      {
        sub_1B04479C4(v88, _s6LoggerVMa_0);

        sub_1B04479C4(v87, _s6LoggerVMa_0);
      }

      v262 = sub_1B0C32E28(v130, v133);

      sub_1B04479C4(v64, type metadata accessor for UntaggedResponse);
      return v262;
    default:

      goto LABEL_71;
  }
}