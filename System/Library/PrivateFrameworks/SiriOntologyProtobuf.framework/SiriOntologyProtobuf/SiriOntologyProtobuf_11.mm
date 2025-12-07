void sub_26865FEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_268689C74();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v13 = v3[1];
  v12 = v3[2];
  if (v12 == v13)
  {
    goto LABEL_8;
  }

  v14 = *v3;
  while (1)
  {
    v15 = *(v14 + v12);
    v16 = v15 > 0x20;
    v17 = (1 << v15) & 0x100002600;
    if (v16 || v17 == 0)
    {
      break;
    }

    v3[2] = ++v12;
    if (v13 == v12)
    {
      goto LABEL_8;
    }
  }

  if (v13 == v12 || *(*v3 + v12) != 110 || (sub_2685BD87C(&unk_287928360) & 1) == 0)
  {
LABEL_8:
    sub_2685BE520(a2, a3, v11);
    if (!v4)
    {
      (*(v9 + 8))(a1, v8);
      (*(*(a2 - 8) + 56))(v11, 0, 1, a2);
      (*(v9 + 32))(a1, v11, v8);
    }
  }

  else
  {
    (*(v9 + 8))(a1, v8);
    (*(*(a2 - 8) + 56))(a1, 1, 1, a2);
  }
}

void sub_2686600D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2685BD964())
  {
    (*(v7 + 8))(a1, a2);
    (*(a3 + 24))(a2, a3);
  }

  else
  {
    sub_2685BE520(a2, a3, v9);
    if (!v3)
    {
      (*(v7 + 8))(a1, a2);
      (*(v7 + 32))(a1, v9, a2);
    }
  }
}

void sub_268660228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = a1;
  v9 = *(a2 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v16 = v3[1];
  v15 = v3[2];
  if (v15 == v16)
  {
    goto LABEL_8;
  }

  v17 = *v3;
  while (1)
  {
    v18 = *(v17 + v15);
    v19 = v18 > 0x20;
    v20 = (1 << v18) & 0x100002600;
    if (v19 || v20 == 0)
    {
      break;
    }

    v3[2] = ++v15;
    if (v16 == v15)
    {
      goto LABEL_8;
    }
  }

  if (v16 == v15 || *(*v3 + v15) != 110 || (v40 = v8, v33 = sub_2685BD87C(&unk_287928360), v8 = v40, (v33 & 1) == 0))
  {
LABEL_8:
    sub_2685BE1FC(91);
    if (!v4)
    {
      v40 = v8;
      if ((sub_2685BE8E0() & 1) == 0)
      {
        v22 = 0;
        sub_2685BE520(a2, a3, v14);
        v37 = a3;
        v23 = *(v9 + 16);
        v39 = (v9 + 8);
        v36 = v23;
        while (1)
        {
          v38 = v22;
          v23(v12, v14, a2);
          sub_268689BA4();
          sub_268689B84();
          v24 = v5[2];
          if (v24 == v16)
          {
            goto LABEL_35;
          }

          v25 = *v5;
          while (1)
          {
            v26 = *(v25 + v24);
            v19 = v26 > 0x20;
            v27 = (1 << v26) & 0x100002600;
            if (v19 || v27 == 0)
            {
              break;
            }

            v5[2] = ++v24;
            if (v16 == v24)
            {
              goto LABEL_35;
            }
          }

          if (v16 == v24)
          {
LABEL_35:
            sub_2685BD910();
            swift_allocError();
            *v34 = xmmword_26868A580;
LABEL_36:
            swift_willThrow();
            (*v39)(v14, a2);
            return;
          }

          v29 = *v5;
          if (*(*v5 + v24) == 93)
          {
            break;
          }

          while (1)
          {
            v30 = *(v29 + v24);
            v19 = v30 > 0x20;
            v31 = (1 << v30) & 0x100002600;
            if (v19 || v31 == 0)
            {
              break;
            }

            v5[2] = ++v24;
            if (v16 == v24)
            {
              goto LABEL_35;
            }
          }

          if (v16 == v24)
          {
            goto LABEL_35;
          }

          if (*(*v5 + v24) != 44)
          {
            sub_2685BD910();
            swift_allocError();
            *v35 = 0;
            v35[1] = 0;
            goto LABEL_36;
          }

          (*v39)(v14, a2);
          v5[2] = v24 + 1;
          v22 = v38;
          sub_2685BE520(a2, v37, v14);
          v23 = v36;
          if (v22)
          {
            return;
          }
        }

        (*v39)(v14, a2);
        v5[2] = v24 + 1;
      }
    }
  }
}

uint64_t sub_2686605B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = swift_conformsToProtocol2();
  if (!a2 || !v11)
  {
    sub_2685BD910();
    swift_allocError();
    v17 = xmmword_268692190;
LABEL_8:
    *v16 = v17;
    return swift_willThrow();
  }

  (*(v11 + 8))(v26, a2);
  sub_2685B2FBC(v3[11], v3[12], v3[13], v3[14]);
  v12 = v26[0];
  *(v3 + 13) = v26[1];
  *(v3 + 11) = v12;
  (*(v8 + 16))(v10, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D8F8, &qword_2686921D0);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v23, v26);
    sub_2685B1724(v26, &v23);
    v13 = *(&v24 + 1);
    v14 = v25;
    __swift_mutable_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    (*(v14 + 16))(v3, v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v26);
    if (!v4)
    {
      (*(v8 + 8))(a1, a2);
      sub_2685B1724(&v23, v22);
      swift_dynamicCast();
    }

    return __swift_destroy_boxed_opaque_existential_1(&v23);
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_2686633D0(&v23);
  result = sub_2685BE1FC(123);
  if (v4)
  {
    return result;
  }

  v18 = v3[5];
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
    return result;
  }

  v3[5] = v20;
  if (v20 < 0)
  {
    sub_2685BD910();
    swift_allocError();
    v17 = xmmword_26868A5D0;
    goto LABEL_8;
  }

  result = sub_2685BE428();
  if ((result & 1) == 0)
  {
    return (*(a3 + 64))(v3, &type metadata for JSONDecoder, &off_28792FB90, a2, a3);
  }

  return result;
}

uint64_t sub_2686608D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  *&v57 = a3;
  v8 = sub_268689C74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v54 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v53 - v13;
  MEMORY[0x28223BE20](v12);
  v17 = v5[1];
  v16 = v5[2];
  if (v16 == v17)
  {
    goto LABEL_8;
  }

  v18 = *v5;
  while (1)
  {
    v19 = *(v18 + v16);
    v20 = v19 > 0x20;
    v21 = (1 << v19) & 0x100002600;
    if (v20 || v21 == 0)
    {
      break;
    }

    v5[2] = ++v16;
    if (v17 == v16)
    {
      goto LABEL_8;
    }
  }

  if (v17 == v16 || *(*v5 + v16) != 110 || (v72 = v9, v56 = (&v53 - v15), v41 = sub_2685BD87C(&unk_287928360), v9 = v72, (v41 & 1) == 0))
  {
LABEL_8:
    v55 = v4;
    (*(v9 + 16))(v14, a1, v8);
    v23 = *(a2 - 8);
    v72 = a1;
    v24 = v23;
    v56 = *(v23 + 48);
    v25 = v9;
    v26 = v56(v14, 1, a2);
    (*(v25 + 8))(v14, v8);
    v27 = v57;
    if (v26 == 1)
    {
      v28 = v54;
      (*(v57 + 16))(a2, v57);
      (*(v24 + 56))(v28, 0, 1, a2);
      v29 = v28;
      v27 = v57;
      (*(v25 + 40))(v72, v29, v8);
    }

    v30 = v5[2];
    v31 = v5[3];
    v32 = *(v5 + 48);
    v33 = v5[7];
    v34 = *(v5 + 64);
    *(&v70 + 1) = 0;
    LOBYTE(v71[0]) = 0;
    *(v71 + 8) = 0u;
    *(&v71[1] + 8) = 0u;
    v66 = *v5;
    *&v67 = v30;
    *(&v67 + 1) = v31;
    v68 = *(v5 + 2);
    LOBYTE(v69) = v32;
    *(&v69 + 1) = v33;
    LOBYTE(v70) = v34;
    v35 = v72;
    result = v56(v72, 1, a2);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {

      v37 = v55;
      sub_2686605B8(v35, a2, v27);
      if (v37)
      {
        v62 = v70;
        v63 = v71[0];
        v64 = v71[1];
        v65 = *&v71[2];
        v58 = v66;
        v59 = v67;
        v60 = v68;
        v61 = v69;
        return sub_268647D6C(&v58);
      }

      else
      {
        v38 = v67;
        v39 = v68;
        v40 = v69;
        v62 = v70;
        v63 = v71[0];
        v64 = v71[1];
        v65 = *&v71[2];
        v57 = v66;
        v58 = v66;
        v59 = v67;
        v60 = v68;
        v61 = v69;

        sub_268647D6C(&v58);

        *v5 = v57;
        *(v5 + 1) = v38;
        *(v5 + 2) = v39;
        *(v5 + 48) = v40;
      }
    }
  }

  else
  {
    v42 = v8;
    v43 = a2;
    v44 = swift_conformsToProtocol2();
    if (v44 && a2)
    {
      v45 = v44;
      MEMORY[0x28223BE20](v44);
      v46 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      result = v47(v43, v45);
      if (!v4)
      {
        v48 = *(v43 - 8);
        if ((*(v48 + 48))(v46, 1, v43) == 1)
        {
          v49 = v72;
          (*(v72 + 8))(v46, v42);
          *&v68 = 0;
          v66 = 0u;
          v67 = 0u;
        }

        else
        {
          *(&v67 + 1) = v43;
          *&v68 = v45;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v66);
          (*(v48 + 32))(boxed_opaque_existential_1, v46, v43);
          v49 = v72;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D900, &qword_2686921D8);
        v51 = v56;
        v52 = swift_dynamicCast();
        (*(v48 + 56))(v51, v52 ^ 1u, 1, v43);
        return (*(v49 + 40))(a1, v51, v42);
      }
    }

    else
    {
      (*(v9 + 8))(a1, v42);
      return (*(*(a2 - 8) + 56))(a1, 1, 1, a2);
    }
  }

  return result;
}

uint64_t sub_268660ED4()
{
  sub_2685BD910();
  swift_allocError();
  *v0 = xmmword_26868F110;
  return swift_willThrow();
}

