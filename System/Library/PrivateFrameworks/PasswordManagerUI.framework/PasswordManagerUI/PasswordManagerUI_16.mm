uint64_t sub_21C8D1658(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PMAccount(0);
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF28, &qword_21CBADE68);
  v47 = v4;
  result = sub_21CB86214();
  v12 = result;
  if (*(v10 + 16))
  {
    v42 = v2;
    v43 = v10;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v25 = v22 | (v13 << 6);
      v26 = *(v10 + 48);
      v48 = *(v44 + 72);
      v27 = v26 + v48 * v25;
      if (v47)
      {
        sub_21C8D88C8(v27, v9, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
        v28 = v9;
        v29 = *(v46 + 72);
        sub_21C8D88C8(*(v10 + 56) + v29 * v25, v49, type metadata accessor for PMAccount);
      }

      else
      {
        sub_21C710710(v27, v9, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
        v28 = v9;
        v29 = *(v46 + 72);
        sub_21C710710(*(v10 + 56) + v29 * v25, v49, type metadata accessor for PMAccount);
      }

      sub_21CB86484();
      type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
      sub_21C71B720(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters, &unk_21CBC3F30);
      sub_21CB85494();
      v30 = v28;
      v31 = *&v28[*(v45 + 20)];
      sub_21CB864A4();
      if (v31)
      {
        v32 = v31;
        sub_21CB85DE4();
      }

      result = sub_21CB864D4();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      sub_21C8D88C8(v30, *(v12 + 48) + v48 * v20, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v21 = *(v12 + 56) + v29 * v20;
      v9 = v30;
      result = sub_21C8D88C8(v49, v21, type metadata accessor for PMAccount);
      ++*(v12 + 16);
      v10 = v43;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_21C8D1B3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_21CB85C44();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89C0, &qword_21CBADDB8);
  v39 = v4;
  result = sub_21CB86214();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_21C71B720(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
      result = sub_21CB85484();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
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

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_21C8D1F18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PMAccount.UniqueID(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFED0, &qword_21CBC9720);
  v43 = v4;
  result = sub_21CB86214();
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
      if (v43)
      {
        sub_21C8D88C8(v25, v7, type metadata accessor for PMAccount.UniqueID);
        v26 = *(v10 + 56);
        v27 = v7;
        v28 = *(v26 + 8 * v23);
      }

      else
      {
        sub_21C710710(v25, v7, type metadata accessor for PMAccount.UniqueID);
        v29 = *(*(v10 + 56) + 8 * v23);
        v27 = v7;
        v28 = v29;
      }

      sub_21CB86484();
      v30 = v27;
      sub_21C7CECE4(v44);
      result = sub_21CB864D4();
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
      result = sub_21C8D88C8(v30, *(v11 + 48) + v24 * v19, type metadata accessor for PMAccount.UniqueID);
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

    if ((v43 & 1) == 0)
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

uint64_t sub_21C8D229C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8970, &qword_21CBADDA8);
  v35 = v4;
  result = sub_21CB86214();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_21C731A9C(v22, v36);
      }

      else
      {
        sub_21C7A3394(v22, v36);
        v23 = v21;
      }

      sub_21CB855C4();
      sub_21CB86484();
      sub_21CB854C4();
      v24 = sub_21CB864D4();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_21C731A9C(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_21C8D256C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF60, &unk_21CBAE000);
  v32 = v4;
  result = sub_21CB86214();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 24 * v20;
      v33 = *v22;
      v23 = *(v22 + 16);
      if ((v32 & 1) == 0)
      {
      }

      sub_21CB86484();
      MEMORY[0x21CF15F90](v21);
      result = sub_21CB864D4();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v33;
      *(v16 + 16) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21C8D2828(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEF0, &qword_21CBC9670);
  v36 = v4;
  result = sub_21CB86214();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v37 = *(*(v5 + 48) + v20);
      v21 = (*(v5 + 56) + 24 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_21CB86484();
      MEMORY[0x21CF15F90](v37);
      result = sub_21CB864D4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v37;
      v16 = (*(v7 + 56) + 24 * v15);
      *v16 = v22;
      v16[1] = v23;
      v16[2] = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21C8D2AEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF38, &qword_21CBADE70);
  v31 = v4;
  result = sub_21CB86214();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_21CB86484();
      MEMORY[0x21CF15F90](v20);
      result = sub_21CB864D4();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21C8D2D78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8980, &qword_21CBADE78);
  v37 = v4;
  result = sub_21CB86214();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_21CB86484();
      sub_21CB854C4();
      result = sub_21CB864D4();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21C8D3038(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF48, &qword_21CBADF78);
  v34 = v4;
  result = sub_21CB86214();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_21CB86484();
      sub_21CB854C4();
      result = sub_21CB864D4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21C8D32EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_21CB85C44();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = sub_21CB86214();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_21C71B720(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
      result = sub_21CB85484();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_21C8D36C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFED8, &qword_21CBADDD0);
  v37 = v4;
  result = sub_21CB86214();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 24 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(*(v5 + 56) + 8 * v20);
      if ((v37 & 1) == 0)
      {

        v26 = v25;
      }

      sub_21CB86484();
      sub_21CB854C4();
      if (v24 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v24;
      }

      MEMORY[0x21CF15FC0](*&v27);
      result = sub_21CB864D4();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_21C8D399C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF40, &qword_21CBADF70);
  v66 = v4;
  v6 = sub_21CB86214();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v55 = v2;
    v56 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v64 = v6;
    v65 = v5;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v20 = (v11 - 1) & v11;
