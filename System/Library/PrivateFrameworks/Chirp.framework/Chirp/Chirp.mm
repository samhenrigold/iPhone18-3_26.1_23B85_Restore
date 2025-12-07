uint64_t sub_2433E9FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2433FFF40();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2433EA01C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2433FFF40();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t getEnumTagSinglePayload for SecureBytes.BackingHeader(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2433EA0B4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 254)
  {
    v5 = *a1;
    v6 = v5 >= 2;
    v7 = (v5 + 2147483646) & 0x7FFFFFFF;
    if (v6)
    {
      return (v7 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for CipherState(0, *(a3 + 16), *(a3 + 24), a4);
    v12 = *(*(v11 - 8) + 48);
    v13 = &a1[*(a3 + 40)];

    return v12(v13, a2, v11);
  }
}

_BYTE *sub_2433EA16C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for CipherState(0, *(a4 + 16), *(a4 + 24), a4);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 40)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2433EA220()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_2433EA324(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_2433EA350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CipherState(255, *(a3 + 16), *(a3 + 32), a4);
  v7 = sub_243400280();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
  }

  else
  {
    v12 = sub_2433FFF40();
    v13 = *(v12 - 8);
    if (*(v13 + 84) != a2)
    {
      v15 = *(a1 + *(a3 + 56) + 8) >> 60;
      if (((4 * v15) & 0xC) != 0)
      {
        return 16 - ((4 * v15) & 0xC | (v15 >> 2));
      }

      else
      {
        return 0;
      }
    }

    v9 = v12;
    v10 = *(v13 + 48);
    v11 = a1 + *(a3 + 52);
  }

  return v10(v11, a2, v9);
}