uint64_t sub_268660F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v80 = a1;
  v10 = *(a5 + 8);
  v82 = a3;
  v83 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v79 = &v57 - v12;
  v87 = *(a4 + 8);
  v85 = a2;
  v13 = swift_getAssociatedTypeWitness();
  v75 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v78 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v81 = &v57 - v16;
  v84 = sub_268689C74();
  v74 = *(v84 - 8);
  v17 = MEMORY[0x28223BE20](v84);
  v77 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v57 - v20;
  MEMORY[0x28223BE20](v19);
  v88 = &v57 - v22;
  v86 = sub_268689C74();
  v23 = *(v86 - 8);
  v24 = MEMORY[0x28223BE20](v86);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v57 - v27;
  v30 = v7[1];
  v29 = v7[2];
  if (v29 == v30)
  {
    goto LABEL_8;
  }

  v31 = *v7;
  while (1)
  {
    v32 = *(v31 + v29);
    v33 = v32 > 0x20;
    v34 = (1 << v32) & 0x100002600;
    if (v33 || v34 == 0)
    {
      break;
    }

    v7[2] = ++v29;
    if (v30 == v29)
    {
      goto LABEL_8;
    }
  }

  if (v30 == v29 || *(*v7 + v29) != 110 || (result = sub_2685BD87C(&unk_287928360), (result & 1) == 0))
  {
LABEL_8:
    result = sub_2685BE1FC(123);
    if (!v6)
    {
      v37 = v7[5];
      v38 = __OFSUB__(v37, 1);
      v39 = v37 - 1;
      if (v38)
      {
        __break(1u);
      }

      else
      {
        v7[5] = v39;
        if (v39 < 0)
        {
          sub_2685BD910();
          swift_allocError();
          v41 = xmmword_26868A5D0;
LABEL_14:
          *v40 = v41;
          return swift_willThrow();
        }

        result = sub_2685BE428();
        if ((result & 1) == 0)
        {
          v42 = sub_2685BBBDC();
          v71 = v87 + 32;
          v72 = (v75 + 7);
          v73 = (v76 + 56);
          v69 = (v23 + 16);
          v70 = v83 + 32;
          v67 = (v75 + 4);
          v68 = (v75 + 6);
          v66 = (v74 + 2);
          v65 = (v76 + 48);
          v62 = (v76 + 32);
          v61 = (v75 + 2);
          v60 = (v76 + 16);
          v59 = (v76 + 8);
          v64 = v75 + 1;
          ++v74;
          v58 = v21;
          v63 = v28;
          v75 = (v23 + 8);
          while (1)
          {
            if (v42 == 34 && v43 == 0xE100000000000000)
            {
            }

            else
            {
              v44 = sub_268689E14();

              if ((v44 & 1) == 0)
              {
                sub_2685BD910();
                swift_allocError();
                v41 = xmmword_2686921A0;
                goto LABEL_14;
              }
            }

            *(v7 + 80) = 1;
            (*v72)(v28, 1, 1, v13);
            (*(v87 + 32))(v28, v7, &type metadata for JSONDecoder, &off_28792FB90);
            *(v7 + 80) = 0;
            sub_2685BE1FC(58);
            v45 = *v73;
            v46 = v88;
            (*v73)(v88, 1, 1, AssociatedTypeWitness);
            (*(v83 + 32))(v46, v7, &type metadata for JSONDecoder, &off_28792FB90);
            v76 = 0;
            (*v69)(v26, v28, v86);
            if ((*v68)(v26, 1, v13) == 1)
            {
              v52 = v75;
              v53 = v86;
              (*v75)(v26, v86);
              v54 = v84;
              v55 = v74;
LABEL_32:
              sub_2685BD910();
              swift_allocError();
              *v56 = xmmword_2686921B0;
              swift_willThrow();
              (*v55)(v88, v54);
              return (*v52)(v28, v53);
            }

            v47 = v81;
            (*v67)(v81, v26, v13);
            (*v66)(v21, v88, v84);
            if ((*v65)(v21, 1, AssociatedTypeWitness) == 1)
            {
              (*v64)(v47, v13);
              v55 = v74;
              v54 = v84;
              (*v74)(v21, v84);
              v53 = v86;
              v52 = v75;
              goto LABEL_32;
            }

            v48 = v79;
            (*v62)(v79, v21, AssociatedTypeWitness);
            (*v61)(v78, v47, v13);
            v49 = v77;
            (*v60)(v77, v48, AssociatedTypeWitness);
            v45(v49, 0, 1, AssociatedTypeWitness);
            swift_getAssociatedConformanceWitness();
            sub_2686898F4();
            sub_268689914();
            (*v59)(v48, AssociatedTypeWitness);
            (*v64)(v47, v13);
            if (sub_2685BE428())
            {
              (*v74)(v88, v84);
              return (*v75)(v63, v86);
            }

            v50 = v76;
            sub_2685BE1FC(44);
            v28 = v63;
            v51 = v75;
            if (v50)
            {
              (*v74)(v88, v84);
              return (*v51)(v28, v86);
            }

            (*v74)(v88, v84);
            (*v51)(v28, v86);
            v42 = sub_2685BBBDC();
            v21 = v58;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_268661974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v80 = a5;
  v78 = a1;
  v74 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v77 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(v10 + 8);
  v82 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v76 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v79 = &v56 - v15;
  v81 = sub_268689C74();
  v72 = *(v81 - 8);
  v16 = MEMORY[0x28223BE20](v81);
  v75 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  MEMORY[0x28223BE20](v18);
  v85 = &v56 - v21;
  v83 = sub_268689C74();
  v22 = *(v83 - 8);
  v23 = MEMORY[0x28223BE20](v83);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v56 - v26;
  v29 = v5[1];
  v28 = v5[2];
  if (v28 == v29)
  {
    goto LABEL_8;
  }

  v30 = *v5;
  while (1)
  {
    v31 = *(v30 + v28);
    v32 = v31 > 0x20;
    v33 = (1 << v31) & 0x100002600;
    if (v32 || v33 == 0)
    {
      break;
    }

    v5[2] = ++v28;
    if (v29 == v28)
    {
      goto LABEL_8;
    }
  }

  if (v29 == v28 || *(*v5 + v28) != 110 || (result = sub_2685BD87C(&unk_287928360), (result & 1) == 0))
  {
LABEL_8:
    result = sub_2685BE1FC(123);
    if (!v6)
    {
      v36 = v5[5];
      v37 = __OFSUB__(v36, 1);
      v38 = v36 - 1;
      if (v37)
      {
        __break(1u);
      }

      else
      {
        v5[5] = v38;
        if (v38 < 0)
        {
          sub_2685BD910();
          swift_allocError();
          v40 = xmmword_26868A5D0;
LABEL_14:
          *v39 = v40;
          return swift_willThrow();
        }

        result = sub_2685BE428();
        if ((result & 1) == 0)
        {
          v41 = sub_2685BBBDC();
          v69 = v84 + 32;
          v70 = (v73 + 7);
          v71 = (v74 + 56);
          v67 = (v73 + 6);
          v68 = (v22 + 16);
          v66 = (v73 + 4);
          v65 = (v72 + 2);
          v64 = (v74 + 48);
          v61 = (v74 + 32);
          v60 = (v73 + 2);
          v59 = (v74 + 16);
          v58 = (v74 + 8);
          v63 = v73 + 1;
          ++v72;
          v57 = v20;
          v62 = v27;
          v73 = (v22 + 8);
          while (1)
          {
            if (v41 == 34 && v42 == 0xE100000000000000)
            {
            }

            else
            {
              v43 = sub_268689E14();

              if ((v43 & 1) == 0)
              {
                sub_2685BD910();
                swift_allocError();
                v40 = xmmword_2686921A0;
                goto LABEL_14;
              }
            }

            *(v7 + 80) = 1;
            (*v70)(v27, 1, 1, AssociatedTypeWitness);
            (*(v84 + 32))(v27, v7, &type metadata for JSONDecoder, &off_28792FB90);
            *(v7 + 80) = 0;
            sub_2685BE1FC(58);
            v44 = *v71;
            v45 = v85;
            (*v71)(v85, 1, 1, a3);
            sub_26865FEC4(v45, a3, v80);
            v74 = 0;
            (*v68)(v25, v27, v83);
            if ((*v67)(v25, 1, AssociatedTypeWitness) == 1)
            {
              v51 = v73;
              v52 = v83;
              (*v73)(v25, v83);
              v53 = v81;
              v54 = v72;
LABEL_32:
              sub_2685BD910();
              swift_allocError();
              *v55 = xmmword_2686921B0;
              swift_willThrow();
              (*v54)(v85, v53);
              return (*v51)(v27, v52);
            }

            v46 = v79;
            (*v66)(v79, v25, AssociatedTypeWitness);
            (*v65)(v20, v85, v81);
            if ((*v64)(v20, 1, a3) == 1)
            {
              (*v63)(v46, AssociatedTypeWitness);
              v54 = v72;
              v53 = v81;
              (*v72)(v20, v81);
              v52 = v83;
              v51 = v73;
              goto LABEL_32;
            }

            v47 = v77;
            (*v61)(v77, v20, a3);
            (*v60)(v76, v46, AssociatedTypeWitness);
            v48 = v75;
            (*v59)(v75, v47, a3);
            v44(v48, 0, 1, a3);
            swift_getAssociatedConformanceWitness();
            sub_2686898F4();
            sub_268689914();
            (*v58)(v47, a3);
            (*v63)(v46, AssociatedTypeWitness);
            if (sub_2685BE428())
            {
              (*v72)(v85, v81);
              return (*v73)(v62, v83);
            }

            v49 = v74;
            sub_2685BE1FC(44);
            v27 = v62;
            v50 = v73;
            if (v49)
            {
              (*v72)(v85, v81);
              return (*v50)(v27, v83);
            }

            (*v72)(v85, v81);
            (*v50)(v27, v83);
            v41 = sub_2685BBBDC();
            v20 = v57;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_268662368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v80 = a5;
  v78 = a1;
  v74 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v77 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(v10 + 8);
  v82 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v76 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v79 = &v56 - v15;
  v81 = sub_268689C74();
  v72 = *(v81 - 8);
  v16 = MEMORY[0x28223BE20](v81);
  v75 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  MEMORY[0x28223BE20](v18);
  v85 = &v56 - v21;
  v83 = sub_268689C74();
  v22 = *(v83 - 8);
  v23 = MEMORY[0x28223BE20](v83);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v56 - v26;
  v29 = v5[1];
  v28 = v5[2];
  if (v28 == v29)
  {
    goto LABEL_8;
  }

  v30 = *v5;
  while (1)
  {
    v31 = *(v30 + v28);
    v32 = v31 > 0x20;
    v33 = (1 << v31) & 0x100002600;
    if (v32 || v33 == 0)
    {
      break;
    }

    v5[2] = ++v28;
    if (v29 == v28)
    {
      goto LABEL_8;
    }
  }

  if (v29 == v28 || *(*v5 + v28) != 110 || (result = sub_2685BD87C(&unk_287928360), (result & 1) == 0))
  {
LABEL_8:
    result = sub_2685BE1FC(123);
    if (!v6)
    {
      v36 = v5[5];
      v37 = __OFSUB__(v36, 1);
      v38 = v36 - 1;
      if (v37)
      {
        __break(1u);
      }

      else
      {
        v5[5] = v38;
        if (v38 < 0)
        {
          sub_2685BD910();
          swift_allocError();
          v40 = xmmword_26868A5D0;
LABEL_14:
          *v39 = v40;
          return swift_willThrow();
        }

        result = sub_2685BE428();
        if ((result & 1) == 0)
        {
          v41 = sub_2685BBBDC();
          v69 = v84 + 32;
          v70 = (v73 + 7);
          v71 = (v74 + 56);
          v67 = (v73 + 6);
          v68 = (v22 + 16);
          v66 = (v73 + 4);
          v65 = (v72 + 2);
          v64 = (v74 + 48);
          v61 = (v74 + 32);
          v60 = (v73 + 2);
          v59 = (v74 + 16);
          v58 = (v74 + 8);
          v63 = v73 + 1;
          ++v72;
          v57 = v20;
          v62 = v27;
          v73 = (v22 + 8);
          while (1)
          {
            if (v41 == 34 && v42 == 0xE100000000000000)
            {
            }

            else
            {
              v43 = sub_268689E14();

              if ((v43 & 1) == 0)
              {
                sub_2685BD910();
                swift_allocError();
                v40 = xmmword_2686921A0;
                goto LABEL_14;
              }
            }

            *(v7 + 80) = 1;
            (*v70)(v27, 1, 1, AssociatedTypeWitness);
            (*(v84 + 32))(v27, v7, &type metadata for JSONDecoder, &off_28792FB90);
            *(v7 + 80) = 0;
            sub_2685BE1FC(58);
            v44 = *v71;
            v45 = v85;
            (*v71)(v85, 1, 1, a3);
            sub_2686608D4(v45, a3, v80);
            v74 = 0;
            (*v68)(v25, v27, v83);
            if ((*v67)(v25, 1, AssociatedTypeWitness) == 1)
            {
              v51 = v73;
              v52 = v83;
              (*v73)(v25, v83);
              v53 = v81;
              v54 = v72;
LABEL_32:
              sub_2685BD910();
              swift_allocError();
              *v55 = xmmword_2686921B0;
              swift_willThrow();
              (*v54)(v85, v53);
              return (*v51)(v27, v52);
            }

            v46 = v79;
            (*v66)(v79, v25, AssociatedTypeWitness);
            (*v65)(v20, v85, v81);
            if ((*v64)(v20, 1, a3) == 1)
            {
              (*v63)(v46, AssociatedTypeWitness);
              v54 = v72;
              v53 = v81;
              (*v72)(v20, v81);
              v52 = v83;
              v51 = v73;
              goto LABEL_32;
            }

            v47 = v77;
            (*v61)(v77, v20, a3);
            (*v60)(v76, v46, AssociatedTypeWitness);
            v48 = v75;
            (*v59)(v75, v47, a3);
            v44(v48, 0, 1, a3);
            swift_getAssociatedConformanceWitness();
            sub_2686898F4();
            sub_268689914();
            (*v58)(v47, a3);
            (*v63)(v46, AssociatedTypeWitness);
            if (sub_2685BE428())
            {
              (*v72)(v85, v81);
              return (*v73)(v62, v83);
            }

            v49 = v74;
            sub_2685BE1FC(44);
            v27 = v62;
            v50 = v73;
            if (v49)
            {
              (*v72)(v85, v81);
              return (*v50)(v27, v83);
            }

            (*v72)(v85, v81);
            (*v50)(v27, v83);
            v41 = sub_2685BBBDC();
            v20 = v57;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_268662D5C()
{
  sub_2685BD910();
  swift_allocError();
  *v0 = xmmword_2686921C0;
  return swift_willThrow();
}

uint64_t sub_268662DB0()
{
  result = sub_26865E578();
  if (v0)
  {
    return v2;
  }

  return result;
}

void sub_268662DD4(_DWORD *a1)
{
  v3 = sub_2685BD964();
  v4 = 0;
  if ((v3 & 1) != 0 || (sub_2685BCCA0(), !v1))
  {
    *a1 = v4;
  }
}

void sub_268662E14(uint64_t a1)
{
  v3 = sub_2685BD964();
  v4 = 0;
  if ((v3 & 1) == 0)
  {
    v5 = v3;
    sub_2685BCCA0();
    if (v1)
    {
      return;
    }

    v3 = v5;
  }

  *a1 = v4;
  *(a1 + 4) = v3 & 1;
}

void sub_268662E8C(void *a1)
{
  v3 = sub_2685BD964();
  v4 = 0;
  if ((v3 & 1) != 0 || (sub_2685BD298(), !v1))
  {
    *a1 = v4;
  }
}

void sub_268662ECC(uint64_t a1)
{
  v3 = sub_2685BD964();
  v4 = 0;
  if ((v3 & 1) == 0)
  {
    v5 = v3;
    sub_2685BD298();
    if (v1)
    {
      return;
    }

    v3 = v5;
  }

  *a1 = v4;
  *(a1 + 8) = v3 & 1;
}

unint64_t sub_268662F44(_DWORD *a1)
{
  result = sub_2685BD964();
  if (result)
  {
    *a1 = 0;
  }

  else
  {
    result = sub_2685BC45C();
    if (!v1)
    {
      if (HIDWORD(result))
      {
        sub_2685BD910();
        swift_allocError();
        *v4 = xmmword_26868A590;
        return swift_willThrow();
      }

      else
      {
        *a1 = result;
      }
    }
  }

  return result;
}

unint64_t sub_268662FD0(uint64_t a1)
{
  result = sub_2685BD964();
  if (result)
  {
    *a1 = 0;
    *(a1 + 4) = 1;
  }

  else
  {
    result = sub_2685BC45C();
    if (!v1)
    {
      if (HIDWORD(result))
      {
        sub_2685BD910();
        swift_allocError();
        *v4 = xmmword_26868A590;
        return swift_willThrow();
      }

      else
      {
        *a1 = result;
        *(a1 + 4) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_268663068(_DWORD *a1)
{
  result = sub_2685BD964();
  if (result)
  {
    *a1 = 0;
  }

  else
  {
    result = sub_2685BC8CC();
    if (!v1)
    {
      if (result == result)
      {
        *a1 = result;
      }

      else
      {
        sub_2685BD910();
        swift_allocError();
        *v4 = xmmword_26868A590;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_2686630F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (sub_2685BD964())
  {
    result = 0;
  }

  else
  {
    result = a4();
    if (v4)
    {
      return result;
    }
  }

  *a1 = result;
  return result;
}

uint64_t sub_26866314C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = sub_2685BD964();
  v8 = v7;
  if (v7)
  {
    result = 0;
  }

  else
  {
    v10 = v7;
    result = a4();
    if (v4)
    {
      return result;
    }

    v8 = v10;
  }

  *a1 = result;
  *(a1 + 8) = v8 & 1;
  return result;
}

uint64_t sub_2686631F0(_BYTE *a1, uint64_t a2, uint64_t a3, char a4)
{
  result = sub_2685BD964();
  if (result)
  {
    *a1 = a4;
    return result;
  }

  if (*(v4 + 80))
  {
    result = sub_2685BDAD0();
    if (v5)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_2685BD9D4();
  if (!v5)
  {
LABEL_5:
    *a1 = result & 1;
  }

  return result;
}

void sub_268663278(void *a1)
{
  v3 = sub_2685BD964();
  if (v3)
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    sub_2685BC49C(v3);
    if (v1)
    {
      return;
    }

    v4 = v6;
    v5 = v7;
  }

  *a1 = v4;
  a1[1] = v5;
}

void sub_2686632E0(void *a1)
{
  v3 = sub_2685BD964();
  if (v3)
  {

    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    sub_2685BC49C(v3);
    if (!v1)
    {
      v6 = v4;
      v7 = v5;

      *a1 = v6;
      a1[1] = v7;
    }
  }
}

uint64_t sub_2686633D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D900, &qword_2686921D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268663438(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268663480(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_2686636FC@<X0>(char *a1@<X8>)
{
  sub_2685B403C(" {\n", 3, a1);
  v2 = *(v1 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 8) = v2;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v2 + 2) + 1, 1, v2);
    v2 = result;
    *(v1 + 8) = result;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  v6 = v5 + 1;
  if (v5 >= v4 >> 1)
  {
    result = sub_2685B3F48((v4 > 1), v5 + 1, 1, v2);
    v2 = result;
  }

  *(v2 + 2) = v6;
  v2[v5 + 32] = 32;
  *(v1 + 8) = v2;
  v7 = *(v2 + 3);
  v8 = v5 + 2;
  if (v8 > (v7 >> 1))
  {
    result = sub_2685B3F48((v7 > 1), v8, 1, v2);
    v2 = result;
  }

  *(v2 + 2) = v8;
  v2[v6 + 32] = 32;
  *(v1 + 8) = v2;
  return result;
}

char *sub_2686637F4(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    *v2 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 34;
  *v2 = v5;
  sub_2686641D8(a1, a2, v2, &v5[v8]);
  v9 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v9;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
    v9 = result;
    *v2 = result;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    result = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 2) = v12 + 1;
  v9[v12 + 32] = 34;
  *v2 = v9;
  return result;
}

char *sub_26866393C(float a1)
{
  if ((~LODWORD(a1) & 0x7F800000) == 0)
  {
    if ((LODWORD(a1) & 0x7FFFFF) != 0)
    {
      v1 = "nan";
    }

    else
    {
      if (a1 < 0.0)
      {
        v1 = "-inf";
        v5 = 4;
LABEL_11:

        return sub_2685B403C(v1, v5, LODWORD(a1));
      }

      v1 = "inf";
    }

    v5 = 3;
    goto LABEL_11;
  }

  v2 = sub_268689BE4();

  return sub_2686689EC(v2, v3);
}

char *sub_2686639C4(uint64_t a1, double a2)
{
  if ((~*&a2 & 0x7FF0000000000000) == 0)
  {
    if ((*&a2 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v2 = "nan";
    }

    else
    {
      if (a2 < 0.0)
      {
        v2 = "-inf";
        v6 = 4;
LABEL_11:

        return sub_2685B403C(v2, v6, *&a2);
      }

      v2 = "inf";
    }

    v6 = 3;
    goto LABEL_11;
  }

  v3 = sub_268689BD4();

  return sub_2686689EC(v3, v4);
}

char *sub_268663A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_2685C23CC(a2, a3, v18);
  if (v19 == 255)
  {
    v7 = (*(a3 + 40))(a2, a3);
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = v7;
      v9 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
        *v4 = v9;
      }

      v11 = *(v9 + 2);
      v12 = *(v9 + 3);
      v13 = v11 + 1;
      if (v11 >= v12 >> 1)
      {
        v15 = v9;
        v16 = *(v9 + 2);
        v17 = sub_2685B3F48((v12 > 1), v11 + 1, 1, v15);
        v11 = v16;
        v9 = v17;
      }

      *(v9 + 2) = v13;
      v9[v11 + 32] = 45;
      *v4 = v9;
      v7 = -v8;
    }

    return sub_268663B88(v7);
  }

  else
  {
    sub_2685B403C(v18[0], v18[1], v19);
    return sub_2686643A4(v18);
  }
}

char *sub_268663B88(unint64_t a1)
{
  if (a1 >= 0x3E8)
  {
    sub_268663B88(a1 / 0x3E8);
  }

  else if (a1 < 0x64)
  {
    v3 = *v1;
    if (a1 < 0xA)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_2685B3F48(0, *(v3 + 2) + 1, 1, v3);
    *v1 = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_2685B3F48((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  v3[v6 + 32] = (a1 / 0x64 - 10 * ((a1 / 0x64 * 0x199999999999999AuLL) >> 64)) | 0x30;
  *v1 = v3;
LABEL_11:
  v7 = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((v7 & 1) == 0)
  {
    v3 = sub_2685B3F48(0, *(v3 + 2) + 1, 1, v3);
    *v1 = v3;
  }

  v9 = *(v3 + 2);
  v8 = *(v3 + 3);
  if (v9 >= v8 >> 1)
  {
    v3 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v3);
  }

  *(v3 + 2) = v9 + 1;
  v3[v9 + 32] = (a1 / 0xA - 10 * ((a1 / 0xA * 0x199999999999999AuLL) >> 64)) | 0x30;
  *v1 = v3;
LABEL_16:
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v3 + 2) + 1, 1, v3);
    v3 = result;
    *v1 = result;
  }

  v12 = *(v3 + 2);
  v11 = *(v3 + 3);
  if (v12 >= v11 >> 1)
  {
    result = sub_2685B3F48((v11 > 1), v12 + 1, 1, v3);
    v3 = result;
  }

  *(v3 + 2) = v12 + 1;
  v3[v12 + 32] = (a1 % 0xA) | 0x30;
  *v1 = v3;
  return result;
}

char *sub_268663DD0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a2)
  {
    v6 = __OFSUB__(a2, 1);
    v7 = a2 - 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      v8 = a1;
      sub_268663DD0(a1 >> 4, v7, (a1 >> 4));
      if ((v8 & 0xFu) >= 0xA)
      {
        v5 = (v8 & 0xF) + 55;
      }

      else
      {
        v5 = v8 & 0xF | 0x30;
      }

      v3 = *v4;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v3;
      if (result)
      {
        goto LABEL_7;
      }
    }

    result = sub_2685B3F48(0, *(v3 + 2) + 1, 1, v3);
    v3 = result;
    *v4 = result;
LABEL_7:
    v11 = *(v3 + 2);
    v10 = *(v3 + 3);
    if (v11 >= v10 >> 1)
    {
      result = sub_2685B3F48((v10 > 1), v11 + 1, 1, v3);
      v3 = result;
    }

    *(v3 + 2) = v11 + 1;
    v3[v11 + 32] = v5;
    *v4 = v3;
    return result;
  }

  return sub_2685B403C("0x", 2, a3);
}

char *sub_268663EDC@<X0>(char *result@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char *a4@<X8>)
{
  if (result)
  {
    v4 = result;
    v5 = a2 - result;
    if (a2 - result >= 1)
    {
      do
      {
        v9 = *v4++;
        v8 = v9;
        if (v9 > 11)
        {
          if (v8 > 33)
          {
            if (v8 == 34)
            {
              v7 = "\";
            }

            else
            {
              if (v8 != 92)
              {
LABEL_25:
                v10 = *a3;
                result = swift_isUniquelyReferenced_nonNull_native();
                *a3 = v10;
                if ((v8 - 127) >= 0xFFFFFFA1)
                {
                  if ((result & 1) == 0)
                  {
                    result = sub_2685B3F48(0, *(v10 + 2) + 1, 1, v10);
                    v10 = result;
                    *a3 = result;
                  }

                  v23 = *(v10 + 2);
                  v22 = *(v10 + 3);
                  if (v23 >= v22 >> 1)
                  {
                    result = sub_2685B3F48((v22 > 1), v23 + 1, 1, v10);
                    v10 = result;
                    *a3 = result;
                  }

                  *(v10 + 2) = v23 + 1;
                  a4 = &v10[v23];
                  v10[v23 + 32] = v8;
                }

                else
                {
                  if ((result & 1) == 0)
                  {
                    result = sub_2685B3F48(0, *(v10 + 2) + 1, 1, v10);
                    v10 = result;
                    *a3 = result;
                  }

                  v12 = *(v10 + 2);
                  v11 = *(v10 + 3);
                  if (v12 >= v11 >> 1)
                  {
                    result = sub_2685B3F48((v11 > 1), v12 + 1, 1, v10);
                    v10 = result;
                    *a3 = result;
                  }

                  *(v10 + 2) = v12 + 1;
                  v10[v12 + 32] = 92;
                  v13 = *a3;
                  v15 = *(*a3 + 2);
                  v14 = *(*a3 + 3);
                  if (v15 >= v14 >> 1)
                  {
                    result = sub_2685B3F48((v14 > 1), v15 + 1, 1, v13);
                    v13 = result;
                    *a3 = result;
                  }

                  *(v13 + 2) = v15 + 1;
                  v13[v15 + 32] = (v8 >> 6) | 0x30;
                  v16 = *a3;
                  v18 = *(*a3 + 2);
                  v17 = *(*a3 + 3);
                  if (v18 >= v17 >> 1)
                  {
                    result = sub_2685B3F48((v17 > 1), v18 + 1, 1, v16);
                    v16 = result;
                    *a3 = result;
                  }

                  *(v16 + 2) = v18 + 1;
                  v16[v18 + 32] = (v8 >> 3) & 7 | 0x30;
                  v19 = *a3;
                  v21 = *(*a3 + 2);
                  v20 = *(*a3 + 3);
                  if (v21 >= v20 >> 1)
                  {
                    result = sub_2685B3F48((v20 > 1), v21 + 1, 1, v19);
                    v19 = result;
                    *a3 = result;
                  }

                  a4 = (v8 & 7 | 0x30u);
                  *(v19 + 2) = v21 + 1;
                  v19[v21 + 32] = v8 & 7 | 0x30;
                }

                goto LABEL_6;
              }

              v7 = "\\\"";
            }
          }

          else if (v8 == 12)
          {
            v7 = "\\f";
          }

          else
          {
            if (v8 != 13)
            {
              goto LABEL_25;
            }

            v7 = "\\r";
          }
        }

        else if (v8 > 9)
        {
          if (v8 == 10)
          {
            v7 = "\\n";
          }

          else
          {
            if (v8 != 11)
            {
              goto LABEL_25;
            }

            v7 = "\\v";
          }
        }

        else if (v8 == 8)
        {
          v7 = "\\b";
        }

        else
        {
          if (v8 != 9)
          {
            goto LABEL_25;
          }

          v7 = "\\t";
        }

        result = sub_2685B403C(v7, 2, a4);
LABEL_6:
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

char *sub_2686641D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X2>, char *a4@<X8>)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v9, 0, 14);
      v5 = v9;
      return sub_268663EDC(v9, v5, a3, a4);
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    return sub_268664300(v6, v7, a3, a4);
  }

  if (v4)
  {
    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_268664300(v6, v7, a3, a4);
  }

  v9[0] = a1;
  LOWORD(v9[1]) = a2;
  BYTE2(v9[1]) = BYTE2(a2);
  BYTE3(v9[1]) = BYTE3(a2);
  BYTE4(v9[1]) = BYTE4(a2);
  BYTE5(v9[1]) = BYTE5(a2);
  v5 = v9 + BYTE6(a2);
  return sub_268663EDC(v9, v5, a3, a4);
}

char *sub_268664300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X3>, char *a4@<X8>)
{
  result = sub_268689764();
  v9 = result;
  if (result)
  {
    result = sub_268689794();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = sub_268689784();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = &v9[v13];
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return sub_268663EDC(v9, v15, a3, a4);
}

uint64_t sub_2686643A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3B8, &qword_268692270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26866440C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_268664454(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double Google_Protobuf_Duration.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = xmmword_26868A5E0;
  return result;
}

uint64_t Google_Protobuf_Duration.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_Duration.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t static Google_Protobuf_Duration._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE50 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028D910;
  v2 = qword_28028D918;
  v3 = unk_28028D920;
  *a1 = qword_28028D908;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_Duration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 96))(v3, a2, a3);
      }

      else if (result == 2)
      {
        (*(a3 + 72))(v3 + 8, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t Google_Protobuf_Duration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  if (!*v3 || (result = (*(a3 + 32))(*v3, 1, a2, a3), !v4))
  {
    if (!v8 || (result = (*(a3 + 24))(v8, 2, a2, a3), !v4))
    {
      sub_2685BA80C(v9, v10);
      UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
      return sub_2685B593C(v9, v10);
    }
  }

  return result;
}

uint64_t Google_Protobuf_Duration.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_26862C28C(&v6, v1, v2, v4, v3);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

uint64_t sub_268664918@<X0>(void *a1@<X8>)
{
  if (qword_28028BE50 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028D910;
  v2 = qword_28028D918;
  v3 = unk_28028D920;
  *a1 = qword_28028D908;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

unint64_t sub_2686649C4(uint64_t a1)
{
  result = sub_2686649EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686649EC()
{
  result = qword_28028D928;
  if (!qword_28028D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D928);
  }

  return result;
}

unint64_t sub_268664A40(uint64_t a1)
{
  *(a1 + 8) = sub_268653BF0();
  result = sub_268664A70();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_268664A70()
{
  result = qword_28028D930;
  if (!qword_28028D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D930);
  }

  return result;
}

unint64_t sub_268664AC8()
{
  result = qword_28028D938;
  if (!qword_28028D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D938);
  }

  return result;
}

uint64_t sub_268664B2C()
{
  sub_268689E94();
  sub_268689EB4();
  return sub_268689EF4();
}

uint64_t sub_268664BA0(uint64_t a1)
{
  sub_268689E94();
  sub_268689EB4();
  return sub_268689EF4();
}

uint64_t sub_268664BE4@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2685B428C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_268664C30()
{
  result = qword_28028D940;
  if (!qword_28028D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D940);
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Message.jsonString(options:)(SiriOntologyProtobuf::JSONEncodingOptions options)
{
  v4 = v2;
  v5 = v1;
  v6 = *&options.alwaysPrintEnumsAsInts;
  v7 = sub_2686899A4();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  v10 = v6[1];
  v19[0] = *v6;
  v19[1] = v10;
  v11 = Message.jsonUTF8Data(options:)(v19, v5, v4);
  if (!v3)
  {
    v13 = v11;
    v14 = v12;
    sub_268689994();
    v15 = sub_268689964();
    if (!v16)
    {
      __break(1u);
      goto LABEL_6;
    }

    v9 = v15;
    v4 = v16;
    sub_2685B593C(v13, v14);
  }

  v15 = v9;
  v16 = v4;
LABEL_6:
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t Message.jsonUTF8Data(options:)(char *a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v4 = v3;
  v7 = sub_2686899A4();
  v39 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 - 8);
  MEMORY[0x28223BE20](v8);
  v13 = *a1;
  v14 = a1[1];
  v17 = *(v11 + 16);
  v15 = v11 + 16;
  v16 = v17;
  v17((&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)), v4, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D8F8, &qword_2686921D0);
  if (!swift_dynamicCast())
  {
    *&v44 = 0;
    v42 = 0u;
    v43 = 0u;
    sub_2686633D0(&v42);
    v20 = v40;
    *(&v43 + 1) = a2;
    *&v44 = v40;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
    v16(boxed_opaque_existential_1, v4, a2);
    v50[0] = v13;
    v50[1] = v14;
    v22 = v41;
    sub_26862CC74(&v42, v50, &v46);
    if (!v22)
    {
      v26 = v46;
      if ((BYTE9(v46) & 1) == 0)
      {
        v27 = BYTE8(v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_2685B3F48(0, *(v26 + 2) + 1, 1, v26);
        }

        v29 = *(v26 + 2);
        v28 = *(v26 + 3);
        if (v29 >= v28 >> 1)
        {
          v26 = sub_2685B3F48((v28 > 1), v29 + 1, 1, v26);
        }

        *(v26 + 2) = v29 + 1;
        v26[v29 + 32] = v27;
        *&v46 = v26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v46 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_2685B3F48(0, *(v26 + 2) + 1, 1, v26);
        *&v46 = v26;
      }

      v32 = *(v26 + 2);
      v31 = *(v26 + 3);
      if (v32 >= v31 >> 1)
      {
        v26 = sub_2685B3F48((v31 > 1), v32 + 1, 1, v26);
      }

      *(v26 + 2) = v32 + 1;
      v26[v32 + 32] = 123;
      *&v46 = v26;
      WORD4(v46) = 256;
      (*(v20 + 72))(&v46, &type metadata for JSONEncodingVisitor, &off_28792D200, a2, v20);
      v33 = v46;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      *&v46 = v33;
      if ((v34 & 1) == 0)
      {
        v33 = sub_2685B3F48(0, *(v33 + 2) + 1, 1, v33);
        *&v46 = v33;
      }

      v36 = *(v33 + 2);
      v35 = *(v33 + 3);
      if (v36 >= v35 >> 1)
      {
        v33 = sub_2685B3F48((v35 > 1), v36 + 1, 1, v33);
      }

      *(v33 + 2) = v36 + 1;
      v33[v36 + 32] = 125;
      *&v46 = v33;
      WORD4(v46) = 44;

      v15 = sub_26866677C(v37);

      v42 = v46;
      v43 = v47;
      v44 = v48;
      v45 = v49;
      sub_268647CF4(&v42);
    }

    return v15;
  }

  sub_2685B17CC(&v42, &v46);
  v15 = *(&v47 + 1);
  v18 = v48;
  __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
  LOBYTE(v42) = v13;
  BYTE1(v42) = v14;
  v19 = v41;
  (*(v18 + 8))(&v42, v15, v18);
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(&v46);
    return v15;
  }

  sub_268689994();
  v15 = sub_268689954();
  v24 = v23;
  result = (*(v39 + 8))(v10, v7);
  if (v24 >> 60 != 15)
  {

    __swift_destroy_boxed_opaque_existential_1(&v46);
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t Message.init(jsonString:options:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a5;
  v25 = a4;
  v12 = sub_2686899A4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v24[1] = v6;
    v24[2] = v7;
    v17 = *a3;
    v18 = *(a3 + 8);
    sub_268689994();
    v19 = sub_268689954();
    v21 = v20;

    (*(v13 + 8))(v15, v12);
    if (v21 >> 60 != 15)
    {
      v26 = v17;
      v27 = v18;
      return Message.init(jsonUTF8Data:options:)(v19, v21, &v26, v25, v28, a6);
    }
  }

  else
  {
  }

  sub_2685BD910();
  swift_allocError();
  *v23 = xmmword_26868A580;
  return swift_willThrow();
}

uint64_t Message.init(jsonUTF8Data:options:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *a3;
  v13 = *(a3 + 8);
  (*(a5 + 16))(a4, a5);
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = v12;
  v16 = v13;
  v17 = a6;
  sub_2685B2660(sub_26866682C, v15, a1, a2);
  result = sub_2685B593C(a1, a2);
  if (v6)
  {
    return (*(*(a4 - 8) + 8))(a6, a4);
  }

  return result;
}

uint64_t sub_268665530(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v8 = result;
    v9 = a2 - result;
    v10 = a2 - result - 1;
    if (a2 - result >= 1)
    {
      v44 = a5;
      v45 = a6;
      *(&v62 + 1) = 0;
      LOBYTE(v63[0]) = 0;
      memset(v63 + 8, 0, 32);
      *(&v61 + 1) = a3;
      v12 = a4 & 1;
      LOBYTE(v62) = a4 & 1;
      v64 = v7;
      type metadata accessor for DoubleParser();
      v14 = swift_allocObject();
      v15 = swift_slowAlloc();
      v16 = 0;
      *(v14 + 16) = v15;
      *(v14 + 24) = v15 + 128;
      *&v58 = v8;
      *(&v58 + 1) = v9;
      *(&v59 + 1) = v14;
      *&v60 = a3;
      *(&v60 + 1) = a3;
      LOBYTE(v61) = v12;
      while (1)
      {
        v17 = *(v8 + v16);
        v18 = v17 > 0x20;
        v19 = (1 << v17) & 0x100002600;
        if (v18 || v19 == 0)
        {
          break;
        }

        if (v9 == ++v16)
        {
          v16 = v9;
          goto LABEL_10;
        }
      }

      *&v59 = v16;
      if (v9 != v16 && *(v8 + v16) == 110)
      {
        if (aNull_0[0] == 110 && v10 != v16 && *(v8 + v16 + 1) == aNull_0[1] && v9 - 2 != v16 && *(v8 + v16 + 2) == aNull_0[2] && v9 - 3 != v16 && *(v8 + v16 + 3) == aNull_0[3])
        {
          *&v59 = v16 + 4;
          if (v9 - 4 == v16 || (*(v8 + v16 + 4) & 0xDFu) - 91 < 0xFFFFFFE6)
          {
            v43 = v16 + 4;
            v25 = v45;
            v26 = swift_conformsToProtocol2();
            if (!v26 || !v45)
            {
              sub_2685BD910();
              swift_allocError();
              *v37 = xmmword_268692180;
              swift_willThrow();
              v54 = v62;
              v55 = v63[0];
              v56 = v63[1];
              v57 = *&v63[2];
              v50 = v58;
              v51 = v59;
              v35 = v60;
              v36 = v61;
              goto LABEL_40;
            }

            v27 = v26;
            v28 = *(v26 + 24);
            v29 = sub_268689C74();
            v42 = &v42;
            v30 = *(v29 - 8);
            MEMORY[0x28223BE20](v29);
            v32 = &v42 - v31;
            v33 = v64;
            v28(v25, v27);
            v64 = v33;
            if (v33)
            {
              v54 = v62;
              v55 = v63[0];
              v56 = v63[1];
              v57 = *&v63[2];
              v50 = v58;
              v51 = v59;
              v52 = v60;
              v53 = v61;
              return sub_268647D6C(&v50);
            }

            v38 = *(v45 - 8);
            if ((*(v38 + 48))(v32, 1) == 1)
            {
              (*(v30 + 8))(v32, v29);
              sub_2685BD910();
              swift_allocError();
              *v39 = xmmword_268692180;
              swift_willThrow();
              v54 = v62;
              v55 = v63[0];
              v56 = v63[1];
              v57 = *&v63[2];
              v50 = v58;
              v51 = v59;
              v52 = v60;
              v53 = v61;
              return sub_268647D6C(&v50);
            }

            v40 = v45;
            v47 = v45;
            v48 = v27;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v46);
            (*(v38 + 32))(boxed_opaque_existential_1, v32, v40);
            sub_2685B17CC(&v46, v49);
            sub_2685B17CC(v49, &v50);
            (*(v38 + 8))(v44, v40);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D8F8, &qword_2686921D0);
            swift_dynamicCast();
            v21 = v43;
            if (v43 != v9)
            {
LABEL_13:
              while (1)
              {
                v22 = *(v58 + v21);
                v18 = v22 > 0x20;
                v23 = (1 << v22) & 0x100002600;
                if (v18 || v23 == 0)
                {
                  break;
                }

                if (v9 == ++v21)
                {
                  v21 = v9;
                  break;
                }
              }

              *&v59 = v21;
            }

LABEL_20:
            if (v21 == v9)
            {
              goto LABEL_21;
            }

            sub_2685BD910();
            swift_allocError();
            *v34 = xmmword_268690760;
            swift_willThrow();
            v54 = v62;
            v55 = v63[0];
            v56 = v63[1];
            v57 = *&v63[2];
            v50 = v58;
            v51 = v59;
            v35 = v60;
            v36 = v61;
LABEL_40:
            v52 = v35;
            v53 = v36;
            return sub_268647D6C(&v50);
          }
        }

LABEL_10:
        *&v59 = v16;
      }

      sub_2686605B8(v44, v45, a7);
      if (v7)
      {
LABEL_21:
        v54 = v62;
        v55 = v63[0];
        v56 = v63[1];
        v57 = *&v63[2];
        v50 = v58;
        v51 = v59;
        v52 = v60;
        v53 = v61;
        return sub_268647D6C(&v50);
      }

      v9 = *(&v58 + 1);
      v21 = v59;
      if (v59 != *(&v58 + 1))
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  return result;
}

char *sub_268665B20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D968, &qword_268692518);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_268665C24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D948, &qword_268692500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_268665D44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D950, &qword_268692508);
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

char *sub_268665E50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D978, &qword_268692528);
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

char *sub_268665F44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D970, &qword_268692520);
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

char *sub_268666050(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D9A8, &qword_268692558);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_26866617C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D9A0, &qword_268692550);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_268666294(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_2686663A4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_2686664A0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C078, &unk_268692750);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C080, &qword_26868A780);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_BYTE *sub_2686665E8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_26863B948(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_26866667C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2686666F8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_26866667C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2686897B4();
  swift_allocObject();
  result = sub_268689754();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_268689804();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2686666F8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2686897B4();
  swift_allocObject();
  result = sub_268689754();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_26866677C(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  v10 = sub_268666854();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_2686665E8(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_268666854()
{
  result = qword_28028D960;
  if (!qword_28028D960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28028C318, &unk_2686929B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D960);
  }

  return result;
}

uint64_t sub_2686668B8(uint64_t a1, unint64_t a2)
{

  v2 = sub_268689A74();
  v4 = v3;
  if (!v3)
  {
LABEL_30:

    return v4;
  }

  v5 = v2;
  while ((v5 != 95 || v4 != 0xE100000000000000) && (sub_268689E14() & 1) == 0)
  {
    result = sub_268689E14();
    if (result)
    {
      goto LABEL_32;
    }

    if (v5 == 65 && v4 == 0xE100000000000000)
    {
      goto LABEL_20;
    }

    if ((sub_268689E14() & 1) == 0)
    {
      if (v5 == 90 && v4 == 0xE100000000000000)
      {
LABEL_26:

        v4 = 0;
        goto LABEL_30;
      }

LABEL_20:
      if ((sub_268689E14() & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    MEMORY[0x26D61D4A0](v5, v4);
LABEL_5:

    v5 = sub_268689A74();
    v4 = v9;
    if (!v9)
    {
      v4 = 0;
      goto LABEL_30;
    }
  }

  v10 = sub_268689A74();
  v4 = v11;
  if (!v11)
  {

    goto LABEL_30;
  }

  v12 = v10;
  result = sub_268689E14();
  if ((result & 1) == 0)
  {
    if (v12 == 97 && v4 == 0xE100000000000000)
    {
      goto LABEL_3;
    }

    if (sub_268689E14())
    {
      goto LABEL_26;
    }

    if (v12 != 122 || v4 != 0xE100000000000000)
    {
LABEL_3:
      if (sub_268689E14())
      {
        goto LABEL_26;
      }
    }

    v6 = sub_2686899D4();
    v8 = v7;

    MEMORY[0x26D61D4B0](v6, v8);
    goto LABEL_5;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_268666B28(uint64_t a1, unint64_t a2)
{

  v2 = sub_268689A74();
  v4 = v3;
  if (!v3)
  {
LABEL_19:

    return v4;
  }

  v5 = v2;
  while (1)
  {
    if (v5 == 95 && v4 == 0xE100000000000000 || (sub_268689E14() & 1) != 0)
    {

      v4 = 0;
      goto LABEL_19;
    }

    result = sub_268689E14();
    if (result)
    {
      break;
    }

    if (v5 != 65 || v4 != 0xE100000000000000)
    {
      if (sub_268689E14())
      {
        goto LABEL_3;
      }

      if (v5 == 90 && v4 == 0xE100000000000000)
      {
LABEL_16:
        MEMORY[0x26D61D4A0](95, 0xE100000000000000);
        v8 = sub_2686899B4();
        v10 = v9;

        MEMORY[0x26D61D4B0](v8, v10);
        goto LABEL_4;
      }
    }

    if ((sub_268689E14() & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_3:
    MEMORY[0x26D61D4A0](v5, v4);
LABEL_4:

    v5 = sub_268689A74();
    v4 = v6;
    if (!v6)
    {
      v4 = 0;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

char *sub_268666D04(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v22 = 0;
  v23 = 0xE000000000000000;

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v4 = 0;
  while (1)
  {
    v5 = sub_268689A74();
    if (!v6)
    {
      break;
    }

    v7 = v5;
    v8 = v6;
    if (v5 == 44 && v6 == 0xE100000000000000 || (sub_268689E14() & 1) != 0)
    {

      if (!v4)
      {

LABEL_29:

        goto LABEL_30;
      }

      v11 = sub_268666B28(v22, v23);
      v13 = v12;

      if (!v13)
      {
        goto LABEL_29;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_2685B54B4(0, *(v3 + 2) + 1, 1, v3);
      }

      v15 = *(v3 + 2);
      v14 = *(v3 + 3);
      if (v15 >= v14 >> 1)
      {
        v3 = sub_2685B54B4((v14 > 1), v15 + 1, 1, v3);
      }

      *(v3 + 2) = v15 + 1;
      v16 = &v3[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
      v22 = 0;
      v23 = 0xE000000000000000;
      goto LABEL_5;
    }

    v9 = &v22;
    MEMORY[0x26D61D4A0](v7, v8);

    if (__OFADD__(v4++, 1))
    {
      __break(1u);
LABEL_33:
      v3 = sub_2685B54B4(0, *(v3 + 2) + 1, 1, v3);
      goto LABEL_23;
    }
  }

  if (!v4)
  {
    goto LABEL_29;
  }

  v9 = sub_268666B28(v22, v23);
  v8 = v17;

  if (!v8)
  {
LABEL_30:

    return 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_23:
  v19 = *(v3 + 2);
  v18 = *(v3 + 3);
  if (v19 >= v18 >> 1)
  {
    v3 = sub_2685B54B4((v18 > 1), v19 + 1, 1, v3);
  }

  *(v3 + 2) = v19 + 1;
  v20 = &v3[16 * v19];
  *(v20 + 4) = v9;
  *(v20 + 5) = v8;
  return v3;
}

double Google_Protobuf_FieldMask.init(protoPaths:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  *a2 = a1;
  return result;
}

{

  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t Google_Protobuf_FieldMask.init(jsonPaths:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = 0;
  v5 = *(result + 16);
  v6 = result + 40;
  v7 = MEMORY[0x277D84F90];
LABEL_2:
  v8 = (v6 + 16 * v4);
  while (1)
  {
    if (v5 == v4)
    {

      *a2 = v7;
      *(a2 + 8) = xmmword_26868A5E0;
      return result;
    }

    if (v4 >= *(v2 + 16))
    {
      break;
    }

    ++v4;
    v9 = v8 + 2;
    v10 = *(v8 - 1);
    v11 = *v8;

    v12 = sub_268666B28(v10, v11);
    v14 = v13;

    v8 = v9;
    if (v14)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2685B54B4(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_2685B54B4((v15 > 1), v16 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v16 + 1;
      v17 = v7 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_268667118()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    v5 = MEMORY[0x277D84F90];
    while (v3 < *(v1 + 16))
    {
      v6 = *(v4 - 1);
      v7 = *v4;

      v8 = sub_2686668B8(v6, v7);
      v10 = v9;

      if (!v10)
      {

        sub_2685D104C();
        swift_allocError();
        *v17 = 3;
        swift_willThrow();
        return;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2685B54B4(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_2685B54B4((v11 > 1), v12 + 1, 1, v5);
      }

      ++v3;
      *(v5 + 2) = v12 + 1;
      v13 = &v5[16 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
      v4 += 2;
      if (v2 == v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD88, &unk_26868F268);
    sub_268621BAC();
    v14 = sub_268689934();
    v16 = v15;

    MEMORY[0x26D61D4B0](v14, v16);

    MEMORY[0x26D61D4B0](34, 0xE100000000000000);
  }
}

void sub_26866732C(uint64_t a1)
{
  v3 = v1;
  sub_2685BC49C(a1);
  if (!v2)
  {
    v6 = sub_268666D04(v4, v5);

    if (v6)
    {

      *v3 = v6;
    }

    else
    {
      sub_2685BD910();
      swift_allocError();
      *v7 = xmmword_268692560;
      swift_willThrow();
    }
  }
}

void sub_2686673C8(uint64_t a1, unsigned __int8 *a2)
{
  v5 = sub_2686899A4();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(v2 + 16);
  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  v12 = *(v9 + 32);
  v13 = *(v9 + 40);
  if ((~v12 & 0x3000000000000000) == 0 && v13 == 255)
  {
    sub_2685D104C();
    swift_allocError();
    *v14 = 5;
    swift_willThrow();
    return;
  }

  v15 = ((v12 >> 60) & 3 | (4 * (v13 & 1u)));
  if (v15 <= 2)
  {
    if (v15)
    {
      if (v15 == 1)
      {
        sub_26863183C(v6, *&v11);
        return;
      }

      sub_2685D10C8(v11, v10, v12, v13 & 1);
      sub_268631D18(v11, v10);
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  if (v15 == 3)
  {
    if ((v11 & 1) == 0)
    {
      v24 = "false";
      v25 = 5;
      goto LABEL_29;
    }

    v24 = "true";
LABEL_19:
    v25 = 4;
LABEL_29:
    sub_2685B403C(v24, v25, v15);
    return;
  }

  v16 = v13 & 1;
  if (v15 == 4)
  {
    sub_2685D10C8(v11, v10, v12, v16);
    if (v8)
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_268667FE8(v17 | v7, v11, v10, v12, &type metadata for Google_Protobuf_Struct, &off_287929FB8, sub_2685D8AEC);
    if (v3)
    {
      goto LABEL_27;
    }

    v20 = v18;
    v21 = v19;
    sub_268689994();
    v22 = sub_268689964();
    if (!v23)
    {
      __break(1u);
LABEL_16:
      v24 = "null";
      goto LABEL_19;
    }

LABEL_26:
    v29 = v22;
    v30 = v23;
    sub_2685B593C(v20, v21);
    sub_2686689EC(v29, v30);
LABEL_27:
    sub_2685D1170(v11, v10, v12, v13);
    return;
  }

  sub_2685D10C8(v11, v10, v12, v16);
  if (v8)
  {
    v26 = 256;
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_268667FE8(v26 | v7, v11, v10, v12 & 0xCFFFFFFFFFFFFFFFLL, &type metadata for Google_Protobuf_ListValue, &off_287929740, sub_2685D0240);
  if (v3)
  {
    goto LABEL_27;
  }

  v20 = v27;
  v21 = v28;
  sub_268689994();
  v22 = sub_268689964();
  if (v23)
  {
    goto LABEL_26;
  }

  __break(1u);
}

void sub_268667698(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_2685BBBDC();
  if (v2)
  {
    return;
  }

  v7 = v5;
  v8 = v6;
  if ((v5 != 110 || v6 != 0xE100000000000000) && (sub_268689E14() & 1) == 0)
  {
    if (v7 == 91 && v8 == 0xE100000000000000 || (sub_268689E14() & 1) != 0)
    {

      v62 = MEMORY[0x277D84F90];
      sub_2685D0838(a1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *(v3 + 16);
      if (isUniquelyReferenced_nonNull_native)
      {
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *(v18 + 32);
        v22 = *(v18 + 40);
      }

      else
      {
        type metadata accessor for Google_Protobuf_Value._StorageClass();
        v23 = swift_allocObject();
        v24 = *(v18 + 24);
        v60 = *(v18 + 16);
        v25 = *(v18 + 32);
        v22 = *(v18 + 40);
        *(v23 + 16) = v60;
        *(v23 + 24) = v24;
        *(v23 + 32) = v25;
        *(v23 + 40) = v22;
        sub_2685D10A0(v60, v24, v25, v22);
        sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

        v21 = v25;
        v20 = v24;
        *(v3 + 16) = v23;
        v18 = v23;
        v19 = v60;
      }

      *(v18 + 16) = v62;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0xD000000000000000;
      *(v18 + 40) = 1;
      sub_2685D1170(v19, v20, v21, v22);
      return;
    }

    if (v7 == 123 && v8 == 0xE100000000000000 || (sub_268689E14() & 1) != 0)
    {

      v63 = sub_2686892D4(MEMORY[0x277D84F90]);
      sub_2685D8F60(a1);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v27 = *(v3 + 16);
      if (v26)
      {
        v28 = *(v27 + 16);
        v29 = *(v27 + 24);
        v30 = *(v27 + 32);
        v31 = *(v27 + 40);
      }

      else
      {
        type metadata accessor for Google_Protobuf_Value._StorageClass();
        v39 = swift_allocObject();
        v40 = *(v27 + 24);
        v61 = *(v27 + 16);
        v41 = *(v27 + 32);
        v31 = *(v27 + 40);
        *(v39 + 16) = v61;
        *(v39 + 24) = v40;
        *(v39 + 32) = v41;
        *(v39 + 40) = v31;
        sub_2685D10A0(v61, v40, v41, v31);
        sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

        v30 = v41;
        v29 = v40;
        v28 = v61;
        *(v3 + 16) = v39;
        v27 = v39;
      }

      *(v27 + 16) = v63;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0xC000000000000000;
      *(v27 + 40) = 1;
LABEL_35:
      sub_2685D1170(v28, v29, v30, v31);
      return;
    }

    if (v7 == 116 && v8 == 0xE100000000000000 || (sub_268689E14() & 1) != 0 || v7 == 102 && v8 == 0xE100000000000000 || (sub_268689E14() & 1) != 0)
    {

      v32 = sub_2685BD9D4() & 1;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(v3 + 16);
      if (v33)
      {
        v35 = *(v34 + 16);
        v36 = *(v34 + 24);
        v37 = *(v34 + 32);
        v38 = *(v34 + 40);
      }

      else
      {
        type metadata accessor for Google_Protobuf_Value._StorageClass();
        v42 = swift_allocObject();
        v35 = *(v34 + 16);
        v36 = *(v34 + 24);
        v37 = *(v34 + 32);
        v38 = *(v34 + 40);
        *(v42 + 16) = v35;
        *(v42 + 24) = v36;
        *(v42 + 32) = v37;
        *(v42 + 40) = v38;
        sub_2685D10A0(v35, v36, v37, v38);
        sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

        *(v3 + 16) = v42;
        v34 = v42;
      }

      *(v34 + 16) = v32;
      v43 = xmmword_268692590;
      goto LABEL_38;
    }

    if (v7 == 34 && v8 == 0xE100000000000000)
    {
    }

    else
    {
      v45 = sub_268689E14();

      if ((v45 & 1) == 0)
      {
        sub_2685BD298();
        v57 = v55;
        v58 = swift_isUniquelyReferenced_nonNull_native();
        v34 = *(v3 + 16);
        if (v58)
        {
          v35 = *(v34 + 16);
          v36 = *(v34 + 24);
          v37 = *(v34 + 32);
          v38 = *(v34 + 40);
        }

        else
        {
          type metadata accessor for Google_Protobuf_Value._StorageClass();
          v59 = swift_allocObject();
          v35 = *(v34 + 16);
          v36 = *(v34 + 24);
          v37 = *(v34 + 32);
          v38 = *(v34 + 40);
          *(v59 + 16) = v35;
          *(v59 + 24) = v36;
          *(v59 + 32) = v37;
          *(v59 + 40) = v38;
          sub_2685D10A0(v35, v36, v37, v38);
          sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

          *(v3 + 16) = v59;
          v34 = v59;
        }

        *(v34 + 16) = v57;
        v43 = xmmword_268692580;
LABEL_38:
        *(v34 + 24) = v43;
        *(v34 + 40) = 0;
        sub_2685D1170(v35, v36, v37, v38);
        return;
      }
    }

    sub_2685BC49C(v44);
    v47 = v46;
    v49 = v48;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(v3 + 16);
    if (v50)
    {
      v52 = *(v51 + 16);
      v53 = *(v51 + 24);
      v54 = *(v51 + 32);
      v31 = *(v51 + 40);
    }

    else
    {
      type metadata accessor for Google_Protobuf_Value._StorageClass();
      v56 = swift_allocObject();
      v52 = *(v51 + 16);
      v53 = *(v51 + 24);
      v54 = *(v51 + 32);
      v31 = *(v51 + 40);
      *(v56 + 16) = v52;
      *(v56 + 24) = v53;
      *(v56 + 32) = v54;
      *(v56 + 40) = v31;
      sub_2685D10A0(v52, v53, v54, v31);
      sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

      *(v3 + 16) = v56;
      v51 = v56;
    }

    *(v51 + 16) = v47;
    *(v51 + 24) = v49;
    *(v51 + 32) = 0x2000000000000000;
    *(v51 + 40) = 0;
    v28 = v52;
    v29 = v53;
    v30 = v54;
    goto LABEL_35;
  }

  if (sub_2685BD964())
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v3 + 16);
    if (v9)
    {
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      v13 = *(v10 + 32);
      v14 = *(v10 + 40);
    }

    else
    {
      type metadata accessor for Google_Protobuf_Value._StorageClass();
      v16 = swift_allocObject();
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      v13 = *(v10 + 32);
      v14 = *(v10 + 40);
      *(v16 + 16) = v11;
      *(v16 + 24) = v12;
      *(v16 + 32) = v13;
      *(v16 + 40) = v14;
      sub_2685D10A0(v11, v12, v13, v14);
      sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

      *(v3 + 16) = v16;
      v10 = v16;
    }

    *(v10 + 16) = 0;
    *(v10 + 24) = xmmword_2686925A0;
    *(v10 + 40) = 0;
    sub_2685D1170(v11, v12, v13, v14);
  }

  else
  {
    sub_2685BD910();
    swift_allocError();
    *v15 = 0;
    v15[1] = 0;
    swift_willThrow();
  }
}

uint64_t sub_268667DB8(__int16 a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = sub_2686899A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[3] = &type metadata for Google_Protobuf_Value;
  v26[4] = &off_28792FFB8;
  v26[0] = a2;
  v26[1] = a3;
  v26[2] = a4;
  v13 = __swift_project_boxed_opaque_existential_1(v26, &type metadata for Google_Protobuf_Value);
  v14 = v13[2];
  v25 = 256;
  v22 = *v13;
  v23 = v14;
  v24 = MEMORY[0x277D84F90];
  v21 = a1 & 0x101;
  sub_2685BA80C(a2, a3);

  sub_2686673C8(&v24, &v21);
  if (v4)
  {
    goto LABEL_4;
  }

  *&v22 = v24;

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_2685B5450();
  sub_268689974();
  v16 = v15;

  if (v16)
  {

    sub_268689994();
    a3 = sub_268689954();
    v19 = v18;
    result = (*(v10 + 8))(v12, v9);
    if (v19 >> 60 != 15)
    {
LABEL_4:

      __swift_destroy_boxed_opaque_existential_1(v26);
      return a3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268667FE8(__int16 a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(__int16 *))
{
  v11 = v7;
  v16 = sub_2686899A4();
  v23 = *(v16 - 8);
  v24 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[3] = a5;
  v25[4] = a6;
  v25[0] = a2;
  v25[1] = a3;
  v25[2] = a4;
  __swift_project_boxed_opaque_existential_1(v25, a5);
  v26 = a1 & 0x101;

  sub_2685BA80C(a3, a4);
  a7(&v26);
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
    return v11;
  }

  sub_268689994();
  v11 = sub_268689954();
  v20 = v19;
  result = (*(v23 + 8))(v18, v24);
  if (v20 >> 60 != 15)
  {

    __swift_destroy_boxed_opaque_existential_1(v25);
    return v11;
  }

  __break(1u);
  return result;
}

double Google_Protobuf_Value.init(integerLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1;
  v6 = xmmword_268692580;
  v7 = 0;
  sub_2686681F0(&v5, &v8);
  v3 = v9;
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v3;
  return result;
}

void sub_2686681F0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  type metadata accessor for Google_Protobuf_Value._StorageClass();
  inited = swift_initStaticObject();
  *a2 = xmmword_26868A5E0;
  *(a2 + 16) = inited;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v8 = *(inited + 16);
    v9 = *(inited + 24);
    v10 = *(inited + 32);
    v11 = *(inited + 40);
  }

  else
  {
    v13 = v6;
    v12 = swift_allocObject();
    v8 = *(inited + 16);
    v9 = *(inited + 24);
    v10 = *(inited + 32);
    v11 = *(inited + 40);
    *(v12 + 16) = v8;
    *(v12 + 24) = v9;
    *(v12 + 32) = v10;
    *(v12 + 40) = v11;
    sub_2685D10A0(v8, v9, v10, v11);
    sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

    *(a2 + 16) = v12;
    inited = v12;
    v6 = v13;
  }

  *(inited + 16) = v3;
  *(inited + 24) = v4;
  *(inited + 32) = v5;
  *(inited + 40) = v6;

  sub_2685D1170(v8, v9, v10, v11);
}

double sub_268668320@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = xmmword_268692580;
  v7 = 0;
  sub_2686681F0(&v5, &v8);
  v3 = v9;
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v3;
  return result;
}

double sub_268668380@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = xmmword_268692580;
  v7 = 0;
  sub_2686681F0(&v5, &v8);
  v3 = v9;
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v3;
  return result;
}

double sub_2686683DC@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = xmmword_268692590;
  v7 = 0;
  sub_2686681F0(&v5, &v8);
  v3 = v9;
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v3;
  return result;
}

double sub_268668438@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v6[2] = 0x2000000000000000;
  v7 = 0;
  sub_2686681F0(v6, &v8);
  v4 = v9;
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v4;
  return result;
}

double Google_Protobuf_Value.init(nilLiteral:)@<D0>(uint64_t a1@<X8>)
{
  v4 = 0;
  v5 = xmmword_2686925A0;
  v6 = 0;
  sub_2686681F0(&v4, &v7);
  v2 = v8;
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v2;
  return result;
}

double sub_2686684E8@<D0>(uint64_t a1@<X8>)
{
  v4 = xmmword_26868A5A0;
  v5 = 0;
  v6 = 0;
  sub_2686681F0(&v4, &v7);
  v2 = v8;
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v2;
  return result;
}

unsigned __int8 *sub_268668540(_BYTE *a1)
{
  v4 = sub_2686899A4();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  LOBYTE(v5) = *a1;
  v7 = a1[1];
  v8 = *(v1 + 2);
  v16 = MEMORY[0x277D84F90];
  v17 = 256;
  v14 = *v1;
  v15 = v8;
  v13[0] = v5;
  v13[1] = v7;
  sub_2686673C8(&v16, v13);
  if (v2 || (*&v14 = v16, , sub_268689994(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0), sub_2685B5450(), v6 = sub_268689974(), v10 = v9, result = , v10))
  {

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_2686686B8@<D0>(uint64_t a1@<X8>)
{
  v4 = xmmword_26868A5A0;
  v5 = 0;
  v6 = 0;
  sub_2686681F0(&v4, &v7);
  v2 = v8;
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v2;
  return result;
}

double sub_26866871C@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = a2;
  v6 = xmmword_268692580;
  v7 = 0;
  sub_2686681F0(&v5, &v8);
  v3 = v9;
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v3;
  return result;
}

double sub_268668778@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = 0x2000000000000000;
  v7 = 0;
  sub_2686681F0(v6, &v8);
  v4 = v9;
  result = *&v8;
  *a3 = v8;
  *(a3 + 16) = v4;
  return result;
}

double sub_2686687D0@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = a1 & 1;
  v6 = xmmword_268692590;
  v7 = 0;
  sub_2686681F0(&v5, &v8);
  v3 = v9;
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v3;
  return result;
}

double Google_Protobuf_Value.init(structValue:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = 1;
  sub_2686681F0(&v5, &v8);
  v3 = v9;
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v3;
  return result;
}

double Google_Protobuf_Value.init(listValue:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2] | 0x1000000000000000;
  v7[0] = *a1;
  v7[1] = v3;
  v7[2] = v4;
  v8 = 1;
  sub_2686681F0(v7, &v9);
  v5 = v10;
  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v5;
  return result;
}

unint64_t sub_268668904()
{
  result = qword_28028D9B0;
  if (!qword_28028D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D9B0);
  }

  return result;
}

unint64_t sub_268668968()
{
  result = qword_28028D9B8;
  if (!qword_28028D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D9B8);
  }

  return result;
}

uint64_t sub_2686689EC(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = sub_268689A84();
    v3 = result;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v4;
    if (!isUniquelyReferenced_nonNull_native || *(v4 + 3) >> 1 < v6)
    {
      if (v5 <= v6)
      {
        v8 = v5 + v3;
      }

      else
      {
        v8 = v5;
      }

      v4 = sub_2685B3F48(isUniquelyReferenced_nonNull_native, v8, 1, v4);
      *v2 = v4;
    }

    result = sub_268689CF4();
    if (v9)
    {
      goto LABEL_22;
    }

    v10 = result;

    if (v10 >= v3)
    {
      if (v10 < 1)
      {
LABEL_17:
        *v2 = v4;
        return result;
      }

      v11 = *(v4 + 2);
      v12 = __OFADD__(v11, v10);
      v13 = v11 + v10;
      if (!v12)
      {
        *(v4 + 2) = v13;
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_268668B04(uint64_t result)
{
  if (BYTE1(result) < result)
  {
    v3 = -(result - BYTE1(result));
  }

  else
  {
    v3 = BYTE1(result) - result;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + v3 + 1;
  if (__OFADD__(v5, v3 + 1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    if (v27)
    {
      goto LABEL_16;
    }

    v13 = *(v4 + 2);
    LODWORD(v12) = v26;
    v7 = v25;
    v16 = v26 == v25;
    if (v26 == v25)
    {
      v17 = 0;
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3 + 1;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_2685B3F48(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_26866A174(&v24, &v4[v11 + 32], v9 - v11, v7);
  if (result <= v3)
  {
    goto LABEL_18;
  }

  if (result < 1)
  {
    goto LABEL_15;
  }

  v14 = *(v4 + 2);
  v15 = __OFADD__(v14, result);
  v16 = v14 + result;
  if (!v15)
  {
    *(v4 + 2) = v16;
LABEL_15:
    if (result != v12)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_23:
  v17 = (v12 + 1);
  if (((v12 + 1) & 0x100) != 0)
  {
    __break(1u);
LABEL_25:
    v13 = v1;
    goto LABEL_26;
  }

LABEL_27:
  while (1)
  {
    v18 = *(v4 + 3);
    v1 = v18 >> 1;
    if ((v18 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v1)
    {
      goto LABEL_29;
    }

LABEL_26:
    *(v4 + 2) = v13;
  }

  v20 = v4;
  v21 = v16;
  v22 = v17;
  v23 = v13;
  result = sub_2685B3F48((v18 > 1), v13 + 1, 1, v20);
  v13 = v23;
  v17 = v22;
  v16 = v21;
  v4 = result;
  *v2 = result;
  v1 = *(result + 24) >> 1;
  if (v23 >= v1)
  {
    goto LABEL_26;
  }

LABEL_29:
  v19 = v13 + 32;
  while (1)
  {
    v4[v19] = v12;
    if (v16)
    {
      break;
    }

    LOBYTE(v12) = v17;
    v16 = v17 == v7;
    if (v17 == v7)
    {
      v17 = 0;
    }

    else
    {
      v17 = v17 + 1;
      if ((v17 & 0x100) != 0)
      {
        __break(1u);
        return result;
      }
    }

    if (++v19 - v1 == 32)
    {
      goto LABEL_25;
    }
  }

  *(v4 + 2) = v19 - 31;
LABEL_16:
  *v2 = v4;
  return result;
}

uint64_t sub_268668CF8(uint64_t a1, unint64_t a2)
{
  v5 = sub_268689864();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v11 = 0;
    if (v10 != 2 || (v13 = *(a1 + 16), v12 = *(a1 + 24), v11 = v12 - v13, !__OFSUB__(v12, v13)))
    {
LABEL_10:
      v14 = *v2;
      v15 = *(*v2 + 16);
      v16 = v15 + v11;
      if (__OFADD__(v15, v11))
      {
        __break(1u);
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v2 = v14;
        if (!isUniquelyReferenced_nonNull_native || (v18 = *(v14 + 3) >> 1, v18 < v16))
        {
          if (v15 <= v16)
          {
            v19 = v15 + v11;
          }

          else
          {
            v19 = v15;
          }

          v14 = sub_2685B3F48(isUniquelyReferenced_nonNull_native, v19, 1, v14);
          *v2 = v14;
          v18 = *(v14 + 3) >> 1;
        }

        v20 = v18 - *(v14 + 2);
        v21 = sub_2686897F4();
        sub_2685B593C(a1, a2);
        if (v21 >= v11)
        {
          if (v21 >= 1)
          {
            v22 = *(v14 + 2);
            v23 = __OFADD__(v22, v21);
            v24 = v22 + v21;
            if (v23)
            {
              __break(1u);
LABEL_28:
              v2 = a1;
              while (1)
              {
                v25 = *(v14 + 3);
                v26 = v25 >> 1;
                if ((v25 >> 1) >= v20 + 1)
                {
                  break;
                }

                v14 = sub_2685B3F48((v25 > 1), v20 + 1, 1, v14);
                *v2 = v14;
                v27 = v29;
                v26 = *(v14 + 3) >> 1;
                if ((v29 & 1) == 0)
                {
                  goto LABEL_32;
                }

LABEL_29:
                *(v14 + 2) = v20;
                v2 = a1;
                if (v27)
                {
                  goto LABEL_22;
                }
              }

              v27 = 0;
              do
              {
LABEL_32:
                if (v20 >= v26)
                {
                  break;
                }

                v14[v20++ + 32] = v28[14];
                sub_268689C94();
                v27 = v29;
              }

              while ((v29 & 1) == 0);
              goto LABEL_29;
            }

            *(v14 + 2) = v24;
          }

          if (v21 != v20)
          {
LABEL_22:
            result = (*(v6 + 8))(v9, v5);
            *v2 = v14;
            return result;
          }

LABEL_25:
          a1 = v2;
          v20 = *(v14 + 2);
          sub_26866A228();
          sub_268689C94();
          if (v29)
          {
            goto LABEL_22;
          }

          goto LABEL_28;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(a2);
    goto LABEL_10;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v11 = HIDWORD(a1) - a1;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void *sub_268668FA8(void *result)
{
  v2 = result[2];
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
  *v1 = v3;
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_2686664A0(result, v10, 1, v3);
  v3 = result;
  *v1 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C080, &qword_26868A780);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t SimpleExtensionMap.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      sub_2685B1724(v3, v5);
      SimpleExtensionMap.insert(_:)(v5);
      __swift_destroy_boxed_opaque_existential_1(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Void __swiftcall SimpleExtensionMap.insert(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  v1 = *(contentsOf._rawValue + 2);
  if (v1)
  {
    v2 = contentsOf._rawValue + 32;
    do
    {
      SimpleExtensionMap.insert(_:)(v2);
      v2 += 5;
      --v1;
    }

    while (v1);
  }
}

uint64_t SimpleExtensionMap.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = MEMORY[0x277D84F98];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      v8 = *(a1 + v5);
      SimpleExtensionMap.formUnion(_:)(&v8);
      v5 += 8;
      --v4;
    }

    while (v4);

    v7 = v9;
  }

  else
  {

    v7 = MEMORY[0x277D84F98];
  }

  *a2 = v7;
  return result;
}

uint64_t SimpleExtensionMap.formUnion(_:)(void *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *a1 + 64;
  v5 = 1 << *(*a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v46 = v1;
  v47 = v3;
  v44 = v8;
  v45 = v4;
  if (v7)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v12 = (v9 << 9) | (8 * v11);
        v13 = *(*(v3 + 48) + v12);
        v14 = *(*(v3 + 56) + v12);
        v15 = *v2;
        v48 = v13;
        v49 = v14;
        if (*(*v2 + 16))
        {
          v16 = sub_2685B351C(v13);
          if (v17)
          {
            break;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v51[0] = *v2;
        v27 = *&v51[0];
        *v2 = 0x8000000000000000;
        v28 = sub_2685B351C(v13);
        v30 = *(v27 + 16);
        v31 = (v29 & 1) == 0;
        v32 = __OFADD__(v30, v31);
        v33 = v30 + v31;
        if (v32)
        {
          goto LABEL_38;
        }

        v34 = v29;
        if (*(v27 + 24) >= v33)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v41 = v8;
            v42 = v28;
            sub_268688B54();
            v28 = v42;
            v8 = v41;
          }
        }

        else
        {
          sub_268687814(v33, isUniquelyReferenced_nonNull_native);
          v28 = sub_2685B351C(v48);
          if ((v34 & 1) != (v35 & 1))
          {
            goto LABEL_40;
          }
        }

        v3 = v47;
        v36 = *&v51[0];
        if (v34)
        {
          *(*(*&v51[0] + 56) + 8 * v28) = v14;
        }

        else
        {
          *(*&v51[0] + 8 * (v28 >> 6) + 64) |= 1 << v28;
          *(v36[6] + 8 * v28) = v48;
          *(v36[7] + 8 * v28) = v14;
          v37 = v36[2];
          v32 = __OFADD__(v37, 1);
          v38 = v37 + 1;
          if (v32)
          {
            goto LABEL_39;
          }

          v36[2] = v38;
        }

        *v2 = v36;
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      v18 = *(*(v15 + 56) + 8 * v16);
      v19 = MEMORY[0x277D84F90];
      v52 = MEMORY[0x277D84F90];
      v20 = *(v18 + 16);

      if (v20)
      {
        break;
      }

LABEL_33:

      *&v51[0] = v19;
      sub_268668FA8(v14);
      v39 = *&v51[0];
      v2 = v46;
      v40 = swift_isUniquelyReferenced_nonNull_native();
      *&v50[0] = *v46;
      *v46 = 0x8000000000000000;
      sub_2686881DC(v39, v48, v40);
      *v46 = *&v50[0];
      v3 = v47;
      v8 = v44;
      v4 = v45;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v21 = 0;
    v22 = v18 + 32;
    while (v21 < *(v18 + 16))
    {
      sub_2685B1724(v22, v51);
      if (sub_268669CA0(v51, v14))
      {
        sub_2685B17CC(v51, v50);
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v52 = v19;
        if ((v23 & 1) == 0)
        {
          sub_2685C46D4(0, *(v19 + 16) + 1, 1);
          v19 = v52;
        }

        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_2685C46D4((v24 > 1), v25 + 1, 1);
          v19 = v52;
        }

        *(v19 + 16) = v25 + 1;
        sub_2685B17CC(v50, v19 + 40 * v25 + 32);
        v14 = v49;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v51);
      }

      ++v21;
      v22 += 40;
      if (v20 == v21)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  MEMORY[0x26D61DC90](0);

  __swift_destroy_boxed_opaque_existential_1(v51);

  __break(1u);
LABEL_40:
  result = sub_268689E34();
  __break(1u);
  return result;
}

uint64_t SimpleExtensionMap.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *v3;
  if (!*(v5 + 16))
  {
    goto LABEL_9;
  }

  v6 = result;
  result = sub_2685B351C(a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = *(*(v5 + 56) + 8 * result);
  v9 = *(v8 + 16);

  if (!v9)
  {
LABEL_8:

LABEL_9:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v10 = 0;
  v11 = v8 + 32;
  while (v10 < *(v8 + 16))
  {
    sub_2685B1724(v11, v14);
    v12 = v15;
    v13 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    if ((*(v13 + 24))(v12, v13) == v6)
    {

      sub_2685B1724(v14, a3);
      return __swift_destroy_boxed_opaque_existential_1(v14);
    }

    ++v10;
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    v11 += 40;
    if (v9 == v10)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t SimpleExtensionMap.fieldNumberForProto(messageType:protoFieldName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v9 = *(*v4 + 64);
  v8 = *v4 + 64;
  v7 = v9;
  v10 = 1 << *(v6 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  v33 = v8;
  v34 = result;
  v32 = v13;
  do
  {
LABEL_4:
    if (!v12)
    {
      do
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_26;
        }

        if (v16 >= v13)
        {

          return 0;
        }

        v12 = *(v8 + 8 * v16);
        ++v15;
      }

      while (!v12);
      v15 = v16;
    }

    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = *(*(result + 56) + ((v15 << 9) | (8 * v17)));
    v19 = *(v18 + 16);
  }

  while (!v19);
  v20 = v18 + 32;

  v21 = 0;
  while (v21 < *(v18 + 16))
  {
    sub_2685B1724(v20, v37);
    v24 = v38;
    v25 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    if ((*(v25 + 16))(v24, v25) == a3 && v26 == a4)
    {
    }

    else
    {
      v28 = sub_268689E14();

      if ((v28 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v22 = v38;
    v23 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    if ((*(v23 + 24))(v22, v23) == a1)
    {

      v29 = v38;
      v30 = v39;
      __swift_project_boxed_opaque_existential_1(v37, v38);
      v31 = (*(v30 + 8))(v29, v30);

      __swift_destroy_boxed_opaque_existential_1(v37);
      return v31;
    }

LABEL_13:
    ++v21;
    result = __swift_destroy_boxed_opaque_existential_1(v37);
    v20 += 40;
    if (v19 == v21)
    {

      v8 = v33;
      result = v34;
      v13 = v32;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t SimpleExtensionMap.insert(_:)(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = v6;
  v8 = *v1;
  if (!*(*v2 + 16) || (v9 = sub_2685B351C(v6), (v10 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C078, &unk_268692750);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_26868F1E0;
    sub_2685B1724(a1, v26 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v35 = *v2;
    *v2 = 0x8000000000000000;
    result = sub_2686881DC(v26, v7, isUniquelyReferenced_nonNull_native);
    *v2 = v35;
    return result;
  }

  v32 = v7;
  v33 = v2;
  v11 = *(*(v8 + 56) + 8 * v9);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = *(v13 + 24);

  v15 = v14(v12, v13);
  v16 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D84F90];
  v17 = *(v11 + 16);
  if (v17)
  {
    v18 = v15;
    v19 = 0;
    v20 = v11 + 32;
    while (v19 < *(v11 + 16))
    {
      sub_2685B1724(v20, &v35);
      v21 = v36;
      v22 = v37;
      __swift_project_boxed_opaque_existential_1(&v35, v36);
      if ((*(v22 + 24))(v21, v22) == v18)
      {
        __swift_destroy_boxed_opaque_existential_1(&v35);
      }

      else
      {
        sub_2685B17CC(&v35, v34);
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v38 = v16;
        if ((v23 & 1) == 0)
        {
          sub_2685C46D4(0, v16[2] + 1, 1);
          v16 = v38;
        }

        v25 = v16[2];
        v24 = v16[3];
        if (v25 >= v24 >> 1)
        {
          sub_2685C46D4((v24 > 1), v25 + 1, 1);
          v16 = v38;
        }

        v16[2] = v25 + 1;
        sub_2685B17CC(v34, &v16[5 * v25 + 4]);
      }

      ++v19;
      v20 += 40;
      if (v17 == v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_15:

  sub_2685B1724(a1, &v35);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_20:
    v16 = sub_2686664A0(0, v16[2] + 1, 1, v16);
  }

  v30 = v16[2];
  v29 = v16[3];
  if (v30 >= v29 >> 1)
  {
    v16 = sub_2686664A0((v29 > 1), v30 + 1, 1, v16);
  }

  v16[2] = v30 + 1;
  sub_2685B17CC(&v35, &v16[5 * v30 + 4]);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  *&v35 = *v33;
  *v33 = 0x8000000000000000;
  result = sub_2686881DC(v16, v32, v31);
  *v33 = v35;
  return result;
}

BOOL sub_268669CA0(void *a1, uint64_t a2)
{
  v3 = (a2 + 32);
  v4 = *(a2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = a1[3];
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v5);
    v7 = (*(v6 + 24))(v5, v6);
    v8 = v3[3];
    v9 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v8);
    v3 += 5;
  }

  while (v7 != (*(v9 + 24))(v8, v9));
  return v4 == 0;
}

uint64_t SimpleExtensionMap.union(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  *a2 = *v2;
  v6 = v4;

  return SimpleExtensionMap.formUnion(_:)(&v6);
}

unint64_t SimpleExtensionMap.debugDescription.getter()
{
  v1 = *v0;
  v4 = *(*v0 + 64);
  v3 = *v0 + 64;
  v2 = v4;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v29 = v3;
  v30 = result;
  v28 = v8;
  while (v7)
  {
LABEL_10:
    v13 = *(*(result + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = v13 + 32;

      do
      {
        sub_2685B1724(v15, &v33);
        v16 = v35;
        v17 = v36;
        __swift_project_boxed_opaque_existential_1(&v33, v35);
        v31 = (*(v17 + 16))(v16, v17);
        v32 = v18;
        MEMORY[0x26D61D4B0](10298, 0xE200000000000000);
        v19 = v35;
        v20 = v36;
        __swift_project_boxed_opaque_existential_1(&v33, v35);
        (*(v20 + 8))(v19, v20);
        __swift_destroy_boxed_opaque_existential_1(&v33);
        v21 = sub_268689DF4();
        MEMORY[0x26D61D4B0](v21);

        MEMORY[0x26D61D4B0](41, 0xE100000000000000);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_2685B54B4(0, *(v11 + 2) + 1, 1, v11);
        }

        v23 = *(v11 + 2);
        v22 = *(v11 + 3);
        if (v23 >= v22 >> 1)
        {
          v11 = sub_2685B54B4((v22 > 1), v23 + 1, 1, v11);
        }

        *(v11 + 2) = v23 + 1;
        v24 = &v11[16 * v23];
        *(v24 + 4) = v31;
        *(v24 + 5) = v32;
        v15 += 40;
        --v14;
      }

      while (v14);

      v3 = v29;
      result = v30;
      v8 = v28;
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      v33 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD88, &unk_26868F268);
      sub_268621BAC();
      v25 = sub_268689934();
      v27 = v26;

      v33 = 0;
      v34 = 0xE000000000000000;
      sub_268689CE4();

      v33 = 0xD000000000000013;
      v34 = 0x8000000268695960;
      MEMORY[0x26D61D4B0](v25, v27);

      MEMORY[0x26D61D4B0](41, 0xE100000000000000);
      return v33;
    }

    v7 = *(v3 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26866A0F8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_268689AC4();
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
    v5 = MEMORY[0x26D61D4F0](15, a1 >> 16);
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

uint64_t sub_26866A174(uint64_t result, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (!a2)
  {
LABEL_13:
    v5 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v5 = 0;
LABEL_15:
    v6 = a4;
LABEL_18:
    *result = a4;
    *(result + 2) = v6;
    *(result + 3) = v5;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v4 = 0;
  v5 = 0;
  v6 = a4;
  while (1)
  {
    if (v5)
    {
      v5 = 1;
      a3 = v4;
      goto LABEL_18;
    }

    v5 = v6 == (a4 & 0xFF00) >> 8;
    if (v6 == (a4 & 0xFF00) >> 8)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v7 = v6 + 1;
    if (((v6 + 1) & 0x100) != 0)
    {
      break;
    }

LABEL_9:
    *(a2 + v4) = v6;
    if (a3 - 1 == v4)
    {
      v6 = v7;
      goto LABEL_18;
    }

    ++v4;
    v6 = v7;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_26866A228()
{
  result = qword_28028D9C0;
  if (!qword_28028D9C0)
  {
    sub_268689864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D9C0);
  }

  return result;
}

uint64_t sub_26866A280(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_beginAccess();
  v5 = v3 == *(a1 + 16) && v4 == *(a1 + 24);
  if (v5 || (v6 = 0, (sub_268689E14() & 1) != 0))
  {
    swift_beginAccess();
    sub_268643E8C(v1 + 32, v18);
    if (v19 == 1)
    {
      sub_2685B17CC(v18, v20);
      swift_beginAccess();
      sub_268643E8C(a1 + 32, v18);
      if (v19 == 1)
      {
        sub_2685B17CC(v18, v17);
        __swift_project_boxed_opaque_existential_1(v20, v21);
        DynamicType = swift_getDynamicType();
        __swift_project_boxed_opaque_existential_1(v17, v17[3]);
        if (DynamicType == swift_getDynamicType())
        {
          v15 = v21;
          v16 = v22;
          __swift_project_boxed_opaque_existential_1(v20, v21);
          v6 = (*(v16 + 88))(v17, v15, v16);
          __swift_destroy_boxed_opaque_existential_1(v17);
          __swift_destroy_boxed_opaque_existential_1(v20);
          return v6 & 1;
        }

        __swift_destroy_boxed_opaque_existential_1(v17);
      }

      else
      {
        sub_26866DD20(v18);
      }

      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    else
    {
      sub_26866DD20(v18);
    }

    sub_268643E8C(v1 + 32, v18);
    if (!v19)
    {
      v8 = v18[0];
      swift_beginAccess();
      sub_268643E8C(a1 + 32, v18);
      if (!v19)
      {
        v13 = v18[0];
        v14 = sub_2686131DC(v8, *(&v8 + 1), *&v18[0], *(&v18[0] + 1));
        sub_2685B593C(v8, *(&v8 + 1));
        sub_2685B593C(v13, *(&v13 + 1));
        if (v14)
        {
LABEL_26:
          v6 = 1;
          return v6 & 1;
        }

LABEL_17:
        sub_268643E8C(v1 + 32, v18);
        if (v19 == 2)
        {
          v9 = v18[0];
          swift_beginAccess();
          sub_268643E8C(a1 + 32, v18);
          if (v19 == 2)
          {
            v10 = v18[0];
            v11 = sub_2686131DC(v9, *(&v9 + 1), *&v18[0], *(&v18[0] + 1));
            sub_2685B593C(v9, *(&v9 + 1));
            sub_2685B593C(v10, *(&v10 + 1));
            if (v11)
            {
              goto LABEL_26;
            }

            goto LABEL_23;
          }

          sub_2685B593C(v9, *(&v9 + 1));
        }

        sub_26866DD20(v18);
LABEL_23:
        v6 = 0;
        return v6 & 1;
      }

      sub_2685B593C(v8, *(&v8 + 1));
    }

    sub_26866DD20(v18);
    goto LABEL_17;
  }

  return v6 & 1;
}

uint64_t sub_26866A568(char **a1)
{
  swift_beginAccess();
  sub_268643E8C((v1 + 32), &v84);
  if (v87)
  {
    if (v87 == 1)
    {
      sub_2685B17CC(&v84, &aBlock);
      swift_beginAccess();
      v5 = *(v1 + 2);
      v4 = *(v1 + 3);
      v7 = *(&v82 + 1);
      v6 = v82;
      v8 = __swift_project_boxed_opaque_existential_1(&aBlock, v82);

      sub_26866DF6C(a1, v8, v5, v4, v6, v7);
LABEL_4:

      return __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    v10 = *(&v84 + 1);
    v11 = v84;
    v2 = v85;
    v72 = v86;
    swift_beginAccess();
    v34 = *(v1 + 2);
    v35 = *(v1 + 3);

    v19 = sub_268652BF8(v34, v35);
    isEscapingClosureAtFileLocation = v36;

    v77 = 0;
    v78 = 0;
    if (qword_28028BE40 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

  v10 = *(&v84 + 1);
  v11 = v84;
  swift_beginAccess();
  v12 = *(v1 + 2);
  v13 = *(v1 + 3);

  v14 = sub_268652BF8(v12, v13);
  v16 = v15;

  v75[0] = 0uLL;
  if (qword_28028BE40 != -1)
  {
    swift_once();
  }

  v17 = qword_28028D890;
  v18 = swift_allocObject();
  v18[2] = v75;
  v18[3] = v14;
  v18[4] = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_268653E5C;
  *(v19 + 24) = v18;
  *(&v82 + 1) = sub_26866E228;
  v83 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v80 = 1107296256;
  v81 = sub_2686535FC;
  *&v82 = &block_descriptor_58;
  v20 = _Block_copy(&aBlock);
  v21 = v17;

  dispatch_sync(v21, v20);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_46:
    swift_once();
LABEL_23:
    v37 = qword_28028D890;
    v38 = swift_allocObject();
    v38[2] = &v77;
    v38[3] = v19;
    v38[4] = isEscapingClosureAtFileLocation;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_268653E5C;
    *(v39 + 24) = v38;
    *(&v82 + 1) = sub_26866E228;
    v83 = v39;
    aBlock = MEMORY[0x277D85DD0];
    v80 = 1107296256;
    v81 = sub_2686535FC;
    *&v82 = &block_descriptor_47;
    v40 = _Block_copy(&aBlock);
    v41 = v37;

    dispatch_sync(v41, v40);

    _Block_release(v40);
    LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

    if ((v40 & 1) == 0)
    {
      v42 = v77;
      v43 = v78;

      if (v42)
      {
        v77 = v2;
        LOBYTE(v78) = v72;
        sub_26866CA90(v11, v10, &v77, v42, v43, &aBlock);
        v63 = *(v1 + 2);
        v62 = *(v1 + 3);
        v65 = *(&v82 + 1);
        v64 = v82;
        v66 = __swift_project_boxed_opaque_existential_1(&aBlock, v82);

        sub_26866DF6C(a1, v66, v63, v62, v64, v65);

        sub_2685B593C(v11, v10);
        return __swift_destroy_boxed_opaque_existential_1(&aBlock);
      }

      v45 = *(v1 + 2);
      v44 = *(v1 + 3);
      v46 = HIBYTE(v44) & 0xF;
      if ((v44 & 0x2000000000000000) == 0)
      {
        v46 = v45 & 0xFFFFFFFFFFFFLL;
      }

      if (v46)
      {

        sub_2685B301C(1);
        sub_2685B403C(": ", 2, v47);
        sub_2685B43A4(v45, v44);

        v48 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v48 = sub_2685B3F48(0, *(v48 + 2) + 1, 1, v48);
          *a1 = v48;
        }

        v51 = *(v48 + 2);
        v50 = *(v48 + 3);
        if (v51 >= v50 >> 1)
        {
          v48 = sub_2685B3F48((v50 > 1), v51 + 1, 1, v48);
        }

        *(v48 + 2) = v51 + 1;
        v48[v51 + 32] = 10;
        *a1 = v48;
      }

      v52 = sub_26866C948(v11, v10);
      v54 = v53;

      sub_2685B3560(v55);
      sub_2685B403C("#json: ", 7, v56);
      sub_2686637F4(v52, v54);
      sub_2685B403C("\n", 1, v57);
      sub_2685B593C(v52, v54);
      return sub_2685B593C(v11, v10);
    }

    __break(1u);
    goto LABEL_48;
  }

  v23 = v75[0];

  if (v23)
  {
    v24 = v1;
    v76 = 0;
    memset(v75, 0, sizeof(v75));
    v73 = 100;
    v74 = 0;
    v82 = v23;
    v25 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
    sub_2685BA80C(v11, v10);
    Message.init(serializedData:extensions:partial:options:)(v11, v10, v75, 1, &v73, v23, *(&v23 + 1), v25);
    v60 = *(v1 + 2);
    v61 = *(v24 + 3);

    sub_26866DF6C(a1, v25, v60, v61, v23, *(&v23 + 1));
    sub_2685B593C(v11, v10);
    goto LABEL_4;
  }

  v27 = *(v1 + 2);
  v26 = *(v1 + 3);
  v28 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v28 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {

    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v29);
    sub_2685B43A4(v27, v26);

    v1 = *a1;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v1;
    if (v30)
    {
LABEL_15:
      v32 = *(v1 + 2);
      v31 = *(v1 + 3);
      if (v32 >= v31 >> 1)
      {
        v1 = sub_2685B3F48((v31 > 1), v32 + 1, 1, v1);
      }

      *(v1 + 2) = v32 + 1;
      v1[v32 + 32] = 10;
      *a1 = v1;
      goto LABEL_18;
    }

LABEL_48:
    v1 = sub_2685B3F48(0, *(v1 + 2) + 1, 1, v1);
    *a1 = v1;
    goto LABEL_15;
  }

LABEL_18:
  v33 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v33 != 2)
    {
      return sub_2685B593C(v11, v10);
    }

    v58 = *(v11 + 16);
    v59 = *(v11 + 24);
LABEL_38:
    if (v58 != v59)
    {
      goto LABEL_40;
    }

    return sub_2685B593C(v11, v10);
  }

  if (v33)
  {
    v58 = v11;
    v59 = v11 >> 32;
    goto LABEL_38;
  }

  if ((v10 & 0xFF000000000000) == 0)
  {
    return sub_2685B593C(v11, v10);
  }

LABEL_40:
  sub_2685B301C(2);
  sub_2685B403C(": ", 2, v67);
  sub_2686637F4(v11, v10);
  v68 = *a1;
  v69 = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v68;
  if ((v69 & 1) == 0)
  {
    v68 = sub_2685B3F48(0, *(v68 + 2) + 1, 1, v68);
    *a1 = v68;
  }

  v71 = *(v68 + 2);
  v70 = *(v68 + 3);
  if (v71 >= v70 >> 1)
  {
    v68 = sub_2685B3F48((v70 > 1), v71 + 1, 1, v68);
  }

  result = sub_2685B593C(v11, v10);
  *(v68 + 2) = v71 + 1;
  v68[v71 + 32] = 10;
  *a1 = v68;
  return result;
}

uint64_t sub_26866ADE4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  swift_beginAccess();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v10 = sub_268652BF8(a1, a2);
  v12 = v11;
  v61 = 0uLL;
  if (qword_28028BE40 != -1)
  {
    swift_once();
  }

  v13 = qword_28028D890;
  v14 = swift_allocObject();
  v14[2] = &v61;
  v14[3] = v10;
  v14[4] = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_268653E5C;
  *(v15 + 24) = v14;
  *&v73 = sub_26866E228;
  *(&v73 + 1) = v15;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v72 = sub_2686535FC;
  *(&v72 + 1) = &block_descriptor_36;
  v16 = _Block_copy(&aBlock);
  v17 = v13;

  dispatch_sync(v17, v16);

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
LABEL_80:

    goto LABEL_61;
  }

  v18 = v61;

  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = *(a3 + 40);
  if (v19 == *(a3 + 48))
  {
    goto LABEL_9;
  }

  v20 = *v19;
  *(a3 + 40) = v19 + 1;
  sub_2685C01A0();
  if (v20 != 60)
  {
    if (v20 == 123)
    {
      v21 = 125;
      goto LABEL_11;
    }

LABEL_9:
    sub_2685C1CBC();
    swift_allocError();
    *v22 = 0;
    return swift_willThrow();
  }

  v21 = 62;
LABEL_11:
  sub_268643DAC(a3, v69);
  *&v65 = 0;
  WORD4(v65) = 256;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  sub_268643DAC(v69, &v61);
  WORD4(v65) = v21;
  v24 = swift_conformsToProtocol2();
  if (v24)
  {
    (*(v24 + 8))(&v59, v18, v24);
    sub_268643E08(v69);
    sub_2685B2FBC(v66, *(&v66 + 1), v67, *(&v67 + 1));
    v66 = v59;
    v67 = v60;
    v68 = v18;
    aBlock = v61;
    v72 = v62;
    v73 = v63;
    v74 = v64;
    v75 = v65;
    v76 = v59;
    v77 = v60;
    v78 = v18;
    if (v18 != &type metadata for Google_Protobuf_Any)
    {
      v34 = *(*(&v18 + 1) + 16);
      v70 = v18;
      __swift_allocate_boxed_opaque_existential_1(v69);
      v34(v18, *(&v18 + 1));
      v36 = *(&v70 + 1);
      v35 = v70;
      __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
      (*(*(&v18 + 1) + 64))(&aBlock, &type metadata for TextFormatDecoder, &off_28792DCE0, v35, v36);
      if (v4)
      {
        sub_268643E5C(&aBlock);
        return __swift_destroy_boxed_opaque_existential_1(v69);
      }

      sub_2685B1724(v69, &v61);
      BYTE8(v63) = 1;
      swift_beginAccess();
      sub_268643EE8(&v61, v6 + 32);
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(v69);
      goto LABEL_58;
    }

    if (qword_28028BE58 != -1)
    {
      swift_once();
    }

    v25 = qword_28029B270;
    v26 = *(&v73 + 1);
    for (i = v74; v26 != v74; *(&v73 + 1) = v26)
    {
      v28 = *v26;
      if (v28 > 0x23)
      {
        break;
      }

      if (((1 << v28) & 0x100002600) != 0)
      {
        ++v26;
      }

      else
      {
        if (v28 != 35)
        {
          break;
        }

        *(&v73 + 1) = ++v26;
        while (v26 != v74)
        {
          v30 = *v26++;
          v29 = v30;
          if (v30 == 10 || v29 == 13)
          {
            goto LABEL_18;
          }
        }

        v26 = v74;
      }

LABEL_18:
      ;
    }

    if (v26 == v74 || *v26 != 91)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for AnyMessageStorage();
        v46 = swift_allocObject();
        v47 = v25;
        v25 = v46;
        sub_26866D2A0(v47);
      }

      sub_2686540A4(v25, &aBlock);
      if (v4)
      {
        goto LABEL_62;
      }

LABEL_56:
      *(&v62 + 1) = &type metadata for Google_Protobuf_Any;
      v48 = sub_2685CFD4C();
      v61 = xmmword_26868A5E0;
      *&v63 = v48;
      *&v62 = v25;
      sub_2685BA80C(0, 0xC000000000000000);

      sub_2685B593C(0, 0xC000000000000000);

      BYTE8(v63) = 1;
      swift_beginAccess();
      sub_268643EE8(&v61, v6 + 32);
      swift_endAccess();
LABEL_58:
      sub_26866E11C(&aBlock, a3);
      sub_26863C318();
      if ((v49 & 1) == 0)
      {
        sub_2685C1CBC();
        swift_allocError();
        *v50 = 0;
        swift_willThrow();
      }

      goto LABEL_63;
    }

    v37 = v26 + 1;
    *(&v73 + 1) = v26 + 1;
    if (v26 + 1 == v74)
    {
      goto LABEL_60;
    }

    if ((*v37 & 0xDFu) - 91 < 0xFFFFFFE6)
    {
      goto LABEL_60;
    }

    v38 = v26 + 2;
    *(&v73 + 1) = v26 + 2;
    if (v26 + 2 == v74)
    {
      goto LABEL_60;
    }

    v39 = 1;
    while (1)
    {
      v40 = *v38;
      v41 = (v40 - 58) > 0xFFFFFFF5 || (v40 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5;
      if (!v41 && (v40 - 46) >= 2 && v40 != 95)
      {
        break;
      }

      *(&v73 + 1) = ++v38;
      ++v39;
      if (v38 == v74)
      {
        goto LABEL_60;
      }
    }

    if (v40 != 93)
    {
LABEL_60:
    }

    else
    {

      v42 = sub_2685B4E1C(v37, v39);
      if (v43)
      {
        v44 = v43;
        if (v38 != i && *v38 == 93)
        {
          v45 = v38 + 1;
          for (*(&v73 + 1) = v38 + 1; v45 != i; *(&v73 + 1) = v45)
          {
            v52 = *v45;
            if (v52 > 0x23)
            {
              break;
            }

            if (((1 << v52) & 0x100002600) != 0)
            {
              ++v45;
            }

            else
            {
              if (v52 != 35)
              {
                break;
              }

              *(&v73 + 1) = ++v45;
              while (v45 != i)
              {
                v54 = *v45++;
                v53 = v54;
                if (v54 == 10 || v53 == 13)
                {
                  goto LABEL_66;
                }
              }

              v45 = i;
            }

LABEL_66:
            ;
          }

          v56 = v42;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for AnyMessageStorage();
            v57 = swift_allocObject();
            v58 = v25;
            v25 = v57;
            sub_26866D2A0(v58);
          }

          sub_26866ADE4(v56, v44, &aBlock);
          if (v5)
          {

            goto LABEL_62;
          }

          goto LABEL_56;
        }

        goto LABEL_80;
      }
    }

LABEL_61:
    sub_2685C1CBC();
    swift_allocError();
    *v51 = 0;
    swift_willThrow();
LABEL_62:
    sub_2685B593C(0, 0xC000000000000000);

LABEL_63:
    p_aBlock = &aBlock;
    return sub_268643E5C(p_aBlock);
  }

  sub_2685C1CBC();
  swift_allocError();
  *v32 = 6;
  swift_willThrow();
  sub_268643E08(v69);
  p_aBlock = &v61;
  return sub_268643E5C(p_aBlock);
}

unsigned __int8 *sub_26866B5F8(unsigned __int8 *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_2686899A4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  sub_268643E8C(v4 + 32, v57);
  if (!v58)
  {
    v48 = v8;
    v59 = *(&v57[0] + 1);
    v12 = *&v57[0];
    swift_beginAccess();
    v14 = *(v4 + 16);
    v13 = *(v4 + 24);

    v15 = sub_268652BF8(v14, v13);
    v17 = v16;

    v51[0] = 0uLL;
    if (qword_28028BE40 != -1)
    {
      swift_once();
    }

    v18 = qword_28028D890;
    a1 = swift_allocObject();
    *(a1 + 2) = v51;
    *(a1 + 3) = v15;
    *(a1 + 4) = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_268653E5C;
    *(v19 + 24) = a1;
    *(&v54 + 1) = sub_26866E228;
    v55 = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2686535FC;
    *&v54 = &block_descriptor_25;
    v20 = _Block_copy(aBlock);
    v21 = v18;

    dispatch_sync(v21, v20);

    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v25 = v51[0];

      if (v25)
      {
        v52 = 0;
        memset(v51, 0, sizeof(v51));
        v49 = 100;
        v50 = 0;
        v54 = v25;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
        v27 = v59;
        sub_2685BA80C(v12, v59);
        v28 = boxed_opaque_existential_1;
        a1 = v25;
        Message.init(serializedData:extensions:partial:options:)(v12, v27, v51, 1, &v49, v25, *(&v25 + 1), v28);
        if (v3)
        {
          sub_2685B593C(v12, v27);
          __swift_deallocate_boxed_opaque_existential_1(aBlock);
        }

        else
        {
          v46 = *(v4 + 16);
          v47 = *(v4 + 24);
          LOBYTE(v51[0]) = v7;
          BYTE1(v51[0]) = v48;

          a1 = sub_26866C2F0(aBlock, v46, v47, v51);

          sub_2685B593C(v12, v27);
          __swift_destroy_boxed_opaque_existential_1(aBlock);
        }
      }

      else
      {
        sub_2685D104C();
        swift_allocError();
        *v39 = 0;
        swift_willThrow();
        sub_2685B593C(v12, v59);
      }

      return a1;
    }

    __break(1u);
    goto LABEL_39;
  }

  if (v58 == 1)
  {
    sub_2685B17CC(v57, aBlock);
    swift_beginAccess();
    v9 = *(v4 + 16);
    v10 = *(v4 + 24);
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
    }

    else
    {
      v35 = *(&v54 + 1);
      a1 = v54;
      v36 = __swift_project_boxed_opaque_existential_1(aBlock, v54);
      v9 = sub_268653A68(v36, 0xD000000000000013, 0x80000002686958C0, a1, v35);
      v10 = v37;
    }

    LOBYTE(v56) = v7;
    BYTE1(v56) = v8;
    v38 = sub_26866C2F0(aBlock, v9, v10, &v56);
    if (!v3)
    {
      a1 = v38;
    }

    __swift_destroy_boxed_opaque_existential_1(aBlock);

    return a1;
  }

  v19 = *(&v57[0] + 1);
  v7 = *&v57[0];
  *&v51[0] = MEMORY[0x277D84F90];
  v23 = sub_2685B3F48(0, 1, 1, MEMORY[0x277D84F90]);
  isEscapingClosureAtFileLocation = *(v23 + 2);
  v24 = *(v23 + 3);
  v29 = v24 >> 1;
  a1 = (isEscapingClosureAtFileLocation + 1);
  if (v24 >> 1 <= isEscapingClosureAtFileLocation)
  {
LABEL_39:
    v23 = sub_2685B3F48((v24 > 1), a1, 1, v23);
    v24 = *(v23 + 3);
    v29 = v24 >> 1;
  }

  *(v23 + 2) = a1;
  v23[isEscapingClosureAtFileLocation + 32] = 123;
  WORD4(v51[0]) = 256;
  v30 = isEscapingClosureAtFileLocation + 2;
  if (v29 < v30)
  {
    v23 = sub_2685B3F48((v24 > 1), v30, 1, v23);
  }

  *(v23 + 2) = v30;
  a1[v23 + 32] = 34;
  *&v51[0] = v23;
  sub_2686689EC(0x6570797440, 0xE500000000000000);
  sub_2685B403C(":", 2, v31);
  WORD4(v51[0]) = 44;
  swift_beginAccess();
  v32 = *(v4 + 16);
  v33 = *(v4 + 24);

  sub_268631D18(v32, v33);

  v34 = (v19 >> 62);
  if ((v19 >> 62) <= 1)
  {
    if (v34)
    {
      v34 = v7;
      if (v7 == v7 >> 32)
      {
        goto LABEL_30;
      }
    }

    else if ((v19 & 0xFF000000000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_29:
    sub_2685B403C(",", 1, v34);
    sub_2685BA80C(v7, v19);
    sub_268668CF8(v7, v19);
    goto LABEL_30;
  }

  if (v34 == 2)
  {
    v34 = *(v7 + 16);
    if (v34 != *(v7 + 24))
    {
      goto LABEL_29;
    }
  }

LABEL_30:
  v40 = *&v51[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v40 = sub_2685B3F48(0, *(v40 + 2) + 1, 1, v40);
  }

  v42 = *(v40 + 2);
  v41 = *(v40 + 3);
  if (v42 >= v41 >> 1)
  {
    v40 = sub_2685B3F48((v41 > 1), v42 + 1, 1, v40);
  }

  *(v40 + 2) = v42 + 1;
  v40[v42 + 32] = 125;
  *&v51[0] = v40;
  WORD4(v51[0]) = 44;
  v56 = v40;
  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  a1 = sub_268689974();
  v44 = v43;

  if (v44)
  {
    sub_2685B593C(v7, v19);
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_26866BD64(uint64_t *a1)
{
  result = sub_2685BE1FC(123);
  if (v2)
  {
    return result;
  }

  v5 = a1[5];
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  a1[5] = v7;
  if (v7 < 0)
  {
    sub_2685BD910();
    swift_allocError();
    *v8 = xmmword_26868A5D0;
    return swift_willThrow();
  }

  swift_beginAccess();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;

  v49 = xmmword_26868A5E0;
  v52 = 0;
  swift_beginAccess();
  sub_268643EE8(&v49, v1 + 32);
  swift_endAccess();
  result = sub_2685BE428();
  if ((result & 1) == 0)
  {
    v48 = v1;
    v46 = 0;
    v53 = MEMORY[0x277D84F90];
    v47 = 1;
    while (1)
    {
      sub_2685BBB94();
      v10 = a1[1];
      v9 = a1[2];
      if (v9 == v10)
      {
LABEL_44:
        v37 = 13;
LABEL_45:
        sub_2685BD910();
        swift_allocError();
        *v38 = 0;
        v38[1] = v37;
LABEL_46:
        swift_willThrow();
      }

      v11 = *a1;
      if (*(*a1 + v9) != 34)
      {
        goto LABEL_43;
      }

      sub_2685BC360();
      if (!v13)
      {
        goto LABEL_43;
      }

      if (v14 = v12, v15 = v13, sub_2685BE1FC(58), v14 == 0x6570797440) && v15 == 0xE500000000000000 || (sub_268689E14())
      {

        sub_2685BBB94();
        v16 = a1[2];
        if (v16 == v10)
        {
          goto LABEL_44;
        }

        if (*(v11 + v16) != 34 || (sub_2685BC360(), !v18))
        {
LABEL_43:
          v37 = 5;
          goto LABEL_45;
        }

        *(v48 + 16) = v17;
        *(v48 + 24) = v18;
      }

      else
      {
        v19 = v53;
        if ((v47 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_2685B3F48(0, *(v19 + 2) + 1, 1, v19);
          }

          v21 = *(v19 + 2);
          v20 = *(v19 + 3);
          v22 = v21 + 1;
          if (v21 >= v20 >> 1)
          {
            v36 = sub_2685B3F48((v20 > 1), v21 + 1, 1, v19);
            v22 = v21 + 1;
            v19 = v36;
          }

          *(v19 + 2) = v22;
          v19[v21 + 32] = v46;
          v53 = v19;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_2685B3F48(0, *(v19 + 2) + 1, 1, v19);
          v53 = v19;
        }

        v24 = *(v19 + 2);
        v23 = *(v19 + 3);
        v25 = v24 + 1;
        if (v24 >= v23 >> 1)
        {
          v35 = sub_2685B3F48((v23 > 1), v24 + 1, 1, v19);
          v25 = v24 + 1;
          v19 = v35;
        }

        *(v19 + 2) = v25;
        v19[v24 + 32] = 34;
        v53 = v19;

        sub_2686689EC(v14, v15);
        sub_2685B403C(":", 2, v26);

        sub_2685BBB94();
        v27 = a1[2];
        sub_2685BE2E4();
        v11 = *a1;
        if (!*a1)
        {
          goto LABEL_55;
        }

        v28 = a1[2];
        if (__OFSUB__(v28, v27))
        {
          goto LABEL_53;
        }

        v29 = sub_2685B4E1C((v11 + v27), v28 - v27);
        if (!v30)
        {
          sub_2685BD910();
          swift_allocError();
          *v39 = xmmword_268692810;
          goto LABEL_46;
        }

        sub_2686689EC(v29, v30);
        v46 = 44;
        v47 = 0;
      }

      v32 = a1[1];
      v31 = a1[2];
      if (v31 != v32)
      {
        while (1)
        {
          v33 = *(v11 + v31);
          if (v33 > 0x20 || ((1 << v33) & 0x100002600) == 0)
          {
            break;
          }

          a1[2] = ++v31;
          if (v32 == v31)
          {
            goto LABEL_8;
          }
        }

        if (v32 != v31 && v33 == 125)
        {
          break;
        }
      }

LABEL_8:
      sub_2685BE1FC(44);
    }

    a1[2] = v31 + 1;
    v40 = a1[5];
    v41 = v40 + 1;
    if (!__OFADD__(v40, 1))
    {
      a1[5] = v41;
      if (a1[4] >= v41)
      {
        v42 = *(a1 + 64);
        v43 = sub_26866677C(v53);
        v45 = v44;

        *&v49 = v43;
        *(&v49 + 1) = v45;
        v50 = v41;
        v51 = v42;
        v52 = 2;
        swift_beginAccess();
        sub_268643EE8(&v49, v48 + 32);
        return swift_endAccess();
      }

      goto LABEL_56;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    result = sub_268689DA4();
    __break(1u);
  }

  return result;
}

char *sub_26866C2F0(void *a1, unint64_t a2, unint64_t a3, char *a4)
{
  v9 = sub_2686899A4();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a4;
  v13 = a4[1];
  sub_2685B1724(a1, &v51);
  LOBYTE(v57[0]) = v12;
  BYTE1(v57[0]) = v13;
  sub_26862CC74(&v51, v57, &v60);
  if (v4)
  {
    return v11;
  }

  v14 = v60;
  v64 = 0;
  if ((BYTE9(v60) & 1) == 0)
  {
    v50 = BYTE8(v60);
    v15 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_2685B3F48(0, *(v14 + 2) + 1, 1, v14);
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    if (v17 >= v16 >> 1)
    {
      v14 = sub_2685B3F48((v16 > 1), v17 + 1, 1, v14);
    }

    *(v14 + 2) = v17 + 1;
    v14[v17 + 32] = v50;
    *&v60 = v14;
    v11 = v15;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v60 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_2685B3F48(0, *(v14 + 2) + 1, 1, v14);
    *&v60 = v14;
  }

  v20 = *(v14 + 2);
  v19 = *(v14 + 3);
  v21 = v19 >> 1;
  v22 = v20 + 1;
  if (v19 >> 1 <= v20)
  {
    v14 = sub_2685B3F48((v19 > 1), v20 + 1, 1, v14);
    v19 = *(v14 + 3);
    v21 = v19 >> 1;
  }

  *(v14 + 2) = v22;
  v14[v20 + 32] = 123;
  WORD4(v60) = 256;
  *&v60 = v14;
  v23 = v20 + 2;
  if (v21 < v23)
  {
    v14 = sub_2685B3F48((v19 > 1), v23, 1, v14);
  }

  *(v14 + 2) = v23;
  v14[v22 + 32] = 34;
  *&v60 = v14;
  sub_2686689EC(0x6570797440, 0xE500000000000000);
  sub_2685B403C(":", 2, v24);
  WORD4(v60) = 44;
  sub_268631D18(a2, a3);
  sub_2685B1724(a1, &v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D8F8, &qword_2686921D0);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(v55, v57);
    v25 = v58;
    v26 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    LOBYTE(v55[0]) = v12;
    BYTE1(v55[0]) = v13;
    v27 = v64;
    v28 = (*(v26 + 8))(v55, v25, v26);
    if (v27)
    {
      v51 = v60;
      v52 = v61;
      v53 = v62;
      v54 = v63;
      sub_268647CF4(&v51);
      __swift_destroy_boxed_opaque_existential_1(v57);
      return v11;
    }

    v34 = v29;
    v35 = v28;
    v36 = v60;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_2685B3F48(0, *(v36 + 2) + 1, 1, v36);
    }

    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    v39 = v37 >> 1;
    v40 = v38 + 1;
    if (v37 >> 1 <= v38)
    {
      v36 = sub_2685B3F48((v37 > 1), v38 + 1, 1, v36);
      v37 = *(v36 + 3);
      v39 = v37 >> 1;
    }

    *(v36 + 2) = v40;
    v36[v38 + 32] = 44;
    *&v60 = v36;
    v41 = v38 + 2;
    if (v39 < v41)
    {
      v36 = sub_2685B3F48((v37 > 1), v41, 1, v36);
    }

    *(v36 + 2) = v41;
    v36[v40 + 32] = 34;
    *&v60 = v36;
    sub_2686689EC(0x65756C6176, 0xE500000000000000);
    sub_2685B403C(":", 2, v42);
    WORD4(v60) = 44;
    sub_2686689EC(v35, v34);
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  else
  {
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    sub_2686633D0(v55);
    v30 = a1[3];
    v31 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v30);
    v32 = v64;
    (*(v31 + 72))(&v60, &type metadata for JSONEncodingVisitor, &off_28792D200, v30, v31);
    if (v32)
    {
LABEL_18:
      v51 = v60;
      v52 = v61;
      v53 = v62;
      v54 = v63;
      sub_268647CF4(&v51);
      return v11;
    }
  }

  v43 = v60;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  *&v60 = v43;
  if ((v44 & 1) == 0)
  {
    v43 = sub_2685B3F48(0, *(v43 + 2) + 1, 1, v43);
    *&v60 = v43;
  }

  v46 = *(v43 + 2);
  v45 = *(v43 + 3);
  if (v46 >= v45 >> 1)
  {
    v43 = sub_2685B3F48((v45 > 1), v46 + 1, 1, v43);
  }

  *(v43 + 2) = v46 + 1;
  v43[v46 + 32] = 125;
  *&v60 = v43;
  WORD4(v60) = 44;
  *&v51 = v43;

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v11 = sub_268689974();
  v48 = v47;

  if (v48)
  {
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_26866C948(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = sub_26866677C(&unk_287927AB8);
  v8 = v2;
  sub_268689854();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D9D0, &unk_2686929C0);
  v6 = sub_26866E1CC(&qword_28028D9D8, &qword_28028D9D0, &unk_2686929C0, MEMORY[0x277CC9EF0]);
  LOBYTE(v4[0]) = 125;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_268689814();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v7;
}

uint64_t sub_26866CA90@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *a3;
  v13 = *(a3 + 8);
  if (swift_conformsToProtocol2() && a4)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_26866DD68(a1, a2, v12, v13, &v24);
    if (!v6)
    {
      v20 = v24;
      v19 = v25;
      v22 = v12;
      v23 = v13;
      a6[3] = a4;
      a6[4] = a5;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);

      Message.init(jsonString:options:)(v20, v19, &v22, a4, a5, boxed_opaque_existential_1);
    }
  }

  else
  {
    v14 = sub_26866C948(a1, a2);
    v16 = v15;
    v24 = v12;
    LOBYTE(v25) = v13;
    a6[3] = a4;
    a6[4] = a5;
    v17 = __swift_allocate_boxed_opaque_existential_1(a6);
    result = Message.init(jsonUTF8Data:options:)(v14, v16, &v24, a4, a5, v17);
    if (v6)
    {
      return __swift_deallocate_boxed_opaque_existential_1(a6);
    }
  }

  return result;
}

void sub_26866CC00(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)())
{
  if (a1)
  {
    v7 = a2 - a1;
    if (a2 - a1 >= 1)
    {
      type metadata accessor for DoubleParser();
      v10 = swift_allocObject();
      v11 = swift_slowAlloc();
      *(v10 + 16) = v11;
      *(v10 + 24) = v11 + 128;
      v37 = v7;
      sub_2685BC49C(v11);
      if (v5)
      {
LABEL_40:

        return;
      }

      if (v12 == 0x65756C6176 && v13 == 0xE500000000000000)
      {
      }

      else
      {
        v14 = sub_268689E14();

        if ((v14 & 1) == 0)
        {
LABEL_38:
          sub_26866E178();
          swift_allocError();
          *v35 = 1;
          goto LABEL_39;
        }
      }

      if (!v7)
      {
        goto LABEL_15;
      }

      v15 = a2 - a1;
      v16 = -1;
      v17 = a1;
      while (1)
      {
        v19 = *v17++;
        v18 = v19;
        v20 = (1 << v19) & 0x100002600;
        if (v19 > 0x20 || v20 == 0)
        {
          break;
        }

        --v16;
        if (!--v15)
        {
          goto LABEL_15;
        }
      }

      if (v15)
      {
        if (v18 == 58)
        {
          v23 = -v16;
          v38 = v23;
          if (v15 != 1)
          {
            while (1)
            {
              v24 = a1[v23];
              v25 = v24 > 0x20;
              v26 = (1 << v24) & 0x100002600;
              if (v25 || v26 == 0)
              {
                break;
              }

              if (v7 == ++v23)
              {
                v23 = v7;
                goto LABEL_27;
              }
            }

            v7 = v23;
LABEL_27:
            v38 = v23;
          }

          sub_2685BE2E4();
          v29 = v38;
          if (__OFSUB__(v38, v7))
          {
            __break(1u);
            __break(1u);
            return;
          }

          v30 = sub_2685B4E1C(&a1[v7], v38 - v7);
          if (!v31)
          {
            sub_2685BD910();
            swift_allocError();
            *v36 = xmmword_268692810;
            goto LABEL_39;
          }

          *a5 = v30;
          a5[1] = v31;

          if (v38 != v37)
          {
            while (1)
            {
              v32 = a1[v29];
              v25 = v32 > 0x20;
              v33 = (1 << v32) & 0x100002600;
              if (v25 || v33 == 0)
              {
                break;
              }

              if (v37 == ++v29)
              {
                v29 = v37;
                break;
              }
            }
          }

          if (v29 == v37)
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }

        sub_2685BD910();
        swift_allocError();
        *v28 = 0;
        v28[1] = 0;
      }

      else
      {
LABEL_15:
        sub_2685BD910();
        swift_allocError();
        *v22 = xmmword_26868A580;
      }

LABEL_39:
      swift_willThrow();
      goto LABEL_40;
    }
  }
}

uint64_t sub_26866CF00()
{
  swift_beginAccess();
  sub_268643E8C(v0 + 32, &v29);
  if (!v32)
  {
    return v29;
  }

  if (v32 == 1)
  {
    sub_2685B17CC(&v29, aBlock);
    v1 = v24;
    v2 = v25;
    __swift_project_boxed_opaque_existential_1(aBlock, v24);
    v18 = Message.serializedData(partial:)(1, v1, v2);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    return v18;
  }

  else
  {
    v3 = v29;
    v4 = v30;
    v5 = v31;
    swift_beginAccess();
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);

    v8 = sub_268652BF8(v7, v6);
    v10 = v9;

    v27 = 0;
    v28 = 0;
    if (qword_28028BE40 != -1)
    {
      swift_once();
    }

    v11 = qword_28028D890;
    v12 = swift_allocObject();
    v12[2] = &v27;
    v12[3] = v8;
    v12[4] = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_268653E5C;
    *(v13 + 24) = v12;
    v25 = sub_26866E228;
    v26 = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2686535FC;
    v24 = &block_descriptor_69;
    v14 = _Block_copy(aBlock);
    v15 = v11;

    dispatch_sync(v15, v14);

    _Block_release(v14);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      __break(1u);
    }

    else
    {
      v16 = v27;
      v17 = v28;

      if (v16)
      {
        v27 = v4;
        LOBYTE(v28) = v5;
        sub_26866CA90(v3, *(&v3 + 1), &v27, v16, v17, aBlock);
        v20 = v24;
        v21 = v25;
        __swift_project_boxed_opaque_existential_1(aBlock, v24);
        v22 = Message.serializedData(partial:)(1, v20, v21);
        sub_2685B593C(v3, *(&v3 + 1));
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        return v22;
      }

      else
      {
        sub_2685B593C(v3, *(&v3 + 1));
        return 0;
      }
    }
  }

  return result;
}

double sub_26866D25C(uint64_t a1)
{
  type metadata accessor for AnyMessageStorage();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  result = 0.0;
  *(v1 + 32) = xmmword_26868A5E0;
  *(v1 + 72) = 0;
  qword_28029B270 = v1;
  return result;
}

uint64_t sub_26866D2A0(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = xmmword_26868A5E0;
  *(v1 + 72) = 0;
  swift_beginAccess();
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  swift_beginAccess();
  sub_268643E8C(a1 + 32, v6);

  swift_beginAccess();
  sub_268643EE8(v6, v1 + 32);
  swift_endAccess();
  return v1;
}

uint64_t sub_26866D38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {

    v9 = sub_268652BF8(v6, v7);
    v11 = v10;

    if (v9 == (*(a3 + 24))(a2, a3) && v11 == v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_268689E14();
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_26866D488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a2;
  v45 = a1;
  v9 = sub_268689C74();
  v43 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v46 = *(a4 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v42 - v17;
  v19 = *a3;
  v20 = *(a3 + 8);
  v47 = a5;
  if (sub_26866D38C(v16, a4, a5))
  {
    swift_beginAccess();
    sub_268643E8C(v5 + 32, &v55);
    if (v58)
    {
      if (v58 == 1)
      {
        sub_2685B17CC(&v55, v52);
        sub_2685B1724(v52, &v50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
        v21 = swift_dynamicCast();
        v22 = v46;
        v23 = *(v46 + 56);
        v24 = v59;
        if (v21)
        {
          v23(v12, 0, 1, a4);
          v25 = v45;
          (*(v22 + 8))(v45, a4);
          (*(v22 + 32))(v25, v12, a4);
        }

        else
        {
          v23(v12, 1, 1, a4);
          (*(v43 + 8))(v12, v9);
          v34 = v53;
          v35 = v54;
          __swift_project_boxed_opaque_existential_1(v52, v53);
          v36 = Message.serializedData(partial:)(1, v34, v35);
          if (!v24)
          {
            v38 = v37;
            v39 = v36;
            sub_2685B2978(v44, &v50);
            v48 = 100;
            v49 = 0;
            Message.init(serializedData:extensions:partial:options:)(v39, v38, &v50, 1, &v48, a4, v47, v15);
            v40 = v46;
            v41 = v45;
            (*(v46 + 8))(v45, a4);
            (*(v40 + 32))(v41, v15, a4);
          }
        }

        return __swift_destroy_boxed_opaque_existential_1(v52);
      }

      else
      {
        v32 = v55;
        v50 = v56;
        v51 = v57;
        v33 = v59;
        sub_26866CA90(v55, *(&v55 + 1), &v50, a4, v47, v52);
        if (v33)
        {
          return sub_2685B593C(v32, *(&v32 + 1));
        }

        else
        {
          (*(v46 + 8))(v45, a4);
          sub_2685B593C(v32, *(&v32 + 1));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
          return swift_dynamicCast();
        }
      }
    }

    else
    {
      v28 = v55;
      sub_2685B2978(v44, v52);
      v50 = v19;
      v51 = v20;
      v29 = v59;
      result = Message.init(serializedData:extensions:partial:options:)(v28, *(&v28 + 1), v52, 1, &v50, a4, v47, v18);
      if (!v29)
      {
        v30 = v46;
        v31 = v45;
        (*(v46 + 8))(v45, a4);
        return (*(v30 + 32))(v31, v18, a4);
      }
    }
  }

  else
  {
    sub_26866E178();
    swift_allocError();
    *v26 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26866D99C()
{
  swift_beginAccess();
  sub_268643E8C(v0 + 32, v17);
  v1 = v17[40];
  result = sub_26866DD20(v17);
  if (v1 >= 2)
  {
    swift_beginAccess();
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);

    v5 = sub_268652BF8(v4, v3);
    v7 = v6;

    v16[0] = 0;
    v16[1] = 0;
    if (qword_28028BE40 != -1)
    {
      swift_once();
    }

    v8 = qword_28028D890;
    v9 = swift_allocObject();
    v9[2] = v16;
    v9[3] = v5;
    v9[4] = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_268653A5C;
    *(v10 + 24) = v9;
    v15[4] = sub_268655254;
    v15[5] = v10;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_2686535FC;
    v15[3] = &block_descriptor_1;
    v11 = _Block_copy(v15);
    v12 = v8;

    dispatch_sync(v12, v11);

    _Block_release(v11);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }

    else
    {
      v13 = v16[0];

      if (!v13)
      {
        sub_26861C728();
        swift_allocError();
        *v14 = 0;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_26866DBDC()
{

  sub_26866DD20(v0 + 32);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26866DC60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26866DC9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_26866DCE8(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_26866DD68(uint64_t a1, unint64_t a2, uint64_t a3, char a4, void (**a5)())
{
  v25[2] = *MEMORY[0x277D85DE8];
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v25[0] = a1;
      LOWORD(v25[1]) = a2;
      BYTE2(v25[1]) = BYTE2(a2);
      BYTE3(v25[1]) = BYTE3(a2);
      BYTE4(v25[1]) = BYTE4(a2);
      BYTE5(v25[1]) = BYTE5(a2);
      v7 = v25 + BYTE6(a2);
      v8 = v25;
LABEL_24:
      v24 = a4 & 1;
      goto LABEL_25;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v9 = a3;
      v10 = a5;
      v13 = sub_268689764();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_268689794();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_268689784();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v6 != 2)
  {
    memset(v25, 0, 14);
    v8 = v25;
    v7 = v25;
    goto LABEL_24;
  }

  v9 = a3;
  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_268689764();
  if (v13)
  {
    v14 = sub_268689794();
    if (__OFSUB__(v12, v14))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v17 = sub_268689784();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = (v18 + v13);
  if (v13)
  {
    v7 = v23;
  }

  else
  {
    v7 = 0;
  }

  v24 = a4 & 1;
  v8 = v13;
  a3 = v9;
  a5 = v10;
LABEL_25:
  sub_26866CC00(v8, v7, a3, v24, a5);
}

uint64_t sub_26866DF6C(char **a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13);
  v14 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v14 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
  }

  else
  {
    a3 = sub_268653A68(v13, 0xD000000000000013, 0x80000002686958C0, a5, a6);
    a4 = v15;
  }

  sub_26863B360(v13, a3, a4, a1, a5, a6);

  return (*(v11 + 8))(v13, a5);
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x26D61DE30);
  }

  return result;
}

unint64_t sub_26866E178()
{
  result = qword_28028D9C8;
  if (!qword_28028D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D9C8);
  }

  return result;
}

uint64_t sub_26866E1CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26866E240@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (qword_28028BBD0 != -1)
  {
    v13 = result;
    v14 = a2;
    swift_once();
    a2 = v14;
    result = v13;
  }

  v4 = off_28028C0C8;
  v5 = 0uLL;
  if (*(off_28028C0C8 + 2))
  {
    if (a2)
    {
      result = result != 0;
    }

    result = sub_2685B351C(result);
    if (v6)
    {
      v7 = v4[7] + 80 * result;
      v15 = *(v7 + 40);
      v8 = *(v7 + 56);
      v9 = *(v7 + 64);
      if (*(v7 + 73))
      {
        v10 = 256;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(v7 + 72);
      v12 = v10 | v11;
      result = sub_2685C255C(*(v7 + 56), *(v7 + 64), v11, *(v7 + 73));
      v5 = v15;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v12 = -256;
      v5 = 0uLL;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v12 = -256;
  }

  *a3 = v5;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v12;
  return result;
}

uint64_t sub_26866E350@<X0>(uint64_t result@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a5@<X8>)
{
  if (*a2 != -1)
  {
    v15 = result;
    v16 = a3;
    swift_once();
    a3 = v16;
    result = v15;
  }

  v6 = *a3;
  v7 = 0uLL;
  if (*(*a3 + 16))
  {
    result = sub_2685B351C(result);
    if (v8)
    {
      v9 = *(v6 + 56) + 80 * result;
      v17 = *(v9 + 40);
      v10 = *(v9 + 56);
      v11 = *(v9 + 64);
      if (*(v9 + 73))
      {
        v12 = 256;
      }

      else
      {
        v12 = 0;
      }

      v13 = *(v9 + 72);
      v14 = v12 | v13;
      result = sub_2685C255C(*(v9 + 56), *(v9 + 64), v13, *(v9 + 73));
      v7 = v17;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v14 = -256;
      v7 = 0uLL;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v14 = -256;
  }

  *a5 = v7;
  *(a5 + 16) = v10;
  *(a5 + 24) = v11;
  *(a5 + 32) = v14;
  return result;
}

uint64_t sub_26866E434@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (qword_28028BE60 != -1)
  {
    v13 = result;
    v14 = a2;
    swift_once();
    a2 = v14;
    result = v13;
  }

  v4 = off_28028D9F0;
  v5 = 0uLL;
  if (*(off_28028D9F0 + 2))
  {
    if (a2)
    {
      result = 0;
    }

    result = sub_2685B351C(result);
    if (v6)
    {
      v7 = v4[7] + 80 * result;
      v15 = *(v7 + 40);
      v8 = *(v7 + 56);
      v9 = *(v7 + 64);
      if (*(v7 + 73))
      {
        v10 = 256;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(v7 + 72);
      v12 = v10 | v11;
      result = sub_2685C255C(*(v7 + 56), *(v7 + 64), v11, *(v7 + 73));
      v5 = v15;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v12 = -256;
      v5 = 0uLL;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v12 = -256;
  }

  *a3 = v5;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v12;
  return result;
}

ValueMetadata *sub_26866E53C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC78, &qword_2686932F0);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_Type, sub_2685CF23C, sub_2685C8FBC);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_26866E638()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC70, &qword_2686932E8);
  v4 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v0 = sub_268678690(1);
  v2 = v1;

  MEMORY[0x26D61D4B0](v0, v2);

  return v4;
}

ValueMetadata *sub_26866E714(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC68, &qword_2686932E0);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_Enum, sub_2685CF58C, sub_2685CB9F8);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_26866E810()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC60, &qword_2686932D8);
  v4 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v0 = sub_268678AA8(1);
  v2 = v1;

  MEMORY[0x26D61D4B0](v0, v2);

  return v4;
}

ValueMetadata *sub_26866E8DC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC58, &qword_2686932D0);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_Option, sub_2685CEBE8, sub_2685CD6D4);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_26866E9D8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC50, &qword_2686932C8);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_Api, sub_2685D7094, sub_2685D3F44);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_26866EAD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC48, &qword_2686932C0);
  v4 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v0 = sub_268678C6C(1);
  v2 = v1;

  MEMORY[0x26D61D4B0](v0, v2);

  return v4;
}

ValueMetadata *sub_26866EBB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC40, &qword_2686932B8);
  v4 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v0 = sub_268678E38(1);
  v2 = v1;

  MEMORY[0x26D61D4B0](v0, v2);

  return v4;
}

ValueMetadata *sub_26866ECAC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC30, &qword_2686932A8);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_FileDescriptorProto, sub_268614848, sub_2685F2AE4);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_26866EDA8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC28, &qword_2686932A0);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_DescriptorProto, sub_268615B10, sub_2685F5AD0);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_26866EED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v15 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v11 = a7(1, a1, a2, a3);
  v13 = v12;

  MEMORY[0x26D61D4B0](v11, v13);

  return v15;
}

ValueMetadata *sub_26866EF9C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC18, &qword_268693290);
  v12 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v8 = sub_2686795A0(1, a1, a2, a3 | ((HIDWORD(a3) & 1) << 32), a4 | ((BYTE4(a4) & 1) << 32), &type metadata for Google_Protobuf_DescriptorProto.ReservedRange, sub_268615E60, &unk_287930B68, sub_268619350);
  v10 = v9;

  MEMORY[0x26D61D4B0](v8, v10);

  return v12;
}

ValueMetadata *sub_26866F0CC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC10, &qword_268693288);
  v12 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v8 = sub_268679EC0(1, a1, a2, a3, a4, &type metadata for Google_Protobuf_ExtensionRangeOptions, sub_26861489C, &unk_287930B40);
  v10 = v9;

  MEMORY[0x26D61D4B0](v8, v10);

  return v12;
}

ValueMetadata *sub_26866F1CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC08, &qword_268693280);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_FieldDescriptorProto, sub_26861615C, sub_2685F8EA0);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_26866F2C8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC00, &qword_268693278);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867C970(1, a1, a2, a3, &type metadata for Google_Protobuf_OneofDescriptorProto, sub_268616304, sub_2685FADD0);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_26866F3C4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DBF8, &qword_268693270);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_EnumDescriptorProto, sub_2686164AC, sub_2685FC358);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_26866F4C0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DBF0, &qword_268693268);
  v12 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v8 = sub_2686795A0(1, a1, a2, a3 | ((HIDWORD(a3) & 1) << 32), a4 | ((BYTE4(a4) & 1) << 32), &type metadata for Google_Protobuf_EnumDescriptorProto.EnumReservedRange, sub_268616654, &unk_287930B18, sub_268619350);
  v10 = v9;

  MEMORY[0x26D61D4B0](v8, v10);

  return v12;
}

ValueMetadata *sub_26866F5F0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DBE8, &qword_268693260);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_EnumValueDescriptorProto, sub_2686167FC, sub_2685FE0EC);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_26866F6EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DBE0, &qword_268693258);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_ServiceDescriptorProto, sub_2686169A4, sub_2685FF3C4);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_26866F7E8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DBD8, &qword_268693250);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_MethodDescriptorProto, sub_268616B4C, sub_268600918);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_26866F914()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DBC8, &qword_268693240);
  v4 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v0 = sub_268679A2C(1);
  v2 = v1;

  MEMORY[0x26D61D4B0](v0, v2);

  return v4;
}

ValueMetadata *sub_26866F9E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DBC0, &qword_268693238);
  v4 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v0 = sub_268679CFC(1);
  v2 = v1;

  MEMORY[0x26D61D4B0](v0, v2);

  return v4;
}

ValueMetadata *sub_26866FAAC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DBB8, &qword_268693230);
  v12 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v8 = sub_268679EC0(1, a1, a2, a3, a4, &type metadata for Google_Protobuf_OneofOptions, sub_268614A94, &unk_287930A78);
  v10 = v9;

  MEMORY[0x26D61D4B0](v8, v10);

  return v12;
}