LABEL_15:
      v24 = v19 | (v8 << 6);
      v68 = v20;
      if (v66)
      {
        v25 = *(v5 + 56);
        v26 = *(v5 + 48) + 112 * v24;
        v28 = *v26;
        v27 = *(v26 + 16);
        v29 = *(v26 + 32);
        v30 = *(v26 + 40);
        v31 = *(v26 + 48);
        v32 = *(v26 + 56);
        v34 = *(v26 + 64);
        v33 = *(v26 + 72);
        v35 = *(v26 + 80);
        v36 = *(v26 + 81);
        v37 = *(v26 + 82);
        v38 = *(v26 + 88);
        v39 = *(v26 + 104);
        v67 = *(v25 + 8 * v24);
      }

      else
      {
        v40 = (*(v5 + 48) + 112 * v24);
        v41 = v40[3];
        v42 = v40[4];
        v43 = v40[6];
        *v75 = v40[5];
        *&v75[16] = v43;
        v73 = v41;
        v74 = v42;
        v44 = *v40;
        v45 = v40[2];
        v71 = v40[1];
        v72 = v45;
        v70 = v44;
        v46 = *(*(v5 + 56) + 8 * v24);
        v63 = *(&v43 + 1);
        v62 = *&v75[8];
        v60 = v75[1];
        v61 = v75[2];
        v59 = v75[0];
        v33 = *(&v42 + 1);
        v34 = v42;
        v32 = *(&v73 + 1);
        v31 = v73;
        v30 = *(&v45 + 1);
        v29 = v45;
        v57 = v44;
        v58 = v71;
        sub_21C7A33F0(&v70, v69);
        v67 = v46;

        v28 = v57;
        v27 = v58;
        v35 = v59;
        v36 = v60;
        v37 = v61;
        v38 = v62;
        v39 = v63;
      }

      v76 = v28;
      v77 = v27;
      *&v78 = v29;
      *(&v78 + 1) = v30;
      *&v79 = v31;
      *(&v79 + 1) = v32;
      *&v80 = v34;
      *(&v80 + 1) = v33;
      v81[0] = v35;
      v81[1] = v36;
      v81[2] = v37;
      *&v81[8] = v38;
      *&v81[24] = v39;
      v7 = v64;
      sub_21CB86484();
      sub_21C9DC744(&v70);
      result = sub_21CB864D4();
      v47 = -1 << *(v64 + 32);
      v48 = result & ~v47;
      v49 = v48 >> 6;
      if (((-1 << v48) & ~*(v13 + 8 * (v48 >> 6))) == 0)
      {
        v50 = 0;
        v51 = (63 - v47) >> 6;
        v5 = v65;
        while (++v49 != v51 || (v50 & 1) == 0)
        {
          v52 = v49 == v51;
          if (v49 == v51)
          {
            v49 = 0;
          }

          v50 |= v52;
          v53 = *(v13 + 8 * v49);
          if (v53 != -1)
          {
            v14 = __clz(__rbit64(~v53)) + (v49 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v48) & ~*(v13 + 8 * (v48 >> 6)))) | v48 & 0x7FFFFFFFFFFFFFC0;
      v5 = v65;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v64 + 48) + 112 * v14);
      v16 = *v81;
      v15[4] = v80;
      v15[5] = v16;
      v15[6] = *&v81[16];
      v17 = v77;
      *v15 = v76;
      v15[1] = v17;
      v18 = v79;
      v15[2] = v78;
      v15[3] = v18;
      *(*(v64 + 56) + 8 * v14) = v67;
      ++*(v64 + 16);
      v11 = v68;
    }

    v21 = v8;
    result = v56;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v12)
      {
        break;
      }

      v23 = v56[v8];
      ++v21;
      if (v23)
      {
        v19 = __clz(__rbit64(v23));
        v20 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v66 & 1) == 0)
    {

      v3 = v55;
      goto LABEL_34;
    }

    v54 = 1 << *(v5 + 32);
    v3 = v55;
    if (v54 >= 64)
    {
      bzero(v56, ((v54 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v56 = -1 << v54;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_21C8D3D5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC8, &qword_21CBADDB0);
  result = sub_21CB86214();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_21C731A9C((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_21C8D7AA4(v23, &v36);
        sub_21C7A3394(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_21CB86014();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_21C731A9C(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21C8D4014(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_21CB85C44();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89D0, &unk_21CBADDC0);
  v40 = v4;
  result = sub_21CB86214();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_21C71B720(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
      result = sub_21CB85484();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_21C8D43D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21CB85C44();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_21CB10A54(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_21C8D6644(&qword_27CDEFE70, &qword_21CBADA60);
      goto LABEL_7;
    }

    sub_21C8D32EC(v17, a3 & 1, &qword_27CDEFE70, &qword_21CBADA60);
    v22 = sub_21CB10A54(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_21C8D5124(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_21CB863B4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

_OWORD *sub_21C8D45C0(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_21CB10C50(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_21C8D5D6C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_21C8D229C(v13, a3 & 1);
    v8 = sub_21CB10C50(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for OptionsKey(0);
      result = sub_21CB863B4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_21C731A9C(a1, v19);
  }

  else
  {
    sub_21C8D51DC(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_21C8D4700(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = a4 & 1;
  result = sub_21CB109D0(a4 & 1);
  v15 = *(v11 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v11 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21C8D256C(v18, a5 & 1);
      result = sub_21CB109D0(v12);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_21CB863B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_21C8D5EEC();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + result) = v12;
    v25 = (v23[7] + 24 * result);
    *v25 = a1;
    v25[1] = a2;
    v25[2] = a3;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v23[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v24 = (v23[7] + 24 * result);
  *v24 = a1;
  v24[1] = a2;
  v24[2] = a3;
}

unint64_t sub_21C8D4880(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = a4 & 1;
  result = sub_21CB109D0(a4 & 1);
  v15 = *(v11 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v11 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21C8D2828(v18, a5 & 1);
      result = sub_21CB109D0(v12);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_21CB863B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_21C8D606C();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + result) = v12;
    v26 = (v23[7] + 24 * result);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
    v27 = v23[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v17)
    {
      v23[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  v24 = (v23[7] + 24 * result);
  v25 = v24[2];
  *v24 = a1;
  v24[1] = a2;
  v24[2] = a3;
}

unint64_t sub_21C8D4A08(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_21CB10C54(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_21C8D61F4();
    result = v17;
    goto LABEL_8;
  }

  sub_21C8D2AEC(v14, a3 & 1);
  result = sub_21CB10C54(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  type metadata accessor for _ASDeleteKind(0);
  sub_21CB863B4();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_21C8D4B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21CB10A3C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21C8D2D78(v18, a5 & 1);
      v13 = sub_21CB10A3C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_21CB863B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_21C8D6350();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

unint64_t sub_21C8D4CD8(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_21CB10A3C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21C8D3038(v16, a4 & 1);
      result = sub_21CB10A3C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_21CB863B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_21C8D64C8();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_21C8D4E44(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21CB10E48(a2, a3, a5);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_21C8D36C8(v18, a4 & 1);
      v13 = sub_21CB10E48(a2, a3, a5);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_21CB863B4();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v21 = v13;
      sub_21C8D68BC();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v24 = v23[6] + 24 * v13;
  *v24 = a2;
  *(v24 + 8) = a3;
  *(v24 + 16) = a5;
  *(v23[7] + 8 * v13) = a1;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v26;
}

_OWORD *sub_21C8D4FD8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_21CB10D50(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_21C8D6BE4();
      goto LABEL_7;
    }

    sub_21C8D3D5C(v13, a3 & 1);
    v19 = sub_21CB10D50(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_21C8D7AA4(a2, v21);
      return sub_21C8D5244(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_21CB863B4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_21C731A9C(a1, v17);
}

uint64_t sub_21C8D5124(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_21CB85C44();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_21C8D51DC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_21C731A9C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_21C8D5244(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_21C731A9C(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

id sub_21C8D52C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE80, &qword_21CBADB50);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = *(v4 + 56) + v17;
        *v28 = v23;
        *(v28 + 8) = v24;
        *(v28 + 16) = v25;
        *(v28 + 24) = v26;

        result = v26;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_21C8D5458()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF8A60, &qword_21CBADE58);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21C8D55C4()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF28, &qword_21CBADE68);
  v8 = *v0;
  v9 = sub_21CB86204();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        sub_21C710710(*(v8 + 48) + v24, v7, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
        v25 = *(v29 + 72) * v23;
        sub_21C710710(*(v8 + 56) + v25, v4, type metadata accessor for PMAccount);
        sub_21C8D88C8(v7, *(v10 + 48) + v24, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
        result = sub_21C8D88C8(v4, *(v10 + 56) + v25, type metadata accessor for PMAccount);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

char *sub_21C8D58B0()
{
  v1 = v0;
  v33 = sub_21CB85C44();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89C0, &qword_21CBADDB8);
  v3 = *v0;
  v4 = sub_21CB86204();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_21C8D5B30()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount.UniqueID(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFED0, &qword_21CBC9720);
  v5 = *v0;
  v6 = sub_21CB86204();
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
        sub_21C710710(*(v5 + 48) + v21, v4, type metadata accessor for PMAccount.UniqueID);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_21C8D88C8(v4, *(v7 + 48) + v21, type metadata accessor for PMAccount.UniqueID);
        *(*(v7 + 56) + 8 * v20) = v22;
        result = v22;
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

id sub_21C8D5D6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8970, &qword_21CBADDA8);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        sub_21C7A3394(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_21C731A9C(v19, (*(v4 + 56) + 32 * v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21C8D5EEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF60, &unk_21CBAE000);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *v18;
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v20;
        *(v21 + 16) = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_21C8D606C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEF0, &qword_21CBC9670);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 56) + 24 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v22 = (*(v4 + 56) + 24 * v17);
        *v22 = v19;
        v22[1] = v20;
        v22[2] = v21;

        result = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_21C8D61F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF38, &qword_21CBADE70);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21C8D6350()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8980, &qword_21CBADE78);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21C8D64C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF48, &qword_21CBADF78);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21C8D6644(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_21CB85C44();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = sub_21CB86204();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

id sub_21C8D68BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFED8, &qword_21CBADDD0);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 24 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 24 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;

        result = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21C8D6A34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF40, &qword_21CBADF70);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 112 * v17);
        v19 = v18[3];
        v20 = v18[4];
        v21 = v18[6];
        v26[5] = v18[5];
        v26[6] = v21;
        v26[3] = v19;
        v26[4] = v20;
        v23 = v18[1];
        v22 = v18[2];
        v26[0] = *v18;
        v26[1] = v23;
        v26[2] = v22;
        v24 = *(*(v2 + 56) + 8 * v17);
        memmove((*(v4 + 48) + 112 * v17), v18, 0x70uLL);
        *(*(v4 + 56) + 8 * v17) = v24;
        sub_21C7A33F0(v26, &v25);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21C8D6BE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC8, &qword_21CBADDB0);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 40 * v17;
        sub_21C8D7AA4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_21C7A3394(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_21C731A9C(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_21C8D6D88()
{
  v1 = v0;
  v31 = sub_21CB85C44();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89D0, &unk_21CBADDC0);
  v3 = *v0;
  v4 = sub_21CB86204();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

BOOL sub_21C8D6FF8(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 61;
  if ((a1 >> 61) <= 2)
  {
    if (!v2)
    {
      if (!(a2 >> 61))
      {
        return a1 == a2;
      }

      return 0;
    }

    if (v2 == 1)
    {
      if (a2 >> 61 != 1)
      {
        return 0;
      }
    }

    else if (a2 >> 61 != 2)
    {
      return 0;
    }

    return ((a2 ^ a1) & 0x1FFFFFFFFFFFFFFFLL) == 0;
  }

  if (v2 > 4)
  {
    if (v2 == 5)
    {
      if (a2 >> 61 != 5)
      {
        return 0;
      }

      return ((a2 ^ a1) & 0x1FFFFFFFFFFFFFFFLL) == 0;
    }

    if (a2 == 0xC000000000000000)
    {
      return 1;
    }
  }

  else
  {
    if (v2 == 3)
    {
      if (a2 >> 61 != 3)
      {
        return 0;
      }

      return ((a2 ^ a1) & 0x1FFFFFFFFFFFFFFFLL) == 0;
    }

    if (a2 >> 61 == 4)
    {
      return ((a2 ^ a1) & 0x1FFFFFFFFFFFFFFFLL) == 0;
    }
  }

  return 0;
}

uint64_t sub_21C8D70D4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_21CB85114();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      swift_getKeyPath(byte_21CBAD830);
      v19 = v10;
      sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);

      sub_21CB810D4();

      v13 = *(v10 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
      if ((v13 >> 61) > 2 || (v13 >> 61) < 2)
      {
      }

      else
      {

        if (v12 == (v13 & 0x1FFFFFFFFFFFFFFFLL))
        {
          swift_getKeyPath(byte_21CBADAB0);
          swift_getKeyPath(byte_21CBADAD8);
          sub_21CB81DB4();

          v14 = sub_21C8CC47C(v8);
          (*(v6 + 8))(v8, v5);
          if (v14)
          {
            sub_21CAE9A98(MEMORY[0x277D84FA0]);
          }

          swift_getKeyPath(byte_21CBADA90);
          sub_21CB81DB4();

          v15 = v19;
          v16 = sub_21CB85C44();
          (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
          type metadata accessor for PMMultipleAccountsDetailsModel(0);
          swift_allocObject();

          v17 = sub_21CA770B0(v15, v12 | 0x4000000000000000, v4);

          sub_21C8C7C18(v17);
          sub_21C718CB4();
        }
      }
    }
  }

  return result;
}

uint64_t sub_21C8D7470(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE78, &qword_21CBADAF8);
    v3 = sub_21CB86074();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_21CB86484();

      sub_21CB854C4();
      result = sub_21CB864D4();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_21CB86344();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_21C8D75F0(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t sub_21C8D7734()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__addAccountSheetModel) = *(v0 + 24);
}

uint64_t sub_21C8D7854(uint64_t result, char a2)
{
  if (a2 == 2)
  {
  }

  if (a2 == 1)
  {
  }

  return v2;
}

uint64_t sub_21C8D7874()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState) = *(v0 + 24);
}

uint64_t objectdestroy_38Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_21C8D795C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState) = *(v0 + 24);
}

uint64_t sub_21C8D79D0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_21C8CE988(v2, v3);
}

uint64_t sub_21C8D7A50(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7650, &qword_21CBADD58);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_21C8D7B00(uint64_t a1)
{
  v2 = sub_21CB83184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF70, &unk_21CBAE010);
    v9 = sub_21CB86074();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_21C71B720(&qword_27CDEFF78, MEMORY[0x277CDDE90], MEMORY[0x277CDDE98]);
      v16 = sub_21CB85484();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_21C71B720(&qword_27CDEFF80, MEMORY[0x277CDDE90], MEMORY[0x277CDDEA0]);
          v23 = sub_21CB85574();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21C8D7E20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF18, &qword_21CBADE00);
    v3 = sub_21CB86074();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_21CB86484();
      sub_21CB854C4();
      result = sub_21CB864D4();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 == v9 && v14[1] == v8)
        {
          goto LABEL_3;
        }

        result = sub_21CB86344();
        if (result)
        {
          goto LABEL_3;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;

LABEL_3:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_21C8D7F80(uint64_t a1)
{
  v2 = sub_21CB80E34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF58, &qword_21CBADFF8);
    v9 = sub_21CB86074();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_21C71B720(&qword_27CDEE130, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v16 = sub_21CB85484();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_21C71B720(&qword_27CDEE260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v23 = sub_21CB85574();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21C8D82A0(uint64_t a1)
{
  v2 = sub_21CB80F14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF00, &qword_21CBADDF8);
    v9 = sub_21CB86074();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_21C71B720(&qword_27CDEFF08, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_21CB85484();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_21C71B720(&qword_27CDEFF10, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_21CB85574();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_21C8D85C0(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_21CB85FA4())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE0, &qword_21CBADDD8);
      v3 = sub_21CB86074();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_21CB85FA4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x21CF15BD0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_21CB85DC4();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_21C6E8F4C(0, qword_280E22EE0, 0x277CCA9C8);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_21CB85DD4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_21CB85DC4();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_21C6E8F4C(0, qword_280E22EE0, 0x277CCA9C8);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_21CB85DD4();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_21C8D88C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C8D8948()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contextForPresentedNewFamilyGroupFlow);
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contextForPresentedNewFamilyGroupFlow) = v1;
  sub_21C72A574(v1);
  return sub_21C72A584(v3);
}

uint64_t sub_21C8D898C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF68, &qword_21CBC47C0);
    v3 = sub_21CB86074();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_21CB86484();

      sub_21CB854C4();
      result = sub_21CB864D4();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_21CB86344();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_21C8D8BB8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_21C6EDBAC(a1, &v9[-v5], &qword_27CDEFEE8, &unk_21CBADDE0);
  v7 = *a2;
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810C4();

  return sub_21C6EA794(v6, &qword_27CDEFEE8, &unk_21CBADDE0);
}

uint64_t sub_21C8D8D08(uint64_t *a1)
{
  v1 = *a1;
  sub_21C72A574(*a1);
  return sub_21C8C7608(v1);
}

id sub_21C8D8D3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__exportError);
  *a2 = v4;
  return v4;
}

uint64_t sub_21C8D8E30(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, ...)
{
  swift_getKeyPath(a5);
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810C4();
}

uint64_t sub_21C8D8EEC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v31 = a3;
  v3 = sub_21CB82F84();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB83994();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMAddAccountView(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0098, &qword_21CBAE260);
  MEMORY[0x28223BE20](v30);
  v13 = &v25 - v12;
  type metadata accessor for PMAddAccountModel(0);
  sub_21C71B768(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel, &unk_21CBA89A8);

  *v11 = sub_21CB82674();
  v11[1] = v14;
  v11[2] = 0x4079000000000000;
  v15 = v9[6];
  *(v11 + v15) = swift_getKeyPath(byte_21CBAE3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  sub_21C721B58();
  sub_21CB81FA4();
  v16 = (v11 + v9[8]);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v32);

  type metadata accessor for PMGroupsStore(0);
  sub_21C71B768(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v18 = sub_21CB82674();
  v20 = v19;

  *v16 = v18;
  v16[1] = v20;
  v21 = v11 + v9[9];
  v21[8] = 0;
  sub_21C71B768(&qword_27CDEBDC8, type metadata accessor for PMAddAccountView, &unk_21CBA8F48);
  sub_21CB845C4();
  sub_21C719300(v11, type metadata accessor for PMAddAccountView);
  v32 = 0x756F636341646461;
  v33 = 0xEA0000000000746ELL;
  LOBYTE(v21) = *(v29 + *(type metadata accessor for PMAppRootNavigationView(0) + 52) + 8);

  if ((v21 & 1) == 0)
  {
    sub_21CB85B04();
    v22 = sub_21CB83C94();
    sub_21CB81C14();

    v23 = v26;
    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v27 + 8))(v23, v28);
  }

  sub_21CB834F4();
  sub_21C722C50();
  sub_21CB84524();
  (*(v6 + 8))(v8, v5);
  return sub_21C6EA794(v13, &qword_27CDF0098, &qword_21CBAE260);
}

uint64_t sub_21C8D9444@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD8, &unk_21CBA5300);
  MEMORY[0x28223BE20](v44);
  v43 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = v41 - v6;
  v7 = sub_21CB82644();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v41 - v12;
  v14 = *a1;
  v15 = type metadata accessor for PMAccount(0);
  (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  v16 = type metadata accessor for PMNewGroupFlow(0);
  v17 = a2 + v16[6];
  *(v17 + 24) = &type metadata for PMIMessageAvailabilityProviderMain;
  *(v17 + 32) = &off_282E572E8;
  *(a2 + v16[5]) = v14;
  v41[1] = v16[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE0, &unk_21CBAE540);
  type metadata accessor for PMNewGroupFlow.Step(0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21CBA0690;
  swift_storeEnumTagMultiPayload();
  v46 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE8, &qword_21CBA5310);
  sub_21C6EADEC(&qword_27CDECBF0, &qword_27CDECBE8, &qword_21CBA5310, MEMORY[0x277D83970]);
  sub_21C71B768(&qword_27CDECBF8, type metadata accessor for PMNewGroupFlow.Step, &unk_21CBC307C);
  sub_21CB82654();
  (*(v8 + 16))(v10, v13, v7);
  sub_21CB84D44();
  (*(v8 + 8))(v13, v7);
  v19 = a2 + v16[8];
  v45 = 0;
  sub_21CB84D44();
  v20 = v47;
  *v19 = v46;
  *(v19 + 8) = v20;
  v21 = type metadata accessor for MoveAccountFailureAlertData(0);
  v22 = v42;
  (*(*(v21 - 8) + 56))(v42, 1, 1, v21);
  sub_21C6EDBAC(v22, v43, &qword_27CDECBD8, &unk_21CBA5300);
  sub_21CB84D44();
  sub_21C6EA794(v22, &qword_27CDECBD8, &unk_21CBA5300);
  v23 = v16[10];
  *(a2 + v23) = swift_getKeyPath(byte_21CBAE3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v24 = v16[11];
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v26 = (a2 + v24);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v46);

  type metadata accessor for PMAccountsState(0);
  sub_21C71B768(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v27 = sub_21CB82674();
  v29 = v28;

  *v26 = v27;
  v26[1] = v29;
  v30 = (a2 + v16[12]);
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C71B768(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  *v30 = sub_21CB82B84();
  v30[1] = v31;
  v32 = (a2 + v16[13]);
  sub_21CB86544();
  sub_21C7073E8(v33, v46);

  type metadata accessor for PMGroupsStore(0);
  sub_21C71B768(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v34 = sub_21CB82674();
  v36 = v35;

  *v32 = v34;
  v32[1] = v36;
  v37 = a2 + v16[14];
  *(v37 + 8) = 0;
  v38 = v16[15];
  v39 = v16[16];
  *(a2 + v39) = result;
  return result;
}

uint64_t sub_21C8D9AC4@<X0>(uint64_t a1@<X8>)
{
  swift_unknownObjectWeakInit();
  v2 = type metadata accessor for PMGeneratedPasswordsLogView(0);
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath(byte_21CBAE3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  KeyPath = swift_getKeyPath(byte_21CBAE518);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v6 = (a1 + v4);
  sub_21CB86544();
  sub_21C7073D0(KeyPath, v14);

  type metadata accessor for PMGeneratedPasswordStore(0);
  sub_21C71B768(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore, &unk_21CBB83F8);
  v7 = sub_21CB82674();
  v9 = v8;

  *v6 = v7;
  v6[1] = v9;
  v10 = (a1 + v2[8]);
  sub_21CB84D44();
  v11 = (a1 + v2[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEA8, &unk_21CBA38A0);
  sub_21CB84D44();
  *v11 = v14;
  v12 = v2[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEB0, &unk_21CBA5440);
  sub_21CB84D44();
  *(a1 + v12) = v14;
  swift_unknownObjectWeakAssign();

  *(a1 + v2[7]) = 0;
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v10[2] = 0;
  return result;
}

uint64_t sub_21C8D9CF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  v7 = sub_21CB80BE4();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE40, &unk_21CBAE4E0);
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v11 = a2;
  v12 = v6;
  v13 = a2;
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810C4();

  return sub_21C6EA794(v6, &qword_27CDEFEE8, &unk_21CBADDE0);
}

uint64_t sub_21C8D9EB4(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for PMAppRootNavigationView(0) + 40));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C72A898(v1, v3);

  sub_21C71B768(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter, &unk_21CBB7178);
  sub_21CB810D4();
}

void sub_21C8D9FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppRootNavigationView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  if (a2)
  {
    v11 = sub_21CB858E4();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    sub_21C72A2CC(v2, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppRootNavigationView);
    sub_21CB858B4();

    v12 = v2;
    v13 = sub_21CB858A4();
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    *(v16 + 16) = v13;
    *(v16 + 24) = v17;
    sub_21C72A334(v7, v16 + v14, type metadata accessor for PMAppRootNavigationView);
    *(v16 + v15) = a2;
    sub_21C98B308(0, 0, v10, &unk_21CBAE420, v16);

    v18 = *(v12 + *(v4 + 40));
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v19 = sub_21C72A898(v18, v22);

    if (*(v19 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__accountsToExport))
    {
      KeyPath = swift_getKeyPath(byte_21CBAE380);
      MEMORY[0x28223BE20](KeyPath);
      *(&v21 - 2) = v19;
      *(&v21 - 1) = 0;
      v22 = v19;
      sub_21C71B768(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter, &unk_21CBB7178);
      sub_21CB810C4();
    }
  }
}

uint64_t sub_21C8DA32C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a1;
  v51 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v42 - v3;
  v4 = type metadata accessor for PMAppRootNavigationView(0);
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81024();
  v43 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v49 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v48 = &v42 - v14;
  MEMORY[0x28223BE20](v15);
  v46 = &v42 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  sub_21CB81014();
  v20 = sub_21CB81004();
  v22 = v21;
  v23 = *(v7 + 8);
  v23(v9, v6);
  v52 = v20;
  v53 = v22;
  v24 = v44;
  sub_21C72A2CC(v47, v44, type metadata accessor for PMAppRootNavigationView);
  v25 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v26 = swift_allocObject();
  sub_21C72A334(v24, v26 + v25, type metadata accessor for PMAppRootNavigationView);
  sub_21C71F3FC();
  sub_21CB84DE4();
  sub_21CB81014();
  v27 = sub_21CB81004();
  v29 = v28;
  v23(v9, v43);
  v52 = v27;
  v53 = v29;
  v30 = v50;
  sub_21CB81EF4();
  v31 = sub_21CB81F14();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  v32 = v46;
  sub_21CB84DC4();
  v33 = *(v11 + 16);
  v34 = v48;
  v35 = v19;
  v33(v48, v19, v10);
  v36 = v49;
  v37 = v32;
  v33(v49, v32, v10);
  v38 = v51;
  v33(v51, v34, v10);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v33(&v38[*(v39 + 48)], v36, v10);
  v40 = *(v11 + 8);
  v40(v37, v10);
  v40(v35, v10);
  v40(v36, v10);
  return (v40)(v34, v10);
}

uint64_t sub_21C8DA850(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21CB818C4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = *(a1 + *(type metadata accessor for PMAppRootNavigationView(0) + 40));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v7 = sub_21C72A898(v6, v11);

  swift_getKeyPath(byte_21CBAE4B0);
  v11 = v7;
  sub_21C71B768(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter, &unk_21CBB7178);
  sub_21CB810D4();

  v8 = *(v7 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__accountsToExportAfterAlert);

  sub_21C8D9FC4(v4, v8);

  return sub_21C6EA794(v4, &qword_27CDEFFE8, &qword_21CBAE1B0);
}

__n128 sub_21C8DAA38@<Q0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for PMImportView(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMCredentialExchangeDataImportModel(0);
  sub_21C71B768(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);

  sub_21CB850A4();
  v7 = *(v4 + 28);
  *&v6[v7] = swift_getKeyPath(byte_21CBAE3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21C72A334(v6, a2, type metadata accessor for PMImportView);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0108, &qword_21CBAE378) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_21C8DAC00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(a1 + *(type metadata accessor for PMAppRootNavigationView(0) + 40));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v6 = sub_21C72A898(v5, v11);

  swift_getKeyPath(byte_21CBAE380);
  v11 = v6;
  sub_21C71B768(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter, &unk_21CBB7178);
  sub_21CB810D4();

  v7 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__accountsToExport);

  if (v7)
  {
    v9 = sub_21CB818C4();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    sub_21C8D9FC4(v4, v7);

    return sub_21C6EA794(v4, &qword_27CDEFFE8, &qword_21CBAE1B0);
  }

  return result;
}

uint64_t sub_21C8DADEC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppRootNavigationView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_21CB858E4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_21C72A2CC(a2, v7, type metadata accessor for PMAppRootNavigationView);
  sub_21CB858B4();
  v12 = a1;
  v13 = sub_21CB858A4();
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v13;
  v15[3] = v16;
  v15[4] = v12;
  sub_21C72A334(v7, v15 + v14, type metadata accessor for PMAppRootNavigationView);
  sub_21C98B308(0, 0, v10, &unk_21CBAE408, v15);
}

