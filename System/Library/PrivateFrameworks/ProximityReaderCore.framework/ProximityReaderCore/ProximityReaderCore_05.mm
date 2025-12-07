uint64_t sub_26120A284()
{
  v3 = *v0;
  sub_26121D5B0();
  IdentityReaderErrorInternal.Code.hash(into:)(v2);
  return sub_26121D5D0();
}

uint64_t sub_26120A2D4(uint64_t a1)
{
  v4 = *v1;
  sub_26121D5B0();
  IdentityReaderErrorInternal.Code.hash(into:)(v3);
  return sub_26121D5D0();
}

uint64_t IdentityReaderErrorInternal.code.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_26120BF94(v2, v3);
}

uint64_t IdentityReaderErrorInternal.debugDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

__n128 IdentityReaderErrorInternal.init(code:debugDescription:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u64[0] = a2;
  a4[1].n128_u64[1] = a3;
  return result;
}

void IdentityReaderErrorInternal.init(_bridgedNSError:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = sub_26121CC80();
  v7 = v6;

  sub_26120BFA8();
  if (v5 == sub_26121C390() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_26121D4D0();

    if ((v10 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v11 = [a1 userInfo];
  v12 = sub_26121CBA0();

  if (!*(v12 + 16) || (v13 = sub_2611B3970(0xD000000000000032, 0x8000000261230220), (v14 & 1) == 0))
  {

    goto LABEL_13;
  }

  sub_2611AC930(*(v12 + 56) + 32 * v13, v27);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 1;
    return;
  }

  sub_26121C4B0();
  swift_allocObject();
  sub_26121C4A0();
  sub_26120BFFC();
  sub_26121C490();

  v16 = v27[0];
  v15 = v27[1];
  v17 = [a1 code];
  if (v15 > 0x15)
  {
    if (v17 != 14)
    {
      goto LABEL_16;
    }
  }

  else if (v17 != qword_261228848[v15])
  {
LABEL_16:
    sub_26120C050(v16, v15);
    sub_26119DA0C(v25, v26);
    goto LABEL_13;
  }

  v18 = [a1 userInfo];
  v19 = sub_26121CBA0();

  if (*(v19 + 16) && (v20 = sub_2611B3970(0xD00000000000003ELL, 0x8000000261230260), (v21 & 1) != 0))
  {
    sub_2611AC930(*(v19 + 56) + 32 * v20, v27);
    sub_26119DA0C(v25, v26);

    v22 = swift_dynamicCast();
    v23 = v25;
    v24 = v26;
    if (!v22)
    {
      v23 = 0;
      v24 = 0;
    }
  }

  else
  {
    sub_26119DA0C(v25, v26);

    v23 = 0;
    v24 = 0;
  }

  *a2 = v16;
  a2[1] = v15;
  a2[2] = v23;
  a2[3] = v24;
}

uint64_t IdentityReaderErrorInternal.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_26121CAA0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_26121CA80();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26121CA90();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == *MEMORY[0x277CFEF60])
  {
    (*(v12 + 96))(v14, v11);
    v16 = *v14;
    v17 = v14[1];
  }

  else
  {
    if (v15 != *MEMORY[0x277CFEF68])
    {
      if (v15 == *MEMORY[0x277CFEEE0])
      {
        v16 = 0;
        v17 = 1;
        goto LABEL_45;
      }

      if (v15 == *MEMORY[0x277CFEF00])
      {
        v16 = 0;
        v17 = 4;
        goto LABEL_45;
      }

      if (v15 == *MEMORY[0x277CFEF58])
      {
        v16 = 0;
        v17 = 7;
        goto LABEL_45;
      }

      if (v15 == *MEMORY[0x277CFEF70])
      {
        v16 = 0;
        v17 = 2;
        goto LABEL_45;
      }

      if (v15 == *MEMORY[0x277CFEF28])
      {
        v16 = 0;
        v17 = 11;
        goto LABEL_45;
      }

      if (v15 == *MEMORY[0x277CFEED8])
      {
        v16 = 0;
        v17 = 8;
        goto LABEL_45;
      }

      if (v15 == *MEMORY[0x277CFEEC8])
      {
        v16 = 0;
        v17 = 16;
        goto LABEL_45;
      }

      if (v15 == *MEMORY[0x277CFEEF0])
      {
        v16 = 0;
        v17 = 6;
        goto LABEL_45;
      }

      if (v15 == *MEMORY[0x277CFEF20])
      {
        v16 = 0;
        v17 = 5;
        goto LABEL_45;
      }

      if (v15 == *MEMORY[0x277CFEF10])
      {
        v16 = 0;
        v17 = 15;
        goto LABEL_45;
      }

      if (v15 == *MEMORY[0x277CFEEE8])
      {
        v16 = 0;
        v17 = 12;
        goto LABEL_45;
      }

      if (v15 == *MEMORY[0x277CFEF38])
      {
        v16 = 0;
        v17 = 17;
        goto LABEL_45;
      }

      if (v15 == *MEMORY[0x277CFEF50])
      {
        v16 = 0;
        v17 = 9;
        goto LABEL_45;
      }

      if (v15 == *MEMORY[0x277CFEF18])
      {
        v16 = 0;
        v17 = 18;
        goto LABEL_45;
      }

      if (v15 == *MEMORY[0x277CFEF30])
      {
        v16 = 0;
        v17 = 19;
        goto LABEL_45;
      }

      if (v15 == *MEMORY[0x277CFEED0])
      {
        v16 = 0;
        v17 = 3;
        goto LABEL_45;
      }

      if (v15 == *MEMORY[0x277CFEF40])
      {
        v16 = 0;
        v17 = 13;
        goto LABEL_45;
      }

      if (v15 == *MEMORY[0x277CFEEF8])
      {
        v16 = 0;
        v17 = 14;
        goto LABEL_45;
      }

      if (v15 == *MEMORY[0x277CFEF08])
      {
        v16 = 0;
        v17 = 20;
        goto LABEL_45;
      }

      if (v15 == *MEMORY[0x277CFEF48])
      {
        v16 = 0;
        v17 = 10;
        goto LABEL_45;
      }

      v22 = sub_2611F033C();
      sub_2611B8B74(v22, v10);
      v23 = sub_26121CA60();
      v37 = *(v23 - 8);
      v38 = v23;
      if ((*(v37 + 48))(v10, 1) == 1)
      {
        sub_2611AC114(v10, &qword_27FE87700, &unk_2612203D0);
      }

      else
      {
        v33 = *(v5 + 16);
        v34 = v5 + 16;
        v33(v7, a1, v4);
        v24 = sub_26121CA40();
        v35 = sub_26121CFC0();
        v36 = v24;
        if (os_log_type_enabled(v24, v35))
        {
          v25 = swift_slowAlloc();
          v32 = v25;
          v31 = swift_slowAlloc();
          *v25 = 138412290;
          sub_26120C064();
          swift_allocError();
          v33(v26, v7, v4);
          v27 = _swift_stdlib_bridgeErrorToNSError();
          (*(v5 + 8))(v7, v4);
          v29 = v31;
          v28 = v32;
          *(v32 + 1) = v27;
          *v29 = v27;
          v30 = v36;
          _os_log_impl(&dword_261197000, v36, v35, "Could not parse identity session error: [ %@ ]", v28, 0xCu);
          sub_2611AC114(v29, &qword_27FE87528, &qword_261221500);
          MEMORY[0x2666FCF20](v29, -1, -1);
          MEMORY[0x2666FCF20](v32, -1, -1);
        }

        else
        {

          (*(v5 + 8))(v7, v4);
        }

        (*(v37 + 8))(v10, v38);
      }

      (*(v12 + 8))(v14, v11);
    }

    v16 = 0;
    v17 = 0;
  }

LABEL_45:
  v18 = sub_26121CA70();
  v20 = v19;
  result = (*(v5 + 8))(a1, v4);
  *a2 = v16;
  a2[1] = v17;
  a2[2] = v18;
  a2[3] = v20;
  return result;
}

uint64_t sub_26120AD90(uint64_t a1)
{
  v2 = sub_26120BFA8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26120ADCC(uint64_t a1)
{
  v2 = sub_26120BFA8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t IdentityReaderErrorInternal.errorCode.getter()
{
  v1 = *(v0 + 8);
  if (v1 > 0x15)
  {
    return 14;
  }

  else
  {
    return qword_261228848[v1];
  }
}

uint64_t IdentityReaderErrorInternal.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = MEMORY[0x277D84F98];
  v16 = MEMORY[0x277D84F98];
  sub_26121C4E0();
  swift_allocObject();
  sub_26120BF94(v1, v2);
  sub_26121C4D0();
  *(&v14 + 1) = v2;
  sub_26120C0BC();
  v6 = sub_26121C4C0();
  v8 = v7;
  sub_26120C050(v1, *(&v14 + 1));

  v15 = MEMORY[0x277CC9318];
  *&v14 = v6;
  *(&v14 + 1) = v8;
  sub_2611B69DC(&v14, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2611B63A0(v13, 0xD000000000000032, 0x8000000261230220, isUniquelyReferenced_nonNull_native);
  v16 = v5;
  if (v3)
  {
    v15 = MEMORY[0x277D837D0];
    *&v14 = v4;
    *(&v14 + 1) = v3;
    sub_2611B69DC(&v14, v13);

    v10 = v16;
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_2611B63A0(v13, 0xD00000000000003ELL, 0x8000000261230260, v11);
    return v10;
  }

  else
  {
    sub_2611B5E94(0xD00000000000003ELL, 0x8000000261230260, &v14);
    sub_2611AC114(&v14, &qword_27FE87B10, &qword_26121F890);
    return v16;
  }
}

uint64_t sub_26120B02C()
{
  v1 = *(v0 + 8);
  if (v1 > 0x15)
  {
    return 14;
  }

  else
  {
    return qword_261228848[v1];
  }
}

unint64_t IdentityReaderErrorInternal.description.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*(v0 + 8))
  {
    case 0:
      return result;
    case 1:
      result = 0x776F6C6C41746F6ELL;
      break;
    case 2:
      result = 0x656C6C65636E6163;
      break;
    case 3:
      result = 0x456B726F7774656ELL;
      break;
    case 4:
    case 5:
      result = 0x5264696C61766E69;
      break;
    case 6:
      result = 0x5464696C61766E69;
      break;
    case 7:
      result = 0x75426D6574737973;
      break;
    case 8:
      result = 0x626173694463666ELL;
      break;
    case 9:
      result = 0x687265764F63666ELL;
      break;
    case 0xALL:
    case 0x15:
      v2 = 11;
      goto LABEL_19;
    case 0xBLL:
      result = 0xD000000000000011;
      break;
    case 0xCLL:
      result = 0xD00000000000001CLL;
      break;
    case 0xDLL:
      result = 0xD000000000000010;
      break;
    case 0xELL:
      result = 0x6F70707553746F6ELL;
      break;
    case 0xFLL:
      result = 0xD000000000000010;
      break;
    case 0x10:
    case 0x14:
      v2 = 5;
LABEL_19:
      result = v2 | 0xD000000000000010;
      break;
    case 0x11:
      result = 0x6954726564616572;
      break;
    case 0x12:
      result = 0x456E6F6973736573;
      break;
    case 0x13:
      result = 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000024;
      break;
  }

  return result;
}