uint64_t sub_26866FC3C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v5 = a4(1);
  v7 = v6;

  MEMORY[0x26D61D4B0](v5, v7);

  return v9;
}

uint64_t sub_26866FD30(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v5 = a4(1);
  v7 = v6;

  MEMORY[0x26D61D4B0](v5, v7);

  return v9;
}

ValueMetadata *sub_26866FDF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB90, &qword_268693208);
  v4 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v0 = sub_26867AA68(1);
  v2 = v1;

  MEMORY[0x26D61D4B0](v0, v2);

  return v4;
}

ValueMetadata *sub_26866FED8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB88, &qword_268693200);
  v4 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v0 = sub_26867AC3C(1);
  v2 = v1;

  MEMORY[0x26D61D4B0](v0, v2);

  return v4;
}

ValueMetadata *sub_26866FFA4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB80, &qword_2686931F8);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867AFC4(1, a1, a2, a3, &type metadata for Google_Protobuf_SourceCodeInfo, sub_268617A3C, sub_268676250);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_2686700A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB78, &qword_2686931F0);
  v4 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v0 = sub_26867AE00(1);
  v2 = v1;

  MEMORY[0x26D61D4B0](v0, v2);

  return v4;
}

ValueMetadata *sub_268670174(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB70, &qword_2686931E8);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867AFC4(1, a1, a2, a3, &type metadata for Google_Protobuf_GeneratedCodeInfo, sub_268617D38, sub_268677D78);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_268670270()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB68, &qword_2686931E0);
  v4 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v0 = sub_26867B20C(1);
  v2 = v1;

  MEMORY[0x26D61D4B0](v0, v2);

  return v4;
}