uint64_t sub_21C8DAFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = sub_21CB818C4();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE120, &qword_21CBA95C0);
  v5[22] = swift_task_alloc();
  v7 = sub_21CB80E34();
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();
  sub_21CB858B4();
  v5[26] = sub_21CB858A4();
  v9 = sub_21CB85874();
  v5[27] = v9;
  v5[28] = v8;

  return MEMORY[0x2822009F8](sub_21C8DB188, v9, v8);
}

uint64_t sub_21C8DB188()
{
  v1 = [*(v0 + 120) userInfo];
  if (!v1)
  {

    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_21CB85474();

  *(v0 + 88) = sub_21CB81594();
  *(v0 + 96) = v4;
  sub_21CB86034();
  if (!*(v3 + 16) || (v5 = sub_21CB10D50(v0 + 16), (v6 & 1) == 0))
  {

    sub_21C8E1980(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_8;
  }

  sub_21C7A3394(*(v3 + 56) + 32 * v5, v0 + 56);
  sub_21C8E1980(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_8:

LABEL_10:
    v11 = *(v0 + 184);
    v12 = *(v0 + 192);
    v13 = *(v0 + 176);
    sub_21C6EA794(v0 + 56, &qword_27CDF4D90, &qword_21CBA9F00);
    (*(v12 + 56))(v13, 1, 1, v11);
    goto LABEL_11;
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  v9 = *(v0 + 176);
  v10 = swift_dynamicCast();
  (*(v8 + 56))(v9, v10 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {

LABEL_11:
    sub_21C6EA794(*(v0 + 176), &qword_27CDEE120, &qword_21CBA95C0);

    v14 = *(v0 + 8);

    return v14();
  }

  (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 176), *(v0 + 184));
  sub_21CB81924();
  swift_allocObject();
  *(v0 + 232) = sub_21CB81914();
  v19 = (*MEMORY[0x277CBA868] + MEMORY[0x277CBA868]);
  v16 = swift_task_alloc();
  *(v0 + 240) = v16;
  *v16 = v0;
  v16[1] = sub_21C8DB498;
  v17 = *(v0 + 200);
  v18 = *(v0 + 168);

  return v19(v18, v17);
}

uint64_t sub_21C8DB498()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_21C8DB86C;
  }

  else
  {
    v5 = sub_21C8DB5EC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C8DB5EC()
{
  v18 = v0[23];
  v19 = v0[25];
  v2 = v0[20];
  v1 = v0[21];
  v16 = v1;
  v17 = v0[24];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  sub_21CB85084();
  v6 = v0[13];
  v7 = *(v3 + 16);
  v7(v2, v1, v5);
  v8 = v5;
  v15 = v5;
  v7(v4, v2, v5);
  v9 = [objc_opt_self() sharedStore];
  type metadata accessor for PMCredentialExchangeDataImportModel(0);
  swift_allocObject();
  v10 = PMCredentialExchangeDataImportModel.init(credentialData:accountStore:progressHandler:)(v4, v9, 0, 0);
  v11 = *(v3 + 8);
  v11(v2, v8);
  swift_getKeyPath(byte_21CBAE3A8);
  v12 = swift_task_alloc();
  *(v12 + 16) = v6;
  *(v12 + 24) = v10;
  v0[14] = v6;
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810C4();

  v11(v16, v15);
  (*(v17 + 8))(v19, v18);

  v13 = v0[1];

  return v13();
}

uint64_t sub_21C8DB86C()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[24];

  (*(v3 + 8))(v1, v2);
  if (qword_27CDEA3E8 != -1)
  {
    swift_once();
  }

  v4 = v0[31];
  v5 = sub_21CB81C84();
  __swift_project_value_buffer(v5, qword_27CE18568);
  v6 = v4;
  v7 = sub_21CB81C64();
  v8 = sub_21CB85AF4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[31];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_21C6E5000, v7, v8, "Error fetching data to import: %@", v11, 0xCu);
    sub_21C6EA794(v12, &unk_27CDF76B0, &qword_21CBA2BE0);
    MEMORY[0x21CF16D90](v12, -1, -1);
    MEMORY[0x21CF16D90](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_21C8DBA64@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for PMCredentialExchangeDataImportModel(0);
  sub_21C71B768(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);

  sub_21CB850A4();
  v3 = *(type metadata accessor for PMImportView(0) + 20);
  *(a2 + v3) = swift_getKeyPath(byte_21CBAE3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21C8DBB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + *(type metadata accessor for PMAppRootNavigationView(0) + 40));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v5 = sub_21C72A898(v4, v8);

  if (*(v5 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__accountsToExportAfterAlert))
  {
    KeyPath = swift_getKeyPath(byte_21CBAE4B0);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71B768(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter, &unk_21CBB7178);
    sub_21CB810C4();
  }
}

uint64_t sub_21C8DBCC0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + *(type metadata accessor for PMAppRootNavigationView(0) + 44));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C72AE7C(v4, v7);

  KeyPath = swift_getKeyPath(byte_21CBAE480);
  MEMORY[0x28223BE20](KeyPath);
  sub_21C71B768(&qword_27CDF0160, type metadata accessor for PMCredentialImporter, &unk_21CBC9A10);
  sub_21CB810C4();
}

uint64_t sub_21C8DBE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_21CB80DD4();
  v5[10] = swift_task_alloc();
  v6 = sub_21CB818C4();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_21CB81444();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = sub_21CB80E34();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for PMAccount.Storage(0);
  v5[21] = swift_task_alloc();
  v9 = type metadata accessor for PMAccount(0);
  v5[22] = v9;
  v5[23] = *(v9 - 8);
  v5[24] = swift_task_alloc();
  v10 = sub_21CB818E4();
  v5[25] = v10;
  v5[26] = *(v10 - 8);
  v5[27] = swift_task_alloc();
  v11 = sub_21CB81894();
  v5[28] = v11;
  v5[29] = *(v11 - 8);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  sub_21CB858B4();
  v5[32] = sub_21CB858A4();
  v13 = sub_21CB85874();
  v5[33] = v13;
  v5[34] = v12;

  return MEMORY[0x2822009F8](sub_21C8DC150, v13, v12);
}

uint64_t sub_21C8DC150()
{
  v1 = v0[8];
  v2 = *(v1 + *(type metadata accessor for PMAppRootNavigationView(0) + 40));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v3 = sub_21C72A898(v2, v0[2]);

  sub_21CB81904();
  v4 = sub_21CB818F4();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v0[3] = v3;
  sub_21C71B768(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter, &unk_21CBB7178);
  sub_21CB810C4();

  sub_21CB86544();
  v6 = sub_21C72A898(v2, v0[4]);

  v0[5] = v6;
  sub_21CB810D4();

  v7 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportManager);
  v0[35] = v7;

  if (v7)
  {
    v12 = (*MEMORY[0x277CBA858] + MEMORY[0x277CBA858]);
    v8 = swift_task_alloc();
    v0[36] = v8;
    *v8 = v0;
    v8[1] = sub_21C8DC4B0;
    v9 = v0[27];

    return v12(v9, 0, 0);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_21C8DC4B0()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 272);
  v4 = *(v2 + 264);
  if (v0)
  {
    v5 = sub_21C8DCE70;
  }

  else
  {
    v5 = sub_21C8DC5EC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C8DC5EC()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[9];
  sub_21CB818D4();
  (*(v2 + 8))(v1, v3);
  v0[38] = [objc_opt_self() sharedStore];
  v5 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = v0[23];
    v8 = v0[24];
    v9 = *(v0[22] + 24);
    v10 = v0[9] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v11 = *(v7 + 72);
    do
    {
      v12 = v0[24];
      v13 = v0[21];
      sub_21C72A2CC(v10, v12, type metadata accessor for PMAccount);
      sub_21C72A2CC(v8 + v9, v13, type metadata accessor for PMAccount.Storage);
      sub_21C719300(v12, type metadata accessor for PMAccount);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C719300(v0[21], type metadata accessor for PMAccount.Storage);
      }

      else
      {
        MEMORY[0x21CF15300]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21CB85834();
        }

        sub_21CB85854();
        v5 = v16;
      }

      v10 += v11;
      --v6;
    }

    while (v6);
  }

  v0[39] = v5;
  v14 = swift_task_alloc();
  v0[40] = v14;
  *v14 = v0;
  v14[1] = sub_21C8DC838;

  return MEMORY[0x28210CE10](v5);
}

uint64_t sub_21C8DC838(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  *(*v1 + 328) = a1;

  v4 = *(v2 + 272);
  v5 = *(v2 + 264);

  return MEMORY[0x2822009F8](sub_21C8DC99C, v5, v4);
}

uint64_t sub_21C8DC99C(uint64_t a1)
{
  v2 = v1[29];
  v18 = v1[28];
  v19 = v1[31];
  v4 = v1[18];
  v3 = v1[19];
  v6 = v1[16];
  v5 = v1[17];
  v7 = v1[15];
  v16 = v1[14];
  v17 = v1[30];
  sub_21CB80E24();
  v8 = sub_21CB80DE4();
  v10 = v9;
  v1[42] = v8;
  v1[43] = v9;
  (*(v4 + 8))(v3, v5);
  sub_21C7A35D0(v8, v10);
  sub_21CB81434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0158, &qword_21CBAE478);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21CBA0690;
  (*(v7 + 16))(v12 + v11, v6, v16);
  (*(v2 + 16))(v17, v19, v18);
  sub_21CB80DA4();
  sub_21CB818A4();
  v20 = (*MEMORY[0x277CBA860] + MEMORY[0x277CBA860]);
  v13 = swift_task_alloc();
  v1[44] = v13;
  *v13 = v1;
  v13[1] = sub_21C8DCBD8;
  v14 = v1[13];

  return v20(v14);
}

uint64_t sub_21C8DCBD8()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 272);
  v4 = *(v2 + 264);
  if (v0)
  {
    v5 = sub_21C8DD048;
  }

  else
  {
    v5 = sub_21C8DCD14;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C8DCD14()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[29];
  v12 = v0[28];
  v13 = v0[31];
  v4 = v0[15];
  v11 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];

  sub_21C7A34C0(v1, v2);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v11, v5);
  (*(v3 + 8))(v13, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21C8DCE70()
{

  v1 = v0[37];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  sub_21CB85084();
  v2 = v0[6];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[7] = v2;
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810C4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_21C8DD048()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[29];
  v15 = v0[28];
  v16 = v0[31];
  v4 = v0[15];
  v14 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];

  sub_21C7A34C0(v1, v2);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v14, v5);
  (*(v3 + 8))(v16, v15);
  v9 = v0[45];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  sub_21CB85084();
  v10 = v0[6];
  v11 = swift_task_alloc();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v0[7] = v10;
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810C4();

  v12 = v0[1];

  return v12();
}

id sub_21C8DD28C()
{
  v0 = [objc_opt_self() _applicationKeyWindow];

  return v0;
}

uint64_t sub_21C8DD2CC@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = type metadata accessor for PMAppRootNavigationView(0);
  v63 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v64 = v3;
  v65 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB83BE4();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  v60 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0340, &qword_21CBAE818);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0068, &qword_21CBAE218);
  MEMORY[0x28223BE20](v69);
  v67 = &v52 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0348, &qword_21CBAE820);
  v70 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = &v52 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  v14 = *(v1 + *(v2 + 48));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C81C2B8(v14, v77);

  type metadata accessor for PMGlobalSearchModel(0);
  sub_21C71B768(&qword_27CDEEE18, type metadata accessor for PMGlobalSearchModel, &unk_21CBAC838);
  sub_21CB850A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA8, &qword_21CBAE138);
  v15 = sub_21CB82274();
  v55 = &v52;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF01A0, &qword_21CBAE620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF01D0, &qword_21CBAE638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF02A0, &qword_21CBAE688);
  v68 = v1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF01B0, &qword_21CBAE630);
  v19 = type metadata accessor for PMAppRootNavigationModel(255);
  v20 = type metadata accessor for PMAppSourceList(255);
  v21 = sub_21C71B768(&qword_27CDF01B8, type metadata accessor for PMAppSourceList, &unk_21CBB0220);
  v77 = v20;
  v78 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = v18;
  v78 = v19;
  v79 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21C8E1C9C();
  sub_21C7295E4();
  v23 = v67;
  sub_21CB83324();
  v24 = v57;
  v25 = v59;
  v56 = v13;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBAE828);
  sub_21CB850B4();

  v26 = v70 + 8;
  v27 = *(v70 + 8);
  v27(v24, v25);
  v55 = v27;
  v70 = v26;
  v53 = v77;
  v54 = v78;
  v28 = v80;
  v57 = v79;
  v29 = v58;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBAE850);
  sub_21CB850B4();

  v27(v29, v25);
  v30 = v74;
  v31 = v75;
  v32 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  sub_21CB85084();
  v33 = sub_21C8CEDC4();
  v35 = v34;

  v36 = &v23[*(v69 + 36)];
  v37 = v54;
  *v36 = v53;
  *(v36 + 1) = v37;
  *(v36 + 2) = v57;
  *(v36 + 3) = v28;
  *(v36 + 4) = v30;
  *(v36 + 5) = v31;
  v36[48] = v32;
  *(v36 + 7) = 0;
  *(v36 + 8) = 0;
  v36[72] = 0;
  *(v36 + 73) = 257;
  *(v36 + 10) = v33;
  *(v36 + 11) = v35;
  v71 = 0;

  sub_21CB84D44();
  v38 = v73;
  v36[96] = v72;
  *(v36 + 13) = v38;
  LOBYTE(v33) = sub_21CB81F94();
  v40 = v39;
  LOBYTE(v37) = v41;

  v36[112] = v33 & 1;
  *(v36 + 15) = v40;
  v36[128] = v37 & 1;
  v42 = *(type metadata accessor for PMSearchable(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v43 = v60;
  sub_21CB83944();
  sub_21C8E09D0();
  sub_21C71B768(&qword_27CDF0088, MEMORY[0x277CDE4E0], MEMORY[0x277CDE4D8]);
  v45 = v66;
  v44 = v67;
  v46 = v62;
  sub_21CB84084();
  (*(v61 + 8))(v43, v46);
  sub_21C6EA794(v44, &qword_27CDF0068, &qword_21CBAE218);
  (v55)(v56, v25);
  v47 = v65;
  sub_21C72A2CC(v68, v65, type metadata accessor for PMAppRootNavigationView);
  v48 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v49 = swift_allocObject();
  sub_21C72A334(v47, v49 + v48, type metadata accessor for PMAppRootNavigationView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0060, &qword_21CBAE210);
  v51 = (v45 + *(result + 36));
  *v51 = sub_21C8E2118;
  v51[1] = v49;
  v51[2] = 0;
  v51[3] = 0;
  return result;
}

uint64_t sub_21C8DDC34(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF01E8, &qword_21CBAE640);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - v2;
  sub_21C8DE420(&v5 - v2);
  sub_21C8E1D58();
  sub_21CB845C4();
  return sub_21C6EA794(v3, &qword_27CDF01E8, &qword_21CBAE640);
}

uint64_t sub_21C8DDD1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  sub_21CB85084();
  v6 = *(v12 + 64);
  swift_getKeyPath(byte_21CBAE880);
  v12 = v6;
  sub_21C71B768(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  v7 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  sub_21C6EDBAC(v6 + v7, v5, &qword_27CDEAC20, &qword_21CBAD710);

  v8 = type metadata accessor for PMAppSourceListModel.Source(0);
  v9 = *(v8 - 8);
  LODWORD(v7) = (*(v9 + 48))(v5, 1, v8);
  result = sub_21C6EA794(v5, &qword_27CDEAC20, &qword_21CBAD710);
  if (v7 == 1)
  {
    sub_21CB85084();
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v2, 0, 1, v8);
    sub_21C742C88(v2);
  }

  return result;
}