uint64_t sub_2433EA484(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for CipherState(255, *(a4 + 16), *(a4 + 32), a4);
  v8 = sub_243400280();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2433FFF40();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 56));
      *v15 = 0;
      v15[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 52);
  }

  return v11(v12, a2, a2, v10);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2433EA5EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2433EA648(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2433EA6CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_2433EA728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2433EA7A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2433EA7C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_2433EA810(uint64_t a1)
{
  result = sub_2433FFF40();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2433EA8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2433FFF40();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for CipherState(0, a2, a3, v9);
  *(a4 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_2433EA94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a7;
  v8 = v7;
  v48 = a5;
  v49 = a6;
  v46 = a4;
  v43 = a1;
  v44 = a2;
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = sub_243400280();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v14 = &v40 - v13;
  v15 = swift_getAssociatedTypeWitness();
  v41 = *(v15 - 8);
  v42 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v52 = &v40 - v17;
  v18 = AssociatedTypeWitness;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x28223BE20](v16);
  v21 = *(a3 + 36);
  v22 = *(v8 + v21);
  v55 = &v40 - v23;
  result = sub_2433EAD84(v20, v22, v10, v11);
  if (v22 == -1)
  {
    __break(1u);
  }

  else
  {
    *(v8 + v21) = v22 + 1;
    v25 = v18;
    (*(v19 + 16))(v14, v55, v18);
    (*(v19 + 56))(v14, 0, 1, v18);
    v26 = v51;
    (*(v11 + 72))(v43, v8, v14, v44, v46, v48, v49, v50, v10, v11);
    if (v26)
    {
      (*(v45 + 8))(v14, v47);
      return (*(v19 + 8))(v55, v18);
    }

    else
    {
      (*(v45 + 8))(v14, v47);
      v27 = v42;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v29 = (*(AssociatedConformanceWitness + 32))(v27, AssociatedConformanceWitness);
      v31 = v30;
      v32 = v27;
      v33 = (*(AssociatedConformanceWitness + 24))(v27, AssociatedConformanceWitness);
      v35 = v34;
      v36 = v29;
      v54[0] = v29;
      v54[1] = v31;
      v37 = v31;
      v53[3] = MEMORY[0x277CC9318];
      v53[4] = MEMORY[0x277CC9300];
      v53[0] = v33;
      v53[1] = v34;
      v38 = __swift_project_boxed_opaque_existential_1(v53, MEMORY[0x277CC9318]);
      v39 = *v38;
      v51 = v38[1];
      sub_2433EB648(v36, v37);
      sub_2433EB648(v33, v35);
      sub_2433F5580(v39, v51, v54);
      sub_2433EB69C(v33, v35);
      sub_2433EB69C(v36, v37);
      (*(v41 + 8))(v52, v32);
      (*(v19 + 8))(v55, v25);
      __swift_destroy_boxed_opaque_existential_1(v53);
      return v54[0];
    }
  }

  return result;
}

uint64_t sub_2433EAD84(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = sub_243400230();
  *(v7 + 16) = 4;
  *(v7 + 32) = 0;
  v18[0] = v7;
  v8 = (*(a4 + 56))(a3, a4);
  v9 = bswap64(a2);
  if ((v8 & 1) == 0)
  {
    v9 = a2;
  }

  v17 = v9;
  sub_2433F83CC(&v17, v18);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = v18[0];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 24);

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED73558, &qword_243400908);
  v14 = sub_2433EB558();
  v12(&v16, v13, v14, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_2433EAF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = a2;
  v69 = a1;
  v63 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v62 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v13;
  v55 = *(*(v13 + 8) + 8);
  v68 = *(v55 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v56 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v64 = &v48 - v16;
  v18 = *(a3 + 16);
  v17 = *(a3 + 24);
  v59 = swift_getAssociatedTypeWitness();
  v54 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v48 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v66 = *(v20 - 8);
  v67 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v25 = *(a3 + 36);
  v26 = *(v7 + v25);
  v65 = &v48 - v27;
  result = sub_2433EAD84(v24, v26, v18, v17);
  if (v26 == -1)
  {
    __break(1u);
  }

  else
  {
    v50 = a5;
    v51 = v7;
    v52 = a7;
    *(v7 + v25) = v26 + 1;
    v29 = sub_243400240();
    v30 = *(v17 + 64);
    v31 = v18;
    if (v29 < v30(v18, v17))
    {
      sub_2433EB4BC();
      swift_allocError();
      *v32 = 6;
      swift_willThrow();
      goto LABEL_7;
    }

    v33 = *(v66 + 16);
    v49 = v23;
    v33(v23, v65, v67);
    v34 = v62;
    v63 = *(v63 + 16);
    (v63)(v62, v69, a4);
    v35 = sub_243400240();
    v36 = v30(v18, v17);
    v37 = __OFSUB__(v35, v36);
    result = v35 - v36;
    if (!v37)
    {
      sub_243400250();
      (v63)(v34, v69, a4);
      v30(v18, v17);
      v38 = v56;
      sub_243400090();
      v39 = v59;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v41 = *(AssociatedConformanceWitness + 48);
      v42 = AssociatedTypeWitness;
      v43 = swift_getAssociatedConformanceWitness();
      v44 = v57;
      v45 = v42;
      v46 = v42;
      v31 = v39;
      v47 = v61;
      v41(v49, v64, v38, v45, v46, v43, v43, v39, AssociatedConformanceWitness);
      if (!v47)
      {
        v31 = (*(v17 + 80))(v44, v51, v53, v50, v52, v18, v17);
        (*(v54 + 8))(v44, v39);
        (*(v66 + 8))(v65, v67);
        return v31;
      }

LABEL_7:
      (*(v66 + 8))(v65, v67);
      return v31;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2433EB4BC()
{
  result = qword_27ED73550;
  if (!qword_27ED73550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73550);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2433EB558()
{
  result = qword_27ED73560;
  if (!qword_27ED73560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED73558, &qword_243400908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73560);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_2433EB648(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void sub_2433EB69C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2433EB78C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2433EB7E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2433EB84C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_2433EB8A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t storeEnumTagSinglePayload for SecureBytes.BackingHeader(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_2433EB984(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t TransportState.readKey.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CipherState(0, *(a1 + 16), *(a1 + 24), a2);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  (*(v9 + 16))(&v12 - v7, v3 + *(a1 + 44));
  v10 = sub_2433FFF40();
  return (*(*(v10 - 8) + 32))(a3, v8, v10);
}

uint64_t TransportState.writeKey.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CipherState(0, *(a1 + 16), *(a1 + 24), a2);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  (*(v9 + 16))(&v12 - v7, v3 + *(a1 + 40));
  v10 = sub_2433FFF40();
  return (*(*(v10 - 8) + 32))(a3, v8, v10);
}

uint64_t TransportState.encryptOutgoingPayload<A>(_:authenticating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = sub_243400240();
  v14 = *(a4 + 16);
  v15 = *(a4 + 24);
  result = (*(v15 + 64))(v14, v15);
  if (__OFSUB__(0xFFFFLL, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (0xFFFF - result < v13)
  {
    sub_2433EB4BC();
    swift_allocError();
    *v18 = 5;
    return swift_willThrow();
  }

  if (*v7 != 1)
  {
    if ((v7[1] & 1) == 0)
    {
      v22 = a2;
      v23 = a3;
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v22 = a2;
  v23 = a3;
LABEL_8:
  v19 = type metadata accessor for CipherState(0, v14, v15, v17);
  v20 = sub_2433EBF08();
  return sub_2433EA94C(a1, &v22, v19, a5, MEMORY[0x277CC9318], a6, v20);
}

unint64_t sub_2433EBF08()
{
  result = qword_27ED73590;
  if (!qword_27ED73590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73590);
  }

  return result;
}

uint64_t TransportState.decryptIncomingPayload<A>(_:authenticating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_243400240();
  if (result >= 0x10000)
  {
    sub_2433EB4BC();
    swift_allocError();
    *v15 = 5;
    return swift_willThrow();
  }

  if (*v6 == 1)
  {
    if (v6[1])
    {
      __break(1u);
      return result;
    }

    v18 = a2;
    v19 = a3;
  }

  else
  {
    v18 = a2;
    v19 = a3;
  }

  v16 = type metadata accessor for CipherState(0, *(a4 + 16), *(a4 + 24), v14);
  v17 = sub_2433EBF08();
  return sub_2433EAF34(a1, &v18, v16, a5, MEMORY[0x277CC9318], a6, v17);
}

uint64_t sub_2433EC090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CipherState(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2433EC150@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  v12 = type metadata accessor for TransportState(0, a5, a6, a4);
  v13 = *(v12 + 40);
  v15 = type metadata accessor for CipherState(0, a5, a6, v14);
  v18 = *(*(v15 - 8) + 32);
  (v18)((v15 - 8), &a7[v13], a3, v15);
  v16 = &a7[*(v12 + 44)];

  return v18(v16, a4, v15);
}

uint64_t type metadata accessor for SecureBytes.Backing(uint64_t a1)
{
  result = qword_27ED735A0;
  if (!qword_27ED735A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2433EC2C8()
{
  type metadata accessor for SecureBytes.Backing(0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  qword_27ED73598 = result;
  return result;
}

void *sub_2433EC2FC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = _swift_stdlib_malloc_size(result);
  if ((result - 4) < a3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = _swift_stdlib_malloc_size(v3) - 32;
  result = swift_beginAccess();
  v8 = v3[2];
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = __OFSUB__(v10, v11);
  v12 = v10 - v11;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    return sub_2433EEDAC((v6 + 4), v6 + v6[2] + 32, a2, a3, v3);
  }

LABEL_13:
  __break(1u);
  return result;
}

size_t sub_2433EC3E0(char a1)
{
  v3 = _swift_stdlib_malloc_size(v1) - 32;
  result = swift_beginAccess();
  v5 = v1[2];
  v6 = v3 - v5;
  if (__OFSUB__(v3, v5))
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = _swift_stdlib_malloc_size(v1);
  if ((result - 32) < v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + v5 + 32) = a1;
  v9 = v1[2];
  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    result = swift_beginAccess();
    v1[2] = v10;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2433EC49C(const void *a1, size_t a2)
{
  v5 = _swift_stdlib_malloc_size(v2) - 32;
  result = swift_beginAccess();
  v7 = v2[2];
  v8 = v5 - v7;
  if (__OFSUB__(v5, v7))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = __OFSUB__(v8, a2);
  v10 = v8 - a2;
  if (v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = _swift_stdlib_malloc_size(v2);
  if (result - 32 < v7)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    result = memmove(v2 + v7 + 32, a1, a2);
LABEL_8:
    v11 = v2[2];
    v9 = __OFADD__(v11, a2);
    v12 = v11 + a2;
    if (!v9)
    {
      result = swift_beginAccess();
      v2[2] = v12;
      return result;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

size_t sub_2433EC57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_243400240();
  v5 = _swift_stdlib_malloc_size(v3) - 32;
  result = swift_beginAccess();
  v7 = v3[2];
  v8 = v5 - v7;
  if (__OFSUB__(v5, v7))
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = __OFSUB__(v8, v4);
  v10 = v8 - v4;
  if (v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = _swift_stdlib_malloc_size(v3);
  if ((result - 32) < v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2434002E0();
  v11 = v3[2];
  v9 = __OFADD__(v11, v4);
  v12 = v11 + v4;
  if (!v9)
  {
    v3[2] = v12;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

size_t sub_2433EC664(int64_t a1)
{
  v2 = v1;
  v4 = *v2;
  result = _swift_stdlib_malloc_size(*v2);
  if ((result - 32) < a1)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(a1))
    {
      if (a1)
      {
        v6 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
        v7 = v6 | (v6 >> 4) | ((v6 | (v6 >> 4)) >> 8);
        v8 = v7 | HIWORD(v7);
        if (v8 == -1)
        {
          v9 = 0xFFFFFFFFLL;
        }

        else
        {
          v9 = (v8 + 1);
        }
      }

      else
      {
        v9 = 1;
      }

      type metadata accessor for SecureBytes.Backing(0);
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      *(v10 + 24) = v9;
      result = swift_beginAccess();
      v11 = v4[2];
      if ((v11 & 0x8000000000000000) == 0)
      {
        sub_2433EC2FC(v4, 0, v11);

        *v2 = v10;
        return result;
      }

LABEL_14:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_2433EC764@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 16);
  return result;
}

uint64_t sub_2433EC7E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  result = swift_beginAccess();
  v8 = *(v6 + 16);
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 >= v4)
  {
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2433EC864@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v5;
  }

  return result;
}

BOOL sub_2433EC8B4()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16) == 0;
}

uint64_t sub_2433EC8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v9 = *(a4 + 16);
  if (v9 < a3 || (a3 | a1) < 0 || v9 < a1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = a3 - a1;
  if (a2 >= 1)
  {
    if (v10 < 0 || v10 >= a2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v10 <= 0 && v10 > a2)
  {
    return 0;
  }

LABEL_11:
  result = a1 + a2;
  if (__OFADD__(a1, a2))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (result < 0 || v9 < result)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t *sub_2433EC9C4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_2433EC9E0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_2433EC9FC(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_2433ECA18@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_2433ECA30(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *sub_2433ECA64(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_19:

    return v4;
  }

  result = sub_2433EF80C(*(a1 + 16), 0);
  if (v2 >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = result + 4;
    if (v2 >= 8 && result - a1 >= 0x20)
    {
      if (v2 < 0x20)
      {
        v5 = 0;
        goto LABEL_12;
      }

      v5 = v2 & 0x7FFFFFFFFFFFFFE0;
      v7 = result + 6;
      v8 = (a1 + 48);
      v9 = v2 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v10 = *v8;
        *(v7 - 1) = *(v8 - 1);
        *v7 = v10;
        v7 += 2;
        v8 += 2;
        v9 -= 32;
      }

      while (v9);
      if (v2 == v5)
      {
        goto LABEL_19;
      }

      if ((v2 & 0x18) != 0)
      {
LABEL_12:
        v11 = v5;
        v5 = v2 & 0x7FFFFFFFFFFFFFF8;
        v6 += v2 & 0x7FFFFFFFFFFFFFF8;
        v12 = v11 + 32;
        v13 = v11 - (v2 & 0x7FFFFFFFFFFFFFF8);
        do
        {
          *(result + v12) = *(a1 + v12);
          v12 += 8;
          v13 += 8;
        }

        while (v13);
        if (v2 == v5)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      v6 += v5;
    }

LABEL_17:
    v14 = (v5 + a1 + 32);
    v15 = v2 - v5;
    do
    {
      v16 = *v14++;
      *v6++ = v16;
      --v15;
    }

    while (v15);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void *sub_2433ECBA4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_13;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_13:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    result = swift_beginAccess();
    v8 = 0;
    v9 = *(a4 + 16);
    while (!__OFSUB__(v9, v8))
    {
      if (v9 == v8)
      {
        v6 = v9;
        goto LABEL_13;
      }

      *(a2 + v8) = *(a4 + 32 + v8);
      if (v6 - 1 == v8)
      {
        goto LABEL_13;
      }

      if (__OFADD__(++v8, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2433ECCA4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_2433ECCBC(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

void *sub_2433ECCD4@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    v6 = *v3;
    result = swift_beginAccess();
    if ((v5 & 0x8000000000000000) == 0 && *(v6 + 16) >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2433ECD44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_2433EC8FC(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_2433ECD80(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  result = swift_beginAccess();
  v7 = *(v5 + 16);
  if (v7 >= v4 && ((v4 | v3) & 0x8000000000000000) == 0 && v7 >= v3)
  {
    return v4 - v3;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2433ECE08(uint64_t a1, uint64_t *a2))(uint64_t result)
{
  v3 = *a2;
  v4 = *v2;
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v4 + v3 + 32);
  return sub_2433ECE40;
}

uint64_t sub_2433ECE54(uint64_t *a1, uint64_t *a2)
{
  sub_2433EF710(v2, *a2, a2[1], *a1, a1[1], a1[2]);
}

uint64_t (*sub_2433ECEA0(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2433ECF60(v4, *a2, a2[1]);
  return sub_2433ECF18;
}

void sub_2433ECF18(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_2433ECF60(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[7] = a3;
  v7[8] = v3;
  v7[6] = a2;
  v9 = *v3;
  result = swift_beginAccess();
  v11 = *(v9 + 16);
  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11 >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = v9;

    return sub_2433ED030;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_2433ED030(uint64_t **a1)
{
  v1 = *a1;
  sub_2433EF710((*a1)[8], v1[6], (*a1)[7], *v1, v1[1], v1[2]);

  free(v1);
}

uint64_t sub_2433ED080@<X0>(uint64_t *a1@<X8>, uint64_t (*a2)(char *)@<X0>)
{
  result = sub_2433EF910(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_2433ED0AC(void *result, void *a2)
{
  v3 = *result;
  v4 = *a2;
  if (__OFSUB__(*a2, *result))
  {
    __break(1u);
  }

  else if (*a2 != *result)
  {
    v5 = *v2 + 32;
    v6 = *(v5 + v3);
    *(v5 + v3) = *(v5 + v4);
    *(v5 + v4) = v6;
  }

  return result;
}

size_t sub_2433ED128(uint64_t a1, uint64_t a2, size_t a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_beginAccess();
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = v8[2];
  v12 = __OFSUB__(v11, v10);
  v13 = v11 - v10;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = _swift_stdlib_malloc_size(v8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v15 - 32) >= v14)
  {
    if (a2 >= a1)
    {
      return sub_2433ED644(a1, a2, a3);
    }

    goto LABEL_23;
  }

  if (v14 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v14))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v14)
  {
    v16 = (v14 - 1) | ((v14 - 1) >> 1) | (((v14 - 1) | ((v14 - 1) >> 1)) >> 2);
    v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
    v18 = v17 | HIWORD(v17);
    if (v18 == -1)
    {
      v19 = 0xFFFFFFFFLL;
    }

    else
    {
      v19 = (v18 + 1);
    }
  }

  else
  {
    v19 = 1;
  }

  type metadata accessor for SecureBytes.Backing(0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v19;
  if (a1 < 0)
  {
    goto LABEL_25;
  }

  v20 = result;
  v21 = *v4;
  result = swift_beginAccess();
  v22 = v21[2];
  if (v22 < a2)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  sub_2433EC2FC(v21, 0, a1);
  sub_2433EC3E0(a3);
  sub_2433EC2FC(v21, a2, v22);

  *v4 = v20;
  return result;
}

size_t sub_2433ED2C8(uint64_t a1, uint64_t a2, void *a3, size_t a4)
{
  v5 = v4;
  v10 = *v4;
  result = swift_beginAccess();
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = v10[2];
  v14 = __OFSUB__(v13, v12);
  v15 = v13 - v12;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = v15 + a4;
  if (__OFADD__(v15, a4))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = _swift_stdlib_malloc_size(v10);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v17 - 32) >= v16)
  {
    if (a2 >= a1)
    {
      return sub_2433ED740(a1, a2, a3, a4);
    }

    goto LABEL_23;
  }

  if (v16 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v16))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v16)
  {
    v18 = (v16 - 1) | ((v16 - 1) >> 1) | (((v16 - 1) | ((v16 - 1) >> 1)) >> 2);
    v19 = v18 | (v18 >> 4) | ((v18 | (v18 >> 4)) >> 8);
    v20 = v19 | HIWORD(v19);
    if (v20 == -1)
    {
      v21 = 0xFFFFFFFFLL;
    }

    else
    {
      v21 = (v20 + 1);
    }
  }

  else
  {
    v21 = 1;
  }

  type metadata accessor for SecureBytes.Backing(0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v21;
  if (a1 < 0)
  {
    goto LABEL_25;
  }

  v22 = result;
  v23 = *v5;
  result = swift_beginAccess();
  v24 = v23[2];
  if (v24 < a2)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  sub_2433EC2FC(v23, 0, a1);
  sub_2433EC49C(a3, a4);
  sub_2433EC2FC(v23, a2, v24);

  *v5 = v22;
  return result;
}

size_t sub_2433ED474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v5;
  result = swift_beginAccess();
  v14 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = v12[2];
  v16 = v15 - v14;
  if (__OFSUB__(v15, v14))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = sub_243400240();
  v17 = __OFADD__(v16, result);
  v18 = v16 + result;
  if (v17)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = _swift_stdlib_malloc_size(v12);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v19 - 32) >= v18)
  {
    if (a2 >= a1)
    {
      return sub_2433ED840(a1, a2, a3, a4, a5);
    }

    goto LABEL_23;
  }

  if (v18 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v18))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v18)
  {
    v20 = (v18 - 1) | ((v18 - 1) >> 1) | (((v18 - 1) | ((v18 - 1) >> 1)) >> 2);
    v21 = v20 | (v20 >> 4) | ((v20 | (v20 >> 4)) >> 8);
    v22 = v21 | HIWORD(v21);
    if (v22 == -1)
    {
      v23 = 0xFFFFFFFFLL;
    }

    else
    {
      v23 = (v22 + 1);
    }
  }

  else
  {
    v23 = 1;
  }

  type metadata accessor for SecureBytes.Backing(0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v23;
  if (a1 < 0)
  {
    goto LABEL_25;
  }

  v24 = result;
  v25 = *v6;
  result = swift_beginAccess();
  v26 = v25[2];
  if (v26 < a2)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  sub_2433EC2FC(v25, 0, a1);
  sub_2433EC57C(a3, a4, a5);
  sub_2433EC2FC(v25, a2, v26);

  *v6 = v24;
  return result;
}

size_t sub_2433ED644(uint64_t a1, uint64_t a2, size_t a3)
{
  result = swift_beginAccess();
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v3[2];
  v10 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = _swift_stdlib_malloc_size(v3);
  if ((result - 32) < v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = __OFSUB__(1, v8);
  v13 = 1 - v8;
  if (v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v9 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_2433EEAE0(a2, v9, v13);
  result = sub_2433EEBA8(a3, a1);
  v14 = v3[2];
  v15 = v14 + v13;
  if (!__OFADD__(v14, v13))
  {
    result = swift_beginAccess();
    v3[2] = v15;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

size_t sub_2433ED740(uint64_t a1, uint64_t a2, void *a3, size_t a4)
{
  result = swift_beginAccess();
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v4[2];
  v12 = v11 - v10;
  if (__OFSUB__(v11, v10))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12 + a4;
  if (__OFADD__(v12, a4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = _swift_stdlib_malloc_size(v4);
  if ((result - 32) < v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = __OFSUB__(a4, v10);
  v15 = a4 - v10;
  if (v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v11 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_2433EEAE0(a2, v11, v15);
  result = sub_2433EEC1C(a3, a4, a1);
  v16 = v4[2];
  v17 = v16 + v15;
  if (!__OFADD__(v16, v15))
  {
    result = swift_beginAccess();
    v4[2] = v17;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

size_t sub_2433ED840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  result = swift_beginAccess();
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v5[2];
  v15 = v14 - v13;
  if (__OFSUB__(v14, v13))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_243400240();
  v16 = v15 + result;
  if (__OFADD__(v15, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = _swift_stdlib_malloc_size(v6);
  if ((result - 32) < v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_243400240();
  if (__OFSUB__(result, v13))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v6[2];
  if (v17 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_2433EEAE0(a2, v17, result - v13);
  sub_2433EECD8(a3, a1, a4, a5);
  result = sub_243400240();
  v18 = result - v13;
  if (__OFSUB__(result, v13))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = v6[2];
  v20 = __OFADD__(v19, v18);
  v21 = v19 + v18;
  if (!v20)
  {
    v6[2] = v21;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

int64_t sub_2433ED97C(int64_t result, char a2)
{
  if (result)
  {
    v3 = result;
    if (result >= 1)
    {
      v4 = v2;
      while (1)
      {
        v6 = *v4;
        result = swift_beginAccess();
        v7 = v6[2];
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v9 = _swift_stdlib_malloc_size(v6) - 32;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v10 = v9 < v8;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          if (v8 < 0)
          {
            goto LABEL_32;
          }

          if (HIDWORD(v8))
          {
            goto LABEL_34;
          }

          if (v7 == -1)
          {
            v14 = 1;
          }

          else
          {
            v11 = v7 | (v7 >> 1) | ((v7 | (v7 >> 1)) >> 2);
            v12 = v11 | (v11 >> 4) | ((v11 | (v11 >> 4)) >> 8);
            v13 = v12 | HIWORD(v12);
            if (v13 == -1)
            {
              v14 = 0xFFFFFFFFLL;
            }

            else
            {
              v14 = (v13 + 1);
            }
          }

          type metadata accessor for SecureBytes.Backing(0);
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v14;
          if (v7 < 0)
          {
            goto LABEL_36;
          }

          v19 = result;
          v20 = *v4;
          result = swift_beginAccess();
          v21 = v20[2];
          if (v21 < v7)
          {
            __break(1u);
            return result;
          }

          sub_2433EC2FC(v20, 0, v7);
          sub_2433EC3E0(a2);
          sub_2433EC2FC(v20, v7, v21);

          *v4 = v19;
          if (!--v3)
          {
            return result;
          }
        }

        else
        {
          v15 = *v4;
          result = swift_beginAccess();
          v16 = v15[2];
          if (__OFADD__(v16, 1))
          {
            goto LABEL_33;
          }

          result = _swift_stdlib_malloc_size(v15);
          if (result - 32 < v16 + 1)
          {
            goto LABEL_35;
          }

          if (v16 < v7)
          {
            goto LABEL_37;
          }

          result = sub_2433EEAE0(v7, v16, 1);
          if (v7 < 0)
          {
            goto LABEL_38;
          }

          result = _swift_stdlib_malloc_size(v15);
          if (result - 32 < v8)
          {
            goto LABEL_39;
          }

          if (v8 < v7)
          {
            goto LABEL_40;
          }

          result = _swift_stdlib_malloc_size(v15);
          *(v15 + v7 + 32) = a2;
          v17 = v15[2];
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_41;
          }

          result = swift_beginAccess();
          v15[2] = v18;
          if (!--v3)
          {
            return result;
          }
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
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
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void *sub_2433EDBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v31 - v11;
  v33 = v4;
  result = sub_243400220();
  if (v34 == 1)
  {
    (*(v7 + 16))(v9, a1, a2);
    sub_2434001F0();
    swift_getAssociatedConformanceWitness();
    sub_2434002D0();
    if (v36)
    {
      return (*(v32 + 8))(v12, AssociatedTypeWitness);
    }

    else
    {
      v14 = v35;
      while (1)
      {
        v15 = *v4;
        result = swift_beginAccess();
        v16 = v15[2];
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v18 = _swift_stdlib_malloc_size(v15) - 32;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v19 = v18 < v17;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          if (v17 < 0)
          {
            goto LABEL_33;
          }

          if (HIDWORD(v17))
          {
            goto LABEL_35;
          }

          if (v16 == -1)
          {
            v23 = 1;
          }

          else
          {
            v20 = v16 | (v16 >> 1) | ((v16 | (v16 >> 1)) >> 2);
            v21 = v20 | (v20 >> 4) | ((v20 | (v20 >> 4)) >> 8);
            v22 = v21 | HIWORD(v21);
            if (v22 == -1)
            {
              v23 = 0xFFFFFFFFLL;
            }

            else
            {
              v23 = (v22 + 1);
            }
          }

          type metadata accessor for SecureBytes.Backing(0);
          result = swift_allocObject();
          result[2] = 0;
          result[3] = v23;
          if (v16 < 0)
          {
            goto LABEL_37;
          }

          v28 = result;
          v29 = *v4;
          result = swift_beginAccess();
          v30 = v29[2];
          if (v30 < v16)
          {
            __break(1u);
            break;
          }

          sub_2433EC2FC(v29, 0, v16);
          sub_2433EC3E0(v14);
          sub_2433EC2FC(v29, v16, v30);

          *v4 = v28;
        }

        else
        {
          v24 = *v4;
          result = swift_beginAccess();
          v25 = v24[2];
          if (__OFADD__(v25, 1))
          {
            goto LABEL_34;
          }

          result = _swift_stdlib_malloc_size(v24);
          if ((result - 4) < v25 + 1)
          {
            goto LABEL_36;
          }

          if (v25 < v16)
          {
            goto LABEL_38;
          }

          result = sub_2433EEAE0(v16, v25, 1);
          if (v16 < 0)
          {
            goto LABEL_39;
          }

          result = _swift_stdlib_malloc_size(v24);
          if ((result - 4) < v17)
          {
            goto LABEL_40;
          }

          if (v17 < v16)
          {
            goto LABEL_41;
          }

          result = _swift_stdlib_malloc_size(v24);
          *(v24 + v16 + 32) = v14;
          v26 = v24[2];
          v27 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_42;
          }

          swift_beginAccess();
          v24[2] = v27;
        }

        sub_2434002D0();
        v14 = v35;
        if (v36 == 1)
        {
          return (*(v32 + 8))(v12, AssociatedTypeWitness);
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
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
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2433EDFE4@<X0>(void *a1@<X8>)
{
  if (qword_27ED73520 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27ED73598;
}

uint64_t sub_2433EE054(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2433ED474(*a1, a1[1], a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

uint64_t sub_2433EE0D8@<X0>(char *a1@<X0>, int64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  if (qword_27ED73520 != -1)
  {
    swift_once();
  }

  result = qword_27ED73598;
  v7 = qword_27ED73598;
  if (!a2)
  {

    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {

    sub_2433ED97C(a2, v5);
    result = v7;
LABEL_7:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

size_t sub_2433EE194(unsigned __int8 *a1)
{
  v2 = *v1;
  v3 = *a1;
  swift_beginAccess();
  return sub_2433ED128(*(v2 + 16), *(v2 + 16), v3);
}

uint64_t sub_2433EE1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2433EDBC0(a1, a2, a3);
  v5 = *(*(a2 - 8) + 8);

  return v5(a1, a2);
}

uint64_t sub_2433EE280@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = swift_beginAccess();
  if (!*(v5 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 >= v4)
  {
    v8 = *(v5 + v4 + 32);
    result = sub_2433EFC2C(v4, v7);
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2433EE324@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(v3 + 32);
  result = sub_2433EC8FC(0, 1, v5, v3);
  if ((v7 & 1) == 0)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      result = sub_2433EFC2C(0, result);
      *a1 = v6;
      return result;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2433EE3B0(uint64_t result)
{
  if (result)
  {
    v2 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      swift_beginAccess();
      result = sub_2433EC8FC(0, v2, *(v3 + 16), v3);
      if (v4)
      {
LABEL_9:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        return sub_2433EFC2C(0, result);
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2433EE438(char a1)
{
  v2 = *v1;
  if (a1)
  {
    swift_beginAccess();
    v3 = *(v2 + 16);
    if ((v3 & 0x8000000000000000) == 0)
    {
      return sub_2433EFC2C(0, v3);
    }

    __break(1u);
    goto LABEL_9;
  }

  if (qword_27ED73520 != -1)
  {
LABEL_9:
    swift_once();
  }

  *v1 = qword_27ED73598;
}

uint64_t sub_2433EE508(uint64_t (*a1)(char *))
{
  v4 = *v1;
  result = swift_beginAccess();
  v6 = 0;
  v7 = v4 + 32;
  do
  {
    v8 = *(v4 + 16);
    if (__OFSUB__(v8, v6))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v6 == v8)
    {
      goto LABEL_11;
    }

    v14 = *(v7 + v6);
    result = a1(&v14);
    if (v2)
    {
      return result;
    }

    v9 = v6 + 1;
    v10 = __OFADD__(v6, 1);
    if (result)
    {
      if (!v10)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_14:
      v11 = __OFADD__(v6++, 1);
      if (!v11)
      {
        while (1)
        {
          v11 = __OFADD__(v9++, 1);
          if (v11)
          {
            break;
          }

LABEL_16:
          v12 = *(v4 + 16);
          if (__OFSUB__(v12, v9))
          {
            goto LABEL_27;
          }

          if (v12 == v9)
          {
            if (v9 < v6)
            {
              goto LABEL_31;
            }

            return sub_2433EFC2C(v6, v9);
          }

          v14 = *(v7 + v9);
          result = a1(&v14);
          if ((result & 1) == 0)
          {
            if (__OFSUB__(v9, v6))
            {
              goto LABEL_29;
            }

            if (v9 != v6)
            {
              v13 = *(v7 + v6);
              *(v7 + v6) = *(v7 + v9);
              *(v7 + v9) = v13;
            }

            goto LABEL_14;
          }
        }

LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    ++v6;
  }

  while (!v10);
  __break(1u);
LABEL_11:
  v9 = v6;
  return sub_2433EFC2C(v6, v9);
}

uint64_t sub_2433EE758@<X0>(uint64_t (*a1)(uint64_t, void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  result = a1(v3 + 32, *(v3 + 16));
  if (!v4)
  {
    return (*(*(a2 - 8) + 56))(a3, 0, 1, a2);
  }

  return result;
}

uint64_t sub_2433EE8E4()
{
  v1 = *v0;
  sub_243400440();
  MEMORY[0x245D33DD0](v1);
  return sub_243400460();
}

uint64_t sub_2433EE958(uint64_t a1)
{
  v2 = *v1;
  sub_243400440();
  MEMORY[0x245D33DD0](v2);
  return sub_243400460();
}

void *sub_2433EE99C(void *result, void *a2)
{
  if (!__OFSUB__(*a2, *result))
  {
    return (*a2 == *result);
  }

  __break(1u);
  return result;
}

void *sub_2433EEA08@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, *v2))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - *v2;
  }

  return result;
}

void *sub_2433EEA24@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2 + *result;
  }

  return result;
}

void *sub_2433EEA40(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (__OFADD__(*a4, *a6))
  {
    __break(1u);
  }

  else
  {
    *result = *a4 + *a6;
    return 0;
  }

  return result;
}

uint64_t sub_2433EEA64()
{
  swift_beginAccess();
  memset_s((v0 + 32), *(v0 + 24), 0, *(v0 + 24));
  return swift_deallocClassInstance();
}

size_t sub_2433EEAE0(size_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v7 = result;
  result = _swift_stdlib_malloc_size(v4);
  v8 = v7 + a3;
  if (__OFADD__(v7, a3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = __OFADD__(a2, a3);
  v10 = a2 + a3;
  if (v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v10 < v8)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 1 || (result - 32) < a2)
  {
    goto LABEL_15;
  }

  result = _swift_stdlib_malloc_size(v4);
  if ((result - 32) < v10)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  _swift_stdlib_malloc_size(v4);

  return memmove(&v4[v8 + 32], &v4[v7 + 32], a2 - v7);
}

size_t sub_2433EEBA8(size_t result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  result = _swift_stdlib_malloc_size(v2);
  if ((result - 32) < v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 >= a2)
  {
    result = _swift_stdlib_malloc_size(v2);
    *(v2 + a2 + 32) = v5;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_2433EEC1C(void *result, size_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v7 = a3 + a2;
  if (__OFADD__(a3, a2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  result = _swift_stdlib_malloc_size(v4);
  if (result - 32 < v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 < a3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = _swift_stdlib_malloc_size(v4);
  if (!v8)
  {
    return result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  return memmove(&v4[a3 + 32], v8, a2);
}

uint64_t sub_2433EECD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_243400240();
  v6 = a2 + result;
  if (__OFADD__(a2, result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = _swift_stdlib_malloc_size(v4);
  if (result - 32 < v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_243400240();
  if (__OFADD__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2 + result < a2)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  _swift_stdlib_malloc_size(v4);

  return sub_2434002E0();
}

uint64_t sub_2433EEDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v6 = a1 + a4;
  }

  else
  {
    v6 = 0;
  }

  if (a1)
  {
    v7 = (a1 + a3);
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  v8 = a5[2];
  result = _swift_stdlib_malloc_size(a5);
  if (result - 32 < v8)
  {
    __break(1u);
  }

  else
  {
    if (v7)
    {
      v10 = v6 - v7;
      result = memmove(a5 + v8 + 32, v7, v10);
    }

    else
    {
      v10 = 0;
    }

    v11 = a5[2];
    v12 = v11 + v10;
    if (!__OFADD__(v11, v10))
    {
      result = swift_beginAccess();
      a5[2] = v12;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2433EEEA0()
{
  result = qword_27ED735B0;
  if (!qword_27ED735B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED735B0);
  }

  return result;
}

unint64_t sub_2433EEF0C()
{
  result = qword_27ED735B8;
  if (!qword_27ED735B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED735B8);
  }

  return result;
}

unint64_t sub_2433EEF60()
{
  result = qword_27ED735C0;
  if (!qword_27ED735C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED735C0);
  }

  return result;
}

unint64_t sub_2433EEFB8()
{
  result = qword_27ED735C8;
  if (!qword_27ED735C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED735C8);
  }

  return result;
}

unint64_t sub_2433EF010()
{
  result = qword_27ED735D0;
  if (!qword_27ED735D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED735D0);
  }

  return result;
}

unint64_t sub_2433EF068()
{
  result = qword_27ED735D8;
  if (!qword_27ED735D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED735D8);
  }

  return result;
}

unint64_t sub_2433EF14C()
{
  result = qword_27ED73600;
  if (!qword_27ED73600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73600);
  }

  return result;
}

unint64_t sub_2433EF1E8()
{
  result = qword_27ED73610;
  if (!qword_27ED73610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73610);
  }

  return result;
}

unint64_t sub_2433EF2D0()
{
  result = qword_27ED73628;
  if (!qword_27ED73628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73628);
  }

  return result;
}

unint64_t sub_2433EF358()
{
  result = qword_27ED73640;
  if (!qword_27ED73640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73640);
  }

  return result;
}

unint64_t sub_2433EF3AC()
{
  result = qword_27ED73648;
  if (!qword_27ED73648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73648);
  }

  return result;
}

uint64_t sub_2433EF4C4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED735F8, &qword_243400CA0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2433EF584()
{
  result = qword_27ED73678;
  if (!qword_27ED73678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73678);
  }

  return result;
}

uint64_t sub_2433EF60C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED73638, &qword_243400E88);
    sub_2433EF358();
    sub_2433EF3AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2433EF6C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2433EF710(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  result = swift_beginAccess();
  v14 = *(v11 + 16);
  if (v14 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a2 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v14 < a3)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFSUB__(a3, a2))
  {
LABEL_15:
    __break(1u);
  }

  else
  {
    while (1)
    {
      LOBYTE(v13) = __OFSUB__(a5, a4);
      if (a3 == a2)
      {
        break;
      }

      if (v13)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (a5 == a4)
      {
        goto LABEL_27;
      }

      if (a4 >= a5)
      {
        goto LABEL_20;
      }

      *(v11 + 32 + a2) = *(a6 + 32 + a4);
      v13 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_21;
      }

      ++a4;
      ++a2;
      if (__OFSUB__(a3, v13))
      {
        goto LABEL_15;
      }
    }
  }

  if ((v13 & 1) == 0)
  {
    if (a5 == a4)
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_2433EF80C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED73690, &qword_2434010B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_2433EF880(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED73698, &qword_243401550);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_2433EF910(uint64_t (*a1)(char *))
{
  v4 = *v1;
  swift_beginAccess();
  v5 = *(v4 + 16);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v4 + 32;
  do
  {
    v12 = *(v7 + v6);
    v8 = a1(&v12);
    if (v2)
    {
      break;
    }

    if (v8)
    {
      v9 = v5;
      while (1)
      {
        v5 = v9 - 1;
        if (v6 >= v9 - 1)
        {
          return v6;
        }

        v12 = *(v4 + v9 + 31);
        result = a1(&v12);
        v9 = v5;
        if ((result & 1) == 0)
        {
          if (__OFSUB__(v5, v6))
          {
            __break(1u);
            return result;
          }

          if (v6 != v5)
          {
            v11 = *(v7 + v6);
            *(v7 + v6) = *(v4 + v5 + 32);
            *(v4 + v5 + 32) = v11;
          }

          break;
        }
      }
    }

    ++v6;
  }

  while (v6 < v5);
  return v6;
}

BOOL sub_2433EFA24(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  sub_2433F5808(a2 + 32, a2 + 32 + *(a2 + 16), a1 + 32, a1 + 32 + v4, &v6);
  return v6;
}

size_t sub_2433EFAB0()
{
  v1 = _swift_stdlib_malloc_size(v0) - 32;
  result = swift_beginAccess();
  v3 = v0[2];
  if (__OFSUB__(v1, v3))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (((v1 - v3) & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = _swift_stdlib_malloc_size(v0);
  if ((result - 32) >= v3)
  {
    v0[2] = v3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

size_t sub_2433EFB30(int64_t a1, int64_t a2)
{
  result = swift_beginAccess();
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v2[2];
  if (__OFSUB__(v7, v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = _swift_stdlib_malloc_size(v2);
  if ((result - 32) < v7 - v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = __OFSUB__(0, v6);
  v9 = a1 - a2;
  if (v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = sub_2433EEAE0(a2, v7, v9);
  if (a1 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = _swift_stdlib_malloc_size(v2);
  if ((result - 32) < a1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = _swift_stdlib_malloc_size(v2);
  v10 = v2[2];
  v11 = v10 + v9;
  if (!__OFADD__(v10, v9))
  {
    result = swift_beginAccess();
    v2[2] = v11;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2433EFC2C(int64_t a1, int64_t a2)
{
  v3 = v2;
  v6 = *v2;
  result = swift_beginAccess();
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = v6[2];
  v10 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = _swift_stdlib_malloc_size(v6);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v11 - 32) >= v10)
  {
    if (a2 >= a1)
    {
      return sub_2433EFB30(a1, a2);
    }

    goto LABEL_21;
  }

  if (v10 < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v10))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10)
  {
    v12 = (v10 - 1) | ((v10 - 1) >> 1) | (((v10 - 1) | ((v10 - 1) >> 1)) >> 2);
    v13 = v12 | (v12 >> 4) | ((v12 | (v12 >> 4)) >> 8);
    v14 = v13 | HIWORD(v13);
    if (v14 == -1)
    {
      v15 = 0xFFFFFFFFLL;
    }

    else
    {
      v15 = (v14 + 1);
    }
  }

  else
  {
    v15 = 1;
  }

  type metadata accessor for SecureBytes.Backing(0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v15;
  if (a1 < 0)
  {
    goto LABEL_23;
  }

  v16 = result;
  v17 = *v3;
  result = swift_beginAccess();
  v18 = v17[2];
  if (v18 < a2)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  sub_2433EC2FC(v17, 0, a1);
  sub_2433EFAB0();
  sub_2433EC2FC(v17, a2, v18);

  *v3 = v16;
  return result;
}

size_t sub_2433EFDAC(void *a1, size_t a2)
{
  v5 = **(v2 + 16);
  swift_beginAccess();
  return sub_2433ED2C8(*(v5 + 16), *(v5 + 16), a1, a2);
}

uint64_t HandshakeState.e.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 84);
  swift_getAssociatedTypeWitness();
  v5 = sub_243400280();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t HandshakeState.e.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 84);
  swift_getAssociatedTypeWitness();
  v5 = sub_243400280();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t HandshakeState.init(handshakePattern:isInitiator:prologue:psk:responderStaticPriv:responderStaticPublic:initiatorStaticPriv:initiatorStaticPublic:)@<X0>(unsigned __int8 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, int *a14, uint64_t a15, uint64_t a16)
{
  v151 = a8;
  v152 = a7;
  v153 = a6;
  v148 = a5;
  v158 = a3;
  v159 = a4;
  v145 = a2;
  v144 = a16;
  v143 = a13;
  v141 = a12;
  v161 = a15;
  v150 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_243400280();
  v20 = *(v19 - 8);
  v156 = v19;
  v157 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v131 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v129 = &v124 - v24;
  v25 = *(AssociatedTypeWitness - 8);
  v26 = MEMORY[0x28223BE20](v23);
  v130 = &v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v127 = &v124 - v28;
  v147 = a14;
  v142 = a11;
  swift_getAssociatedConformanceWitness();
  v29 = swift_getAssociatedTypeWitness();
  v160 = v29;
  v30 = sub_243400280();
  v154 = *(v30 - 8);
  v155 = v30;
  v31 = MEMORY[0x28223BE20](v30);
  v128 = &v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v125 = &v124 - v34;
  v35 = *(v29 - 8);
  v36 = MEMORY[0x28223BE20](v33);
  v126 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v124 = &v124 - v38;
  v39 = *a1;
  v40 = *(a1 + 1);
  *(a9 + 8) = 0u;
  *(a9 + 24) = 0u;
  v41 = a9;
  v163 = a11;
  v164 = a12;
  v42 = v143;
  v165 = v143;
  v166 = a14;
  v43 = v144;
  v167 = v161;
  v168 = v144;
  v44 = type metadata accessor for HandshakeState(0, &v163);
  v45 = v44[20];
  v139 = v25;
  v46 = *(v25 + 56);
  v135 = v25 + 56;
  v136 = v45;
  v46(v41 + v45, 1, 1, AssociatedTypeWitness);
  v47 = v41 + v44[21];
  v140 = AssociatedTypeWitness;
  v137 = v46;
  v46(v47, 1, 1, AssociatedTypeWitness);
  v48 = v160;
  v49 = v44[22];
  v138 = v35;
  v51 = v35 + 56;
  v50 = *(v35 + 56);
  v133 = v49;
  v50(v41 + v49, 1, 1, v160);
  v52 = v41 + v44[23];
  v134 = v50;
  v132 = v51;
  v50(v52, 1, 1, v48);
  v53 = v39;
  LOBYTE(v163) = v39;
  v146 = v40;
  v164 = v40;
  v54 = v141;
  v55 = v161;
  v56 = sub_2433F0DDC(&v163, v142, v141, v42, v147, v161, v43);
  v147 = v44;
  v57 = *(v43 + 8);
  sub_2433FB8F8(v56, v58, v54, v42, v55, v57, v41 + v44[25]);
  v163 = v54;
  v164 = v42;
  v165 = v55;
  v166 = v57;
  v59 = type metadata accessor for SymmetricState(0, &v163);
  sub_2433FBD18(v158, v159, v59);
  v61 = v145;
  *(v41 + 1) = v145;
  v149 = v39;
  if ((v61 & 1) == 0)
  {
    LOBYTE(v163) = v39;
    if (sub_2433F8834(v60))
    {
      v80 = v156;
      v81 = v157;
      v82 = v129;
      (*(v157 + 16))(v129, v153, v156);
      v83 = v139;
      v84 = v140;
      if ((*(v139 + 48))(v82, 1, v140) == 1)
      {
        (*(v81 + 8))(v82, v80);
        v163 = 0;
        v164 = 0xE000000000000000;
        sub_243400330();
        MEMORY[0x245D33B00](0xD00000000000001ALL, 0x80000002434019B0);
        v162 = v149;
        sub_243400350();
        MEMORY[0x245D33B00](0xD00000000000001CLL, 0x80000002434019F0);
        goto LABEL_43;
      }

      v85 = *(v83 + 32);
      v86 = v127;
      v85(v127, v82, v84);
      v87 = *(v81 + 8);
      v88 = v136;
      v87(v41 + v136, v80);
      v85((v41 + v88), v86, v84);
      v137(v41 + v88, 0, 1, v84);
      v53 = v149;
    }

    LOBYTE(v163) = v53;
    if ((sub_2433F8B98() & 1) == 0)
    {
LABEL_15:
      v66 = v53;
      LOBYTE(v163) = v53;
      v97 = v146;

      v99 = sub_2433F8D6C(v98);
      v64 = v100;
      v102 = v101;
      v104 = v103;

      v65 = v147;
      v105 = (v41 + v147[24]);
      *v105 = v99;
      v105[1] = v64;
      v105[2] = v102;
      v105[3] = v104;
      *v41 = 0;
      if (v97)
      {
        v106 = v148;
        if (v148)
        {
          v107 = *(v97 + 16);
          v64 = *(v148 + 16);

          if (v107 == v64)
          {
            v108 = *(v106 + 16);
            *(v41 + 8) = v106;
            *(v41 + 16) = v106 + 32;
            *(v41 + 24) = 0;
            *(v41 + 32) = (2 * v108) | 1;
            v109 = (v106 + 40);
            v110 = v108 + 1;
            v111 = v157;
            while (--v110)
            {
              v112 = *(v109 - 1);
              v113 = *v109 >> 62;
              if (v113 > 1)
              {
                if (v113 != 2)
                {
                  goto LABEL_37;
                }

                v117 = v112 + 16;
                v115 = *(v112 + 16);
                v116 = *(v117 + 8);
                v114 = __OFSUB__(v116, v115);
                v112 = v116 - v115;
                if (v114)
                {
                  __break(1u);
                  goto LABEL_30;
                }
              }

              else if (v113)
              {
                v114 = __OFSUB__(HIDWORD(v112), v112);
                LODWORD(v112) = HIDWORD(v112) - v112;
                if (v114)
                {
                  __break(1u);
                  goto LABEL_36;
                }

                v112 = v112;
              }

              else
              {
                v112 = BYTE6(*v109);
              }

              v109 += 2;
              if (v112 != 32)
              {
                goto LABEL_37;
              }
            }

            goto LABEL_34;
          }

LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
        }

        __break(1u);
        goto LABEL_39;
      }

LABEL_30:
      if (v148)
      {
        v118 = *(v148 + 16);

        v111 = v157;
        if (!v118)
        {
LABEL_34:
          LOBYTE(v163) = v66;
          *(v41 + 2) = sub_2433F8DF4() & 1;
          LOBYTE(v163) = v66;
          sub_2433F1228(&v163, v65);
          sub_2433EB69C(v158, v159);
          v119 = v155;
          v120 = *(v154 + 8);
          v120(v150, v155);
          v121 = *(v111 + 8);
          v122 = v156;
          v121(v151, v156);
          v120(v152, v119);
          return (v121)(v153, v122);
        }

        __break(1u);
      }

      v111 = v157;
      goto LABEL_34;
    }

    v90 = v154;
    v89 = v155;
    v91 = v128;
    (*(v154 + 16))(v128, v150, v155);
    v92 = v138;
    if ((*(v138 + 48))(v91, 1, v160) == 1)
    {
      (*(v90 + 8))(v91, v89);
      v163 = 0;
      v164 = 0xE000000000000000;
      sub_243400330();
      MEMORY[0x245D33B00](0xD00000000000001ALL, 0x80000002434019B0);
      v162 = v149;
      sub_243400350();
      MEMORY[0x245D33B00](0xD00000000000001CLL, 0x80000002434019D0);
      goto LABEL_43;
    }

    v93 = *(v92 + 32);
    v94 = v126;
    v95 = v160;
    v93(v126, v91, v160);
    v96 = v133;
    (*(v90 + 8))(v41 + v133, v89);
    v93((v41 + v96), v94, v95);
    v134(v41 + v96, 0, 1, v95);
LABEL_14:
    v53 = v149;
    goto LABEL_15;
  }

  LOBYTE(v163) = v39;
  v62 = sub_2433F8668(v60);
  v63 = v140;
  if ((v62 & 1) == 0)
  {
LABEL_5:
    LOBYTE(v163) = v53;
    if ((sub_2433F8A68() & 1) == 0)
    {
      goto LABEL_15;
    }

    v72 = v156;
    v73 = v157;
    v74 = v131;
    (*(v157 + 16))(v131, v151, v156);
    v75 = v139;
    if ((*(v139 + 48))(v74, 1, v63) == 1)
    {
      (*(v73 + 8))(v74, v72);
      v163 = 0;
      v164 = 0xE000000000000000;
      sub_243400330();
      MEMORY[0x245D33B00](0xD00000000000001ALL, 0x80000002434019B0);
      v162 = v149;
      sub_243400350();
      MEMORY[0x245D33B00](0xD00000000000001CLL, 0x80000002434019D0);
      goto LABEL_43;
    }

    v76 = *(v75 + 32);
    v77 = v130;
    v76(v130, v74, v63);
    v78 = *(v73 + 8);
    v79 = v136;
    v78(v41 + v136, v72);
    v76((v41 + v79), v77, v63);
    v137(v41 + v79, 0, 1, v63);
    goto LABEL_14;
  }

  v65 = v154;
  v64 = v155;
  v66 = v125;
  (*(v154 + 16))(v125, v152, v155);
  v67 = v138;
  if ((*(v138 + 48))(v66, 1, v160) != 1)
  {
    v68 = *(v67 + 32);
    v69 = v124;
    v70 = v160;
    v68(v124, v66, v160);
    v71 = v133;
    (*(v65 + 1))(v41 + v133, v64);
    v68((v41 + v71), v69, v70);
    v134(v41 + v71, 0, 1, v70);
    v53 = v149;
    goto LABEL_5;
  }

LABEL_39:
  (*(v65 + 1))(v66, v64);
  v163 = 0;
  v164 = 0xE000000000000000;
  sub_243400330();
  MEMORY[0x245D33B00](0xD00000000000001ALL, 0x80000002434019B0);
  v162 = v149;
  sub_243400350();
  MEMORY[0x245D33B00](0xD00000000000001CLL, 0x80000002434019F0);
LABEL_43:
  result = sub_243400360();
  __break(1u);
  return result;
}

uint64_t sub_2433F0DDC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v57 = a6;
  v58 = a4;
  v55 = a5;
  v56 = a3;
  v54 = a2;
  v9 = sub_2434000F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 1);
  if (v14)
  {
    HIDWORD(v49) = *a1;
    v50 = a7;
    v51 = v12;
    v52 = v10;
    v53 = v9;
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 32);
      v17 = MEMORY[0x277D84F90];
      do
      {
        v19 = *v16++;
        v18 = v19;
        v20 = v19 == 3;
        v21 = 862679920;
        if (v19 != 3)
        {
          v21 = 0x6B6361626C6C6166;
        }

        v22 = 0xE800000000000000;
        if (v20)
        {
          v22 = 0xE400000000000000;
        }

        if (v18 == 2)
        {
          v21 = 845902704;
          v22 = 0xE400000000000000;
        }

        v23 = 812348272;
        if (v18)
        {
          v23 = 829125488;
        }

        if (v18 <= 1)
        {
          v24 = v23;
        }

        else
        {
          v24 = v21;
        }

        if (v18 <= 1)
        {
          v25 = 0xE400000000000000;
        }

        else
        {
          v25 = v22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_2433F6938(0, *(v17 + 2) + 1, 1, v17);
        }

        v27 = *(v17 + 2);
        v26 = *(v17 + 3);
        if (v27 >= v26 >> 1)
        {
          v17 = sub_2433F6938((v26 > 1), v27 + 1, 1, v17);
        }

        *(v17 + 2) = v27 + 1;
        v28 = &v17[16 * v27];
        *(v28 + 4) = v24;
        *(v28 + 5) = v25;
        --v15;
      }

      while (v15);
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v59 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED736B8, &unk_243401130);
    sub_2433F57A4();
    v29 = sub_2434000A0();
    v30 = v31;

    v10 = v52;
    v9 = v53;
    a7 = v50;
    v12 = v51;
    v13 = HIDWORD(v49);
  }

  else
  {
    v29 = 0;
    v30 = 0xE000000000000000;
  }

  v59 = 0;
  v60 = 0xE000000000000000;
  sub_243400330();

  v59 = 0x5F6573696F4ELL;
  v60 = 0xE600000000000000;
  if (qword_27ED73528 != -1)
  {
    result = swift_once();
  }

  v33 = qword_27ED737D0;
  if (!*(qword_27ED737D0 + 16))
  {
    __break(1u);
    goto LABEL_34;
  }

  result = sub_2433FAB7C(v13);
  if ((v34 & 1) == 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v35 = (*(v33 + 56) + 32 * result);
  v36 = *v35;
  v37 = v35[1];
  v39 = v35[2];
  v38 = v35[3];

  v40 = MEMORY[0x245D33A90](v36, v37, v39, v38);
  v42 = v41;

  MEMORY[0x245D33B00](v40, v42);

  MEMORY[0x245D33B00](v29, v30);

  MEMORY[0x245D33B00](95, 0xE100000000000000);
  v43 = (*(v55 + 24))();
  MEMORY[0x245D33B00](v43);

  MEMORY[0x245D33B00](95, 0xE100000000000000);
  v44 = (*(v57 + 48))();
  MEMORY[0x245D33B00](v44);

  MEMORY[0x245D33B00](95, 0xE100000000000000);
  v45 = (*(a7 + 16))();
  MEMORY[0x245D33B00](v45);

  sub_2434000E0();
  v46 = sub_2434000D0();
  v48 = v47;
  result = (*(v10 + 8))(v12, v9);
  if (v48 >> 60 != 15)
  {

    return v46;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_2433F1228(char *a1, uint64_t a2)
{
  v51 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_243400280();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - v8;
  v45 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8);
  v48 = swift_getAssociatedTypeWitness();
  v10 = sub_243400280();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v43 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v43 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v43 - v22;
  MEMORY[0x28223BE20](v21);
  v26 = &v43 - v25;
  v27 = *a1;
  if (*(v2 + 1) != 1)
  {
    v43 = v24;
    v55 = v27;
    v35 = sub_2433F8B98();
    v36 = v2;
    v32 = v50;
    v31 = v51;
    if (v35)
    {
      v37 = v49;
      (*(v49 + 16))(v14, v2 + *(v51 + 88), v50);
      v38 = v48;
      v39 = *(v48 - 8);
      result = (*(v39 + 48))(v14, 1, v48);
      if (result == 1)
      {
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      (*(v39 + 32))(v17, v14, v38);
      (*(v39 + 56))(v17, 0, 1, v38);
      sub_2433F18C8(v17, v31);
      v35 = (*(v37 + 8))(v17, v32);
    }

    v54 = v27;
    result = sub_2433F8668(v35);
    if ((result & 1) == 0)
    {
      return result;
    }

    v40 = v44;
    (*(v46 + 16))(v44, v36 + *(v31 + 80), v47);
    v41 = *(AssociatedTypeWitness - 8);
    result = (*(v41 + 48))(v40, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      v23 = v43;
      sub_2433FFF60();
      (*(v41 + 8))(v40, AssociatedTypeWitness);
      (*(*(v48 - 8) + 56))(v23, 0, 1);
      goto LABEL_14;
    }

LABEL_19:
    __break(1u);
    return result;
  }

  v53 = *a1;
  v28 = sub_2433F8B98();
  if ((v28 & 1) == 0)
  {
    goto LABEL_5;
  }

  (*(v46 + 16))(v9, v2 + *(v51 + 80), v47);
  v29 = *(AssociatedTypeWitness - 8);
  result = (*(v29 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_2433FFF60();
  (*(v29 + 8))(v9, AssociatedTypeWitness);
  (*(*(v48 - 8) + 56))(v26, 0, 1);
  sub_2433F18C8(v26, v51);
  v28 = (*(v49 + 8))(v26, v50);
LABEL_5:
  v52 = v27;
  result = sub_2433F8668(v28);
  v32 = v50;
  v31 = v51;
  if ((result & 1) == 0)
  {
    return result;
  }

  (*(v49 + 16))(v20, v2 + *(v51 + 88), v50);
  v33 = v48;
  v34 = *(v48 - 8);
  result = (*(v34 + 48))(v20, 1, v48);
  if (result == 1)
  {
    goto LABEL_18;
  }

  (*(v34 + 32))(v23, v20, v33);
  (*(v34 + 56))(v23, 0, 1, v33);
LABEL_14:
  v42 = v49;
  sub_2433F18C8(v23, v31);
  return (*(v42 + 8))(v23, v32);
}

void sub_2433F18C8(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_243400280();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  (*(v6 + 16))(&v17 - v7, a1, v5);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v13 = v12;
    (*(v9 + 8))(v8, AssociatedTypeWitness);
    v14 = *(a2 + 48);
    v15 = *(*(a2 + 56) + 8);
    v17 = *(a2 + 24);
    v18 = v14;
    v19 = v15;
    v16 = type metadata accessor for SymmetricState(0, &v17);
    sub_2433FBD18(v11, v13, v16);
    sub_2433EB69C(v11, v13);
  }
}

uint64_t sub_2433F1B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v42 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8);
  v5 = swift_getAssociatedTypeWitness();
  v6 = sub_243400280();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v37 = &v26 - v7;
  v8 = sub_243400280();
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = sub_2433FFF10();
  v29 = *(v11 - 8);
  v30 = v11;
  MEMORY[0x28223BE20](v11);
  v32 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 48);
  if (v14(a1, 1, AssociatedTypeWitness) == 1 || (v27 = *(v5 - 8), v28 = *(v27 + 48), v28(v42, 1, v5) == 1))
  {
    sub_2433EB4BC();
    swift_allocError();
    *v15 = 2;
    return swift_willThrow();
  }

  (*(v38 + 16))(v10, a1, v8);
  result = (v14)(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v37;
  (*(v35 + 16))(v37, v42, v36);
  result = (v28)(v17, 1, v5);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v18 = v32;
  v19 = v34;
  sub_2433FFF50();
  (*(v27 + 8))(v17, v5);
  if (v19)
  {
    return (*(v13 + 8))(v10, AssociatedTypeWitness);
  }

  (*(v13 + 8))(v10, AssociatedTypeWitness);
  v20 = *(v31 + 48);
  v21 = *(*(v31 + 56) + 8);
  v39 = *(v31 + 24);
  v40 = v20;
  v41 = v21;
  v22 = type metadata accessor for SymmetricState(0, &v39);
  v23 = sub_2433F574C();
  v24 = v22;
  v25 = v30;
  sub_2433FBF00(v18, v24, v30, v23);
  return (*(v29 + 8))(v18, v25);
}

void HandshakeState.readPayload(_:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v8 = a3;
  v9 = a2;
  v10 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    LODWORD(v11) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v11 = v11;
    goto LABEL_7;
  }

  if (v10 != 2)
  {
    goto LABEL_9;
  }

  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = __OFSUB__(v12, v13);
  v11 = v12 - v13;
  if (!v14)
  {
LABEL_7:
    if (v11 >= 0x10000)
    {
      sub_2433EB4BC();
      swift_allocError();
      *v15 = 5;
      swift_willThrow();
      return;
    }

LABEL_9:
    v44 = a2;
    v45 = a3;
    v16 = *(a4 + 96);
    v17 = (v4 + v16);
    v19 = *(v6 + v16 + 16);
    v18 = *(v6 + v16 + 24);
    if (v19 == v18 >> 1)
    {
      sub_2433EB4BC();
      swift_allocError();
      *v20 = 3;
      swift_willThrow();
      sub_2433EB648(v9, v8);
      v21 = v44;
      v22 = v45;
LABEL_23:
      sub_2433EB69C(v21, v22);
      return;
    }

    if (v19 < (v18 >> 1))
    {
      v46 = v5;
      v23 = v17[1];
      sub_2433F22A8(v23 + 40 * v19, v41);
      if (__OFSUB__(v18 >> 1, v19))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v17[1] = v23;
      v17[2] = v19 + 1;
      v17[3] = v18;
      v24 = v42;
      v25 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      v26 = *(v25 + 16);
      sub_2433EB648(v9, v8);
      v27 = v26(v24, v25);
      v28 = *(v27 + 16);
      if (!v28)
      {
LABEL_19:

        v31 = *(a4 + 48);
        v32 = *(*(a4 + 56) + 8);
        v38 = *(a4 + 24);
        v39 = v31;
        v40 = v32;
        v33 = type metadata accessor for SymmetricState(0, &v38);
        v34 = v46;
        sub_2433FC088(v9, v8, v33, v35);
        if (!v34)
        {
          sub_2433F3494(a4, v36, result);
          __swift_destroy_boxed_opaque_existential_1(v41);
          sub_2433EB69C(v44, v45);
          return;
        }

LABEL_22:
        __swift_destroy_boxed_opaque_existential_1(v41);
        v21 = v44;
        v22 = v45;
        goto LABEL_23;
      }

      v29 = 0;
      v30 = v46;
      while (v29 < *(v27 + 16))
      {
        LOBYTE(v38) = *(v27 + v29 + 32);
        sub_2433F230C(&v38, v6, &v44, *(a4 + 16), *(a4 + 24), *(a4 + 32), *(a4 + 40), *(a4 + 48), *(a4 + 56));
        if (v30)
        {

          goto LABEL_22;
        }

        if (v28 == ++v29)
        {
          v46 = 0;
          v9 = v44;
          v8 = v45;
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_2433F22A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2433F230C(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v195 = a3;
  v203 = a1;
  v204 = a2;
  *(&v205 + 1) = a6;
  v206 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_243400280();
  v15 = *(v14 - 8);
  v196 = v14;
  v197 = v15;
  v16 = MEMORY[0x28223BE20](v14);
  v192 = &v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v190 = &v186 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v189 = &v186 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v188 = &v186 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v187 = &v186 - v25;
  MEMORY[0x28223BE20](v24);
  v194 = &v186 - v26;
  *&v205 = a5;
  v211 = a8;
  v191 = type metadata accessor for CipherState(255, a5, a8, v27);
  v28 = sub_243400280();
  v193 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v186 - v29;
  v201 = a4;
  v202 = a7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedTypeWitness();
  v33 = sub_243400280();
  v34 = *(v33 - 8);
  v199 = v33;
  v200 = v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v186 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = MEMORY[0x28223BE20](&v186 - v38);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v186 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v186 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v186 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v50 = MEMORY[0x28223BE20](v49);
  v51 = MEMORY[0x28223BE20](v50);
  v52 = MEMORY[0x28223BE20](v51);
  v58 = &v186 - v57;
  v59 = *v203;
  if (v59 > 2)
  {
    if (*v203 <= 4u)
    {
      if (v59 == 3)
      {
        v60 = v204;
        v61 = v197;
        v62 = (v197 + 16);
        if (*(v204 + 1) == 1)
        {
          *v207 = v201;
          *&v207[8] = v205;
          v208 = v202;
          v209 = v211;
          v210 = v206;
          v63 = type metadata accessor for HandshakeState(0, v207);
          v64 = v187;
          v65 = v196;
          (*v62)(v187, v60 + *(v63 + 84), v196);
          v66 = v199;
          v67 = v200;
          (*(v200 + 16))(v45, v60 + *(v63 + 88), v199);
          sub_2433F1B3C(v64, v45, v63);
          (*(v67 + 8))(v45, v66);
          (*(v61 + 8))(v64, v65);
        }

        else
        {
          *v207 = v201;
          *&v207[8] = v205;
          v208 = v202;
          v209 = v211;
          v210 = v206;
          v165 = type metadata accessor for HandshakeState(0, v207);
          v166 = v188;
          v167 = v196;
          (*v62)(v188, v60 + *(v165 + 80), v196);
          v169 = v199;
          v168 = v200;
          (*(v200 + 16))(v42, v60 + *(v165 + 92), v199);
          sub_2433F1B3C(v166, v42, v165);
          (*(v168 + 8))(v42, v169);
          (*(v61 + 8))(v166, v167);
        }
      }

      else
      {
        v122 = v204;
        v123 = (v197 + 16);
        if (*(v204 + 1) == 1)
        {
          *v207 = v201;
          *&v207[8] = v205;
          v208 = v202;
          v209 = v211;
          v210 = v206;
          v124 = v53;
          v125 = type metadata accessor for HandshakeState(0, v207);
          v126 = v189;
          v127 = v196;
          (*v123)(v189, v122 + *(v125 + 80), v196);
          v129 = v199;
          v128 = v200;
          (*(v200 + 16))(v124, v122 + *(v125 + 92), v199);
          sub_2433F1B3C(v126, v124, v125);
          (*(v128 + 8))(v124, v129);
          (*(v197 + 8))(v126, v127);
        }

        else
        {
          *v207 = v201;
          *&v207[8] = v205;
          v208 = v202;
          v209 = v211;
          v210 = v206;
          v170 = v52;
          v171 = type metadata accessor for HandshakeState(0, v207);
          v172 = v190;
          v173 = v196;
          (*v123)(v190, v122 + *(v171 + 84), v196);
          v175 = v199;
          v174 = v200;
          (*(v200 + 16))(v170, v122 + *(v171 + 88), v199);
          sub_2433F1B3C(v172, v170, v171);
          (*(v174 + 8))(v170, v175);
          (*(v197 + 8))(v172, v173);
        }
      }

      return;
    }

    if (v59 == 5)
    {
      *v207 = v201;
      *&v207[8] = v205;
      v208 = v202;
      v209 = v211;
      v210 = v206;
      v88 = type metadata accessor for HandshakeState(0, v207);
      v90 = v196;
      v89 = v197;
      v91 = v204;
      v92 = v192;
      (*(v197 + 16))(v192, v204 + *(v88 + 80), v196);
      v94 = v199;
      v93 = v200;
      (*(v200 + 16))(v37, v91 + *(v88 + 88), v199);
      sub_2433F1B3C(v92, v37, v88);
      (*(v93 + 8))(v37, v94);
      (*(v89 + 8))(v92, v90);
      return;
    }

    v130 = v204;
    v131 = *(v204 + 8);
    if (v131)
    {
      v133 = *(v204 + 24);
      v132 = *(v204 + 32);
      if (v133 == v132 >> 1)
      {
        __break(1u);
      }

      else
      {
        v203 = (v132 >> 1);
        v200 = v132;
        if (v133 < (v132 >> 1))
        {
          v199 = *(v204 + 16);
          v134 = (v199 + 16 * v133);
          v135 = *v134;
          v136 = v134[1];
          v137 = v205;
          *v207 = v201;
          *&v207[8] = v205;
          v208 = v202;
          v138 = v211;
          v139 = v206;
          v209 = v211;
          v210 = v206;
          v202 = *(type metadata accessor for HandshakeState(0, v207) + 100);
          swift_unknownObjectRetain();
          sub_2433EB648(v135, v136);
          v140 = *(v139 + 8);
          *v207 = v137;
          *&v207[16] = v138;
          v208 = v140;
          v141 = type metadata accessor for SymmetricState(0, v207);
          sub_2433FC2AC(v135, v136, v141);
          sub_2433EB69C(v135, v136);
          if (!__OFSUB__(v203, v133))
          {
            v142 = v199;
            v130[1] = v131;
            v130[2] = v142;
            v143 = v200;
            v130[3] = v133 + 1;
            v130[4] = v143;
            swift_unknownObjectRelease();
            return;
          }

          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    sub_2433EB4BC();
    swift_allocError();
    v145 = 1;
LABEL_33:
    *v144 = v145;
    swift_willThrow();
    return;
  }

  v68 = v193;
  v69 = v28;
  v70 = v194;
  v192 = AssociatedConformanceWitness;
  v71 = v195;
  v190 = AssociatedTypeWitness;
  v203 = v32;
  if (v59)
  {
    if (v59 != 1)
    {
      *v207 = v201;
      *&v207[8] = v205;
      v208 = v202;
      v209 = v211;
      v210 = v206;
      v116 = type metadata accessor for HandshakeState(0, v207);
      v117 = v196;
      v118 = v197;
      v119 = v204;
      (*(v197 + 16))(v70, v204 + *(v116 + 84), v196);
      v121 = v199;
      v120 = v200;
      (*(v200 + 16))(v48, v119 + *(v116 + 92), v199);
      sub_2433F1B3C(v70, v48, v116);
      (*(v120 + 8))(v48, v121);
      (*(v118 + 8))(v70, v117);
      return;
    }

    v196 = v54;
    v197 = v55;
    *v207 = v201;
    *&v207[8] = v205;
    v208 = v202;
    v209 = v211;
    v210 = v206;
    v72 = type metadata accessor for HandshakeState(0, v207);
    v73 = *(v68 + 16);
    v74 = v204;
    v201 = *(v72 + 100);
    v75 = v69;
    v73(v30, v204 + v201, v69);
    v76 = (*(*(v191 - 8) + 48))(v30, 1);
    (*(v68 + 8))(v30, v75);
    v77 = v203;
    v78 = swift_getAssociatedConformanceWitness();
    v79 = (*(v78 + 24))(v77, v78);
    if (v76 == 1)
    {
      v80 = *v71;
      v81 = v71[1];
      v82 = v79;
      sub_2433EB648(*v71, v81);
      sub_2433FB624(v82, v80, v81, v207);
      v83 = *v207;
      v202 = *&v207[8];
      v84 = *v71;
      v85 = v71[1];
      sub_2433EB648(*v71, v85);
      v86 = v82;
      v87 = v84;
    }

    else
    {
      v146 = v79 + 16;
      if (__OFADD__(v79, 16))
      {
LABEL_43:
        __break(1u);
        return;
      }

      v147 = *v71;
      v148 = v71[1];
      sub_2433EB648(*v71, v148);
      sub_2433FB624(v146, v147, v148, v207);
      v83 = *v207;
      v202 = *&v207[8];
      v149 = *v71;
      v85 = v71[1];
      sub_2433EB648(*v71, v85);
      v86 = v146;
      v87 = v149;
    }

    sub_2433F8F68(v86, v87, v85, v207);
    v150 = *v71;
    v151 = v71[1];
    *v71 = *v207;
    sub_2433EB69C(v150, v151);
    v152 = *(v72 + 88);
    v154 = v199;
    v153 = v200;
    v155 = v197;
    (*(v200 + 16))(v197, v74 + v152, v199);
    v156 = *(v203 - 1);
    v157 = (*(v156 + 48))(v155, 1);
    (*(v153 + 8))(v155, v154);
    if (v157 == 1)
    {
      v158 = *(v206 + 8);
      *v207 = v205;
      *&v207[16] = v211;
      v208 = v158;
      v159 = type metadata accessor for SymmetricState(0, v207);
      v160 = v202;
      v161 = v198;
      v163 = sub_2433FC088(v83, v202, v159, v162);
      if (v161)
      {
        sub_2433EB69C(v83, v160);
      }

      else
      {
        v198 = 0;
        v180 = v163;
        v181 = v164;
        v182 = v203;
        v183 = swift_getAssociatedConformanceWitness();
        v184 = v196;
        v185 = v198;
        (*(v183 + 16))(v180, v181, v182, v183);
        sub_2433EB69C(v83, v160);
        if (!v185)
        {
          (*(v156 + 56))(v184, 0, 1, v182);
          (*(v200 + 40))(v74 + v152, v184, v199);
        }
      }
    }

    else
    {
      sub_2433EB4BC();
      swift_allocError();
      *v176 = 2;
      swift_willThrow();
      sub_2433EB69C(v83, v202);
    }
  }

  else
  {
    v197 = v56;
    *v207 = v201;
    *&v207[8] = v205;
    v208 = v202;
    v209 = v211;
    v210 = v206;
    v95 = type metadata accessor for HandshakeState(0, v207);
    v96 = *(v95 + 92);
    v98 = v199;
    v97 = v200;
    (*(v200 + 16))(v58, v204 + v96, v199);
    v99 = v203;
    v100 = *(v203 - 1);
    v101 = (*(v100 + 48))(v58, 1, v203);
    (*(v97 + 8))(v58, v98);
    if (v101 != 1)
    {
      sub_2433EB4BC();
      swift_allocError();
      v145 = 2;
      goto LABEL_33;
    }

    v196 = v100;
    v201 = v96;
    v202 = v95;
    v102 = swift_getAssociatedConformanceWitness();
    v103 = (*(v102 + 24))(v99, v102);
    v104 = *v71;
    v105 = v71[1];
    sub_2433EB648(*v71, v105);
    sub_2433FB624(v103, v104, v105, v207);
    v107 = *v207;
    v106 = *&v207[8];
    v108 = v99;
    v109 = *v71;
    v110 = v71[1];
    sub_2433EB648(*v71, v110);
    sub_2433F8F68(v103, v109, v110, v207);
    v111 = *v71;
    v112 = v71[1];
    *v71 = *v207;
    sub_2433EB69C(v111, v112);
    v113 = *(v102 + 16);
    sub_2433EB648(v107, v106);
    v115 = v197;
    v114 = v198;
    v113(v107, v106, v108, v102);
    if (!v114)
    {
      (*(v196 + 56))(v115, 0, 1, v108);
      v177 = v204;
      (*(v200 + 40))(v204 + v201, v115, v199);
      v178 = *(v206 + 8);
      *v207 = v205;
      *&v207[16] = v211;
      v208 = v178;
      v179 = type metadata accessor for SymmetricState(0, v207);
      sub_2433FBD18(v107, v106, v179);
      if (*(v177 + 8))
      {
        *v207 = v107;
        *&v207[8] = v106;
        sub_2433FBF00(v207, v179, MEMORY[0x277CC9318], MEMORY[0x277CC9300]);
      }
    }

    sub_2433EB69C(v107, v106);
  }
}

uint64_t sub_2433F3494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*(v3 + *(a1 + 96) + 16) == *(v3 + *(a1 + 96) + 24) >> 1)
  {
    v5 = *(v3 + 1);
    v6 = *(v3 + 2);
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 56) + 8);
    v16 = *(a1 + 24);
    v15 = v16;
    v17 = v7;
    v18 = v8;
    v9 = type metadata accessor for SymmetricState(0, &v16);
    sub_2433FC528(v5, v6, v9, a3);
    v11 = type metadata accessor for TransportState(0, v15, v7, v10);
    return (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for TransportState(0, *(a1 + 24), *(a1 + 48), a2);
    v14 = *(*(v13 - 8) + 56);

    return v14(a3, 1, 1, v13);
  }
}

void HandshakeState.writePayload(_:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v53 = xmmword_2434010E0;
  v7 = (v4 + *(a4 + 96));
  v9 = v7[2];
  v8 = v7[3];
  if (v9 == v8 >> 1)
  {
    sub_2433EB4BC();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
LABEL_32:
    sub_2433EB69C(v53, *(&v53 + 1));
    return;
  }

  if (v9 >= (v8 >> 1))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v54 = v5;
  v14 = v7[1];
  sub_2433F22A8(v14 + 40 * v9, v50);
  if (__OFSUB__(v8 >> 1, v9))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v7[1] = v14;
  v7[2] = v9 + 1;
  v7[3] = v8;
  v15 = v51;
  v16 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v17 = (*(v16 + 16))(v15, v16);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = v54;
    do
    {
      if (v19 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      LOBYTE(v49[0]) = *(v17 + v19 + 32);
      sub_2433F3940(v49, v6, &v53, *(a4 + 16), *(a4 + 24), *(a4 + 32), *(a4 + 40), *(a4 + 48), *(a4 + 56));
      if (v20)
      {
        goto LABEL_22;
      }

      ++v19;
    }

    while (v18 != v19);
    v54 = 0;
    v21 = *(&v53 + 1);
    v22 = v53;

    v25 = v21 >> 62;
    if ((v21 >> 62) <= 1)
    {
      if (!v25)
      {
        v26 = BYTE6(v21);
        goto LABEL_15;
      }

      LODWORD(v26) = HIDWORD(v22) - v22;
      if (!__OFSUB__(HIDWORD(v22), v22))
      {
        v26 = v26;
        goto LABEL_15;
      }

      goto LABEL_46;
    }

    if (v25 != 2)
    {
      goto LABEL_14;
    }

    v43 = *(v22 + 16);
    v42 = *(v22 + 24);
    v31 = __OFSUB__(v42, v43);
    v26 = v42 - v43;
    if (v31)
    {
      __break(1u);
      goto LABEL_37;
    }
  }

  else
  {

LABEL_14:
    v26 = 0;
  }

LABEL_15:
  v27 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v27 == 2)
    {
      v30 = *(a2 + 16);
      v29 = *(a2 + 24);
      v31 = __OFSUB__(v29, v30);
      v28 = v29 - v30;
      if (v31)
      {
        __break(1u);
LABEL_22:

        goto LABEL_31;
      }
    }

    else
    {
      v28 = 0;
    }

LABEL_26:
    v32 = v26 + v28;
    if (!__OFADD__(v26, v28))
    {
      v33 = *(a4 + 24);
      v34 = *(a4 + 48);
      v35 = (*(v34 + 64))(v33, v34);
      if (!__OFADD__(v32, v35))
      {
        if (v32 + v35 < 0x10000)
        {
          v37 = *(a4 + 32);
          v38 = *(*(a4 + 56) + 8);
          v49[0] = v33;
          v49[1] = v37;
          v49[2] = v34;
          v49[3] = v38;
          v39 = type metadata accessor for SymmetricState(0, v49);
          v40 = v54;
          sub_2433FC7AC(a2, a3, v39, v41);
          if (!v40)
          {
LABEL_37:
            v44 = v23;
            v45 = v24;
            sub_2433FFE50();
            sub_2433EB69C(v44, v45);
            v46 = v53;
            sub_2433EB648(v53, *(&v53 + 1));
            sub_2433F3494(a4, v47, result);
            __swift_destroy_boxed_opaque_existential_1(v50);
            sub_2433EB69C(v46, *(&v46 + 1));
            return;
          }
        }

        else
        {
          sub_2433EB4BC();
          swift_allocError();
          *v36 = 5;
          swift_willThrow();
        }

LABEL_31:
        __swift_destroy_boxed_opaque_existential_1(v50);
        goto LABEL_32;
      }

      goto LABEL_44;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v27)
  {
    v28 = BYTE6(a3);
    goto LABEL_26;
  }

  LODWORD(v28) = HIDWORD(a2) - a2;
  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v28 = v28;
    goto LABEL_26;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_2433F3940(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v179 = a8;
  v180 = a5;
  v187 = a6;
  v162 = a3;
  v175 = a1;
  v177 = a2;
  v178 = a9;
  swift_getAssociatedTypeWitness();
  v173 = a4;
  v174 = a7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v157 = *(AssociatedConformanceWitness + 8);
  v166 = *(*(v157 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_243400280();
  v13 = *(v12 - 8);
  v169 = v12;
  v170 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v164 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v161 = &v156 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v160 = &v156 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v159 = &v156 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v158 = &v156 - v23;
  MEMORY[0x28223BE20](v22);
  v163 = &v156 - v24;
  v25 = swift_checkMetadataState();
  v168 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v156 - v27;
  v165 = *(AssociatedTypeWitness - 8);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v156 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v156 - v32;
  v171 = sub_243400280();
  v176 = *(v171 - 8);
  v34 = MEMORY[0x28223BE20](v171);
  v35 = MEMORY[0x28223BE20](v34);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v156 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = MEMORY[0x28223BE20](&v156 - v39);
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v156 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v156 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v48 = MEMORY[0x28223BE20](v47);
  v50 = &v156 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v57 = &v156 - v56;
  v58 = *v175;
  if (v58 <= 2)
  {
    v164 = v33;
    v175 = AssociatedTypeWitness;
    if (v58)
    {
      v65 = v176;
      v66 = v177;
      v67 = v171;
      if (v58 != 1)
      {
        v181 = v173;
        v182 = v180;
        v183 = v187;
        v184 = v174;
        v185 = v179;
        v186 = v178;
        v100 = type metadata accessor for HandshakeState(0, &v181);
        (*(v65 + 16))(v43, v66 + *(v100 + 84), v67);
        v102 = v169;
        v101 = v170;
        v103 = v163;
        (*(v170 + 16))(v163, v66 + *(v100 + 92), v169);
        sub_2433F1B3C(v43, v103, v100);
        (*(v101 + 8))(v103, v102);
        (*(v65 + 8))(v43, v67);
        return;
      }

      v181 = v173;
      v182 = v180;
      v183 = v187;
      v184 = v174;
      v185 = v179;
      v186 = v178;
      v68 = type metadata accessor for HandshakeState(0, &v181);
      (*(v65 + 16))(v46, v66 + *(v68 + 80), v67);
      v69 = v25;
      if ((*(v168 + 48))(v46, 1, v25) == 1)
      {
        (*(v65 + 8))(v46, v67);
LABEL_28:
        sub_2433EB4BC();
        swift_allocError();
        v123 = 2;
        goto LABEL_35;
      }

      v124 = v28;
      (*(v168 + 32))(v28, v46, v69);
      v125 = v31;
      sub_2433FFF60();
      v126 = v69;
      v127 = v175;
      v128 = swift_getAssociatedConformanceWitness();
      v92 = (*(v128 + 8))(v127, v128);
      v94 = v129;
      (*(v165 + 8))(v125, v127);
      v130 = *(v178 + 8);
      v181 = v180;
      v182 = v187;
      v183 = v179;
      v184 = v130;
      v131 = type metadata accessor for SymmetricState(0, &v181);
      v132 = v172;
      sub_2433FC7AC(v92, v94, v131, v133);
      if (!v132)
      {
        v151 = v134;
        v152 = v135;
        sub_2433EB69C(v92, v94);
        v184 = MEMORY[0x277CC9318];
        v185 = MEMORY[0x277CC9300];
        v181 = v151;
        v182 = v152;
        v153 = __swift_project_boxed_opaque_existential_1(&v181, MEMORY[0x277CC9318]);
        v154 = *v153;
        v155 = v153[1];
        sub_2433EB648(v151, v152);
        sub_2433F5580(v154, v155, v162);
        sub_2433EB69C(v151, v152);
        (*(v168 + 8))(v124, v126);
        __swift_destroy_boxed_opaque_existential_1(&v181);
        return;
      }

      (*(v168 + 8))(v124, v126);
    }

    else
    {
      v170 = v53;
      v79 = v176;
      v78 = v177;
      v80 = v171;
      v81 = v180;
      if ((*v177 & 1) == 0)
      {
        v181 = v173;
        v182 = v180;
        v183 = v187;
        v184 = v174;
        v185 = v179;
        v186 = v178;
        v82 = type metadata accessor for HandshakeState(0, &v181);
        v83 = *(v79 + 16);
        v169 = *(v82 + 84);
        v83(v57, v78 + v169, v80);
        v84 = v168;
        v85 = (*(v168 + 48))(v57, 1, v25);
        (*(v79 + 8))(v57, v80);
        if (v85 != 1)
        {
          goto LABEL_28;
        }

        sub_2433FFF70();
        (*(v84 + 56))(v50, 0, 1, v25);
        (*(v79 + 40))(v78 + v169, v50, v80);
        v81 = v180;
      }

      v181 = v173;
      v182 = v81;
      v183 = v187;
      v184 = v174;
      v185 = v179;
      v186 = v178;
      v86 = type metadata accessor for HandshakeState(0, &v181);
      v87 = v170;
      (*(v79 + 16))(v170, v78 + *(v86 + 84), v80);
      v88 = v168;
      if ((*(v168 + 48))(v87, 1, v25) == 1)
      {
LABEL_40:
        __break(1u);
        return;
      }

      v89 = v164;
      sub_2433FFF60();
      (*(v88 + 8))(v87, v25);
      v90 = v175;
      v91 = swift_getAssociatedConformanceWitness();
      v92 = (*(v91 + 8))(v90, v91);
      v94 = v93;
      (*(v165 + 8))(v89, v90);
      v184 = MEMORY[0x277CC9318];
      v185 = MEMORY[0x277CC9300];
      v181 = v92;
      v182 = v94;
      v95 = __swift_project_boxed_opaque_existential_1(&v181, MEMORY[0x277CC9318]);
      v96 = *v95;
      v97 = v95[1];
      sub_2433EB648(v92, v94);
      sub_2433F5580(v96, v97, v162);
      __swift_destroy_boxed_opaque_existential_1(&v181);
      v98 = *(v178 + 8);
      v181 = v180;
      v182 = v187;
      v183 = v179;
      v184 = v98;
      v99 = type metadata accessor for SymmetricState(0, &v181);
      sub_2433FBD18(v92, v94, v99);
      if (*(v78 + 8))
      {
        v181 = v92;
        v182 = v94;
        sub_2433FBF00(&v181, v99, MEMORY[0x277CC9318], MEMORY[0x277CC9300]);
      }
    }

    sub_2433EB69C(v92, v94);
    return;
  }

  if (*v175 > 4u)
  {
    if (v58 == 5)
    {
      v181 = v173;
      v182 = v180;
      v183 = v187;
      v184 = v174;
      v185 = v179;
      v186 = v178;
      v70 = v54;
      v71 = type metadata accessor for HandshakeState(0, &v181);
      v73 = v176;
      v72 = v177;
      v74 = v171;
      (*(v176 + 16))(v70, v177 + *(v71 + 80), v171);
      v76 = v169;
      v75 = v170;
      v77 = v164;
      (*(v170 + 16))(v164, v72 + *(v71 + 88), v169);
      sub_2433F1B3C(v70, v77, v71);
      (*(v75 + 8))(v77, v76);
      (*(v73 + 8))(v70, v74);
      return;
    }

    v107 = v177;
    v108 = *(v177 + 8);
    if (v108)
    {
      v110 = *(v177 + 24);
      v109 = *(v177 + 32);
      if (v110 == v109 >> 1)
      {
        __break(1u);
      }

      else
      {
        v175 = (v109 >> 1);
        v176 = v108;
        v171 = v109;
        if (v110 < (v109 >> 1))
        {
          v170 = *(v177 + 16);
          v111 = (v170 + 16 * v110);
          v112 = *v111;
          v113 = v111[1];
          v115 = v179;
          v114 = v180;
          v181 = v173;
          v182 = v180;
          v116 = v187;
          v183 = v187;
          v184 = v174;
          v117 = v178;
          v185 = v179;
          v186 = v178;
          v174 = *(type metadata accessor for HandshakeState(0, &v181) + 100);
          swift_unknownObjectRetain();
          sub_2433EB648(v112, v113);
          v118 = *(v117 + 8);
          v181 = v114;
          v182 = v116;
          v183 = v115;
          v184 = v118;
          v119 = type metadata accessor for SymmetricState(0, &v181);
          sub_2433FC2AC(v112, v113, v119);
          sub_2433EB69C(v112, v113);
          if (!__OFSUB__(v175, v110))
          {
            v120 = v170;
            v107[1] = v176;
            v107[2] = v120;
            v121 = v171;
            v107[3] = v110 + 1;
            v107[4] = v121;
            swift_unknownObjectRelease();
            return;
          }

          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    sub_2433EB4BC();
    swift_allocError();
    v123 = 1;
LABEL_35:
    *v122 = v123;
    swift_willThrow();
    return;
  }

  if (v58 == 3)
  {
    v59 = v177;
    v60 = (v176 + 16);
    if (*(v177 + 1) == 1)
    {
      v181 = v173;
      v182 = v180;
      v183 = v187;
      v184 = v174;
      v185 = v179;
      v186 = v178;
      v136 = v52;
      v61 = type metadata accessor for HandshakeState(0, &v181);
      v138 = v171;
      (*v60)(v136, v59 + *(v61 + 84), v171);
      v63 = v169;
      v62 = v170;
      v64 = v158;
      (*(v170 + 16))(v158, v59 + *(v61 + 88), v169);
      sub_2433F1B3C(v136, v64, v61);
      (*(v62 + 8))(v64, v63);
    }

    else
    {
      v181 = v173;
      v182 = v180;
      v183 = v187;
      v184 = v174;
      v185 = v179;
      v186 = v178;
      v136 = v51;
      v137 = type metadata accessor for HandshakeState(0, &v181);
      v138 = v171;
      (*v60)(v136, v59 + *(v137 + 80), v171);
      v140 = v169;
      v139 = v170;
      v141 = v159;
      (*(v170 + 16))(v159, v59 + *(v137 + 92), v169);
      sub_2433F1B3C(v136, v141, v137);
      (*(v139 + 8))(v141, v140);
    }

    (*(v176 + 8))(v136, v138);
  }

  else
  {
    v105 = v176;
    v104 = v177;
    v106 = (v176 + 16);
    if (*(v177 + 1) == 1)
    {
      v181 = v173;
      v182 = v180;
      v183 = v187;
      v184 = v174;
      v185 = v179;
      v186 = v178;
      v142 = v38;
      v143 = type metadata accessor for HandshakeState(0, &v181);
      v144 = v171;
      (*v106)(v38, v104 + v143[20], v171);
      v145 = v170;
      v146 = *(v170 + 16);
      v147 = v104 + v143[23];
      v148 = &v188;
    }

    else
    {
      v181 = v173;
      v182 = v180;
      v183 = v187;
      v184 = v174;
      v185 = v179;
      v186 = v178;
      v142 = v55;
      v143 = type metadata accessor for HandshakeState(0, &v181);
      v144 = v171;
      (*v106)(v142, v104 + v143[21], v171);
      v145 = v170;
      v146 = *(v170 + 16);
      v147 = v104 + v143[22];
      v148 = &v189;
    }

    v149 = *(v148 - 32);
    v150 = v169;
    v146(v149, v147, v169);
    sub_2433F1B3C(v142, v149, v143);
    (*(v145 + 8))(v149, v150);
    (*(v105 + 8))(v142, v144);
  }
}

void sub_2433F49B8(uint64_t a1)
{
  v17 = 0;
  v24 = MEMORY[0x277D839B0];
  v25 = MEMORY[0x277D839B0];
  v18 = 0;
  v26 = MEMORY[0x277D839B0];
  sub_2433F551C(319, &qword_281505A58, &qword_27ED736A0, &qword_243401110, MEMORY[0x277D83D88]);
  if (v3 <= 0x3F)
  {
    v19 = 0;
    v27 = v2;
    swift_getAssociatedTypeWitness();
    v4 = sub_243400280();
    if (v5 <= 0x3F)
    {
      v20 = 0;
      v28 = v4;
      v29 = v4;
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      v6 = sub_243400280();
      if (v7 <= 0x3F)
      {
        v21 = 0;
        v30 = v6;
        v31 = v6;
        sub_2433F551C(319, &qword_281505A50, &qword_27ED736A8, qword_243401118, MEMORY[0x277D83F98]);
        if (v9 <= 0x3F)
        {
          v22 = 0;
          v32 = v8;
          v10 = *(a1 + 48);
          v11 = *(*(a1 + 56) + 8);
          v14 = *(a1 + 24);
          v15 = v10;
          v16 = v11;
          v12 = type metadata accessor for SymmetricState(319, &v14);
          if (v13 <= 0x3F)
          {
            v23 = 0;
            v33 = v12;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2433F4B90(int *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  swift_getAssociatedConformanceWitness();
  v53 = AssociatedTypeWitness;
  v52 = swift_getAssociatedTypeWitness();
  v8 = *(v52 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v54 = v7;
  if (v7 <= v10)
  {
    v7 = v10;
  }

  v11 = *(sub_2433FFF40() - 8);
  v12 = v11;
  v13 = *(v11 + 80);
  v14 = *(v11 + 84);
  v15 = *(v4 + 64);
  v16 = v14 - 1;
  if (!v14)
  {
    v16 = 0;
  }

  v17 = *(v4 + 80);
  v18 = *(v8 + 80);
  v19 = *(v11 + 64);
  if (v14 <= 0xC)
  {
    v20 = 12;
  }

  else
  {
    v20 = *(v11 + 84);
  }

  if (v7 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v7;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  if (!v6)
  {
    ++v15;
  }

  if (v9)
  {
    v23 = *(v8 + 64);
  }

  else
  {
    v23 = *(v8 + 64) + 1;
  }

  if (v14)
  {
    v24 = 8;
  }

  else
  {
    v24 = 9;
  }

  if (!a2)
  {
    return 0;
  }

  v25 = v15 + v17;
  v26 = v15 + v18;
  v27 = v23 + v18;
  v28 = v23 + 7;
  v29 = v13;
  v30 = v13 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v31 = v13 + 32;
  v32 = v19 + 7;
  v33 = ((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + v29 + v24;
  if (v22 < a2)
  {
    v34 = ((v32 + (v33 & ~v29)) & 0xFFFFFFFFFFFFFFF8) + ((v31 + ((v28 + ((v27 + ((v26 + ((v25 + ((v17 + 40) & ~v17)) & ~v17)) & ~v18)) & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & v30) + 16;
    v35 = v34 & 0xFFFFFFF8;
    if ((v34 & 0xFFFFFFF8) != 0)
    {
      v36 = 2;
    }

    else
    {
      v36 = a2 - v22 + 1;
    }

    if (v36 >= 0x10000)
    {
      v37 = 4;
    }

    else
    {
      v37 = 2;
    }

    if (v36 < 0x100)
    {
      v37 = 1;
    }

    if (v36 >= 2)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    if (v38 > 1)
    {
      if (v38 == 2)
      {
        v39 = *(a1 + v34);
        if (v39)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v39 = *(a1 + v34);
        if (v39)
        {
          goto LABEL_44;
        }
      }
    }

    else if (v38)
    {
      v39 = *(a1 + v34);
      if (v39)
      {
LABEL_44:
        v40 = v39 - 1;
        if (v35)
        {
          v40 = 0;
          v41 = *a1;
        }

        else
        {
          v41 = 0;
        }

        return v22 + (v41 | v40) + 1;
      }
    }
  }

  v42 = (((a1 + 10) & 0xFFFFFFFFFFFFFFF8) + v17 + 32) & ~v17;
  if (v54 == v22)
  {
    if (v6 >= 2)
    {
      v43 = (*(v5 + 48))(v42, v6, v53);
      goto LABEL_65;
    }

    return 0;
  }

  v44 = ~v18;
  v45 = (v26 + ((v25 + v42) & ~v17)) & v44;
  if (v10 == v22)
  {
    if (v9 < 2)
    {
      return 0;
    }

    v43 = (*(v8 + 48))(v45, v9, v52);
LABEL_65:
    if (v43 >= 2)
    {
      return v43 - 1;
    }

    else
    {
      return 0;
    }
  }

  v47 = ((v28 + ((v27 + v45) & v44)) & 0xFFFFFFFFFFFFFFF8);
  if ((v21 & 0x80000000) != 0)
  {
    v49 = (v47 + v31) & v30;
    if (v16 == v20)
    {
      v43 = (*(v12 + 48))(v49);
      goto LABEL_65;
    }

    v50 = *(v12 + 48);
    v51 = (v33 + v49) & ~v29;

    return v50(v51);
  }

  else
  {
    v48 = *v47;
    if (*v47 >= 0xFFFFFFFF)
    {
      LODWORD(v48) = -1;
    }

    return (v48 + 1);
  }
}

void sub_2433F4FE4(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v59 = v5;
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  swift_getAssociatedConformanceWitness();
  v57 = swift_getAssociatedTypeWitness();
  v8 = *(v57 - 8);
  v63 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v58 = v7;
  if (v7 <= v10)
  {
    v7 = v10;
  }

  v11 = 0;
  v12 = *(sub_2433FFF40() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  v15 = *(v5 + 64);
  v16 = v14 - 1;
  if (!v14)
  {
    v16 = 0;
  }

  v17 = *(v5 + 80);
  v18 = *(v8 + 80);
  v19 = *(v8 + 64);
  v20 = *(v12 + 80);
  v21 = *(v12 + 64);
  if (v14 <= 0xC)
  {
    v22 = 12;
  }

  else
  {
    v22 = *(v12 + 84);
  }

  if (v7 <= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v7;
  }

  if (v23 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v23;
  }

  if (!v6)
  {
    ++v15;
  }

  v25 = v15 + v17;
  v26 = v15 + v18;
  v27 = (v15 + v18 + ((v15 + v17 + ((v17 + 40) & ~v17)) & ~v17)) & ~v18;
  if (!v9)
  {
    ++v19;
  }

  v28 = v19 + v18;
  v29 = v19 + 7;
  v30 = (v19 + 7 + ((v19 + v18 + v27) & ~v18)) & 0xFFFFFFFFFFFFFFF8;
  v31 = v20;
  v32 = v20 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v33 = v20 + 32;
  v34 = (v33 + v30) & v32;
  v35 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = v35 + 8;
  v37 = v35 + 9;
  if (v14)
  {
    v37 = v36;
  }

  v38 = v37 + v31;
  v39 = (v38 & ~v31) + v21;
  v40 = ((v39 + 7) & 0xFFFFFFFFFFFFFFF8) + v34 + 16;
  if (v24 < a3)
  {
    if (((v39 + 7) & 0xFFFFFFF8) + v34 == -16)
    {
      v41 = a3 - v24 + 1;
    }

    else
    {
      v41 = 2;
    }

    if (v41 >= 0x10000)
    {
      v42 = 4;
    }

    else
    {
      v42 = 2;
    }

    if (v41 < 0x100)
    {
      v42 = 1;
    }

    if (v41 >= 2)
    {
      v11 = v42;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > v24)
  {
    if (v40)
    {
      v43 = 1;
    }

    else
    {
      v43 = a2 - v24;
    }

    if (v40)
    {
      v44 = ~v24 + a2;
      bzero(a1, v40);
      *a1 = v44;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(a1 + v40) = v43;
      }

      else
      {
        *(a1 + v40) = v43;
      }
    }

    else if (v11)
    {
      *(a1 + v40) = v43;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *(a1 + v40) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_56;
    }

    *(a1 + v40) = 0;
  }

  else if (v11)
  {
    *(a1 + v40) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_56;
  }

  if (!a2)
  {
    return;
  }

LABEL_56:
  v45 = (((a1 + 10) & 0xFFFFFFFFFFFFFFF8) + v17 + 32) & ~v17;
  if (v58 == v24)
  {
    if (v6 < 2)
    {
      return;
    }

    v46 = *(v59 + 56);
    v47 = a2 + 1;
    v48 = v6;
    v49 = AssociatedTypeWitness;

    goto LABEL_60;
  }

  v45 = (v26 + ((v25 + v45) & ~v17)) & ~v18;
  if (v10 == v24)
  {
    if (v9 < 2)
    {
      return;
    }

    v46 = *(v63 + 56);
    v47 = a2 + 1;
    v48 = v9;
    v49 = v57;

LABEL_60:
    v46(v45, v47, v48, v49);
    return;
  }

  v50 = ((v29 + ((v28 + v45) & ~v18)) & 0xFFFFFFFFFFFFFFF8);
  if ((v23 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v50[2] = 0;
      v50[3] = 0;
      *v50 = a2 & 0x7FFFFFFF;
      v50[1] = 0;
    }

    else
    {
      *v50 = a2 - 1;
    }

    return;
  }

  v51 = ((v50 + v33) & v32);
  if (v22 < a2)
  {
    v52 = (v39 + 7) & 0xFFFFFFF8;
    v36 = (v52 + 16);
    if (v52 == -16)
    {
      return;
    }

    v53 = ~v22 + a2;
LABEL_75:
    bzero(((v50 + v33) & v32), v36);
    *v51 = v53;
    return;
  }

  if (v16 == v22)
  {
    v53 = a2 - v14;
    if (a2 >= v14)
    {
      if (!v36)
      {
        return;
      }

      goto LABEL_75;
    }

    v54 = *(v13 + 56);
    v55 = a2 + 1;
    v56 = (v50 + v33) & v32;
  }

  else
  {
    v54 = *(v13 + 56);
    v56 = (v51 + v38) & ~v31;
    v55 = a2;
  }

  v54(v56, v55);
}

void sub_2433F551C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2433F5580(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_2433FFE30();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_2433F56B8(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_2433F56B8(v4, v5);
  }

  return sub_2433FFE30();
}

uint64_t sub_2433F56B8(uint64_t a1, uint64_t a2)
{
  result = sub_2433FFD70();
  if (!result || (result = sub_2433FFDA0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_2433FFD90();
      return sub_2433FFE30();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2433F574C()
{
  result = qword_27ED736B0;
  if (!qword_27ED736B0)
  {
    sub_2433FFF10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED736B0);
  }

  return result;
}

unint64_t sub_2433F57A4()
{
  result = qword_27ED736C0;
  if (!qword_27ED736C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED736B8, &unk_243401130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED736C0);
  }

  return result;
}

uint64_t sub_2433F5808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  result = a4 - a3;
  if (a3)
  {
    v7 = a4 - a3;
  }

  else
  {
    v7 = 0;
  }

  if (a1)
  {
    if (v7 == a2 - a1)
    {
      if (a3)
      {
        result = cc_cmp_safe();
        *a5 = result == 0;
        return result;
      }

      goto LABEL_11;
    }

LABEL_9:
    *a5 = 0;
    return result;
  }

  if (v7)
  {
    goto LABEL_9;
  }

  if (!a3)
  {
LABEL_11:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2433F588C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_2434001C0();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2433F58D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2434002F0();
  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    result = sub_2433F798C(v8, result, *(a1 + 36), 0, a1);
    *a2 = v8[0];
    *(a2 + 8) = result;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
  }

  return result;
}

Chirp::Modifiers_optional __swiftcall Modifiers.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2434003A0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Modifiers.rawValue.getter()
{
  v1 = *v0;
  v2 = 812348272;
  v3 = 845902704;
  v4 = 862679920;
  if (v1 != 3)
  {
    v4 = 0x6B6361626C6C6166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 829125488;
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

uint64_t sub_2433F5A54(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 829125488;
    }

    else
    {
      v3 = 812348272;
    }

    v2 = 0xE400000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE400000000000000;
    v3 = 845902704;
  }

  else if (a1 == 3)
  {
    v2 = 0xE400000000000000;
    v3 = 862679920;
  }

  else
  {
    v2 = 0xE800000000000000;
    v3 = 0x6B6361626C6C6166;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 829125488;
    }

    else
    {
      v8 = 812348272;
    }

    v7 = 0xE400000000000000;
    if (v3 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 862679920;
    if (a2 != 3)
    {
      v5 = 0x6B6361626C6C6166;
      v4 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v6 = 845902704;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = v4;
    }

    if (v3 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v7)
  {
LABEL_28:
    v9 = sub_2434003C0();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_2433F5BA8()
{
  sub_243400440();
  sub_243400130();

  return sub_243400460();
}

uint64_t sub_2433F5C6C(uint64_t a1)
{
  sub_243400130();
}

uint64_t sub_2433F5D1C(uint64_t a1)
{
  sub_243400440();
  sub_243400130();

  return sub_243400460();
}

void sub_2433F5DE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 812348272;
  v5 = 0xE400000000000000;
  v6 = 845902704;
  v7 = 0xE400000000000000;
  v8 = 862679920;
  if (v2 != 3)
  {
    v8 = 0x6B6361626C6C6166;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 829125488;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2433F5E78@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v7 = 0;
  v8 = a1 >> 16;
  v9 = a2 >> 16;
  v10 = MEMORY[0x277D84F90];
  do
  {
    v13 = byte_285625770[v7 + 32];
    v14 = 862679920;
    if (v13 != 3)
    {
      v14 = 0x6B6361626C6C6166;
    }

    v15 = 0xE800000000000000;
    if (v13 == 3)
    {
      v15 = 0xE400000000000000;
    }

    if (v13 == 2)
    {
      v14 = 845902704;
      v15 = 0xE400000000000000;
    }

    v16 = 812348272;
    if (byte_285625770[v7 + 32])
    {
      v16 = 829125488;
    }

    if (byte_285625770[v7 + 32] <= 1u)
    {
      v17 = v16;
    }

    else
    {
      v17 = v14;
    }

    if (byte_285625770[v7 + 32] <= 1u)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = v15;
    }

    if (v17 == a3 && v18 == a4 && !v8 && (HIBYTE(v18) & 0xC) == v9)
    {
    }

    else
    {
      v19 = sub_2434003B0();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2433F6C70(0, *(v10 + 16) + 1, 1);
    }

    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_2433F6C70((v11 > 1), v12 + 1, 1);
    }

    *(v10 + 16) = v12 + 1;
    *(v10 + v12 + 32) = v13;
LABEL_5:
    ++v7;
  }

  while (v7 != 5);

  if (*(v10 + 16))
  {
    v20 = *(v10 + 32);
  }

  else
  {
    v20 = 5;
  }

  *a5 = v20;
  return result;
}

uint64_t HandshakeAndModifiers.init(_:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v74 = a5;
  v76 = sub_243400490();
  MEMORY[0x28223BE20](v76);
  v12 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 >> 14;
  v77 = a2;
  v78 = a2 >> 14;
  if (a1 >> 14 == a2 >> 14)
  {

    goto LABEL_38;
  }

  v75 = (v10 + 8);

  v14 = a1;
  v73 = a1 >> 14;
  while (1)
  {
    v16 = a3;
    v17 = sub_2434002B0();
    v19 = v18;
    if (sub_243400070())
    {
      if ((v19 & 0x2000000000000000) != 0)
      {
        v20 = HIBYTE(v19) & 0xF;
      }

      else
      {
        v20 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (!v20)
      {
        __break(1u);
        goto LABEL_61;
      }

      if ((v19 & 0x1000000000000000) != 0)
      {
        v25 = sub_243400120();
      }

      else
      {
        if ((v19 & 0x2000000000000000) != 0)
        {
          v22 = v17;
        }

        else
        {
          if ((v17 & 0x1000000000000000) != 0)
          {
            v21 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v21 = sub_243400340();
          }

          v22 = *v21;
        }

        v23 = v22;
        v24 = (__clz(~v22) - 24) << 16;
        if (v23 < 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = 65541;
        }
      }

      v26 = 4 * v20;
      if (v26 == v25 >> 14)
      {
        result = sub_2433F7590(v17, v19);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_67;
        }

        sub_2434004A0();
        v5 = sub_243400470();
        (*v75)(v12, v76);
        if (v5)
        {
          goto LABEL_32;
        }
      }

      if (sub_243400060())
      {
        if ((v19 & 0x1000000000000000) != 0)
        {
          if (v26 != sub_243400120() >> 14)
          {
LABEL_30:
            if ((sub_243400060() & 1) == 0 || (sub_243400050() & 1) == 0)
            {
              goto LABEL_32;
            }

            goto LABEL_4;
          }
        }

        else if (v26 != ((4 * sub_243400310()) & 0x3FFFFFFFFFFFFLL))
        {
          goto LABEL_30;
        }

        result = sub_2433F7590(v17, v19);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_68;
        }

        sub_2434004A0();
        v5 = sub_243400480();
        (*v75)(v12, v76);
        if (v5)
        {
LABEL_32:

          goto LABEL_5;
        }

        goto LABEL_30;
      }
    }

LABEL_4:
    v15 = sub_243400080();

    if ((v15 & 1) == 0)
    {
      break;
    }

LABEL_5:
    a3 = v16;
    v14 = sub_243400290();
    v13 = v14 >> 14;
    if (v14 >> 14 == v78)
    {
      v13 = v78;
      goto LABEL_37;
    }
  }

  a3 = v16;
LABEL_37:
  if (v13 < v73)
  {
    goto LABEL_63;
  }

LABEL_38:
  v28 = sub_2434002C0();
  v5 = v29;
  v76 = v30;
  v14 = v31;

  if (v78 < v5 >> 14)
  {
    goto LABEL_64;
  }

  v75 = v28;

  v73 = a3;
  v32 = sub_2434002C0();
  v34 = v33;
  v36 = v35;

  v79 = 43;
  v80 = 0xE100000000000000;
  MEMORY[0x28223BE20](v37);
  v72[-2] = &v79;

  v72[2] = v34;
  v72[3] = v32;
  v72[1] = v36;
  v78 = sub_2433F6E90(0x7FFFFFFFFFFFFFFFLL, 1, sub_2433F7A24, &v72[-4], v32, v34, v36, v38);
  if (qword_27ED73528 != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v39 = qword_27ED737D0;

    v40 = v75;
    v41 = v76;
    v42 = sub_2433F7BF4(v39, v75, v5, v76, v14);

    sub_2433F58D4(v42, &v79);

    if (!v81)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED736C8, &qword_243401150);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_243401140;
      v79 = 0;
      v80 = 0xE000000000000000;
      sub_243400330();
      v48 = MEMORY[0x245D33A90](v40, v5, v41, v14);
      v50 = v49;

      v79 = v48;
      v80 = v50;
      v51 = 0xD000000000000018;
      v52 = 0x8000000243401A10;
      goto LABEL_57;
    }

    v43 = v79;

    v44 = sub_2434002A0();
    v45 = v73;
    if (v44 == sub_2434002A0())
    {

      v46 = 0;
      goto LABEL_58;
    }

    v53 = sub_2434002A0();

    v54 = sub_2434002A0();

    v55 = __OFADD__(v53, v54);
    v56 = v53 + v54;
    if (v55)
    {
      break;
    }

    v57 = v77;
    if (v56 != sub_2434002A0())
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED736C8, &qword_243401150);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_243401140;
      v79 = 0;
      v80 = 0xE000000000000000;
      sub_243400330();
      MEMORY[0x245D33B00](0xD000000000000019, 0x8000000243401A30);
      v66 = MEMORY[0x245D33A90](a1, v57, v45, a4);
      v68 = v67;

      MEMORY[0x245D33B00](v66, v68);

      v52 = 0x8000000243401A50;
      v51 = 0xD000000000000019;
LABEL_57:
      MEMORY[0x245D33B00](v51, v52);
      v70 = v79;
      v69 = v80;
      *(v47 + 56) = MEMORY[0x277D837D0];
      *(v47 + 32) = v70;
      *(v47 + 40) = v69;
      sub_243400430();

      v43 = 0;
      v46 = 1;
LABEL_58:
      v71 = v74;
      *v74 = v43;
      v71[1] = v46;
      return result;
    }

    v58 = v78;
    v59 = *(v78 + 16);
    if (!v59)
    {
      v46 = MEMORY[0x277D84F90];

      goto LABEL_58;
    }

    v5 = 0;
    v14 = v78 + 56;
    v46 = MEMORY[0x277D84F90];
    a4 = &unk_2434012A0;
    while (v5 < *(v58 + 16))
    {
      v60 = *(v14 - 8);
      v61 = *v14;
      a1 = *(v14 - 24);
      v62 = *(v14 - 16);
      swift_bridgeObjectRetain_n();
      sub_2433F5E78(a1, v62, v60, v61, &v79);
      v63 = v79;
      if (v79 == 5)
      {
        goto LABEL_62;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_2433F6B64(0, *(v46 + 16) + 1, 1, v46, &qword_27ED736E8, &unk_2434012A0);
      }

      v58 = v78;
      v65 = *(v46 + 16);
      v64 = *(v46 + 24);
      if (v65 >= v64 >> 1)
      {
        a1 = v78;
        v46 = sub_2433F6B64((v64 > 1), v65 + 1, 1, v46, &qword_27ED736E8, &unk_2434012A0);
        v58 = a1;
      }

      ++v5;
      *(v46 + 16) = v65 + 1;
      *(v46 + v65 + 32) = v63;
      v14 += 32;
      if (v59 == v5)
      {

        goto LABEL_58;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

char *sub_2433F6938(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED73710, &qword_2434012C8);
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
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2433F6A44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED736F8, &qword_2434012B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2433F6B64(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_2433F6C50(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2433F6C90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2433F6C70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2433F6D9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2433F6C90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED73708, &qword_2434012C0);
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
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2433F6D9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED736E8, &unk_2434012A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_2433F6E90@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a9@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v17 = v10;
  v13 = a6;
  v18 = a5 >> 14;
  v14 = a6 >> 14;
  if (a1 && v18 != v14)
  {
    v9 = a4;
    v16 = MEMORY[0x277D84F90];
    v11 = a5;
    do
    {
      v19 = v11 >> 14;
      if (v11 >> 14 == v14)
      {
        break;
      }

      v41 = a1;
      v48 = v17;
      v43 = v16;
      v16 = a7;
      while (1)
      {
        while (1)
        {
          v47[0] = sub_2434002B0();
          v47[1] = v20;
          v21 = v48;
          v22 = a3(v47);
          v48 = v21;
          if (v21)
          {

            return v16;
          }

          v23 = v22;

          if (v23)
          {
            break;
          }

          v16 = a7;
          v19 = sub_243400290() >> 14;
          if (v19 == v14)
          {
            v16 = v43;
            goto LABEL_28;
          }
        }

        result = v11;
        if (v11 >> 14 != v19 || (a2 & 1) == 0)
        {
          break;
        }

        v16 = a7;
        v11 = sub_243400290();
        v19 = v11 >> 14;
        if (v11 >> 14 == v14)
        {
          v16 = v43;
          goto LABEL_28;
        }
      }

      if (v19 < v11 >> 14)
      {
        __break(1u);
        return result;
      }

      v44 = sub_2434002C0();
      v39 = v26;
      v40 = v25;
      v38 = v27;
      v16 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2433F6A44(0, *(v43 + 2) + 1, 1, v43);
      }

      v29 = *(v16 + 2);
      v28 = *(v16 + 3);
      if (v29 >= v28 >> 1)
      {
        v16 = sub_2433F6A44((v28 > 1), v29 + 1, 1, v16);
      }

      *(v16 + 2) = v29 + 1;
      v30 = &v16[32 * v29];
      *(v30 + 4) = v44;
      *(v30 + 5) = v40;
      *(v30 + 6) = v39;
      *(v30 + 7) = v38;
      v11 = sub_243400290();
      a1 = v41;
      v17 = v48;
    }

    while (*(v16 + 2) != v41);
LABEL_28:
    if (v11 >> 14 == v14 && (a2 & 1) != 0)
    {

      return v16;
    }

    if (v14 >= v11 >> 14)
    {
      v9 = sub_2434002C0();
      v11 = v34;
      v13 = v35;
      v14 = v36;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
LABEL_34:
      v12 = v15 + 1;
      if (v15 < a9 >> 1)
      {
LABEL_35:
        *(v16 + 2) = v12;
        v37 = &v16[32 * v15];
        *(v37 + 4) = v9;
        *(v37 + 5) = v11;
        *(v37 + 6) = v13;
        *(v37 + 7) = v14;
        return v16;
      }

LABEL_38:
      v16 = sub_2433F6A44((a9 > 1), v12, 1, v16);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v16 = sub_2433F6A44(0, *(v16 + 2) + 1, 1, v16);
    goto LABEL_33;
  }

  if (v18 != v14 || (a2 & 1) == 0)
  {
    if (v14 >= v18)
    {
      v9 = sub_2434002C0();
      v11 = v31;
      v13 = v32;
      v14 = v33;

      v16 = sub_2433F6A44(0, 1, 1, MEMORY[0x277D84F90]);
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return MEMORY[0x277D84F90];
}

void *sub_2433F7298(void *result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v9 = result;
      v10 = a2;
      v11 = a6;
      v12 = a5;
      v13 = a4;
      bzero(result, 8 * a2);
      result = v9;
      a2 = v10;
      a4 = v13;
      a5 = v12;
      a6 = v11;
    }

    v14 = sub_2433F7A7C(result, a2, a3, a4, a5, a6, a7);

    return v14;
  }

  return result;
}

uint64_t sub_2433F7348(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED736F0, &unk_243401540);
  result = sub_243400390();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + v16);
    v18 = (*(v4 + 56) + 32 * v16);
    v32 = v18[1];
    v33 = *v18;
    v19 = v18[3];
    v31 = v18[2];
    sub_243400440();
    MEMORY[0x245D33DD0](v17);
    result = sub_243400460();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + v23) = v17;
    v28 = (*(v9 + 56) + 32 * v23);
    *v28 = v33;
    v28[1] = v32;
    v28[2] = v31;
    v28[3] = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_2433F7590(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_2433F76E0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_243400320();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_243400340() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_2433F76E0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_2433F7778(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_2433F77EC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_2433F7778(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_2433F7910(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2433F77EC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_243400340();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_2433F7910(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2434001B0();
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
    v5 = MEMORY[0x245D33B20](15, a1 >> 16);
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

_BYTE *sub_2433F798C(_BYTE *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(a5 + 56);
    *result = *(*(a5 + 48) + a2);
    v6 = *(v5 + 32 * a2);

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2433F7A24(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2434003C0() & 1;
  }
}

uint64_t sub_2433F7A7C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = result;
  v9 = 0;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = a4 >> 16;
  v16 = a5 >> 16;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = (*(a3 + 56) + 32 * v20);
    result = v21[2];
    if (result != a6 || v21[3] != a7 || *v21 >> 16 != v15 || v21[1] >> 16 != v16)
    {
      result = sub_2434003B0();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v27 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    if (__OFADD__(v28++, 1))
    {
      __break(1u);
      return sub_2433F7348(v27, a2, v28, a3);
    }
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
      return sub_2433F7348(v27, a2, v28, a3);
    }

    v19 = *(v10 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v13 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_2433F7BF4(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;
  v15 = swift_bridgeObjectRetain_n();
  if (v12 <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    v20[0] = v20;
    MEMORY[0x28223BE20](v15);
    bzero(v20 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v14);
    v16 = sub_2433F7A7C(v20 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v13, a1, a2, a3, a4, a5);
    if (v5)
    {
      swift_willThrow();
      return swift_bridgeObjectRelease_n();
    }

    v18 = v16;
    swift_bridgeObjectRelease_n();
    return v18;
  }

  v19 = swift_slowAlloc();

  v18 = sub_2433F7298(v19, v13, a1, a2, a3, a4, a5);
  MEMORY[0x245D34100](v19, -1, -1);
  result = swift_bridgeObjectRelease_n();
  if (!v5)
  {
    return v18;
  }

  return result;
}

unint64_t sub_2433F7DDC()
{
  result = qword_27ED736D0;
  if (!qword_27ED736D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED736D0);
  }

  return result;
}

unint64_t sub_2433F7E34()
{
  result = qword_27ED736D8;
  if (!qword_27ED736D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED736E0, &qword_2434011F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED736D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Modifiers(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Modifiers(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2433F8004(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_2433F8060(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t ChirpErrors.hashValue.getter()
{
  v1 = *v0;
  sub_243400440();
  MEMORY[0x245D33DD0](v1);
  return sub_243400460();
}

uint64_t sub_2433F815C()
{
  v1 = *v0;
  sub_243400440();
  MEMORY[0x245D33DD0](v1);
  return sub_243400460();
}

uint64_t sub_2433F81D0(uint64_t a1)
{
  v2 = *v1;
  sub_243400440();
  MEMORY[0x245D33DD0](v2);
  return sub_243400460();
}

unint64_t sub_2433F8218()
{
  result = qword_27ED73718;
  if (!qword_27ED73718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73718);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChirpErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChirpErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2433F83CC(uint64_t result, char *a2)
{
  v5 = &a2[-result];
  if (result)
  {
    v6 = &a2[-result];
  }

  else
  {
    v6 = 0;
  }

  v7 = *v2;
  v8 = *(*v2 + 16);
  v9 = &v6[v8];
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
  if (!result || (v10 = *(v7 + 24) >> 1, v10 < v9))
  {
    if (v8 <= v9)
    {
      v11 = &v6[v8];
    }

    else
    {
      v11 = v8;
    }

    result = sub_2433F6924(result, v11, 1, v7);
    v7 = result;
    v10 = *(result + 24) >> 1;
  }

  v12 = *(v7 + 16);
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

    result = memmove((v7 + v12 + 32), v3, v14);
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

  v15 = *(v7 + 16);
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (!v16)
  {
    *(v7 + 16) = v17;
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
  v20 = *(v7 + 16);
  v23 = *v3;
  v21 = v3 + 1;
  v22 = v23;
  while (1)
  {
    v24 = *(v7 + 24);
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
    *(v7 + 16) = v20;
  }

  result = sub_2433F6924((v24 > 1), v20 + 1, 1, v7);
  v7 = result;
  v25 = *(result + 24) >> 1;
  if (v20 >= v25)
  {
    goto LABEL_37;
  }

LABEL_40:
  v26 = v20 + 32;
  while (1)
  {
    *(v7 + v26) = v22;
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

  *(v7 + 16) = v26 - 31;
LABEL_32:
  *v2 = v7;
  return result;
}

uint64_t sub_2433F857C(uint64_t result)
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

  result = sub_2433F6B50(result, v11, 1, v3);
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

uint64_t sub_2433F8668(uint64_t a1)
{
  v2 = *v1;
  result = sub_2433F8DF4();
  if (result)
  {
    v4 = 1;
    return v4 & 1;
  }

  if (qword_27ED73528 != -1)
  {
    result = swift_once();
  }

  v5 = qword_27ED737D0;
  if (!*(qword_27ED737D0 + 16))
  {
    __break(1u);
    goto LABEL_20;
  }

  result = sub_2433FAB7C(v2);
  if ((v6 & 1) == 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = (*(v5 + 56) + 32 * result);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];

  MEMORY[0x245D33A90](v8, v9, v10, v11);

  v12 = sub_243400190();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    do
    {
      if (sub_243400070())
      {
        MEMORY[0x245D33AF0](v14, v15);
      }

      v14 = sub_243400190();
      v15 = v16;
    }

    while (v16);
  }

  v17 = sub_2433F954C(0, 0xE000000000000000);
  v19 = v18;

  if (v19)
  {
    if (v17 == 75 && v19 == 0xE100000000000000)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_2434003C0();
    }

    return v4 & 1;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2433F8834(uint64_t a1)
{
  v2 = *v1;
  result = sub_2433F8DF4();
  if (result)
  {
    v4 = 1;
    return v4 & 1;
  }

  if (qword_27ED73528 != -1)
  {
    result = swift_once();
  }

  v5 = qword_27ED737D0;
  if (!*(qword_27ED737D0 + 16))
  {
    __break(1u);
    goto LABEL_26;
  }

  result = sub_2433FAB7C(v2);
  if ((v6 & 1) == 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v7 = (*(v5 + 56) + 32 * result);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];

  MEMORY[0x245D33A90](v8, v9, v10, v11);

  v12 = sub_243400190();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v16 = MEMORY[0x277D84F90];
    do
    {
      if (sub_243400070())
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2433F6C50(0, v16[2] + 1, 1);
        }

        v19 = v16[2];
        v18 = v16[3];
        if (v19 >= v18 >> 1)
        {
          sub_2433F6C50((v18 > 1), v19 + 1, 1);
        }

        v16[2] = v19 + 1;
        v20 = &v16[2 * v19];
        v20[4] = v14;
        v20[5] = v15;
      }

      else
      {
      }

      v14 = sub_243400190();
      v15 = v17;
    }

    while (v17);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v16[2] >= 2uLL)
  {
    v22 = v16[6];
    v21 = v16[7];

    if (v22 == 78 && v21 == 0xE100000000000000)
    {

      v4 = 0;
    }

    else
    {
      v23 = sub_2434003C0();

      v4 = v23 ^ 1;
    }

    return v4 & 1;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2433F8A68()
{
  result = *v0;
  if (qword_27ED73528 != -1)
  {
    v18 = *v0;
    swift_once();
    result = v18;
  }

  v2 = qword_27ED737D0;
  if (!*(qword_27ED737D0 + 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_2433FAB7C(result);
  if ((v3 & 1) == 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = (*(v2 + 56) + 32 * result);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];

  v9 = MEMORY[0x245D33A90](v5, v6, v7, v8);
  v11 = v10;

  v12 = sub_2433F588C(v9, v11);
  v14 = v13;

  if (!v14)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (v12 == 78 && v14 == 0xE100000000000000)
  {

    v17 = 0;
  }

  else
  {
    v16 = sub_2434003C0();

    v17 = v16 ^ 1;
  }

  return v17 & 1;
}

uint64_t sub_2433F8B98()
{
  result = *v0;
  if (qword_27ED73528 != -1)
  {
    v20 = *v0;
    swift_once();
    result = v20;
  }

  v2 = qword_27ED737D0;
  if (!*(qword_27ED737D0 + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  result = sub_2433FAB7C(result);
  if ((v3 & 1) == 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v4 = (*(v2 + 56) + 32 * result);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];

  MEMORY[0x245D33A90](v5, v6, v7, v8);

  v9 = sub_243400190();
  v11 = v10;
  if (v10)
  {
    v12 = v9;
    do
    {
      if (sub_243400070())
      {
        MEMORY[0x245D33AF0](v12, v11);
      }

      v12 = sub_243400190();
      v11 = v13;
    }

    while (v13);
  }

  v14 = sub_2434001D0();
  v16 = sub_2433F588C(v14, v15);
  v18 = v17;

  if (!v18)
  {
    goto LABEL_18;
  }

  if (v16 == 75 && v18 == 0xE100000000000000)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_2434003C0();
  }

  return v19 & 1;
}

uint64_t sub_2433F8D6C(uint64_t a1)
{
  result = sub_2433F95CC();
  v9[0] = result;
  v9[1] = v3;
  v9[2] = 0;
  v9[3] = v4;
  if (a1)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = (a1 + 32);
      do
      {
        v7 = *v6++;
        v8 = v7;
        sub_2433FA794(&v8, v9);
        --v5;
      }

      while (v5);
      return v9[0];
    }
  }

  return result;
}

unint64_t sub_2433F8DF4()
{
  result = *v0;
  if (qword_27ED73528 != -1)
  {
    v15 = *v0;
    swift_once();
    result = v15;
  }

  v2 = qword_27ED737D0;
  if (!*(qword_27ED737D0 + 16))
  {
    __break(1u);
    goto LABEL_12;
  }

  result = sub_2433FAB7C(result);
  if ((v3 & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v4 = (*(v2 + 56) + 32 * result);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];

  MEMORY[0x245D33A90](v5, v6, v7, v8);

  v9 = sub_243400190();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    do
    {
      if (sub_243400070())
      {
        MEMORY[0x245D33AF0](v11, v12);
      }

      v11 = sub_243400190();
      v12 = v13;
    }

    while (v13);
  }

  v14 = sub_243400140();

  return v14 == 1;
}

void sub_2433F8F68(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_2433FEA40(v10, v9, a2, a3);
    if (!a1 || v11 >= a1)
    {
      v12 = sub_2433FEAF4(v10, a1, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v14 = sub_2433FFE40();
    v16 = v15;
    sub_2433EB69C(a2, a3);
    *a4 = v14;
    a4[1] = v16;
  }
}