ValueMetadata *sub_268670344(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB10, &qword_268693188);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867B3D8(1, v5, a2, a3);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_268670444(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB58, &qword_2686931D0);
  v12 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v8 = sub_26867CD0C(1, a1, a2, a3, a4, &type metadata for Google_Protobuf_Timestamp, sub_26862C9FC, &unk_2879308E8, sub_26862C34C);
  v10 = v9;

  MEMORY[0x26D61D4B0](v8, v10);

  return v12;
}

uint64_t sub_268670588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v17 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v13 = a8(1, a1, a2, a3, a4);
  v15 = v14;

  MEMORY[0x26D61D4B0](v13, v15);

  return v17;
}

ValueMetadata *sub_268670660(uint64_t a1, unint64_t a2, float a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB38, &qword_2686931B0);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867BCC0(1, a1, a2, a3);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_268670730(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB20, &qword_268693198);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867C048(1, a1, a2, a3, &type metadata for Google_Protobuf_Int32Value, sub_2686516E4, sub_26864EF94);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_26867082C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB30, &qword_2686931A8);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867C218(1, a1, a2, a3, &type metadata for Google_Protobuf_Int64Value, sub_268651394, sub_26864E3A4);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_268670928(uint64_t a1, unint64_t a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB40, &qword_2686931B8);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867BE84(1, a1, a2, a3);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_2686709F8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB08, &qword_268693180);
  v12 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v8 = sub_26867C3E8(1, a1, a2, a3, a4, &type metadata for Google_Protobuf_StringValue, sub_268651BDC, &unk_2879308C0);
  v10 = v9;

  MEMORY[0x26D61D4B0](v8, v10);

  return v12;
}