uint64_t sub_21C8DDF74@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v26 = a2;
  v30 = a3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF02A0, &qword_21CBAE688);
  MEMORY[0x28223BE20](v29);
  v4 = &v23 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF02E8, &qword_21CBAE6A8);
  MEMORY[0x28223BE20](v28);
  v6 = &v23 - v5;
  v27 = sub_21CB826C4();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF01E8, &qword_21CBAE640);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF01D0, &qword_21CBAE638);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF02F0, &qword_21CBAE6B0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v23 - v17;
  if (*v25)
  {
    sub_21C8E00A8(v4);
    sub_21C6EDBAC(v4, v6, &qword_27CDF02A0, &qword_21CBAE688);
    swift_storeEnumTagMultiPayload();
    v19 = sub_21C8E1C9C();
    v31 = v12;
    v32 = v27;
    v33 = v19;
    v34 = MEMORY[0x277CDD980];
    swift_getOpaqueTypeConformance2();
    sub_21C7295E4();
    sub_21CB83494();
    return sub_21C6EA794(v4, &qword_27CDF02A0, &qword_21CBAE688);
  }

  else
  {
    sub_21C8DE420(v11);
    sub_21C8E1D58();
    sub_21CB845C4();
    sub_21C6EA794(v11, &qword_27CDF01E8, &qword_21CBAE640);
    sub_21CB826B4();
    v21 = sub_21C8E1C9C();
    v22 = v27;
    sub_21CB849F4();
    (*(v24 + 8))(v8, v22);
    sub_21C6EA794(v14, &qword_27CDF01D0, &qword_21CBAE638);
    (*(v16 + 16))(v6, v18, v15);
    swift_storeEnumTagMultiPayload();
    v31 = v12;
    v32 = v22;
    v33 = v21;
    v34 = MEMORY[0x277CDD980];
    swift_getOpaqueTypeConformance2();
    sub_21C7295E4();
    sub_21CB83494();
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_21C8DE420@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  v112 = type metadata accessor for PMWiFiList(0);
  MEMORY[0x28223BE20](v112);
  v92 = &v90 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for PMVerificationCodesList(0);
  MEMORY[0x28223BE20](v105);
  v93 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF02F8, &qword_21CBAE6B8);
  MEMORY[0x28223BE20](v109);
  v111 = &v90 - v3;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0300, &qword_21CBAE6C0);
  MEMORY[0x28223BE20](v101);
  v104 = &v90 - v4;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0278, &qword_21CBAE680);
  MEMORY[0x28223BE20](v110);
  v106 = &v90 - v5;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0268, &qword_21CBAE678);
  MEMORY[0x28223BE20](v122);
  v113 = &v90 - v6;
  v103 = type metadata accessor for PMAppSecurityRecommendationsList(0);
  MEMORY[0x28223BE20](v103);
  v91 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
  MEMORY[0x28223BE20](v99);
  v108 = (&v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0308, &unk_21CBAE6C8);
  MEMORY[0x28223BE20](v102);
  v96 = &v90 - v9;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0248, &qword_21CBAE670);
  MEMORY[0x28223BE20](v118);
  v97 = &v90 - v10;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v107);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v90 - v14;
  v16 = type metadata accessor for PMGroupInvitationsList(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0238, &qword_21CBAE668);
  MEMORY[0x28223BE20](v100);
  v20 = &v90 - v19;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0310, &qword_21CBAE6D8);
  MEMORY[0x28223BE20](v119);
  v121 = &v90 - v21;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0318, &qword_21CBAE6E0);
  MEMORY[0x28223BE20](v114);
  v116 = &v90 - v22;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0320, &qword_21CBAE6E8);
  MEMORY[0x28223BE20](v94);
  v24 = &v90 - v23;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0218, &qword_21CBAE658);
  MEMORY[0x28223BE20](v115);
  v98 = &v90 - v25;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0208, &qword_21CBAE650);
  MEMORY[0x28223BE20](v120);
  v117 = &v90 - v26;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0228, &qword_21CBAE660);
  v90 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v28 = &v90 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  sub_21CB85084();
  v29 = v125;
  swift_getKeyPath(byte_21CBAE6F0);
  v125 = v29;
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v30 = *(v29 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);

  v31 = v30 >> 61;
  if ((v30 >> 61) <= 2)
  {
    v37 = v18;
    v113 = (v30 & 0x1FFFFFFFFFFFFFFFLL);
    v38 = v108;
    if (!v31)
    {

      v56 = v20;
      sub_21C867804(v20);
      v57 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_id;
      v58 = *(v100 + 52);
      v59 = sub_21CB80E34();
      (*(*(v59 - 8) + 16))(v56 + v58, v30 + v57, v59);
      sub_21C6EDBAC(v56, v24, &qword_27CDF0238, &qword_21CBAE668);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDF0220, &qword_27CDF0228, &qword_21CBAE660, MEMORY[0x277CDE158]);
      sub_21C6EADEC(&qword_27CDF0230, &qword_27CDF0238, &qword_21CBAE668, MEMORY[0x277CE1148]);
      v60 = v98;
      sub_21CB83494();
      sub_21C6EDBAC(v60, v116, &qword_27CDF0218, &qword_21CBAE658);
      swift_storeEnumTagMultiPayload();
      sub_21C8E1EF4();
      sub_21C729350();
      v61 = v117;
      sub_21CB83494();
      sub_21C6EA794(v60, &qword_27CDF0218, &qword_21CBAE658);
      sub_21C6EDBAC(v61, v121, &qword_27CDF0208, &qword_21CBAE650);
      swift_storeEnumTagMultiPayload();
      sub_21C8E1E68();
      sub_21C72943C();
      sub_21CB83494();

      sub_21C6EA794(v61, &qword_27CDF0208, &qword_21CBAE650);
      return sub_21C6EA794(v56, &qword_27CDF0238, &qword_21CBAE668);
    }

    v39 = v16;
    if (v31 == 1)
    {
      v40 = v37;
      *v37 = v113;
      type metadata accessor for PMPasswordManagerState(0);
      sub_21C71B768(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
      v40[1] = sub_21CB82B84();
      v40[2] = v41;
      v42 = *(v16 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE8, &qword_21CBAE7D0);
      swift_storeEnumTagMultiPayload();
      v43 = sub_21CB85C44();
      (*(*(v43 - 8) + 56))(v15, 1, 1, v43);
      sub_21C6EDBAC(v15, v12, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21CB84D44();
      sub_21C6EA794(v15, &unk_27CDF20B0, &unk_21CBA0090);
      v44 = v40 + *(v39 + 32);
      v44[8] = 0;
      sub_21C72A2CC(v40, v96, type metadata accessor for PMGroupInvitationsList);
      swift_storeEnumTagMultiPayload();
      sub_21C71B768(&qword_27CDF0250, type metadata accessor for PMGroupInvitationsList, &unk_21CBB9830);
      sub_21C71B768(&qword_27CDF0258, type metadata accessor for PMAppRecentlyDeletedAccountsView, &unk_21CBACAC0);
      v45 = v97;
      sub_21CB83494();
      sub_21C6EDBAC(v45, v116, &qword_27CDF0248, &qword_21CBAE670);
      swift_storeEnumTagMultiPayload();
      sub_21C8E1EF4();
      sub_21C729350();
      v46 = v117;
      sub_21CB83494();
      sub_21C6EA794(v45, &qword_27CDF0248, &qword_21CBAE670);
      sub_21C6EDBAC(v46, v121, &qword_27CDF0208, &qword_21CBAE650);
      swift_storeEnumTagMultiPayload();
      sub_21C8E1E68();
      sub_21C72943C();
      sub_21CB83494();
      sub_21C6EA794(v46, &qword_27CDF0208, &qword_21CBAE650);
      v47 = type metadata accessor for PMGroupInvitationsList;
    }

    else
    {
      type metadata accessor for PMRecentlyDeletedAccountsViewModel(0);
      sub_21C71B768(&qword_27CDEF9F0, type metadata accessor for PMRecentlyDeletedAccountsViewModel, &unk_21CBC7CE8);

      v40 = v38;
      *v38 = sub_21CB82674();
      v38[1] = v63;
      v65 = v97;
      v66 = v99;
      v67 = v96;
      if (qword_27CDEA4C0 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C7073E8(KeyPath, v125);

      type metadata accessor for PMGroupsStore(0);
      sub_21C71B768(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
      v68 = sub_21CB82674();
      v70 = v69;

      v40[2] = v68;
      v40[3] = v70;
      v71 = v66[6];
      *(v40 + v71) = swift_getKeyPath(byte_21CBAE3D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
      swift_storeEnumTagMultiPayload();
      v72 = v66[7];
      *(v40 + v72) = swift_getKeyPath(byte_21CBAE718);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
      swift_storeEnumTagMultiPayload();
      v73 = v66[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
      swift_storeEnumTagMultiPayload();
      v74 = v40 + v66[9];
      *v74 = swift_getKeyPath(byte_21CBAE750);
      v74[8] = 0;
      sub_21C72A2CC(v40, v67, type metadata accessor for PMAppRecentlyDeletedAccountsView);
      swift_storeEnumTagMultiPayload();
      sub_21C71B768(&qword_27CDF0250, type metadata accessor for PMGroupInvitationsList, &unk_21CBB9830);
      sub_21C71B768(&qword_27CDF0258, type metadata accessor for PMAppRecentlyDeletedAccountsView, &unk_21CBACAC0);
      sub_21CB83494();
      sub_21C6EDBAC(v65, v116, &qword_27CDF0248, &qword_21CBAE670);
      swift_storeEnumTagMultiPayload();
      sub_21C8E1EF4();
      sub_21C729350();
      v75 = v117;
      sub_21CB83494();
      sub_21C6EA794(v65, &qword_27CDF0248, &qword_21CBAE670);
      sub_21C6EDBAC(v75, v121, &qword_27CDF0208, &qword_21CBAE650);
      swift_storeEnumTagMultiPayload();
      sub_21C8E1E68();
      sub_21C72943C();
      sub_21CB83494();

      sub_21C6EA794(v75, &qword_27CDF0208, &qword_21CBAE650);
      v47 = type metadata accessor for PMAppRecentlyDeletedAccountsView;
    }

    v54 = v47;
    v55 = v40;
    return sub_21C719300(v55, v54);
  }

  if (v31 <= 4)
  {
    if (v31 == 3)
    {
      type metadata accessor for PMAppSecurityRecommendationsModel(0);
      sub_21C71B768(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);

      v32 = v91;
      sub_21CB850A4();
      v33 = *(v103 + 20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
      swift_storeEnumTagMultiPayload();
      sub_21C72A2CC(v32, v104, type metadata accessor for PMAppSecurityRecommendationsList);
      swift_storeEnumTagMultiPayload();
      sub_21C71B768(&qword_27CDF0280, type metadata accessor for PMAppSecurityRecommendationsList, &unk_21CBAEB40);
      sub_21C71B768(&qword_27CDF0288, type metadata accessor for PMVerificationCodesList, &unk_21CBCF918);
      v34 = v106;
      sub_21CB83494();
      sub_21C6EDBAC(v34, v111, &qword_27CDF0278, &qword_21CBAE680);
      swift_storeEnumTagMultiPayload();
      sub_21C7294F8();
      sub_21C71B768(&qword_27CDF0290, type metadata accessor for PMWiFiList, &unk_21CBBCE48);
      v35 = v113;
      sub_21CB83494();
      sub_21C6EA794(v34, &qword_27CDF0278, &qword_21CBAE680);
      sub_21C6EDBAC(v35, v121, &qword_27CDF0268, &qword_21CBAE678);
      swift_storeEnumTagMultiPayload();
      sub_21C8E1E68();
      sub_21C72943C();
      sub_21CB83494();

      sub_21C6EA794(v35, &qword_27CDF0268, &qword_21CBAE678);
      v36 = type metadata accessor for PMAppSecurityRecommendationsList;
    }

    else
    {
      type metadata accessor for PMVerificationCodesListModel(0);
      sub_21C71B768(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);

      v32 = v93;
      sub_21CB850A4();
      v76 = v105;
      v77 = v32 + *(v105 + 20);
      v124 = 0;
      sub_21CB84D44();
      v78 = v126;
      *v77 = v125;
      *(v77 + 8) = v78;
      v79 = v32 + v76[6];
      *(v79 + 8) = 0;
      *(v79 + 16) = 0;
      v80 = v76[7];
      *(v32 + v80) = swift_getKeyPath(byte_21CBAE718);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
      swift_storeEnumTagMultiPayload();
      v81 = v76[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
      swift_storeEnumTagMultiPayload();
      v82 = v76[9];
      type metadata accessor for PMHandleInboundTOTPMigrationURLModel(0);
      v83 = swift_allocObject();
      *(v83 + 16) = 0;
      sub_21CB81104();
      *(v32 + v82) = v83;
      sub_21C72A2CC(v32, v104, type metadata accessor for PMVerificationCodesList);
      swift_storeEnumTagMultiPayload();
      sub_21C71B768(&qword_27CDF0280, type metadata accessor for PMAppSecurityRecommendationsList, &unk_21CBAEB40);
      sub_21C71B768(&qword_27CDF0288, type metadata accessor for PMVerificationCodesList, &unk_21CBCF918);
      v84 = v106;
      sub_21CB83494();
      sub_21C6EDBAC(v84, v111, &qword_27CDF0278, &qword_21CBAE680);
      swift_storeEnumTagMultiPayload();
      sub_21C7294F8();
      sub_21C71B768(&qword_27CDF0290, type metadata accessor for PMWiFiList, &unk_21CBBCE48);
      v85 = v113;
      sub_21CB83494();
      sub_21C6EA794(v84, &qword_27CDF0278, &qword_21CBAE680);
      sub_21C6EDBAC(v85, v121, &qword_27CDF0268, &qword_21CBAE678);
      swift_storeEnumTagMultiPayload();
      sub_21C8E1E68();
      sub_21C72943C();
      sub_21CB83494();

      sub_21C6EA794(v85, &qword_27CDF0268, &qword_21CBAE678);
      v36 = type metadata accessor for PMVerificationCodesList;
    }

    v54 = v36;
    v55 = v32;
    return sub_21C719300(v55, v54);
  }

  if (v31 == 5)
  {
    type metadata accessor for PMWiFiListModel(0);
    sub_21C71B768(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);

    v48 = v92;
    sub_21CB850A4();
    v49 = v112;
    v50 = *(v112 + 20);
    *(v48 + v50) = swift_getKeyPath(byte_21CBAE718);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
    swift_storeEnumTagMultiPayload();
    v51 = v48 + v49[6];
    *v51 = swift_getKeyPath(byte_21CBAE750);
    *(v51 + 8) = 0;
    v52 = v49[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
    swift_storeEnumTagMultiPayload();
    *(v48 + v49[8]) = 0;
    sub_21C72A2CC(v48, v111, type metadata accessor for PMWiFiList);
    swift_storeEnumTagMultiPayload();
    sub_21C7294F8();
    sub_21C71B768(&qword_27CDF0290, type metadata accessor for PMWiFiList, &unk_21CBBCE48);
    v53 = v113;
    sub_21CB83494();
    sub_21C6EDBAC(v53, v121, &qword_27CDF0268, &qword_21CBAE678);
    swift_storeEnumTagMultiPayload();
    sub_21C8E1E68();
    sub_21C72943C();
    sub_21CB83494();

    sub_21C6EA794(v53, &qword_27CDF0268, &qword_21CBAE678);
    v54 = type metadata accessor for PMWiFiList;
    v55 = v48;
    return sub_21C719300(v55, v54);
  }

  sub_21CB83774();
  v86 = v90;
  v87 = v95;
  (*(v90 + 16))(v24, v28, v95);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDF0220, &qword_27CDF0228, &qword_21CBAE660, MEMORY[0x277CDE158]);
  sub_21C6EADEC(&qword_27CDF0230, &qword_27CDF0238, &qword_21CBAE668, MEMORY[0x277CE1148]);
  v88 = v98;
  sub_21CB83494();
  sub_21C6EDBAC(v88, v116, &qword_27CDF0218, &qword_21CBAE658);
  swift_storeEnumTagMultiPayload();
  sub_21C8E1EF4();
  sub_21C729350();
  v89 = v117;
  sub_21CB83494();
  sub_21C6EA794(v88, &qword_27CDF0218, &qword_21CBAE658);
  sub_21C6EDBAC(v89, v121, &qword_27CDF0208, &qword_21CBAE650);
  swift_storeEnumTagMultiPayload();
  sub_21C8E1E68();
  sub_21C72943C();
  sub_21CB83494();
  sub_21C6EA794(v89, &qword_27CDF0208, &qword_21CBAE650);
  return (*(v86 + 8))(v28, v87);
}

uint64_t sub_21C8DFF74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C8E00A8@<X0>(uint64_t a1@<X8>)
{
  v25 = type metadata accessor for PMMultipleAccountsDetailsView(0);
  MEMORY[0x28223BE20](v25);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0328, &qword_21CBAE7D8);
  MEMORY[0x28223BE20](v26);
  v5 = (v24 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0330, &qword_21CBAE7E0);
  MEMORY[0x28223BE20](v6);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF02C0, &qword_21CBAE698);
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  sub_21CB85084();
  v12 = v27;
  swift_getKeyPath(byte_21CBAE7E8);
  v27 = v12;
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v13 = *(v12 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState);

  if (v13 >> 62)
  {
    if (v13 >> 62 == 1)
    {
      *v5 = v13 & 0x3FFFFFFFFFFFFFFFLL;
      swift_storeEnumTagMultiPayload();
      sub_21C729668();
      sub_21C7297A8();
      return sub_21CB83494();
    }

    else
    {
      v20 = [objc_opt_self() systemGroupedBackgroundColor];
      v21 = sub_21CB84A24();
      v22 = sub_21CB82934();
      v23 = sub_21CB83CE4();
      *v8 = v21;
      *(v8 + 1) = v22;
      v8[16] = v23;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF02D0, &qword_21CBAE6A0);
      sub_21C729724();
      sub_21C71B768(&qword_27CDF02D8, type metadata accessor for PMMultipleAccountsDetailsView, &unk_21CBC2950);
      sub_21CB83494();
      sub_21C6EDBAC(v11, v5, &qword_27CDF02C0, &qword_21CBAE698);
      swift_storeEnumTagMultiPayload();
      sub_21C729668();
      sub_21C7297A8();
      sub_21CB83494();

      return sub_21C6EA794(v11, &qword_27CDF02C0, &qword_21CBAE698);
    }
  }

  else
  {
    v24[1] = v9;
    v24[2] = a1;
    type metadata accessor for PMMultipleAccountsDetailsModel(0);
    sub_21C71B768(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel, &unk_21CBC2720);

    sub_21CB850A4();
    v15 = &v3[*(v25 + 20)];
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(KeyPath, v27);

    type metadata accessor for PMAccountsState(0);
    sub_21C71B768(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
    v17 = sub_21CB82674();
    v19 = v18;

    *v15 = v17;
    v15[1] = v19;
    sub_21C72A2CC(v3, v8, type metadata accessor for PMMultipleAccountsDetailsView);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF02D0, &qword_21CBAE6A0);
    sub_21C729724();
    sub_21C71B768(&qword_27CDF02D8, type metadata accessor for PMMultipleAccountsDetailsView, &unk_21CBC2950);
    sub_21CB83494();
    sub_21C6EDBAC(v11, v5, &qword_27CDF02C0, &qword_21CBAE698);
    swift_storeEnumTagMultiPayload();
    sub_21C729668();
    sub_21C7297A8();
    sub_21CB83494();

    sub_21C6EA794(v11, &qword_27CDF02C0, &qword_21CBAE698);
    return sub_21C719300(v3, type metadata accessor for PMMultipleAccountsDetailsView);
  }
}

uint64_t sub_21C8E0710(uint64_t a1)
{
  v2 = sub_21CB81FE4();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21CB82BE4();
}

unint64_t sub_21C8E0800()
{
  result = qword_27CDF0040;
  if (!qword_27CDF0040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFFF0, &qword_21CBAE1B8);
    sub_21C6EADEC(&qword_27CDF0048, &qword_27CDF0050, &qword_21CBAE208, MEMORY[0x277CDDA18]);
    sub_21C8E08B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0040);
  }

  return result;
}

unint64_t sub_21C8E08B8()
{
  result = qword_27CDF0058;
  if (!qword_27CDF0058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0060, &qword_21CBAE210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0068, &qword_21CBAE218);
    sub_21CB83BE4();
    sub_21C8E09D0();
    sub_21C71B768(&qword_27CDF0088, MEMORY[0x277CDE4E0], MEMORY[0x277CDE4D8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0058);
  }

  return result;
}

unint64_t sub_21C8E09D0()
{
  result = qword_27CDF0070;
  if (!qword_27CDF0070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0068, &qword_21CBAE218);
    sub_21C6EADEC(&qword_27CDF0078, &qword_27CDF0080, &qword_21CBAE220, MEMORY[0x277CDDF08]);
    sub_21C71B768(&qword_27CDEBF90, type metadata accessor for PMSearchable, &unk_21CBA9C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0070);
  }

  return result;
}