uint64_t _s19ProximityReaderCore08IdentityB13ErrorInternalV4CodeO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_54;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_52;
      }

      v8 = 1;
      sub_26120C050(*a1, 1uLL);
      sub_26120C050(v4, 1uLL);
      return v8;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 2uLL);
      v6 = v4;
      v7 = 2;
      goto LABEL_54;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 3uLL);
      v6 = v4;
      v7 = 3;
      goto LABEL_54;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 4uLL);
      v6 = v4;
      v7 = 4;
      goto LABEL_54;
    case 5uLL:
      if (v5 != 5)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 5uLL);
      v6 = v4;
      v7 = 5;
      goto LABEL_54;
    case 6uLL:
      if (v5 != 6)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 6uLL);
      v6 = v4;
      v7 = 6;
      goto LABEL_54;
    case 7uLL:
      if (v5 != 7)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 7uLL);
      v6 = v4;
      v7 = 7;
      goto LABEL_54;
    case 8uLL:
      if (v5 != 8)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 8uLL);
      v6 = v4;
      v7 = 8;
      goto LABEL_54;
    case 9uLL:
      if (v5 != 9)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 9uLL);
      v6 = v4;
      v7 = 9;
      goto LABEL_54;
    case 0xAuLL:
      if (v5 != 10)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 0xAuLL);
      v6 = v4;
      v7 = 10;
      goto LABEL_54;
    case 0xBuLL:
      if (v5 != 11)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 0xBuLL);
      v6 = v4;
      v7 = 11;
      goto LABEL_54;
    case 0xCuLL:
      if (v5 != 12)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 0xCuLL);
      v6 = v4;
      v7 = 12;
      goto LABEL_54;
    case 0xDuLL:
      if (v5 != 13)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 0xDuLL);
      v6 = v4;
      v7 = 13;
      goto LABEL_54;
    case 0xEuLL:
      if (v5 != 14)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 0xEuLL);
      v6 = v4;
      v7 = 14;
      goto LABEL_54;
    case 0xFuLL:
      if (v5 != 15)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 0xFuLL);
      v6 = v4;
      v7 = 15;
      goto LABEL_54;
    case 0x10uLL:
      if (v5 != 16)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 0x10uLL);
      v6 = v4;
      v7 = 16;
      goto LABEL_54;
    case 0x11uLL:
      if (v5 != 17)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 0x11uLL);
      v6 = v4;
      v7 = 17;
      goto LABEL_54;
    case 0x12uLL:
      if (v5 != 18)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 0x12uLL);
      v6 = v4;
      v7 = 18;
      goto LABEL_54;
    case 0x13uLL:
      if (v5 != 19)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 0x13uLL);
      v6 = v4;
      v7 = 19;
      goto LABEL_54;
    case 0x14uLL:
      if (v5 != 20)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 0x14uLL);
      v6 = v4;
      v7 = 20;
      goto LABEL_54;
    case 0x15uLL:
      if (v5 != 21)
      {
        goto LABEL_52;
      }

      sub_26120C050(*a1, 0x15uLL);
      v6 = v4;
      v7 = 21;
      goto LABEL_54;
    default:
      if (v5 < 0x16)
      {
LABEL_52:
        sub_26120BF94(*a2, a2[1]);
        sub_26120BF94(v2, v3);
        sub_26120C050(v2, v3);
        sub_26120C050(v4, v5);
        return 0;
      }

      else
      {
        v9 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v11 = sub_26121D4D0();
          sub_26120BF94(v4, v5);
          sub_26120BF94(v2, v3);
          sub_26120C050(v2, v3);
          sub_26120C050(v4, v5);
          return v11 & 1;
        }

        sub_26120BF94(v9, v3);
        sub_26120BF94(v2, v3);
        sub_26120C050(v2, v3);
        v6 = v2;
        v7 = v3;
LABEL_54:
        sub_26120C050(v6, v7);
        return 1;
      }
  }
}

unint64_t sub_26120B7B4()
{
  result = qword_27FE979A0;
  if (!qword_27FE979A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE979A0);
  }

  return result;
}

unint64_t sub_26120B808()
{
  result = qword_27FE979A8;
  if (!qword_27FE979A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE979A8);
  }

  return result;
}

unint64_t sub_26120B85C()
{
  result = qword_27FE979B0;
  if (!qword_27FE979B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE979B0);
  }

  return result;
}

unint64_t sub_26120B8B0()
{
  result = qword_27FE979B8;
  if (!qword_27FE979B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE979B8);
  }

  return result;
}

unint64_t sub_26120B904()
{
  result = qword_27FE979C0;
  if (!qword_27FE979C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE979C0);
  }

  return result;
}

unint64_t sub_26120B958()
{
  result = qword_27FE979C8;
  if (!qword_27FE979C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE979C8);
  }

  return result;
}

unint64_t sub_26120B9AC()
{
  result = qword_27FE979D0;
  if (!qword_27FE979D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE979D0);
  }

  return result;
}

unint64_t sub_26120BA00()
{
  result = qword_27FE979D8;
  if (!qword_27FE979D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE979D8);
  }

  return result;
}

unint64_t sub_26120BA54()
{
  result = qword_27FE979E0;
  if (!qword_27FE979E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE979E0);
  }

  return result;
}

unint64_t sub_26120BAA8()
{
  result = qword_27FE979E8;
  if (!qword_27FE979E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE979E8);
  }

  return result;
}

unint64_t sub_26120BAFC()
{
  result = qword_27FE979F0;
  if (!qword_27FE979F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE979F0);
  }

  return result;
}

unint64_t sub_26120BB50()
{
  result = qword_27FE979F8;
  if (!qword_27FE979F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE979F8);
  }

  return result;
}

unint64_t sub_26120BBA4()
{
  result = qword_27FE97A00;
  if (!qword_27FE97A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97A00);
  }

  return result;
}

unint64_t sub_26120BBF8()
{
  result = qword_27FE97A08;
  if (!qword_27FE97A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97A08);
  }

  return result;
}

unint64_t sub_26120BC4C()
{
  result = qword_27FE97A10;
  if (!qword_27FE97A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97A10);
  }

  return result;
}

unint64_t sub_26120BCA0()
{
  result = qword_27FE97A18;
  if (!qword_27FE97A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97A18);
  }

  return result;
}

unint64_t sub_26120BCF4()
{
  result = qword_27FE97A20;
  if (!qword_27FE97A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97A20);
  }

  return result;
}

unint64_t sub_26120BD48()
{
  result = qword_27FE97A28;
  if (!qword_27FE97A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97A28);
  }

  return result;
}

unint64_t sub_26120BD9C()
{
  result = qword_27FE97A30;
  if (!qword_27FE97A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97A30);
  }

  return result;
}

unint64_t sub_26120BDF0()
{
  result = qword_27FE97A38;
  if (!qword_27FE97A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97A38);
  }

  return result;
}

unint64_t sub_26120BE44()
{
  result = qword_27FE97A40;
  if (!qword_27FE97A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97A40);
  }

  return result;
}

unint64_t sub_26120BE98()
{
  result = qword_27FE97A48;
  if (!qword_27FE97A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97A48);
  }

  return result;
}

unint64_t sub_26120BEEC()
{
  result = qword_27FE97A50;
  if (!qword_27FE97A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97A50);
  }

  return result;
}

unint64_t sub_26120BF40()
{
  result = qword_27FE97A58[0];
  if (!qword_27FE97A58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE97A58);
  }

  return result;
}

uint64_t sub_26120BF94(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x16)
  {
  }

  return result;
}

unint64_t sub_26120BFA8()
{
  result = qword_27FE88190;
  if (!qword_27FE88190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE88190);
  }

  return result;
}

unint64_t sub_26120BFFC()
{
  result = qword_27FE88198;
  if (!qword_27FE88198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE88198);
  }

  return result;
}

uint64_t sub_26120C050(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x16)
  {
  }

  return result;
}

unint64_t sub_26120C064()
{
  result = qword_27FE881A0;
  if (!qword_27FE881A0)
  {
    sub_26121CAA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE881A0);
  }

  return result;
}

unint64_t sub_26120C0BC()
{
  result = qword_27FE881A8;
  if (!qword_27FE881A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE881A8);
  }

  return result;
}

unint64_t sub_26120C114()
{
  result = qword_27FE881B0;
  if (!qword_27FE881B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE881B0);
  }

  return result;
}

unint64_t sub_26120C16C()
{
  result = qword_27FE881B8;
  if (!qword_27FE881B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE881B8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19ProximityReaderCore08IdentityB13ErrorInternalV4CodeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26120C1D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_26120C234(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_26120C298(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFE9 && *(a1 + 16))
  {
    return (*a1 + 2147483626);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 21;
  if (v4 >= 0x17)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26120C2F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFEA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483626;
    if (a3 >= 0x7FFFFFEA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFEA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 21;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IdentityReaderErrorInternal.Code.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentityReaderErrorInternal.Code.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26120C614()
{
  result = qword_27FE98360[0];
  if (!qword_27FE98360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE98360);
  }

  return result;
}

unint64_t sub_26120C66C()
{
  result = qword_27FE99770[0];
  if (!qword_27FE99770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE99770);
  }

  return result;
}

unint64_t sub_26120C6C4()
{
  result = qword_27FE99880;
  if (!qword_27FE99880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE99880);
  }

  return result;
}

unint64_t sub_26120C71C()
{
  result = qword_27FE99888[0];
  if (!qword_27FE99888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE99888);
  }

  return result;
}

unint64_t sub_26120C774()
{
  result = qword_27FE99910;
  if (!qword_27FE99910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE99910);
  }

  return result;
}

unint64_t sub_26120C7CC()
{
  result = qword_27FE99918[0];
  if (!qword_27FE99918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE99918);
  }

  return result;
}

unint64_t sub_26120C824()
{
  result = qword_27FE999A0;
  if (!qword_27FE999A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE999A0);
  }

  return result;
}

unint64_t sub_26120C87C()
{
  result = qword_27FE999A8[0];
  if (!qword_27FE999A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE999A8);
  }

  return result;
}

unint64_t sub_26120C8D4()
{
  result = qword_27FE99A30;
  if (!qword_27FE99A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE99A30);
  }

  return result;
}

unint64_t sub_26120C92C()
{
  result = qword_27FE99A38[0];
  if (!qword_27FE99A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE99A38);
  }

  return result;
}

unint64_t sub_26120C984()
{
  result = qword_27FE99AC0;
  if (!qword_27FE99AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE99AC0);
  }

  return result;
}

unint64_t sub_26120C9DC()
{
  result = qword_27FE99AC8[0];
  if (!qword_27FE99AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE99AC8);
  }

  return result;
}

unint64_t sub_26120CA34()
{
  result = qword_27FE99B50;
  if (!qword_27FE99B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE99B50);
  }

  return result;
}

unint64_t sub_26120CA8C()
{
  result = qword_27FE99B58[0];
  if (!qword_27FE99B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE99B58);
  }

  return result;
}

unint64_t sub_26120CAE4()
{
  result = qword_27FE99BE0;
  if (!qword_27FE99BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE99BE0);
  }

  return result;
}

unint64_t sub_26120CB3C()
{
  result = qword_27FE99BE8[0];
  if (!qword_27FE99BE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE99BE8);
  }

  return result;
}

unint64_t sub_26120CB94()
{
  result = qword_27FE99C70;
  if (!qword_27FE99C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE99C70);
  }

  return result;
}

unint64_t sub_26120CBEC()
{
  result = qword_27FE99C78;
  if (!qword_27FE99C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE99C78);
  }

  return result;
}

unint64_t sub_26120CC44()
{
  result = qword_27FE99D00;
  if (!qword_27FE99D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE99D00);
  }

  return result;
}

unint64_t sub_26120CC9C()
{
  result = qword_27FE99D08[0];
  if (!qword_27FE99D08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE99D08);
  }

  return result;
}

unint64_t sub_26120CCF4()
{
  result = qword_27FE99D90;
  if (!qword_27FE99D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE99D90);
  }

  return result;
}

unint64_t sub_26120CD4C()
{
  result = qword_27FE99D98[0];
  if (!qword_27FE99D98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE99D98);
  }

  return result;
}

unint64_t sub_26120CDA4()
{
  result = qword_27FE99E20;
  if (!qword_27FE99E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE99E20);
  }

  return result;
}

unint64_t sub_26120CDFC()
{
  result = qword_27FE99E28[0];
  if (!qword_27FE99E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE99E28);
  }

  return result;
}

unint64_t sub_26120CE54()
{
  result = qword_27FE99EB0;
  if (!qword_27FE99EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE99EB0);
  }

  return result;
}

unint64_t sub_26120CEAC()
{
  result = qword_27FE99EB8[0];
  if (!qword_27FE99EB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE99EB8);
  }

  return result;
}

unint64_t sub_26120CF04()
{
  result = qword_27FE99F40;
  if (!qword_27FE99F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE99F40);
  }

  return result;
}

unint64_t sub_26120CF5C()
{
  result = qword_27FE99F48[0];
  if (!qword_27FE99F48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE99F48);
  }

  return result;
}

unint64_t sub_26120CFB4()
{
  result = qword_27FE99FD0;
  if (!qword_27FE99FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE99FD0);
  }

  return result;
}

unint64_t sub_26120D00C()
{
  result = qword_27FE99FD8[0];
  if (!qword_27FE99FD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE99FD8);
  }

  return result;
}

unint64_t sub_26120D064()
{
  result = qword_27FE9A060;
  if (!qword_27FE9A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A060);
  }

  return result;
}

unint64_t sub_26120D0BC()
{
  result = qword_27FE9A068[0];
  if (!qword_27FE9A068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9A068);
  }

  return result;
}

unint64_t sub_26120D114()
{
  result = qword_27FE9A0F0;
  if (!qword_27FE9A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A0F0);
  }

  return result;
}

unint64_t sub_26120D16C()
{
  result = qword_27FE9A0F8[0];
  if (!qword_27FE9A0F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9A0F8);
  }

  return result;
}

unint64_t sub_26120D1C4()
{
  result = qword_27FE9A180;
  if (!qword_27FE9A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A180);
  }

  return result;
}

unint64_t sub_26120D21C()
{
  result = qword_27FE9A188[0];
  if (!qword_27FE9A188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9A188);
  }

  return result;
}

unint64_t sub_26120D274()
{
  result = qword_27FE9A210;
  if (!qword_27FE9A210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A210);
  }

  return result;
}

unint64_t sub_26120D2CC()
{
  result = qword_27FE9A218[0];
  if (!qword_27FE9A218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9A218);
  }

  return result;
}

unint64_t sub_26120D324()
{
  result = qword_27FE9A2A0;
  if (!qword_27FE9A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A2A0);
  }

  return result;
}