ValueMetadata *sub_268670AF8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB18, &qword_268693190);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867C048(1, a1, a2, a3, &type metadata for Google_Protobuf_UInt32Value, sub_26865188C, sub_26864F44C);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_268670BF4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB28, &qword_2686931A0);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867C218(1, a1, a2, a3, &type metadata for Google_Protobuf_UInt64Value, sub_26865153C, sub_26864E818);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_268670CF0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB60, &qword_2686931D8);
  v12 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v8 = sub_26867C3E8(1, a1, a2, a3, a4, &type metadata for Google_Protobuf_SourceContext, sub_2685CFDF4, &unk_287930910);
  v10 = v9;

  MEMORY[0x26D61D4B0](v8, v10);

  return v12;
}

ValueMetadata *sub_268670E20(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB50, &qword_2686931C8);
  v8 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v4 = sub_26867C770(1, a1, a2);
  v6 = v5;

  MEMORY[0x26D61D4B0](v4, v6);

  return v8;
}

ValueMetadata *sub_268670EE0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DAE0, &qword_268693158);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867C970(1, a1, a2, a3, &type metadata for Google_Protobuf_Value, sub_268653CEC, sub_26867FF28);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

ValueMetadata *sub_268670FDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DAF0, &qword_268693168);
  v12 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v8 = sub_26867CD0C(1, a1, a2, a3, a4, &type metadata for Google_Protobuf_Duration, sub_268653BF0, &unk_287930870, sub_26862C34C);
  v10 = v9;

  MEMORY[0x26D61D4B0](v8, v10);

  return v12;
}