uint64_t sub_21C8E0AB8@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for PMAppRootNavigationView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_21C8D8EEC(v5, a2);
}

uint64_t sub_21C8E0B38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82E64();
  *a1 = result & 1;
  return result;
}

unint64_t sub_21C8E0B80()
{
  result = qword_27CDF00C0;
  if (!qword_27CDF00C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0018, &qword_21CBAE1E0);
    sub_21C8E0C3C();
    sub_21C71B768(&qword_27CDF00E0, type metadata accessor for PMSafariViewModifier, &unk_21CBC9A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF00C0);
  }

  return result;
}

unint64_t sub_21C8E0C3C()
{
  result = qword_27CDF00C8;
  if (!qword_27CDF00C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF00B0, &qword_21CBAE2E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0010, &qword_21CBAE1D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC390, &qword_21CBA40E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0008, &qword_21CBAE1D0);
    type metadata accessor for PMGeneratedPasswordsLogView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0000, &qword_21CBAE1C8);
    type metadata accessor for PMNewGroupFlow(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFFF8, &qword_21CBAE1C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBDA8, &qword_21CBA36B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0090, &qword_21CBAE258);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFFF0, &qword_21CBAE1B8);
    type metadata accessor for PMAppRootNavigationModel(255);
    sub_21C8E0800();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBDC0, &qword_27CDEBDA8, &qword_21CBA36B0, &unk_21CBBE7F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0098, &qword_21CBAE260);
    sub_21CB83994();
    sub_21C722C50();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C722D3C();
    sub_21C71B768(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow, &unk_21CBC30BC);
    swift_getOpaqueTypeConformance2();
    sub_21C71B768(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView, &unk_21CBB7C80);
    swift_getOpaqueTypeConformance2();
    sub_21C722D90();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF00D0, &qword_27CDF00D8, &unk_21CBB6630, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF00C8);
  }

  return result;
}

unint64_t sub_21C8E0FDC()
{
  result = qword_27CDF00E8;
  if (!qword_27CDF00E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
    sub_21C71B768(&qword_27CDF00F0, MEMORY[0x277CBA840], MEMORY[0x277CBA848]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF00E8);
  }

  return result;
}

uint64_t sub_21C8E1090(uint64_t a1)
{
  v3 = *(type metadata accessor for PMAppRootNavigationView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21C8DBB38(a1, v4, v5, v6);
}

uint64_t sub_21C8E1104@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for PMAppRootNavigationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C8DA32C(v4, a1);
}

uint64_t sub_21C8E119C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t objectdestroy_57Tm_0()
{
  v1 = type metadata accessor for PMAppRootNavigationView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v0 + v3 + v1[5];

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA8, &qword_21CBAE138) + 32);
  v9 = sub_21CB83AD4();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);

  v10 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB83834();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEADD0, &qword_21CBA6F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21CB81FE4();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C8E15CC(uint64_t *a1)
{
  v3 = *(type metadata accessor for PMAppRootNavigationView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21C8DBCC0(a1, v4, v5, v6);
}

unint64_t sub_21C8E1640()
{
  result = qword_27CDF0110;
  if (!qword_27CDF0110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0020, &qword_21CBAE1E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0018, &qword_21CBAE1E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
    sub_21C8E0B80();
    sub_21C8E0FDC();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF0118, &qword_27CDF00F8, &qword_21CBAE368, &unk_21CBAA4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0110);
  }

  return result;
}

unint64_t sub_21C8E1778()
{
  result = qword_27CDF0140;
  if (!qword_27CDF0140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0138, &qword_21CBC0840);
    sub_21C722F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0140);
  }

  return result;
}

uint64_t sub_21C8E17FC(void *a1)
{
  v3 = *(type metadata accessor for PMAppRootNavigationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C8DADEC(a1, v4);
}

uint64_t sub_21C8E1888(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppRootNavigationView(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21C8DAFE8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_21C8E19D4(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppRootNavigationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C702EFC;

  return sub_21C8DBE28(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_21C8E1BB4()
{
  result = qword_27CDF01C8;
  if (!qword_27CDF01C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF01A8, &qword_21CBAE628);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF01D0, &qword_21CBAE638);
    sub_21CB826C4();
    sub_21C8E1C9C();
    swift_getOpaqueTypeConformance2();
    sub_21C7295E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF01C8);
  }

  return result;
}

unint64_t sub_21C8E1C9C()
{
  result = qword_27CDF01D8;
  if (!qword_27CDF01D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF01D0, &qword_21CBAE638);
    sub_21C8E1D58();
    sub_21C71B768(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF01D8);
  }

  return result;
}

unint64_t sub_21C8E1D58()
{
  result = qword_27CDF01E0;
  if (!qword_27CDF01E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF01E8, &qword_21CBAE640);
    sub_21C8E1DDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF01E0);
  }

  return result;
}

unint64_t sub_21C8E1DDC()
{
  result = qword_27CDF01F0;
  if (!qword_27CDF01F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF01F8, &qword_21CBAE648);
    sub_21C8E1E68();
    sub_21C72943C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF01F0);
  }

  return result;
}

unint64_t sub_21C8E1E68()
{
  result = qword_27CDF0200;
  if (!qword_27CDF0200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0208, &qword_21CBAE650);
    sub_21C8E1EF4();
    sub_21C729350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0200);
  }

  return result;
}

unint64_t sub_21C8E1EF4()
{
  result = qword_27CDF0210;
  if (!qword_27CDF0210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0218, &qword_21CBAE658);
    sub_21C6EADEC(&qword_27CDF0220, &qword_27CDF0228, &qword_21CBAE660, MEMORY[0x277CDE158]);
    sub_21C6EADEC(&qword_27CDF0230, &qword_27CDF0238, &qword_21CBAE668, MEMORY[0x277CE1148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0210);
  }

  return result;
}

unint64_t sub_21C8E1FD8()
{
  result = qword_27CDF02A8;
  if (!qword_27CDF02A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF02B0, &qword_21CBAE690);
    sub_21C729668();
    sub_21C7297A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF02A8);
  }

  return result;
}

uint64_t sub_21C8E2064@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMAppRootNavigationView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C8DDF74(a1, v6, a2);
}

uint64_t sub_21C8E2178(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C8E21DC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v20 = *v1;
  v21 = v3;
  v22 = *(v1 + 4);
  v4 = v1[1];
  v17 = *v1;
  v18 = v4;
  v19 = *(v1 + 4);
  v5 = sub_21C8E23BC();
  v7 = v6;
  v8 = swift_allocObject();
  v9 = v21;
  *(v8 + 16) = v20;
  *(v8 + 32) = v9;
  *(v8 + 48) = v22;
  v15 = v5;
  v16 = v7;
  sub_21C8E2FA8(&v20, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB84DA4();

  v17 = v20;
  v18 = v21;
  v19 = v22;
  LOBYTE(v7) = sub_21C8E2AEC();
  v11 = swift_allocObject();
  *(v11 + 16) = (v7 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  v13 = (a1 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = sub_21C735744;
  v13[2] = v11;
  return result;
}

uint64_t sub_21C8E23BC()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_21C8E2500(uint64_t *a1)
{
  v39 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v39);
  v36 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = (&v34 - v5);
  v38 = type metadata accessor for PMAccount(0);
  v7 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v35 = &v34 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = a1[4];
  v34 = a1;
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v16 = *a1;
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(v16, v41);

    swift_getKeyPath(byte_21CBAE9E8);
    swift_getKeyPath(byte_21CBAEA10);
    sub_21CB81DB4();

    v15 = v41;
  }

  v17 = *(v15 + 16);

  v40 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v18 >= *(v15 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        swift_once();
        goto LABEL_31;
      }

      v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v1 = *(v7 + 72);
      sub_21C80EABC(v15 + v20 + v1 * v18, v13, type metadata accessor for PMAccount);
      sub_21C80EABC(&v13[*(v38 + 24)], v6, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C7190C0(v6, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v21 = *v6;
        v22 = [*v6 canBeExportedViaCredentialExchange];

        if (v22)
        {
          sub_21C7D4AC0(v13, v37);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v41 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21C7B0C4C(0, *(v19 + 16) + 1, 1);
            v19 = v41;
          }

          v24 = v19;
          v25 = *(v19 + 16);
          v26 = *(v24 + 24);
          if (v25 >= v26 >> 1)
          {
            sub_21C7B0C4C((v26 > 1), v25 + 1, 1);
            v24 = v41;
          }

          *(v24 + 16) = v25 + 1;
          sub_21C7D4AC0(v37, v24 + v20 + v25 * v1);
          v19 = v24;
          goto LABEL_10;
        }
      }

      sub_21C7190C0(v13, type metadata accessor for PMAccount);
LABEL_10:
      if (v40 == ++v18)
      {
        goto LABEL_20;
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_20:
  v1 = v19;
  v27 = 0;
  v29 = v35;
  v28 = v36;
  while (1)
  {
    if (v40 == v27)
    {

      v32 = v34[1];
      if (qword_27CDEA4C0 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C72A898(v32, v41);

      sub_21C9903F0(v1);
    }

    if (v27 >= *(v15 + 16))
    {
      goto LABEL_34;
    }

    sub_21C80EABC(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v27, v29, type metadata accessor for PMAccount);
    sub_21C80EABC(v29 + *(v38 + 24), v28, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    ++v27;
    v30 = *v28;
    v31 = [*v28 canBeExportedViaCredentialExchange];

    sub_21C7190C0(v29, type metadata accessor for PMAccount);
    if ((v31 & 1) == 0)
    {

      goto LABEL_30;
    }
  }

  sub_21C7190C0(v29, type metadata accessor for PMAccount);
  sub_21C7190C0(v28, type metadata accessor for PMAccount.Storage);
LABEL_30:
  v15 = v34[1];
  if (qword_27CDEA4C0 != -1)
  {
    goto LABEL_35;
  }

LABEL_31:
  sub_21CB86544();
  sub_21C72A898(v15, v41);

  sub_21C9905E8(v1);
}

uint64_t sub_21C8E2AEC()
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = (&v26 - v5);
  v7 = type metadata accessor for PMAccount(0);
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v26 - v12;
  v27 = *v0;
  v14 = v0[4];
  swift_getKeyPath(byte_21CBAE9C8);

  sub_21CB81DB4();

  if (v29 != 1)
  {
    return 0;
  }

  if (!v14)
  {
    if (qword_27CDEA4C0 != -1)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v9 = *(v14 + 16);
  if (!v9)
  {
    return 0;
  }

  v15 = 0;
  v16 = *(v7 + 24);
  v7 = v14 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
  while (v15 < *(v14 + 16))
  {
    sub_21C80EABC(v7 + *(v28 + 72) * v15, v13, type metadata accessor for PMAccount);
    sub_21C80EABC(&v13[v16], v6, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C7190C0(v13, type metadata accessor for PMAccount);
      sub_21C7190C0(v6, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v17 = *v6;
      v3 = [*v6 canBeExportedViaCredentialExchange];

      sub_21C7190C0(v13, type metadata accessor for PMAccount);
      if (v3)
      {
        return 1;
      }
    }

    if (v9 == ++v15)
    {
      return 0;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_13:
    sub_21CB86544();
    sub_21C7072A8(v27, v29);

    swift_getKeyPath(byte_21CBAE9E8);
    swift_getKeyPath(byte_21CBAEA10);
    sub_21CB81DB4();

    v19 = v29;
    v20 = *(v29 + 16);
    if (!v20)
    {
      break;
    }

    v21 = 0;
    v22 = *(v7 + 24);
    v7 = v29 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    while (v21 < *(v19 + 16))
    {
      sub_21C80EABC(v7 + *(v28 + 72) * v21, v9, type metadata accessor for PMAccount);
      sub_21C80EABC(&v9[v22], v3, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C7190C0(v9, type metadata accessor for PMAccount);
        sub_21C7190C0(v3, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v23 = *v3;
        v24 = [*v3 canBeExportedViaCredentialExchange];

        sub_21C7190C0(v9, type metadata accessor for PMAccount);
        if (v24)
        {
          v25 = 1;
          goto LABEL_22;
        }
      }

      if (v20 == ++v21)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_21:
  v25 = 0;
LABEL_22:

  return v25;
}

PasswordManagerUI::PMQuickAction_optional __swiftcall PMQuickAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21CB86244();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PMQuickAction.rawValue.getter()
{
  v1 = 0x686372616573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x777373615077656ELL;
  }
}

uint64_t sub_21C8E30A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x686372616573;
  v5 = 0x800000021CB89FB0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000021CB89FB0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x777373615077656ELL;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xEB0000000064726FLL;
  }

  v8 = 0x686372616573;
  if (*a2 == 1)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x777373615077656ELL;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEB0000000064726FLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21CB86344();
  }

  return v11 & 1;
}

unint64_t sub_21C8E319C()
{
  result = qword_27CDF0350;
  if (!qword_27CDF0350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0350);
  }

  return result;
}

uint64_t sub_21C8E31F0()
{
  sub_21CB86484();
  sub_21CB854C4();

  return sub_21CB864D4();
}

uint64_t sub_21C8E329C(uint64_t a1)
{
  sub_21CB854C4();
}

uint64_t sub_21C8E3334(uint64_t a1)
{
  sub_21CB86484();
  sub_21CB854C4();

  return sub_21CB864D4();
}

void sub_21C8E33E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000064726FLL;
  v4 = 0xE600000000000000;
  v5 = 0x686372616573;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000021CB89FB0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x777373615077656ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21C8E3494@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v49 = sub_21CB85114();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v46 = &v40 - v3;
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0378, &qword_21CBAEB90);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0380, &qword_21CBAEB98);
  v41 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v15 = &v40 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0388, &qword_21CBAEBA0);
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v53 = &v40 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0390, &qword_21CBAEBA8);
  MEMORY[0x28223BE20](v43);
  v42 = &v40 - v17;
  sub_21C8E3C20(v13);
  sub_21CB81014();
  sub_21CB81014();
  v18 = sub_21CB80FF4();
  v20 = v19;
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  v55 = v18;
  v56 = v20;
  v22 = sub_21C8EF670();
  v23 = sub_21C71F3FC();
  v24 = MEMORY[0x277D837D0];
  sub_21CB842F4();

  sub_21C6EA794(v13, &qword_27CDF0378, &qword_21CBAEB90);
  sub_21CB85184();
  v54 = v51;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0480, &qword_21CBAEC30);
  v55 = v11;
  v56 = v24;
  v57 = v22;
  v58 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v52;
  v55 = v52;
  v56 = v24;
  v57 = OpaqueTypeConformance2;
  v58 = v23;
  v39 = swift_getOpaqueTypeConformance2();
  sub_21CB84974();
  (*(v41 + 8))(v15, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v27 = v55;
  swift_getKeyPath(byte_21CBAEC38);
  v55 = v27;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v28 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
  swift_beginAccess();
  v29 = v46;
  v30 = v47;
  v31 = v49;
  (*(v47 + 16))(v46, v27 + v28, v49);

  v32 = v48;
  (*(v30 + 104))(v48, *MEMORY[0x277CDF0D0], v31);
  sub_21CB850F4();
  v33 = *(v30 + 8);
  v33(v32, v31);
  v33(v29, v31);
  v55 = v52;
  v56 = MEMORY[0x277CE1350];
  v57 = v40;
  v58 = OpaqueTypeConformance2;
  v59 = MEMORY[0x277CE1340];
  v60 = v39;
  swift_getOpaqueTypeConformance2();
  v34 = v42;
  v35 = v44;
  v36 = v53;
  sub_21CB84674();
  (*(v45 + 8))(v36, v35);
  *(v34 + *(v43 + 36)) = 1;
  sub_21CB85084();
  v37 = v55;
  type metadata accessor for PMAppSecurityRecommendationsModel(0);
  sub_21CB81124();
  v55 = v37;
  sub_21C8EFFC4();
  sub_21CB84394();

  sub_21C6EA794(v34, &qword_27CDF0390, &qword_21CBAEBA8);
}