unint64_t sub_26120D37C()
{
  result = qword_27FE9A2A8[0];
  if (!qword_27FE9A2A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9A2A8);
  }

  return result;
}

unint64_t sub_26120D3D4()
{
  result = qword_27FE9A330;
  if (!qword_27FE9A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A330);
  }

  return result;
}

unint64_t sub_26120D42C()
{
  result = qword_27FE9A338[0];
  if (!qword_27FE9A338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9A338);
  }

  return result;
}

unint64_t sub_26120D484()
{
  result = qword_27FE9A3C0;
  if (!qword_27FE9A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A3C0);
  }

  return result;
}

unint64_t sub_26120D4DC()
{
  result = qword_27FE9A3C8[0];
  if (!qword_27FE9A3C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9A3C8);
  }

  return result;
}

unint64_t sub_26120D534()
{
  result = qword_27FE9A450;
  if (!qword_27FE9A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A450);
  }

  return result;
}

unint64_t sub_26120D58C()
{
  result = qword_27FE9A458[0];
  if (!qword_27FE9A458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9A458);
  }

  return result;
}

unint64_t sub_26120D5E4()
{
  result = qword_27FE9A4E0;
  if (!qword_27FE9A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A4E0);
  }

  return result;
}

unint64_t sub_26120D63C()
{
  result = qword_27FE9A4E8[0];
  if (!qword_27FE9A4E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9A4E8);
  }

  return result;
}

unint64_t sub_26120D694()
{
  result = qword_27FE9A570;
  if (!qword_27FE9A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A570);
  }

  return result;
}

unint64_t sub_26120D6EC()
{
  result = qword_27FE9A578;
  if (!qword_27FE9A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A578);
  }

  return result;
}