uint64_t Google_Protobuf_Value.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_26868A5E0;
  type metadata accessor for Google_Protobuf_Value._StorageClass();
  result = swift_initStaticObject();
  *(a1 + 16) = result;
  return result;
}

double Google_Protobuf_ListValue.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

double Google_Protobuf_Struct.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_2686892D4(MEMORY[0x277D84F90]);
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

char *sub_2686711B0(uint64_t a1, char a2)
{
  v4 = a1;
  sub_26866E240(a1, a2 & 1, v16);
  if (v17 != 255)
  {
    sub_2685B403C(v16[0], v16[1], v17);
    return sub_2685B2E64(v16, &qword_28028D3B8, &qword_268692270);
  }

  if (a2)
  {
    v4 = v4 != 0;
  }

  else if (v4 < 0)
  {
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2685B3F48(0, *(v7 + 2) + 1, 1, v7);
      *v2 = v7;
    }

    v9 = *(v7 + 2);
    v10 = *(v7 + 3);
    v11 = v9 + 1;
    if (v9 >= v10 >> 1)
    {
      v15 = v9 + 1;
      v12 = v7;
      v13 = *(v7 + 2);
      v14 = sub_2685B3F48((v10 > 1), v9 + 1, 1, v12);
      v9 = v13;
      v11 = v15;
      v7 = v14;
    }

    *(v7 + 2) = v11;
    v7[v9 + 32] = 45;
    *v2 = v7;
    v6 = -v4;
    goto LABEL_7;
  }

  v6 = v4;