uint64_t sub_21C8E3C20@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0478, &unk_21CBB2E10);
  v15 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0490, &qword_21CBAECD8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF03B8, &qword_21CBAEBB8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v10 = v17;
  swift_getKeyPath(byte_21CBAECE0);
  v17 = v10;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v11 = *(v10 + 73);

  if (v11 == 1)
  {
    sub_21C8E3F88(v9);
    sub_21C6EDBAC(v9, v6, &qword_27CDF03B8, &qword_21CBAEBB8);
    swift_storeEnumTagMultiPayload();
    sub_21C8EF7AC();
    sub_21C6EADEC(&qword_27CDF0470, &qword_27CDF0478, &unk_21CBB2E10, MEMORY[0x277CDD7F8]);
    sub_21CB83494();
    return sub_21C6EA794(v9, &qword_27CDF03B8, &qword_21CBAEBB8);
  }

  else
  {
    sub_21CB82234();
    v13 = v15;
    (*(v15 + 16))(v6, v3, v1);
    swift_storeEnumTagMultiPayload();
    sub_21C8EF7AC();
    sub_21C6EADEC(&qword_27CDF0470, &qword_27CDF0478, &unk_21CBB2E10, MEMORY[0x277CDD7F8]);
    sub_21CB83494();
    return (*(v13 + 8))(v3, v1);
  }
}

uint64_t sub_21C8E3F88@<X0>(uint64_t a1@<X8>)
{
  v172 = a1;
  v2 = type metadata accessor for PMAppSecurityRecommendationsList(0);
  v174 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v179 = v3;
  v182 = &v141 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  *&v181 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v178 = &v141 - v4;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0458, &qword_21CBAEC18);
  v148 = *(v149 - 1);
  MEMORY[0x28223BE20](v149);
  v147 = &v141 - v5;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0450, &qword_21CBAEC10);
  MEMORY[0x28223BE20](v150);
  v173 = (&v141 - v6);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0440, &qword_21CBAEC08);
  MEMORY[0x28223BE20](v152);
  v153 = &v141 - v7;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0430, &qword_21CBAEC00);
  MEMORY[0x28223BE20](v151);
  v154 = &v141 - v8;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0418, &qword_21CBAEBF8);
  MEMORY[0x28223BE20](v176);
  v155 = &v141 - v9;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0408, &qword_21CBAEBE8);
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v157 = &v141 - v10;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0498, &qword_21CBAED08);
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v177 = &v141 - v11;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0400, &qword_21CBAEBE0);
  MEMORY[0x28223BE20](v156);
  v163 = &v141 - v12;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF03F0, &qword_21CBAEBD8);
  MEMORY[0x28223BE20](v162);
  v165 = &v141 - v13;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF03E0, &qword_21CBAEBD0);
  MEMORY[0x28223BE20](v171);
  v164 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v166 = &v141 - v16;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF04A0, &qword_21CBAED10);
  MEMORY[0x28223BE20](v168);
  v170 = &v141 - v17;
  v18 = type metadata accessor for PMEmptyStateDetailView.Source(0);
  MEMORY[0x28223BE20](v18 - 8);
  v142 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for PMEmptyStateDetailView(0);
  MEMORY[0x28223BE20](v167);
  v143 = (&v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF04A8, &unk_21CBAED18);
  v145 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v144 = &v141 - v21;
  v22 = sub_21CB83834();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v146 = &v141 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = &v141 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v29 - 8);
  *&v175 = &v141 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v141 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v141 - v35;
  v183 = v1;
  sub_21C728D50(&v141 - v35);
  (*(v23 + 104))(v33, *MEMORY[0x277CE0558], v22);
  (*(v23 + 56))(v33, 0, 1, v22);
  v37 = *(v26 + 56);
  sub_21C6EDBAC(v36, v28, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v33, &v28[v37], &qword_27CDEC390, &qword_21CBA40E0);
  v38 = *(v23 + 48);
  if (v38(v28, 1, v22) != 1)
  {
    sub_21C6EDBAC(v28, v175, &qword_27CDEC390, &qword_21CBA40E0);
    if (v38(&v28[v37], 1, v22) != 1)
    {
      v39 = &v28[v37];
      v40 = v146;
      (*(v23 + 32))(v146, v39, v22);
      sub_21C8F132C(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v41 = v175;
      v42 = sub_21CB85574();
      v43 = *(v23 + 8);
      v43(v40, v22);
      sub_21C6EA794(v33, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v36, &qword_27CDEC390, &qword_21CBA40E0);
      v43(v41, v22);
      sub_21C6EA794(v28, &qword_27CDEC390, &qword_21CBA40E0);
      if ((v42 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    sub_21C6EA794(v33, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v36, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v23 + 8))(v175, v22);
LABEL_6:
    sub_21C6EA794(v28, &qword_27CDEE530, &unk_21CBA9D80);
    goto LABEL_12;
  }

  sub_21C6EA794(v33, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v36, &qword_27CDEC390, &qword_21CBA40E0);
  if (v38(&v28[v37], 1, v22) != 1)
  {
    goto LABEL_6;
  }

  sub_21C6EA794(v28, &qword_27CDEC390, &qword_21CBA40E0);
LABEL_8:
  sub_21CB85084();
  v44 = v184;
  *&v184 = v44;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v45 = *(v44 + 56);

  v46 = *(v45 + 16);

  if (!v46)
  {
    sub_21CB85084();
    v47 = v184;
    swift_getKeyPath(byte_21CBAED68);
    *&v184 = v47;
    sub_21CB810D4();

    v48 = *(v47 + 16);
    v49 = *(v47 + 24);

    v50 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v50 = v48 & 0xFFFFFFFFFFFFLL;
    }

    if (!v50)
    {
      v128 = sub_21CB85C44();
      v129 = v142;
      (*(*(v128 - 8) + 56))(v142, 5, 6, v128);
      v130 = v143;
      v131 = sub_21C9E14F8(v129, 1, v143);
      MEMORY[0x28223BE20](v131);
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF03C0, &qword_21CBAEBC0);
      v133 = sub_21C8F132C(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
      v134 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF03C8, &qword_21CBAEBC8);
      v135 = sub_21C6EADEC(&qword_27CDF03D0, &qword_27CDF03C8, &qword_21CBAEBC8, MEMORY[0x277CDDF68]);
      *&v184 = v134;
      *(&v184 + 1) = v135;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v137 = v144;
      v138 = v167;
      sub_21CB84894();
      sub_21C8F0E2C(v130, type metadata accessor for PMEmptyStateDetailView);
      v139 = v145;
      v140 = v169;
      (*(v145 + 16))(v170, v137, v169);
      swift_storeEnumTagMultiPayload();
      *&v184 = v138;
      *(&v184 + 1) = v132;
      *&v185 = v133;
      *(&v185 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      sub_21C8EF93C();
      sub_21CB83494();
      return (*(v139 + 8))(v137, v140);
    }
  }

LABEL_12:
  v51 = v178;
  v52 = v180;
  sub_21CB85094();
  sub_21CB850B4();

  v53 = v181 + 8;
  v54 = *(v181 + 8);
  v55 = v54(v51, v52);
  *&v181 = &v141;
  MEMORY[0x28223BE20](v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF04B0, &qword_21CBAED28);
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF04B8, &qword_21CBAED30);
  v57 = sub_21C8F0198();
  v190 = v56;
  v191 = v57;
  swift_getOpaqueTypeConformance2();
  v58 = v147;
  sub_21CB83F14();
  sub_21C6EADEC(&qword_27CDF0460, &qword_27CDF0458, &qword_21CBAEC18, MEMORY[0x277CDE5A0]);
  v59 = v173;
  v60 = v149;
  sub_21CB845F4();
  (*(v148 + 8))(v58, v60);
  sub_21CB85094();
  swift_getKeyPath(byte_21CBAED68);
  sub_21CB850B4();

  *&v181 = v53;
  v149 = v54;
  v54(v51, v52);
  v61 = v59;
  v175 = v184;
  v62 = v185;
  v63 = (v59 + *(v150 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v64 = type metadata accessor for PMContentListSearchable(0);
  v65 = *(v64 + 20);
  type metadata accessor for PMAppRootNavigationModel(0);
  sub_21C8F132C(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  v66 = v183;
  sub_21CB821F4();
  v67 = (v63 + *(v64 + 28));
  *v67 = v175;
  v67[1] = v62;
  sub_21CB85084();
  v68 = v184;
  *&v184 = v68;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v69 = *(v68 + 96);

  v70 = *(v69 + 16);

  if (v70)
  {
    v71 = v182;
    sub_21C8F1824(v66, v182, type metadata accessor for PMAppSecurityRecommendationsList);
    v72 = v174;
    v73 = (*(v174 + 80) + 16) & ~*(v174 + 80);
    v70 = swift_allocObject();
    sub_21C8F0DC4(v71, v70 + v73, type metadata accessor for PMAppSecurityRecommendationsList);
    v74 = sub_21C8F0508;
  }

  else
  {
    v74 = 0;
    v71 = v182;
    v72 = v174;
  }

  v75 = v153;
  sub_21C716934(v61, v153, &qword_27CDF0450, &qword_21CBAEC10);
  v76 = (v75 + *(v152 + 36));
  *v76 = v74;
  v76[1] = v70;
  v78 = v154;
  sub_21C716934(v75, v154, &qword_27CDF0440, &qword_21CBAEC08);
  v79 = (v78 + *(v151 + 9));
  *v79 = KeyPath;
  v79[1] = 0;
  *&v175 = type metadata accessor for PMAppSecurityRecommendationsList;
  sub_21C8F1824(v66, v71, type metadata accessor for PMAppSecurityRecommendationsList);
  v174 = *(v72 + 80);
  v80 = (v174 + 16) & ~v174;
  v81 = swift_allocObject();
  v173 = type metadata accessor for PMAppSecurityRecommendationsList;
  sub_21C8F0DC4(v71, v81 + v80, type metadata accessor for PMAppSecurityRecommendationsList);
  v82 = v78;
  v83 = v155;
  v84 = sub_21C716934(v82, v155, &qword_27CDF0430, &qword_21CBAEC00);
  v151 = &v141;
  v85 = (v83 + *(v176 + 36));
  *v85 = sub_21C8F0510;
  v85[1] = v81;
  v85[2] = 0;
  v85[3] = 0;
  MEMORY[0x28223BE20](v84);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF03C0, &qword_21CBAEBC0);
  v87 = sub_21C8EFCC0();
  v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF03C8, &qword_21CBAEBC8);
  v89 = sub_21C6EADEC(&qword_27CDF03D0, &qword_27CDF03C8, &qword_21CBAEBC8, MEMORY[0x277CDDF68]);
  *&v184 = v88;
  *(&v184 + 1) = v89;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = v157;
  v92 = v176;
  v154 = v86;
  v93 = v87;
  v94 = v90;
  v153 = v90;
  sub_21CB84894();
  sub_21C6EA794(v83, &qword_27CDF0418, &qword_21CBAEBF8);
  v95 = v182;
  sub_21C8F1824(v66, v182, v175);
  v152 = v80;
  v96 = swift_allocObject();
  sub_21C8F0DC4(v95, v96 + v80, v173);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0410, &qword_21CBAEBF0);
  *&v184 = v92;
  *(&v184 + 1) = v86;
  *&v185 = v93;
  *(&v185 + 1) = v94;
  v176 = MEMORY[0x277CDEEF8];
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDF0468, &qword_27CDF0410, &qword_21CBAEBF0, MEMORY[0x277CE14C0]);
  v97 = v159;
  sub_21CB84144();

  (*(v158 + 8))(v91, v97);
  v98 = swift_getKeyPath(byte_21CBAEE18);
  v99 = v163;
  v100 = &v163[*(v156 + 36)];
  v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  v102 = v178;
  v103 = v180;
  v104 = v183;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBAEC38);
  sub_21CB850B4();

  v105 = v149;
  (v149)(v102, v103);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v106 - 8) + 56))(v100 + v101, 0, 1, v106);
  *v100 = v98;
  (*(v160 + 32))(v99, v177, v161);
  sub_21CB85094();
  swift_getKeyPath(byte_21CBAEE50);
  sub_21CB850B4();

  v107 = v105(v102, v103);
  v108 = v190;
  v109 = v191;
  v110 = v192;
  *&v111 = MEMORY[0x28223BE20](v107).n128_u64[0];
  swift_getKeyPath(byte_21CBAEE78, v111);
  v187 = v108;
  v188 = v109;
  v189 = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBB0, &qword_21CBAAC70);
  sub_21CB84F44();

  v180 = v185;
  v181 = v184;
  v112 = v186;

  v113 = v182;
  sub_21C8F1824(v104, v182, v175);
  v114 = v152;
  v115 = swift_allocObject();
  sub_21C8F0DC4(v113, v115 + v114, v173);
  v116 = v165;
  sub_21C716934(v99, v165, &qword_27CDF0400, &qword_21CBAEBE0);
  v117 = v116 + *(v162 + 36);
  v118 = v180;
  *v117 = v181;
  *(v117 + 16) = v118;
  *(v117 + 32) = v112;
  *(v117 + 40) = &unk_21CBAEED0;
  *(v117 + 48) = v115;
  v119 = sub_21CB85214();
  v121 = v120;
  v122 = v164;
  v123 = &v164[*(v171 + 36)];
  sub_21C8E990C(v123);
  v124 = (v123 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF70, &qword_21CBA3990) + 36));
  *v124 = v119;
  v124[1] = v121;
  sub_21C716934(v116, v122, &qword_27CDF03F0, &qword_21CBAEBD8);
  v125 = v166;
  sub_21C716934(v122, v166, &qword_27CDF03E0, &qword_21CBAEBD0);
  sub_21C6EDBAC(v125, v170, &qword_27CDF03E0, &qword_21CBAEBD0);
  swift_storeEnumTagMultiPayload();
  v126 = sub_21C8F132C(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
  *&v184 = v167;
  *(&v184 + 1) = v154;
  *&v185 = v126;
  *(&v185 + 1) = v153;
  swift_getOpaqueTypeConformance2();
  sub_21C8EF93C();
  sub_21CB83494();
  return sub_21C6EA794(v125, &qword_27CDF03E0, &qword_21CBAEBD0);
}

uint64_t sub_21C8E5AC0()
{
  sub_21C8E5BAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0380, &qword_21CBAEB98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0378, &qword_21CBAEB90);
  sub_21C8EF670();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  sub_21CB84444();
}