uint64_t sub_26120D740(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_26121D4D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776F6C6C41746F6ELL && a2 == 0xEA00000000006465 || (sub_26121D4D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064 || (sub_26121D4D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x456B726F7774656ELL && a2 == 0xEC000000726F7272 || (sub_26121D4D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5264696C61766E69 && a2 == 0xEE00747365757165 || (sub_26121D4D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5264696C61766E69 && a2 == 0xEF65736E6F707365 || (sub_26121D4D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5464696C61766E69 && a2 == 0xEC0000006E656B6FLL || (sub_26121D4D0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x75426D6574737973 && a2 == 0xEA00000000007973 || (sub_26121D4D0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x626173694463666ELL && a2 == 0xEB0000000064656CLL || (sub_26121D4D0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x687265764F63666ELL && a2 == 0xEB00000000746165 || (sub_26121D4D0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002612302C0 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000261230340 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000261230320 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000261230300 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6F70707553746F6ELL && a2 == 0xEC00000064657472 || (sub_26121D4D0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026122D7E0 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026122CAD0 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6954726564616572 && a2 == 0xED000074756F656DLL || (sub_26121D4D0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000024 && 0x800000026122D160 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x456E6F6973736573 && a2 == 0xEE00646572697078 || (sub_26121D4D0() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002612302E0 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026122D7C0 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002612302A0 == a2)
  {

    return 22;
  }

  else
  {
    v6 = sub_26121D4D0();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

uint64_t sub_26120DE98(uint64_t a1)
{
  v2 = sub_2612121EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120DED4(uint64_t a1)
{
  v2 = sub_2612121EC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_26120DF10(char a1)
{
  result = 0x6D614E6E65766967;
  switch(a1)
  {
    case 1:
      result = 0x614E796C696D6166;
      break;
    case 2:
      result = 0x7469617274726F70;
      break;
    case 3:
      result = 6645601;
      break;
    case 4:
      result = 0x61654C7441656761;
      break;
    case 5:
      result = 0x6942664F65746164;
      break;
    case 6:
      result = 7890291;
      break;
    case 7:
      result = 0x73736572646461;
      break;
    case 8:
      result = 0x746867696568;
      break;
    case 9:
      result = 0x746867696577;
      break;
    case 10:
      result = 0x726F6C6F43657965;
      break;
    case 11:
      result = 0x6F6C6F4372696168;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x536E617265746576;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
    case 17:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x746E656D75636F64;
      break;
    case 18:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26120E190(uint64_t a1)
{
  v2 = sub_2612122E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120E1CC(uint64_t a1)
{
  v2 = sub_2612122E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120E208(uint64_t a1)
{
  v2 = sub_26121233C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120E244(uint64_t a1)
{
  v2 = sub_26121233C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120E288@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_261213730(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26120E2BC(uint64_t a1)
{
  v2 = sub_261211DA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120E2F8(uint64_t a1)
{
  v2 = sub_261211DA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120E334(uint64_t a1)
{
  v2 = sub_261212294();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120E370(uint64_t a1)
{
  v2 = sub_261212294();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120E3AC(uint64_t a1)
{
  v2 = sub_261211DFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120E3E8(uint64_t a1)
{
  v2 = sub_261211DFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120E424(uint64_t a1)
{
  v2 = sub_261211E50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120E460(uint64_t a1)
{
  v2 = sub_261211E50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120E49C(uint64_t a1)
{
  v2 = sub_261211EA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120E4D8(uint64_t a1)
{
  v2 = sub_261211EA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120E514(uint64_t a1)
{
  v2 = sub_261211EF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120E550(uint64_t a1)
{
  v2 = sub_261211EF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120E58C(uint64_t a1)
{
  v2 = sub_261211F4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120E5C8(uint64_t a1)
{
  v2 = sub_261211F4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120E604(uint64_t a1)
{
  v2 = sub_2612120F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120E640(uint64_t a1)
{
  v2 = sub_2612120F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120E67C(uint64_t a1)
{
  v2 = sub_2612123E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120E6B8(uint64_t a1)
{
  v2 = sub_2612123E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120E6F4(uint64_t a1)
{
  v2 = sub_261212438();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120E730(uint64_t a1)
{
  v2 = sub_261212438();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120E76C(uint64_t a1)
{
  v2 = sub_26121209C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120E7A8(uint64_t a1)
{
  v2 = sub_26121209C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120E7E4(uint64_t a1)
{
  v2 = sub_261212198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120E820(uint64_t a1)
{
  v2 = sub_261212198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120E85C(uint64_t a1)
{
  v2 = sub_261211FA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120E898(uint64_t a1)
{
  v2 = sub_261211FA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120E8D4(uint64_t a1)
{
  v2 = sub_261212048();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120E910(uint64_t a1)
{
  v2 = sub_261212048();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120E94C(uint64_t a1)
{
  v2 = sub_261212390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120E988(uint64_t a1)
{
  v2 = sub_261212390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120E9C4(uint64_t a1)
{
  v2 = sub_261212240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120EA00(uint64_t a1)
{
  v2 = sub_261212240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120EA3C(uint64_t a1)
{
  v2 = sub_261211FF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120EA78(uint64_t a1)
{
  v2 = sub_261211FF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120EAB4(uint64_t a1)
{
  v2 = sub_261212144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120EAF0(uint64_t a1)
{
  v2 = sub_261212144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentElementInternal.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE881C0, &qword_261228900);
  v114 = *(v3 - 8);
  v115 = v3;
  MEMORY[0x28223BE20](v3);
  v113 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE881C8, &qword_261228908);
  v111 = *(v5 - 8);
  v112 = v5;
  MEMORY[0x28223BE20](v5);
  v110 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE881D0, &qword_261228910);
  v108 = *(v7 - 8);
  v109 = v7;
  MEMORY[0x28223BE20](v7);
  v107 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE881D8, &qword_261228918);
  v105 = *(v9 - 8);
  v106 = v9;
  MEMORY[0x28223BE20](v9);
  v104 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE881E0, &qword_261228920);
  v102 = *(v11 - 8);
  v103 = v11;
  MEMORY[0x28223BE20](v11);
  v101 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE881E8, &qword_261228928);
  v99 = *(v13 - 8);
  v100 = v13;
  MEMORY[0x28223BE20](v13);
  v98 = &v58 - v14;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE881F0, &qword_261228930);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v58 - v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE881F8, &qword_261228938);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v58 - v16;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88200, &qword_261228940);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v58 - v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88208, &qword_261228948);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v58 - v18;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88210, &qword_261228950);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v58 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88218, &qword_261228958);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v58 - v20;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88220, &qword_261228960);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v58 - v21;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88228, &qword_261228968);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v58 - v22;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88230, &qword_261228970);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v58 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88238, &qword_261228978);
  v116 = *(v24 - 8);
  v117 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v58 - v25;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88240, &qword_261228980);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v58 - v27;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88248, &qword_261228988);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v58 - v28;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88250, &qword_261228990);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v58 - v29;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88258, &qword_261228998);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v58 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88260, &qword_2612289A0);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v58 - v33;
  v35 = *v1;
  v36 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261211DA8();
  sub_26121D600();
  if (v36 == 1)
  {
    switch(v35)
    {
      case 1:
        v119 = 1;
        sub_2612123E4();
        v53 = v62;
        sub_26121D410();
        v38 = *(v63 + 8);
        v39 = v53;
        v40 = &v96;
        goto LABEL_24;
      case 2:
        v119 = 2;
        sub_261212390();
        v50 = v65;
        sub_26121D410();
        v38 = *(v66 + 8);
        v39 = v50;
        v40 = &v99;
        goto LABEL_24;
      case 3:
        v119 = 3;
        sub_26121233C();
        v51 = v68;
        sub_26121D410();
        v38 = *(v69 + 8);
        v39 = v51;
        v40 = &v102;
        goto LABEL_24;
      case 4:
        v119 = 5;
        sub_261212294();
        v47 = v71;
        sub_26121D410();
        v38 = *(v72 + 8);
        v39 = v47;
        v40 = &v105;
        goto LABEL_24;
      case 5:
        v119 = 6;
        sub_261212240();
        v54 = v74;
        sub_26121D410();
        v38 = *(v75 + 8);
        v39 = v54;
        v40 = &v108;
        goto LABEL_24;
      case 6:
        v119 = 7;
        sub_2612121EC();
        v55 = v77;
        sub_26121D410();
        v38 = *(v78 + 8);
        v39 = v55;
        v40 = &v111;
        goto LABEL_24;
      case 7:
        v119 = 8;
        sub_261212198();
        v52 = v80;
        sub_26121D410();
        v38 = *(v81 + 8);
        v39 = v52;
        v40 = &v114;
        goto LABEL_24;
      case 8:
        v119 = 9;
        sub_261212144();
        v57 = v83;
        sub_26121D410();
        v38 = *(v84 + 8);
        v39 = v57;
        v40 = &v117;
        goto LABEL_24;
      case 9:
        v119 = 10;
        sub_2612120F0();
        v49 = v86;
        sub_26121D410();
        v38 = *(v87 + 8);
        v39 = v49;
        v40 = &v118;
        goto LABEL_24;
      case 10:
        v119 = 11;
        sub_26121209C();
        v56 = v89;
        sub_26121D410();
        v38 = *(v90 + 8);
        v39 = v56;
        v40 = &v120;
        goto LABEL_24;
      case 11:
        v119 = 12;
        sub_261212048();
        v46 = v92;
        sub_26121D410();
        v38 = *(v93 + 8);
        v39 = v46;
        v40 = &v121;
        goto LABEL_24;
      case 12:
        v119 = 13;
        sub_261211FF4();
        v48 = v95;
        sub_26121D410();
        v38 = *(v96 + 8);
        v39 = v48;
        v40 = &v122;
        goto LABEL_24;
      case 13:
        v119 = 14;
        sub_261211FA0();
        v43 = v98;
        sub_26121D410();
        v45 = v99;
        v44 = v100;
        goto LABEL_21;
      case 14:
        v119 = 15;
        sub_261211F4C();
        v43 = v101;
        sub_26121D410();
        v45 = v102;
        v44 = v103;
        goto LABEL_21;
      case 15:
        v119 = 16;
        sub_261211EF8();
        v43 = v104;
        sub_26121D410();
        v45 = v105;
        v44 = v106;
        goto LABEL_21;
      case 16:
        v119 = 17;
        sub_261211EA4();
        v43 = v107;
        sub_26121D410();
        v45 = v108;
        v44 = v109;
        goto LABEL_21;
      case 17:
        v119 = 18;
        sub_261211E50();
        v43 = v110;
        sub_26121D410();
        v45 = v111;
        v44 = v112;
        goto LABEL_21;
      case 18:
        v119 = 19;
        sub_261211DFC();
        v43 = v113;
        sub_26121D410();
        v45 = v114;
        v44 = v115;
LABEL_21:
        (*(v45 + 8))(v43, v44);
        break;
      default:
        v119 = 0;
        sub_261212438();
        v37 = v59;
        sub_26121D410();
        v38 = *(v60 + 8);
        v39 = v37;
        v40 = &v93;
LABEL_24:
        v38(v39, *(v40 - 32));
        break;
    }

    return (*(v32 + 8))(v34, v31);
  }

  else
  {
    v119 = 4;
    sub_2612122E8();
    sub_26121D410();
    v41 = v117;
    sub_26121D490();
    (*(v116 + 8))(v26, v41);
    return (*(v32 + 8))(v34, v31);
  }
}

uint64_t MobileDocumentElementInternal.hash(into:)()
{
  v1 = *v0;
  if (v0[1])
  {
    v1 = qword_261229BF8[v1];
  }

  else
  {
    MEMORY[0x2666FC740](4);
  }

  return MEMORY[0x2666FC740](v1);
}

uint64_t MobileDocumentElementInternal.hashValue.getter()
{
  sub_26121D5B0();
  MobileDocumentElementInternal.hash(into:)();
  return sub_26121D5D0();
}

uint64_t MobileDocumentElementInternal.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88268, &qword_2612289A8);
  v131 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v146 = &v90 - v3;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88270, &qword_2612289B0);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v145 = &v90 - v4;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88278, &qword_2612289B8);
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v144 = &v90 - v5;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88280, &qword_2612289C0);
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v143 = &v90 - v6;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88288, &qword_2612289C8);
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v142 = &v90 - v7;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88290, &qword_2612289D0);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v141 = &v90 - v8;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88298, &qword_2612289D8);
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v140 = &v90 - v9;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE882A0, &qword_2612289E0);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v139 = &v90 - v10;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE882A8, &qword_2612289E8);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v138 = &v90 - v11;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE882B0, &qword_2612289F0);
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v137 = &v90 - v12;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE882B8, &qword_2612289F8);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v136 = &v90 - v13;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE882C0, &qword_261228A00);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v135 = &v90 - v14;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE882C8, &qword_261228A08);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v134 = &v90 - v15;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE882D0, &qword_261228A10);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v150 = &v90 - v16;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE882D8, &qword_261228A18);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v133 = &v90 - v17;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE882E0, &qword_261228A20);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v149 = &v90 - v18;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE882E8, &qword_261228A28);
  v147 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v148 = &v90 - v19;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE882F0, &qword_261228A30);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v132 = &v90 - v20;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE882F8, &qword_261228A38);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v22 = &v90 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88300, &qword_261228A40);
  v95 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v90 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88308, &qword_261228A48);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v90 - v28;
  v30 = a1[3];
  v154 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_261211DA8();
  v31 = v153;
  sub_26121D5F0();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(v154);
  }

  v92 = v25;
  v91 = v23;
  v93 = v22;
  v32 = v148;
  v33 = v149;
  v34 = v150;
  v94 = 0;
  v35 = v151;
  v36 = v152;
  v153 = v27;
  v37 = sub_26121D400();
  if (*(v37 + 16) != 1 || (v38 = *(v37 + 32), v38 == 20))
  {
    v46 = sub_26121D220();
    swift_allocError();
    v48 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88370, &qword_261220470);
    *v48 = &type metadata for MobileDocumentElementInternal;
    sub_26121D360();
    sub_26121D210();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D84160], v46);
    swift_willThrow();
    (*(v153 + 8))(v29, v26);
LABEL_46:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v154);
  }

  v39 = v26;
  v90 = v37;
  v40 = v147;
  switch(v38)
  {
    case 1:
      v155 = 1;
      sub_2612123E4();
      v71 = v93;
      v42 = v39;
      v72 = v94;
      sub_26121D350();
      if (v72)
      {
        goto LABEL_29;
      }

      (*(v96 + 8))(v71, v97);
      (*(v153 + 8))(v29, v39);
      swift_unknownObjectRelease();
      v44 = 1;
      v45 = 1;
      goto LABEL_51;
    case 2:
      v155 = 2;
      sub_261212390();
      v64 = v132;
      v42 = v39;
      v65 = v94;
      sub_26121D350();
      if (v65)
      {
        goto LABEL_29;
      }

      (*(v98 + 8))(v64, v99);
      (*(v153 + 8))(v29, v39);
      swift_unknownObjectRelease();
      v45 = 1;
      v44 = 2;
      goto LABEL_51;
    case 3:
      v155 = 3;
      sub_26121233C();
      v68 = v94;
      sub_26121D350();
      if (v68)
      {
        (*(v153 + 8))(v29, v39);
        goto LABEL_46;
      }

      (*(v40 + 8))(v32, v100);
      (*(v153 + 8))(v29, v39);
      swift_unknownObjectRelease();
      v45 = 1;
      v44 = 3;
      goto LABEL_51;
    case 4:
      v155 = 4;
      sub_2612122E8();
      v50 = v39;
      v56 = v94;
      sub_26121D350();
      if (v56)
      {
        goto LABEL_45;
      }

      v57 = v102;
      v58 = sub_26121D3E0();
      v59 = v153;
      v44 = v58;
      (*(v101 + 8))(v33, v57);
      (*(v59 + 8))(v29, v39);
      swift_unknownObjectRelease();
      v45 = 0;
      goto LABEL_51;
    case 5:
      v155 = 5;
      sub_261212294();
      v75 = v133;
      v50 = v39;
      v76 = v94;
      sub_26121D350();
      if (v76)
      {
        goto LABEL_45;
      }

      (*(v103 + 8))(v75, v104);
      (*(v153 + 8))(v29, v39);
      swift_unknownObjectRelease();
      v45 = 1;
      v44 = 4;
      goto LABEL_51;
    case 6:
      v155 = 6;
      sub_261212240();
      v50 = v39;
      v79 = v94;
      sub_26121D350();
      if (v79)
      {
        goto LABEL_45;
      }

      (*(v105 + 8))(v34, v106);
      (*(v153 + 8))(v29, v39);
      swift_unknownObjectRelease();
      v45 = 1;
      v44 = 5;
      goto LABEL_51;
    case 7:
      v155 = 7;
      sub_2612121EC();
      v69 = v134;
      v50 = v39;
      v70 = v94;
      sub_26121D350();
      if (v70)
      {
        goto LABEL_45;
      }

      (*(v107 + 8))(v69, v108);
      (*(v153 + 8))(v29, v39);
      swift_unknownObjectRelease();
      v45 = 1;
      v44 = 6;
      goto LABEL_51;
    case 8:
      v155 = 8;
      sub_261212198();
      v84 = v135;
      v50 = v39;
      v85 = v94;
      sub_26121D350();
      if (v85)
      {
        goto LABEL_45;
      }

      (*(v109 + 8))(v84, v110);
      (*(v153 + 8))(v29, v39);
      swift_unknownObjectRelease();
      v45 = 1;
      v44 = 7;
      goto LABEL_51;
    case 9:
      v155 = 9;
      sub_261212144();
      v62 = v136;
      v50 = v39;
      v63 = v94;
      sub_26121D350();
      if (v63)
      {
        goto LABEL_45;
      }

      (*(v111 + 8))(v62, v112);
      (*(v153 + 8))(v29, v39);
      swift_unknownObjectRelease();
      v45 = 1;
      v44 = 8;
      goto LABEL_51;
    case 10:
      v155 = 10;
      sub_2612120F0();
      v82 = v137;
      v50 = v39;
      v83 = v94;
      sub_26121D350();
      if (v83)
      {
        goto LABEL_45;
      }

      (*(v113 + 8))(v82, v114);
      (*(v153 + 8))(v29, v39);
      swift_unknownObjectRelease();
      v45 = 1;
      v44 = 9;
      goto LABEL_51;
    case 11:
      v155 = 11;
      sub_26121209C();
      v54 = v138;
      v50 = v39;
      v55 = v94;
      sub_26121D350();
      if (v55)
      {
        goto LABEL_45;
      }

      (*(v115 + 8))(v54, v116);
      (*(v153 + 8))(v29, v39);
      swift_unknownObjectRelease();
      v45 = 1;
      v44 = 10;
      goto LABEL_51;
    case 12:
      v155 = 12;
      sub_261212048();
      v60 = v139;
      v50 = v39;
      v61 = v94;
      sub_26121D350();
      if (v61)
      {
        goto LABEL_45;
      }

      (*(v117 + 8))(v60, v118);
      (*(v153 + 8))(v29, v39);
      swift_unknownObjectRelease();
      v45 = 1;
      v44 = 11;
      goto LABEL_51;
    case 13:
      v155 = 13;
      sub_261211FF4();
      v77 = v140;
      v50 = v39;
      v78 = v94;
      sub_26121D350();
      if (v78)
      {
        goto LABEL_45;
      }

      (*(v119 + 8))(v77, v120);
      (*(v153 + 8))(v29, v39);
      swift_unknownObjectRelease();
      v45 = 1;
      v44 = 12;
      goto LABEL_51;
    case 14:
      v155 = 14;
      sub_261211FA0();
      v52 = v141;
      v50 = v39;
      v53 = v94;
      sub_26121D350();
      if (v53)
      {
        goto LABEL_45;
      }

      (*(v121 + 8))(v52, v122);
      (*(v153 + 8))(v29, v39);
      swift_unknownObjectRelease();
      v45 = 1;
      v44 = 13;
      goto LABEL_51;
    case 15:
      v155 = 15;
      sub_261211F4C();
      v66 = v142;
      v50 = v39;
      v67 = v94;
      sub_26121D350();
      if (v67)
      {
        goto LABEL_45;
      }

      (*(v123 + 8))(v66, v124);
      (*(v153 + 8))(v29, v39);
      swift_unknownObjectRelease();
      v45 = 1;
      v44 = 14;
      goto LABEL_51;
    case 16:
      v155 = 16;
      sub_261211EF8();
      v49 = v143;
      v50 = v39;
      v51 = v94;
      sub_26121D350();
      if (v51)
      {
        goto LABEL_45;
      }

      (*(v125 + 8))(v49, v126);
      (*(v153 + 8))(v29, v39);
      swift_unknownObjectRelease();
      v45 = 1;
      v44 = 15;
      goto LABEL_51;
    case 17:
      v155 = 17;
      sub_261211EA4();
      v73 = v144;
      v50 = v39;
      v74 = v94;
      sub_26121D350();
      if (v74)
      {
        goto LABEL_45;
      }

      (*(v127 + 8))(v73, v128);
      (*(v153 + 8))(v29, v39);
      swift_unknownObjectRelease();
      v45 = 1;
      v44 = 16;
      goto LABEL_51;
    case 18:
      v155 = 18;
      sub_261211E50();
      v80 = v145;
      v50 = v39;
      v81 = v94;
      sub_26121D350();
      if (v81)
      {
        goto LABEL_45;
      }

      (*(v129 + 8))(v80, v130);
      (*(v153 + 8))(v29, v39);
      swift_unknownObjectRelease();
      v45 = 1;
      v44 = 17;
      goto LABEL_51;
    case 19:
      v155 = 19;
      sub_261211DFC();
      v86 = v146;
      v50 = v39;
      v87 = v94;
      sub_26121D350();
      if (v87)
      {
LABEL_45:
        (*(v153 + 8))(v29, v50);
        goto LABEL_46;
      }

      (*(v131 + 8))(v86, v35);
      (*(v153 + 8))(v29, v39);
      swift_unknownObjectRelease();
      v45 = 1;
      v44 = 18;
      goto LABEL_51;
    default:
      v155 = 0;
      sub_261212438();
      v41 = v92;
      v42 = v39;
      v43 = v94;
      sub_26121D350();
      v44 = v43;
      if (v43)
      {
LABEL_29:
        (*(v153 + 8))(v29, v42);
        goto LABEL_46;
      }

      (*(v95 + 8))(v41, v91);
      (*(v153 + 8))(v29, v39);
      swift_unknownObjectRelease();
      v45 = 1;
LABEL_51:
      v89 = v154;
      *v36 = v44;
      *(v36 + 8) = v45;
      result = __swift_destroy_boxed_opaque_existential_1(v89);
      break;
  }

  return result;
}

uint64_t sub_26121199C()
{
  sub_26121D5B0();
  MobileDocumentElementInternal.hash(into:)();
  return sub_26121D5D0();
}

uint64_t sub_2612119F4(uint64_t a1)
{
  sub_26121D5B0();
  MobileDocumentElementInternal.hash(into:)();
  return sub_26121D5D0();
}

uint64_t sub_261211A48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2611B7D88(0, v1, 0);
    v3 = v14;
    v4 = a1 + 40;
    do
    {
      v5 = sub_26121CCF0();
      v15 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_2611B7D88((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v15;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87468, &qword_2612210E0);
  sub_2611BDF14();
  v12 = sub_26121CBF0();

  return v12;
}

BOOL _s19ProximityReaderCore29MobileDocumentElementInternalO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    switch(v2)
    {
      case 1:
        if (v3 != 1)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 2:
        if (v3 != 2)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 3:
        if (v3 != 3)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 4:
        if (v3 != 4)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 5:
        if (v3 != 5)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 6:
        if (v3 != 6)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 7:
        if (v3 != 7)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 8:
        if (v3 != 8)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 9:
        if (v3 != 9)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 10:
        if (v3 != 10)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 11:
        if (v3 != 11)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 12:
        if (v3 != 12)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 13:
        if (v3 != 13)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 14:
        if (v3 != 14)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 15:
        if (v3 != 15)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 16:
        if (v3 != 16)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 17:
        if (v3 != 17)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 18:
        if (v3 <= 0x11)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      default:
        if (v3)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
    }
  }

  else
  {
    return (*(a2 + 8) & 1) == 0 && v2 == v3;
  }

  return result;
}

unint64_t sub_261211DA8()
{
  result = qword_27FE9A600;
  if (!qword_27FE9A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A600);
  }

  return result;
}

unint64_t sub_261211DFC()
{
  result = qword_27FE9A608;
  if (!qword_27FE9A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A608);
  }

  return result;
}

unint64_t sub_261211E50()
{
  result = qword_27FE9A610;
  if (!qword_27FE9A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A610);
  }

  return result;
}

unint64_t sub_261211EA4()
{
  result = qword_27FE9A618;
  if (!qword_27FE9A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A618);
  }

  return result;
}

unint64_t sub_261211EF8()
{
  result = qword_27FE9A620;
  if (!qword_27FE9A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A620);
  }

  return result;
}

unint64_t sub_261211F4C()
{
  result = qword_27FE9A628;
  if (!qword_27FE9A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A628);
  }

  return result;
}

unint64_t sub_261211FA0()
{
  result = qword_27FE9A630;
  if (!qword_27FE9A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A630);
  }

  return result;
}

unint64_t sub_261211FF4()
{
  result = qword_27FE9A638;
  if (!qword_27FE9A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A638);
  }

  return result;
}