LABEL_7:

  return sub_268663B88(v6);
}

char *sub_268671334(unint64_t a1, char a2, void *a3, uint64_t *a4, uint64_t a5)
{
  sub_26866E350(a1, a3, a4, v19);
  if (v20 == 255)
  {
    if ((a2 & 1) != 0 || (a1 & 0x8000000000000000) == 0)
    {
      v13 = a1;
    }

    else
    {
      v8 = *v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v5 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
        *v5 = v8;
      }

      v10 = *(v8 + 2);
      v11 = *(v8 + 3);
      v12 = v10 + 1;
      if (v10 >= v11 >> 1)
      {
        v18 = v10 + 1;
        v15 = v8;
        v16 = *(v8 + 2);
        v17 = sub_2685B3F48((v11 > 1), v10 + 1, 1, v15);
        v10 = v16;
        v12 = v18;
        v8 = v17;
      }

      *(v8 + 2) = v12;
      v8[v10 + 32] = 45;
      *v5 = v8;
      v13 = -a1;
    }

    return sub_268663B88(v13);
  }

  else
  {
    sub_2685B403C(v19[0], v19[1], v20);
    return sub_2685B2E64(v19, &qword_28028D3B8, &qword_268692270);
  }
}

char *sub_268671518(unsigned __int8 a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    v12 = a3;
    swift_once();
    a3 = v12;
  }

  v5 = *a3;
  if (*(*a3 + 16) && (v6 = sub_2685B351C(a1 + 1), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 80 * v6;
    v9 = *(v8 + 40);
    v10 = *(v8 + 48);

    return sub_2685B403C(v9, v10, v8);
  }

  else
  {

    return sub_268663B88(a1 + 1);
  }
}