uint64_t sub_21C8E5BAC()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v76 = v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v75 = v71 - v5;
  MEMORY[0x28223BE20](v6);
  v74 = v71 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = v71 - v9;
  MEMORY[0x28223BE20](v11);
  v81 = v71 - v12;
  MEMORY[0x28223BE20](v13);
  v80 = v71 - v14;
  v15 = sub_21CB85114();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v71 - v20;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  v79 = v0;
  sub_21CB85084();
  v22 = v83;
  swift_getKeyPath(byte_21CBAEC38);
  v83 = v22;
  v77 = sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v23 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
  swift_beginAccess();
  (*(v16 + 16))(v21, v22 + v23, v15);

  (*(v16 + 104))(v18, *MEMORY[0x277CDF0D0], v15);
  LOBYTE(v23) = sub_21CB850F4();
  v24 = *(v16 + 8);
  v24(v18, v15);
  v24(v21, v15);
  if (v23)
  {
    sub_21CB81014();
    sub_21CB81014();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
    v73 = sub_21CB81034();
    v25 = *(v73 - 8);
    v72 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v26 = swift_allocObject();
    sub_21CB81014();
    v27 = v74;
    sub_21CB81014();
    v28 = v75;
    sub_21CB81014();
    v29 = v76;
    sub_21CB81014();
    v30 = v72;
    sub_21CB80FE4();
    v31 = *(v2 + 8);
    v31(v29, v1);
    v31(v28, v1);
    v31(v27, v1);
    v31(v10, v1);
    swift_setDeallocating();
    (*(v25 + 8))(v26 + v30, v73);
    swift_deallocClassInstance();
    v32 = v80;
    sub_21CB81004();
    v31(v81, v1);
    v31(v32, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_21CBA0690;
    sub_21CB85084();
    v34 = v82;
    v82 = v34;
    sub_21CB810D4();

    v35 = *(v34 + 96);

    v36 = *(v35 + 16);

    v37 = MEMORY[0x277D83C10];
    *(v33 + 56) = MEMORY[0x277D83B88];
    *(v33 + 64) = v37;
    *(v33 + 32) = v36;
  }

  else
  {
    v38 = v74;
    v39 = v75;
    v72 = v2;
    v73 = v1;
    sub_21CB85084();
    v40 = v82;
    v82 = v40;
    sub_21CB810D4();

    v41 = *(v40 + 72);

    if (v41 == 1 && (sub_21CB85084(), v42 = sub_21C902F8C(), , v42 >= 1))
    {
      sub_21CB81014();
      sub_21CB81014();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
      v71[1] = sub_21CB81034();
      v71[0] = swift_allocObject();
      sub_21CB81014();
      sub_21CB81014();
      v43 = v39;
      sub_21CB81014();
      v44 = v76;
      sub_21CB81014();
      sub_21CB80FE4();
      v45 = v73;
      v46 = *(v72 + 8);
      v46(v44, v73);
      v46(v43, v45);
      v46(v38, v45);
      v46(v10, v45);
      sub_21CB81014();
      sub_21CB81014();
      sub_21CB81014();
      sub_21CB81014();
      sub_21CB80FE4();
      v46(v44, v45);
      v46(v43, v45);
      v46(v38, v45);
      v46(v10, v45);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v47 = v80;
      sub_21CB81004();
      v46(v81, v45);
      v46(v47, v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_21CBA15B0;
      sub_21CB85084();
      v49 = v82;
      v82 = v49;
      sub_21CB810D4();

      v50 = *(v49 + 56);

      v51 = *(v50 + 16);

      v52 = MEMORY[0x277D83B88];
      v53 = MEMORY[0x277D83C10];
      *(v48 + 56) = MEMORY[0x277D83B88];
      *(v48 + 64) = v53;
      *(v48 + 32) = v51;
      sub_21CB85084();
      v54 = sub_21C902F8C();

      *(v48 + 96) = v52;
      *(v48 + 104) = v53;
      *(v48 + 72) = v54;
    }

    else
    {
      sub_21CB81014();
      sub_21CB81014();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
      v55 = sub_21CB81034();
      v56 = *(v55 - 8);
      v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v58 = swift_allocObject();
      sub_21CB81014();
      sub_21CB81014();
      sub_21CB81014();
      v59 = v76;
      sub_21CB81014();
      sub_21CB80FE4();
      v60 = *(v72 + 8);
      v61 = v59;
      v62 = v73;
      v60(v61, v73);
      v60(v39, v62);
      v60(v38, v62);
      v60(v10, v62);
      swift_setDeallocating();
      (*(v56 + 8))(v58 + v57, v55);
      swift_deallocClassInstance();
      v63 = v80;
      sub_21CB81004();
      v60(v81, v62);
      v60(v63, v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_21CBA0690;
      sub_21CB85084();
      v65 = v82;
      v82 = v65;
      sub_21CB810D4();

      v66 = *(v65 + 56);

      v67 = *(v66 + 16);

      v68 = MEMORY[0x277D83C10];
      *(v64 + 56) = MEMORY[0x277D83B88];
      *(v64 + 64) = v68;
      *(v64 + 32) = v67;
    }
  }

  v69 = sub_21CB85594();

  return v69;
}

uint64_t sub_21C8E6948@<X0>(uint64_t a1@<X8>)
{
  v140 = a1;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0528, &qword_21CBAEED8);
  MEMORY[0x28223BE20](v139);
  v138 = &v97 - v2;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0530, &qword_21CBAEEE0);
  MEMORY[0x28223BE20](v119);
  v117 = &v97 - v3;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0538, &qword_21CBAEEE8);
  v122 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v121 = &v97 - v4;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0540, &qword_21CBAEEF0);
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v135 = &v97 - v5;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC010, &qword_21CBAA950);
  v116 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v133 = &v97 - v6;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB60, &qword_21CBACD30);
  v115 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v131 = &v97 - v7;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0548, &qword_21CBAEEF8);
  MEMORY[0x28223BE20](v111);
  v109 = &v97 - v8;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0550, &unk_21CBAEF00);
  v114 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v113 = &v97 - v9;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC030, &qword_21CBA3AB8);
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v108 = &v97 - v10;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA88, &qword_21CBAEF10);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v97 - v11;
  v12 = sub_21CB85114();
  v129 = *(v12 - 8);
  v130 = v12;
  MEMORY[0x28223BE20](v12);
  v128 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v127 = &v97 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0558, &qword_21CBAEF18);
  MEMORY[0x28223BE20](v16 - 8);
  v142 = &v97 - v17;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0560, &qword_21CBAEF20);
  v101 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v19 = &v97 - v18;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0568, &qword_21CBAEF28);
  MEMORY[0x28223BE20](v103);
  v21 = &v97 - v20;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0570, &qword_21CBAEF30);
  v99 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v104 = &v97 - v22;
  v23 = sub_21CB822D4();
  MEMORY[0x28223BE20](v23 - 8);
  v102 = sub_21CB824D4();
  v100 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v98 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_21CB83604();
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0578, &qword_21CBAEF38);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v97 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0580, &qword_21CBAEF40);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v97 - v33;
  v141 = v1;
  v35 = sub_21C8EC1C8();
  v126 = v34;
  v123 = v27;
  if (v35)
  {
    MEMORY[0x28223BE20](v35);
    *(&v97 - 2) = v141;
    sub_21CB835E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF05B8, &qword_21CBAEF50);
    sub_21C8F070C();
    sub_21CB82194();
    sub_21CB835E4();
    sub_21CB822C4();
    v36 = v98;
    sub_21CB824E4();
    v37 = *(v103 + 48);
    (*(v29 + 16))(v21, v31, v28);
    v101 = v28;
    v38 = v100;
    v39 = v102;
    (*(v100 + 16))(&v21[v37], v36, v102);
    v40 = v104;
    sub_21CB83394();
    v41 = sub_21C6EADEC(&qword_27CDF0590, &qword_27CDF0570, &qword_21CBAEF30, MEMORY[0x277CDDF68]);
    v42 = sub_21C8F0690();
    v143 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
    v144 = v42;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v44 = v124;
    MEMORY[0x21CF131F0](v40, v124, v125, v41, OpaqueTypeConformance2);
    (*(v99 + 8))(v40, v44);
    (*(v38 + 8))(v36, v39);
    (*(v29 + 8))(v31, v101);
  }

  else
  {
    v45 = sub_21C8F0690();
    MEMORY[0x21CF131E0](v45, &type metadata for PMAppSeamlessToolbarItemPlaceholder, v45);
    v46 = sub_21C6EADEC(&qword_27CDF0590, &qword_27CDF0570, &qword_21CBAEF30, MEMORY[0x277CDDF68]);
    v143 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
    v144 = v45;
    v47 = swift_getOpaqueTypeConformance2();
    v48 = v125;
    MEMORY[0x21CF13200](v19, v124, v125, v46, v47);
    (*(v101 + 8))(v19, v48);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  v49 = v141;
  sub_21CB85084();
  v50 = v143;
  swift_getKeyPath(byte_21CBAEC38);
  v143 = v50;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v51 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
  swift_beginAccess();
  v53 = v129;
  v52 = v130;
  v54 = v127;
  (*(v129 + 16))(v127, v50 + v51, v130);

  v55 = v128;
  (*(v53 + 104))(v128, *MEMORY[0x277CDF0D8], v52);
  LOBYTE(v50) = sub_21CB850F4();
  v56 = *(v53 + 8);
  v56(v55, v52);
  v57 = (v56)(v54, v52);
  v58 = v49;
  if (v50)
  {
    MEMORY[0x28223BE20](v57);
    *(&v97 - 2) = v49;
    sub_21CB835E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
    sub_21C844588();
    v59 = v105;
    sub_21CB82194();
    sub_21CB835F4();
    sub_21CB831C4();
    sub_21C8F132C(&qword_27CDEC048, MEMORY[0x277CDDEB0], MEMORY[0x277CDDEA8]);
    v60 = v108;
    sub_21CB82AA4();
    v61 = *(v111 + 48);
    v62 = v106;
    v63 = v109;
    v64 = v107;
    (*(v106 + 16))(v109, v59, v107);
    v65 = v110;
    v66 = v112;
    (*(v110 + 16))(&v63[v61], v60, v112);
    v67 = v113;
    sub_21CB83394();
    v68 = MEMORY[0x277CDDF68];
    v69 = sub_21C6EADEC(&qword_27CDF05A8, &qword_27CDF0550, &unk_21CBAEF00, MEMORY[0x277CDDF68]);
    v70 = sub_21C6EADEC(&qword_27CDF05B0, &qword_27CDF0538, &qword_21CBAEEE8, v68);
    v71 = v136;
    MEMORY[0x21CF131F0](v67, v136, v137, v69, v70);
    (*(v114 + 8))(v67, v71);
    (*(v65 + 8))(v60, v66);
    v72 = v64;
    v73 = v126;
    (*(v62 + 8))(v59, v72);
  }

  else
  {
    v74 = sub_21CB83594();
    MEMORY[0x28223BE20](v74);
    *(&v97 - 2) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9D8, &unk_21CBAA9C0);
    sub_21C87C0A0();
    v75 = v131;
    sub_21CB82194();
    v76 = sub_21CB835D4();
    MEMORY[0x28223BE20](v76);
    *(&v97 - 2) = v49;
    type metadata accessor for PMPlatformRoleButton(0);
    sub_21C8F132C(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
    v77 = v133;
    sub_21CB82194();
    v78 = sub_21CB835F4();
    MEMORY[0x28223BE20](v78);
    *(&v97 - 2) = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0598, &qword_21CBAEF48);
    sub_21C6EADEC(&qword_27CDF05A0, &qword_27CDF0598, &qword_21CBAEF48, MEMORY[0x277CE14C0]);
    v79 = v135;
    sub_21CB82AA4();
    v80 = *(v119 + 48);
    v81 = *(v119 + 64);
    v82 = v115;
    v83 = v117;
    (*(v115 + 16))(v117, v75, v132);
    v84 = v116;
    (*(v116 + 16))(&v83[v80], v77, v134);
    v85 = v118;
    v86 = v120;
    (*(v118 + 16))(&v83[v81], v79, v120);
    v87 = v121;
    v73 = v126;
    sub_21CB83394();
    v88 = MEMORY[0x277CDDF68];
    v89 = sub_21C6EADEC(&qword_27CDF05A8, &qword_27CDF0550, &unk_21CBAEF00, MEMORY[0x277CDDF68]);
    v90 = sub_21C6EADEC(&qword_27CDF05B0, &qword_27CDF0538, &qword_21CBAEEE8, v88);
    v91 = v137;
    MEMORY[0x21CF13200](v87, v136, v137, v89, v90);
    (*(v122 + 8))(v87, v91);
    (*(v85 + 8))(v135, v86);
    (*(v84 + 8))(v133, v134);
    (*(v82 + 8))(v131, v132);
  }

  v92 = v138;
  v93 = *(v139 + 48);
  sub_21C6EDBAC(v73, v138, &qword_27CDF0580, &qword_21CBAEF40);
  v94 = v92 + v93;
  v95 = v142;
  sub_21C6EDBAC(v142, v94, &qword_27CDF0558, &qword_21CBAEF18);
  sub_21CB83394();
  sub_21C6EA794(v95, &qword_27CDF0558, &qword_21CBAEF18);
  return sub_21C6EA794(v73, &qword_27CDF0580, &qword_21CBAEF40);
}

uint64_t sub_21C8E7D10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF04B8, &qword_21CBAED30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-v4];
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF04D0, &qword_21CBAED38);
  sub_21C8F0228();
  sub_21CB85054();
  sub_21CB82334();
  sub_21C8F0198();
  sub_21CB84514();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21C8E7E54(uint64_t a1)
{
  v2 = type metadata accessor for PMAppSecurityRecommendationsList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v5 = *(v10 + 56);

  v10 = v5;
  sub_21C8F1824(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppSecurityRecommendationsList);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_21C8F0DC4(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PMAppSecurityRecommendationsList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED828, &qword_21CBAF0E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF04E0, &qword_21CBAED40);
  sub_21C6EADEC(&qword_27CDF0648, &qword_27CDED828, &qword_21CBAF0E0, MEMORY[0x277D83980]);
  sub_21C8F02AC();
  sub_21C8F12C4();
  return sub_21CB84FF4();
}

uint64_t sub_21C8E80C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0508, &qword_21CBAED58);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = v33 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF04E8, &qword_21CBAED48);
  MEMORY[0x28223BE20](v37);
  v35 = v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v33 - v9;
  v11 = type metadata accessor for PMAccount(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  v16 = a1[1];
  v17 = *(a1 + 16);
  v18 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  v36 = v3;
  sub_21CB85084();
  *&v39 = v15;
  *(&v39 + 1) = v16;
  LOBYTE(v40) = v17;
  *(&v40 + 1) = v18;
  sub_21C903054(&v39, v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21C6EA794(v10, &unk_27CDEBE60, &unk_21CB9FF40);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0658, &qword_21CBAF0E8);
    return (*(*(v19 - 8) + 56))(v38, 1, 1, v19);
  }

  else
  {
    v21 = sub_21C8F0DC4(v10, v14, type metadata accessor for PMAccount);
    v33[1] = v33;
    v22 = v14[1];
    *&v39 = *v14;
    *(&v39 + 1) = v22;
    MEMORY[0x28223BE20](v21);
    type metadata accessor for PMSecurityRecommendationsAccountRow(0);
    sub_21C8F132C(&qword_27CDF0660, type metadata accessor for PMSecurityRecommendationsAccountRow, &unk_21CBC9C54);

    v23 = v34;
    sub_21CB82614();
    [objc_opt_self() isPasswordsAppInstalled];
    sub_21CB85214();
    sub_21CB82AC4();
    v24 = v23;
    v25 = v35;
    v26 = sub_21C716934(v24, v35, &qword_27CDF0508, &qword_21CBAED58);
    v34 = v33;
    v27 = (v25 + *(v37 + 36));
    v28 = v44;
    v27[4] = v43;
    v27[5] = v28;
    v27[6] = v45;
    v29 = v40;
    *v27 = v39;
    v27[1] = v29;
    v30 = v42;
    v27[2] = v41;
    v27[3] = v30;
    MEMORY[0x28223BE20](v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF04F0, &qword_21CBAED50);
    sub_21C8F03CC();
    sub_21C6EADEC(&qword_27CDF0520, &qword_27CDF04F0, &qword_21CBAED50, MEMORY[0x277CE14C0]);
    v31 = v38;
    sub_21CB84204();
    sub_21C6EA794(v25, &qword_27CDF04E8, &qword_21CBAED48);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0658, &qword_21CBAF0E8);
    (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
    return sub_21C8F0E2C(v14, type metadata accessor for PMAccount);
  }
}

uint64_t sub_21C8E8690()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  sub_21C902240();
}

