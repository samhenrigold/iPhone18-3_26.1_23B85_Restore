uint64_t sub_24A703DC4()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A703E58(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A703ED8(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A703F68@<X0>(char *a2@<X8>)
{
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

  *a2 = v5;
  return result;
}

void sub_24A703FC8(uint64_t *a1@<X8>)
{
  v2 = 0x6954657461657263;
  if (*v1)
  {
    v2 = 0x6F43737574617473;
  }

  v3 = 0xEF706D617473656DLL;
  if (*v1)
  {
    v3 = 0xEA00000000006564;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24A704018()
{
  if (*v0)
  {
    return 0x6F43737574617473;
  }

  else
  {
    return 0x6954657461657263;
  }
}

uint64_t sub_24A704064@<X0>(char *a3@<X8>)
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

uint64_t sub_24A7040C8(uint64_t a1)
{
  v2 = sub_24A688C74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A704104(uint64_t a1)
{
  v2 = sub_24A688C74();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t FMIPLockMetadata.debugDescription.getter()
{
  v0 = objc_opt_self();
  type metadata accessor for FMIPLockMetadata(0);
  v1 = sub_24A82C994();
  v2 = [v0 localizedStringFromDate:v1 dateStyle:1 timeStyle:4];

  v3 = sub_24A82CFC4();
  v5 = v4;

  sub_24A82D854();

  v6 = FMIPActionStatus.description.getter();
  MEMORY[0x24C21C9E0](v6);

  MEMORY[0x24C21C9E0](0x617473656D697420, 0xEC000000203A706DLL);
  MEMORY[0x24C21C9E0](v3, v5);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

void FMIPLockMetadata.encode(to:)(void *a1)
{
  v4 = sub_24A6BBA94(&qword_27EF5DB88, &qword_24A835AC8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  type metadata accessor for FMIPLockMetadata(0);
  v9[0] = v1;
  v8 = sub_24A82C994();
  sub_24A67DF6C(a1, a1[3]);
  sub_24A688C74();
  sub_24A82DD84();
  [v8 fm_epoch];
  v11 = 0;
  sub_24A82DB54();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v9[1] = qword_24A835CF0[*v9[0]];
    sub_24A82DB84();
    v10 = 1;
    sub_24A82DB04();
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24A70455C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPLockMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A7045C4()
{
  result = qword_27EF5DB90;
  if (!qword_27EF5DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DB90);
  }

  return result;
}

uint64_t FMIPItemPairingState.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_24A82CAA4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = [a1 status];
  if (v11 == 2)
  {

    v23 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
    v13 = *(*(v23 - 8) + 56);
    v14 = v23;
    v15 = a2;
    v16 = 3;
    goto LABEL_9;
  }

  if (v11 == 1)
  {
    v17 = [a1 beaconIdentifier];
    if (v17)
    {
      v18 = v17;
      sub_24A82CA84();

      v19 = *(v5 + 32);
      v19(v10, v8, v4);
      v19(a2, v10, v4);
      v20 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
      return (*(*(v20 - 8) + 56))(a2, 0, 3, v20);
    }

    goto LABEL_7;
  }

  if (v11)
  {
LABEL_7:

    v22 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
    v13 = *(*(v22 - 8) + 56);
    v14 = v22;
    v15 = a2;
    v16 = 1;
    goto LABEL_9;
  }

  v12 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
  v13 = *(*(v12 - 8) + 56);
  v14 = v12;
  v15 = a2;
  v16 = 2;
LABEL_9:

  return v13(v15, v16, 3, v14);
}

uint64_t FMIPItemPairingState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_24A82CAA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPItemPairingState(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A67DF6C(a1, a1[3]);
  sub_24A82DD54();
  if (v2)
  {
    v14 = a1;
    return sub_24A6876E8(v14);
  }

  v28 = v10;
  v29 = a1;
  v26 = v5;
  v27 = v7;
  v11 = v34;
  sub_24A69A6C4(v32, v33);
  v12 = sub_24A82DBA4();
  v16 = v12;
  v17 = v13;
  v18 = v12 == 27509 && v13 == 0xE200000000000000;
  if (v18 || (sub_24A82DC04() & 1) != 0)
  {

    v19 = 1;
LABEL_11:
    v20 = v28;
LABEL_12:
    v21 = v29;
    v22 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
    (*(*(v22 - 8) + 56))(v20, v19, 3, v22);
    sub_24A6876E8(v32);
    sub_24A704CE0(v20, v11);
    v14 = v21;
    return sub_24A6876E8(v14);
  }

  if (v16 == 117 && v17 == 0xE100000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    v19 = 2;
    goto LABEL_11;
  }

  if (v16 == 112 && v17 == 0xE100000000000000)
  {

    v23 = v4;
LABEL_22:
    sub_24A69A6C4(v32, v33);
    sub_24A67EF7C(&qword_27EF5DBA0, MEMORY[0x277CC9618]);
    v24 = v27;
    sub_24A82DBB4();
    v20 = v28;
    (*(v26 + 32))(v28, v24, v23);
    v19 = 0;
    goto LABEL_12;
  }

  if (sub_24A82DC04())
  {
    v23 = v4;

    goto LABEL_22;
  }

  if (v16 == 108 && v17 == 0xE100000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    v19 = 3;
    goto LABEL_11;
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  sub_24A82D854();

  v30 = 0xD000000000000015;
  v31 = 0x800000024A846370;
  MEMORY[0x24C21C9E0](v16, v17);
  result = sub_24A82D934();
  __break(1u);
  return result;
}

uint64_t sub_24A704CE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItemPairingState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FMIPItemPairingState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A82CAA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPItemPairingState(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A67DF6C(a1, a1[3]);
  sub_24A82DD74();
  sub_24A705018(v3, v11);
  v12 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
  if ((*(*(v12 - 8) + 48))(v11, 3, v12))
  {
    sub_24A69A6C4(v15, v16);
    sub_24A82DBC4();
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_24A69A6C4(v15, v16);
    sub_24A82DBC4();
    if (!v2)
    {
      sub_24A69A6C4(v15, v16);
      sub_24A67EF7C(&qword_27EF5DBA8, MEMORY[0x277CC95F8]);
      sub_24A82DBD4();
    }

    (*(v6 + 8))(v8, v5);
  }

  return sub_24A6876E8(v15);
}

uint64_t sub_24A705018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItemPairingState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t FMIPItemPairingState.description.getter()
{
  v1 = type metadata accessor for FMIPItemPairingState(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A705018(v0, v3);
  v4 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
  v5 = (*(*(v4 - 8) + 48))(v3, 3, v4);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      return 0x6465726961706E75;
    }

    v7 = 1801678700;
  }

  else
  {
    if (v5)
    {
      return 0x6E776F6E6B6E75;
    }

    v6 = sub_24A82CAA4();
    (*(*(v6 - 8) + 8))(v3, v6);
    v7 = 1919508848;
  }

  return v7 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
}

unint64_t sub_24A705208(uint64_t a1)
{
  MEMORY[0x28223BE20](a1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A705018(v1, v3);
  v4 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
  v5 = (*(*(v4 - 8) + 48))(v3, 3, v4);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      return 0x6465726961706E75;
    }

    v7 = 1801678700;
  }

  else
  {
    if (v5)
    {
      return 0x6E776F6E6B6E75;
    }

    v6 = sub_24A82CAA4();
    (*(*(v6 - 8) + 8))(v3, v6);
    v7 = 1919508848;
  }

  return v7 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
}

uint64_t _s8FMIPCore20FMIPItemPairingStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82CAA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPItemPairingState(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A6BBA94(&qword_27EF5DBC8, &qword_24A835E68);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = *(v12 + 56);
  sub_24A705018(a1, &v22 - v13);
  sub_24A705018(a2, &v14[v15]);
  v16 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v14, 3, v16);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      if (v17(&v14[v15], 3, v16) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v17(&v14[v15], 3, v16) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_24A705678(v14);
    v19 = 0;
    return v19 & 1;
  }

  if (!v18)
  {
    sub_24A705018(v14, v10);
    if (!v17(&v14[v15], 3, v16))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v19 = sub_24A82CA74();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_24A7056E0(v14);
      return v19 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_11;
  }

  if (v17(&v14[v15], 3, v16) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_24A7056E0(v14);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_24A705678(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5DBC8, &qword_24A835E68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A7056E0(uint64_t a1)
{
  v2 = type metadata accessor for FMIPItemPairingState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A70573C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CAA4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v11 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v55 = MEMORY[0x277D84F90];
    sub_24A6FCA2C(0, v11, 0);
    v51 = a1 + 56;
    v52 = v55;
    result = sub_24A82D6C4();
    v13 = 0;
    v14 = (v5 + 8);
    v39 = a1 + 64;
    v40 = v5;
    v53 = v5 + 16;
    v41 = v11;
    v42 = a1;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
    {
      if ((*(v51 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_28;
      }

      v46 = 1 << result;
      v47 = result >> 6;
      v45 = v13;
      v49 = *(a1 + 36);
      v50 = result;
      v17 = *(*(a1 + 48) + 8 * result);

      v19 = v2;
      v20 = sub_24A705B18(v18);
      v48 = v19;
      v21 = *(v20 + 16);
      v22 = sub_24A67EFC0(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = MEMORY[0x24C21CCD0](v21, v4, v22);
      v54 = v23;
      if (v21)
      {
        v43 = v20;
        v44 = v17;
        v24 = v20 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
        v25 = *(v40 + 72);
        v26 = *(v40 + 16);
        do
        {
          v26(v8, v24, v4);
          sub_24A70BFA8(v10, v8);
          (*v14)(v10, v4);
          v24 += v25;
          --v21;
        }

        while (v21);

        v27 = v54;
      }

      else
      {
        v27 = v23;
      }

      v2 = v48;
      v28 = v49;
      v29 = v52;
      v55 = v52;
      v31 = *(v52 + 16);
      v30 = *(v52 + 24);
      result = v50;
      if (v31 >= v30 >> 1)
      {
        sub_24A6FCA2C((v30 > 1), v31 + 1, 1);
        v28 = v49;
        result = v50;
        v29 = v55;
      }

      *(v29 + 16) = v31 + 1;
      *(v29 + 8 * v31 + 32) = v27;
      a1 = v42;
      v15 = 1 << *(v42 + 32);
      if (result >= v15)
      {
        goto LABEL_29;
      }

      v32 = *(v51 + 8 * v47);
      if ((v32 & v46) == 0)
      {
        goto LABEL_30;
      }

      v52 = v29;
      if (v28 != *(v42 + 36))
      {
        goto LABEL_31;
      }

      v33 = v32 & (-2 << (result & 0x3F));
      if (v33)
      {
        v15 = __clz(__rbit64(v33)) | result & 0x7FFFFFFFFFFFFFC0;
        v16 = v45;
      }

      else
      {
        v34 = v47 << 6;
        v35 = v47 + 1;
        v36 = (v39 + 8 * v47);
        while (v35 < (v15 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            sub_24A6CA498(result, v28, 0);
            v15 = __clz(__rbit64(v37)) + v34;
            goto LABEL_24;
          }
        }

        sub_24A6CA498(result, v28, 0);
LABEL_24:
        v16 = v45;
      }

      v13 = v16 + 1;
      result = v15;
      if (v13 == v41)
      {
        return v52;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_24A705B18(uint64_t a1)
{
  v31 = sub_24A82CAA4();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v29[1] = v1;
  v40 = MEMORY[0x277D84F90];
  sub_24A6FCAAC(0, v6, 0);
  v7 = v40;
  v39 = a1 + 56;
  result = sub_24A82D6C4();
  v9 = result;
  v10 = 0;
  v34 = v3 + 32;
  v35 = v3 + 16;
  v30 = a1 + 64;
  v11 = v31;
  v32 = v6;
  v33 = a1;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v13 = v9 >> 6;
    if ((*(v39 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_22;
    }

    v36 = v10;
    v38 = *(a1 + 36);
    v14 = *(v3 + 72);
    (*(v3 + 16))(v5, *(a1 + 48) + v14 * v9, v11);
    v40 = v7;
    v15 = v11;
    v17 = *(v7 + 16);
    v16 = *(v7 + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      v37 = v17 + 1;
      sub_24A6FCAAC((v16 > 1), v17 + 1, 1);
      v18 = v37;
      v7 = v40;
    }

    *(v7 + 16) = v18;
    v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v37 = v7;
    v20 = v7 + v19 + v17 * v14;
    v21 = v3;
    result = (*(v3 + 32))(v20, v5, v15);
    v12 = 1 << *(v33 + 32);
    if (v9 >= v12)
    {
      goto LABEL_23;
    }

    v22 = *(v39 + 8 * v13);
    if ((v22 & (1 << v9)) == 0)
    {
      goto LABEL_24;
    }

    v11 = v15;
    a1 = v33;
    if (v38 != *(v33 + 36))
    {
      goto LABEL_25;
    }

    v23 = v22 & (-2 << (v9 & 0x3F));
    if (v23)
    {
      v12 = __clz(__rbit64(v23)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v13 << 6;
      v25 = v13 + 1;
      v26 = (v30 + 8 * v13);
      while (v25 < (v12 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_24A6CA498(v9, v38, 0);
          v12 = __clz(__rbit64(v27)) + v24;
          goto LABEL_19;
        }
      }

      result = sub_24A6CA498(v9, v38, 0);
LABEL_19:
      v11 = v31;
    }

    v10 = v36 + 1;
    v9 = v12;
    v3 = v21;
    v7 = v37;
    if (v36 + 1 == v32)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

BOOL sub_24A705E3C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_24A82CAA4();
    ++v2;
    sub_24A67EFC0(&qword_27EF5DC48, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  }

  while ((sub_24A82CF84() & 1) == 0);
  return v3 != v4;
}

uint64_t FMIPItemGroup.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FMIPItemGroup.name.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_24A70602C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 1701667182;
    v6 = 0x6574617473;
    if (a1 != 8)
    {
      v6 = 0x6174654D74736F6CLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x736D657469;
    if (a1 != 5)
    {
      v7 = 0x49646570756F7267;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696C696261706163;
    v2 = 0x6E6564496D657469;
    v3 = 0xD000000000000016;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24A70618C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_24A70602C(*a1);
  v5 = v4;
  if (v3 == sub_24A70602C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A706214()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A70602C(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A706278(uint64_t a1)
{
  sub_24A70602C(*v1);
  sub_24A82D094();
}

uint64_t sub_24A7062CC(uint64_t a1)
{
  v2 = *v1;
  sub_24A82DCC4();
  sub_24A70602C(v2);
  sub_24A82D094();

  return sub_24A82DD24();
}

unint64_t sub_24A70632C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A715180(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_24A70635C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A70602C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_24A7063A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A715180(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A7063D8(uint64_t a1)
{
  v2 = sub_24A68C708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A706414(uint64_t a1)
{
  v2 = sub_24A68C708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static FMIPItemGroup.primaryPart(group:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A6BBA94(&qword_27EF5D018, &qword_24A830E38);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v65 = &v61 - v9;
  MEMORY[0x28223BE20](v8);
  v70 = &v61 - v10;
  v11 = type metadata accessor for FMIPItem(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v61 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v62 = &v61 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v61 - v18;
  MEMORY[0x28223BE20](v17);
  v68 = &v61 - v20;
  v21 = *(v12 + 56);
  v75 = v22;
  v63 = v21;
  v64 = v12 + 56;
  (v21)(a2, 1, 1);
  v23 = a1 + 56;
  v24 = 1 << *(a1 + 32);
  v25 = a2;
  v26 = -1;
  if (v24 < 64)
  {
    v26 = ~(-1 << v24);
  }

  v27 = v26 & *(a1 + 56);
  v71 = a1;
  v72 = (v24 + 63) >> 6;
  v69 = v12;
  v74 = v12 + 48;

  v29 = 0;
  v73 = a2;
  v66 = v19;
  v67 = a1 + 56;
  v30 = v72;
  if (v27)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v30)
    {
    }

    v27 = *(v23 + 8 * v31);
    ++v29;
    if (v27)
    {
      v32 = v75;
      v29 = v31;
      while (1)
      {
        v33 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v34 = v68;
        v35 = v69;
        sub_24A69F064(*(v71 + 48) + *(v69 + 72) * (v33 | (v29 << 6)), v68, type metadata accessor for FMIPItem);
        sub_24A6A2328(v34, v19, type metadata accessor for FMIPItem);
        v36 = v70;
        sub_24A67E964(v25, v70, &qword_27EF5D018, &qword_24A830E38);
        v37 = *(v35 + 48);
        if (v37(v36, 1, v32) == 1)
        {
          sub_24A67F378(v36, &qword_27EF5D018, &qword_24A830E38);
          v23 = v67;
          goto LABEL_39;
        }

        v38 = v62;
        sub_24A6A2328(v36, v62, type metadata accessor for FMIPItem);
        v39 = *(v75 + 64);
        v23 = v67;
        if (*&v19[v39 + 8])
        {
          v40 = v19[v39 + 32];
        }

        else
        {
          v41 = &v19[*(v75 + 56)];
          if (*v41 == 1702060355 && *(v41 + 1) == 0xE400000000000000)
          {
            v40 = 1;
          }

          else
          {
            v40 = sub_24A82DC04() & 1;
            v39 = *(v75 + 64);
          }
        }

        v43 = v38 + v39;
        if (*(v43 + 8))
        {
          v44 = flt_24A83616C[*(v43 + 32)];
        }

        else
        {
          v45 = (v38 + *(v75 + 56));
          v46 = *v45 == 1702060355 && v45[1] == 0xE400000000000000;
          if (v46 || (v44 = 0.0, (sub_24A82DC04() & 1) != 0))
          {
            v44 = 2.0;
          }
        }

        if (v40 <= 1)
        {
          if (!v40)
          {
            sub_24A69F204(v38, type metadata accessor for FMIPItem);
            v25 = v73;
            goto LABEL_39;
          }

          sub_24A69F204(v38, type metadata accessor for FMIPItem);
          v47 = v44 < 2.0;
        }

        else
        {
          sub_24A69F204(v38, type metadata accessor for FMIPItem);
          if ((v40 - 2) >= 2)
          {
            v47 = v44 < 3.0;
          }

          else
          {
            v47 = v44 < 1.0;
          }
        }

        v25 = v73;
        if (v47)
        {
          sub_24A67F378(v73, &qword_27EF5D018, &qword_24A830E38);
          goto LABEL_76;
        }

LABEL_39:
        v48 = v25;
        v49 = v65;
        sub_24A67E964(v48, v65, &qword_27EF5D018, &qword_24A830E38);
        if (v37(v49, 1, v75) == 1)
        {
          sub_24A67F378(v49, &qword_27EF5D018, &qword_24A830E38);
LABEL_73:
          v25 = v73;
          sub_24A67E964(v73, v7, &qword_27EF5D018, &qword_24A830E38);
          if (v37(v7, 1, v75) != 1)
          {
            sub_24A67F378(v7, &qword_27EF5D018, &qword_24A830E38);
            v19 = v66;
            result = sub_24A69F204(v66, type metadata accessor for FMIPItem);
            v30 = v72;
            if (!v27)
            {
              goto LABEL_6;
            }

            goto LABEL_10;
          }

          sub_24A67F378(v25, &qword_27EF5D018, &qword_24A830E38);
          v60 = v7;
          goto LABEL_75;
        }

        v50 = v61;
        sub_24A6A2328(v49, v61, type metadata accessor for FMIPItem);
        v51 = *(v75 + 64);
        v52 = &v19[v51];
        if (*&v19[v51 + 8])
        {
          v53 = v52[32];
        }

        else
        {
          v54 = &v19[*(v75 + 56)];
          if (*v54 == 1702060355 && *(v54 + 1) == 0xE400000000000000)
          {
            v53 = 1;
          }

          else
          {
            v53 = sub_24A82DC04() & 1;
            v51 = *(v75 + 64);
          }
        }

        v55 = v50 + v51;
        if (!*(v55 + 8))
        {
          v57 = (v50 + *(v75 + 56));
          if (*v57 == 1702060355 && v57[1] == 0xE400000000000000)
          {
            v56 = 1;
          }

          else
          {
            v56 = sub_24A82DC04() & 1;
          }

LABEL_53:
          if (v56)
          {
            if (v53 != 1)
            {
              goto LABEL_55;
            }
          }

          else if (v53)
          {
            goto LABEL_55;
          }

          goto LABEL_61;
        }

        v56 = *(v55 + 32);
        if (v56 <= 1)
        {
          goto LABEL_53;
        }

        if ((v56 - 2) >= 2)
        {
          if (v53 != 4)
          {
LABEL_55:
            sub_24A69F204(v50, type metadata accessor for FMIPItem);
            goto LABEL_73;
          }
        }

        else if ((v53 & 0xFE) != 2)
        {
          goto LABEL_55;
        }

LABEL_61:
        if (*(v52 + 1))
        {
          if (v52[32] == 2)
          {

            sub_24A69F204(v50, type metadata accessor for FMIPItem);
            goto LABEL_72;
          }
        }

        else
        {
          v58 = &v66[*(v75 + 56)];
          if (*v58 != 1702060355 || *(v58 + 1) != 0xE400000000000000)
          {
            sub_24A82DC04();
          }
        }

        v59 = sub_24A82DC04();

        sub_24A69F204(v50, type metadata accessor for FMIPItem);
        if ((v59 & 1) == 0)
        {
          goto LABEL_73;
        }

LABEL_72:
        v25 = v73;
        v60 = v73;
LABEL_75:
        sub_24A67F378(v60, &qword_27EF5D018, &qword_24A830E38);
        v19 = v66;
LABEL_76:
        sub_24A6A2328(v19, v25, type metadata accessor for FMIPItem);
        result = v63(v25, 0, 1, v75);
        v30 = v72;
        if (!v27)
        {
          goto LABEL_6;
        }

LABEL_10:
        v32 = v75;
      }
    }
  }

  __break(1u);
  return result;
}

BOOL FMIPItemGroup.shouldDisplaySeparatedLocation.getter()
{
  v1 = type metadata accessor for FMIPItemGroup(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(v0 + 40) + 16) >= 2uLL && *(*(v0 + 48) + 16) > 1uLL;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v5 = sub_24A82CDC4();
  sub_24A6797D0(v5, qword_281518F88);
  sub_24A69F064(v0, v3, type metadata accessor for FMIPItemGroup);
  v6 = sub_24A82CD94();
  v7 = sub_24A82D4C4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v10 = *(v3 + 1);
    v11 = *(v3 + 2);

    sub_24A69F204(v3, type metadata accessor for FMIPItemGroup);
    v12 = sub_24A68761C(v10, v11, &v26);

    *(v8 + 14) = v12;
    *(v8 + 22) = 1024;
    *(v8 + 24) = v4;
    _os_log_impl(&dword_24A675000, v6, v7, "SeparatedLocations: id: %{private,mask.hash}s, result: %{BOOL}d.", v8, 0x1Cu);
    sub_24A6876E8(v9);
    MEMORY[0x24C21E1D0](v9, -1, -1);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }

  else
  {

    sub_24A69F204(v3, type metadata accessor for FMIPItemGroup);
  }

  v13 = objc_opt_self();
  v14 = [v13 sharedInstance];
  v15 = [v14 isInternalBuild];

  if (v15)
  {
    v16 = [objc_opt_self() standardUserDefaults];
    v17 = sub_24A82CF94();
    v18 = [v16 BOOLForKey_];

    if (v18)
    {
      return 1;
    }
  }

  v19 = [v13 sharedInstance];
  v20 = [v19 isInternalBuild];

  if (v20)
  {
    v21 = [objc_opt_self() standardUserDefaults];
    v22 = sub_24A82CF94();
    v23 = [v21 BOOLForKey_];

    return (v23 ^ 1) & v4;
  }

  return v4;
}

void FMIPItemGroup.partsAtMultipleLocations.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v23 = *(v1 + 16);
    v24 = v2 - 1;
    v4 = v23;
    while (1)
    {
      v5 = v3 + 1;
      if (v3 < v24)
      {
        break;
      }

LABEL_3:
      ++v3;
      if (v5 == v23)
      {
        return;
      }
    }

    v6 = *(type metadata accessor for FMIPItem(0) - 8);
    v7 = *(v6 + 72);
    v8 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v9 = v8 + v7 * v3;
    v10 = v8 + 392;
    v11 = v7 * v5;
    v12 = v3;
    while (v3 < v4)
    {
      v13 = *(v9 + 392);
      if (v13)
      {
        if (v5 >= v4)
        {
          goto LABEL_15;
        }

        v14 = *(v10 + v11);
        if (v14)
        {
          v15 = v13;
          v16 = v14;
          [v15 distanceFromLocation_];
          v18 = v17;
          [v15 horizontalAccuracy];
          v20 = v19;
          [v16 horizontalAccuracy];
          v22 = v21;

          if (v18 / sqrt(v20 * v20 + v22 * v22 + 400.0) >= 1.5)
          {
            return;
          }
        }
      }

      ++v12;
      v4 = *(v1 + 16);
      if (v12 >= (v4 - 1))
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_24A707330(void *a1@<X0>, void *a2@<X8>)
{
  v430 = a1;
  v421 = a2;
  v2 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
  MEMORY[0x28223BE20](v2 - 8);
  v414 = &v404 - v3;
  v4 = type metadata accessor for FMIPItemPairingState(0);
  v419 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v424 = &v404 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v418 = &v404 - v8;
  MEMORY[0x28223BE20](v7);
  v413 = &v404 - v9;
  v434 = sub_24A82CAA4();
  v420 = *(v434 - 8);
  v10 = MEMORY[0x28223BE20](v434);
  v415 = &v404 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v429 = &v404 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v406 = &v404 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v407 = &v404 - v17;
  MEMORY[0x28223BE20](v16);
  v428 = &v404 - v18;
  sub_24A6BBA94(&qword_27EF5DD00, &unk_24A839DD0);
  inited = swift_initStackObject();
  v432 = xmmword_24A835E80;
  v20 = MEMORY[0x277D497D0];
  *(inited + 16) = xmmword_24A835E80;
  v21 = *v20;
  *(inited + 32) = v21;
  *(inited + 40) = xmmword_24A835E90;
  v22 = *MEMORY[0x277D497B0];
  *(inited + 56) = *MEMORY[0x277D497B0];
  *(inited + 64) = xmmword_24A835EA0;
  v23 = *MEMORY[0x277D49798];
  *(inited + 80) = *MEMORY[0x277D49798];
  *(inited + 88) = xmmword_24A835EB0;
  v24 = *MEMORY[0x277D497B8];
  *(inited + 104) = *MEMORY[0x277D497B8];
  v25 = MEMORY[0x277D497C8];
  *(inited + 112) = xmmword_24A835EC0;
  v26 = *v25;
  *(inited + 128) = *v25;
  *(inited + 136) = xmmword_24A835ED0;
  v27 = v21;
  v28 = v22;
  v29 = v23;
  v30 = v24;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  v34 = v30;
  v35 = v26;
  v433 = sub_24A78A0C0(inited);
  swift_setDeallocating();
  sub_24A6BBA94(&qword_27EF5DD08, &unk_24A8384E0);
  swift_arrayDestroy();
  sub_24A6BBA94(&qword_27EF5DD10, &unk_24A839DC0);
  v36 = swift_initStackObject();
  *(v36 + 32) = v33;
  *(v36 + 16) = v432;
  *(v36 + 40) = 16;
  *(v36 + 48) = v31;
  v408 = v31;
  *(v36 + 56) = 4;
  *(v36 + 64) = v32;
  *(v36 + 72) = 2;
  *(v36 + 80) = v34;
  v404 = v34;
  v37 = *MEMORY[0x277D497E0];
  *(v36 + 88) = 8;
  *(v36 + 96) = v37;
  *(v36 + 104) = 128;
  v38 = v37;
  v39 = sub_24A78A1B8(v36);
  swift_setDeallocating();
  sub_24A6BBA94(&qword_27EF5DD18, &unk_24A8384D0);
  swift_arrayDestroy();
  v40 = *MEMORY[0x277D497C0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v437 = v39;
  sub_24A784AB0(0x2000, v40, isUniquelyReferenced_nonNull_native);
  v42 = v437 + 64;
  v43 = 1 << v437[32];
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v437 + 8);
  v46 = (v43 + 63) >> 6;
  v423 = v437;

  v47 = 0;
  for (i = MEMORY[0x277D84F90]; v45; *&v58[8 * v57 + 32] = v51)
  {
LABEL_8:
    while (1)
    {
      v49 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v50 = (v47 << 9) | (8 * v49);
      v51 = *(v423[7] + v50);
      v52 = *(v423[6] + v50);
      v53 = [v430 taskInformation];
      type metadata accessor for SPBeaconTaskName(0);
      sub_24A679170(0, &qword_27EF5DD20, 0x277D49648);
      sub_24A67EFC0(&qword_27EF5CEF8, type metadata accessor for SPBeaconTaskName, &unk_24A830D10);
      v54 = sub_24A82CEF4();

      if (*(v54 + 16))
      {
        sub_24A77EE90(v52);
        if (v55)
        {
          break;
        }
      }

      if (!v45)
      {
        goto LABEL_4;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_24A78018C(0, *(i + 2) + 1, 1, i);
    }

    v57 = *(i + 2);
    v56 = *(i + 3);
    if (v57 >= v56 >> 1)
    {
      i = sub_24A78018C((v56 > 1), v57 + 1, 1, i);
    }

    v58 = i;
    *(i + 2) = v57 + 1;
  }

LABEL_4:
  while (1)
  {
    v48 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v48 >= v46)
    {

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_19;
      }

      goto LABEL_257;
    }

    v45 = *&v42[8 * v48];
    ++v47;
    if (v45)
    {
      v47 = v48;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    i = sub_24A78018C(0, *(i + 2) + 1, 1, i);
LABEL_19:
    v60 = *(i + 2);
    v59 = *(i + 3);
    v61 = v59 >> 1;
    v62 = v60 + 1;
    if (v59 >> 1 <= v60)
    {
      i = sub_24A78018C((v59 > 1), v60 + 1, 1, i);
      v59 = *(i + 3);
      v61 = v59 >> 1;
    }

    v63 = i;
    *(i + 2) = v62;
    *&v63[8 * v60 + 32] = 256;
    v64 = v60 + 2;
    if (v61 < v64)
    {
      i = sub_24A78018C((v59 > 1), v64, 1, i);
    }

    v65 = i;
    *(i + 2) = v64;
    v405 = v65 + 32;
    *&v65[8 * v62 + 32] = 512;
    v66 = v433 + 8;
    v67 = 1 << *(v433 + 32);
    v68 = -1;
    if (v67 < 64)
    {
      v68 = ~(-1 << v67);
    }

    v69 = v68 & v433[8];
    v70 = (v67 + 63) >> 6;

    v71 = 0;
    v409 = 0;
    v431 = MEMORY[0x277D84F90];
    while (v69)
    {
LABEL_32:
      v73 = __clz(__rbit64(v69));
      v69 &= v69 - 1;
      v74 = v73 | (v71 << 6);
      v75 = *(v433[6] + 8 * v74);
      v76 = (v433[7] + 16 * v74);
      v77 = *v76;
      *&v432 = v76[1];
      v78 = v75;
      v79 = [v430 taskInformation];
      type metadata accessor for SPBeaconTaskName(0);
      sub_24A679170(0, &qword_27EF5DD20, 0x277D49648);
      sub_24A67EFC0(&qword_27EF5CEF8, type metadata accessor for SPBeaconTaskName, &unk_24A830D10);
      v80 = sub_24A82CEF4();

      if (*(v80 + 16) && (v81 = sub_24A77EE90(v78), (v82 & 1) != 0))
      {
        v83 = *(*(v80 + 56) + 8 * v81);

        v84 = [v83 state];

        if (v84 == v77)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v431 = sub_24A780178(0, *(v431 + 2) + 1, 1, v431);
          }

          v85 = v432;
          v87 = *(v431 + 2);
          v86 = *(v431 + 3);
          if (v87 >= v86 >> 1)
          {
            v431 = sub_24A780178((v86 > 1), v87 + 1, 1, v431);
          }

          v88 = v431;
          *(v431 + 2) = v87 + 1;
          *&v88[8 * v87 + 32] = v85;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v72 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_247;
      }

      if (v72 >= v70)
      {
        break;
      }

      v69 = v66[v72];
      ++v71;
      if (v69)
      {
        v71 = v72;
        goto LABEL_32;
      }
    }

    v437 = &unk_285DBE200;
    sub_24A77E918(v431);
    v89 = v437;
    if ([v430 isConnected])
    {
      v90 = swift_isUniquelyReferenced_nonNull_native();
      v91 = v428;
      if ((v90 & 1) == 0)
      {
        v89 = sub_24A780178(0, *(v89 + 2) + 1, 1, v89);
      }

      v93 = *(v89 + 2);
      v92 = *(v89 + 3);
      v416 = v89;
      v94 = v430;
      if (v93 >= v92 >> 1)
      {
        v416 = sub_24A780178((v92 > 1), v93 + 1, 1, v416);
        v94 = v430;
      }

      v95 = v416;
      *(v416 + 2) = v93 + 1;
      *&v95[8 * v93 + 32] = 64;
    }

    else
    {
      v416 = v89;
      v91 = v428;
      v94 = v430;
    }

    v96 = [v94 taskInformation];
    type metadata accessor for SPBeaconTaskName(0);
    v98 = v97;
    v99 = sub_24A679170(0, &qword_27EF5DD20, 0x277D49648);
    v100 = sub_24A67EFC0(&qword_27EF5CEF8, type metadata accessor for SPBeaconTaskName, &unk_24A830D10);
    v411 = v99;
    v412 = v98;
    v410 = v100;
    v101 = sub_24A82CEF4();

    if (!*(v101 + 16) || (v102 = sub_24A77EE90(v408), (v103 & 1) == 0))
    {

      goto LABEL_58;
    }

    v104 = *(*(v101 + 56) + 8 * v102);

    v105 = [v104 state];

    if (!v105)
    {
      v117 = v416;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v117 = sub_24A780178(0, *(v117 + 2) + 1, 1, v117);
      }

      v109 = v430;
      v119 = *(v117 + 2);
      v118 = *(v117 + 3);
      v416 = v117;
      if (v119 >= v118 >> 1)
      {
        v416 = sub_24A780178((v118 > 1), v119 + 1, 1, v416);
        v109 = v430;
      }

      v120 = v416;
      *(v416 + 2) = v119 + 1;
      v111 = &v120[8 * v119];
      v112 = 2;
      goto LABEL_69;
    }

    if (v105 == 1)
    {
      v113 = v416;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = sub_24A780178(0, *(v113 + 2) + 1, 1, v113);
      }

      v115 = *(v113 + 2);
      v114 = *(v113 + 3);
      v416 = v113;
      v109 = v430;
      if (v115 >= v114 >> 1)
      {
        v416 = sub_24A780178((v114 > 1), v115 + 1, 1, v416);
        v109 = v430;
      }

      v116 = v416;
      *(v416 + 2) = v115 + 1;
      v111 = &v116[8 * v115];
      v112 = 4;
      goto LABEL_69;
    }

    if (v105 != 4)
    {
LABEL_58:
      v109 = v430;
      goto LABEL_70;
    }

    v106 = v416;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v106 = sub_24A780178(0, *(v106 + 2) + 1, 1, v106);
    }

    v108 = *(v106 + 2);
    v107 = *(v106 + 3);
    v416 = v106;
    v109 = v430;
    if (v108 >= v107 >> 1)
    {
      v416 = sub_24A780178((v107 > 1), v108 + 1, 1, v416);
      v109 = v430;
    }

    v110 = v416;
    *(v416 + 2) = v108 + 1;
    v111 = &v110[8 * v108];
    v112 = 2048;
LABEL_69:
    *(v111 + 4) = v112;
LABEL_70:
    v121 = [v109 identifier];
    sub_24A82CA84();

    v122 = sub_24A82CA54();
    v124 = v123;
    v125 = v420 + 8;
    v426 = *(v420 + 8);
    v427 = v420 + 8;
    v426(v91, v434);
    v126 = v421;
    v421[1] = v122;
    v126[2] = v124;
    v127 = [v109 name];
    v128 = sub_24A82CFC4();
    v130 = v129;

    v126[3] = v128;
    v126[4] = v130;
    v131 = MEMORY[0x277D84FA0];
    v126[5] = MEMORY[0x277D84F90];
    v126[6] = v131;
    v132 = [v109 beaconMap];
    sub_24A679170(0, &qword_27EF5DD28, 0x277D496A8);
    v133 = sub_24A82CEF4();

    sub_24A6BBA94(&qword_27EF5DD30, &qword_24A836118);
    v134 = sub_24A82D954();
    v135 = 0;
    v137 = v133 + 64;
    v136 = *(v133 + 64);
    v425 = v133;
    v138 = 1 << *(v133 + 32);
    v139 = -1;
    if (v138 < 64)
    {
      v139 = ~(-1 << v138);
    }

    v140 = v139 & v136;
    v141 = (v138 + 63) >> 6;
    v433 = (v125 + 24);
    *&v432 = v134;
    v417 = v134 + 64;
    if ((v139 & v136) != 0)
    {
      do
      {
        v142 = __clz(__rbit64(v140));
        v140 &= v140 - 1;
LABEL_79:
        v145 = v142 | (v135 << 6);
        v146 = *(v425 + 48) + 16 * v145;
        v147 = *v146;
        v148 = *(v146 + 8);
        v149 = *(*(v425 + 56) + 8 * v145);

        v150 = v149;
        v151 = [v150 status];
        v431 = v147;
        if (v151 == 2)
        {

          v152 = 3;
          goto LABEL_87;
        }

        if (v151 == 1)
        {
          v153 = [v150 beaconIdentifier];
          if (!v153)
          {
LABEL_85:

            v152 = 1;
            goto LABEL_87;
          }

          v154 = v153;
          v155 = v407;
          sub_24A82CA84();

          (*v433)(v424, v155, v434);
          v152 = 0;
        }

        else
        {
          if (v151)
          {
            goto LABEL_85;
          }

          v152 = 2;
        }

LABEL_87:
        v156 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
        v157 = v424;
        (*(*(v156 - 8) + 56))(v424, v152, 3, v156);
        v158 = v418;
        sub_24A6A2328(v157, v418, type metadata accessor for FMIPItemPairingState);
        *(v417 + ((v145 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v145;
        v159 = v432;
        v160 = (*(v432 + 48) + 16 * v145);
        *v160 = v431;
        v160[1] = v148;
        sub_24A6A2328(v158, *(v159 + 56) + *(v419 + 72) * v145, type metadata accessor for FMIPItemPairingState);
        v161 = *(v159 + 16);
        v162 = __OFADD__(v161, 1);
        v163 = v161 + 1;
        if (v162)
        {
          goto LABEL_254;
        }

        *(v432 + 16) = v163;
      }

      while (v140);
    }

    v143 = v135;
    while (1)
    {
      v135 = v143 + 1;
      if (__OFADD__(v143, 1))
      {
        goto LABEL_248;
      }

      if (v135 >= v141)
      {
        break;
      }

      v144 = *(v137 + 8 * v135);
      ++v143;
      if (v144)
      {
        v142 = __clz(__rbit64(v144));
        v140 = (v144 - 1) & v144;
        goto LABEL_79;
      }
    }

    v437 = MEMORY[0x277D84F90];
    v164 = v432;

    v166 = v409;
    sub_24A709A74(v165, &v437);

    v167 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
    v168 = v413;
    v169 = (*(*(v167 - 8) + 56))(v413, 3, 3, v167);
    MEMORY[0x28223BE20](v169);
    *(&v404 - 2) = v168;

    sub_24A7FD6DC(sub_24A7151CC, (&v404 - 4), v164);
    v171 = v170;
    v409 = v166;

    sub_24A69F204(v168, type metadata accessor for FMIPItemPairingState);
    if (v171)
    {
      v172 = v416;
      v173 = swift_isUniquelyReferenced_nonNull_native();
      v174 = v414;
      v175 = v429;
      if ((v173 & 1) == 0)
      {
        v172 = sub_24A780178(0, *(v172 + 2) + 1, 1, v172);
      }

      v176 = v172;
      v177 = *(v172 + 2);
      v178 = v176;
      v179 = *(v176 + 3);
      v180 = v430;
      if (v177 >= v179 >> 1)
      {
        v178 = sub_24A780178((v179 > 1), v177 + 1, 1, v178);
        v180 = v430;
      }

      *(v178 + 2) = v177 + 1;
      v181 = &v178[8 * v177];
      v182 = v178;
      *(v181 + 4) = 0x2000;
    }

    else
    {
      v175 = v429;
      v180 = v430;
      v174 = v414;
      v182 = v416;
    }

    v183 = [v180 isPairingComplete];
    if (v183)
    {
      v184 = v430;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v182 = sub_24A780178(0, *(v182 + 2) + 1, 1, v182);
      }

      v185 = v182;
      v186 = *(v182 + 2);
      v187 = v185;
      v188 = *(v185 + 3);
      v184 = v430;
      if (v186 >= v188 >> 1)
      {
        v187 = sub_24A780178((v188 > 1), v186 + 1, 1, v187);
        v184 = v430;
      }

      *(v187 + 2) = v186 + 1;
      v189 = &v187[8 * v186];
      v182 = v187;
      *(v189 + 4) = 0x8000;
    }

    v416 = v182;
    v421[9] = v432;
    v190 = v437;
    v191 = *(v437 + 2);
    v413 = v437;
    if (!v191)
    {
      *&v432 = MEMORY[0x277D84F90];
      p_info = &OBJC_METACLASS____TtC8FMIPCore20FMIPGarbageCollector.info;
      if (v183)
      {
        goto LABEL_110;
      }

LABEL_116:
      sub_24A6BBA94(&qword_27EF5DA20, &unk_24A8352B0);
      v220 = swift_initStackObject();
      *(v220 + 16) = xmmword_24A8327A0;

      v222 = sub_24A713EE8(v221);

      *(v220 + 32) = v222;
      v415 = sub_24A7151EC(v220);
      swift_setDeallocating();
      sub_24A67F378(v220 + 32, &qword_27EF5DA28, &qword_24A8415A0);
      if (p_info[441] != -1)
      {
        swift_once();
      }

      v223 = sub_24A82CDC4();
      sub_24A6797D0(v223, qword_281518F88);
      v211 = sub_24A82CD94();
      v224 = sub_24A82D504();
      if (os_log_type_enabled(v211, v224))
      {
        v214 = swift_slowAlloc();
        v225 = swift_slowAlloc();
        v436[0] = v225;
        *v214 = 136315138;

        sub_24A6BBA94(&qword_27EF5DA28, &qword_24A8415A0);
        sub_24A678A64(&qword_27EF5DCA8, &qword_27EF5DA28, &qword_24A8415A0);
        v226 = sub_24A82D3B4();
        v228 = v227;

        v229 = sub_24A68761C(v226, v228, v436);

        *(v214 + 4) = v229;
        _os_log_impl(&dword_24A675000, v211, v224, "FMIPItemGroup: BA pairing is incomplete. Showing parts all together: %s", v214, 0xCu);
        sub_24A6876E8(v225);
        v230 = v225;
LABEL_129:
        MEMORY[0x24C21E1D0](v230, -1, -1);
        MEMORY[0x24C21E1D0](v214, -1, -1);
        goto LABEL_130;
      }

      goto LABEL_130;
    }

    LODWORD(v425) = v183;
    v436[0] = MEMORY[0x277D84F90];
    sub_24A6FCAAC(0, v191, 0);
    v192 = *(v420 + 16);
    v193 = v436[0];
    v431 = ((*(v420 + 80) + 32) & ~*(v420 + 80));
    *&v432 = v192;
    v194 = &v431[v190];
    v195 = *(v420 + 72);
    v196 = v434;
    v197 = v406;
    do
    {
      (v432)(v197, v194, v196);
      v436[0] = v193;
      v199 = *(v193 + 16);
      v198 = *(v193 + 24);
      if (v199 >= v198 >> 1)
      {
        sub_24A6FCAAC((v198 > 1), v199 + 1, 1);
        v196 = v434;
        v193 = v436[0];
      }

      *(v193 + 16) = v199 + 1;
      (*v433)(&v431[v193 + v199 * v195], v197, v196);
      v194 += v195;
      --v191;
    }

    while (v191);
    *&v432 = v193;
    v175 = v429;
    v184 = v430;
    v174 = v414;
    p_info = (&OBJC_METACLASS____TtC8FMIPCore20FMIPGarbageCollector + 32);
    if ((v425 & 1) == 0)
    {
      goto LABEL_116;
    }

LABEL_110:
    v201 = [v184 multipartStatus];
    v202 = sub_24A6BBA94(&qword_27EF5DA28, &qword_24A8415A0);
    v203 = sub_24A678A64(&qword_27EF5DCA8, &qword_27EF5DA28, &qword_24A8415A0);
    v204 = sub_24A82D3A4();

    v205 = *(v204 + 16);

    if (v205)
    {
      v206 = [v184 multipartStatus];
      v207 = sub_24A82D3A4();

      v208 = v409;
      v209 = sub_24A70573C(v207);
      v409 = v208;

      v415 = sub_24A714084(v209);

      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v210 = sub_24A82CDC4();
      sub_24A6797D0(v210, qword_281518F88);
      v211 = sub_24A82CD94();
      v212 = sub_24A82D504();
      v213 = os_log_type_enabled(v211, v212);
      v174 = v414;
      if (!v213)
      {
        goto LABEL_130;
      }

      v214 = swift_slowAlloc();
      v433 = swift_slowAlloc();
      v436[0] = v433;
      *v214 = 136315138;

      v215 = sub_24A82D3B4();
      v217 = v216;

      v218 = sub_24A68761C(v215, v217, v436);

      *(v214 + 4) = v218;
      v219 = "FMIPItemGroup: multipart status: %s";
      goto LABEL_128;
    }

    v231 = v413;
    v232 = *(v413 + 2);
    v233 = MEMORY[0x277D84F90];
    if (v232)
    {
      v417 = v203;
      v418 = v202;
      v436[0] = MEMORY[0x277D84F90];
      sub_24A6FCA2C(0, v232, 0);
      v431 = *(v420 + 16);
      v233 = v436[0];
      v234 = *(v420 + 80);
      v424 = ((v234 + 32) & ~v234);
      v425 = v234;
      v235 = &v424[v231];
      v433 = (v420 + 16);
      v236 = v434;
      v419 = *(v420 + 72);
      do
      {
        v237 = v428;
        v238 = v431;
        (v431)(v428, v235, v236);
        sub_24A6BBA94(&qword_27EF5E110, &unk_24A835280);
        v239 = v424;
        v240 = swift_allocObject();
        (v238)(&v239[v240], v237, v434);
        v241 = sub_24A67EFC0(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v435 = MEMORY[0x24C21CCD0](1, v434, v241);
        (v238)(v175, &v239[v240], v434);
        swift_setDeallocating();
        v242 = v426;
        v426(&v239[v240], v434);
        swift_deallocClassInstance();
        v243 = v415;
        sub_24A70BFA8(v415, v175);
        v236 = v434;
        v242(v243, v434);
        v242(v237, v236);
        v244 = v435;
        v436[0] = v233;
        v246 = *(v233 + 16);
        v245 = *(v233 + 24);
        if (v246 >= v245 >> 1)
        {
          sub_24A6FCA2C((v245 > 1), v246 + 1, 1);
          v236 = v434;
          v233 = v436[0];
        }

        *(v233 + 16) = v246 + 1;
        *(v233 + 8 * v246 + 32) = v244;
        v235 += v419;
        --v232;
        v175 = v429;
      }

      while (v232);
    }

    v415 = sub_24A714084(v233);

    v174 = v414;
    if (qword_281515DC8 != -1)
    {
      goto LABEL_259;
    }

    while (1)
    {
      v247 = sub_24A82CDC4();
      sub_24A6797D0(v247, qword_281518F88);
      v211 = sub_24A82CD94();
      v212 = sub_24A82D504();
      if (os_log_type_enabled(v211, v212))
      {
        v214 = swift_slowAlloc();
        v433 = swift_slowAlloc();
        v436[0] = v433;
        *v214 = 136315138;

        v248 = sub_24A82D3B4();
        v250 = v249;

        v251 = sub_24A68761C(v248, v250, v436);

        *(v214 + 4) = v251;
        v219 = "FMIPItemGroup: multipart status from SPD was empty. Showing all separated: %s";
LABEL_128:
        _os_log_impl(&dword_24A675000, v211, v212, v219, v214, 0xCu);
        v252 = v433;
        sub_24A6876E8(v433);
        v230 = v252;
        goto LABEL_129;
      }

LABEL_130:

      v253 = [objc_opt_self() sharedInstance];
      v254 = [v253 isInternalBuild];

      if (!v254)
      {
        goto LABEL_204;
      }

      v255 = [objc_opt_self() standardUserDefaults];
      v256 = sub_24A82CF94();
      v257 = [v255 BOOLForKey_];

      if (!v257)
      {
        goto LABEL_204;
      }

      v258 = *(v432 + 16);
      if (v258)
      {
        v259 = 0;
        v260 = 0;
        v261 = MEMORY[0x277D84F90];
        while (1)
        {
          v262 = v259 + 1;
          if (__OFADD__(v259, 1))
          {
            goto LABEL_250;
          }

          v162 = __OFADD__(v260, 2);
          v260 += 2;
          if (v162)
          {
            v260 = 0x7FFFFFFFFFFFFFFFLL;
          }

          ++v259;
          if (v260 >= v258)
          {
            goto LABEL_140;
          }
        }
      }

      v262 = 0;
      v261 = MEMORY[0x277D84F90];
LABEL_140:
      v436[0] = v261;
      sub_24A6FCA6C(0, v262 & ~(v262 >> 63), 0);
      if ((v262 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_259:
      swift_once();
    }

    v263 = v436[0];
    v264 = v432;
    v431 = v258;
    if (v262)
    {
      v265 = 0;
      v266 = 0;
      v267 = *(v432 + 16);
      v419 = *(v420 + 80);
      v425 = (v419 + 32) & ~v419;
      v424 = (v432 + v425);
      v433 = ((v258 + 1) & 0xFFFFFFFFFFFFFFFELL);
      v268 = 2;
      while (1)
      {
        v269 = v267 >= v268 ? v268 : v267;
        if (v433 == v266)
        {
          goto LABEL_251;
        }

        if (v266 == 0x7FFFFFFFFFFFFFFELL)
        {
          goto LABEL_252;
        }

        v270 = v266 + 2;
        if (v267 >= v266 + 2)
        {
          v271 = (v266 + 2);
        }

        else
        {
          v271 = v267;
        }

        if (v271 < v266)
        {
          goto LABEL_253;
        }

        v272 = v269 + v265;
        if (v269 + v265 == *(v264 + 16))
        {
          v273 = v263;

          v263 = v273;
          v264 = v432;
          v274 = v432;
        }

        else
        {
          v274 = MEMORY[0x277D84F90];
          if (v266 != v271)
          {
            v418 = v263;
            if (v272 >= 1)
            {
              sub_24A6BBA94(&qword_27EF5E110, &unk_24A835280);
              v277 = *(v420 + 72);
              v274 = swift_allocObject();
              v278 = j__malloc_size(v274);
              if (!v277)
              {
                __break(1u);
LABEL_261:
                __break(1u);
LABEL_262:
                __break(1u);
LABEL_263:
                __break(1u);
                return;
              }

              v279 = v425;
              if (v278 - v425 == 0x8000000000000000 && v277 == -1)
              {
                goto LABEL_262;
              }

              v274[2] = v272;
              v274[3] = 2 * ((v278 - v279) / v277);
            }

            swift_arrayInitWithCopy();
            v264 = v432;
            v263 = v418;
          }
        }

        v436[0] = v263;
        v276 = *(v263 + 16);
        v275 = *(v263 + 24);
        if (v276 >= v275 >> 1)
        {
          sub_24A6FCA6C((v275 > 1), v276 + 1, 1);
          v264 = v432;
          v263 = v436[0];
        }

        *(v263 + 16) = v276 + 1;
        *(v263 + 8 * v276 + 32) = v274;
        v268 += 2;
        v265 -= 2;
        v266 = (v266 + 2);
        if (!--v262)
        {
          goto LABEL_168;
        }
      }
    }

    v270 = 0;
LABEL_168:
    v281 = v431;
    if (v270 < v431)
    {
      v282 = -v270;
      v283 = v270 + 2;
      v284 = v270;
      while (1)
      {
        v285 = *(v264 + 16);
        if (v285 < v284)
        {
          goto LABEL_255;
        }

        if (v270 < 0)
        {
          goto LABEL_256;
        }

        if (v285 >= v283)
        {
          v286 = v283;
        }

        else
        {
          v286 = *(v264 + 16);
        }

        v287 = v286 + v282;
        if (v286 + v282 == v285)
        {
          v288 = v263;

          v263 = v288;
          v264 = v432;
          v289 = v432;
        }

        else
        {
          v289 = MEMORY[0x277D84F90];
          if (v284 != v285)
          {
            v418 = v263;
            if (v287 >= 1)
            {
              sub_24A6BBA94(&qword_27EF5E110, &unk_24A835280);
              v433 = *(v420 + 72);
              v293 = (*(v420 + 80) + 32) & ~*(v420 + 80);
              v289 = swift_allocObject();
              v294 = j__malloc_size(v289);
              v295 = v433;
              if (!v433)
              {
                goto LABEL_261;
              }

              if (v294 - v293 == 0x8000000000000000 && (v433 + 1) == 0)
              {
                goto LABEL_263;
              }

              v289[2] = v287;
              v289[3] = 2 * ((v294 - v293) / v295);
            }

            swift_arrayInitWithCopy();
            v264 = v432;
            v263 = v418;
          }
        }

        v436[0] = v263;
        v291 = *(v263 + 16);
        v290 = *(v263 + 24);
        v292 = v291 + 1;
        if (v291 >= v290 >> 1)
        {
          v419 = v291 + 1;
          sub_24A6FCA6C((v290 > 1), v291 + 1, 1);
          v292 = v419;
          v264 = v432;
          v263 = v436[0];
        }

        v284 += 2;
        *(v263 + 16) = v292;
        *(v263 + 8 * v291 + 32) = v289;
        v282 -= 2;
        v283 += 2;
        if (v284 >= v281)
        {
          v418 = v263;
          v297 = MEMORY[0x277D84F90];
          goto LABEL_192;
        }
      }
    }

    v292 = *(v263 + 16);
    v297 = MEMORY[0x277D84F90];
    if (v292)
    {
      v418 = v263;
LABEL_192:
      v419 = v292;
      v436[0] = v297;
      sub_24A6FCA2C(0, v292, 0);
      v298 = 0;
      v299 = v436[0];
      v300 = v418;
      v417 = v418 + 32;
      v433 = (v420 + 16);
      v301 = v426;
      while (v298 < *(v300 + 16))
      {
        v302 = *(v417 + 8 * v298);
        v303 = *(v302 + 2);
        v304 = sub_24A67EFC0(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

        v305 = v303;
        v306 = v434;
        v307 = MEMORY[0x24C21CCD0](v305, v434, v304);
        v435 = v307;
        v308 = *(v302 + 2);
        if (v308)
        {
          v424 = v302;
          v425 = v298;
          v431 = v299;
          v309 = &v302[(*(v420 + 80) + 32) & ~*(v420 + 80)];
          v310 = *(v420 + 72);
          v311 = *(v420 + 16);
          v313 = v428;
          v312 = v429;
          do
          {
            v311(v312, v309, v306);
            sub_24A70BFA8(v313, v312);
            v306 = v434;
            v301(v313, v434);
            v309 += v310;
            --v308;
          }

          while (v308);

          v314 = v435;
          v299 = v431;
          v298 = v425;
        }

        else
        {
          v314 = v307;
        }

        v436[0] = v299;
        v316 = *(v299 + 2);
        v315 = *(v299 + 3);
        v300 = v418;
        v317 = v419;
        if (v316 >= v315 >> 1)
        {
          sub_24A6FCA2C((v315 > 1), v316 + 1, 1);
          v300 = v418;
          v317 = v419;
          v299 = v436[0];
        }

        ++v298;
        *(v299 + 2) = v316 + 1;
        *&v299[8 * v316 + 32] = v314;
        if (v298 == v317)
        {

          goto LABEL_203;
        }
      }

      continue;
    }

    break;
  }

  v299 = MEMORY[0x277D84F90];
LABEL_203:
  v318 = sub_24A714084(v299);

  v415 = v318;
  v174 = v414;
LABEL_204:
  v319 = type metadata accessor for FMIPItemGroup(0);
  v320 = v421;
  *(v421 + *(v319 + 52)) = v432;
  v320[7] = v415;
  v321 = *(i + 2);
  if (v321)
  {
    v322 = 0;
    v323 = v405;
    do
    {
      v325 = *v323;
      v323 += 8;
      v324 = v325;
      if ((v325 & ~v322) == 0)
      {
        v324 = 0;
      }

      v322 |= v324;
      --v321;
    }

    while (v321);
  }

  else
  {
    v322 = 0;
  }

  *v421 = v322;

  v326 = [v430 lostModeInfo];
  if (v326)
  {
    FMIPItemLostModeMetadata.init(lostModeInfo:)(v326, v174);
    v327 = 0;
  }

  else
  {
    v327 = 1;
  }

  v328 = type metadata accessor for FMIPItemLostModeMetadata(0);
  (*(*(v328 - 8) + 56))(v174, v327, 1, v328);

  sub_24A70B7FC(v174, v421 + *(v319 + 48));
  v329 = *(v416 + 2);
  if (v329)
  {
    v330 = 0;
    v331 = v416 + 32;
    do
    {
      v333 = *v331;
      v331 += 8;
      v332 = v333;
      if ((v333 & ~v330) == 0)
      {
        v332 = 0;
      }

      v330 |= v332;
      --v329;
    }

    while (v329);
  }

  else
  {
    v330 = 0;
  }

  v421[8] = v330;
  v334 = FMIPItemGroup.shouldDisplaySeparatedLocation.getter();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v335 = sub_24A82CDC4();
  sub_24A6797D0(v335, qword_281518F88);
  v336 = v430;
  v337 = sub_24A82CD94();
  v338 = sub_24A82D504();

  if (os_log_type_enabled(v337, v338))
  {
    LODWORD(v431) = v334;
    v339 = swift_slowAlloc();
    v340 = swift_slowAlloc();
    v436[0] = v340;
    *v339 = 136317442;
    v341 = [v336 name];
    v342 = sub_24A82CFC4();
    v344 = v343;

    v345 = sub_24A68761C(v342, v344, v436);

    *(v339 + 4) = v345;
    *(v339 + 12) = 2080;
    v346 = [v336 taskInformation];
    v347 = sub_24A82CEF4();

    v348 = *(v347 + 16);
    *&v432 = v340;
    if (v348 && (v349 = sub_24A77EE90(v408), (v350 & 1) != 0))
    {
      v351 = *(*(v347 + 56) + 8 * v349);
      v352 = v351;
    }

    else
    {
      v351 = 0;
    }

    v435 = v351;
    sub_24A6BBA94(&qword_27EF5DD38, &qword_24A839DE0);
    v353 = sub_24A82D024();
    v355 = sub_24A68761C(v353, v354, v436);

    *(v339 + 14) = v355;
    *(v339 + 22) = 2080;
    v356 = [v336 name];
    v357 = sub_24A82CFC4();
    v359 = v358;

    v360 = sub_24A68761C(v357, v359, v436);

    *(v339 + 24) = v360;
    *(v339 + 32) = 2080;
    v361 = [v336 taskInformation];
    v362 = sub_24A82CEF4();

    v363 = *(v362 + 16);
    LODWORD(v433) = v338;
    if (v363 && (v364 = sub_24A77EE90(*MEMORY[0x277D497F8]), (v365 & 1) != 0))
    {
      v366 = *(*(v362 + 56) + 8 * v364);
      v367 = v366;
    }

    else
    {
      v366 = 0;
    }

    v435 = v366;
    v368 = sub_24A82D024();
    v370 = sub_24A68761C(v368, v369, v436);

    *(v339 + 34) = v370;
    *(v339 + 42) = 2080;
    v371 = [v336 name];
    v372 = sub_24A82CFC4();
    v374 = v373;

    v375 = sub_24A68761C(v372, v374, v436);

    *(v339 + 44) = v375;
    *(v339 + 52) = 2080;
    v376 = [v336 taskInformation];
    v377 = sub_24A82CEF4();

    if (*(v377 + 16))
    {
      v378 = sub_24A77EE90(v404);
      v379 = &off_278FE8000;
      v380 = v426;
      if (v381)
      {
        v382 = *(*(v377 + 56) + 8 * v378);
        v383 = v382;
      }

      else
      {
        v382 = 0;
      }
    }

    else
    {
      v382 = 0;
      v379 = &off_278FE8000;
      v380 = v426;
    }

    v435 = v382;
    v384 = sub_24A82D024();
    v386 = sub_24A68761C(v384, v385, v436);

    *(v339 + 54) = v386;
    *(v339 + 62) = 1024;
    *(v339 + 64) = v431 & 1;
    *(v339 + 68) = 2080;
    v387 = [v336 v379[227]];
    v388 = v387 == 0;
    if (v387)
    {
      v389 = 0;
    }

    else
    {
      v389 = 7630702;
    }

    if (v388)
    {
      v390 = 0xE300000000000000;
    }

    else
    {
      v390 = 0xE000000000000000;
    }

    v391 = sub_24A68761C(v389, v390, v436);

    *(v339 + 70) = v391;
    *(v339 + 78) = 2080;
    v392 = [v336 name];
    v393 = sub_24A82CFC4();
    v395 = v394;

    v396 = sub_24A68761C(v393, v395, v436);

    *(v339 + 80) = v396;
    *(v339 + 88) = 2080;
    v397 = [v336 identifier];
    v398 = v428;
    sub_24A82CA84();

    v399 = sub_24A82CA54();
    v401 = v400;
    v380(v398, v434);
    v402 = sub_24A68761C(v399, v401, v436);

    *(v339 + 90) = v402;
    _os_log_impl(&dword_24A675000, v337, v433, "FMIPItemGroup: %s taskInfo -> play sound %s\nFMIPItemGroup: %s taskInfo -> stop sound %s\nFMIPItemGroup: %s taskInfo -> notify when found active %s\nshowSeparated: %{BOOL}d,\n☎︎ FMIPItemGroup: beacon is %s connected, '%s': %s", v339, 0x62u);
    v403 = v432;
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v403, -1, -1);
    MEMORY[0x24C21E1D0](v339, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24A709A74(uint64_t a1, uint64_t *a2)
{
  v45 = a2;
  v44 = sub_24A82CAA4();
  v3 = *(v44 - 8);
  v4 = MEMORY[0x28223BE20](v44);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = v35 - v7;
  v8 = type metadata accessor for FMIPItemPairingState(0);
  v46 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v35 - v12;
  v14 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;
  v42 = (v3 + 32);
  v39 = v3;
  v35[1] = v3 + 8;
  v36 = (v3 + 16);

  v20 = 0;
  v40 = a1;
  v37 = v11;
  v38 = v6;
  while (v17)
  {
LABEL_11:
    sub_24A69F064(*(a1 + 56) + *(v46 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v13, type metadata accessor for FMIPItemPairingState);
    sub_24A69F064(v13, v11, type metadata accessor for FMIPItemPairingState);
    v22 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
    if ((*(*(v22 - 8) + 48))(v11, 3, v22))
    {
      sub_24A69F204(v11, type metadata accessor for FMIPItemPairingState);
    }

    else
    {
      v23 = v43;
      v24 = v44;
      v41 = *v42;
      v41(v43, v11, v44);
      (*v36)(v6, v23, v24);
      v25 = v45;
      v26 = *v45;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v25 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_24A78029C(0, v26[2] + 1, 1, v26);
        *v45 = v26;
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        v34 = sub_24A78029C((v28 > 1), v29 + 1, 1, v26);
        *v45 = v34;
      }

      v30 = v39;
      v31 = v44;
      (*(v39 + 8))(v43, v44);
      v32 = *v45;
      *(v32 + 16) = v29 + 1;
      v33 = v32 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v29;
      v6 = v38;
      v41(v33, v38, v31);
      a1 = v40;
      v11 = v37;
    }

    v17 &= v17 - 1;
    result = sub_24A69F204(v13, type metadata accessor for FMIPItemPairingState);
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
    }

    v17 = *(v14 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t FMIPItemGroup.init(itemGroup:items:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v47 = a3;
  v5 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44 - v6;
  v8 = sub_24A82CAA4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPItem(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v54 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - v16;
  v46 = type metadata accessor for FMIPItemGroup(0);
  v18 = *(a1 + *(v46 + 52));
  v48 = a1;
  v19 = a1[7];
  v20 = *(a2 + 16);

  v45 = v19;

  v57 = v20;
  if (v20)
  {
    v22 = 0;
    v56 = (v9 + 48);
    v49 = (v9 + 8);
    v50 = (v9 + 32);
    v55 = MEMORY[0x277D84F90];
    v52 = v7;
    v53 = a2;
    v51 = v13;
    while (v22 < *(a2 + 16))
    {
      v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v58 = *(v13 + 72);
      v59 = v23;
      sub_24A69F064(a2 + v23 + v58 * v22, v17, type metadata accessor for FMIPItem);
      sub_24A82CA44();
      if ((*v56)(v7, 1, v8) == 1)
      {
        sub_24A67F378(v7, &qword_27EF5D020, &qword_24A830E40);
LABEL_4:
        result = sub_24A69F204(v17, type metadata accessor for FMIPItem);
      }

      else
      {
        (*v50)(v11, v7, v8);
        v24 = 0;
        v25 = *(v18 + 16);
        do
        {
          if (v25 == v24)
          {
            (*v49)(v11, v8);
            v7 = v52;
            a2 = v53;
            v13 = v51;
            goto LABEL_4;
          }

          v26 = v24 + 1;
          sub_24A67EFC0(&qword_27EF5DC48, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v27 = sub_24A82CF84();
          v24 = v26;
        }

        while ((v27 & 1) == 0);
        (*v49)(v11, v8);
        sub_24A6A2328(v17, v54, type metadata accessor for FMIPItem);
        v28 = v55;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A6FCB30(0, *(v28 + 16) + 1, 1);
          v28 = v60;
        }

        v31 = *(v28 + 16);
        v30 = *(v28 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_24A6FCB30((v30 > 1), v31 + 1, 1);
          v28 = v60;
        }

        *(v28 + 16) = v31 + 1;
        v55 = v28;
        result = sub_24A6A2328(v54, v28 + v59 + v31 * v58, type metadata accessor for FMIPItem);
        v7 = v52;
        a2 = v53;
        v13 = v51;
      }

      if (++v22 == v57)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v55 = MEMORY[0x277D84F90];
LABEL_18:

    v32 = v55;

    v33 = v45;
    v34 = sub_24A714870(v45, v32);

    v35 = sub_24A71417C(v34);

    v36 = v47;
    v37 = v48;
    v39 = v48[2];
    v38 = v48[3];
    v40 = *v48;
    v47[1] = v48[1];
    v36[2] = v39;
    v41 = v46;
    *(v36 + *(v46 + 52)) = v18;
    v42 = v37[4];
    v36[3] = v38;
    v36[4] = v42;
    v36[5] = v32;
    v36[6] = v35;
    v43 = v37[9];
    v36[8] = v37[8];
    v36[9] = v43;
    v36[7] = v33;
    *v36 = v40;
    sub_24A67E964(v37 + *(v41 + 48), v36 + *(v41 + 48), &unk_27EF5E100, &unk_24A839DB0);

    return sub_24A69F204(v37, type metadata accessor for FMIPItemGroup);
  }

  return result;
}

uint64_t sub_24A70A3DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = a3;
  v5 = sub_24A6BBA94(&qword_27EF5D018, &qword_24A830E38);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - v6;
  v56 = type metadata accessor for FMIPItem(0);
  v8 = *(v56 - 8);
  v9 = MEMORY[0x28223BE20](v56);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v42 - v12;
  v13 = sub_24A82CAA4();
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = v11;
  v19 = v17 + 56;
  v20 = 1 << *(v17 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v17 + 56);
  v23 = (v20 + 63) >> 6;
  v52 = (v8 + 56);
  v53 = v14 + 16;
  v55 = v14;
  v49 = v8;
  v50 = (v8 + 48);
  v51 = (v14 + 8);
  v58 = v17;

  v25 = 0;
  v45 = MEMORY[0x277D84F90];
  v46 = v13;
  v54 = v19;
  v57 = v23;
  v47 = v7;
  v48 = a2;
LABEL_4:
  v26 = v25;
  if (!v22)
  {
    goto LABEL_6;
  }

  do
  {
    v25 = v26;
LABEL_9:
    (*(v55 + 16))(v16, *(v58 + 48) + *(v55 + 72) * (__clz(__rbit64(v22)) | (v25 << 6)), v13);
    v27 = *(a2 + 16);
    if (v27)
    {
      v28 = a2 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
      v59 = *(v49 + 72);
      while (1)
      {
        sub_24A69F064(v28, v18, type metadata accessor for FMIPItem);
        v29 = v18;
        v31 = *(v18 + 352);
        v30 = *(v18 + 360);
        if (v31 == sub_24A82CA54() && v30 == v32)
        {
          break;
        }

        v34 = sub_24A82DC04();

        if (v34)
        {
          goto LABEL_20;
        }

        v18 = v29;
        sub_24A69F204(v29, type metadata accessor for FMIPItem);
        v28 += v59;
        if (!--v27)
        {
          v35 = 1;
          v7 = v47;
          a2 = v48;
          goto LABEL_21;
        }
      }

LABEL_20:
      v18 = v29;
      v7 = v47;
      sub_24A6A2328(v29, v47, type metadata accessor for FMIPItem);
      v35 = 0;
      a2 = v48;
LABEL_21:
      v13 = v46;
    }

    else
    {
      v35 = 1;
    }

    v22 &= v22 - 1;
    v36 = v56;
    (*v52)(v7, v35, 1, v56);
    (*v51)(v16, v13);
    v37 = (*v50)(v7, 1, v36);
    v23 = v57;
    if (v37 != 1)
    {
      sub_24A6A2328(v7, v43, type metadata accessor for FMIPItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_24A7802C4(0, v45[2] + 1, 1, v45);
      }

      v39 = v45[2];
      v38 = v45[3];
      if (v39 >= v38 >> 1)
      {
        v45 = sub_24A7802C4((v38 > 1), v39 + 1, 1, v45);
      }

      v40 = v45;
      v45[2] = v39 + 1;
      result = sub_24A6A2328(v43, v40 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v39, type metadata accessor for FMIPItem);
      v19 = v54;
      v23 = v57;
      goto LABEL_4;
    }

    result = sub_24A67F378(v7, &qword_27EF5D018, &qword_24A830E38);
    v26 = v25;
    v19 = v54;
  }

  while (v22);
LABEL_6:
  while (1)
  {
    v25 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      v41 = sub_24A714274(v45);

      *v44 = v41;
      return result;
    }

    v22 = *(v19 + 8 * v25);
    ++v26;
    if (v22)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t FMIPItemGroup.init(itemGroup:connected:)@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = a1[2];
  if (a2)
  {
    v6 = a1[8];
  }

  else
  {
    v6 = a1[8] & 0xFFFFFFFFFFFFFFBFLL;
  }

  a3[1] = a1[1];
  a3[2] = v5;
  v7 = type metadata accessor for FMIPItemGroup(0);
  *(a3 + *(v7 + 52)) = *(a1 + *(v7 + 52));
  v9 = a1[6];
  v8 = a1[7];
  v10 = a1[4];
  a3[3] = a1[3];
  a3[4] = v10;
  a3[5] = a1[5];
  a3[6] = v9;
  v11 = a1[9];
  a3[8] = v6;
  a3[9] = v11;
  a3[7] = v8;
  *a3 = *a1;
  sub_24A67E964(a1 + *(v7 + 48), a3 + *(v7 + 48), &unk_27EF5E100, &unk_24A839DB0);

  return sub_24A69F204(a1, type metadata accessor for FMIPItemGroup);
}

uint64_t FMIPItemGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5DC50, &qword_24A835F00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A68C708();
  sub_24A82DD84();
  v11 = *v3;
  HIBYTE(v10) = 0;
  sub_24A714ADC();
  sub_24A82DB44();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_24A82DB04();
    LOBYTE(v11) = 7;
    sub_24A82DB04();
    v11 = v3[5];
    HIBYTE(v10) = 5;
    sub_24A6BBA94(&qword_27EF5DC18, &qword_24A836D50);
    sub_24A714B30();
    sub_24A82DB44();
    v11 = v3[6];
    HIBYTE(v10) = 6;
    sub_24A6BBA94(&qword_27EF5DC28, &qword_24A835EF8);
    sub_24A70B6D0(&qword_27EF5DC68, sub_24A714BE4, MEMORY[0x277D83B50]);
    sub_24A82DB44();
    v11 = *(v3 + *(type metadata accessor for FMIPItemGroup(0) + 52));
    HIBYTE(v10) = 2;
    sub_24A6BBA94(&qword_27EF5DA38, &qword_24A8352C8);
    sub_24A714C98();
    sub_24A82DB44();
    v11 = v3[7];
    HIBYTE(v10) = 3;
    sub_24A6BBA94(&qword_27EF5DBE8, &qword_24A835EE8);
    sub_24A714D4C(&qword_27EF5DC78, sub_24A714DC4, MEMORY[0x277D83B50]);
    sub_24A82DB44();
    v11 = v3[9];
    HIBYTE(v10) = 4;
    sub_24A6BBA94(&qword_27EF5DC00, &qword_24A835EF0);
    sub_24A714E78();
    sub_24A82DB44();
    LOBYTE(v11) = 8;
    sub_24A82DB34();
    LOBYTE(v11) = 9;
    sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
    sub_24A714F34();
    sub_24A82DB44();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FMIPItemGroup.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[5];
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v25[0] = v0;
    v26 = MEMORY[0x277D84F90];
    sub_24A6FC900(0, v7, 0);
    v8 = v26;
    v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_24A69F064(v9, v5, type metadata accessor for FMIPItem);
      v12 = *(v5 + 44);
      v11 = *(v5 + 45);

      sub_24A69F204(v5, type metadata accessor for FMIPItem);
      v26 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_24A6FC900((v13 > 1), v14 + 1, 1);
        v8 = v26;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v9 += v10;
      --v7;
    }

    while (v7);
    v1 = v25[0];
  }

  v26 = 0;
  v27 = 0xE000000000000000;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](60, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0x6D65744950494D46, 0xED000070756F7247);
  MEMORY[0x24C21C9E0](0xD000000000000012, 0x800000024A8463D0);
  v16 = v1[1];
  v17 = v1[2];
  MEMORY[0x24C21C9E0](v16, v17);
  MEMORY[0x24C21C9E0](0xD000000000000012, 0x800000024A8463F0);
  MEMORY[0x24C21C9E0](v16, v17);
  MEMORY[0x24C21C9E0](0x6D616E202020200ALL, 0xEB00000000203A65);
  MEMORY[0x24C21C9E0](v1[3], v1[4]);
  MEMORY[0x24C21C9E0](0x657469202020200ALL, 0xEC000000203A736DLL);
  v18 = MEMORY[0x24C21CB60](v8, MEMORY[0x277D837D0]);
  v20 = v19;

  MEMORY[0x24C21C9E0](v18, v20);

  MEMORY[0x24C21C9E0](0xD000000000000013, 0x800000024A846410);
  sub_24A6BBA94(&qword_27EF5DA28, &qword_24A8415A0);
  sub_24A678A64(&qword_27EF5DCA8, &qword_27EF5DA28, &qword_24A8415A0);
  v21 = sub_24A82D3B4();
  MEMORY[0x24C21C9E0](v21);

  MEMORY[0x24C21C9E0](0xD00000000000001ALL, 0x800000024A846430);
  type metadata accessor for FMIPItemPairingState(0);
  v22 = sub_24A82CF04();
  MEMORY[0x24C21C9E0](v22);

  MEMORY[0x24C21C9E0](0x617473202020200ALL, 0xEC000000203A6574);
  v25[1] = v1[8];
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0xD00000000000001DLL, 0x800000024A846450);
  v23 = sub_24A82D3B4();
  MEMORY[0x24C21C9E0](v23);

  MEMORY[0x24C21C9E0](15882, 0xE200000000000000);
  return v26;
}

void *sub_24A70B2D8(void **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = (a4)(&v7, a1, a2, a3);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

uint64_t sub_24A70B374@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_24A70B3A4()
{
  result = qword_27EF5DBE0;
  if (!qword_27EF5DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DBE0);
  }

  return result;
}

unint64_t sub_24A70B3F8()
{
  result = qword_27EF5E020;
  if (!qword_27EF5E020)
  {
    sub_24A6CCDC0(&qword_27EF5DA38, &qword_24A8352C8);
    sub_24A67EFC0(&qword_27EF5DBA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E020);
  }

  return result;
}

unint64_t sub_24A70B4AC()
{
  result = qword_27EF5DBF8;
  if (!qword_27EF5DBF8)
  {
    sub_24A6CCDC0(&qword_27EF5DA28, &qword_24A8415A0);
    sub_24A67EFC0(&qword_27EF5DBA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DBF8);
  }

  return result;
}

unint64_t sub_24A70B560()
{
  result = qword_27EF5DC08;
  if (!qword_27EF5DC08)
  {
    sub_24A6CCDC0(&qword_27EF5DC00, &qword_24A835EF0);
    sub_24A67EFC0(&qword_27EF5DC10, type metadata accessor for FMIPItemPairingState, &protocol conformance descriptor for FMIPItemPairingState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DC08);
  }

  return result;
}

unint64_t sub_24A70B61C()
{
  result = qword_27EF5DC20;
  if (!qword_27EF5DC20)
  {
    sub_24A6CCDC0(&qword_27EF5DC18, &qword_24A836D50);
    sub_24A67EFC0(&qword_27EF5E290, type metadata accessor for FMIPItem, &protocol conformance descriptor for FMIPItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DC20);
  }

  return result;
}

uint64_t sub_24A70B6D0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(&qword_27EF5DC28, &qword_24A835EF8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A70B748()
{
  result = qword_27EF5DC38;
  if (!qword_27EF5DC38)
  {
    sub_24A6CCDC0(&qword_27EF5DAA8, &qword_24A835338);
    sub_24A67EFC0(&qword_27EF5E290, type metadata accessor for FMIPItem, &protocol conformance descriptor for FMIPItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DC38);
  }

  return result;
}

uint64_t sub_24A70B7FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A70B86C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for FMIPBeaconShare(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24A82DCC4();
  FMIPBeaconShare.hash(into:)(v20);
  v10 = sub_24A82DD24();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_24A69F064(*(v9 + 48) + v14 * v12, v8, type metadata accessor for FMIPBeaconShare);
      v15 = _s8FMIPCore15FMIPBeaconShareV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_24A69F204(v8, type metadata accessor for FMIPBeaconShare);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24A69F204(a2, type metadata accessor for FMIPBeaconShare);
    sub_24A69F064(*(v9 + 48) + v14 * v12, v19, type metadata accessor for FMIPBeaconShare);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24A69F064(a2, v8, type metadata accessor for FMIPBeaconShare);
    v20[0] = *v3;
    sub_24A70EE40(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20[0];
    sub_24A6A2328(a2, v17, type metadata accessor for FMIPBeaconShare);
    return 1;
  }
}

uint64_t sub_24A70BAAC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_24A82D754();

    if (v9)
    {

      sub_24A679170(0, &qword_27EF5D028, 0x277D49670);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_24A82D744();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_24A70CED4(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_24A70E8B8(v20 + 1, &qword_27EF5DD98, &qword_24A836150);
    }

    v18 = v8;
    sub_24A70EDBC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_24A679170(0, &qword_27EF5D028, 0x277D49670);
  v11 = sub_24A82D5D4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_24A70F084(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_24A82D5E4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_24A70BCF4(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_24A82DCC4();
  sub_24A82D094();

  v5 = sub_24A82DD24();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v24 = ~v6;
    v8 = 0xEA0000000000656ELL;
    v9 = 0x7468676972;
    v10 = 1702131053;
    v11 = 0xE500000000000000;
    while (1)
    {
      v12 = *(*(v4 + 48) + v7);
      if (v12 <= 1)
      {
        if (*(*(v4 + 48) + v7))
        {
          v13 = v9;
        }

        else
        {
          v13 = 1952867692;
        }

        if (*(*(v4 + 48) + v7))
        {
          v14 = 0xE500000000000000;
        }

        else
        {
          v14 = 0xE400000000000000;
        }
      }

      else if (v12 == 2)
      {
        v14 = 0xE400000000000000;
        v13 = 1702060387;
      }

      else
      {
        if (v12 == 3)
        {
          v13 = 0x6F6C61646E617473;
        }

        else
        {
          v13 = 1702131053;
        }

        if (v12 == 3)
        {
          v14 = 0xEA0000000000656ELL;
        }

        else
        {
          v14 = 0xE400000000000000;
        }
      }

      if (a2 == 3)
      {
        v10 = 0x6F6C61646E617473;
      }

      else
      {
        v8 = 0xE400000000000000;
      }

      if (a2 == 2)
      {
        v10 = 1702060387;
        v8 = 0xE400000000000000;
      }

      if (a2)
      {
        v15 = v9;
      }

      else
      {
        v15 = 1952867692;
      }

      if (!a2)
      {
        v11 = 0xE400000000000000;
      }

      v16 = a2 <= 1u ? v15 : v10;
      v17 = a2 <= 1u ? v11 : v8;
      if (v13 == v16 && v14 == v17)
      {
        break;
      }

      v18 = v9;
      v19 = sub_24A82DC04();

      if (v19)
      {
        goto LABEL_40;
      }

      v7 = (v7 + 1) & v24;
      v8 = 0xEA0000000000656ELL;
      v9 = v18;
      v10 = 1702131053;
      v11 = 0xE500000000000000;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_38:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v22;
    sub_24A70F204(a2, v7, isUniquelyReferenced_nonNull_native);
    *v22 = v25;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24A70BFA8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24A82CAA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24A67EFC0(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_24A82CF54();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24A67EFC0(&qword_27EF5DC48, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_24A82CF84();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24A70F704(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24A70C288(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), void (*a4)(uint64_t, unint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v10 = *v5;
  sub_24A82DCC4();
  a3(v21, a2);
  v11 = sub_24A82DD24();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {

      v16 = a5(v15, a2);

      if (v16)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v10 + 48) + 8 * v13);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21[0] = *v5;

    a4(v18, v13, isUniquelyReferenced_nonNull_native);
    *v5 = v21[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_24A70C3E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for FMIPItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24A82DCC4();
  sub_24A82D094();
  v10 = sub_24A82DD24();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_24A69F064(*(v9 + 48) + v14 * v12, v8, type metadata accessor for FMIPItem);
      v15 = _s8FMIPCore8FMIPItemV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_24A69F204(v8, type metadata accessor for FMIPItem);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24A69F204(a2, type metadata accessor for FMIPItem);
    sub_24A69F064(*(v9 + 48) + v14 * v12, v19, type metadata accessor for FMIPItem);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24A69F064(a2, v8, type metadata accessor for FMIPItem);
    v20 = *v3;
    sub_24A70FB8C(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    sub_24A6A2328(a2, v17, type metadata accessor for FMIPItem);
    return 1;
  }
}

uint64_t sub_24A70C624(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24A82DCC4();
  sub_24A82D094();
  v8 = sub_24A82DD24();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24A82DC04() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_24A70FDD0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24A70C774(uint64_t a1, void *a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for FMIPDiscoveredAccessory(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  sub_24A82DCC4();
  FMIPDiscoveredAccessory.hash(into:)(v20);
  v10 = sub_24A82DD24();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_24A69F064(*(v9 + 48) + v14 * v12, v8, type metadata accessor for FMIPDiscoveredAccessory);
      v15 = _s8FMIPCore23FMIPDiscoveredAccessoryV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_24A69F204(v8, type metadata accessor for FMIPDiscoveredAccessory);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24A69F204(a2, type metadata accessor for FMIPDiscoveredAccessory);
    sub_24A69F064(*(v9 + 48) + v14 * v12, v19, type metadata accessor for FMIPDiscoveredAccessory);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24A69F064(a2, v8, type metadata accessor for FMIPDiscoveredAccessory);
    v20[0] = *v3;
    sub_24A70FF50(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20[0];
    sub_24A6A2328(a2, v17, type metadata accessor for FMIPDiscoveredAccessory);
    return 1;
  }
}

uint64_t sub_24A70C9B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for FMIPUnknownItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24A82DCC4();
  FMIPUnknownItem.hash(into:)(v20);
  v10 = sub_24A82DD24();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_24A69F064(*(v9 + 48) + v14 * v12, v8, type metadata accessor for FMIPUnknownItem);
      v15 = _s8FMIPCore15FMIPUnknownItemV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_24A69F204(v8, type metadata accessor for FMIPUnknownItem);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24A69F204(a2, type metadata accessor for FMIPUnknownItem);
    sub_24A69F064(*(v9 + 48) + v14 * v12, v19, type metadata accessor for FMIPUnknownItem);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24A69F064(a2, v8, type metadata accessor for FMIPUnknownItem);
    v20[0] = *v3;
    sub_24A710194(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20[0];
    sub_24A6A2328(a2, v17, type metadata accessor for FMIPUnknownItem);
    return 1;
  }
}

uint64_t sub_24A70CBF4(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_24A82DCC4();
  sub_24A82D094();

  v5 = sub_24A82DD24();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v25 = ~v6;
    v8 = 0x6475427468676972;
    v9 = 0xE800000000000000;
    while (1)
    {
      v10 = *(*(v4 + 48) + v7);
      if (v10 <= 1)
      {
        if (*(*(v4 + 48) + v7))
        {
          v11 = 1702060387;
        }

        else
        {
          v11 = 0x6F6C61646E617473;
        }

        if (*(*(v4 + 48) + v7))
        {
          v12 = 0xE400000000000000;
        }

        else
        {
          v12 = 0xEA0000000000656ELL;
        }
      }

      else if (v10 == 2)
      {
        v12 = 0xE700000000000000;
        v11 = 0x6475427466656CLL;
      }

      else
      {
        if (v10 == 3)
        {
          v11 = v8;
        }

        else
        {
          v11 = 0x636972656E6567;
        }

        if (v10 == 3)
        {
          v12 = 0xE800000000000000;
        }

        else
        {
          v12 = 0xE700000000000000;
        }
      }

      if (a2 == 3)
      {
        v13 = v8;
      }

      else
      {
        v13 = 0x636972656E6567;
      }

      if (a2 != 3)
      {
        v9 = 0xE700000000000000;
      }

      if (a2 == 2)
      {
        v13 = 0x6475427466656CLL;
        v9 = 0xE700000000000000;
      }

      v14 = a2 ? 1702060387 : 0x6F6C61646E617473;
      v15 = a2 ? 0xE400000000000000 : 0xEA0000000000656ELL;
      v16 = a2 <= 1u ? v14 : v13;
      v17 = a2 <= 1u ? v15 : v9;
      if (v11 == v16 && v12 == v17)
      {
        break;
      }

      v18 = a2;
      v19 = v8;
      v20 = sub_24A82DC04();

      if (v20)
      {
        goto LABEL_43;
      }

      v7 = (v7 + 1) & v25;
      v8 = v19;
      a2 = v18;
      v9 = 0xE800000000000000;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

LABEL_43:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_41:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v23;
    sub_24A7103D8(a2, v7, isUniquelyReferenced_nonNull_native);
    *v23 = v26;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24A70CED4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_24A6BBA94(&qword_27EF5DD98, &qword_24A836150);
    v2 = sub_24A82D804();
    v15 = v2;
    sub_24A82D704();
    if (sub_24A82D784())
    {
      sub_24A679170(0, &qword_27EF5D028, 0x277D49670);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_24A70E8B8(v9 + 1, &qword_27EF5DD98, &qword_24A836150);
        }

        v2 = v15;
        result = sub_24A82D5D4();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_24A82D784());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_24A70D0E4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for FMIPBeaconShare(0);
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_24A6BBA94(&qword_27EF5DD60, &qword_24A836138);
  result = sub_24A82D7F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v24 = result + 56;
    for (i = v25; v12; ++*(v7 + 16))
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = *(v26 + 72);
      sub_24A6A2328(*(v5 + 48) + v18 * (v15 | (v8 << 6)), i, type metadata accessor for FMIPBeaconShare);
      sub_24A82DCC4();
      FMIPBeaconShare.hash(into:)(v27);
      sub_24A82DD24();
      v19 = v24;
      v20 = sub_24A82D6E4();
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_24A6A2328(i, *(v7 + 48) + v20 * v18, type metadata accessor for FMIPBeaconShare);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v21 = 1 << *(v5 + 32);
    if (v21 >= 64)
    {
      bzero((v5 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v21;
    }

    v2 = v23;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_24A70D380(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_24A6BBA94(&qword_27EF5DD58, &qword_24A836130);
  result = sub_24A82D7F4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_24A82DCC4();
      sub_24A82D094();

      result = sub_24A82DD24();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A70D650(uint64_t a1)
{
  v2 = v1;
  v36 = sub_24A82CAA4();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_24A6BBA94(&qword_27EF5DCF8, &qword_24A836110);
  result = sub_24A82D7F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_24A67EFC0(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24A82CF54();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

unint64_t sub_24A70D9AC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = v4;
  v7 = *v4;
  sub_24A6BBA94(a2, a3);
  result = sub_24A82D7F4();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    for (i = result + 56; v14; ++*(v9 + 16))
    {
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v20 = *(*(v7 + 48) + 8 * (v17 | (v10 << 6)));
      sub_24A82DCC4();
      a4(v22, v20);
      sub_24A82DD24();
      result = sub_24A82D6E4();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v9 + 48) + 8 * result) = v20;
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= v15)
      {
        break;
      }

      v19 = v11[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    v21 = 1 << *(v7 + 32);
    if (v21 >= 64)
    {
      bzero((v7 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v21;
    }

    v6 = v4;
    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

uint64_t sub_24A70DB90(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for FMIPItem(0);
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_24A6BBA94(&qword_27EF5DDB8, &qword_24A836160);
  result = sub_24A82D7F4();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_24A6A2328(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for FMIPItem);
      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_24A6A2328(v5, *(v8 + 48) + v16 * v20, type metadata accessor for FMIPItem);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_24A70DE98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_24A6BBA94(&qword_27EF5DD48, &qword_24A836128);
  result = sub_24A82D7F4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A70E0F8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for FMIPHawkeyeProductInformation(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for FMIPDiscoveredAccessory(0);
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *v1;
  sub_24A6BBA94(&qword_27EF5DD88, &qword_24A836148);
  v13 = sub_24A82D7F4();
  v14 = v13;
  if (*(v12 + 16))
  {
    v37 = v1;
    v15 = 0;
    v16 = *(v12 + 56);
    v39 = (v12 + 56);
    v40 = v9;
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & v16;
    v38 = (v17 + 63) >> 6;
    v42 = (v4 + 48);
    v43 = v13;
    v20 = v13 + 56;
    v44 = v12;
    while (v19)
    {
      v22 = __clz(__rbit64(v19));
      v48 = (v19 - 1) & v19;
LABEL_15:
      v26 = *(v12 + 48);
      v47 = *(v46 + 72);
      sub_24A6A2328(v26 + v47 * (v22 | (v15 << 6)), v11, type metadata accessor for FMIPDiscoveredAccessory);
      sub_24A82DCC4();
      sub_24A82D5F4();
      if (v11[3])
      {
        v45 = v11[5];
        v27 = v11[1];
        sub_24A82DCE4();
        MEMORY[0x24C21D5E0](v27);
        sub_24A82D094();
        v9 = v40;
        sub_24A82D094();
      }

      else
      {
        sub_24A82DCE4();
      }

      sub_24A67E964(v11 + *(v9 + 24), v8, &qword_27EF5D360, &unk_24A836200);
      if ((*v42)(v8, 1, v3) == 1)
      {
        sub_24A82DCE4();
      }

      else
      {
        v28 = v41;
        sub_24A6A2328(v8, v41, type metadata accessor for FMIPHawkeyeProductInformation);
        sub_24A82DCE4();
        FMIPHawkeyeProductInformation.hash(into:)(v49);
        sub_24A69F204(v28, type metadata accessor for FMIPHawkeyeProductInformation);
      }

      v14 = v43;
      v12 = v44;
      result = sub_24A82DD24();
      v29 = -1 << *(v14 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_24A6A2328(v11, *(v14 + 48) + v21 * v47, type metadata accessor for FMIPDiscoveredAccessory);
      ++*(v14 + 16);
      v19 = v48;
    }

    v23 = v15;
    result = v39;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v38)
      {
        break;
      }

      v25 = v39[v15];
      ++v23;
      if (v25)
      {
        v22 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v12 + 32);
    if (v36 >= 64)
    {
      bzero(v39, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v39 = -1 << v36;
    }

    v2 = v37;
    *(v12 + 16) = 0;
  }

  *v2 = v14;
  return result;
}

uint64_t sub_24A70E608(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for FMIPUnknownItem(0);
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_24A6BBA94(&qword_27EF5DD78, &unk_24A83F530);
  result = sub_24A82D7F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v24 = result + 56;
    for (i = v25; v12; ++*(v7 + 16))
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = *(v26 + 72);
      sub_24A6A2328(*(v5 + 48) + v18 * (v15 | (v8 << 6)), i, type metadata accessor for FMIPUnknownItem);
      sub_24A82DCC4();
      FMIPUnknownItem.hash(into:)(v27);
      sub_24A82DD24();
      v19 = v24;
      v20 = sub_24A82D6E4();
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_24A6A2328(i, *(v7 + 48) + v20 * v18, type metadata accessor for FMIPUnknownItem);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v21 = 1 << *(v5 + 32);
    if (v21 >= 64)
    {
      bzero((v5 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v21;
    }

    v2 = v23;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_24A70E8B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_24A6BBA94(a2, a3);
  result = sub_24A82D7F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_24A82D5D4();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_24A70EAD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_24A6BBA94(&qword_27EF5DD70, &qword_24A836140);
  result = sub_24A82D7F4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_24A82DCC4();
      sub_24A82D094();

      result = sub_24A82DD24();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_24A70EDBC(uint64_t a1, uint64_t a2)
{
  sub_24A82D5D4();
  result = sub_24A82D6E4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_24A70EE40(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for FMIPBeaconShare(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_24A70D0E4(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_24A710724();
      goto LABEL_12;
    }

    v26 = v10;
    sub_24A7116A8(v13 + 1);
  }

  v15 = *v4;
  sub_24A82DCC4();
  FMIPBeaconShare.hash(into:)(v27);
  v16 = sub_24A82DD24();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_24A69F064(*(v15 + 48) + v19 * a2, v12, type metadata accessor for FMIPBeaconShare);
      v20 = _s8FMIPCore15FMIPBeaconShareV2eeoiySbAC_ACtFZ_0(v12, a1);
      sub_24A69F204(v12, type metadata accessor for FMIPBeaconShare);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24A6A2328(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for FMIPBeaconShare);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A82DC34();
  __break(1u);
  return result;
}

void sub_24A70F084(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24A70E8B8(v6 + 1, &qword_27EF5DD98, &qword_24A836150);
  }

  else
  {
    if (v7 > v6)
    {
      sub_24A710930();
      goto LABEL_12;
    }

    sub_24A711910(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_24A82D5D4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_24A679170(0, &qword_27EF5D028, 0x277D49670);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_24A82D5E4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_24A82DC34();
  __break(1u);
}

uint64_t sub_24A70F204(uint64_t result, unint64_t a2, char a3)
{
  v28 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_45;
  }

  if (a3)
  {
    sub_24A70D380(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_24A711578(&qword_27EF5DD58, &qword_24A836130);
      goto LABEL_45;
    }

    sub_24A711B24(v5 + 1);
  }

  v7 = *v3;
  sub_24A82DCC4();
  sub_24A82D094();

  result = sub_24A82DD24();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    v10 = 0x6F6C61646E617473;
    v11 = 0x7468676972;
    do
    {
      v12 = *(*(v7 + 48) + a2);
      if (v12 <= 1)
      {
        if (*(*(v7 + 48) + a2))
        {
          v13 = v11;
        }

        else
        {
          v13 = 1952867692;
        }

        if (*(*(v7 + 48) + a2))
        {
          v14 = 0xE500000000000000;
        }

        else
        {
          v14 = 0xE400000000000000;
        }
      }

      else if (v12 == 2)
      {
        v14 = 0xE400000000000000;
        v13 = 1702060387;
      }

      else
      {
        if (v12 == 3)
        {
          v13 = v10;
        }

        else
        {
          v13 = 1702131053;
        }

        if (v12 == 3)
        {
          v14 = 0xEA0000000000656ELL;
        }

        else
        {
          v14 = 0xE400000000000000;
        }
      }

      v15 = v10;
      if (v28 == 3)
      {
        v16 = v10;
      }

      else
      {
        v16 = 1702131053;
      }

      v17 = 0xEA0000000000656ELL;
      if (v28 != 3)
      {
        v17 = 0xE400000000000000;
      }

      if (v28 == 2)
      {
        v16 = 1702060387;
        v17 = 0xE400000000000000;
      }

      v18 = v11;
      if (v28)
      {
        v19 = 0xE500000000000000;
      }

      else
      {
        v11 = 1952867692;
        v19 = 0xE400000000000000;
      }

      v20 = v28 <= 1u ? v11 : v16;
      v21 = v28 <= 1u ? v19 : v17;
      if (v13 == v20 && v14 == v21)
      {
        goto LABEL_48;
      }

      v22 = sub_24A82DC04();

      if (v22)
      {
        goto LABEL_49;
      }

      a2 = (a2 + 1) & v9;
      v10 = v15;
      v11 = v18;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_45:
  v23 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + a2) = v28;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_48:

LABEL_49:
  result = sub_24A82DC34();
  __break(1u);
  return result;
}

uint64_t sub_24A70F520(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24A70D9AC(v6 + 1, &qword_27EF5DD40, &qword_24A836120, sub_24A713504);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_24A710CB8(&qword_27EF5DD40, &qword_24A836120);
      goto LABEL_12;
    }

    sub_24A7120E0(v6 + 1, &qword_27EF5DD40, &qword_24A836120, sub_24A713504);
  }

  v8 = *v3;
  sub_24A82DCC4();
  sub_24A713504(v18, v5);
  result = sub_24A82DD24();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      sub_24A6BBA94(&qword_27EF5DA28, &qword_24A8415A0);

      v12 = sub_24A69F944(v11, v5);

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v17;
  *(*v17 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A82DC34();
  __break(1u);
  return result;
}

uint64_t sub_24A70F704(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_24A82CAA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24A70D650(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_24A710A80();
      goto LABEL_12;
    }

    sub_24A711DC4(v10 + 1);
  }

  v12 = *v3;
  sub_24A67EFC0(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_24A82CF54();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_24A67EFC0(&qword_27EF5DC48, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_24A82CF84();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A82DC34();
  __break(1u);
  return result;
}

uint64_t sub_24A70F9A8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24A70D9AC(v6 + 1, &qword_27EF5DDA8, &qword_24A836158, sub_24A713730);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_24A710CB8(&qword_27EF5DDA8, &qword_24A836158);
      goto LABEL_12;
    }

    sub_24A7120E0(v6 + 1, &qword_27EF5DDA8, &qword_24A836158, sub_24A713730);
  }

  v8 = *v3;
  sub_24A82DCC4();
  sub_24A713730(v18, v5);
  result = sub_24A82DD24();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      sub_24A6BBA94(&qword_27EF5DAA8, &qword_24A835338);

      v12 = sub_24A7B4E78(v11, v5);

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v17;
  *(*v17 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A82DC34();
  __break(1u);
  return result;
}

uint64_t sub_24A70FB8C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for FMIPItem(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_24A70DB90(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_24A710DF8();
      goto LABEL_12;
    }

    v26 = v10;
    sub_24A71228C(v13 + 1);
  }

  v15 = *v4;
  sub_24A82DCC4();
  sub_24A82D094();
  v16 = sub_24A82DD24();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_24A69F064(*(v15 + 48) + v19 * a2, v12, type metadata accessor for FMIPItem);
      v20 = _s8FMIPCore8FMIPItemV2eeoiySbAC_ACtFZ_0(v12, a1);
      sub_24A69F204(v12, type metadata accessor for FMIPItem);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24A6A2328(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for FMIPItem);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A82DC34();
  __break(1u);
  return result;
}

uint64_t sub_24A70FDD0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24A70DE98(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24A711004();
      goto LABEL_16;
    }

    sub_24A712564(v8 + 1);
  }

  v10 = *v4;
  sub_24A82DCC4();
  sub_24A82D094();
  result = sub_24A82DD24();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24A82DC04();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24A82DC34();
  __break(1u);
  return result;
}

uint64_t sub_24A70FF50(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for FMIPDiscoveredAccessory(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_24A70E0F8(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_24A711160();
      goto LABEL_12;
    }

    v26 = v10;
    sub_24A71279C(v13 + 1);
  }

  v15 = *v4;
  sub_24A82DCC4();
  FMIPDiscoveredAccessory.hash(into:)(v27);
  v16 = sub_24A82DD24();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_24A69F064(*(v15 + 48) + v19 * a2, v12, type metadata accessor for FMIPDiscoveredAccessory);
      v20 = _s8FMIPCore23FMIPDiscoveredAccessoryV2eeoiySbAC_ACtFZ_0(v12, a1);
      sub_24A69F204(v12, type metadata accessor for FMIPDiscoveredAccessory);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24A6A2328(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for FMIPDiscoveredAccessory);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A82DC34();
  __break(1u);
  return result;
}

uint64_t sub_24A710194(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for FMIPUnknownItem(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_24A70E608(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_24A71136C();
      goto LABEL_12;
    }

    v26 = v10;
    sub_24A712C7C(v13 + 1);
  }

  v15 = *v4;
  sub_24A82DCC4();
  FMIPUnknownItem.hash(into:)(v27);
  v16 = sub_24A82DD24();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_24A69F064(*(v15 + 48) + v19 * a2, v12, type metadata accessor for FMIPUnknownItem);
      v20 = _s8FMIPCore15FMIPUnknownItemV2eeoiySbAC_ACtFZ_0(v12, a1);
      sub_24A69F204(v12, type metadata accessor for FMIPUnknownItem);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24A6A2328(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for FMIPUnknownItem);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A82DC34();
  __break(1u);
  return result;
}

uint64_t sub_24A7103D8(uint64_t result, unint64_t a2, char a3)
{
  v32 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_46;
  }

  if (a3)
  {
    sub_24A70EAD8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_24A711578(&qword_27EF5DD70, &qword_24A836140);
      goto LABEL_46;
    }

    sub_24A712EE4(v5 + 1);
  }

  v7 = 0x6F6C61646E617473;
  v8 = *v3;
  sub_24A82DCC4();
  sub_24A82D094();

  result = sub_24A82DD24();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  v31 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    v11 = 0x6475427468676972;
    v12 = 0x636972656E6567;
    v13 = v8;
    do
    {
      v14 = *(*(v8 + 48) + a2);
      if (v14 <= 1)
      {
        v15 = *(*(v8 + 48) + a2) ? 1702060387 : v7;
        v16 = *(*(v8 + 48) + a2) ? 0xE400000000000000 : 0xEA0000000000656ELL;
      }

      else if (v14 == 2)
      {
        v16 = 0xE700000000000000;
        v15 = 0x6475427466656CLL;
      }

      else
      {
        v15 = v14 == 3 ? v11 : v12;
        v16 = v14 == 3 ? 0xE800000000000000 : 0xE700000000000000;
      }

      v17 = v11;
      v18 = v12;
      if (v32 == 3)
      {
        v19 = 0xE800000000000000;
      }

      else
      {
        v11 = v12;
        v19 = 0xE700000000000000;
      }

      if (v32 == 2)
      {
        v11 = 0x6475427466656CLL;
        v19 = 0xE700000000000000;
      }

      v20 = v32 ? 1702060387 : v7;
      v21 = v32 ? 0xE400000000000000 : 0xEA0000000000656ELL;
      v22 = v32 <= 1u ? v20 : v11;
      v23 = v32 <= 1u ? v21 : v19;
      v24 = v7;
      if (v15 == v22 && v16 == v23)
      {
        goto LABEL_49;
      }

      v25 = sub_24A82DC04();

      if (v25)
      {
        goto LABEL_50;
      }

      a2 = (a2 + 1) & v10;
      v7 = v24;
      v11 = v17;
      v12 = v18;
      v8 = v13;
    }

    while (((*(v31 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_46:
  v26 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v26 + 48) + a2) = v32;
  v27 = *(v26 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v26 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_49:

LABEL_50:
  result = sub_24A82DC34();
  __break(1u);
  return result;
}

void *sub_24A710724()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPBeaconShare(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5DD60, &qword_24A836138);
  v6 = *v0;
  v7 = sub_24A82D7E4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_24A69F064(*(v6 + 48) + v21, v5, type metadata accessor for FMIPBeaconShare);
        result = sub_24A6A2328(v5, *(v8 + 48) + v21, type metadata accessor for FMIPBeaconShare);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

id sub_24A710930()
{
  v1 = v0;
  sub_24A6BBA94(&qword_27EF5DD98, &qword_24A836150);
  v2 = *v0;
  v3 = sub_24A82D7E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24A710A80()
{
  v1 = v0;
  v2 = sub_24A82CAA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5DCF8, &qword_24A836110);
  v6 = *v0;
  v7 = sub_24A82D7E4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_24A710CB8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_24A6BBA94(a1, a2);
  v4 = *v2;
  v5 = sub_24A82D7E4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_24A710DF8()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5DDB8, &qword_24A836160);
  v6 = *v0;
  v7 = sub_24A82D7E4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_24A69F064(*(v6 + 48) + v21, v5, type metadata accessor for FMIPItem);
        result = sub_24A6A2328(v5, *(v8 + 48) + v21, type metadata accessor for FMIPItem);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_24A711004()
{
  v1 = v0;
  sub_24A6BBA94(&qword_27EF5DD48, &qword_24A836128);
  v2 = *v0;
  v3 = sub_24A82D7E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24A711160()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPDiscoveredAccessory(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5DD88, &qword_24A836148);
  v6 = *v0;
  v7 = sub_24A82D7E4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_24A69F064(*(v6 + 48) + v21, v5, type metadata accessor for FMIPDiscoveredAccessory);
        result = sub_24A6A2328(v5, *(v8 + 48) + v21, type metadata accessor for FMIPDiscoveredAccessory);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_24A71136C()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPUnknownItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5DD78, &unk_24A83F530);
  v6 = *v0;
  v7 = sub_24A82D7E4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_24A69F064(*(v6 + 48) + v21, v5, type metadata accessor for FMIPUnknownItem);
        result = sub_24A6A2328(v5, *(v8 + 48) + v21, type metadata accessor for FMIPUnknownItem);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_24A711578(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_24A6BBA94(a1, a2);
  v4 = *v2;
  v5 = sub_24A82D7E4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_24A7116A8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for FMIPBeaconShare(0);
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_24A6BBA94(&qword_27EF5DD60, &qword_24A836138);
  result = sub_24A82D7F4();
  v8 = result;
  if (*(v6 + 16))
  {
    v21 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    for (i = result + 56; v12; ++*(v8 + 16))
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = *(v22 + 72);
      sub_24A69F064(*(v6 + 48) + v18 * (v15 | (v9 << 6)), v5, type metadata accessor for FMIPBeaconShare);
      sub_24A82DCC4();
      FMIPBeaconShare.hash(into:)(v23);
      sub_24A82DD24();
      v19 = sub_24A82D6E4();
      *(i + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_24A6A2328(v5, *(v8 + 48) + v19 * v18, type metadata accessor for FMIPBeaconShare);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v21;
        goto LABEL_16;
      }

      v17 = *(v6 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_24A711910(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_24A6BBA94(&qword_27EF5DD98, &qword_24A836150);
  result = sub_24A82D7F4();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_24A82D5D4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24A711B24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_24A6BBA94(&qword_27EF5DD58, &qword_24A836130);
  result = sub_24A82D7F4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_24A82DCC4();
      sub_24A82D094();

      result = sub_24A82DD24();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24A711DC4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_24A82CAA4();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_24A6BBA94(&qword_27EF5DCF8, &qword_24A836110);
  v7 = sub_24A82D7F4();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_24A67EFC0(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24A82CF54();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

unint64_t sub_24A7120E0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_24A6BBA94(a2, a3);
  result = sub_24A82D7F4();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    for (i = result + 56; v12; ++*(v8 + 16))
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = *(*(v6 + 48) + 8 * (v15 | (v9 << 6)));
      sub_24A82DCC4();

      a4(v20, v18);
      sub_24A82DD24();
      result = sub_24A82D6E4();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v8 + 48) + 8 * result) = v18;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_14;
      }

      v17 = *(v6 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v19 = v8;
  }

  return result;
}

uint64_t sub_24A71228C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for FMIPItem(0);
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_24A6BBA94(&qword_27EF5DDB8, &qword_24A836160);
  result = sub_24A82D7F4();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v29 + 72);
      sub_24A69F064(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, type metadata accessor for FMIPItem);
      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
      v20 = -1 << *(v8 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_24A6A2328(v5, *(v8 + 48) + v15 * v19, type metadata accessor for FMIPItem);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_24A712564(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_24A6BBA94(&qword_27EF5DD48, &qword_24A836128);
  result = sub_24A82D7F4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_24A82DCC4();

      sub_24A82D094();
      result = sub_24A82DD24();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24A71279C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for FMIPHawkeyeProductInformation(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v39 - v7;
  v9 = type metadata accessor for FMIPDiscoveredAccessory(0);
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *v1;
  sub_24A6BBA94(&qword_27EF5DD88, &qword_24A836148);
  result = sub_24A82D7F4();
  v14 = result;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = *(v12 + 56);
    v41 = v12 + 56;
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & v16;
    v39 = v2;
    v40 = (v17 + 63) >> 6;
    v43 = (v4 + 48);
    v44 = result;
    v20 = result + 56;
    v45 = v12;
    while (v19)
    {
      v22 = __clz(__rbit64(v19));
      v50 = (v19 - 1) & v19;
LABEL_15:
      v25 = *(v12 + 48);
      v49 = *(v48 + 72);
      sub_24A69F064(v25 + v49 * (v22 | (v15 << 6)), v11, type metadata accessor for FMIPDiscoveredAccessory);
      sub_24A82DCC4();
      sub_24A82D5F4();
      if (v11[3])
      {
        v26 = v11[5];
        v46 = v11[4];
        v47 = v26;
        v27 = v9;
        v28 = v3;
        v29 = v11[1];
        sub_24A82DCE4();
        v30 = v29;
        v3 = v28;
        v9 = v27;
        MEMORY[0x24C21D5E0](v30);
        sub_24A82D094();
        sub_24A82D094();
      }

      else
      {
        sub_24A82DCE4();
      }

      sub_24A67E964(v11 + *(v9 + 24), v8, &qword_27EF5D360, &unk_24A836200);
      if ((*v43)(v8, 1, v3) == 1)
      {
        sub_24A82DCE4();
      }

      else
      {
        v31 = v42;
        sub_24A6A2328(v8, v42, type metadata accessor for FMIPHawkeyeProductInformation);
        sub_24A82DCE4();
        FMIPHawkeyeProductInformation.hash(into:)(v51);
        sub_24A69F204(v31, type metadata accessor for FMIPHawkeyeProductInformation);
      }

      v12 = v45;
      result = sub_24A82DD24();
      v14 = v44;
      v32 = -1 << *(v44 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v21 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_34;
      }

      v21 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_24A6A2328(v11, *(v14 + 48) + v21 * v49, type metadata accessor for FMIPDiscoveredAccessory);
      ++*(v14 + 16);
      v19 = v50;
    }

    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v40)
      {

        v2 = v39;
        goto LABEL_32;
      }

      v24 = *(v41 + 8 * v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v50 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

LABEL_32:
    *v2 = v14;
  }

  return result;
}

uint64_t sub_24A712C7C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for FMIPUnknownItem(0);
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_24A6BBA94(&qword_27EF5DD78, &unk_24A83F530);
  result = sub_24A82D7F4();
  v8 = result;
  if (*(v6 + 16))
  {
    v21 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    for (i = result + 56; v12; ++*(v8 + 16))
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = *(v22 + 72);
      sub_24A69F064(*(v6 + 48) + v18 * (v15 | (v9 << 6)), v5, type metadata accessor for FMIPUnknownItem);
      sub_24A82DCC4();
      FMIPUnknownItem.hash(into:)(v23);
      sub_24A82DD24();
      v19 = sub_24A82D6E4();
      *(i + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_24A6A2328(v5, *(v8 + 48) + v19 * v18, type metadata accessor for FMIPUnknownItem);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v21;
        goto LABEL_16;
      }

      v17 = *(v6 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_24A712EE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_24A6BBA94(&qword_27EF5DD70, &qword_24A836140);
  result = sub_24A82D7F4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_24A82DCC4();
      sub_24A82D094();

      result = sub_24A82DD24();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24A713198(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82CAA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPItemPairingState(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A6BBA94(&qword_27EF5DBC8, &qword_24A835E68);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = *(v12 + 56);
  sub_24A69F064(a1, &v22 - v13, type metadata accessor for FMIPItemPairingState);
  sub_24A69F064(a2, &v14[v15], type metadata accessor for FMIPItemPairingState);
  v16 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v14, 3, v16);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      if (v17(&v14[v15], 3, v16) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v17(&v14[v15], 3, v16) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_24A67F378(v14, &qword_27EF5DBC8, &qword_24A835E68);
    v19 = 0;
    return v19 & 1;
  }

  if (!v18)
  {
    sub_24A69F064(v14, v10, type metadata accessor for FMIPItemPairingState);
    if (!v17(&v14[v15], 3, v16))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v19 = sub_24A82CA74();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_24A69F204(v14, type metadata accessor for FMIPItemPairingState);
      return v19 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_11;
  }

  if (v17(&v14[v15], 3, v16) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_24A69F204(v14, type metadata accessor for FMIPItemPairingState);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_24A713504(__int128 *a1, uint64_t a2)
{
  v4 = sub_24A82CAA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v25 = a1[2];
  v26 = v8;
  v27 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v22[0] = a1;
  v23 = v10;
  v24 = v9;
  v11 = sub_24A82DD24();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v22[2] = v5 + 16;
  v22[3] = v11;
  v22[1] = v5 + 8;

  v17 = 0;
  for (i = 0; v14; v17 ^= v21)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v4);
    sub_24A67EFC0(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v21 = sub_24A82CF54();
    result = (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return MEMORY[0x24C21D5E0](v17);
    }

    v14 = *(a2 + 56 + 8 * v19);
    ++i;
    if (v14)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A713730(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItem(0);
  v24 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = a1[3];
  v27 = a1[2];
  v28 = v10;
  v29 = *(a1 + 8);
  v12 = *a1;
  v11 = a1[1];
  v23[0] = a1;
  v25 = v12;
  v26 = v11;
  v23[1] = sub_24A82DD24();
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  for (i = 0; v15; v18 ^= v22)
  {
    v20 = i;
LABEL_9:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    sub_24A69F064(*(a2 + 48) + *(v24 + 72) * (v21 | (v20 << 6)), v9, type metadata accessor for FMIPItem);
    sub_24A6A2328(v9, v7, type metadata accessor for FMIPItem);
    sub_24A82DCC4();
    sub_24A82D094();
    v22 = sub_24A82DD24();
    result = sub_24A69F204(v7, type metadata accessor for FMIPItem);
  }

  while (1)
  {
    v20 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v20 >= v16)
    {

      return MEMORY[0x24C21D5E0](v18);
    }

    v15 = *(a2 + 56 + 8 * v20);
    ++i;
    if (v15)
    {
      i = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s8FMIPCore13FMIPItemGroupV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for FMIPItemLostModeMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v27 - v9);
  v11 = sub_24A6BBA94(&qword_27EF5DDC0, &unk_24A83A9D0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  if (*a1 != *a2 || ((v15 = v12, a1[1] != a2[1]) || a1[2] != a2[2]) && (sub_24A82DC04() & 1) == 0 || (a1[3] != a2[3] || a1[4] != a2[4]) && (sub_24A82DC04() & 1) == 0 || (sub_24A7D8ED0(a1[5], a2[5]) & 1) == 0 || a1[8] != a2[8] || (sub_24A7B3D74(a1[7], a2[7]), (v16 & 1) == 0))
  {
    v21 = 0;
    return v21 & 1;
  }

  v17 = *(type metadata accessor for FMIPItemGroup(0) + 48);
  v18 = a1 + v17;
  v19 = *(v15 + 48);
  sub_24A67E964(v18, v14, &unk_27EF5E100, &unk_24A839DB0);
  sub_24A67E964(a2 + v17, &v14[v19], &unk_27EF5E100, &unk_24A839DB0);
  v20 = *(v5 + 48);
  if (v20(v14, 1, v4) == 1)
  {
    if (v20(&v14[v19], 1, v4) == 1)
    {
      sub_24A67F378(v14, &unk_27EF5E100, &unk_24A839DB0);
      v21 = 1;
      return v21 & 1;
    }

LABEL_18:
    sub_24A67F378(v14, &qword_27EF5DDC0, &unk_24A83A9D0);
    v21 = 0;
    return v21 & 1;
  }

  sub_24A67E964(v14, v10, &unk_27EF5E100, &unk_24A839DB0);
  if (v20(&v14[v19], 1, v4) == 1)
  {
    sub_24A69F204(v10, type metadata accessor for FMIPItemLostModeMetadata);
    goto LABEL_18;
  }

  sub_24A6A2328(&v14[v19], v7, type metadata accessor for FMIPItemLostModeMetadata);
  if (*v10 == *v7 && v10[1] == v7[1] || (sub_24A82DC04()) && (v10[2] == v7[2] && v10[3] == v7[3] || (sub_24A82DC04()) && (sub_24A82C9E4())
  {
    v23 = *(v4 + 28);
    v24 = *(v10 + v23);
    v25 = *(v10 + v23 + 8);
    v26 = (v7 + v23);
    if (v24 == *v26 && v25 == v26[1])
    {
      v21 = 1;
    }

    else
    {
      v21 = sub_24A82DC04();
    }
  }

  else
  {
    v21 = 0;
  }

  sub_24A69F204(v7, type metadata accessor for FMIPItemLostModeMetadata);
  sub_24A69F204(v10, type metadata accessor for FMIPItemLostModeMetadata);
  sub_24A67F378(v14, &unk_27EF5E100, &unk_24A839DB0);
  return v21 & 1;
}

uint64_t sub_24A713D74(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A82D744())
  {
    v4 = sub_24A679170(0, &qword_27EF5D028, 0x277D49670);
    v5 = sub_24A7157C8();
    result = MEMORY[0x24C21CCD0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C21D180](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_24A70BAAC(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_24A82D744();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_24A713EE8(uint64_t a1)
{
  v2 = sub_24A82CAA4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24A67EFC0(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x24C21CCD0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_24A70BFA8(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_24A714084(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24A6BBA94(&qword_27EF5DA28, &qword_24A8415A0);
  v4 = sub_24A678A64(&qword_27EF5DCA8, &qword_27EF5DA28, &qword_24A8415A0);
  result = MEMORY[0x24C21CCD0](v2, v3, v4);
  v9 = result;
  if (v2)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;

      sub_24A70C288(&v8, v7, sub_24A713504, sub_24A70F520, sub_24A69F944);

      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_24A71417C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24A6BBA94(&qword_27EF5DAA8, &qword_24A835338);
  v4 = sub_24A678A64(&qword_27EF5DCC0, &qword_27EF5DAA8, &qword_24A835338);
  result = MEMORY[0x24C21CCD0](v2, v3, v4);
  v9 = result;
  if (v2)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;

      sub_24A70C288(&v8, v7, sub_24A713730, sub_24A70F9A8, sub_24A7B4E78);

      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_24A714274(uint64_t a1)
{
  v2 = type metadata accessor for FMIPItem(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24A67EFC0(&qword_27EF5DDB0, type metadata accessor for FMIPItem, &protocol conformance descriptor for FMIPItem);
  result = MEMORY[0x24C21CCD0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_24A69F064(v12, v6, type metadata accessor for FMIPItem);
      sub_24A70C3E4(v8, v6);
      sub_24A69F204(v8, type metadata accessor for FMIPItem);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_24A714404(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C21CCD0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24A70C624(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24A71449C(uint64_t a1)
{
  v2 = type metadata accessor for FMIPDiscoveredAccessory(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24A67EFC0(&qword_27EF5DD90, type metadata accessor for FMIPDiscoveredAccessory, &protocol conformance descriptor for FMIPDiscoveredAccessory);
  result = MEMORY[0x24C21CCD0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_24A69F064(v12, v6, type metadata accessor for FMIPDiscoveredAccessory);
      sub_24A70C774(v8, v6);
      sub_24A69F204(v8, type metadata accessor for FMIPDiscoveredAccessory);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_24A71462C(uint64_t a1)
{
  v2 = type metadata accessor for FMIPUnknownItem(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24A67EFC0(&qword_27EF5DD80, type metadata accessor for FMIPUnknownItem, &protocol conformance descriptor for FMIPUnknownItem);
  result = MEMORY[0x24C21CCD0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_24A69F064(v12, v6, type metadata accessor for FMIPUnknownItem);
      sub_24A70C9B4(v8, v6);
      sub_24A69F204(v8, type metadata accessor for FMIPUnknownItem);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_24A7147F0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x24C21CCD0](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_24A714870(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v31 = MEMORY[0x277D84F90];
  sub_24A6FCAF0(0, v3, 0);
  v4 = v31;
  v28 = v5 + 56;
  v6 = sub_24A82D6C4();
  v7 = 0;
  v24 = v5 + 64;
  v25 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v5 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v28 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    v27 = v7;
    v11 = *(v5 + 36);
    v12 = v5;
    v29 = *(*(v5 + 48) + 8 * v6);

    sub_24A70A3DC(&v29, a2, &v30);
    if (v2)
    {
      goto LABEL_26;
    }

    v13 = v30;
    v31 = v4;
    v15 = *(v4 + 16);
    v14 = *(v4 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_24A6FCAF0((v14 > 1), v15 + 1, 1);
      v4 = v31;
    }

    *(v4 + 16) = v15 + 1;
    *(v4 + 8 * v15 + 32) = v13;
    v8 = 1 << *(v12 + 32);
    if (v6 >= v8)
    {
      goto LABEL_23;
    }

    v16 = *(v28 + 8 * v10);
    if ((v16 & (1 << v6)) == 0)
    {
      goto LABEL_24;
    }

    v5 = v12;
    if (v11 != *(v12 + 36))
    {
      goto LABEL_25;
    }

    v17 = v16 & (-2 << (v6 & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v25;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v9 = v25;
      v20 = (v24 + 8 * v10);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_24A6CA498(v6, v11, 0);
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_24A6CA498(v6, v11, 0);
    }

LABEL_4:
    v2 = 0;
    v7 = v27 + 1;
    v6 = v8;
    if (v27 + 1 == v9)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:

  __break(1u);
  return result;
}

unint64_t sub_24A714ADC()
{
  result = qword_27EF5DC58;
  if (!qword_27EF5DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DC58);
  }

  return result;
}

unint64_t sub_24A714B30()
{
  result = qword_27EF5E1C0;
  if (!qword_27EF5E1C0)
  {
    sub_24A6CCDC0(&qword_27EF5DC18, &qword_24A836D50);
    sub_24A67EFC0(&qword_27EF5DC60, type metadata accessor for FMIPItem, &protocol conformance descriptor for FMIPItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E1C0);
  }

  return result;
}

unint64_t sub_24A714BE4()
{
  result = qword_27EF5DC70;
  if (!qword_27EF5DC70)
  {
    sub_24A6CCDC0(&qword_27EF5DAA8, &qword_24A835338);
    sub_24A67EFC0(&qword_27EF5DC60, type metadata accessor for FMIPItem, &protocol conformance descriptor for FMIPItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DC70);
  }

  return result;
}

unint64_t sub_24A714C98()
{
  result = qword_27EF5E080;
  if (!qword_27EF5E080)
  {
    sub_24A6CCDC0(&qword_27EF5DA38, &qword_24A8352C8);
    sub_24A67EFC0(&qword_27EF5DBA8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E080);
  }

  return result;
}

uint64_t sub_24A714D4C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(&qword_27EF5DBE8, &qword_24A835EE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A714DC4()
{
  result = qword_27EF5DC80;
  if (!qword_27EF5DC80)
  {
    sub_24A6CCDC0(&qword_27EF5DA28, &qword_24A8415A0);
    sub_24A67EFC0(&qword_27EF5DBA8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DC80);
  }

  return result;
}

unint64_t sub_24A714E78()
{
  result = qword_27EF5DC88;
  if (!qword_27EF5DC88)
  {
    sub_24A6CCDC0(&qword_27EF5DC00, &qword_24A835EF0);
    sub_24A67EFC0(&qword_27EF5DC90, type metadata accessor for FMIPItemPairingState, &protocol conformance descriptor for FMIPItemPairingState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DC88);
  }

  return result;
}

unint64_t sub_24A714F34()
{
  result = qword_27EF5DC98;
  if (!qword_27EF5DC98)
  {
    sub_24A6CCDC0(&unk_27EF5E100, &unk_24A839DB0);
    sub_24A67EFC0(&qword_27EF5DCA0, type metadata accessor for FMIPItemLostModeMetadata, &protocol conformance descriptor for FMIPItemLostModeMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DC98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPItemGroup.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPItemGroup.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A71512C()
{
  result = qword_27EF5DCE0;
  if (!qword_27EF5DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DCE0);
  }

  return result;
}

unint64_t sub_24A715180(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82D9C4();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A7151EC(uint64_t a1)
{
  v2 = sub_24A82CAA4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v61 = &v44 - v8;
  MEMORY[0x28223BE20](v7);
  v51 = &v44 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84FA0];
  }

  sub_24A6BBA94(&qword_27EF5DD40, &qword_24A836120);
  v44 = v10;
  v11 = sub_24A82D814();
  v12 = 0;
  v13 = v11 + 56;
  v45 = a1 + 32;
  v59 = v3 + 16;
  v49 = v3 + 32;
  v50 = v3;
  v14 = (v3 + 8);
  v47 = v11;
  v46 = v11 + 56;
  while (1)
  {
    v52 = v12;
    v15 = *(v45 + 8 * v12);
    sub_24A82DCC4();

    sub_24A713504(v62, v15);
    result = sub_24A82DD24();
    v17 = -1 << *(v11 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    v20 = *(v13 + 8 * (v18 >> 6));
    v21 = 1 << v18;
    if (((1 << v18) & v20) != 0)
    {
      break;
    }

LABEL_28:
    *(v13 + 8 * v19) = v21 | v20;
    *(*(v11 + 48) + 8 * v18) = v15;
    v41 = *(v11 + 16);
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      goto LABEL_34;
    }

    *(v11 + 16) = v43;
LABEL_4:
    v12 = v52 + 1;
    if (v52 + 1 == v44)
    {
      return v11;
    }
  }

  v22 = ~v17;
  v58 = v15 + 56;
  v60 = v15;
  v48 = v22;
  while (1)
  {
    result = *(*(v11 + 48) + 8 * v18);
    if (result == v15)
    {

      goto LABEL_4;
    }

    if (*(result + 16) == *(v15 + 16))
    {
      break;
    }

LABEL_8:
    v18 = (v18 + 1) & v22;
    v19 = v18 >> 6;
    v20 = *(v13 + 8 * (v18 >> 6));
    v21 = 1 << v18;
    if (((1 << v18) & v20) == 0)
    {
      goto LABEL_28;
    }
  }

  v23 = *(result + 56);
  v54 = result + 56;
  v55 = v18;
  v24 = 1 << *(result + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v23;
  v53 = (v24 + 63) >> 6;

  v27 = 0;
  v57 = result;
  if (v26)
  {
    while (1)
    {
      v28 = __clz(__rbit64(v26));
      v56 = (v26 - 1) & v26;
LABEL_21:
      v31 = v50;
      v32 = v51;
      v33 = *(v50 + 72);
      v34 = *(v50 + 16);
      v34(v51, *(result + 48) + v33 * (v28 | (v27 << 6)), v2);
      (*(v31 + 32))(v61, v32, v2);
      v15 = v60;
      sub_24A67EFC0(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v35 = sub_24A82CF54();
      v36 = -1 << *(v15 + 32);
      v37 = v35 & ~v36;
      if (((*(v58 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
      {
        break;
      }

      v38 = ~v36;
      while (1)
      {
        v34(v6, *(v15 + 48) + v37 * v33, v2);
        sub_24A67EFC0(&qword_27EF5DC48, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v39 = sub_24A82CF84();
        v40 = *v14;
        (*v14)(v6, v2);
        if (v39)
        {
          break;
        }

        v37 = (v37 + 1) & v38;
        v15 = v60;
        if (((*(v58 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v40(v61, v2);
      v26 = v56;
      result = v57;
      if (!v56)
      {
        goto LABEL_16;
      }
    }

LABEL_7:

    result = (*v14)(v61, v2);
    v11 = v47;
    v13 = v46;
    v18 = v55;
    v22 = v48;
    goto LABEL_8;
  }

LABEL_16:
  v29 = v27;
  while (1)
  {
    v27 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v27 >= v53)
    {

      v11 = v47;
      v13 = v46;
      goto LABEL_4;
    }

    v30 = *(v54 + 8 * v27);
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v56 = (v30 - 1) & v30;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_24A715720()
{
  result = qword_27EF5DD50;
  if (!qword_27EF5DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DD50);
  }

  return result;
}

unint64_t sub_24A715774()
{
  result = qword_27EF5DD68;
  if (!qword_27EF5DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DD68);
  }

  return result;
}

unint64_t sub_24A7157C8()
{
  result = qword_27EF5D030;
  if (!qword_27EF5D030)
  {
    sub_24A679170(255, &qword_27EF5D028, 0x277D49670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D030);
  }

  return result;
}

unint64_t sub_24A715880(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5D800, &unk_24A834860);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  *(v1 + 56) = 0;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6F4230();
  sub_24A82DD64();
  if (v2)
  {
    sub_24A6876E8(a1);

    type metadata accessor for FMIPRefreshClientResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
    v26 = 4;
    sub_24A6815B0();
    sub_24A82DA84();
    *(v1 + 56) = v25[0];

    sub_24A698230(a1, v25);
    v3 = sub_24A814C20(v25);
    v9 = qword_281515DC8;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_281518F88);
    v11 = sub_24A82CD94();
    v12 = sub_24A82D504();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v22 = v13;
      v24 = swift_slowAlloc();
      v25[0] = v24;
      *v13 = 136315138;
      v23 = v11;
      v14 = sub_24A6F3C74();
      v16 = sub_24A68761C(v14, v15, v25);

      v17 = v22;
      *(v22 + 1) = v16;
      v18 = v12;
      v19 = v23;
      _os_log_impl(&dword_24A675000, v23, v18, "FMIPInitClientResponse: initialized with coder %s", v17, 0xCu);
      v20 = v24;
      sub_24A6876E8(v24);
      MEMORY[0x24C21E1D0](v20, -1, -1);
      MEMORY[0x24C21E1D0](v17, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
    sub_24A6876E8(a1);
  }

  return v3;
}