unint64_t sub_261212048()
{
  result = qword_27FE9A640;
  if (!qword_27FE9A640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A640);
  }

  return result;
}

unint64_t sub_26121209C()
{
  result = qword_27FE9A648;
  if (!qword_27FE9A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A648);
  }

  return result;
}

unint64_t sub_2612120F0()
{
  result = qword_27FE9A650;
  if (!qword_27FE9A650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A650);
  }

  return result;
}

unint64_t sub_261212144()
{
  result = qword_27FE9A658;
  if (!qword_27FE9A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A658);
  }

  return result;
}

unint64_t sub_261212198()
{
  result = qword_27FE9A660;
  if (!qword_27FE9A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A660);
  }

  return result;
}

unint64_t sub_2612121EC()
{
  result = qword_27FE9A668;
  if (!qword_27FE9A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A668);
  }

  return result;
}

unint64_t sub_261212240()
{
  result = qword_27FE9A670;
  if (!qword_27FE9A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A670);
  }

  return result;
}

unint64_t sub_261212294()
{
  result = qword_27FE9A678;
  if (!qword_27FE9A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A678);
  }

  return result;
}

unint64_t sub_2612122E8()
{
  result = qword_27FE9A680;
  if (!qword_27FE9A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A680);
  }

  return result;
}

unint64_t sub_26121233C()
{
  result = qword_27FE9A688;
  if (!qword_27FE9A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A688);
  }

  return result;
}

unint64_t sub_261212390()
{
  result = qword_27FE9A690;
  if (!qword_27FE9A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A690);
  }

  return result;
}

unint64_t sub_2612123E4()
{
  result = qword_27FE9A698;
  if (!qword_27FE9A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9A698);
  }

  return result;
}

unint64_t sub_261212438()
{
  result = qword_27FE9A6A0[0];
  if (!qword_27FE9A6A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9A6A0);
  }

  return result;
}

unint64_t sub_261212490()
{
  result = qword_27FE88310;
  if (!qword_27FE88310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE88310);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MobileDocumentElementInternal(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MobileDocumentElementInternal(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_261212534(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261212550(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MobileDocumentElementInternal.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MobileDocumentElementInternal.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_261212814()
{
  result = qword_27FE9B8B0[0];
  if (!qword_27FE9B8B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9B8B0);
  }

  return result;
}

unint64_t sub_26121286C()
{
  result = qword_27FE9BEC0[0];
  if (!qword_27FE9BEC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9BEC0);
  }

  return result;
}

unint64_t sub_2612128C4()
{
  result = qword_27FE9BFD0;
  if (!qword_27FE9BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9BFD0);
  }

  return result;
}

unint64_t sub_26121291C()
{
  result = qword_27FE9BFD8[0];
  if (!qword_27FE9BFD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9BFD8);
  }

  return result;
}

unint64_t sub_261212974()
{
  result = qword_27FE9C060;
  if (!qword_27FE9C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9C060);
  }

  return result;
}

unint64_t sub_2612129CC()
{
  result = qword_27FE9C068[0];
  if (!qword_27FE9C068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9C068);
  }

  return result;
}

unint64_t sub_261212A24()
{
  result = qword_27FE9C0F0;
  if (!qword_27FE9C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9C0F0);
  }

  return result;
}

unint64_t sub_261212A7C()
{
  result = qword_27FE9C0F8[0];
  if (!qword_27FE9C0F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9C0F8);
  }

  return result;
}

unint64_t sub_261212AD4()
{
  result = qword_27FE9C180;
  if (!qword_27FE9C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9C180);
  }

  return result;
}

unint64_t sub_261212B2C()
{
  result = qword_27FE9C188[0];
  if (!qword_27FE9C188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9C188);
  }

  return result;
}

unint64_t sub_261212B84()
{
  result = qword_27FE9C210;
  if (!qword_27FE9C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9C210);
  }

  return result;
}

unint64_t sub_261212BDC()
{
  result = qword_27FE9C218[0];
  if (!qword_27FE9C218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9C218);
  }

  return result;
}

unint64_t sub_261212C34()
{
  result = qword_27FE9C2A0;
  if (!qword_27FE9C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9C2A0);
  }

  return result;
}

unint64_t sub_261212C8C()
{
  result = qword_27FE9C2A8[0];
  if (!qword_27FE9C2A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9C2A8);
  }

  return result;
}

unint64_t sub_261212CE4()
{
  result = qword_27FE9C330;
  if (!qword_27FE9C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9C330);
  }

  return result;
}

unint64_t sub_261212D3C()
{
  result = qword_27FE9C338[0];
  if (!qword_27FE9C338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9C338);
  }

  return result;
}

unint64_t sub_261212D94()
{
  result = qword_27FE9C3C0;
  if (!qword_27FE9C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9C3C0);
  }

  return result;
}

unint64_t sub_261212DEC()
{
  result = qword_27FE9C3C8[0];
  if (!qword_27FE9C3C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9C3C8);
  }

  return result;
}

unint64_t sub_261212E44()
{
  result = qword_27FE9C450;
  if (!qword_27FE9C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9C450);
  }

  return result;
}

unint64_t sub_261212E9C()
{
  result = qword_27FE9C458[0];
  if (!qword_27FE9C458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9C458);
  }

  return result;
}

unint64_t sub_261212EF4()
{
  result = qword_27FE9C4E0;
  if (!qword_27FE9C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9C4E0);
  }

  return result;
}

unint64_t sub_261212F4C()
{
  result = qword_27FE9C4E8[0];
  if (!qword_27FE9C4E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9C4E8);
  }

  return result;
}

unint64_t sub_261212FA4()
{
  result = qword_27FE9C570;
  if (!qword_27FE9C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9C570);
  }

  return result;
}

unint64_t sub_261212FFC()
{
  result = qword_27FE9C578;
  if (!qword_27FE9C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9C578);
  }

  return result;
}

unint64_t sub_261213054()
{
  result = qword_27FE9C600;
  if (!qword_27FE9C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9C600);
  }

  return result;
}

unint64_t sub_2612130AC()
{
  result = qword_27FE9C608[0];
  if (!qword_27FE9C608[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9C608);
  }

  return result;
}

unint64_t sub_261213104()
{
  result = qword_27FE9C690;
  if (!qword_27FE9C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9C690);
  }

  return result;
}

unint64_t sub_26121315C()
{
  result = qword_27FE9C698[0];
  if (!qword_27FE9C698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9C698);
  }

  return result;
}

unint64_t sub_2612131B4()
{
  result = qword_27FE9C720;
  if (!qword_27FE9C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9C720);
  }

  return result;
}

unint64_t sub_26121320C()
{
  result = qword_27FE9C728[0];
  if (!qword_27FE9C728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9C728);
  }

  return result;
}

unint64_t sub_261213264()
{
  result = qword_27FE9C7B0;
  if (!qword_27FE9C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9C7B0);
  }

  return result;
}

unint64_t sub_2612132BC()
{
  result = qword_27FE9C7B8[0];
  if (!qword_27FE9C7B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9C7B8);
  }

  return result;
}

unint64_t sub_261213314()
{
  result = qword_27FE9C840;
  if (!qword_27FE9C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9C840);
  }

  return result;
}

unint64_t sub_26121336C()
{
  result = qword_27FE9C848[0];
  if (!qword_27FE9C848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9C848);
  }

  return result;
}

unint64_t sub_2612133C4()
{
  result = qword_27FE9C8D0;
  if (!qword_27FE9C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9C8D0);
  }

  return result;
}

unint64_t sub_26121341C()
{
  result = qword_27FE9C8D8[0];
  if (!qword_27FE9C8D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9C8D8);
  }

  return result;
}

unint64_t sub_261213474()
{
  result = qword_27FE9C960;
  if (!qword_27FE9C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9C960);
  }

  return result;
}

unint64_t sub_2612134CC()
{
  result = qword_27FE9C968[0];
  if (!qword_27FE9C968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9C968);
  }

  return result;
}

unint64_t sub_261213524()
{
  result = qword_27FE9C9F0;
  if (!qword_27FE9C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9C9F0);
  }

  return result;
}

unint64_t sub_26121357C()
{
  result = qword_27FE9C9F8[0];
  if (!qword_27FE9C9F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9C9F8);
  }

  return result;
}

unint64_t sub_2612135D4()
{
  result = qword_27FE9CA80;
  if (!qword_27FE9CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9CA80);
  }

  return result;
}

unint64_t sub_26121362C()
{
  result = qword_27FE9CA88[0];
  if (!qword_27FE9CA88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9CA88);
  }

  return result;
}

unint64_t sub_261213684()
{
  result = qword_27FE9CB10;
  if (!qword_27FE9CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9CB10);
  }

  return result;
}

unint64_t sub_2612136DC()
{
  result = qword_27FE9CB18[0];
  if (!qword_27FE9CB18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9CB18);
  }

  return result;
}