uint64_t sub_21C8E86E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF03C8, &qword_21CBAEBC8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  sub_21C8E6948(&v6 - v2);
  v4 = sub_21C6EADEC(&qword_27CDF03D0, &qword_27CDF03C8, &qword_21CBAEBC8, MEMORY[0x277CDDF68]);
  MEMORY[0x21CF131E0](v3, v0, v4);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21C8E8808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8D0, &unk_21CBA4AF0);
  v99 = *(v4 - 8);
  v100 = v4;
  MEMORY[0x28223BE20](v4);
  v93 = &v80 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8A8, &unk_21CBACF50);
  MEMORY[0x28223BE20](v6 - 8);
  v101 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v80 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0620, &unk_21CBAF060);
  MEMORY[0x28223BE20](v91);
  v92 = &v80 - v11;
  v12 = type metadata accessor for PMAppSecurityRecommendationsList(0);
  v85 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v86 = v13;
  v87 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF300, &qword_21CBABFA8);
  v84 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v80 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0628, &qword_21CBAF070);
  v95 = *(v15 - 8);
  v96 = v15;
  MEMORY[0x28223BE20](v15);
  v88 = &v80 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0630, &unk_21CBAF078);
  MEMORY[0x28223BE20](v17 - 8);
  v98 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v105 = &v80 - v20;
  v94 = type metadata accessor for PMChangePasswordOnWebsiteLink(0);
  v21 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v83 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v80 - v27;
  v29 = type metadata accessor for PMAccount(0);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0638, &qword_21CBAF088);
  MEMORY[0x28223BE20](a1);
  v97 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v80 - v36;
  v38 = *(v35 + 16);
  v102 = a2;
  v103 = &v80 - v36;
  if (v38 != 1)
  {
    v43 = 1;
    v44 = v35;
LABEL_7:
    v45 = v104;
    goto LABEL_8;
  }

  v82 = v10;
  v81 = v35;
  v39 = sub_21C713194(v35);
  if (!v40)
  {
    v43 = 1;
    v10 = v82;
    v44 = v81;
    goto LABEL_7;
  }

  v41 = v39;
  v42 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  sub_21C9031B4(v41, v42, v28);

  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_21C6EA794(v28, &unk_27CDEBE60, &unk_21CB9FF40);
    v43 = 1;
    v10 = v82;
    v44 = v81;
    v37 = v103;
    v45 = v104;
LABEL_8:
    v46 = v94;
    goto LABEL_9;
  }

  sub_21C8F0DC4(v28, v32, type metadata accessor for PMAccount);
  sub_21C8F1824(&v32[*(v29 + 24)], v25, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = v82;
  if (EnumCaseMultiPayload == 1)
  {
    sub_21C8F0E2C(v25, type metadata accessor for PMAccount.Storage);
    v37 = v103;
    v45 = v104;
LABEL_19:
    sub_21C8F0E2C(v32, type metadata accessor for PMAccount);
    v43 = 1;
    v44 = v81;
    goto LABEL_8;
  }

  v74 = *v25;
  v75 = [*v25 hasValidWebsite];

  v37 = v103;
  v45 = v104;
  if (!v75)
  {
    goto LABEL_19;
  }

  v76 = v94;
  v77 = v83;
  sub_21C8F0DC4(v32, &v83[*(v94 + 20)], type metadata accessor for PMAccount);
  *v77 = swift_getKeyPath(byte_21CBAF0A0);
  *(v77 + 8) = 0;
  *(v77 + 16) = 0;
  v78 = (v77 + v76[7]);
  v79 = (v77 + v76[9]);
  *(v77 + v76[6]) = 1;
  *v78 = 0;
  v78[1] = 0;
  *(v77 + v76[8]) = 0;
  *v79 = 0;
  v79[1] = 0;
  sub_21C8F0DC4(v77, v37, type metadata accessor for PMChangePasswordOnWebsiteLink);
  v46 = v76;
  v43 = 0;
  v44 = v81;
LABEL_9:
  v47 = 1;
  (*(v21 + 56))(v37, v43, 1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v48 = sub_21C900CCC(v44);

  if (v48 != 2)
  {
    v49 = v87;
    sub_21C8F1824(v45, v87, type metadata accessor for PMAppSecurityRecommendationsList);
    v50 = (*(v85 + 80) + 16) & ~*(v85 + 80);
    v51 = (v86 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v84 + 16);
    v53 = (v84 + 8);
    v54 = swift_allocObject();
    v55 = sub_21C8F0DC4(v49, v54 + v50, type metadata accessor for PMAppSecurityRecommendationsList);
    *(v54 + v51) = v44;
    MEMORY[0x28223BE20](v55);
    *(&v80 - 2) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF360, &qword_21CBAC060);
    sub_21C8A059C();
    v56 = v89;
    sub_21CB84DA4();
    v57 = v90;
    (*v52)(v92, v56, v90);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDEF308, &qword_27CDEF300, &qword_21CBABFA8, MEMORY[0x277CDF028]);
    v58 = v88;
    sub_21CB83494();
    (*v53)(v56, v57);
    sub_21C716934(v58, v105, &qword_27CDF0628, &qword_21CBAF070);
    v47 = 0;
  }

  v59 = 1;
  v60 = (*(v95 + 56))(v105, v47, 1, v96);
  if (*(v44 + 16))
  {
    MEMORY[0x28223BE20](v60);
    *(&v80 - 2) = v45;
    *(&v80 - 1) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
    v61 = v93;
    sub_21CB85054();
    v63 = v99;
    v62 = v100;
    (*(v99 + 32))(v10, v61, v100);
    v59 = 0;
  }

  else
  {
    v63 = v99;
    v62 = v100;
  }

  (*(v63 + 56))(v10, v59, 1, v62);
  v64 = v103;
  v65 = v97;
  v66 = v10;
  sub_21C6EDBAC(v103, v97, &qword_27CDF0638, &qword_21CBAF088);
  v67 = v105;
  v68 = v98;
  sub_21C6EDBAC(v105, v98, &qword_27CDF0630, &unk_21CBAF078);
  v69 = v101;
  sub_21C6EDBAC(v10, v101, &qword_27CDEC8A8, &unk_21CBACF50);
  v70 = v102;
  sub_21C6EDBAC(v65, v102, &qword_27CDF0638, &qword_21CBAF088);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0640, &unk_21CBAF090);
  sub_21C6EDBAC(v68, v70 + *(v71 + 48), &qword_27CDF0630, &unk_21CBAF078);
  sub_21C6EDBAC(v69, v70 + *(v71 + 64), &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v66, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v67, &qword_27CDF0630, &unk_21CBAF078);
  sub_21C6EA794(v64, &qword_27CDF0638, &qword_21CBAF088);
  sub_21C6EA794(v69, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v68, &qword_27CDF0630, &unk_21CBAF078);
  return sub_21C6EA794(v65, &qword_27CDF0638, &qword_21CBAF088);
}

uint64_t sub_21C8E95B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBAEE50);
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 104);
}

uint64_t sub_21C8E96A0(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_21CB85114();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_21CB858B4();
  v2[9] = sub_21CB858A4();
  v5 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C8E9794, v5, v4);
}

uint64_t sub_21C8E9794()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v1 = *(v0[2] + 120);
  v2 = qword_27CDEA4C0;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[4];
  sub_21CB86544();
  sub_21C7072A8(v1, v0[3]);

  sub_21C8329EC(v6);

  sub_21C901AD4(MEMORY[0x277D84FA0]);
  (*(v4 + 104))(v3, *MEMORY[0x277CDF0D8], v5);
  sub_21C90231C(v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21C8E990C@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D8, &qword_21CBA3C70);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v5 = v18;
  swift_getKeyPath(byte_21CBAED68);
  v18 = v5;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v6 = *(v5 + 16);
  v7 = *(v5 + 24);

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  {
    sub_21CB85084();
    v14 = v18;
    swift_getKeyPath(byte_21CBAED68);
    v18 = v14;
    sub_21CB810D4();

    sub_21CB83784();

    v15 = v17;
    (*(v2 + 32))(v17, v4, v1);
    v13 = v15;
    v12 = 0;
  }

  else
  {
    v12 = 1;
    v13 = v17;
  }

  return (*(v2 + 56))(v13, v12, 1, v1);
}

uint64_t sub_21C8E9BC0()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v4 = v8;
  v8 = v4;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v5;
}

id sub_21C8E9D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  sub_21C8F1824(a1, a6, type metadata accessor for PMAccount);
  v10 = type metadata accessor for PMSecurityRecommendationsAccountRow(0);
  v11 = a6 + *(v10 + 24);
  *v11 = swift_getKeyPath(byte_21CBAF168);
  *(v11 + 8) = 0;
  v12 = a6 + *(v10 + 20);
  *v12 = a2;
  *(v12 + 8) = a3;
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;

  return a5;
}

uint64_t sub_21C8E9E30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0668, &qword_21CBAF0F0);
  MEMORY[0x28223BE20](v94);
  v93 = &v77 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0670, &qword_21CBAF0F8);
  MEMORY[0x28223BE20](v4 - 8);
  v96 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v95 = &v77 - v7;
  v8 = type metadata accessor for PMAppSecurityRecommendationsList(0);
  v91 = *(v8 - 8);
  v9 = *(v91 + 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB81024();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v78 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v77 - v15;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC198, &qword_21CBAF100);
  MEMORY[0x28223BE20](v81);
  v92 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v77 - v19;
  v21 = a1[1];
  v80 = *a1;
  v79 = v21;
  v22 = *(a1 + 16);
  v23 = a1[3];
  sub_21CB81014();
  v24 = sub_21CB81004();
  v26 = v25;
  v27 = *(v12 + 8);
  v89 = v12 + 8;
  v90 = v11;
  v82 = v27;
  v27(v16, v11);
  sub_21C8F1824(v98, v10, type metadata accessor for PMAppSecurityRecommendationsList);
  v28 = (v91[80] + 16) & ~v91[80];
  v29 = (v9 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = v91[80];
  v30 = swift_allocObject();
  v84 = v28;
  v31 = v30 + v28;
  v91 = v10;
  v32 = v10;
  v33 = v79;
  v34 = v80;
  sub_21C8F0DC4(v32, v31, type metadata accessor for PMAppSecurityRecommendationsList);
  v86 = v29;
  v35 = v30 + v29;
  *v35 = v34;
  *(v35 + 8) = v33;
  *(v35 + 16) = v22;
  *(v35 + 24) = v23;
  v102 = v24;
  v103 = v26;
  v99 = &v102;
  v100 = 0x69662E6873617274;
  v101 = 0xEA00000000006C6CLL;

  v36 = v23;
  v37 = v20;
  v87 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v39 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  v40 = v81;
  v88 = v38;
  sub_21CB84DA4();

  v41 = sub_21CB84A64();
  v43 = *(v40 + 36);
  v85 = v37;
  v44 = (v37 + v43);
  *v44 = KeyPath;
  v44[1] = v41;
  sub_21CB81014();
  if (v22 == 1)
  {
    v45 = sub_21CB81004();
    v47 = v46;
    v82(v16, v90);
    v48 = v91;
    sub_21C8F1824(v98, v91, type metadata accessor for PMAppSecurityRecommendationsList);
    v49 = v86;
    v50 = swift_allocObject();
    v51 = sub_21C8F0DC4(v48, v50 + v84, type metadata accessor for PMAppSecurityRecommendationsList);
    v52 = v50 + v49;
    *v52 = v34;
    *(v52 + 8) = v33;
    *(v52 + 16) = 1;
    v53 = v87;
    *(v52 + 24) = v87;
    v102 = v45;
    v103 = v47;
    MEMORY[0x28223BE20](v51);
    *(&v77 - 4) = &v102;
    *(&v77 - 3) = 0x6C6C69662E657965;
    *(&v77 - 2) = 0xE800000000000000;
  }

  else
  {
    v56 = v78;
    sub_21CB81014();
    v57 = sub_21CB80FF4();
    v59 = v58;
    v60 = v56;
    v61 = v90;
    v78 = v39;
    v62 = v82;
    v82(v60, v90);
    v62(v16, v61);
    v63 = v91;
    sub_21C8F1824(v98, v91, type metadata accessor for PMAppSecurityRecommendationsList);
    v64 = v86;
    v65 = swift_allocObject();
    v66 = sub_21C8F0DC4(v63, v65 + v84, type metadata accessor for PMAppSecurityRecommendationsList);
    v67 = v65 + v64;
    *v67 = v34;
    *(v67 + 8) = v33;
    *(v67 + 16) = v22;
    v53 = v87;
    *(v67 + 24) = v87;
    v102 = v57;
    v103 = v59;
    MEMORY[0x28223BE20](v66);
    *(&v77 - 4) = &v102;
    strcpy(&v77 - 24, "eye.slash.fill");
    *(&v77 - 9) = -18;
  }

  v54 = v53;
  v55 = v92;
  sub_21CB84DA4();

  v68 = sub_21CB84A74();
  v70 = (v55 + *(v40 + 36));
  *v70 = v69;
  v70[1] = v68;
  sub_21C6EDBAC(v55, v93, &qword_27CDEC198, &qword_21CBAF100);
  swift_storeEnumTagMultiPayload();
  sub_21C7FC8A0();
  v71 = v95;
  sub_21CB83494();
  sub_21C6EA794(v55, &qword_27CDEC198, &qword_21CBAF100);
  v72 = v85;
  sub_21C6EDBAC(v85, v55, &qword_27CDEC198, &qword_21CBAF100);
  v73 = v96;
  sub_21C6EDBAC(v71, v96, &qword_27CDF0670, &qword_21CBAF0F8);
  v74 = v97;
  sub_21C6EDBAC(v55, v97, &qword_27CDEC198, &qword_21CBAF100);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDF0678, &unk_21CBAF140);
  sub_21C6EDBAC(v73, v74 + *(v75 + 48), &qword_27CDF0670, &qword_21CBAF0F8);
  sub_21C6EA794(v71, &qword_27CDF0670, &qword_21CBAF0F8);
  sub_21C6EA794(v72, &qword_27CDEC198, &qword_21CBAF100);
  sub_21C6EA794(v73, &qword_27CDF0670, &qword_21CBAF0F8);
  return sub_21C6EA794(v55, &qword_27CDEC198, &qword_21CBAF100);
}

uint64_t sub_21C8EA7A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppSecurityRecommendationsList(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_21CB858E4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_21C8F1824(a1, v7, type metadata accessor for PMAppSecurityRecommendationsList);
  sub_21CB858B4();

  v12 = sub_21CB858A4();
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v12;
  *(v15 + 24) = v16;
  sub_21C8F0DC4(v7, v15 + v13, type metadata accessor for PMAppSecurityRecommendationsList);
  *(v15 + v14) = a2;
  sub_21C98B308(0, 0, v10, &unk_21CBAF0D8, v15);
}

uint64_t sub_21C8EA9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_21CB858B4();
  v5[5] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_21C8EAA3C, v7, v6);
}

uint64_t sub_21C8EAA3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v0[8] = v0[2];
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_21C8EAAF8;
  v2 = v0[4];

  return sub_21C900FEC(v2);
}

uint64_t sub_21C8EAAF8()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21C7AFEF4, v3, v2);
}

uint64_t sub_21C8EAC3C@<X0>(uint64_t a2@<X8>)
{
  v18[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF370, &unk_21CBAC068);
  MEMORY[0x28223BE20](v2);
  v4 = v18 - v3;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - v11;
  v13 = (v6 + 8);
  sub_21CB81014();
  v14 = sub_21CB81004();
  v16 = v15;
  (*v13)(v8, v5);
  v18[2] = v14;
  v18[3] = v16;
  sub_21C71F3FC();
  sub_21CB84CB4();
  (*(v10 + 16))(v4, v12, v9);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB83494();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_21C8EAF98(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  sub_21C901704(a2);
}

uint64_t sub_21C8EAFF4@<X0>(uint64_t a2@<X8>)
{
  v18[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF370, &unk_21CBAC068);
  MEMORY[0x28223BE20](v2);
  v4 = v18 - v3;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - v11;
  v13 = (v6 + 8);
  sub_21CB81014();
  v14 = sub_21CB81004();
  v16 = v15;
  (*v13)(v8, v5);
  v18[2] = v14;
  v18[3] = v16;
  sub_21C71F3FC();
  sub_21CB84CB4();
  (*(v10 + 16))(v4, v12, v9);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB83494();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_21C8EB338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppSecurityRecommendationsList(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  sub_21CB81ED4();
  v10 = sub_21CB81F14();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_21C8F1824(a1, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppSecurityRecommendationsList);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_21C8F0DC4(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PMAppSecurityRecommendationsList);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  return sub_21CB84D94();
}

uint64_t sub_21C8EB588(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  sub_21CB85084();
  v3 = sub_21C903344(a2);

  v4 = sub_21C87E898(v3);
  v6 = v5;
  v8 = v7;
  swift_getKeyPath(byte_21CBAEE50);
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  swift_getKeyPath(byte_21CBAEE50);
  sub_21CB810F4();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v12 + 104);
  *(v12 + 104) = 0x8000000000000000;
  sub_21C8D4880(v4, v6, v8, 0, isUniquelyReferenced_nonNull_native);
  *(v12 + 104) = v11;
  swift_endAccess();
  swift_getKeyPath(byte_21CBAEE50);
  sub_21CB810E4();
}