char *sub_2686715F4(unsigned __int8 a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    v12 = a3;
    swift_once();
    a3 = v12;
  }

  v5 = *a3;
  if (*(*a3 + 16) && (v6 = sub_2685B351C(a1), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 80 * v6;
    v9 = *(v8 + 40);
    v10 = *(v8 + 48);

    return sub_2685B403C(v9, v10, v8);
  }

  else
  {

    return sub_268663B88(a1);
  }
}

char *sub_2686716A8(uint64_t a1, char a2)
{
  v4 = a1;
  sub_26866E434(a1, a2 & 1, v16);
  if (v17 != 255)
  {
    sub_2685B403C(v16[0], v16[1], v17);
    return sub_2685B2E64(v16, &qword_28028D3B8, &qword_268692270);
  }

  if (a2)
  {
    v4 = 0;
  }

  else if (v4 < 0)
  {
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2685B3F48(0, *(v7 + 2) + 1, 1, v7);
      *v2 = v7;
    }

    v9 = *(v7 + 2);
    v10 = *(v7 + 3);
    v11 = v9 + 1;
    if (v9 >= v10 >> 1)
    {
      v15 = v9 + 1;
      v12 = v7;
      v13 = *(v7 + 2);
      v14 = sub_2685B3F48((v10 > 1), v9 + 1, 1, v12);
      v9 = v13;
      v11 = v15;
      v7 = v14;
    }

    *(v7 + 2) = v11;
    v7[v9 + 32] = 45;
    *v2 = v7;
    v6 = -v4;
    goto LABEL_7;
  }

  v6 = v4;
LABEL_7:

  return sub_268663B88(v6);
}

uint64_t sub_2686717E0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  sub_2685B301C(a5);
  sub_2686636FC(v11);
  v36[3] = &type metadata for Google_Protobuf_SourceContext;
  v36[4] = sub_2685CFDF4();
  v12 = swift_allocObject();
  v36[0] = v12;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v13 = *v5;
  v14 = v5[1];
  v26 = *(v5 + 64);
  sub_2685B1724(v36, &v28);

  v27 = a4;
  sub_2685BA80C(a3, a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v33, &v37);
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    swift_getDynamicType();
    (*(v39 + 8))(&v28);
    __swift_destroy_boxed_opaque_existential_1(&v37);
    v24 = v29;
    v25 = v28;
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v25 = 0u;
    sub_2685B2E64(&v33, &qword_28028D3C8, &unk_2686902F0);
    v24 = 0u;
  }

  sub_2685B1724(v36, &v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v16 = *(&v34 + 1);
    v15 = v35;
    __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
    (*(v15 + 16))(&v28, v16, v15);
    v17 = v28;
    __swift_destroy_boxed_opaque_existential_1(&v33);
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    sub_2685B2E64(&v33, &qword_28028D3F8, &unk_268690680);
    v17 = 0;
  }

  v18 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v36);
  sub_2685B2FBC(0, 0, 0, 0);

  *&v37 = v13;
  *(&v37 + 1) = v14;
  v38 = v25;
  v39 = v24;
  *&v40 = v18;
  *(&v40 + 1) = v17;
  v41 = v26;
  v19 = v42;
  sub_26867CF00(&v37, a1, a2, a3, v27);
  if (v19)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v20 = v37;

    *v6 = v20;
    sub_2685B4D0C(*(*(&v20 + 1) + 16) - 1);
    sub_2685B4D0C(*(v6[1] + 16) - 1);

    sub_2685B3560(v21);
    sub_2685B403C("}\n", 2, v22);
    v30 = v39;
    v31 = v40;
    v32 = v41;
    v28 = v37;
    v29 = v38;
    return sub_2685B4DEC(&v28);
  }

  return result;
}

uint64_t sub_268671B64(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  sub_2685B301C(a4);
  sub_2686636FC(v11);
  v36[3] = &type metadata for Google_Protobuf_Any;
  v36[0] = a1;
  v36[1] = a2;
  v36[4] = sub_2685CFD4C();
  v36[2] = a3;
  v12 = *v4;
  v13 = v4[1];
  v42 = *(v4 + 64);
  sub_2685B1724(v36, &v28);
  sub_2685BA80C(a1, a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v33, &v37);
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    swift_getDynamicType();
    (*(v39 + 8))(&v28);
    __swift_destroy_boxed_opaque_existential_1(&v37);
    v26 = v29;
    v27 = v28;
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v27 = 0u;
    sub_2685B2E64(&v33, &qword_28028D3C8, &unk_2686902F0);
    v26 = 0u;
  }

  sub_2685B1724(v36, &v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v14 = *(&v34 + 1);
    v15 = v35;
    __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
    v16 = *(v15 + 16);
    v17 = v15;
    v6 = v5;
    v16(&v28, v14, v17);
    v18 = v28;
    __swift_destroy_boxed_opaque_existential_1(&v33);
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    sub_2685B2E64(&v33, &qword_28028D3F8, &unk_268690680);
    v18 = 0;
  }

  v19 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v36);
  sub_2685B2FBC(0, 0, 0, 0);

  *&v37 = v12;
  *(&v37 + 1) = v13;
  v38 = v27;
  v39 = v26;
  *&v40 = v19;
  *(&v40 + 1) = v18;
  v20 = v42;
  v41 = v42;
  sub_26866A568(&v37);
  v21 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v21 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_17;
    }
  }

  else if (v21)
  {
    if (a1 == a1 >> 32)
    {
LABEL_17:
      v22 = v37;

      *v7 = v22;
      sub_2685B4D0C(*(*(&v22 + 1) + 16) - 1);
      sub_2685B4D0C(*(v7[1] + 16) - 1);

      sub_2685B3560(v23);
      sub_2685B403C("}\n", 2, v24);
      v30 = v39;
      v31 = v40;
      v32 = v41;
      v28 = v37;
      v29 = v38;
      return sub_2685B4DEC(&v28);
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_17;
  }

  if ((v20 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_26863B108(a1, a2, &v37);
  if (!v6)
  {
    goto LABEL_17;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}