uint64_t sub_261213730(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065;
  if (v4 || (sub_26121D4D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL || (sub_26121D4D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7469617274726F70 && a2 == 0xE800000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6645601 && a2 == 0xE300000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61654C7441656761 && a2 == 0xEA00000000007473 || (sub_26121D4D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6942664F65746164 && a2 == 0xEB00000000687472 || (sub_26121D4D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 7890291 && a2 == 0xE300000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x726F6C6F43657965 && a2 == 0xE800000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F6C6F4372696168 && a2 == 0xE900000000000072 || (sub_26121D4D0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000261230360 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x536E617265746576 && a2 == 0xED00007375746174 || (sub_26121D4D0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000261230380 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002612303A0 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEE007265626D754ELL || (sub_26121D4D0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002612303C0 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002612303E0 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000261230400 == a2)
  {

    return 19;
  }

  else
  {
    v6 = sub_26121D4D0();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_261213D70()
{
  if (*v0)
  {
    return 0x5261746144776172;
  }

  else
  {
    return 0x7073655261746164;
  }
}

uint64_t sub_261213DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7073655261746164 && a2 == 0xEC00000065736E6FLL;
  if (v6 || (sub_26121D4D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5261746144776172 && a2 == 0xEF65736E6F707365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26121D4D0();

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

uint64_t sub_261213EA8(uint64_t a1)
{
  v2 = sub_2612148D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261213EE4(uint64_t a1)
{
  v2 = sub_2612148D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261213F20()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_261213F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_26121D4D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26121D4D0();

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

uint64_t sub_261214008(uint64_t a1)
{
  v2 = sub_2612149E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261214044(uint64_t a1)
{
  v2 = sub_2612149E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261214080()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_2612140C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65736E6F70736572 && a2 == 0xEC00000061746144;
  if (v6 || (sub_26121D4D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000261230510 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26121D4D0();

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

uint64_t sub_2612141B0(uint64_t a1)
{
  v2 = sub_261214990();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612141EC(uint64_t a1)
{
  v2 = sub_261214990();

  return MEMORY[0x2821FE720](a1, v2);
}

void MobileDriversLicenseDataResponseInternal.ResponseType.encode(to:)(void *a1)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88320, &qword_261229C98);
  v32 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88328, &qword_261229CA0);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = &v30 - v5;
  v38 = sub_26121CAB0();
  v31 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for IdentityDocumentType(0);
  MEMORY[0x28223BE20](v30);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MobileDriversLicenseDataResponseInternal.ResponseType(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88330, &qword_261229CA8);
  v40 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612148D8();
  sub_26121D600();
  sub_26121492C(v36, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v11;
    v16 = v11[1];
    v17 = v11[2];
    v18 = v11[3];
    LOBYTE(v42) = 1;
    sub_261214990();
    sub_26121D410();
    v41 = v15;
    v42 = v15;
    v43 = v16;
    v44 = 0;
    sub_26119CC60();
    v19 = v39;
    sub_26121D4A0();
    if (v19)
    {
      sub_26119DA0C(v17, v18);
      (*(v32 + 8))(v3, v37);
      (*(v40 + 8))(v14, v12);
      v20 = v41;
      v21 = v16;
    }

    else
    {
      v42 = v17;
      v43 = v18;
      v44 = 1;
      v39 = v18;
      v28 = v37;
      sub_26121D4A0();
      sub_26119DA0C(v41, v16);
      (*(v32 + 8))(v3, v28);
      (*(v40 + 8))(v14, v12);
      v20 = v17;
      v21 = v39;
    }

    sub_26119DA0C(v20, v21);
  }

  else
  {
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88340, &qword_261229CB0) + 48);
    sub_2612152B0(v11, v8, type metadata accessor for IdentityDocumentType);
    v23 = v31;
    (*(v31 + 32))(v41, v11 + v22, v38);
    LOBYTE(v42) = 0;
    sub_2612149E4();
    v24 = v33;
    sub_26121D410();
    LOBYTE(v42) = 0;
    sub_261214A38(&qword_27FE87E80, type metadata accessor for IdentityDocumentType, &protocol conformance descriptor for IdentityDocumentType);
    v25 = v35;
    v26 = v39;
    sub_26121D4A0();
    v27 = v23;
    if (v26)
    {
      (*(v34 + 8))(v24, v25);
      (*(v23 + 8))(v41, v38);
    }

    else
    {
      LOBYTE(v42) = 1;
      sub_261214A38(&qword_27FE88350, MEMORY[0x277CFF090], MEMORY[0x277CFF098]);
      v29 = v38;
      sub_26121D4A0();
      (*(v34 + 8))(v24, v25);
      (*(v27 + 8))(v41, v29);
    }

    sub_2612154E8(v8, type metadata accessor for IdentityDocumentType);
    (*(v40 + 8))(v14, v12);
  }
}

unint64_t sub_2612148D8()
{
  result = qword_27FE9CBA0;
  if (!qword_27FE9CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9CBA0);
  }

  return result;
}

uint64_t sub_26121492C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDataResponseInternal.ResponseType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_261214990()
{
  result = qword_27FE9CBA8;
  if (!qword_27FE9CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9CBA8);
  }

  return result;
}

unint64_t sub_2612149E4()
{
  result = qword_27FE9CBB0;
  if (!qword_27FE9CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9CBB0);
  }

  return result;
}

uint64_t sub_261214A38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MobileDriversLicenseDataResponseInternal.ResponseType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88358, &qword_261229CB8);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v38 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88360, &qword_261229CC0);
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88368, &unk_261229CC8);
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v9 = type metadata accessor for MobileDriversLicenseDataResponseInternal.ResponseType(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2612148D8();
  v19 = v48;
  sub_26121D5F0();
  if (!v19)
  {
    v38 = v12;
    v39 = v17;
    v48 = v15;
    v21 = v45;
    v20 = v46;
    v22 = sub_26121D400();
    v23 = v22;
    if (*(v22 + 16) == 1)
    {
      if (*(v22 + 32))
      {
        LOBYTE(v51) = 1;
        sub_261214990();
        v24 = v8;
        sub_26121D350();
        LOBYTE(v50) = 0;
        sub_26119E390();
        v28 = v42;
        sub_26121D3F0();
        v32 = v52;
        v48 = v51;
        v53 = 1;
        sub_26121D3F0();
        (*(v41 + 8))(v20, v28);
        (*(v47 + 8))(v24, v6);
        swift_unknownObjectRelease();
        v35 = v38;
        *v38 = v48;
        v35[1] = v32;
        *(v35 + 1) = v50;
        swift_storeEnumTagMultiPayload();
        v36 = v35;
      }

      else
      {
        LOBYTE(v51) = 0;
        sub_2612149E4();
        sub_26121D350();
        v46 = v23;
        v29 = v6;
        type metadata accessor for IdentityDocumentType(0);
        LOBYTE(v51) = 0;
        sub_261214A38(&qword_27FE88380, type metadata accessor for IdentityDocumentType, &protocol conformance descriptor for IdentityDocumentType);
        v30 = v48;
        sub_26121D3F0();
        v31 = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88340, &qword_261229CB0);
        sub_26121CAB0();
        LOBYTE(v51) = 1;
        sub_261214A38(&qword_27FE88388, MEMORY[0x277CFF090], MEMORY[0x277CFF0A0]);
        v34 = v44;
        sub_26121D3F0();
        (*(v43 + 8))(v34, v21);
        (*(v31 + 8))(v8, v29);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v36 = v30;
      }

      v37 = v39;
      sub_2612152B0(v36, v39, type metadata accessor for MobileDriversLicenseDataResponseInternal.ResponseType);
      sub_2612152B0(v37, v40, type metadata accessor for MobileDriversLicenseDataResponseInternal.ResponseType);
    }

    else
    {
      v25 = sub_26121D220();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88370, &qword_261220470);
      *v27 = v9;
      sub_26121D360();
      sub_26121D210();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v47 + 8))(v8, v6);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_2612152B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t MobileDriversLicenseDataResponseInternal.issuer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore40MobileDriversLicenseDataResponseInternal_issuer);

  return v1;
}

id MobileDriversLicenseDataResponseInternal.__allocating_init(responseType:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  sub_26121492C(a1, &v7[OBJC_IVAR____TtC19ProximityReaderCore40MobileDriversLicenseDataResponseInternal_responseType]);
  v8 = &v7[OBJC_IVAR____TtC19ProximityReaderCore40MobileDriversLicenseDataResponseInternal_issuer];
  *v8 = a2;
  *(v8 + 1) = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_2612154E8(a1, type metadata accessor for MobileDriversLicenseDataResponseInternal.ResponseType);
  return v9;
}

id MobileDriversLicenseDataResponseInternal.init(responseType:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  sub_26121492C(a1, &v3[OBJC_IVAR____TtC19ProximityReaderCore40MobileDriversLicenseDataResponseInternal_responseType]);
  v8 = &v3[OBJC_IVAR____TtC19ProximityReaderCore40MobileDriversLicenseDataResponseInternal_issuer];
  *v8 = a2;
  *(v8 + 1) = a3;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_2612154E8(a1, type metadata accessor for MobileDriversLicenseDataResponseInternal.ResponseType);
  return v9;
}

uint64_t sub_2612154E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id MobileDriversLicenseDataResponseInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2612155DC()
{
  if (*v0)
  {
    return 0x726575737369;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_26121561C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65736E6F70736572 && a2 == 0xEC00000065707954;
  if (v6 || (sub_26121D4D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726575737369 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26121D4D0();

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

uint64_t sub_2612156F8(uint64_t a1)
{
  v2 = sub_2612159E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261215734(uint64_t a1)
{
  v2 = sub_2612159E8();

  return MEMORY[0x2821FE720](a1, v2);
}

id MobileDriversLicenseDataResponseInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MobileDriversLicenseDataResponseInternal.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88390, &qword_261229CD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612159E8();
  sub_26121D600();
  v8[15] = 0;
  type metadata accessor for MobileDriversLicenseDataResponseInternal.ResponseType(0);
  sub_261214A38(&qword_27FE88398, type metadata accessor for MobileDriversLicenseDataResponseInternal.ResponseType, &protocol conformance descriptor for MobileDriversLicenseDataResponseInternal.ResponseType);
  sub_26121D4A0();
  if (!v1)
  {
    v8[14] = 1;
    sub_26121D460();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2612159E8()
{
  result = qword_27FE9CBB8[0];
  if (!qword_27FE9CBB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9CBB8);
  }

  return result;
}

void *MobileDriversLicenseDataResponseInternal.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for MobileDriversLicenseDataResponseInternal.ResponseType(0);
  MEMORY[0x28223BE20](v5);
  v18 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE883A0, &qword_261229CE0);
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612159E8();
  sub_26121D5F0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v7;
    v22 = 0;
    sub_261214A38(&unk_27FE883A8, type metadata accessor for MobileDriversLicenseDataResponseInternal.ResponseType, &protocol conformance descriptor for MobileDriversLicenseDataResponseInternal.ResponseType);
    v12 = v18;
    v11 = v19;
    sub_26121D3F0();
    sub_2612152B0(v12, v1 + OBJC_IVAR____TtC19ProximityReaderCore40MobileDriversLicenseDataResponseInternal_responseType, type metadata accessor for MobileDriversLicenseDataResponseInternal.ResponseType);
    v22 = 1;
    v14 = sub_26121D3B0();
    v15 = (v1 + OBJC_IVAR____TtC19ProximityReaderCore40MobileDriversLicenseDataResponseInternal_issuer);
    *v15 = v14;
    v15[1] = v16;
    v21.receiver = v1;
    v21.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v21, sel_init);
    (*(v10 + 8))(v9, v11);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

void *sub_261215DA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = MobileDriversLicenseDataResponseInternal.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id MobileDriversLicenseDataResponseInternal.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MobileDriversLicenseDataResponseInternal.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for MobileDriversLicenseDataResponseInternal.ResponseType(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26119FDE8();
  v6 = sub_26121D060();
  if (v6)
  {
    v7 = v6;
    v8 = sub_26121C690();
    v10 = v9;

    v11 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_26119D904(v8, v10);
    v12 = sub_2611A0014(v8, v10);
    sub_26119DA0C(v8, v10);
    if (v12)
    {
      sub_261214A38(&qword_27FE883B8, type metadata accessor for MobileDriversLicenseDataResponseInternal, &protocol conformance descriptor for MobileDriversLicenseDataResponseInternal);
      sub_26121CFF0();
      v14 = v23;
      if (v23)
      {
        sub_26121492C(&v23[OBJC_IVAR____TtC19ProximityReaderCore40MobileDriversLicenseDataResponseInternal_responseType], v5);
        v15 = *&v14[OBJC_IVAR____TtC19ProximityReaderCore40MobileDriversLicenseDataResponseInternal_issuer + 8];
        v21 = *&v14[OBJC_IVAR____TtC19ProximityReaderCore40MobileDriversLicenseDataResponseInternal_issuer];
        v16 = objc_allocWithZone(ObjectType);
        sub_26121492C(v5, &v16[OBJC_IVAR____TtC19ProximityReaderCore40MobileDriversLicenseDataResponseInternal_responseType]);
        v17 = &v16[OBJC_IVAR____TtC19ProximityReaderCore40MobileDriversLicenseDataResponseInternal_issuer];
        *v17 = v21;
        *(v17 + 1) = v15;
        v22.receiver = v16;
        v22.super_class = ObjectType;

        v18 = objc_msgSendSuper2(&v22, sel_init);

        sub_2612154E8(v5, type metadata accessor for MobileDriversLicenseDataResponseInternal.ResponseType);
        swift_getObjectType();
        swift_deallocPartialClassInstance();
        v19 = v18;
        [v12 finishDecoding];

        sub_26119DA0C(v8, v10);
        return v19;
      }

      [v12 finishDecoding];
    }

    sub_26119DA0C(v8, v10);
  }

  else
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall MobileDriversLicenseDataResponseInternal.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  sub_261214A38(&unk_27FE883C0, type metadata accessor for MobileDriversLicenseDataResponseInternal, &protocol conformance descriptor for MobileDriversLicenseDataResponseInternal);
  sub_26121CFE0();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_26121CC50();
    [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
  }
}

uint64_t MobileDriversLicenseDataResponseInternal.ResponseType.description.getter()
{
  v1 = type metadata accessor for MobileDriversLicenseDataResponseInternal.ResponseType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121492C(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2612154E8(v3, type metadata accessor for MobileDriversLicenseDataResponseInternal.ResponseType);
    return 0xD000000000000011;
  }

  else
  {
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88340, &qword_261229CB0) + 48);
    v6 = sub_26121CAB0();
    (*(*(v6 - 8) + 8))(&v3[v5], v6);
    sub_2612154E8(v3, type metadata accessor for IdentityDocumentType);
    return 0x7365722061746144;
  }
}

uint64_t sub_2612164E4(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121492C(v2, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2612154E8(v4, type metadata accessor for MobileDriversLicenseDataResponseInternal.ResponseType);
    return 0xD000000000000011;
  }

  else
  {
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88340, &qword_261229CB0) + 48);
    v7 = sub_26121CAB0();
    (*(*(v7 - 8) + 8))(&v4[v6], v7);
    sub_2612154E8(v4, type metadata accessor for IdentityDocumentType);
    return 0x7365722061746144;
  }
}

uint64_t sub_261216654(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261216694(uint64_t a1)
{
  result = type metadata accessor for MobileDriversLicenseDataResponseInternal.ResponseType(319);
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

void sub_2612167D0(uint64_t a1)
{
  sub_261216844(319);
  if (v1 <= 0x3F)
  {
    sub_2612168B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_261216844(uint64_t a1)
{
  if (!qword_27FE883D0)
  {
    type metadata accessor for IdentityDocumentType(255);
    sub_26121CAB0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FE883D0);
    }
  }
}

void sub_2612168B4()
{
  if (!qword_27FE883D8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FE883D8);
    }
  }
}

unint64_t sub_261216958()
{
  result = qword_27FE9CF60[0];
  if (!qword_27FE9CF60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9CF60);
  }

  return result;
}

unint64_t sub_2612169B0()
{
  result = qword_27FE9D170[0];
  if (!qword_27FE9D170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9D170);
  }

  return result;
}

unint64_t sub_261216A08()
{
  result = qword_27FE9D380[0];
  if (!qword_27FE9D380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9D380);
  }

  return result;
}

unint64_t sub_261216A60()
{
  result = qword_27FE9D590[0];
  if (!qword_27FE9D590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9D590);
  }

  return result;
}

unint64_t sub_261216AB8()
{
  result = qword_27FE9D6A0;
  if (!qword_27FE9D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9D6A0);
  }

  return result;
}

unint64_t sub_261216B10()
{
  result = qword_27FE9D6A8[0];
  if (!qword_27FE9D6A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9D6A8);
  }

  return result;
}

unint64_t sub_261216B68()
{
  result = qword_27FE9D730;
  if (!qword_27FE9D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9D730);
  }

  return result;
}

unint64_t sub_261216BC0()
{
  result = qword_27FE9D738[0];
  if (!qword_27FE9D738[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9D738);
  }

  return result;
}

unint64_t sub_261216C18()
{
  result = qword_27FE9D7C0;
  if (!qword_27FE9D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9D7C0);
  }

  return result;
}

unint64_t sub_261216C70()
{
  result = qword_27FE9D7C8[0];
  if (!qword_27FE9D7C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9D7C8);
  }

  return result;
}

unint64_t sub_261216CC8()
{
  result = qword_27FE9D850;
  if (!qword_27FE9D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9D850);
  }

  return result;
}

unint64_t sub_261216D20()
{
  result = qword_27FE9D858[0];
  if (!qword_27FE9D858[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9D858);
  }

  return result;
}

uint64_t sub_261216DE0(uint64_t a1)
{
  v2 = sub_26121745C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261216E1C(uint64_t a1)
{
  v2 = sub_26121745C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261216E58()
{
  v1 = 0x6465766F72707061;
  if (*v0 != 1)
  {
    v1 = 0x64657463656A6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657373696D736964;
  }
}

uint64_t sub_261216EB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_261218730(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_261216EE0(uint64_t a1)
{
  v2 = sub_2612173B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261216F1C(uint64_t a1)
{
  v2 = sub_2612173B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261216F58(uint64_t a1)
{
  v2 = sub_2612174B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261216F94(uint64_t a1)
{
  v2 = sub_2612174B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261216FD0(uint64_t a1)
{
  v2 = sub_261217408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26121700C(uint64_t a1)
{
  v2 = sub_261217408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDriversLicenseViewResponseInternal.ValidationOutcome.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE883E0, &qword_26122A2F8);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE883E8, &qword_26122A300);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE883F0, &qword_26122A308);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE883F8, &qword_26122A310);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612173B4();
  sub_26121D600();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_26121745C();
      v9 = v21;
      sub_26121D410();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_261217408();
      v9 = v24;
      sub_26121D410();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_2612174B0();
    sub_26121D410();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_2612173B4()
{
  result = qword_27FE9D8E0;
  if (!qword_27FE9D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9D8E0);
  }

  return result;
}

unint64_t sub_261217408()
{
  result = qword_27FE9D8E8;
  if (!qword_27FE9D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9D8E8);
  }

  return result;
}

unint64_t sub_26121745C()
{
  result = qword_27FE9D8F0;
  if (!qword_27FE9D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9D8F0);
  }

  return result;
}

unint64_t sub_2612174B0()
{
  result = qword_27FE9D8F8;
  if (!qword_27FE9D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9D8F8);
  }

  return result;
}

uint64_t MobileDriversLicenseViewResponseInternal.ValidationOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_26121D5B0();
  MEMORY[0x2666FC740](v1);
  return sub_26121D5D0();
}

uint64_t MobileDriversLicenseViewResponseInternal.ValidationOutcome.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88400, &qword_26122A318);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88408, &qword_26122A320);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88410, &qword_26122A328);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88418, &unk_26122A330);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612173B4();
  v13 = v43;
  sub_26121D5F0();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_26121D400();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_26121745C();
          v27 = v34;
          sub_26121D350();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_261217408();
          v31 = v34;
          sub_26121D350();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_2612174B0();
        v29 = v34;
        sub_26121D350();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  v21 = sub_26121D220();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88370, &qword_261220470);
  *v23 = &type metadata for MobileDriversLicenseViewResponseInternal.ValidationOutcome;
  sub_26121D360();
  sub_26121D210();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

id MobileDriversLicenseViewResponseInternal.__allocating_init(validationOutcome:)(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC19ProximityReaderCore40MobileDriversLicenseViewResponseInternal_internalValidationOutcome] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MobileDriversLicenseViewResponseInternal.init(validationOutcome:)(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC19ProximityReaderCore40MobileDriversLicenseViewResponseInternal_internalValidationOutcome] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MobileDriversLicenseViewResponseInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_261217CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x80000002612305C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_26121D4D0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_261217D68(uint64_t a1)
{
  v2 = sub_261217F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261217DA4(uint64_t a1)
{
  v2 = sub_261217F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

id MobileDriversLicenseViewResponseInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MobileDriversLicenseViewResponseInternal.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88430, &qword_26122A340);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261217F6C();
  sub_26121D600();
  v9[15] = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore40MobileDriversLicenseViewResponseInternal_internalValidationOutcome);
  sub_261217FC0();
  sub_26121D4A0();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_261217F6C()
{
  result = qword_27FE9D900[0];
  if (!qword_27FE9D900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9D900);
  }

  return result;
}

unint64_t sub_261217FC0()
{
  result = qword_27FE88438;
  if (!qword_27FE88438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE88438);
  }

  return result;
}

void *MobileDriversLicenseViewResponseInternal.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88440, &qword_26122A348);
  v13 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261217F6C();
  sub_26121D5F0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v13;
    sub_261218234();
    sub_26121D3F0();
    v3[OBJC_IVAR____TtC19ProximityReaderCore40MobileDriversLicenseViewResponseInternal_internalValidationOutcome] = v15;
    v14.receiver = v3;
    v14.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v14, sel_init);
    (*(v10 + 8))(v8, v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_261218234()
{
  result = qword_27FE88448;
  if (!qword_27FE88448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE88448);
  }

  return result;
}

void *sub_261218288@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = MobileDriversLicenseViewResponseInternal.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id MobileDriversLicenseViewResponseInternal.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MobileDriversLicenseViewResponseInternal.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_26119FDE8();
  v3 = sub_26121D060();
  if (v3)
  {
    v4 = v3;
    v5 = sub_26121C690();
    v7 = v6;

    v8 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_26119D904(v5, v7);
    v9 = sub_2611A0014(v5, v7);
    sub_26119DA0C(v5, v7);
    if (v9)
    {
      sub_261218874(&qword_27FE88458, &protocol conformance descriptor for MobileDriversLicenseViewResponseInternal);
      sub_26121CFF0();
      v11 = v17;
      if (v17)
      {
        v12 = *(v17 + OBJC_IVAR____TtC19ProximityReaderCore40MobileDriversLicenseViewResponseInternal_internalValidationOutcome);
        v13 = objc_allocWithZone(ObjectType);
        v13[OBJC_IVAR____TtC19ProximityReaderCore40MobileDriversLicenseViewResponseInternal_internalValidationOutcome] = v12;
        v16.receiver = v13;
        v16.super_class = ObjectType;
        v14 = objc_msgSendSuper2(&v16, sel_init);

        swift_getObjectType();
        swift_deallocPartialClassInstance();
        v15 = v14;
        [v9 finishDecoding];

        sub_26119DA0C(v5, v7);
        return v15;
      }

      [v9 finishDecoding];
    }

    sub_26119DA0C(v5, v7);
  }

  else
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall MobileDriversLicenseViewResponseInternal.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  sub_261218874(&qword_27FE88460, &protocol conformance descriptor for MobileDriversLicenseViewResponseInternal);
  sub_26121CFE0();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_26121CC50();
    [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_261218730(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657373696D736964 && a2 == 0xE900000000000064;
  if (v4 || (sub_26121D4D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465766F72707061 && a2 == 0xE800000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657463656A6572 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26121D4D0();

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

uint64_t sub_261218874(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MobileDriversLicenseViewResponseInternal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2612188B8()
{
  result = qword_27FE88468;
  if (!qword_27FE88468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE88468);
  }

  return result;
}

unint64_t sub_2612189C4()
{
  result = qword_27FE9E010[0];
  if (!qword_27FE9E010[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9E010);
  }

  return result;
}

unint64_t sub_261218A1C()
{
  result = qword_27FE9E220[0];
  if (!qword_27FE9E220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9E220);
  }

  return result;
}

unint64_t sub_261218A74()
{
  result = qword_27FE9E330;
  if (!qword_27FE9E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9E330);
  }

  return result;
}

unint64_t sub_261218ACC()
{
  result = qword_27FE9E338[0];
  if (!qword_27FE9E338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9E338);
  }

  return result;
}

unint64_t sub_261218B24()
{
  result = qword_27FE9E3C0;
  if (!qword_27FE9E3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9E3C0);
  }

  return result;
}

unint64_t sub_261218B7C()
{
  result = qword_27FE9E3C8[0];
  if (!qword_27FE9E3C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9E3C8);
  }

  return result;
}

unint64_t sub_261218BD4()
{
  result = qword_27FE9E450;
  if (!qword_27FE9E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9E450);
  }

  return result;
}

unint64_t sub_261218C2C()
{
  result = qword_27FE9E458[0];
  if (!qword_27FE9E458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9E458);
  }

  return result;
}

unint64_t sub_261218C84()
{
  result = qword_27FE9E4E0;
  if (!qword_27FE9E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9E4E0);
  }

  return result;
}

unint64_t sub_261218CDC()
{
  result = qword_27FE9E4E8[0];
  if (!qword_27FE9E4E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9E4E8);
  }

  return result;
}

unint64_t sub_261218D34()
{
  result = qword_27FE9E570;
  if (!qword_27FE9E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9E570);
  }

  return result;
}

unint64_t sub_261218D8C()
{
  result = qword_27FE9E578;
  if (!qword_27FE9E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9E578);
  }

  return result;
}

uint64_t MobileDriversLicenseViewOptionsInternal.description.getter()
{
  BYTE8(v2) = 0;
  sub_26121D1E0();
  MEMORY[0x2666FBF20](0xD000000000000010, 0x80000002612305E0);
  *&v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewOptionsInternal_validationMode);
  sub_26121D2D0();
  return *(&v2 + 1);
}

ProximityReaderCore::MobileDriversLicenseViewOptionsInternal::ValidationMode_optional __swiftcall MobileDriversLicenseViewOptionsInternal.ValidationMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

id MobileDriversLicenseViewOptionsInternal.__allocating_init(_:)(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewOptionsInternal_validationMode] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MobileDriversLicenseViewOptionsInternal.init(_:)(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewOptionsInternal_validationMode] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MobileDriversLicenseViewOptionsInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_261219190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69746164696C6176 && a2 == 0xEE0065646F4D6E6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26121D4D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_261219220(uint64_t a1)
{
  v2 = sub_2612193F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26121925C(uint64_t a1)
{
  v2 = sub_2612193F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDriversLicenseViewOptionsInternal.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88480, &qword_26122A940);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612193F0();
  sub_26121D600();
  v9[15] = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewOptionsInternal_validationMode);
  sub_26120118C();
  sub_26121D4A0();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2612193F0()
{
  result = qword_27FE9E600;
  if (!qword_27FE9E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9E600);
  }

  return result;
}

void *MobileDriversLicenseViewOptionsInternal.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88490, &qword_26122A948);
  v13 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612193F0();
  sub_26121D5F0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v13;
    sub_26120156C();
    sub_26121D3F0();
    v3[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewOptionsInternal_validationMode] = v15;
    v14.receiver = v3;
    v14.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v14, sel_init);
    (*(v10 + 8))(v8, v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t static MobileDriversLicenseViewRequestInternal.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE88470 = a1;
  return result;
}

uint64_t sub_261219824@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FE88470;
  return result;
}

uint64_t sub_261219870(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FE88470 = v1;
  return result;
}

uint64_t MobileDriversLicenseViewRequestInternal.description.getter()
{
  sub_26121D1E0();
  MEMORY[0x2666FBF20](0xD000000000000016, 0x8000000261230640);
  MEMORY[0x2666FBF20](*(v0 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_sessionIdentifier), *(v0 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_sessionIdentifier + 8));
  MEMORY[0x2666FBF20](0xD000000000000017, 0x8000000261230660);
  v1 = sub_261211A48(*(v0 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_elements));
  MEMORY[0x2666FBF20](v1);

  MEMORY[0x2666FBF20](0xD000000000000016, 0x8000000261230680);
  v2 = [*(v0 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_options) description];
  v3 = sub_26121CC80();
  v5 = v4;

  MEMORY[0x2666FBF20](v3, v5);

  MEMORY[0x2666FBF20](23840, 0xE200000000000000);
  return 0;
}

uint64_t MobileDriversLicenseViewRequestInternal.sessionIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_sessionIdentifier);

  return v1;
}

id MobileDriversLicenseViewRequestInternal.__allocating_init(elements:options:documentTypes:sessionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_elements] = a1;
  *&v11[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_options] = a2;
  *&v11[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_documentTypes] = a3;
  v12 = &v11[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_sessionIdentifier];
  *v12 = a4;
  *(v12 + 1) = a5;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, sel_init);
}

id MobileDriversLicenseViewRequestInternal.init(elements:options:documentTypes:sessionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_elements] = a1;
  *&v5[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_options] = a2;
  *&v5[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_documentTypes] = a3;
  v12 = &v5[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_sessionIdentifier];
  *v12 = a4;
  *(v12 + 1) = a5;
  v14.receiver = v5;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

Swift::Void __swiftcall MobileDriversLicenseViewRequestInternal.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  sub_26121C230(&unk_27FE884C0, v3, type metadata accessor for MobileDriversLicenseViewRequestInternal, &protocol conformance descriptor for MobileDriversLicenseViewRequestInternal);
  sub_26121CFE0();
  [v2 finishEncoding];
  v4 = [v2 encodedData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_26121CC50();
    [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  }

  else
  {
    __break(1u);
  }
}

id MobileDriversLicenseViewRequestInternal.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_26119FDE8();
  v2 = sub_26121D060();
  if (v2)
  {
    v3 = v2;
    sub_26121C680();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_26121A108()
{
  v1 = 0x736E6F6974706FLL;
  v2 = 0x746E656D75636F64;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x73746E656D656C65;
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

uint64_t sub_26121A194@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26121BB58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26121A1BC(uint64_t a1)
{
  v2 = sub_26121B9C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26121A1F8(uint64_t a1)
{
  v2 = sub_26121B9C8();

  return MEMORY[0x2821FE720](a1, v2);
}

id _s19ProximityReaderCore39MobileDriversLicenseViewOptionsInternalCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MobileDriversLicenseViewRequestInternal.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE884D8, &qword_26122A950);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26121B9C8();
  sub_26121D600();
  v12 = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_options);
  HIBYTE(v11) = 0;
  type metadata accessor for MobileDriversLicenseViewOptionsInternal();
  sub_26121C230(&qword_27FE884E0, v9, type metadata accessor for MobileDriversLicenseViewOptionsInternal, &protocol conformance descriptor for MobileDriversLicenseViewOptionsInternal);
  sub_26121D4A0();
  if (!v2)
  {
    v12 = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_elements);
    HIBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE884E8, &qword_26122A958);
    sub_26121BAE0(&unk_27FE884F0, sub_261200420, MEMORY[0x277D83948]);
    sub_26121D4A0();
    v12 = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_documentTypes);
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88500, &qword_26122A960);
    sub_26121BA40(&unk_27FE88508, &qword_27FE87E80, &protocol conformance descriptor for IdentityDocumentType, MEMORY[0x277D83948]);
    sub_26121D4A0();
    LOBYTE(v12) = 3;
    sub_26121D460();
  }

  return (*(v6 + 8))(v8, v5);
}

char *MobileDriversLicenseViewRequestInternal.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88518, &qword_26122A968);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &ObjectType - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26121B9C8();
  sub_26121D5F0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for MobileDriversLicenseViewOptionsInternal();
    v16 = 0;
    sub_26121C230(&qword_27FE88520, v9, type metadata accessor for MobileDriversLicenseViewOptionsInternal, &protocol conformance descriptor for MobileDriversLicenseViewOptionsInternal);
    sub_26121D3F0();
    *(v1 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_options) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE884E8, &qword_26122A958);
    v16 = 1;
    sub_26121BAE0(&qword_27FE88528, sub_261200634, MEMORY[0x277D83978]);
    sub_26121D3F0();
    *(v1 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_elements) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88500, &qword_26122A960);
    v16 = 2;
    sub_26121BA40(&unk_27FE88538, &qword_27FE88380, &protocol conformance descriptor for IdentityDocumentType, MEMORY[0x277D83978]);
    sub_26121D3F0();
    *(v1 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_documentTypes) = v17;
    LOBYTE(v17) = 3;
    v11 = sub_26121D3B0();
    v12 = (v1 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_sessionIdentifier);
    *v12 = v11;
    v12[1] = v13;
    v15.receiver = v1;
    v15.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v15, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_26121AA40@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v8 = objc_allocWithZone(v3);
  result = a2(a1);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void *MobileDriversLicenseViewRequestInternal.requestedElements.getter()
{
  v46 = type metadata accessor for IdentityDocumentType(0);
  v1 = *(v46 - 8);
  v2 = MEMORY[0x28223BE20](v46);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v46 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_documentTypes);
  v8 = sub_26121BCCC(MEMORY[0x277D84F90]);
  v53 = *(v7 + 16);
  if (!v53)
  {
    return v8;
  }

  v9 = 0;
  v10 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_elements);
  v51 = v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v52 = v10;
  v49 = v1;
  v50 = v4;
  v47 = v7;
  v48 = v6;
  while (1)
  {
    if (v9 >= *(v7 + 16))
    {
      goto LABEL_37;
    }

    v55 = v9;
    v56 = v8;
    v54 = *(v1 + 72);
    sub_2612006E0(v51 + v54 * v9, v6);
    v58 = v52;

    sub_26121B248(&unk_2873AFDC8);
    v11 = v58;
    sub_2612006E0(v6, v4);
    v57 = v11[2];
    if (v57)
    {
      break;
    }

    v14 = MEMORY[0x277D84F98];
LABEL_23:

    v32 = v56;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v32;
    v4 = v50;
    v34 = sub_26121B01C(v50);
    v36 = v32[2];
    v37 = (v35 & 1) == 0;
    v30 = __OFADD__(v36, v37);
    v38 = v36 + v37;
    if (v30)
    {
      goto LABEL_38;
    }

    v39 = v35;
    if (v32[3] < v38)
    {
      sub_26121B334(v38, isUniquelyReferenced_nonNull_native);
      v34 = sub_26121B01C(v4);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_41;
      }

LABEL_28:
      v8 = v58;
      if ((v39 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_28;
    }

    v44 = v34;
    sub_26121B6B0();
    v34 = v44;
    v8 = v58;
    if ((v39 & 1) == 0)
    {
LABEL_29:
      v8[(v34 >> 6) + 8] |= 1 << v34;
      v41 = v34;
      sub_2612006E0(v4, v8[6] + v34 * v54);
      *(v8[7] + 8 * v41) = v14;
      v42 = v8[2];
      v30 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v30)
      {
        goto LABEL_39;
      }

      v8[2] = v43;
      goto LABEL_4;
    }

LABEL_3:
    *(v8[7] + 8 * v34) = v14;

LABEL_4:
    v9 = v55 + 1;
    sub_261205D90(v4);
    v6 = v48;
    sub_261205D90(v48);
    v1 = v49;
    v7 = v47;
    if (v9 == v53)
    {
      return v8;
    }
  }

  v12 = 0;
  v13 = v11 + 5;
  v14 = MEMORY[0x277D84F98];
  while (v12 < v11[2])
  {
    v15 = *v13;
    v58 = *(v13 - 1);
    v59 = v15;
    v16 = sub_26121CCF0();
    v18 = v17;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v14;
    v21 = sub_2611B3970(v16, v18);
    v22 = v14[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_35;
    }

    v25 = v20;
    if (v14[3] >= v24)
    {
      if (v19)
      {
        if (v20)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_26120014C();
        if (v25)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_2611FFEAC(v24, v19);
      v26 = sub_2611B3970(v16, v18);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_40;
      }

      v21 = v26;
      if (v25)
      {
LABEL_8:

        v14 = v58;
        *(v58[7] + v21) = 0;
        goto LABEL_9;
      }
    }

    v14 = v58;
    v58[(v21 >> 6) + 8] |= 1 << v21;
    v28 = (v14[6] + 16 * v21);
    *v28 = v16;
    v28[1] = v18;
    *(v14[7] + v21) = 0;
    v29 = v14[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_36;
    }

    v14[2] = v31;
LABEL_9:
    ++v12;
    v13 += 16;
    if (v57 == v12)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_26121D520();
  __break(1u);
LABEL_41:
  result = sub_26121D520();
  __break(1u);
  return result;
}

uint64_t sub_26121AF88()
{
  v1 = *(*v0 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseViewRequestInternal_sessionIdentifier);

  return v1;
}

unint64_t sub_26121B01C(uint64_t a1)
{
  type metadata accessor for IdentityDocumentType(0);
  sub_26121C230(&unk_27FE87E48, 255, type metadata accessor for IdentityDocumentType, &protocol conformance descriptor for IdentityDocumentType);
  v2 = sub_26121CBC0();

  return sub_26121B0B8(a1, v2);
}

unint64_t sub_26121B0B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityDocumentType(0);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_2612006E0(*(v2 + 48) + v11 * v9, v7);
      sub_26121C230(&qword_27FE88560, 255, type metadata accessor for IdentityDocumentType, &protocol conformance descriptor for IdentityDocumentType);
      v12 = sub_26121CC20();
      sub_261205D90(v7);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_26121B248(uint64_t result)
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

  result = sub_26121B8C8(result, v11, 1, v3);
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

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

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

uint64_t sub_26121B334(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for IdentityDocumentType(0);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87ED0, &qword_26122ADF0);
  v44 = v4;
  result = sub_26121D300();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v40 = v3;
    v41 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v42 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v44)
      {
        sub_2612007B4(v25, v7);
        v26 = *(v10 + 56);
        v27 = v7;
        v28 = *(v26 + 8 * v23);
      }

      else
      {
        sub_2612006E0(v25, v7);
        v29 = *(v10 + 56);
        v27 = v7;
        v28 = *(v29 + 8 * v23);
      }

      sub_26121C230(&unk_27FE87E48, 255, type metadata accessor for IdentityDocumentType, &protocol conformance descriptor for IdentityDocumentType);
      v30 = v27;
      result = sub_26121CBC0();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_2612007B4(v30, *(v11 + 48) + v24 * v19);
      *(*(v11 + 56) + 8 * v19) = v28;
      v7 = v30;
      ++*(v11 + 16);
      v10 = v41;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void *sub_26121B6B0()
{
  v1 = v0;
  v2 = type metadata accessor for IdentityDocumentType(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87ED0, &qword_26122ADF0);
  v5 = *v0;
  v6 = sub_26121D2F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_2612006E0(*(v5 + 48) + v21, v4);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_2612007B4(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_26121B8C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88568, &qword_26122ADF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

unint64_t sub_26121B9C8()
{
  result = qword_27FE9E608[0];
  if (!qword_27FE9E608[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9E608);
  }

  return result;
}

uint64_t sub_26121BA40(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE88500, &qword_26122A960);
    sub_26121C230(a2, 255, type metadata accessor for IdentityDocumentType, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26121BAE0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE884E8, &qword_26122A958);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26121BB58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_26121D4D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xED00007365707954 || (sub_26121D4D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002612301E0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_26121D4D0();

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

unint64_t sub_26121BCCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88570, &unk_26122AE00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87ED0, &qword_26122ADF0);
    v7 = sub_26121D310();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26121C278(v9, v5);
      result = sub_26121B01C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for IdentityDocumentType(0);
      result = sub_2612007B4(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26121BE8C()
{
  result = qword_27FE88548;
  if (!qword_27FE88548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE88548);
  }

  return result;
}

unint64_t sub_26121BFD0()
{
  result = qword_27FE9EB90[0];
  if (!qword_27FE9EB90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9EB90);
  }

  return result;
}

unint64_t sub_26121C028()
{
  result = qword_27FE9EDA0[0];
  if (!qword_27FE9EDA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9EDA0);
  }

  return result;
}

unint64_t sub_26121C080()
{
  result = qword_27FE9EEB0;
  if (!qword_27FE9EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9EEB0);
  }

  return result;
}

unint64_t sub_26121C0D8()
{
  result = qword_27FE9EEB8[0];
  if (!qword_27FE9EEB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9EEB8);
  }

  return result;
}

unint64_t sub_26121C130()
{
  result = qword_27FE9EF40;
  if (!qword_27FE9EF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9EF40);
  }

  return result;
}

unint64_t sub_26121C188()
{
  result = qword_27FE9EF48[0];
  if (!qword_27FE9EF48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE9EF48);
  }

  return result;
}

unint64_t sub_26121C1DC()
{
  result = qword_27FE88550;
  if (!qword_27FE88550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE88550);
  }

  return result;
}

uint64_t sub_26121C230(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_26121C278(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88570, &unk_26122AE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}