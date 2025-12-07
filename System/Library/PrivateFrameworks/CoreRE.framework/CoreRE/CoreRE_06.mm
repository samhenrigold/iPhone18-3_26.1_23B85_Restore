__n128 re::RigGraphDefinitionBuilder::getParameterCount@<Q0>(uint64_t *__return_ptr a1@<X8>, re::RigGraphDefinitionBuilder *this@<X0>, _anonymous_namespace_ *a3@<X1>)
{
  v5 = *(this + 1);
  if (v5)
  {
  }

  else
  {
    re::DynamicString::format(&v9, "Undefined rig environment!", a3);
    result = v9;
    v7 = v10;
    v8 = v11;
    *a1 = 0;
    a1[1] = 5001;
    a1[2] = &re::AnimationErrorCategory(void)::instance;
    *(a1 + 3) = result;
    a1[5] = v7;
    a1[6] = v8;
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RigGraphNodeDescription>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::RigGraphNodeDescription>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = (*(v3 + 4) + 32 * v4);
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v7 = a2[2];
  v5[2] = v5[2] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[2] = a2[2] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[3] = a2[3];
  a2[2] = 0;
  a2[3] = &str_67;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

void *re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return (*(a1 + 16) + 32 * HIDWORD(v11) + 24);
  }

  v7 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  v7[1] = v7[1] & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  v7[1] = *a2 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v7[2] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v7[3] = *a3;
  result = v7 + 3;
  ++*(a1 + 40);
  return result;
}

__n128 re::RigGraphDefinitionBuilder::getNodeType(re::RigGraphDefinitionBuilder *this, const char *a2, const char *a3)
{
  if (a2)
  {
    v4 = *(a2 + 14);
    v5 = *(a2 + 16);
  }

  else
  {
    re::DynamicString::format(&v9, "Undefined rig definition!", 0);
    result = v9;
    v7 = v10;
    v8 = v11;
    *this = 0;
    *(this + 1) = 3000;
    *(this + 2) = &re::AnimationErrorCategory(void)::instance;
    *(this + 24) = result;
    *(this + 5) = v7;
    *(this + 6) = v8;
  }

  return result;
}

uint64_t *re::RigGraphDefinitionBuilder::getParameterType(re::RigGraphDefinitionBuilder *this, const char *a2, char *a3, const char *a4, int a5)
{
  v64 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 1);
  if (a3)
  {
    v11 = *a3;
    if (*a3)
    {
      v12 = a3[1];
      if (v12)
      {
        v13 = a3 + 2;
        do
        {
          v11 = 31 * v11 + v12;
          v14 = *v13++;
          v12 = v14;
        }

        while (v14);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  __s2[0] = (2 * v11);
  __s2[1] = a3;
  v15 = re::RigEnvironment::lookupRigGraphNode(v10, __s2);
  v17 = v15;
  if (__s2[0])
  {
    if (__s2[0])
    {
    }
  }

  if (v17)
  {
    v18 = 40;
    if (a5)
    {
      v18 = 0;
    }

    v19 = v17 + v18;
    if (*(v17 + v18 + 16))
    {
      v20 = 0;
      v21 = 0;
      while (1)
      {
        v22 = *(v19 + 4);
        __s2[0] = 0;
        __s2[1] = &str_67;
        v23 = __s2[0];
        if ((__s2[0] ^ *(v22 + v20)) > 1uLL)
        {
          v24 = 0;
          if ((__s2[0] & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v15 = *(v22 + v20 + 8);
          v16 = __s2[1];
          if (v15 == __s2[1])
          {
            v24 = 1;
            if ((__s2[0] & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v15 = strcmp(v15, __s2[1]);
            v24 = v15 == 0;
            if ((v23 & 1) == 0)
            {
              goto LABEL_25;
            }
          }
        }

        if (__s2[0])
        {
        }

LABEL_25:
        if (v24)
        {
          v30 = re::RigGraphNode::inputType(v17, v21);
          goto LABEL_60;
        }

        ++v21;
        v20 += 40;
        if (v21 >= *(v19 + 2))
        {
          goto LABEL_55;
        }
      }
    }

    goto LABEL_55;
  }

  v25 = *(a2 + 1);
  if (a3)
  {
    v26 = *a3;
    if (*a3)
    {
      v27 = a3[1];
      if (v27)
      {
        v28 = a3 + 2;
        do
        {
          v26 = 31 * v26 + v27;
          v29 = *v28++;
          v27 = v29;
        }

        while (v29);
      }
    }
  }

  else
  {
    v26 = 0;
  }

  __s2[0] = (2 * v26);
  __s2[1] = a3;
  v31 = re::RigEnvironment::lookupRigGraphOperator(v25, __s2);
  v32 = v31;
  if (__s2[0])
  {
    if (__s2[0])
    {
    }
  }

  if (!v32)
  {
    result = re::DynamicString::format(__s2, "Node type '%s' not found!", v16, a3);
    v41 = *__s2;
    v43 = *(&v60 + 1);
    v42 = v60;
    *this = 0;
    v44 = 5004;
    goto LABEL_56;
  }

  v33 = 40;
  if (a5)
  {
    v33 = 16;
  }

  v34 = v32 + v33;
  if (!*(v34 + 8))
  {
LABEL_55:
    result = re::DynamicString::format(__s2, "Parameter name '%s' not found!", v16, a4);
    v41 = *__s2;
    v43 = *(&v60 + 1);
    v42 = v60;
    *this = 0;
    v44 = 5006;
LABEL_56:
    *(this + 1) = v44;
    *(this + 2) = &re::AnimationErrorCategory(void)::instance;
    *(this + 24) = v41;
    *(this + 5) = v42;
    *(this + 6) = v43;
    return result;
  }

  v35 = 0;
  v36 = 0;
  while (1)
  {
    v37 = *(v34 + 16);
    __s2[0] = 0;
    __s2[1] = &str_67;
    v38 = __s2[0];
    if ((__s2[0] ^ *(v37 + v35)) > 1uLL)
    {
      v39 = 0;
      if ((__s2[0] & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v31 = *(v37 + v35 + 8);
      v16 = __s2[1];
      if (v31 == __s2[1])
      {
        v39 = 1;
        if ((__s2[0] & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v31 = strcmp(v31, __s2[1]);
        v39 = v31 == 0;
        if ((v38 & 1) == 0)
        {
          goto LABEL_53;
        }
      }
    }

    if (__s2[0])
    {
    }

LABEL_53:
    if (v39)
    {
      break;
    }

    ++v36;
    v35 += 32;
    if (v36 >= *(v34 + 8))
    {
      goto LABEL_55;
    }
  }

  v45 = *(v34 + 8);
  if (v45 <= v36)
  {
    v50 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    *__s2 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v51 = 136315906;
    v52 = "operator[]";
    v53 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v48 = 3;
    }

    else
    {
      v48 = 2;
    }

    v54 = 476;
    v55 = 2048;
    v56 = v36;
    v57 = 2048;
    v58 = v45;
    _os_log_send_and_compose_impl(v48, &v50, __s2, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v51, 38, v49);
    _os_crash_msg();
    __break(1u);
  }

  v30 = (*(v34 + 16) + v35 + 16);
LABEL_60:
  result = re::StringID::StringID(__s2, v30);
  *this = 1;
  v46 = __s2[1];
  *(this + 1) = __s2[0];
  *(this + 2) = v46;
  return result;
}

_BYTE *re::Result<re::StringID,re::DetailedError>::~Result(_BYTE *a1)
{
  if (*a1 == 1)
  {
    re::StringID::destroyString((a1 + 8));
  }

  else
  {
    re::DynamicString::deinit((a1 + 24));
  }

  return a1;
}

_anonymous_namespace_ *re::DynamicArray<re::RigGraphInputValue>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::RigGraphInputValue>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = (*(v3 + 4) + 96 * v4);
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v7 = a2[2];
  v5[2] = v5[2] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[2] = a2[2] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[3] = a2[3];
  a2[2] = 0;
  a2[3] = &str_67;
  v8 = a2[4];
  v5[4] = v5[4] & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v5[4] = a2[4] & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v5[5] = a2[5];
  a2[4] = 0;
  a2[5] = &str_67;
  v9 = a2[6];
  v5[6] = v5[6] & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  v5[6] = a2[6] & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  v5[7] = a2[7];
  a2[6] = 0;
  a2[7] = &str_67;
  v10 = a2[8];
  v5[8] = v5[8] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  v5[8] = a2[8] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  v5[9] = a2[9];
  a2[8] = 0;
  a2[9] = &str_67;
  v11 = a2[10];
  v5[10] = v5[10] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
  v5[10] = a2[10] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
  v5[11] = a2[11];
  a2[10] = 0;
  a2[11] = &str_67;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

void re::RigGraphDefinitionBuilder::addConnection(re::RigGraphDefinitionBuilder *this@<X0>, const char *a2@<X1>, const char *a3@<X2>, const char *a4@<X3>, const char *a5@<X4>, const char *a6@<X5>, const char *a7@<X6>, uint64_t a8@<X8>)
{
  re::RigGraphDefinitionBuilder::getNodeType(v86, *(this + 2), a2);
  if (v86[0] != 1)
  {
    *(a8 + 8) = v87;
    v23 = v88;
    v24 = v89;
    v25 = v90;
    v89 = 0;
    v88 = 0uLL;
    *a8 = 0;
    *(a8 + 24) = v23;
    *(a8 + 40) = v24;
    *(a8 + 48) = v25;
    return;
  }

  re::RigGraphDefinitionBuilder::getNodeType(v81, *(this + 2), a4);
  if (v81[0] == 1)
  {
    re::RigGraphDefinitionBuilder::getParameterType(v77, this, *(&v87 + 1), a3, 0);
    if (v77[0] != 1)
    {
      *(a8 + 8) = v78;
      v29 = v79;
      v79 = 0u;
      v30 = v80;
      v80 = 0u;
      *a8 = 0;
      *(a8 + 24) = v29;
      *(a8 + 40) = v30;
      goto LABEL_70;
    }

    re::RigGraphDefinitionBuilder::getParameterType(v73, this, *(&v82 + 1), a5, 1);
    if (v73[0] != 1)
    {
      v31 = v75;
      *(a8 + 8) = v74;
      v32 = v76;
      v75 = 0u;
      v76 = 0u;
      *a8 = 0;
      *(a8 + 24) = v31;
      *(a8 + 40) = v32;
      goto LABEL_62;
    }

    re::StringID::StringID(&v71, &v78);
    re::StringID::invalid(&v70);
    if (!a6)
    {
      goto LABEL_22;
    }

    re::RigEnvironment::lookupRigDataType(&v52, *(this + 1), &v78);
    v17 = *(this + 1);
    v18 = strlen(a6);
    v64 = a6;
    v65 = v18;
    re::RigDataTypeClass::attributeType(&v52 + 8, v17, &v64, &v66);
    if (v52 == 1)
    {
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v54);
      re::StringID::destroyString(v53);
    }

    v20 = v66;
    if (v66 == 1)
    {
      v21 = v67;
      *&v67.var0 = 0;
      v67.var1 = &str_67;
      var0 = v70.var0;
      v70 = v21;
      if (var0)
      {
      }

      re::StringID::operator=(&v71, &v70);
      if (v66)
      {
        re::StringID::destroyString(&v67);
        goto LABEL_21;
      }
    }

    else
    {
      *(a8 + 8) = v67;
      v33 = v68;
      v68 = 0u;
      v34 = v69;
      v69 = 0u;
      *a8 = 0;
      *(a8 + 24) = v33;
      *(a8 + 40) = v34;
    }

    v16 = v68;
    if (v68 && (BYTE8(v68) & 1) != 0)
    {
      v16 = (*(*v68 + 40))();
    }

LABEL_21:
    if (!v20)
    {
      goto LABEL_52;
    }

LABEL_22:
    re::StringID::StringID(&v64, &v74);
    re::StringID::invalid(&v63);
    if (!a7)
    {
      goto LABEL_35;
    }

    re::RigEnvironment::lookupRigDataType(&v52, *(this + 1), &v74);
    v36 = *(this + 1);
    v37 = strlen(a7);
    v62[0] = a7;
    v62[1] = v37;
    re::RigDataTypeClass::attributeType(&v52 + 8, v36, v62, &v66);
    if (v52 == 1)
    {
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v54);
      re::StringID::destroyString(v53);
    }

    v39 = v66;
    if (v66 == 1)
    {
      v40 = v67;
      *&v67.var0 = 0;
      v67.var1 = &str_67;
      v41 = v63.var0;
      v63 = v40;
      if (v41)
      {
      }

      re::StringID::operator=(&v64, &v63);
      if (v66)
      {
        re::StringID::destroyString(&v67);
        goto LABEL_34;
      }
    }

    else
    {
      *(a8 + 8) = v67;
      v42 = v68;
      v68 = 0u;
      v43 = v69;
      v69 = 0u;
      *a8 = 0;
      *(a8 + 24) = v42;
      *(a8 + 40) = v43;
    }

    v16 = v68;
    if (v68 && (BYTE8(v68) & 1) != 0)
    {
      v16 = (*(*v68 + 40))();
    }

LABEL_34:
    if (!v39)
    {
LABEL_46:
      if (*&v63.var0)
      {
        if (*&v63.var0)
        {
        }
      }

      if (v64)
      {
        if (v64)
        {
        }
      }

LABEL_52:
      if (*&v70.var0)
      {
        if (*&v70.var0)
        {
        }
      }

      if (v71)
      {
        if (v71)
        {
        }
      }

      if (v73[0])
      {
        if (*&v74.var0)
        {
          if (*&v74.var0)
          {
            var1 = v74.var1;
LABEL_65:
            v16 = (*(*v16 + 40))(v16, var1);
            goto LABEL_66;
          }
        }

        goto LABEL_66;
      }

LABEL_62:
      v16 = v75;
      if (v75 && (BYTE8(v75) & 1) != 0)
      {
        var1 = v76;
        goto LABEL_65;
      }

LABEL_66:
      if (v77[0])
      {
        if (*&v78.var0)
        {
          if (*&v78.var0)
          {
            v51 = v78.var1;
LABEL_73:
            v16 = (*(*v16 + 40))(v16, v51);
            goto LABEL_74;
          }
        }

        goto LABEL_74;
      }

LABEL_70:
      v16 = v79;
      if (v79 && (BYTE8(v79) & 1) != 0)
      {
        v51 = v80;
        goto LABEL_73;
      }

LABEL_74:
      if (v82)
      {
      }

      goto LABEL_76;
    }

LABEL_35:
    v44 = v72;
    v45 = v65;
    if ((v64 ^ v71) <= 1 && (v72 == v65 || !strcmp(v72, v65)))
    {
      v49 = *(this + 2);
      re::StringID::StringID(&v52, a2);
      re::StringID::StringID(v53, &v78);
      re::StringID::StringID(v54, a3);
      re::StringID::StringID(&v55, &v70);
      if (a6)
      {
        re::StringID::StringID(v56, a6);
      }

      else
      {
        re::StringID::invalid(v56);
      }

      re::StringID::StringID(&v57, a4);
      re::StringID::StringID(&v58, &v74);
      re::StringID::StringID(&v59, a5);
      re::StringID::StringID(&v60, &v63);
      if (a7)
      {
        re::StringID::StringID(v61, a7);
      }

      else
      {
        re::StringID::invalid(v61);
      }

      re::DynamicArray<re::RigGraphConnection>::add((v49 + 136), &v52);
      re::RigGraphConnection::~RigGraphConnection(&v52);
      *a8 = 1;
    }

    else
    {
      v16 = re::DynamicString::format(&v52, "Cannot make connection between two different types: %s - %s", v35, v44, v45);
      v46 = v52;
      v47 = v53[0];
      v48 = v53[1];
      *a8 = 0;
      *(a8 + 8) = 5004;
      *(a8 + 16) = &re::AnimationErrorCategory(void)::instance;
      *(a8 + 24) = v46;
      *(a8 + 40) = v47;
      *(a8 + 48) = v48;
    }

    goto LABEL_46;
  }

  v26 = v83;
  *(a8 + 8) = v82;
  v27 = v84;
  v28 = v85;
  v84 = 0;
  v83 = 0uLL;
  *a8 = 0;
  *(a8 + 24) = v26;
  *(a8 + 40) = v27;
  *(a8 + 48) = v28;
LABEL_76:
  if (v87)
  {
  }
}

void re::RigGraphDefinitionBuilder::promoteParameter(const char **this@<X0>, const char *a2@<X1>, const char *a3@<X2>, const char *a4@<X3>, const char *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  re::RigGraphDefinitionBuilder::getNodeType(v63, this[2], a2);
  if (v63[0] == 1)
  {
    re::RigGraphDefinitionBuilder::getParameterType(v58, this, v64.var1, a3, a6);
    if (v58[0] == 1)
    {
      *&v53.var0 = 7118140;
      v53.var1 = "this";
      v14 = re::StringID::StringID(&v54, &v59);
      *&v55.var0 = 0;
      v55.var1 = &str_67;
      re::StringID::invalid(&v56);
      v15 = re::StringID::invalid(&v57);
      *&v48.var0 = 0;
      v48.var1 = &str_67;
      v16 = re::StringID::StringID(&v49, &v59);
      *&v50.var0 = 0;
      v50.var1 = &str_67;
      re::StringID::invalid(&v51);
      re::StringID::invalid(&v52);
      v17 = this[2];
      if (a6)
      {
        re::StringID::StringID(&v30, &v53);
        re::StringID::StringID(&v31, &v54);
        re::StringID::StringID((&v32 + 8), &v55);
        re::StringID::StringID(&v34, &v56);
        re::StringID::StringID(&v36, &v57);
        re::StringID::StringID(&v38, &v48);
        re::StringID::StringID(&v40, &v49);
        re::StringID::StringID(&v42, &v50);
        re::StringID::StringID(&v44, &v51);
        re::StringID::StringID(&v46, &v52);
        v18 = re::DynamicArray<re::RigGraphConnection>::add((v17 + 136), &v30);
        if (v46)
        {
          if (v46)
          {
          }
        }

        v46 = 0;
        v47 = &str_67;
        if (v44)
        {
          if (v44)
          {
          }
        }

        v44 = 0;
        v45 = &str_67;
        if (v42)
        {
          if (v42)
          {
          }
        }

        v42 = 0;
        v43 = &str_67;
        if (v40)
        {
          if (v40)
          {
          }
        }

        v40 = 0;
        v41 = &str_67;
        if (v38)
        {
          if (v38)
          {
          }
        }

        v38 = 0;
        v39 = &str_67;
        if (v36)
        {
          if (v36)
          {
          }
        }

        v36 = 0;
        v37 = &str_67;
        if (v34)
        {
          if (v34)
          {
          }
        }

        v34 = 0;
        v35 = &str_67;
        if (BYTE8(v32))
        {
          if (BYTE8(v32))
          {
          }
        }

        *(&v32 + 1) = 0;
        v33 = &str_67;
        if (v31)
        {
          if (v31)
          {
          }
        }

        v31 = 0;
        *&v32 = &str_67;
        if (*&v30.var0)
        {
          if (*&v30.var0)
          {
          }
        }

        v19 = this[2];
        re::StringID::StringID(&v30, &v48);
        re::StringID::StringID(&v31, &v49);
        re::StringID::StringID((&v32 + 8), &v50);
        re::StringID::StringID(&v34, &v51);
        v20 = re::StringID::StringID(&v36, &v52);
        v38 = 0;
        v39 = &str_67;
        v40 = 0;
        v41 = &str_67;
        v22 = (v19 + 16);
      }

      else
      {
        re::StringID::StringID(&v30, &v48);
        re::StringID::StringID(&v31, &v49);
        re::StringID::StringID((&v32 + 8), &v50);
        re::StringID::StringID(&v34, &v51);
        re::StringID::StringID(&v36, &v52);
        re::StringID::StringID(&v38, &v53);
        re::StringID::StringID(&v40, &v54);
        re::StringID::StringID(&v42, &v55);
        re::StringID::StringID(&v44, &v56);
        re::StringID::StringID(&v46, &v57);
        v26 = re::DynamicArray<re::RigGraphConnection>::add((v17 + 136), &v30);
        if (v46)
        {
          if (v46)
          {
          }
        }

        v46 = 0;
        v47 = &str_67;
        if (v44)
        {
          if (v44)
          {
          }
        }

        v44 = 0;
        v45 = &str_67;
        if (v42)
        {
          if (v42)
          {
          }
        }

        v42 = 0;
        v43 = &str_67;
        if (v40)
        {
          if (v40)
          {
          }
        }

        v40 = 0;
        v41 = &str_67;
        if (v38)
        {
          if (v38)
          {
          }
        }

        v38 = 0;
        v39 = &str_67;
        if (v36)
        {
          if (v36)
          {
          }
        }

        v36 = 0;
        v37 = &str_67;
        if (v34)
        {
          if (v34)
          {
          }
        }

        v34 = 0;
        v35 = &str_67;
        if (BYTE8(v32))
        {
          if (BYTE8(v32))
          {
          }
        }

        *(&v32 + 1) = 0;
        v33 = &str_67;
        if (v31)
        {
          if (v31)
          {
          }
        }

        v31 = 0;
        *&v32 = &str_67;
        if (*&v30.var0)
        {
          if (*&v30.var0)
          {
          }
        }

        v27 = this[2];
        re::StringID::StringID(&v30, &v48);
        re::StringID::StringID(&v31, &v49);
        re::StringID::StringID((&v32 + 8), &v50);
        re::StringID::StringID(&v34, &v51);
        v28 = re::StringID::StringID(&v36, &v52);
        v38 = 0;
        v39 = &str_67;
        v40 = 0;
        v41 = &str_67;
        v22 = (v27 + 56);
      }

      v25 = re::DynamicArray<re::RigGraphParameterProxy>::add(v22, &v30);
      if (v40)
      {
        if (v40)
        {
        }
      }

      v40 = 0;
      v41 = &str_67;
      if (v38)
      {
        if (v38)
        {
        }
      }

      v38 = 0;
      v39 = &str_67;
      if (v36)
      {
        if (v36)
        {
        }
      }

      v36 = 0;
      v37 = &str_67;
      if (v34)
      {
        if (v34)
        {
        }
      }

      v34 = 0;
      v35 = &str_67;
      if (BYTE8(v32))
      {
        if (BYTE8(v32))
        {
        }
      }

      *(&v32 + 1) = 0;
      v33 = &str_67;
      if (v31)
      {
        if (v31)
        {
        }
      }

      v31 = 0;
      *&v32 = &str_67;
      if (*&v30.var0)
      {
        if (*&v30.var0)
        {
        }
      }

      *a7 = 1;
      if (*&v52.var0)
      {
        if (*&v52.var0)
        {
        }
      }

      *&v52.var0 = 0;
      v52.var1 = &str_67;
      if (*&v51.var0)
      {
        if (*&v51.var0)
        {
        }
      }

      *&v51.var0 = 0;
      v51.var1 = &str_67;
      if (*&v50.var0)
      {
        if (*&v50.var0)
        {
        }
      }

      *&v50.var0 = 0;
      v50.var1 = &str_67;
      if (*&v49.var0)
      {
        if (*&v49.var0)
        {
        }
      }

      *&v49.var0 = 0;
      v49.var1 = &str_67;
      if (*&v48.var0)
      {
        if (*&v48.var0)
        {
        }
      }

      if (*&v57.var0)
      {
        if (*&v57.var0)
        {
        }
      }

      *&v57.var0 = 0;
      v57.var1 = &str_67;
      if (*&v56.var0)
      {
        if (*&v56.var0)
        {
        }
      }

      *&v56.var0 = 0;
      v56.var1 = &str_67;
      if (*&v55.var0)
      {
        if (*&v55.var0)
        {
        }
      }

      *&v55.var0 = 0;
      v55.var1 = &str_67;
      if (*&v54.var0)
      {
        if (*&v54.var0)
        {
        }
      }

      *&v54.var0 = 0;
      v54.var1 = &str_67;
      if (*&v53.var0)
      {
        if (*&v53.var0)
        {
        }
      }

      if (*&v59.var0)
      {
      }
    }

    else
    {
      v30 = v59;
      re::DynamicString::DynamicString(&v31, &v60);
      *a7 = 0;
      *(a7 + 8) = v30;
      *(a7 + 24) = v31;
      *(a7 + 48) = v33;
      *(a7 + 32) = v32;
      v25 = v60;
      if (v60 && (v61 & 1) != 0)
      {
        v25 = (*(*v60 + 40))(v60, v62);
      }
    }

    if (*&v64.var0)
    {
      var1 = v64.var1;
      goto LABEL_127;
    }
  }

  else
  {
    v30 = v64;
    re::DynamicString::DynamicString(&v31, &v65);
    *a7 = 0;
    *(a7 + 8) = v30;
    *(a7 + 24) = v31;
    *(a7 + 48) = v33;
    *(a7 + 32) = v32;
    v23 = v65;
    if (v65 && (v66 & 1) != 0)
    {
      var1 = v67;
LABEL_127:
      (*(*v23 + 40))(v23, var1);
    }
  }
}

_anonymous_namespace_ *re::DynamicArray<re::RigGraphParameterProxy>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::RigGraphParameterProxy>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = (*(v3 + 4) + 112 * v4);
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v7 = a2[2];
  v5[2] = v5[2] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[2] = a2[2] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[3] = a2[3];
  a2[2] = 0;
  a2[3] = &str_67;
  v8 = a2[4];
  v5[4] = v5[4] & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v5[4] = a2[4] & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v5[5] = a2[5];
  a2[4] = 0;
  a2[5] = &str_67;
  v9 = a2[6];
  v5[6] = v5[6] & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  v5[6] = a2[6] & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  v5[7] = a2[7];
  a2[6] = 0;
  a2[7] = &str_67;
  v10 = a2[8];
  v5[8] = v5[8] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  v5[8] = a2[8] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  v5[9] = a2[9];
  a2[8] = 0;
  a2[9] = &str_67;
  v11 = a2[10];
  v5[10] = v5[10] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
  v5[10] = a2[10] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
  v5[11] = a2[11];
  a2[10] = 0;
  a2[11] = &str_67;
  v12 = a2[12];
  v5[12] = v5[12] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  v5[12] = a2[12] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  v5[13] = a2[13];
  a2[12] = 0;
  a2[13] = &str_67;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

uint64_t *anonymous namespace::getNodeType(_anonymous_namespace_ *var1, const char *a2, uint64_t a3, const StringID *a4)
{
  v4 = a2;
  v5 = var1;
  if (!a3)
  {
LABEL_14:
    result = re::DynamicString::format(__s2, "Node name '%s' not found!", a2, v4);
    v11 = *__s2;
    v12 = v16;
    v13 = v17;
    *v5 = 0;
    *(v5 + 1) = 5005;
    *(v5 + 2) = &re::AnimationErrorCategory(void)::instance;
    *(v5 + 24) = v11;
    *(v5 + 5) = v12;
    *(v5 + 6) = v13;
    return result;
  }

  v6 = a4 + 1;
  v7 = 32 * a3;
  while (1)
  {
    __s2[0] = 0;
    __s2[1] = &str_67;
    v8 = __s2[0];
    if ((__s2[0] ^ *&v6[-1].var0) > 1uLL)
    {
      v9 = 0;
      if ((__s2[0] & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      var1 = v6[-1].var1;
      a2 = __s2[1];
      if (var1 == __s2[1])
      {
        v9 = 1;
        if ((__s2[0] & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        var1 = strcmp(var1, __s2[1]);
        v9 = var1 == 0;
        if ((v8 & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }

    if (__s2[0])
    {
    }

LABEL_12:
    if (v9)
    {
      break;
    }

    v6 += 2;
    v7 -= 32;
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  result = re::StringID::StringID(__s2, v6);
  *v5 = 1;
  v14 = __s2[1];
  *(v5 + 1) = __s2[0];
  *(v5 + 2) = v14;
  return result;
}

void anonymous namespace::getParameterCount(_anonymous_namespace_ *this@<X0>, re::RigEnvironment *a2@<X1>, uint64_t a3@<X8>)
{
  if (this)
  {
    v6 = *this;
    if (*this)
    {
      v7 = *(this + 1);
      if (v7)
      {
        v8 = this + 2;
        do
        {
          v6 = 31 * v6 + v7;
          v9 = *v8++;
          v7 = v9;
        }

        while (v9);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v22 = 2 * v6;
  v23 = this;
  v10 = re::RigEnvironment::lookupRigGraphNode(a2, &v22);
  v11 = v10;
  if (v22)
  {
    if (v22)
    {
    }
  }

  if (v11)
  {
    v12 = (v11 + 16);
LABEL_25:
    v20 = *v12;
    *a3 = 1;
    *(a3 + 8) = v20;
    return;
  }

  if (this)
  {
    v13 = *this;
    if (*this)
    {
      v14 = *(this + 1);
      if (v14)
      {
        v15 = this + 2;
        do
        {
          v13 = 31 * v13 + v14;
          v16 = *v15++;
          v14 = v16;
        }

        while (v16);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v22 = 2 * v13;
  v23 = this;
  v17 = re::RigEnvironment::lookupRigGraphOperator(a2, &v22);
  v19 = v17;
  if (v22)
  {
    if (v22)
    {
    }
  }

  if (v19)
  {
    v12 = (v19 + 24);
    goto LABEL_25;
  }

  re::internal::assertLog(5, v18, "assertion failure: '%s' (%s:line %i) Node type %s not found!", "false", "getParameterCount", 25, this);
  _os_crash("assertion failure: (false) Node type %s not found!", v21);
  __break(1u);
}

uint64_t re::RigGraphNode::inputType(re::RigGraphNode *this, unint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  if (v3 <= a2)
  {
    v11 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v15 = 797;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = v3;
    _os_log_send_and_compose_impl(v6, &v11, &v20, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v11 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v7 = MEMORY[0x1E69E9C10];
    v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (v8)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v15 = 797;
    v16 = 2048;
    v17 = v4;
    v18 = 2048;
    v19 = v3;
    _os_log_send_and_compose_impl(v9, &v11, &v20, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*(this + 4) + 40 * a2 + 16);
  v3 = *(this + 17);
  if (v3 <= v4)
  {
    goto LABEL_8;
  }

  return *(this + 19) + 16 * v4;
}

void re::RigGraphDefinitionValidator::validate(const char *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 1);
  if (!v4)
  {
    re::DynamicString::format(v118, "Undefined rig definition!", a2);
    v99 = *v118;
    v100 = *&v118[16];
    v101 = v119;
    *a3 = 0;
    v102 = 3000;
    goto LABEL_284;
  }

  if (!*(this + 2))
  {
    re::DynamicString::format(v118, "Undefined rig environment!", a2);
    v99 = *v118;
    v100 = *&v118[16];
    v101 = v119;
    *a3 = 0;
    v102 = 5001;
    goto LABEL_284;
  }

  v6 = v4[14];
  if (v6)
  {
    v7 = (v4[16] + 24);
    v8 = 32 * v6;
    do
    {
      v9 = *(v7 - 2);
      if (v118[0] == 1)
      {
        *v128 = 0;
        *&v128[8] = &str_67;
        v116 = (*(*(this + 1) + 112) - 1);
        v11 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((this + 24), v128, &v116);
        if (v128[0])
        {
          if (v128[0])
          {
          }
        }

        *a3 = 1;
      }

      else
      {
        *v128 = *&v118[8];
        re::DynamicString::DynamicString(&v128[16], &v119);
        *a3 = 0;
        *(a3 + 8) = *v128;
        v12 = v130;
        *(a3 + 24) = *&v128[16];
        *(a3 + 48) = v12;
        *(a3 + 32) = v129;
        if (!v119)
        {
          return;
        }

        if ((BYTE8(v119) & 1) == 0)
        {
          return;
        }

        (*(*v119 + 40))();
        if ((*a3 & 1) == 0)
        {
          return;
        }
      }

      v7 += 4;
      v8 -= 32;
    }

    while (v8);
    v4 = *(this + 1);
  }

  v13 = v4[4];
  if (v13)
  {
    v14 = (v4[6] + 88);
    for (i = 112 * v13; i; i -= 112)
    {
      v16 = *(v14 - 7);
      if (v16 < 0xFFFFFFFFFFFFFFFELL || (v16 & 1) != 0)
      {
        if (v16 > 1)
        {
          goto LABEL_23;
        }

        v17 = *(v14 - 6);
        if (!v17)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v17 = *(v14 - 6);
      }

      if (!*v17)
      {
        re::DynamicString::format(v118, "Input parameter name '%s' contains invalid parameter value '%s'.", a2, *v14, v17);
        goto LABEL_283;
      }

LABEL_23:
      v18 = *(v14 - 11);
      if (v18 < 0xFFFFFFFFFFFFFFFELL || (v18 & 1) != 0)
      {
        if (v18 > 1)
        {
          goto LABEL_29;
        }

        v19 = *(v14 - 10);
        if (!v19)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v19 = *(v14 - 10);
      }

      if (!*v19)
      {
        re::DynamicString::format(v118, "Input parameter name '%s' contains invalid node value '%s'.", a2, *v14, v19);
        goto LABEL_283;
      }

LABEL_29:
      v20 = *(v14 - 9);
      if (v20 >= 0xFFFFFFFFFFFFFFFELL && (v20 & 1) == 0)
      {
        v21 = *(v14 - 8);
LABEL_34:
        if (!*v21)
        {
          re::DynamicString::format(v118, "Input parameter name '%s' contains invalid type value '%s'.", a2, *v14, v21);
          goto LABEL_283;
        }

        goto LABEL_35;
      }

      if (v20 <= 1)
      {
        v21 = *(v14 - 8);
        if (v21)
        {
          goto LABEL_34;
        }
      }

LABEL_35:
      v14 += 14;
    }
  }

  v22 = v4[9];
  if (v22)
  {
    v23 = (v4[11] + 88);
    for (j = 112 * v22; j; j -= 112)
    {
      v25 = *(v23 - 7);
      if (v25 < 0xFFFFFFFFFFFFFFFELL || (v25 & 1) != 0)
      {
        if (v25 > 1)
        {
          goto LABEL_44;
        }

        v26 = *(v23 - 6);
        if (!v26)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v26 = *(v23 - 6);
      }

      if (!*v26)
      {
        re::DynamicString::format(v118, "Output parameter name '%s' contains invalid parameter value '%s'.", a2, *v23, v26);
        goto LABEL_283;
      }

LABEL_44:
      v27 = *(v23 - 11);
      if (v27 < 0xFFFFFFFFFFFFFFFELL || (v27 & 1) != 0)
      {
        if (v27 > 1)
        {
          goto LABEL_50;
        }

        v28 = *(v23 - 10);
        if (!v28)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v28 = *(v23 - 10);
      }

      if (!*v28)
      {
        re::DynamicString::format(v118, "Output parameter name '%s' contains invalid node value '%s'.", a2, *v23, v28);
        goto LABEL_283;
      }

LABEL_50:
      v29 = *(v23 - 9);
      if (v29 < 0xFFFFFFFFFFFFFFFELL || (v29 & 1) != 0)
      {
        if (v29 > 1)
        {
          goto LABEL_56;
        }

        v30 = *(v23 - 8);
        if (!v30)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v30 = *(v23 - 8);
      }

      if (!*v30)
      {
        re::DynamicString::format(v118, "Output parameter name '%s' contains invalid type value '%s'.", a2, *v23, v30);
LABEL_283:
        v99 = *v118;
        v100 = *&v118[16];
        v101 = v119;
        *a3 = 0;
        v102 = 5006;
LABEL_284:
        *(a3 + 8) = v102;
        *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(a3 + 24) = v99;
        *(a3 + 40) = v100;
        *(a3 + 48) = v101;
        return;
      }

LABEL_56:
      v23 += 14;
    }
  }

  v31 = v4[19];
  if (!v31)
  {
LABEL_272:
    *a3 = 1;
    return;
  }

  v32 = v4[21];
  v113 = &v32[10 * v31];
  while (1)
  {
    v34 = v32 + 2;
    v33 = *&v32[2].var0;
    if (v33 < 0xFFFFFFFFFFFFFFFELL || (v33 & 1) != 0)
    {
      if (v33 > 1)
      {
        goto LABEL_65;
      }

      var1 = v32[2].var1;
      if (!var1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      var1 = v32[2].var1;
    }

    if (!*var1)
    {
      re::DynamicString::format(v118, "Source parameter name '%s' is invalid for node '%s' connection!", a2, var1, v32->var1);
      goto LABEL_283;
    }

LABEL_65:
    v36 = *&v32[7].var0;
    if (v36 < 0xFFFFFFFFFFFFFFFELL || (v36 & 1) != 0)
    {
      if (v36 > 1)
      {
        goto LABEL_71;
      }

      v37 = v32[7].var1;
      if (!v37)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v37 = v32[7].var1;
    }

    if (!*v37)
    {
      re::DynamicString::format(v118, "Target parameter name '%s' is invalid for node '%s' connection!", a2, v37, v32[5].var1);
      goto LABEL_283;
    }

LABEL_71:
    v38 = *&v32->var0;
    if ((*&v32->var0 & 0xFFFFFFFFFFFFFFFELL) != 0x6C9D3C || (v39 = v32->var1, v39 != "this") && strcmp(v39, "this"))
    {
      v40 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v38 >> 31) ^ (v38 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v38 >> 31) ^ (v38 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((this + 24), v32, v40 ^ (v40 >> 31), v118);
      if (*&v118[12] == 0x7FFFFFFF)
      {
        re::DynamicString::format(v118, "Node name '%s' not found for connection!", v41, v32->var1);
        v99 = *v118;
        v100 = *&v118[16];
        v101 = v119;
        *a3 = 0;
        v102 = 5005;
        goto LABEL_284;
      }

      re::RigGraphDefinitionBuilder::getNodeType(v118, *(this + 1), v32->var1);
      if ((v118[0] & 1) == 0)
      {
        goto LABEL_279;
      }

      v42 = *&v118[16];
      ParameterType = re::RigGraphDefinitionValidator::getParameterType(v128, this, *&v118[16], v32[2].var1, 0);
      v44 = v128[0];
      if (v128[0] == 1)
      {
        if (v128[8])
        {
        }
      }

      else
      {
        *(a3 + 8) = *&v128[8];
        v45 = v129;
        *&v129 = 0;
        v46 = v130;
        v47 = v131;
        *a3 = 0;
        *(a3 + 24) = v45;
        *(a3 + 40) = v46;
        *(a3 + 48) = v47;
      }

      if (v118[8])
      {
      }

      if ((v44 & 1) == 0)
      {
        return;
      }

      goto LABEL_83;
    }

    v114 = v32;
    v112 = v32 + 2;
    re::StringID::StringID(v128, v32 + 2);
    v56 = *(this + 1);
    v57 = v56[4];
    if (!v57)
    {
      goto LABEL_135;
    }

    v58 = 0;
    v59 = 0;
    v60 = v56[6];
    v61 = 112 * v57 - 112;
    do
    {
      re::StringID::StringID(v118, (v60 + v58));
      re::StringID::StringID(&v118[16], (v60 + v58 + 16));
      re::StringID::StringID((&v119 + 8), (v60 + v58 + 32));
      re::StringID::StringID(&v120[1], (v60 + v58 + 48));
      re::StringID::StringID(&v122, (v60 + v58 + 64));
      re::StringID::StringID(&v124, (v60 + v58 + 80));
      v62 = re::StringID::StringID(&v126, (v60 + v58 + 96));
      v63 = *v128;
      if ((*v128 ^ v124) <= 1 && ((v62 = __s1, v55 = *&v128[8], __s1 == *&v128[8]) || (v62 = strcmp(__s1, *&v128[8]), !v62)))
      {
        v59 = 1;
        v64 = 1;
      }

      else
      {
        if ((*(&v119 + 1) ^ v63) > 1)
        {
          v64 = 0;
        }

        else
        {
          v62 = v120[0];
          v55 = *&v128[8];
          if (v120[0] == *&v128[8])
          {
            v64 = 1;
          }

          else
          {
            v62 = strcmp(v120[0], *&v128[8]);
            v64 = v62 == 0;
          }
        }

        v59 |= v64;
      }

      if (v126)
      {
        if (v126)
        {
        }
      }

      v126 = 0;
      v127 = &str_67;
      if (v124)
      {
        if (v124)
        {
        }
      }

      v124 = 0;
      __s1 = &str_67;
      if (v122)
      {
        if (v122)
        {
        }
      }

      v122 = 0;
      v123 = &str_67;
      if (v120[1])
      {
        if (v120[1])
        {
        }
      }

      v120[1] = 0;
      v121 = &str_67;
      if (BYTE8(v119))
      {
        if (BYTE8(v119))
        {
        }
      }

      *(&v119 + 1) = 0;
      v120[0] = &str_67;
      if (v118[16])
      {
        if (v118[16])
        {
        }
      }

      *&v118[16] = 0;
      *&v119 = &str_67;
      if (v118[0])
      {
        if (v118[0])
        {
        }
      }

      v65 = v61 == v58 || v64;
      v58 += 112;
    }

    while (v65 != 1);
    if ((v59 & 1) == 0)
    {
      v56 = *(this + 1);
LABEL_135:
      v66 = v56[9];
      if (!v66)
      {
        goto LABEL_286;
      }

      v67 = 0;
      v68 = 0;
      v69 = v56[11];
      v70 = 112 * v66 - 112;
      do
      {
        re::StringID::StringID(v118, (v69 + v67));
        re::StringID::StringID(&v118[16], (v69 + v67 + 16));
        re::StringID::StringID((&v119 + 8), (v69 + v67 + 32));
        re::StringID::StringID(&v120[1], (v69 + v67 + 48));
        re::StringID::StringID(&v122, (v69 + v67 + 64));
        re::StringID::StringID(&v124, (v69 + v67 + 80));
        v71 = re::StringID::StringID(&v126, (v69 + v67 + 96));
        v72 = *v128;
        if ((*v128 ^ v124) <= 1 && ((v71 = __s1, v55 = *&v128[8], __s1 == *&v128[8]) || (v71 = strcmp(__s1, *&v128[8]), !v71)))
        {
          v68 = 1;
          v73 = 1;
        }

        else
        {
          if ((*(&v119 + 1) ^ v72) > 1)
          {
            v73 = 0;
          }

          else
          {
            v71 = v120[0];
            v55 = *&v128[8];
            if (v120[0] == *&v128[8])
            {
              v73 = 1;
            }

            else
            {
              v71 = strcmp(v120[0], *&v128[8]);
              v73 = v71 == 0;
            }
          }

          v68 |= v73;
        }

        if (v126)
        {
          if (v126)
          {
          }
        }

        v126 = 0;
        v127 = &str_67;
        if (v124)
        {
          if (v124)
          {
          }
        }

        v124 = 0;
        __s1 = &str_67;
        if (v122)
        {
          if (v122)
          {
          }
        }

        v122 = 0;
        v123 = &str_67;
        if (v120[1])
        {
          if (v120[1])
          {
          }
        }

        v120[1] = 0;
        v121 = &str_67;
        if (BYTE8(v119))
        {
          if (BYTE8(v119))
          {
          }
        }

        *(&v119 + 1) = 0;
        v120[0] = &str_67;
        if (v118[16])
        {
          if (v118[16])
          {
          }
        }

        *&v118[16] = 0;
        *&v119 = &str_67;
        if (v118[0])
        {
          if (v118[0])
          {
          }
        }

        v74 = v70 == v67 || v73;
        v67 += 112;
      }

      while (v74 != 1);
      if ((v68 & 1) == 0)
      {
LABEL_286:
        re::DynamicString::format(v118, "Source parameter name '%s' not found for node '%s' connection!", v55, *&v128[8], v114->var1);
LABEL_288:
        v106 = *v118;
        v107 = *&v118[16];
        v108 = v119;
        *a3 = 0;
        *(a3 + 8) = 5006;
        *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(a3 + 24) = v106;
        *(a3 + 40) = v107;
        *(a3 + 48) = v108;
        goto LABEL_292;
      }
    }

    v32 = v114;
    re::StringID::StringID(&v116, v114 + 1);
    re::RigEnvironment::lookupRigDataType(v118, *(this + 2), &v116);
    if ((v118[0] & 1) == 0)
    {
      re::DynamicString::format(v118, "Source parameter name '%s' type '%s' not found!", v75, *&v128[8], v117);
      goto LABEL_291;
    }

    v76 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v119 + 8);
    if (v118[16])
    {
      if (v118[16])
      {
      }
    }

    v34 = v112;
    if (v116)
    {
      if (v116)
      {
      }
    }

    if (v128[0])
    {
      if (v128[0])
      {
      }
    }

LABEL_83:
    v48 = v32[5].var1;
    if ((*&v32[5].var0 & 0xFFFFFFFFFFFFFFFELL) == 0x6C9D3C && (v48 == "this" || !strcmp(v32[5].var1, "this")))
    {
      break;
    }

    re::RigGraphDefinitionBuilder::getNodeType(v118, *(this + 1), v48);
    if ((v118[0] & 1) == 0)
    {
LABEL_279:
      *(a3 + 8) = *&v118[8];
      v103 = v119;
      v119 = 0u;
      v104 = v120[0];
      v105 = v120[1];
      *v120 = 0u;
      *a3 = 0;
      *(a3 + 24) = v103;
      *(a3 + 40) = v104;
      *(a3 + 48) = v105;
      re::Result<re::StringID,re::DetailedError>::~Result(v118);
      return;
    }

    v49 = *&v118[16];
    v50 = re::RigGraphDefinitionValidator::getParameterType(v128, this, *&v118[16], v32[7].var1, 1);
    v51 = v128[0];
    if (v128[0] == 1)
    {
      if (v128[8])
      {
      }
    }

    else
    {
      *(a3 + 8) = *&v128[8];
      v52 = v129;
      *&v129 = 0;
      v53 = v130;
      v54 = v131;
      *a3 = 0;
      *(a3 + 24) = v52;
      *(a3 + 40) = v53;
      *(a3 + 48) = v54;
    }

    if (v118[8])
    {
    }

    if ((v51 & 1) == 0)
    {
      return;
    }

LABEL_94:
    v32 += 10;
    if (v32 == v113)
    {
      goto LABEL_272;
    }
  }

  re::StringID::StringID(v128, v34 + 5);
  v78 = *(this + 1);
  v79 = v78[4];
  v115 = v32;
  if (!v79)
  {
    goto LABEL_222;
  }

  v80 = 0;
  v81 = 0;
  v82 = v78[6];
  v83 = 112 * v79 - 112;
  do
  {
    re::StringID::StringID(v118, (v82 + v80));
    re::StringID::StringID(&v118[16], (v82 + v80 + 16));
    re::StringID::StringID((&v119 + 8), (v82 + v80 + 32));
    re::StringID::StringID(&v120[1], (v82 + v80 + 48));
    re::StringID::StringID(&v122, (v82 + v80 + 64));
    re::StringID::StringID(&v124, (v82 + v80 + 80));
    v84 = re::StringID::StringID(&v126, (v82 + v80 + 96));
    v85 = *v128;
    if ((*v128 ^ v124) <= 1 && ((v84 = __s1, v77 = *&v128[8], __s1 == *&v128[8]) || (v84 = strcmp(__s1, *&v128[8]), !v84)))
    {
      v81 = 1;
      v86 = 1;
    }

    else
    {
      if ((*(&v119 + 1) ^ v85) > 1)
      {
        v86 = 0;
      }

      else
      {
        v84 = v120[0];
        v77 = *&v128[8];
        if (v120[0] == *&v128[8])
        {
          v86 = 1;
        }

        else
        {
          v84 = strcmp(v120[0], *&v128[8]);
          v86 = v84 == 0;
        }
      }

      v81 |= v86;
    }

    if (v126)
    {
      if (v126)
      {
      }
    }

    v126 = 0;
    v127 = &str_67;
    if (v124)
    {
      if (v124)
      {
      }
    }

    v124 = 0;
    __s1 = &str_67;
    if (v122)
    {
      if (v122)
      {
      }
    }

    v122 = 0;
    v123 = &str_67;
    if (v120[1])
    {
      if (v120[1])
      {
      }
    }

    v120[1] = 0;
    v121 = &str_67;
    if (BYTE8(v119))
    {
      if (BYTE8(v119))
      {
      }
    }

    *(&v119 + 1) = 0;
    v120[0] = &str_67;
    if (v118[16])
    {
      if (v118[16])
      {
      }
    }

    *&v118[16] = 0;
    *&v119 = &str_67;
    if (v118[0])
    {
      if (v118[0])
      {
      }
    }

    v87 = v83 == v80 || v86;
    v80 += 112;
  }

  while (v87 != 1);
  v32 = v115;
  if ((v81 & 1) == 0)
  {
    v78 = *(this + 1);
LABEL_222:
    v88 = v78[9];
    if (!v88)
    {
      goto LABEL_287;
    }

    v89 = 0;
    v90 = 0;
    v91 = v78[11];
    v92 = 112 * v88 - 112;
    do
    {
      re::StringID::StringID(v118, (v91 + v89));
      re::StringID::StringID(&v118[16], (v91 + v89 + 16));
      re::StringID::StringID((&v119 + 8), (v91 + v89 + 32));
      re::StringID::StringID(&v120[1], (v91 + v89 + 48));
      re::StringID::StringID(&v122, (v91 + v89 + 64));
      re::StringID::StringID(&v124, (v91 + v89 + 80));
      v93 = re::StringID::StringID(&v126, (v91 + v89 + 96));
      v94 = *v128;
      if ((*v128 ^ v124) <= 1 && ((v93 = __s1, v77 = *&v128[8], __s1 == *&v128[8]) || (v93 = strcmp(__s1, *&v128[8]), !v93)))
      {
        v90 = 1;
        v95 = 1;
      }

      else
      {
        if ((*(&v119 + 1) ^ v94) > 1)
        {
          v95 = 0;
        }

        else
        {
          v93 = v120[0];
          v77 = *&v128[8];
          if (v120[0] == *&v128[8])
          {
            v95 = 1;
          }

          else
          {
            v93 = strcmp(v120[0], *&v128[8]);
            v95 = v93 == 0;
          }
        }

        v90 |= v95;
      }

      if (v126)
      {
        if (v126)
        {
        }
      }

      v126 = 0;
      v127 = &str_67;
      if (v124)
      {
        if (v124)
        {
        }
      }

      v124 = 0;
      __s1 = &str_67;
      if (v122)
      {
        if (v122)
        {
        }
      }

      v122 = 0;
      v123 = &str_67;
      if (v120[1])
      {
        if (v120[1])
        {
        }
      }

      v120[1] = 0;
      v121 = &str_67;
      if (BYTE8(v119))
      {
        if (BYTE8(v119))
        {
        }
      }

      *(&v119 + 1) = 0;
      v120[0] = &str_67;
      if (v118[16])
      {
        if (v118[16])
        {
        }
      }

      *&v118[16] = 0;
      *&v119 = &str_67;
      if (v118[0])
      {
        if (v118[0])
        {
        }
      }

      v96 = v92 == v89 || v95;
      v89 += 112;
    }

    while (v96 != 1);
    v32 = v115;
    if ((v90 & 1) == 0)
    {
LABEL_287:
      re::DynamicString::format(v118, "Target parameter name '%s' not found for node '%s' connection!", v77, *&v128[8], v32->var1);
      goto LABEL_288;
    }
  }

  re::StringID::StringID(&v116, v32 + 6);
  re::RigEnvironment::lookupRigDataType(v118, *(this + 2), &v116);
  if (v118[0])
  {
    v98 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v119 + 8);
    if (v118[16])
    {
      if (v118[16])
      {
      }
    }

    if (v116)
    {
      if (v116)
      {
      }
    }

    if (v128[0])
    {
      if (v128[0])
      {
      }
    }

    goto LABEL_94;
  }

  re::DynamicString::format(v118, "Target parameter name '%s' type '%s' not found!", v97, *&v128[8], v117);
LABEL_291:
  v109 = *v118;
  v110 = *&v118[16];
  v111 = v119;
  *a3 = 0;
  *(a3 + 8) = 5000;
  *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a3 + 24) = v109;
  *(a3 + 40) = v110;
  *(a3 + 48) = v111;
  re::StringID::destroyString(&v116);
LABEL_292:
  re::StringID::destroyString(v128);
}

uint64_t *re::RigGraphDefinitionValidator::getParameterType(re::RigGraphDefinitionValidator *this, const char *a2, const char *a3, const char *a4, int a5)
{
  v63 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 2);
  if (a3)
  {
    v11 = *a3;
    if (*a3)
    {
      v12 = a3[1];
      if (v12)
      {
        v13 = a3 + 2;
        do
        {
          v11 = 31 * v11 + v12;
          v14 = *v13++;
          v12 = v14;
        }

        while (v14);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  *&v58 = 2 * v11;
  *(&v58 + 1) = a3;
  v15 = re::RigEnvironment::lookupRigGraphNode(v10, &v58);
  v17 = v15;
  if (v58)
  {
    if (v58)
    {
    }
  }

  if (!v17)
  {
    v25 = *(a2 + 2);
    if (a3)
    {
      v26 = *a3;
      if (*a3)
      {
        v27 = a3[1];
        if (v27)
        {
          v28 = a3 + 2;
          do
          {
            v26 = 31 * v26 + v27;
            v29 = *v28++;
            v27 = v29;
          }

          while (v29);
        }
      }
    }

    else
    {
      v26 = 0;
    }

    *&v58 = 2 * v26;
    *(&v58 + 1) = a3;
    v30 = re::RigEnvironment::lookupRigGraphOperator(v25, &v58);
    v31 = v30;
    if (v58)
    {
      if (v58)
      {
      }
    }

    if (!v31)
    {
      result = re::DynamicString::format(&v58, "Node type '%s' not found!", v16, a3);
      v40 = v58;
      v42 = *(&v59 + 1);
      v41 = v59;
      *this = 0;
      v43 = 5004;
      goto LABEL_39;
    }

    v32 = 40;
    if (a5)
    {
      v32 = 16;
    }

    v33 = v31 + v32;
    v34 = *(v33 + 1);
    if (v34)
    {
      v35 = *(v33 + 2);
      v36 = strlen(a4);
      v37 = 0;
      v38 = v35 + 1;
      while (v36 > strlen(v38[-1].var1) || memcmp(v38[-1].var1, a4, v36))
      {
        ++v37;
        v38 += 2;
        if (v34 == v37)
        {
          goto LABEL_38;
        }
      }

      if (v34 <= v37)
      {
        v49 = 0;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v58 = 0u;
        v46 = MEMORY[0x1E69E9C10];
        v50 = 136315906;
        v51 = "operator[]";
        v52 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v47 = 3;
        }

        else
        {
          v47 = 2;
        }

        v53 = 476;
        v54 = 2048;
        v55 = v37;
        v56 = 2048;
        v57 = v34;
        _os_log_send_and_compose_impl(v47, &v49, &v58, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v48);
        _os_crash_msg();
        __break(1u);
      }

      v44 = v38;
      goto LABEL_44;
    }

LABEL_38:
    result = re::DynamicString::format(&v58, "Parameter name '%s' not found!", v16, a4);
    v40 = v58;
    v42 = *(&v59 + 1);
    v41 = v59;
    *this = 0;
    v43 = 5006;
LABEL_39:
    *(this + 1) = v43;
    *(this + 2) = &re::AnimationErrorCategory(void)::instance;
    *(this + 24) = v40;
    *(this + 5) = v41;
    *(this + 6) = v42;
    return result;
  }

  v18 = 40;
  if (a5)
  {
    v18 = 0;
  }

  v19 = v17 + v18;
  v20 = *(v19 + 2);
  if (!v20)
  {
    goto LABEL_38;
  }

  v21 = *(v19 + 4);
  v22 = strlen(a4);
  v23 = 0;
  v24 = (v21 + 8);
  while (v22 > strlen(*v24) || memcmp(*v24, a4, v22))
  {
    ++v23;
    v24 += 5;
    if (v20 == v23)
    {
      goto LABEL_38;
    }
  }

  v44 = re::RigGraphNode::inputType(v17, v23);
LABEL_44:
  result = re::StringID::StringID(&v58, v44);
  *this = 1;
  v45 = *(&v58 + 1);
  *(this + 1) = v58;
  *(this + 2) = v45;
  return result;
}

void *re::allocInfo_RigGraphNodeParameterHandle(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E038))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18E230, "RigGraphNodeParameterHandle");
    __cxa_guard_release(&qword_1EE18E038);
  }

  return &unk_1EE18E230;
}

void re::initInfo_RigGraphNodeParameterHandle(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v28[0] = 0xCE511803B47B62;
  v28[1] = "RigGraphNodeParameterHandle";
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  *(this + 2) = v29;
  if ((atomic_load_explicit(&qword_1EE18E040, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E040))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "node";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE18E118 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::StringID>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "type";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE18E120 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::StringID>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "parameter";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE18E128 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::IntrospectionInfo<re::StringID>::get(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "attributeType";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x3000000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE18E130 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::IntrospectionInfo<re::StringID>::get(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "attribute";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x4000000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE18E138 = v26;
    __cxa_guard_release(&qword_1EE18E040);
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE18E118;
  *(this + 9) = re::internal::defaultConstruct<re::RigGraphNodeParameterHandle>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigGraphNodeParameterHandle>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigGraphNodeParameterHandle>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigGraphNodeParameterHandle>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v27 = v29;
}

re::StringID *re::internal::defaultConstruct<re::RigGraphNodeParameterHandle>(re::StringID *a1, uint64_t a2, uint64_t a3)
{
  re::StringID::invalid(a3);
  re::StringID::invalid((a3 + 16));
  re::StringID::invalid((a3 + 32));
  re::StringID::invalid((a3 + 48));
  return re::StringID::invalid((a3 + 64));
}

void re::internal::defaultDestruct<re::RigGraphNodeParameterHandle>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 64));
  re::StringID::destroyString((a3 + 48));
  re::StringID::destroyString((a3 + 32));
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

re::StringID *re::internal::defaultConstructV2<re::RigGraphNodeParameterHandle>(re::StringID *a1)
{
  re::StringID::invalid(a1);
  re::StringID::invalid((a1 + 16));
  re::StringID::invalid((a1 + 32));
  re::StringID::invalid((a1 + 48));
  return re::StringID::invalid((a1 + 64));
}

void re::internal::defaultDestructV2<re::RigGraphNodeParameterHandle>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 64));
  re::StringID::destroyString((a1 + 48));
  re::StringID::destroyString((a1 + 32));
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RigGraphParameterProxy(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E050, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E050))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18E2C0, "RigGraphParameterProxy");
    __cxa_guard_release(&qword_1EE18E050);
  }

  return &unk_1EE18E2C0;
}

void re::initInfo_RigGraphParameterProxy(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v23[0] = 0xB79804C19E716C46;
  v23[1] = "RigGraphParameterProxy";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE18E058, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E058))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE18E048;
    if (!qword_1EE18E048)
    {
      v9 = re::allocInfo_RigGraphNodeParameterHandle(v7);
      qword_1EE18E048 = v9;
      re::initInfo_RigGraphNodeParameterHandle(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "parameter";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 1;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE18E100 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::IntrospectionInfo<re::StringID>::get(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "name";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x5000000002;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18E108 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::IntrospectionInfo<re::StringID>::get(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "value";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x6000000003;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE18E110 = v21;
    __cxa_guard_release(&qword_1EE18E058);
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE18E100;
  *(this + 9) = re::internal::defaultConstruct<re::RigGraphParameterProxy>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigGraphParameterProxy>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigGraphParameterProxy>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigGraphParameterProxy>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v22 = v24;
}

re::StringID *re::internal::defaultConstruct<re::RigGraphParameterProxy>(re::StringID *a1, uint64_t a2, void *a3)
{
  re::StringID::invalid(a3);
  re::StringID::invalid((a3 + 2));
  re::StringID::invalid((a3 + 4));
  re::StringID::invalid((a3 + 6));
  result = re::StringID::invalid((a3 + 8));
  a3[10] = 0;
  a3[11] = &str_67;
  a3[12] = 0;
  a3[13] = &str_67;
  return result;
}

void re::internal::defaultDestruct<re::RigGraphParameterProxy>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 96));
  re::StringID::destroyString((a3 + 80));
  re::StringID::destroyString((a3 + 64));
  re::StringID::destroyString((a3 + 48));
  re::StringID::destroyString((a3 + 32));
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

re::StringID *re::internal::defaultConstructV2<re::RigGraphParameterProxy>(re::StringID *a1)
{
  re::StringID::invalid(a1);
  re::StringID::invalid((a1 + 16));
  re::StringID::invalid((a1 + 32));
  re::StringID::invalid((a1 + 48));
  result = re::StringID::invalid((a1 + 64));
  *(a1 + 10) = 0;
  *(a1 + 11) = &str_67;
  *(a1 + 12) = 0;
  *(a1 + 13) = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::RigGraphParameterProxy>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 96));
  re::StringID::destroyString((a1 + 80));
  re::StringID::destroyString((a1 + 64));
  re::StringID::destroyString((a1 + 48));
  re::StringID::destroyString((a1 + 32));
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RigGraphConnection(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E068, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E068))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18E350, "RigGraphConnection");
    __cxa_guard_release(&qword_1EE18E068);
  }

  return &unk_1EE18E350;
}

void re::initInfo_RigGraphConnection(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v22[0] = 0x7AFB480BA3239778;
  v22[1] = "RigGraphConnection";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE18E070, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E070))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE18E048;
    if (!qword_1EE18E048)
    {
      v9 = re::allocInfo_RigGraphNodeParameterHandle(v7);
      qword_1EE18E048 = v9;
      re::initInfo_RigGraphNodeParameterHandle(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "source";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 1;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE18E0D0 = v13;
    v14 = re::introspectionAllocator();
    v15 = v14;
    v16 = qword_1EE18E048;
    if (!qword_1EE18E048)
    {
      v16 = re::allocInfo_RigGraphNodeParameterHandle(v14);
      qword_1EE18E048 = v16;
      re::initInfo_RigGraphNodeParameterHandle(v16, v17, v18, v19);
    }

    v20 = (*(*v15 + 32))(v15, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "target";
    *(v20 + 16) = v16;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x5000000002;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE18E0D8 = v20;
    __cxa_guard_release(&qword_1EE18E070);
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18E0D0;
  *(this + 9) = re::internal::defaultConstruct<re::RigGraphConnection>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigGraphConnection>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigGraphConnection>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigGraphConnection>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v21 = v23;
}

re::StringID *re::internal::defaultConstruct<re::RigGraphConnection>(re::StringID *a1, uint64_t a2, uint64_t a3)
{
  re::StringID::invalid(a3);
  re::StringID::invalid((a3 + 16));
  re::StringID::invalid((a3 + 32));
  re::StringID::invalid((a3 + 48));
  re::StringID::invalid((a3 + 64));
  re::StringID::invalid((a3 + 80));
  re::StringID::invalid((a3 + 96));
  re::StringID::invalid((a3 + 112));
  re::StringID::invalid((a3 + 128));
  return re::StringID::invalid((a3 + 144));
}

void re::internal::defaultDestruct<re::RigGraphConnection>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 144));
  re::StringID::destroyString((a3 + 128));
  re::StringID::destroyString((a3 + 112));
  re::StringID::destroyString((a3 + 96));
  re::StringID::destroyString((a3 + 80));
  re::StringID::destroyString((a3 + 64));
  re::StringID::destroyString((a3 + 48));
  re::StringID::destroyString((a3 + 32));
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

re::StringID *re::internal::defaultConstructV2<re::RigGraphConnection>(re::StringID *a1)
{
  re::StringID::invalid(a1);
  re::StringID::invalid((a1 + 16));
  re::StringID::invalid((a1 + 32));
  re::StringID::invalid((a1 + 48));
  re::StringID::invalid((a1 + 64));
  re::StringID::invalid((a1 + 80));
  re::StringID::invalid((a1 + 96));
  re::StringID::invalid((a1 + 112));
  re::StringID::invalid((a1 + 128));
  return re::StringID::invalid((a1 + 144));
}

void re::internal::defaultDestructV2<re::RigGraphConnection>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 144));
  re::StringID::destroyString((a1 + 128));
  re::StringID::destroyString((a1 + 112));
  re::StringID::destroyString((a1 + 96));
  re::StringID::destroyString((a1 + 80));
  re::StringID::destroyString((a1 + 64));
  re::StringID::destroyString((a1 + 48));
  re::StringID::destroyString((a1 + 32));
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RigGraphInputValue(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E078, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E078))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18E3E0, "RigGraphInputValue");
    __cxa_guard_release(&qword_1EE18E078);
  }

  return &unk_1EE18E3E0;
}

void re::initInfo_RigGraphInputValue(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v19[0] = 0x7AFC672AA3D9C94ALL;
  v19[1] = "RigGraphInputValue";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE18E080, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E080))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE18E048;
    if (!qword_1EE18E048)
    {
      v9 = re::allocInfo_RigGraphNodeParameterHandle(v7);
      qword_1EE18E048 = v9;
      re::initInfo_RigGraphNodeParameterHandle(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "inputNode";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 1;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE18E0E0 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::IntrospectionInfo<re::StringID>::get(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "value";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x5000000002;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18E0E8 = v17;
    __cxa_guard_release(&qword_1EE18E080);
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18E0E0;
  *(this + 9) = re::internal::defaultConstruct<re::RigGraphInputValue>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigGraphInputValue>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigGraphInputValue>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigGraphInputValue>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v18 = v20;
}

re::StringID *re::internal::defaultConstruct<re::RigGraphInputValue>(re::StringID *a1, uint64_t a2, void *a3)
{
  re::StringID::invalid(a3);
  re::StringID::invalid((a3 + 2));
  re::StringID::invalid((a3 + 4));
  re::StringID::invalid((a3 + 6));
  result = re::StringID::invalid((a3 + 8));
  a3[10] = 0;
  a3[11] = &str_67;
  return result;
}

void re::internal::defaultDestruct<re::RigGraphInputValue>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 80));
  re::StringID::destroyString((a3 + 64));
  re::StringID::destroyString((a3 + 48));
  re::StringID::destroyString((a3 + 32));
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

re::StringID *re::internal::defaultConstructV2<re::RigGraphInputValue>(re::StringID *a1)
{
  re::StringID::invalid(a1);
  re::StringID::invalid((a1 + 16));
  re::StringID::invalid((a1 + 32));
  re::StringID::invalid((a1 + 48));
  result = re::StringID::invalid((a1 + 64));
  *(a1 + 10) = 0;
  *(a1 + 11) = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::RigGraphInputValue>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 80));
  re::StringID::destroyString((a1 + 64));
  re::StringID::destroyString((a1 + 48));
  re::StringID::destroyString((a1 + 32));
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RigGraphNodeDescription(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E090, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E090))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18E470, "RigGraphNodeDescription");
    __cxa_guard_release(&qword_1EE18E090);
  }

  return &unk_1EE18E470;
}

void re::initInfo_RigGraphNodeDescription(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xF8858BA97F982CF8;
  v16[1] = "RigGraphNodeDescription";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE18E098, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E098))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE18E0F0 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::StringID>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "type";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE18E0F8 = v14;
    __cxa_guard_release(&qword_1EE18E098);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18E0F0;
  *(this + 9) = re::internal::defaultConstruct<re::RigGraphNodeDescription>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigGraphNodeDescription>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigGraphNodeDescription>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigGraphNodeDescription>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultDestruct<re::RigGraphNodeDescription>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

void re::internal::defaultDestructV2<re::RigGraphNodeDescription>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RigGraphDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E0A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E0A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18E500, "RigGraphDefinition");
    __cxa_guard_release(&qword_1EE18E0A8);
  }

  return &unk_1EE18E500;
}

void re::initInfo_RigGraphDefinition(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v28[0] = 0x7AFB683786AD0462;
  v28[1] = "RigGraphDefinition";
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  *(this + 2) = v29;
  if ((atomic_load_explicit(&qword_1EE18E0B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E0B0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "type";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE18E140 = v10;
    v11 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::RigGraphParameterProxy>>::get(v11);
    v12 = (*(*v11 + 32))(v11, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "inputParameters";
    *(v12 + 16) = &qword_1EE18E170;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x1000000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE18E148 = v12;
    v13 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::RigGraphParameterProxy>>::get(v13);
    v14 = (*(*v13 + 32))(v13, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "outputParameters";
    *(v14 + 16) = &qword_1EE18E170;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x3800000003;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE18E150 = v14;
    v15 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::RigGraphNodeDescription>>::get(v15);
    v16 = (*(*v15 + 32))(v15, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "nodes";
    *(v16 + 16) = &qword_1EE18E1B0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x6000000004;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE18E158 = v16;
    v17 = re::introspectionAllocator();
    v23 = re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(1, v18, v19, v20, v21, v22);
    v24 = (*(*v17 + 32))(v17, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "connections";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x8800000005;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE18E160 = v24;
    v25 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::RigGraphInputValue>>::get(v25);
    v26 = (*(*v25 + 32))(v25, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "inputValues";
    *(v26 + 16) = &qword_1EE18E1F0;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0xB000000006;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE18E168 = v26;
    __cxa_guard_release(&qword_1EE18E0B0);
  }

  *(this + 2) = 0xD800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE18E140;
  *(this + 9) = re::internal::defaultConstruct<re::RigGraphDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigGraphDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigGraphDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigGraphDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v27 = v29;
}

void re::IntrospectionInfo<re::DynamicArray<re::RigGraphParameterProxy>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18E0B8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18E0B8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18E170);
      qword_1EE18E170 = &unk_1F5CADC70;
      __cxa_guard_release(&qword_1EE18E0B8);
    }
  }

  if ((_MergedGlobals_11 & 1) == 0)
  {
    v1 = qword_1EE18E060;
    if (qword_1EE18E060 || (v1 = re::allocInfo_RigGraphParameterProxy(a1), qword_1EE18E060 = v1, re::initInfo_RigGraphParameterProxy(v1, v2, v3, v4), (_MergedGlobals_11 & 1) == 0))
    {
      _MergedGlobals_11 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18E170, 0);
      qword_1EE18E180 = 0x2800000003;
      dword_1EE18E188 = v5;
      word_1EE18E18C = 0;
      *&xmmword_1EE18E190 = 0;
      *(&xmmword_1EE18E190 + 1) = 0xFFFFFFFFLL;
      qword_1EE18E1A0 = v1;
      unk_1EE18E1A8 = 0;
      qword_1EE18E170 = &unk_1F5CADC70;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE18E170);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE18E190 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigGraphNodeDescription>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18E0C0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18E0C0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18E1B0);
      qword_1EE18E1B0 = &unk_1F5CADD08;
      __cxa_guard_release(&qword_1EE18E0C0);
    }
  }

  if ((byte_1EE18E031 & 1) == 0)
  {
    v1 = qword_1EE18E0A0;
    if (qword_1EE18E0A0 || (v1 = re::allocInfo_RigGraphNodeDescription(a1), qword_1EE18E0A0 = v1, re::initInfo_RigGraphNodeDescription(v1, v2, v3, v4), (byte_1EE18E031 & 1) == 0))
    {
      byte_1EE18E031 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18E1B0, 0);
      qword_1EE18E1C0 = 0x2800000003;
      dword_1EE18E1C8 = v5;
      word_1EE18E1CC = 0;
      *&xmmword_1EE18E1D0 = 0;
      *(&xmmword_1EE18E1D0 + 1) = 0xFFFFFFFFLL;
      qword_1EE18E1E0 = v1;
      unk_1EE18E1E8 = 0;
      qword_1EE18E1B0 = &unk_1F5CADD08;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE18E1B0);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE18E1D0 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigGraphInputValue>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18E0C8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18E0C8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18E1F0);
      qword_1EE18E1F0 = &unk_1F5CADDA0;
      __cxa_guard_release(&qword_1EE18E0C8);
    }
  }

  if ((byte_1EE18E032 & 1) == 0)
  {
    v1 = qword_1EE18E088;
    if (qword_1EE18E088 || (v1 = re::allocInfo_RigGraphInputValue(a1), qword_1EE18E088 = v1, re::initInfo_RigGraphInputValue(v1, v2, v3, v4), (byte_1EE18E032 & 1) == 0))
    {
      byte_1EE18E032 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18E1F0, 0);
      qword_1EE18E200 = 0x2800000003;
      dword_1EE18E208 = v5;
      word_1EE18E20C = 0;
      *&xmmword_1EE18E210 = 0;
      *(&xmmword_1EE18E210 + 1) = 0xFFFFFFFFLL;
      qword_1EE18E220 = v1;
      unk_1EE18E228 = 0;
      qword_1EE18E1F0 = &unk_1F5CADDA0;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE18E1F0);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE18E210 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::RigGraphDefinition>(re::StringID *a1, uint64_t a2, uint64_t a3)
{
  re::StringID::invalid(a3);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 40) = 0;
  *(a3 + 32) = 0;
  *(a3 + 208) = 0;
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 200) = 0;
  return result;
}

void re::internal::defaultDestruct<re::RigGraphDefinition>(uint64_t a1, uint64_t a2, re::StringID *a3)
{
  re::DynamicArray<re::RigGraphInputValue>::deinit(a3 + 176);
  re::DynamicArray<re::RigGraphConnection>::deinit(a3 + 17);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(a3 + 96);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(a3 + 56);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(a3 + 16);

  re::StringID::destroyString(a3);
}

double re::internal::defaultConstructV2<re::RigGraphDefinition>(uint64_t a1)
{
  re::StringID::invalid(a1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::RigGraphDefinition>(re::StringID *a1)
{
  re::DynamicArray<re::RigGraphInputValue>::deinit(a1 + 176);
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 17);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(a1 + 96);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(a1 + 56);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(a1 + 16);

  re::StringID::destroyString(a1);
}

void re::RigGraphConnection::~RigGraphConnection(re::RigGraphConnection *this)
{
  re::StringID::destroyString((this + 144));
  re::StringID::destroyString((this + 128));
  re::StringID::destroyString((this + 112));
  re::StringID::destroyString((this + 96));
  re::StringID::destroyString((this + 80));
  re::StringID::destroyString((this + 64));
  re::StringID::destroyString((this + 48));
  re::StringID::destroyString((this + 32));
  re::StringID::destroyString((this + 16));
  re::StringID::destroyString(this);
}

void *re::DynamicArray<re::RigGraphInputValue>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RigGraphInputValue>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v13, v15);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[12 * v9];
        v16 = v7;
        do
        {
          v11 = *v8;
          *v7 = *v7 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v7 = *v8 & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
          v7[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LOBYTE(v11) = v8[2];
          v7[2] = v7[2] & 0xFFFFFFFFFFFFFFFELL | v8[2] & 1;
          v7[2] = v8[2] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
          v7[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          LOBYTE(v11) = v8[4];
          v7[4] = v7[4] & 0xFFFFFFFFFFFFFFFELL | v8[4] & 1;
          v7[4] = v8[4] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
          v7[5] = v8[5];
          v8[5] = &str_67;
          v8[4] = 0;
          LOBYTE(v11) = v8[6];
          v7[6] = v7[6] & 0xFFFFFFFFFFFFFFFELL | v8[6] & 1;
          v7[6] = v8[6] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
          v7[7] = v8[7];
          v8[7] = &str_67;
          LOBYTE(v11) = v8[8];
          v8[6] = 0;
          v7[8] = v7[8] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
          v7[8] = v8[8] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
          v7[9] = v8[9];
          v8[9] = &str_67;
          v8[8] = 0;
          LOBYTE(v11) = v8[10];
          v7[10] = v7[10] & 0xFFFFFFFFFFFFFFFELL | v8[10] & 1;
          v7[10] = v8[10] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
          v7[11] = v8[11];
          v8[11] = &str_67;
          v8[10] = 0;
          re::StringID::destroyString((v8 + 10));
          re::StringID::destroyString((v8 + 8));
          re::StringID::destroyString((v8 + 6));
          re::StringID::destroyString((v8 + 4));
          re::StringID::destroyString((v8 + 2));
          re::StringID::destroyString(v8);
          v7 += 12;
          v8 += 12;
        }

        while (v8 != v10);
        v8 = v5[4];
        v7 = v16;
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::RigGraphParameterProxy>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v4 = a2;
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RigGraphParameterProxy>::setCapacity(v5, v4);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = v4;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v17 = v4;
        v10 = &v8[14 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LOBYTE(v12) = v8[2];
          v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v8[2] & 1;
          v11[2] = v8[2] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          LOBYTE(v12) = v8[4];
          v11[4] = v11[4] & 0xFFFFFFFFFFFFFFFELL | v8[4] & 1;
          v11[4] = v8[4] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[5] = v8[5];
          v8[5] = &str_67;
          v8[4] = 0;
          LOBYTE(v12) = v8[6];
          v11[6] = v11[6] & 0xFFFFFFFFFFFFFFFELL | v8[6] & 1;
          v11[6] = v8[6] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[7] = v8[7];
          v8[7] = &str_67;
          v8[6] = 0;
          LOBYTE(v12) = v8[8];
          v11[8] = v11[8] & 0xFFFFFFFFFFFFFFFELL | v8[8] & 1;
          v11[8] = v8[8] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[9] = v8[9];
          v8[9] = &str_67;
          LOBYTE(v12) = v8[10];
          v8[8] = 0;
          v11[10] = v11[10] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[10] = v8[10] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[11] = v8[11];
          v8[11] = &str_67;
          v8[10] = 0;
          LOBYTE(v12) = v8[12];
          v11[12] = v11[12] & 0xFFFFFFFFFFFFFFFELL | v8[12] & 1;
          v11[12] = v8[12] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[13] = v8[13];
          v8[13] = &str_67;
          v8[12] = 0;
          re::StringID::destroyString((v8 + 12));
          re::StringID::destroyString((v8 + 10));
          re::StringID::destroyString((v8 + 8));
          re::StringID::destroyString((v8 + 6));
          re::StringID::destroyString((v8 + 4));
          re::StringID::destroyString((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 14;
          v8 += 14;
        }

        while (v8 != v10);
        v8 = v5[4];
        v4 = v17;
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RigGraphNodeDescription>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, v2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = a1[2];
      a1[2] = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 3);
      *(a1 + 3) = v7;
      ++*&v9[40];
      re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
    }
  }

  else
  {
    if (v2)
    {
      v8 = v2;
    }

    else
    {
      v8 = 3;
    }
  }
}

void *re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 6), v9);
        v10 = *(a2 + 16) + v5;
        v11 = *(v10 + 8);
        result[1] = result[1] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        result[1] = *(v10 + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        result[2] = *(v10 + 16);
        *(v10 + 8) = 0;
        *(v10 + 16) = &str_67;
        v7 = *(a2 + 16);
        result[3] = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

void re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_0, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

_anonymous_namespace_ *re::DynamicArray<re::RigGraphInputValue>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RigGraphInputValue>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigGraphInputValue>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::RigGraphParameterProxy>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RigGraphParameterProxy>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigGraphParameterProxy>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::IntrospectionDynamicArray<re::RigGraphParameterProxy>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigGraphParameterProxy>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigGraphParameterProxy>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigGraphParameterProxy>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigGraphParameterProxy>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RigGraphParameterProxy>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigGraphParameterProxy>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RigGraphParameterProxy>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigGraphParameterProxy>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  re::StringID::invalid(&v11);
  re::StringID::invalid(&v12);
  re::StringID::invalid(&v13);
  re::StringID::invalid(&v14);
  re::StringID::invalid(&v15);
  *&v16 = 0;
  *(&v16 + 1) = &str_67;
  *&v17 = 0;
  *(&v17 + 1) = &str_67;
  v8 = re::DynamicArray<re::RigGraphParameterProxy>::add(a4, &v11);
  if (v17)
  {
    if (v17)
    {
    }
  }

  *&v17 = 0;
  *(&v17 + 1) = &str_67;
  if (v16)
  {
    if (v16)
    {
    }
  }

  *&v16 = 0;
  *(&v16 + 1) = &str_67;
  if (v15)
  {
    if (v15)
    {
    }
  }

  *&v15 = 0;
  *(&v15 + 1) = &str_67;
  if (v14)
  {
    if (v14)
    {
    }
  }

  *&v14 = 0;
  *(&v14 + 1) = &str_67;
  if (v13)
  {
    if (v13)
    {
    }
  }

  *&v13 = 0;
  *(&v13 + 1) = &str_67;
  if (v12)
  {
    if (v12)
    {
    }
  }

  *&v12 = 0;
  *(&v12 + 1) = &str_67;
  if (v11)
  {
    if (v11)
    {
    }
  }

  v9 = (*(a4 + 4) + 112 * *(a4 + 2) - 112);
  re::introspectionInitElement(a2, a3, a1[6], v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::RigGraphParameterProxy>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 112 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 112 * a3;
}

uint64_t re::DynamicArray<re::RigGraphParameterProxy>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 112 * v4;
        do
        {
          re::StringID::destroyString((v3 + v5 + 96));
          re::StringID::destroyString((v3 + v5 + 80));
          re::StringID::destroyString((v3 + v5 + 64));
          re::StringID::destroyString((v3 + v5 + 48));
          re::StringID::destroyString((v3 + v5 + 32));
          re::StringID::destroyString((v3 + v5 + 16));
          re::StringID::destroyString((v3 + v5));
          v5 += 112;
        }

        while (v6 != v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::DynamicArray<re::RigGraphParameterProxy>::resize(re::StringID *result, unint64_t a2)
{
  v4 = *(result + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 112 * a2;
    v9 = a2;
    do
    {
      v10 = *(result + 4) + v8;
      re::StringID::destroyString((v10 + 96));
      re::StringID::destroyString((v10 + 80));
      re::StringID::destroyString((v10 + 64));
      re::StringID::destroyString((v10 + 48));
      re::StringID::destroyString((v10 + 32));
      re::StringID::destroyString((v10 + 16));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 112;
    }

    while (v9 < *(result + 2));
  }

  else
  {
    if (*(result + 1) < a2)
    {
      re::DynamicArray<re::RigGraphParameterProxy>::setCapacity(result, a2);
      v4 = *(result + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 112 * v4 + 104;
      do
      {
        v7 = (*(result + 4) + v6);
        re::StringID::invalid((v7 - 13));
        re::StringID::invalid((v7 - 11));
        re::StringID::invalid((v7 - 9));
        re::StringID::invalid((v7 - 7));
        re::StringID::invalid((v7 - 5));
        *(v7 - 3) = 0;
        *(v7 - 2) = &str_67;
        v6 += 112;
        *(v7 - 1) = 0;
        *v7 = &str_67;
        --v5;
      }

      while (v5);
    }
  }

  *(result + 2) = a2;
  ++*(result + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigGraphParameterProxy>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 0;
      v10 = *(a1 + 32);
      v11 = 112 * v8;
      do
      {
        re::StringID::destroyString((v10 + v9 + 96));
        re::StringID::destroyString((v10 + v9 + 80));
        re::StringID::destroyString((v10 + v9 + 64));
        re::StringID::destroyString((v10 + v9 + 48));
        re::StringID::destroyString((v10 + v9 + 32));
        re::StringID::destroyString((v10 + v9 + 16));
        re::StringID::destroyString((v10 + v9));
        v9 += 112;
      }

      while (v11 != v9);
    }
  }

  else
  {
    re::DynamicArray<re::RigGraphParameterProxy>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigGraphParameterProxy>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RigGraphParameterProxy>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v17);
    re::TypeInfo::TypeInfo(v16, &v18);
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = 112 * v13;
      do
      {
        re::TypeInfo::destruct(v16, v14, a3, 0);
        re::TypeInfo::construct(v16, v14, a3, 0);
        v14 += 112;
        v15 -= 112;
      }

      while (v15);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 112 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 112 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphParameterProxy>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigGraphNodeDescription>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigGraphNodeDescription>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigGraphNodeDescription>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigGraphNodeDescription>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RigGraphNodeDescription>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RigGraphNodeDescription>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigGraphNodeDescription>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v11 = 0u;
  v12 = 0u;
  re::StringID::invalid(&v11);
  re::StringID::invalid(&v12);
  v8 = re::DynamicArray<re::RigGraphNodeDescription>::add(a4, &v11);
  if (v12)
  {
    if (v12)
    {
    }
  }

  *&v12 = 0;
  *(&v12 + 1) = &str_67;
  if (v11)
  {
    if (v11)
    {
    }
  }

  v9 = (*(a4 + 4) + 32 * *(a4 + 2) - 32);
  re::introspectionInitElement(a2, a3, a1[6], v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::RigGraphNodeDescription>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

void re::DynamicArray<re::RigGraphNodeDescription>::resize(re::StringID *result, unint64_t a2)
{
  v4 = *(result + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 32 * a2;
    v9 = a2;
    do
    {
      v10 = *(result + 4) + v8;
      re::StringID::destroyString((v10 + 16));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 32;
    }

    while (v9 < *(result + 2));
  }

  else
  {
    if (*(result + 1) < a2)
    {
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(result, a2);
      v4 = *(result + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 32 * v4;
      do
      {
        v7 = *(result + 4) + v6;
        re::StringID::invalid(v7);
        re::StringID::invalid((v7 + 16));
        v6 += 32;
        --v5;
      }

      while (v5);
    }
  }

  *(result + 2) = a2;
  ++*(result + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 32 * v8;
      do
      {
        re::StringID::destroyString((v9 + 16));
        re::StringID::destroyString(v9);
        v9 += 32;
        v10 -= 32;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RigGraphNodeDescription>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 32 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 32;
        v14 -= 32;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 32 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigGraphInputValue>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigGraphInputValue>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigGraphInputValue>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigGraphInputValue>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigGraphInputValue>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigGraphInputValue>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RigGraphInputValue>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigGraphInputValue>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RigGraphInputValue>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigGraphInputValue>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  re::StringID::invalid(&v11);
  re::StringID::invalid(&v12);
  re::StringID::invalid(&v13);
  re::StringID::invalid(&v14);
  re::StringID::invalid(&v15);
  *&v16 = 0;
  *(&v16 + 1) = &str_67;
  v8 = re::DynamicArray<re::RigGraphInputValue>::add(a4, &v11);
  if (v16)
  {
    if (v16)
    {
    }
  }

  *&v16 = 0;
  *(&v16 + 1) = &str_67;
  if (v15)
  {
    if (v15)
    {
    }
  }

  *&v15 = 0;
  *(&v15 + 1) = &str_67;
  if (v14)
  {
    if (v14)
    {
    }
  }

  *&v14 = 0;
  *(&v14 + 1) = &str_67;
  if (v13)
  {
    if (v13)
    {
    }
  }

  *&v13 = 0;
  *(&v13 + 1) = &str_67;
  if (v12)
  {
    if (v12)
    {
    }
  }

  *&v12 = 0;
  *(&v12 + 1) = &str_67;
  if (v11)
  {
    if (v11)
    {
    }
  }

  v9 = (*(a4 + 4) + 96 * *(a4 + 2) - 96);
  re::introspectionInitElement(a2, a3, a1[6], v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::RigGraphInputValue>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 96 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 96 * a3;
}

uint64_t re::DynamicArray<re::RigGraphInputValue>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 96 * v4;
        do
        {
          re::StringID::destroyString((v3 + v5 + 80));
          re::StringID::destroyString((v3 + v5 + 64));
          re::StringID::destroyString((v3 + v5 + 48));
          re::StringID::destroyString((v3 + v5 + 32));
          re::StringID::destroyString((v3 + v5 + 16));
          re::StringID::destroyString((v3 + v5));
          v5 += 96;
        }

        while (v6 != v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::DynamicArray<re::RigGraphInputValue>::resize(re::StringID *result, unint64_t a2)
{
  v4 = *(result + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 96 * a2;
    v9 = a2;
    do
    {
      v10 = *(result + 4) + v8;
      re::StringID::destroyString((v10 + 80));
      re::StringID::destroyString((v10 + 64));
      re::StringID::destroyString((v10 + 48));
      re::StringID::destroyString((v10 + 32));
      re::StringID::destroyString((v10 + 16));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 96;
    }

    while (v9 < *(result + 2));
  }

  else
  {
    if (*(result + 1) < a2)
    {
      re::DynamicArray<re::RigGraphInputValue>::setCapacity(result, a2);
      v4 = *(result + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 96 * v4 + 88;
      do
      {
        v7 = (*(result + 4) + v6);
        re::StringID::invalid((v7 - 11));
        re::StringID::invalid((v7 - 9));
        re::StringID::invalid((v7 - 7));
        re::StringID::invalid((v7 - 5));
        re::StringID::invalid((v7 - 3));
        *(v7 - 1) = 0;
        *v7 = &str_67;
        v6 += 96;
        --v5;
      }

      while (v5);
    }
  }

  *(result + 2) = a2;
  ++*(result + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigGraphInputValue>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 0;
      v10 = *(a1 + 32);
      v11 = 96 * v8;
      do
      {
        re::StringID::destroyString((v10 + v9 + 80));
        re::StringID::destroyString((v10 + v9 + 64));
        re::StringID::destroyString((v10 + v9 + 48));
        re::StringID::destroyString((v10 + v9 + 32));
        re::StringID::destroyString((v10 + v9 + 16));
        re::StringID::destroyString((v10 + v9));
        v9 += 96;
      }

      while (v11 != v9);
    }
  }

  else
  {
    re::DynamicArray<re::RigGraphInputValue>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigGraphInputValue>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RigGraphInputValue>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v17);
    re::TypeInfo::TypeInfo(v16, &v18);
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = 96 * v13;
      do
      {
        re::TypeInfo::destruct(v16, v14, a3, 0);
        re::TypeInfo::construct(v16, v14, a3, 0);
        v14 += 96;
        v15 -= 96;
      }

      while (v15);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 96 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 96 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphInputValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

float re::bounceEase(re *this, float a2, float a3)
{
  v3 = a3;
  if (a3 <= 1.0 || fabsf(a3 + -1.0) < (((fabsf(a3) + 1.0) + 1.0) * 0.00001))
  {
    v3 = 1.01;
  }

  v4 = fmaxf(this, 0.0);
  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  if (a2 >= 0.0)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = powf(v3, v4);
  v7 = v5 * (((1.0 - v6) / (1.0 - v3)) + (v6 * 0.5));
  v8 = logf(1.0 - (v7 * (1.0 - v3)));
  v9 = floorf(v8 / logf(v3));
  v10 = (1.0 - powf(v3, v9)) / (1.0 - v3);
  v11 = powf(v3, v9 + 1.0);
  v12 = (v7 - ((v10 + ((1.0 - v11) / (1.0 - v3))) * 0.5)) / (((1.0 - v11) / (1.0 - v3)) - ((v10 + ((1.0 - v11) / (1.0 - v3))) * 0.5));
  return powf(1.0 / v3, v4 - v9) * (1.0 - (v12 * v12));
}

float re::internal::evaluateCubicBezierEase<float>(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v4 = *&a1 * 3.0;
  v5 = -((*&a1 * 3.0) - ((*&a2 - *&a1) * 3.0));
  v6 = (1.0 - (*&a1 * 3.0)) - v5;
  v7 = 8;
  v8 = a3;
  while (1)
  {
    v9 = v8 * (v4 + (((v6 * v8) - ((*&a1 * 3.0) - ((*&a2 - *&a1) * 3.0))) * v8));
    if (vabds_f32(v9, a3) < a4)
    {
      break;
    }

    v10 = v4 + (((v5 + v5) + ((v6 * 3.0) * v8)) * v8);
    if (fabsf(v10) >= 0.000001)
    {
      v8 = v8 - ((v9 - a3) / v10);
      if (--v7)
      {
        continue;
      }
    }

    v8 = 0.0;
    if (a3 >= 0.0)
    {
      v8 = 1.0;
      if (a3 <= 1.0)
      {
        v11 = 0.0;
        v12 = 1.0;
        v13 = -1025;
        v8 = a3;
        do
        {
          if (__CFADD__(v13++, 1))
          {
            break;
          }

          v15 = v8 * (v4 + (((v6 * v8) - ((*&a1 * 3.0) - ((*&a2 - *&a1) * 3.0))) * v8));
          if (vabds_f32(v15, a3) < a4)
          {
            break;
          }

          if ((v15 - a3) >= 0.0)
          {
            v12 = v8;
          }

          else
          {
            v11 = v8;
          }

          v8 = v11 + (v12 - v11) * 0.5;
        }

        while (v11 < v12);
      }
    }

    break;
  }

  v16 = -((*(&a1 + 1) * 3.0) - ((*(&a2 + 1) - *(&a1 + 1)) * 3.0));
  return v8 * ((*(&a1 + 1) * 3.0) + ((v16 + (((1.0 - (*(&a1 + 1) * 3.0)) - v16) * v8)) * v8));
}

double re::internal::evaluateCubicBezierEase<double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v6 = *&a1 * 3.0;
  v7 = -(*&a1 * 3.0 - (*&a3 - *&a1) * 3.0);
  v8 = 1.0 - *&a1 * 3.0 - v7;
  v9 = 8;
  v10 = a5;
  while (1)
  {
    v11 = v10 * (v6 + (v8 * v10 - (*&a1 * 3.0 - (*&a3 - *&a1) * 3.0)) * v10);
    if (vabdd_f64(v11, a5) < a6)
    {
      break;
    }

    v12 = v6 + (v7 + v7 + v8 * 3.0 * v10) * v10;
    if (fabs(v12) >= 0.000001)
    {
      v10 = v10 - (v11 - a5) / v12;
      if (--v9)
      {
        continue;
      }
    }

    v10 = 0.0;
    if (a5 >= 0.0)
    {
      v10 = 1.0;
      if (a5 <= 1.0)
      {
        v13 = 0.0;
        v14 = 1.0;
        v15 = -1025;
        v10 = a5;
        do
        {
          if (__CFADD__(v15++, 1))
          {
            break;
          }

          v17 = v10 * (v6 + (v8 * v10 - (*&a1 * 3.0 - (*&a3 - *&a1) * 3.0)) * v10);
          if (vabdd_f64(v17, a5) < a6)
          {
            break;
          }

          if (v17 - a5 >= 0.0)
          {
            v14 = v10;
          }

          else
          {
            v13 = v10;
          }

          v10 = v13 + (v14 - v13) * 0.5;
        }

        while (v13 < v14);
      }
    }

    break;
  }

  v18 = -(*&a2 * 3.0 - (*&a4 - *&a2) * 3.0);
  return v10 * (*&a2 * 3.0 + (v18 + (1.0 - *&a2 * 3.0 - v18) * v10) * v10);
}

void re::EasingFunctionBase::evaluate(re::EasingFunctionBase *this, __n128 a2, uint64_t a3)
{
  v3 = *(this + 3);
  if (v3 == 2)
  {
    if (a2.n128_f32[0] <= 0.5)
    {
      (*(*this + 40))(this, a3, a2.n128_f32[0] + a2.n128_f32[0]);
    }

    else
    {
      (*(*this + 40))(this, a3, (1.0 - a2.n128_f32[0]) + (1.0 - a2.n128_f32[0]));
    }
  }

  else if (v3 == 1)
  {
    (*(*this + 40))(this, a3, 1.0 - a2.n128_f32[0]);
  }

  else if (v3)
  {
    re::internal::assertLog(4, a3, a2.n128_f64[0], "assertion failure: '%s' (%s:line %i) Invalid easing mode.", "!Unreachable code", "evaluate", 224);
    _os_crash("assertion failure: (!Unreachable code) Invalid easing mode.");
    __break(1u);
  }

  else
  {
    v4 = *(*this + 40);

    v4(a2);
  }
}

void re::RigGraphNode::inputType(re::RigGraphNode *this@<X0>, const re::RigEnvironment *a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = *(this + 2);
  if (v7 <= a3)
  {
    v15 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v19 = 797;
    v20 = 2048;
    v21 = a3;
    v22 = 2048;
    v23 = v7;
    _os_log_send_and_compose_impl(v10, &v15, &v24, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
LABEL_12:
    v15 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v19 = 797;
    v20 = 2048;
    v21 = v7;
    v22 = 2048;
    v23 = v4;
    _os_log_send_and_compose_impl(v13, &v15, &v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(*(this + 4) + 40 * a3 + 16);
  v4 = *(this + 17);
  if (v4 <= v7)
  {
    goto LABEL_12;
  }

  re::RigEnvironment::lookupRigDataType(&v24, a2, (*(this + 19) + 16 * v7));
  *a4 = BYTE8(v24);
  re::StringID::StringID((a4 + 8), &v25);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray((a4 + 24), &v26);
  if (v24 == 1)
  {
    v8 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v26);
    if (v25)
    {
      if (v25)
      {
      }
    }
  }
}

void re::RigGraphNode::inputValue(uint64_t *__return_ptr a1@<X8>, re::RigGraphNode *this@<X0>, const re::RigEnvironment *a3@<X1>, re::EvaluationTree *a4@<X2>, re::Allocator *a5@<X3>, unint64_t a6@<X4>)
{
  re::RigGraphNode::inputType(this, a3, a6, v11);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  a1[5] = 0;
  a1[6] = &str_67;
  a1[11] = 0;
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = 0;
  *(a1 + 20) = 0;
  *(a1 + 96) = 0;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  a1[22] = -1;
  a1[23] = 0;
  a1[27] = 0;
  a1[28] = 0;
  a1[34] = 0;
  *(a1 + 66) = 0;
  a1[29] = &str_67;
  a1[30] = 0;
  a1[31] = 0;
  a1[32] = 0;
  re::RigDataValue::init(a1, a5, a3, v11, a4);
  v10 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v13);
  if (v12)
  {
    if (v12)
    {
    }
  }
}

uint64_t re::RigGraphSystem::buildFromDefinition@<X0>(uint64_t a1@<X0>, _anonymous_namespace_ *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v260 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 192) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0;
  v7 = *(a2 + 14);
  v236 = v7;
  v229 = 9 * v7;
  if (v7)
  {
    if (v7 >= 0x1C71C71C71C71C8)
    {
LABEL_327:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 144, v236);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v223, v224);
      __break(1u);
LABEL_328:
      re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }

    v8 = (*(*a1 + 32))(a1, 144 * v7, 8);
    if (!v8)
    {
      goto LABEL_328;
    }

    v10 = v8;
    v11 = v236 - 1;
    if (v236 != 1)
    {
      v10 = v8;
      do
      {
        *v10 = 0;
        *(v10 + 8) = 0;
        *(v10 + 32) = 0uLL;
        *(v10 + 48) = 0uLL;
        *(v10 + 16) = 0uLL;
        *(v10 + 52) = 0x7FFFFFFF;
        *(v10 + 72) = 0;
        *(v10 + 80) = 0;
        *(v10 + 64) = 0;
        *(v10 + 88) = 0;
        *(v10 + 136) = 0;
        *(v10 + 96) = 0uLL;
        *(v10 + 112) = 0uLL;
        *(v10 + 128) = 0;
        v10 += 144;
        --v11;
      }

      while (v11);
    }

    v237 = v8;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 52) = 0x7FFFFFFF;
    *(v10 + 72) = 0;
    *(v10 + 80) = 0;
    *(v10 + 64) = 0;
    *(v10 + 88) = 0;
    *(v10 + 136) = 0;
    *(v10 + 96) = 0u;
    *(v10 + 112) = 0u;
    *(v10 + 128) = 0;
    v12 = *(v5 + 14);
    v243 = 0;
    v241 = 0u;
    v242 = 0u;
    v244 = 0x7FFFFFFFLL;
    v240 = 0;
    if (v12)
    {
      v13 = 0;
      while (1)
      {
        re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v241, (*(v5 + 16) + 32 * v13), &v240);
        *buf = v240;
        memset(v250, 0, sizeof(v250));
        *&buf[8] = 0;
        DWORD1(v250[2]) = 0x7FFFFFFF;
        *&v251[16] = 0;
        LODWORD(v252) = 0;
        v253 = 0u;
        v254 = 0u;
        v255 = 0;
        v256 = 0;
        *v251 = a1;
        re::DynamicArray<float *>::setCapacity(v251, 0);
        LODWORD(v252) = v252 + 1;
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v250, a1, 3);
        v15 = v240;
        if (v236 <= v240)
        {
          goto LABEL_305;
        }

        v16 = v237 + 144 * v240;
        *v16 = *buf;
        *(v16 + 2) = *&buf[8];
        v17 = *(v16 + 2);
        v18 = *&v250[0];
        if (v17)
        {
          v19 = v17 == *&v250[0];
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          *(v16 + 2) = *&v250[0];
          *&v250[0] = v17;
          v20 = *&v250[1];
          v21 = *(v16 + 24);
          *(v16 + 3) = *(&v250[0] + 1);
          *(v16 + 4) = v20;
          *(v250 + 8) = v21;
          v22 = *(v16 + 40);
          *(v16 + 40) = *(&v250[1] + 8);
          *(&v250[1] + 8) = v22;
        }

        else
        {
          if (*(v16 + 11))
          {
            v23 = *(v16 + 10);
            if (v23)
            {
              memset_pattern16(*(v16 + 3), &unk_1E304C660, 4 * v23);
            }

            v24 = *(v16 + 12);
            if (v24)
            {
              v25 = 8;
              do
              {
                v26 = *(v16 + 4);
                v27 = *(v26 + v25);
                if (v27 < 0)
                {
                  *(v26 + v25) = v27 & 0x7FFFFFFF;
                }

                v25 += 24;
                --v24;
              }

              while (v24);
            }

            *(v16 + 11) = 0;
            *(v16 + 12) = 0;
            v28 = *(v16 + 14) + 1;
            *(v16 + 13) = 0x7FFFFFFF;
            *(v16 + 14) = v28;
          }

          if (v18)
          {
            v14 = HIDWORD(v250[1]);
            if (*(v16 + 10) < HIDWORD(v250[1]))
            {
              re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::setCapacity((v16 + 16), HIDWORD(v250[1]));
            }

            v29 = LODWORD(v250[2]);
            if (LODWORD(v250[2]))
            {
              v30 = (*&v250[1] + 16);
              do
              {
                if ((*(v30 - 1) & 0x80000000) != 0)
                {
                  v31 = *(v30 - 2);
                  v32 = *(v16 + 10);
                  v33 = v31 % v32;
                  v4 = *(v16 + 13);
                  if (v4 == 0x7FFFFFFF)
                  {
                    v4 = *(v16 + 12);
                    v34 = v4;
                    if (v4 == v32)
                    {
                      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::setCapacity((v16 + 16), 2 * *(v16 + 11));
                      v33 = v31 % *(v16 + 10);
                      v34 = *(v16 + 12);
                    }

                    *(v16 + 12) = v34 + 1;
                    v35 = *(v16 + 4);
                    v36 = *(v35 + 24 * v4 + 8);
                  }

                  else
                  {
                    v35 = *(v16 + 4);
                    v36 = *(v35 + 24 * v4 + 8);
                    *(v16 + 13) = v36 & 0x7FFFFFFF;
                  }

                  *(v35 + 24 * v4 + 8) = v36 | 0x80000000;
                  *(*(v16 + 4) + 24 * v4 + 8) = *(*(v16 + 4) + 24 * v4 + 8) & 0x80000000 | *(*(v16 + 3) + 4 * v33);
                  *(*(v16 + 4) + 24 * v4) = v31;
                  *(*(v16 + 4) + 24 * v4 + 16) = *v30;
                  *(*(v16 + 3) + 4 * v33) = v4;
                  ++*(v16 + 11);
                  v5 = a2;
                }

                v30 += 3;
                --v29;
              }

              while (v29);
            }

            ++*(v16 + 14);
          }
        }

        v3 = *(v16 + 8);
        if (v3)
        {
          v37 = *v251 == 0;
        }

        else
        {
          v37 = 1;
        }

        if (!v37 && v3 != *v251)
        {
          goto LABEL_317;
        }

        *(v16 + 8) = *v251;
        *v251 = v3;
        v39 = *(v16 + 72);
        *(v16 + 72) = *&v251[8];
        *&v251[8] = v39;
        v40 = *(v16 + 12);
        *(v16 + 12) = v253;
        *&v253 = v40;
        v41 = v252;
        LODWORD(v252) = v252 + 1;
        ++*(v16 + 22);
        v42 = *(v16 + 13);
        if (v42)
        {
          if (*(&v253 + 1) && v42 != *(&v253 + 1))
          {
            break;
          }
        }

        *(v16 + 13) = *(&v253 + 1);
        *(&v253 + 1) = v42;
        v43 = *(v16 + 7);
        *(v16 + 7) = v254;
        v254 = v43;
        v44 = *(v16 + 17);
        *(v16 + 17) = v256;
        v256 = v44;
        v4 = v255++;
        ++*(v16 + 32);
        if (v42)
        {
          if (v44)
          {
            (*(*v42 + 40))(v42);
          }

          v256 = 0;
          v254 = 0uLL;
          *(&v253 + 1) = 0;
          v255 = v4 + 2;
        }

        if (v3)
        {
          if (v40)
          {
            (*(*v3 + 40))(v3, v40);
          }

          *&v253 = 0;
          memset(v251, 0, sizeof(v251));
          LODWORD(v252) = v41 + 2;
        }

        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v250);
        v13 = v240 + 1;
        v240 = v13;
        if (v13 >= *(v5 + 14))
        {
          goto LABEL_61;
        }
      }

LABEL_318:
      re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
      _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
LABEL_319:
      *v246 = 0;
      *v251 = 0u;
      memset(v250, 0, sizeof(v250));
      *buf = 0u;
      v217 = MEMORY[0x1E69E9C10];
      v218 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v257[0]) = 136315906;
      *(v257 + 4) = "operator[]";
      WORD6(v257[0]) = 1024;
      if (v218)
      {
        v219 = 3;
      }

      else
      {
        v219 = 2;
      }

      *(v257 + 14) = 468;
      WORD1(v257[1]) = 2048;
      *(&v257[1] + 4) = v3;
      WORD6(v257[1]) = 2048;
      *(&v257[1] + 14) = v5;
      _os_log_send_and_compose_impl(v219, v246, buf, 80, &dword_1E1C61000, v217, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v257, 38, v225, v226);
      _os_crash_msg();
      __break(1u);
LABEL_323:
      *v246 = 0;
      *v251 = 0u;
      memset(v250, 0, sizeof(v250));
      *buf = 0u;
      v220 = MEMORY[0x1E69E9C10];
      v221 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v257[0]) = 136315906;
      *(v257 + 4) = "operator[]";
      WORD6(v257[0]) = 1024;
      if (v221)
      {
        v222 = 3;
      }

      else
      {
        v222 = 2;
      }

      *(v257 + 14) = 468;
      WORD1(v257[1]) = 2048;
      *(&v257[1] + 4) = v4;
      WORD6(v257[1]) = 2048;
      *(&v257[1] + 14) = v5;
      _os_log_send_and_compose_impl(v222, v246, buf, 80, &dword_1E1C61000, v220, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v257, 38, v225, v226);
      _os_crash_msg();
      __break(1u);
      goto LABEL_327;
    }
  }

  else
  {
    v237 = 0;
    v243 = 0;
    v241 = 0uLL;
    v242 = 0uLL;
    v244 = 0x7FFFFFFFLL;
  }

LABEL_61:
  v15 = 0x94D049BB133111EBLL;
  v45 = *(v5 + 19);
  if (v45)
  {
    v46 = *(a2 + 21);
    v234 = &v46[20 * v45];
    do
    {
      v47 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v46 >> 31) ^ (*v46 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v46 >> 31) ^ (*v46 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v241, v46, v47 ^ (v47 >> 31), buf);
      v48 = *&buf[12];
      v49 = v242;
      v50 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v46[10] >> 31) ^ (v46[10] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v46[10] >> 31) ^ (v46[10] >> 1))) >> 27));
      v51 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v241, v46 + 10, v50 ^ (v50 >> 31), buf);
      v4 = *&buf[12];
      v5 = v242;
      if (v48 != 0x7FFFFFFF || (*v46 & 0xFFFFFFFFFFFFFFFELL) == 0x6C9D3C && ((v51 = v46[1], v51 == "this") || (v51 = strcmp(v51, "this"), !v51)))
      {
        if (v4 != 0x7FFFFFFF || (v46[10] & 0xFFFFFFFFFFFFFFFELL) == 0x6C9D3C && ((v56 = v46[11], v56 == "this") || (v51 = strcmp(v56, "this"), !v51)))
        {
          v59 = v49 + 32 * v48;
          if (v48 != 0x7FFFFFFF)
          {
            v3 = *(v59 + 24);
            if (v236 <= v3)
            {
              goto LABEL_309;
            }

            *buf = v46;
            re::DynamicArray<re::RigDataValue *>::add((v237 + 144 * v3 + 64), buf);
          }

          if (v4 != 0x7FFFFFFF)
          {
            v4 = v5 + 32 * v4;
            v3 = *(v4 + 24);
            v5 = v236;
            if (v236 <= v3)
            {
              goto LABEL_313;
            }

            *buf = v46;
            re::DynamicArray<re::RigDataValue *>::add((v237 + 144 * v3 + 64), buf);
            if (v48 != 0x7FFFFFFF)
            {
              v3 = *(v59 + 24);
              v5 = v236;
              if (v236 <= v3)
              {
                goto LABEL_319;
              }

              v4 = *(v4 + 24);
              if (v236 <= v4)
              {
                goto LABEL_323;
              }

              v60 = v237 + 144 * v3;
              v61 = v237 + 144 * v4;
              *buf = v61;
              v62 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v61 ^ (v61 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v61 ^ (v61 >> 30))) >> 27));
              v63 = v62 ^ (v62 >> 31);
              v64 = *(v60 + 10);
              if (v64)
              {
                v65 = v63 % v64;
                v66 = *(*(v60 + 3) + 4 * (v63 % v64));
                if (v66 != 0x7FFFFFFF)
                {
                  v67 = *(v60 + 4);
                  while (*(v67 + 24 * v66 + 16) != v61)
                  {
                    LODWORD(v66) = *(v67 + 24 * v66 + 8) & 0x7FFFFFFF;
                    if (v66 == 0x7FFFFFFF)
                    {
                      goto LABEL_91;
                    }
                  }

                  goto LABEL_92;
                }
              }

              else
              {
                LODWORD(v65) = 0;
              }

LABEL_91:
              re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::addAsMove((v60 + 16), v65, v63, buf);
              ++*(v60 + 14);
            }
          }
        }

        else
        {
          v57 = *re::animationLogObjects(v51);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = v46[11];
            *buf = 136315138;
            *&buf[4] = v58;
            v54 = v57;
            v55 = "Connection with invalid target node '%s' in RigGraphDefinition ignored.";
            goto LABEL_75;
          }
        }
      }

      else
      {
        v52 = *re::animationLogObjects(v51);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = v46[1];
          *buf = 136315138;
          *&buf[4] = v53;
          v54 = v52;
          v55 = "Connection with invalid source node '%s' in RigGraphDefinition ignored.";
LABEL_75:
          _os_log_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_DEFAULT, v55, buf, 0xCu);
        }
      }

LABEL_92:
      v46 += 20;
    }

    while (v46 != v234);
  }

  v68 = *(a2 + 24);
  v5 = v236;
  v69 = v237;
  if (v68)
  {
    v70 = *(a2 + 26);
    v3 = 96 * v68;
    do
    {
      v71 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v70 >> 31) ^ (*v70 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v70 >> 31) ^ (*v70 >> 1))) >> 27));
      v72 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v241, v70, v71 ^ (v71 >> 31), buf);
      v4 = *(v242 + 32 * *&buf[12] + 24);
      if (v236 <= v4)
      {
        goto LABEL_297;
      }

      v73 = v69 + 144 * v4;
      v74 = *(v73 + 14);
      v75 = *(v73 + 15);
      if (v75 >= v74)
      {
        v76 = v75 + 1;
        if (v74 < v75 + 1)
        {
          if (*(v73 + 13))
          {
            if (v74)
            {
              v77 = 2 * v74;
            }

            else
            {
              v77 = 8;
            }

            if (v77 <= v76)
            {
              v78 = v75 + 1;
            }

            else
            {
              v78 = v77;
            }

            re::DynamicArray<float *>::setCapacity(v73 + 13, v78);
          }

          else
          {
            re::DynamicArray<float *>::setCapacity(v73 + 13, v76);
            ++*(v73 + 32);
          }
        }

        v75 = *(v73 + 15);
        v69 = v237;
      }

      *(*(v73 + 17) + 8 * v75) = v70;
      *(v73 + 15) = v75 + 1;
      ++*(v73 + 32);
      v70 += 12;
      v3 -= 96;
    }

    while (v3);
  }

  *&v250[1] = 0;
  *&buf[8] = 0;
  *&v250[0] = 0;
  DWORD2(v250[0]) = 0;
  *buf = a1;
  v79 = re::DynamicArray<float *>::setCapacity(buf, v236);
  v80 = ++DWORD2(v250[0]);
  v81 = *&v250[0];
  if (v236)
  {
    v82 = 16 * v229;
    v83 = v69;
    do
    {
      if (v81 >= *&buf[8])
      {
        if (*&buf[8] < v81 + 1)
        {
          if (*buf)
          {
            v84 = 2 * *&buf[8];
            if (!*&buf[8])
            {
              v84 = 8;
            }

            if (v84 <= v81 + 1)
            {
              v85 = v81 + 1;
            }

            else
            {
              v85 = v84;
            }

            v79 = re::DynamicArray<float *>::setCapacity(buf, v85);
            v80 = DWORD2(v250[0]);
          }

          else
          {
            v79 = re::DynamicArray<float *>::setCapacity(buf, v81 + 1);
            v80 = DWORD2(v250[0]) + 1;
          }
        }

        v81 = *&v250[0];
      }

      *(*&v250[1] + 8 * v81++) = v83;
      *&v250[0] = v81;
      DWORD2(v250[0]) = ++v80;
      v83 = (v83 + 144);
      v82 -= 144;
    }

    while (v82);
  }

  *&v248[2] = 0;
  memset(&v246[8], 0, 20);
  *v246 = a1;
  re::DynamicArray<re::RigGraphSystem::BuildTask>::setCapacity(v246, v236);
  ++*&v246[24];
  if (v81)
  {
    do
    {
      re::RigGraphSystem::visitTask(**&v250[1], buf, v246);
    }

    while (*&v250[0]);
  }

  if (*buf && *&v250[1])
  {
    (*(**buf + 40))();
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v241);
  if (a1 && v236)
  {
    v86 = 16 * v229;
    v87 = v69 + 104;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v87);
      re::DynamicArray<unsigned long>::deinit(v87 - 40);
      v88 = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v87 - 88));
      v87 += 144;
      v86 -= 144;
    }

    while (v86);
    (*(*a1 + 40))(a1, v69, v88);
  }

  v243 = 0;
  v241 = 0u;
  v242 = 0u;
  v244 = 0x7FFFFFFFLL;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(&v241, a1, 3);
  *(a3 + 120) = a1;
  v238 = (a3 + 120);
  re::DynamicArray<re::StringID>::setCapacity((a3 + 120), 0);
  ++*(a3 + 144);
  v89 = *(a2 + 4);
  *a3 = a1;
  re::DynamicArray<re::RigGraphNodeParameter>::setCapacity(a3, v89);
  ++*(a3 + 24);
  v90 = *(a2 + 4);
  if (v90)
  {
    v91 = 0;
    v92 = *(a2 + 6);
    v93 = 112 * v90;
    while (1)
    {
      v94 = (v92 + v91 + 64);
      v95 = *&v94->var0;
      if (*&v94->var0 >= 0xFFFFFFFFFFFFFFFELL && (v95 & 1) == 0)
      {
        break;
      }

      if (v95 <= 1)
      {
        v96 = *(v92 + v91 + 72);
        if (v96)
        {
          goto LABEL_140;
        }
      }

LABEL_142:
      re::DynamicArray<re::StringID>::add(v238, v94);
      *&v257[0] = *(a3 + 136) - 1;
      v97 = *&v257[0];
      re::StringID::StringID(buf, (v92 + v91 + 80));
      *&v250[0] = v97;
      re::StringID::StringID((v250 + 8), (v92 + v91 + 96));
      v98 = re::DynamicArray<re::RigGraphNodeParameter>::add(a3, buf);
      if (BYTE8(v250[0]))
      {
        if (BYTE8(v250[0]))
        {
        }
      }

      *(&v250[0] + 1) = 0;
      *&v250[1] = &str_67;
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      *buf = "this";
      *&buf[8] = 4;
      v99 = strlen(*(v92 + v91 + 88));
      *&v250[0] = *(v92 + v91 + 88);
      *(&v250[0] + 1) = v99;
      re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::add(&v241, buf, v257);
      v91 += 112;
      if (v93 == v91)
      {
        goto LABEL_149;
      }
    }

    v96 = *(v92 + v91 + 72);
LABEL_140:
    if (!*v96)
    {
      v94 = (v92 + v91 + 16);
    }

    goto LABEL_142;
  }

LABEL_149:
  *(a3 + 40) = a1;
  re::DynamicArray<re::RigGraphNodeParameter>::setCapacity((a3 + 40), *(a2 + 9));
  ++*(a3 + 64);
  v100 = *(a2 + 9);
  if (v100)
  {
    v101 = *(a2 + 11) + 64;
    for (i = 112 * v100; i; i -= 112)
    {
      v103 = *v101;
      if (*v101 < 0xFFFFFFFFFFFFFFFELL || (v103 & 1) != 0)
      {
        v105 = v101;
        if (v103 > 1)
        {
          goto LABEL_159;
        }

        v104 = *(v101 + 8);
        v105 = v101;
        if (!v104)
        {
          goto LABEL_159;
        }
      }

      else
      {
        v104 = *(v101 + 8);
      }

      if (*v104)
      {
        v105 = v101;
      }

      else
      {
        v105 = (v101 - 48);
      }

LABEL_159:
      re::DynamicArray<re::StringID>::add(v238, v105);
      *&v257[0] = *(a3 + 136) - 1;
      v106 = *&v257[0];
      re::StringID::StringID(buf, (v101 + 16));
      v250[0] = v106;
      *&v250[1] = &str_67;
      v107 = re::DynamicArray<re::RigGraphNodeParameter>::add((a3 + 40), buf);
      if (BYTE8(v250[0]))
      {
        if (BYTE8(v250[0]))
        {
        }
      }

      *(&v250[0] + 1) = 0;
      *&v250[1] = &str_67;
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      *buf = "this";
      *&buf[8] = 4;
      v108 = strlen(*(v101 + 24));
      *&v250[0] = *(v101 + 24);
      *(&v250[0] + 1) = v108;
      re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::add(&v241, buf, v257);
      v101 += 112;
    }
  }

  *(a3 + 80) = a1;
  v109 = *&v246[16];
  v228 = (a3 + 80);
  re::DynamicArray<re::RigGraphNodeChild>::setCapacity((a3 + 80), *&v246[16]);
  *(a3 + 160) = a1;
  v4 = a3 + 160;
  ++*(a3 + 104);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::setCapacity((a3 + 160), 0);
  ++*(a3 + 184);
  v227 = v109;
  if (v109)
  {
    v230 = *&v248[2];
    v5 = (*&v248[2] + 144 * v109);
    v110 = v5;
    v236 = (a3 + 160);
LABEL_168:
    v112 = *(v110 - 18);
    v111 = (v110 - 144);
    v15 = v112;
    v3 = *(a2 + 14);
    if (v3 <= v112)
    {
      goto LABEL_301;
    }

    v231 = v111;
    v113 = (*(a2 + 16) + 32 * v15);
    *buf = 0;
    *&buf[8] = &str_67;
    memset(v250, 0, 28);
    v252 = 0;
    v250[2] = 0u;
    memset(v251, 0, 20);
    re::StringID::operator=(buf, v113 + 2);
    v114 = *(v5 - 8);
    *&v250[0] = a1;
    re::DynamicArray<re::RigGraphNodeParameter>::setCapacity(v250, v114);
    ++DWORD2(v250[1]);
    v115 = *(v5 - 8);
    *(&v250[2] + 1) = a1;
    re::DynamicArray<re::RigGraphNodeOutputParameter>::setCapacity(&v250[2] + 1, v115);
    ++*&v251[16];
    v235 = v5;
    v116 = *(v5 - 8);
    if (!v116)
    {
      goto LABEL_250;
    }

    v117 = *(v5 - 6);
    v118 = &v117[v116];
    while (1)
    {
      v119 = *v117;
      if (re::StringID::operator==(*v117, v113))
      {
        v4 = *&v251[8];
        if (*&v251[8])
        {
          v120 = v252;
          while (!re::StringID::operator==(v120, (v119 + 32)))
          {
            v120 += 8;
            if (!--v4)
            {
              goto LABEL_176;
            }
          }

          goto LABEL_187;
        }

LABEL_176:
        v121 = strlen(*(v119 + 88));
        *&v257[0] = *(v119 + 88);
        *(&v257[0] + 1) = v121;
        v122 = strlen(*(v119 + 120));
        *&v257[1] = *(v119 + 120);
        *(&v257[1] + 1) = v122;
        v123 = re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::tryGet(&v241, v257);
        if (v123)
        {
          v124 = *(v119 + 144);
          if (v124 >= 0xFFFFFFFFFFFFFFFELL && (v124 & 1) == 0)
          {
            v125 = *(v119 + 152);
LABEL_182:
            if (!*v125)
            {
              *v245 = *v123;
              v4 = *v245;
              re::StringID::StringID(v257, (v119 + 32));
              v257[1] = v4;
              *(&v258 + 1) = 0;
              v257[2] = 0uLL;
              LODWORD(v258) = 0;
              re::DynamicArray<re::RigGraphNodeOutputParameter>::add((&v250[2] + 8), v257);
              v126 = re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit(&v257[1] + 8);
              if (v257[0])
              {
                if (v257[0])
                {
                }
              }

              v127 = strlen(*(v119 + 8));
              *&v257[0] = *(v119 + 8);
              *(&v257[0] + 1) = v127;
              v128 = strlen(*(v119 + 40));
              *&v257[1] = *(v119 + 40);
              *(&v257[1] + 1) = v128;
              re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::add(&v241, v257, v245);
            }

            goto LABEL_187;
          }

          if (v124 <= 1)
          {
            v125 = *(v119 + 152);
            if (v125)
            {
              goto LABEL_182;
            }
          }
        }
      }

LABEL_187:
      if (++v117 == v118)
      {
        v129 = *(v235 - 8);
        if (v129)
        {
          v15 = *(v235 - 6);
          v130 = v15 + 8 * v129;
          while (1)
          {
            v131 = *v15;
            if (re::StringID::operator==((*v15 + 80), v113))
            {
              if (*&v250[1])
              {
                v132 = *&v250[2];
                v133 = 40 * *&v250[1];
                while (!re::StringID::operator==(v132, (v131 + 112)))
                {
                  v132 += 5;
                  v133 -= 40;
                  if (!v133)
                  {
                    goto LABEL_195;
                  }
                }
              }

              else
              {
LABEL_195:
                v134 = strlen(*(v131 + 88));
                *&v257[0] = *(v131 + 88);
                *(&v257[0] + 1) = v134;
                v135 = strlen(*(v131 + 120));
                *&v257[1] = *(v131 + 120);
                *(&v257[1] + 1) = v135;
                v136 = re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::tryGet(&v241, v257);
                if (v136)
                {
                  v137 = v136;
                  re::StringID::StringID(v257, (v131 + 112));
                  *&v257[1] = *v137;
                  re::StringID::invalid((&v257[1] + 8));
                }

                else
                {
                  v138 = strlen(*(v131 + 8));
                  *&v257[0] = *(v131 + 8);
                  *(&v257[0] + 1) = v138;
                  v139 = strlen(*(v131 + 40));
                  *&v257[1] = *(v131 + 40);
                  *(&v257[1] + 1) = v139;
                  v140 = re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>::operator()(v257);
                  re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::findEntry<re::Pair<re::StringSlice,re::StringSlice,true>>(v245, &v241, v257, v140);
                  v141 = *(v242 + 56 * *&v245[12] + 40);
                  re::StringID::StringID(v257, (v131 + 112));
                  *&v257[1] = v141;
                  re::StringID::StringID((&v257[1] + 8), (v131 + 64));
                }

                v142 = re::DynamicArray<re::RigGraphNodeParameter>::add(v250, v257);
                if (BYTE8(v257[1]))
                {
                  if (BYTE8(v257[1]))
                  {
                  }
                }

                *(&v257[1] + 1) = 0;
                *&v257[2] = &str_67;
                if (v257[0])
                {
                  if (v257[0])
                  {
                  }
                }
              }
            }

            if (!re::StringID::operator==(v131, v113))
            {
              goto LABEL_249;
            }

            v143 = *&v251[8];
            if (*&v251[8])
            {
              v4 = 0;
              v144 = v252;
              while (!re::StringID::operator==(v144, (v131 + 32)))
              {
                ++v4;
                v144 += 8;
                if (v143 == v4)
                {
                  goto LABEL_209;
                }
              }
            }

            else
            {
LABEL_209:
              re::DynamicArray<re::StringID>::add(v238, (v131 + 16));
              *v245 = *(a3 + 136) - 1;
              v145 = *v245;
              re::StringID::StringID(v257, (v131 + 32));
              v257[1] = v145;
              *(&v258 + 1) = 0;
              v257[2] = 0uLL;
              LODWORD(v258) = 0;
              re::DynamicArray<re::RigGraphNodeOutputParameter>::add((&v250[2] + 8), v257);
              v146 = re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit(&v257[1] + 8);
              if (v257[0])
              {
                if (v257[0])
                {
                }
              }

              v4 = *&v251[8] - 1;
              v147 = strlen(*(v131 + 8));
              *&v257[0] = *(v131 + 8);
              *(&v257[0] + 1) = v147;
              v148 = strlen(*(v131 + 40));
              *&v257[1] = *(v131 + 40);
              *(&v257[1] + 1) = v148;
              re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::add(&v241, v257, v245);
            }

            v5 = (v131 + 144);
            v149 = *(v131 + 144);
            if (v149 >= 0xFFFFFFFFFFFFFFFELL && (v149 & 1) == 0)
            {
              break;
            }

            if (v149 <= 1)
            {
              v150 = *(v131 + 152);
              if (v150)
              {
                goto LABEL_218;
              }
            }

LABEL_219:
            v151 = v130;
            v152 = strlen(*(v131 + 88));
            *&v257[0] = *(v131 + 88);
            *(&v257[0] + 1) = v152;
            v153 = strlen(*(v131 + 120));
            *&v257[1] = *(v131 + 120);
            *(&v257[1] + 1) = v153;
            v154 = re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::tryGet(&v241, v257);
            if (v154)
            {
              v3 = *v154;
              v239 = *v154;
            }

            else
            {
              re::DynamicArray<re::StringID>::add(v238, (v131 + 96));
              v3 = *(a3 + 136) - 1;
              v239 = v3;
              v155 = strlen(*(v131 + 88));
              *&v257[0] = *(v131 + 88);
              *(&v257[0] + 1) = v155;
              v156 = strlen(*(v131 + 120));
              *&v257[1] = *(v131 + 120);
              *(&v257[1] + 1) = v156;
              re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::add(&v241, v257, &v239);
            }

            v157 = *&v251[8];
            if (*&v251[8] <= v4)
            {
              v240 = 0;
              v258 = 0u;
              v259 = 0u;
              memset(v257, 0, sizeof(v257));
              v199 = MEMORY[0x1E69E9C10];
              v200 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v245 = 136315906;
              *&v245[4] = "operator[]";
              *&v245[12] = 1024;
              if (v200)
              {
                v201 = 3;
              }

              else
              {
                v201 = 2;
              }

              *&v245[14] = 789;
              *&v245[18] = 2048;
              *&v245[20] = v4;
              *&v245[28] = 2048;
              *&v245[30] = v157;
              _os_log_send_and_compose_impl(v201, &v240, v257, 80, &dword_1E1C61000, v199, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v245, 38, v225, v226);
              _os_crash_msg();
              __break(1u);
LABEL_297:
              *v246 = 0;
              *v251 = 0u;
              memset(v250, 0, sizeof(v250));
              *buf = 0u;
              v202 = MEMORY[0x1E69E9C10];
              v203 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v257[0]) = 136315906;
              *(v257 + 4) = "operator[]";
              WORD6(v257[0]) = 1024;
              if (v203)
              {
                v204 = 3;
              }

              else
              {
                v204 = 2;
              }

              *(v257 + 14) = 468;
              WORD1(v257[1]) = 2048;
              *(&v257[1] + 4) = v4;
              WORD6(v257[1]) = 2048;
              *(&v257[1] + 14) = v5;
              _os_log_send_and_compose_impl(v204, v246, buf, 80, &dword_1E1C61000, v202, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v257, 38, v225, v226);
              _os_crash_msg();
              __break(1u);
LABEL_301:
              *v245 = 0;
              *v251 = 0u;
              memset(v250, 0, sizeof(v250));
              *buf = 0u;
              v205 = MEMORY[0x1E69E9C10];
              v206 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v257[0]) = 136315906;
              *(v257 + 4) = "operator[]";
              WORD6(v257[0]) = 1024;
              if (v206)
              {
                v207 = 3;
              }

              else
              {
                v207 = 2;
              }

              *(v257 + 14) = 797;
              WORD1(v257[1]) = 2048;
              *(&v257[1] + 4) = v15;
              WORD6(v257[1]) = 2048;
              *(&v257[1] + 14) = v3;
              _os_log_send_and_compose_impl(v207, v245, buf, 80, &dword_1E1C61000, v205, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v257, 38, v225, v226);
              _os_crash_msg();
              __break(1u);
LABEL_305:
              *v245 = 0;
              v258 = 0u;
              v259 = 0u;
              memset(v257, 0, sizeof(v257));
              v208 = MEMORY[0x1E69E9C10];
              v209 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v246 = 136315906;
              *&v246[4] = "operator[]";
              *&v246[12] = 1024;
              if (v209)
              {
                v210 = 3;
              }

              else
              {
                v210 = 2;
              }

              *&v246[14] = 468;
              *&v246[18] = 2048;
              *&v246[20] = v15;
              v247 = 2048;
              *v248 = v236;
              _os_log_send_and_compose_impl(v210, v245, v257, 80, &dword_1E1C61000, v208, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v246, 38, v225, v226);
              _os_crash_msg();
              __break(1u);
LABEL_309:
              *v246 = 0;
              *v251 = 0u;
              memset(v250, 0, sizeof(v250));
              *buf = 0u;
              v211 = MEMORY[0x1E69E9C10];
              v212 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v257[0]) = 136315906;
              *(v257 + 4) = "operator[]";
              WORD6(v257[0]) = 1024;
              if (v212)
              {
                v213 = 3;
              }

              else
              {
                v213 = 2;
              }

              *(v257 + 14) = 468;
              WORD1(v257[1]) = 2048;
              *(&v257[1] + 4) = v3;
              WORD6(v257[1]) = 2048;
              *(&v257[1] + 14) = v236;
              _os_log_send_and_compose_impl(v213, v246, buf, 80, &dword_1E1C61000, v211, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v257, 38, v225, v226);
              _os_crash_msg();
              __break(1u);
LABEL_313:
              *v246 = 0;
              *v251 = 0u;
              memset(v250, 0, sizeof(v250));
              *buf = 0u;
              v214 = MEMORY[0x1E69E9C10];
              v215 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v257[0]) = 136315906;
              *(v257 + 4) = "operator[]";
              WORD6(v257[0]) = 1024;
              if (v215)
              {
                v216 = 3;
              }

              else
              {
                v216 = 2;
              }

              *(v257 + 14) = 468;
              WORD1(v257[1]) = 2048;
              *(&v257[1] + 4) = v3;
              WORD6(v257[1]) = 2048;
              *(&v257[1] + 14) = v5;
              _os_log_send_and_compose_impl(v216, v246, buf, 80, &dword_1E1C61000, v214, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v257, 38, v225, v226);
              _os_crash_msg();
              __break(1u);
LABEL_317:
              re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
              _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
              __break(1u);
              goto LABEL_318;
            }

            v4 = &v252[8 * v4];
            re::StringID::StringID(v245, (v131 + 112));
            *&v245[16] = v3;
            re::StringID::StringID(&v245[24], (v131 + 144));
            v158 = re::StringID::StringID(v257, (v131 + 64));
            v257[1] = *v245;
            *v245 = 0;
            *&v245[8] = &str_67;
            v257[2] = *&v245[16];
            *&v258 = *&v245[32];
            *&v245[24] = 0;
            *&v245[32] = &str_67;
            v159 = *(v4 + 32);
            v160 = *(v4 + 40);
            v130 = v151;
            if (v160 >= v159)
            {
              v161 = v160 + 1;
              if (v159 < v160 + 1)
              {
                if (*(v4 + 24))
                {
                  v162 = 2 * v159;
                  v19 = v159 == 0;
                  v163 = 8;
                  if (!v19)
                  {
                    v163 = v162;
                  }

                  if (v163 <= v161)
                  {
                    v164 = v161;
                  }

                  else
                  {
                    v164 = v163;
                  }

                  v158 = re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::setCapacity((v4 + 24), v164);
                }

                else
                {
                  v158 = re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::setCapacity((v4 + 24), v161);
                  ++*(v4 + 48);
                }
              }

              v160 = *(v4 + 40);
            }

            v165 = (*(v4 + 56) + 56 * v160);
            v166 = v257[0];
            *v165 = *v165 & 0xFFFFFFFFFFFFFFFELL | v257[0] & 1;
            *v165 = *&v257[0] & 0xFFFFFFFFFFFFFFFELL | v166 & 1;
            v165[1] = *(&v257[0] + 1);
            *&v257[0] = 0;
            *(&v257[0] + 1) = &str_67;
            v167 = v257[1];
            v165[2] = v165[2] & 0xFFFFFFFFFFFFFFFELL | v257[1] & 1;
            v165[2] = *&v257[1] & 0xFFFFFFFFFFFFFFFELL | v167 & 1;
            v165[3] = *(&v257[1] + 1);
            *&v257[1] = 0;
            *(&v257[1] + 1) = &str_67;
            v165[4] = *&v257[2];
            v168 = BYTE8(v257[2]);
            v165[5] = v165[5] & 0xFFFFFFFFFFFFFFFELL | BYTE8(v257[2]) & 1;
            v165[5] = *(&v257[2] + 1) & 0xFFFFFFFFFFFFFFFELL | v168 & 1;
            v165[6] = v258;
            *(&v257[2] + 1) = 0;
            *&v258 = &str_67;
            ++*(v4 + 40);
            ++*(v4 + 48);
            if (BYTE8(v257[2]))
            {
              if (BYTE8(v257[2]))
              {
              }
            }

            *(&v257[2] + 1) = 0;
            *&v258 = &str_67;
            if (v257[1])
            {
              if (v257[1])
              {
              }
            }

            *&v257[1] = 0;
            *(&v257[1] + 1) = &str_67;
            if (v257[0])
            {
              if (v257[0])
              {
              }
            }

            *&v257[0] = 0;
            *(&v257[0] + 1) = &str_67;
            if (v245[24])
            {
              if (v245[24])
              {
              }
            }

            *&v245[24] = 0;
            *&v245[32] = &str_67;
            if (v245[0])
            {
              if (v245[0])
              {
              }
            }

LABEL_249:
            v15 += 8;
            if (v15 == v130)
            {
              goto LABEL_250;
            }
          }

          v150 = *(v131 + 152);
LABEL_218:
          if (!*v150)
          {
            goto LABEL_249;
          }

          goto LABEL_219;
        }

LABEL_250:
        v169 = *(v235 - 3);
        if (v169)
        {
          v170 = *(v235 - 1);
          v171 = 8 * v169;
          do
          {
            v4 = *v170;
            re::DynamicArray<re::StringID>::add(v238, *v170 + 1);
            v172 = *(a3 + 136) - 1;
            *&v257[0] = v172;
            re::StringID::StringID((v257 + 8), (v4 + 80));
            v173 = *(a3 + 168);
            v174 = *(a3 + 176);
            if (v174 >= v173)
            {
              v175 = v174 + 1;
              if (v173 < v174 + 1)
              {
                if (*v236)
                {
                  v176 = 2 * v173;
                  v19 = v173 == 0;
                  v177 = 8;
                  if (!v19)
                  {
                    v177 = v176;
                  }

                  if (v177 <= v175)
                  {
                    v178 = v175;
                  }

                  else
                  {
                    v178 = v177;
                  }

                  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::setCapacity(v236, v178);
                }

                else
                {
                  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::setCapacity(v236, v175);
                  ++*(a3 + 184);
                }
              }

              v174 = *(a3 + 176);
            }

            v179 = (*(a3 + 192) + 24 * v174);
            *v179 = *&v257[0];
            v180 = BYTE8(v257[0]);
            v179[1] = v179[1] & 0xFFFFFFFFFFFFFFFELL | BYTE8(v257[0]) & 1;
            v179[1] = *(&v257[0] + 1) & 0xFFFFFFFFFFFFFFFELL | v180 & 1;
            v179[2] = *&v257[1];
            ++*(a3 + 176);
            ++*(a3 + 184);
            re::StringID::StringID(v257, (v4 + 32));
            *&v257[1] = v172;
            re::StringID::StringID((&v257[1] + 8), (v4 + 64));
            v181 = re::DynamicArray<re::RigGraphNodeParameter>::add(v250, v257);
            if (BYTE8(v257[1]))
            {
              if (BYTE8(v257[1]))
              {
              }
            }

            *(&v257[1] + 1) = 0;
            *&v257[2] = &str_67;
            if (v257[0])
            {
              if (v257[0])
              {
              }
            }

            ++v170;
            v171 -= 8;
          }

          while (v171);
        }

        v182 = *(a3 + 88);
        v183 = *(a3 + 96);
        if (v183 >= v182)
        {
          v184 = v183 + 1;
          if (v182 < v183 + 1)
          {
            if (*v228)
            {
              v185 = 2 * v182;
              v19 = v182 == 0;
              v186 = 8;
              if (!v19)
              {
                v186 = v185;
              }

              if (v186 <= v184)
              {
                v187 = v184;
              }

              else
              {
                v187 = v186;
              }

              re::DynamicArray<re::RigGraphNodeChild>::setCapacity(v228, v187);
            }

            else
            {
              re::DynamicArray<re::RigGraphNodeChild>::setCapacity(v228, v184);
              ++*(a3 + 104);
            }
          }

          v183 = *(a3 + 96);
        }

        v188 = *(a3 + 112) + 96 * v183;
        v189 = buf[0];
        *v188 = *v188 & 0xFFFFFFFFFFFFFFFELL | buf[0] & 1;
        *v188 = *buf & 0xFFFFFFFFFFFFFFFELL | v189 & 1;
        *(v188 + 8) = *&buf[8];
        *buf = 0;
        *&buf[8] = &str_67;
        *(v188 + 48) = 0;
        *(v188 + 40) = 0;
        *(v188 + 24) = 0;
        *(v188 + 32) = 0;
        *(v188 + 16) = 0;
        *(v188 + 16) = *&v250[0];
        *&v250[0] = 0;
        *(v188 + 24) = *(&v250[0] + 1);
        *(&v250[0] + 1) = 0;
        v190 = *(v188 + 32);
        *(v188 + 32) = *&v250[1];
        *&v250[1] = v190;
        v191 = *(v188 + 48);
        *(v188 + 48) = *&v250[2];
        *&v250[2] = v191;
        ++DWORD2(v250[1]);
        ++*(v188 + 40);
        *(v188 + 88) = 0;
        *(v188 + 64) = 0;
        *(v188 + 72) = 0;
        *(v188 + 56) = 0;
        *(v188 + 80) = 0;
        *(v188 + 56) = *(&v250[2] + 1);
        *(&v250[2] + 1) = 0;
        *(v188 + 64) = *v251;
        *v251 = 0;
        v192 = *(v188 + 72);
        *(v188 + 72) = *&v251[8];
        *&v251[8] = v192;
        v193 = *(v188 + 88);
        *(v188 + 88) = v252;
        v252 = v193;
        ++*&v251[16];
        ++*(v188 + 80);
        ++*(a3 + 96);
        ++*(a3 + 104);
        re::DynamicArray<re::RigGraphNodeOutputParameter>::deinit(&v250[2] + 8);
        v194 = re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(v250);
        if (buf[0])
        {
          if (buf[0])
          {
          }
        }

        v110 = v231;
        v5 = v231;
        if (v231 == v230)
        {
          break;
        }

        goto LABEL_168;
      }
    }
  }

  v195.n128_f64[0] = re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(&v241);
  result = *v246;
  if (*v246 && *&v248[2])
  {
    if (v227)
    {
      v197 = 144 * v227;
      v198 = *&v248[2] + 104;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v198);
        re::DynamicArray<unsigned long>::deinit(v198 - 40);
        v195.n128_f64[0] = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v198 - 88));
        v198 += 144;
        v197 -= 144;
      }

      while (v197);
      result = *v246;
    }

    return (*(*result + 40))(result, v195);
  }

  return result;
}

re::StringID *re::DynamicArray<re::StringID>::add(_anonymous_namespace_ *this, StringID *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::StringID>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::StringID::StringID((*(this + 4) + 16 * v4), a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RigGraphNodeParameter>::add(_anonymous_namespace_ *result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::RigGraphNodeParameter>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::RigGraphNodeParameter>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = (*(v3 + 4) + 40 * v5);
  v12 = *a2;
  *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v11 = *a2 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  v13 = a2[2];
  v11[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v11[2] = v13;
  v14 = a2[3];
  v11[3] = v11[3] & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
  v11[3] = a2[3] & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
  v11[4] = a2[4];
  a2[3] = 0;
  a2[4] = &str_67;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

__n128 re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::add(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>::operator()(a2);
  re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::findEntry<re::Pair<re::StringSlice,re::StringSlice,true>>(&v9, a1, a2, v6);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::allocEntry(a1, v10, v9);
    result = *a2;
    *(v8 + 24) = *(a2 + 16);
    *(v8 + 8) = result;
    *(v8 + 40) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::tryGet(uint64_t a1, uint64_t *a2)
{
  v4 = re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>::operator()(a2);
  re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::findEntry<re::Pair<re::StringSlice,re::StringSlice,true>>(v6, a1, a2, v4);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v7 + 40;
  }
}

_anonymous_namespace_ *re::DynamicArray<re::RigGraphNodeOutputParameter>::add(_anonymous_namespace_ *result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::RigGraphNodeOutputParameter>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::RigGraphNodeOutputParameter>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + (v5 << 6);
  v12 = *a2;
  *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v11 = *a2 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  v13 = a2[2];
  *(v11 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(v11 + 56) = 0;
  *(v11 + 16) = v13;
  *(v11 + 24) = 0;
  *(v11 + 48) = 0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  v14 = a2[4];
  *(v11 + 24) = a2[3];
  *(v11 + 32) = v14;
  a2[3] = 0;
  a2[4] = 0;
  v15 = *(v11 + 40);
  *(v11 + 40) = a2[5];
  a2[5] = v15;
  v16 = *(v11 + 56);
  *(v11 + 56) = a2[7];
  a2[7] = v16;
  ++*(a2 + 12);
  ++*(v11 + 48);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

re::DynamicString *re::RigGraphSystem::compile@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, re::EvaluationContextManager *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v105 = *MEMORY[0x1E69E9840];
  v61[0] = a5;
  v61[1] = a6;
  if (*(a1 + 24) == 1)
  {
    v9 = v66;
    v10 = v67;
    *a7 = 0;
    *(a7 + 8) = 3004;
    *(a7 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a7 + 24) = v9;
    *(a7 + 40) = v10;
  }

  else
  {
    v12 = a5;
    v13 = a1;
    v49 = a4;
    *(a1 + 8) = a3;
    v14 = *a1;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v56 = v14;
    re::DynamicArray<float *>::setCapacity(&v56, a6);
    v15 = ++v59;
    if (a6)
    {
      v16 = v58;
      v17 = 288 * a6;
      do
      {
        if (v16 >= v57)
        {
          re::DynamicArray<float *>::growCapacity(&v56, v16 + 1);
          v16 = v58;
          v15 = v59;
        }

        *(v60 + 8 * v16++) = v12;
        v58 = v16;
        v59 = ++v15;
        v12 += 288;
        v17 -= 288;
      }

      while (v17);
    }

    v18 = *v13;
    v19 = a2[7];
    v54 = 0;
    v55 = 0;
    v53 = 0;
    re::FixedArray<re::RigDataValue>::init<>(&v53, v18, v19);
    v20 = a2[7];
    if (v20)
    {
      v21 = a2;
      v22 = 0;
      v23 = 0;
      v24 = 16;
      v51 = v13;
      while (v20 > v23)
      {
        v25 = *(v21[9] + v24);
        v20 = v21[17];
        if (v20 <= v25)
        {
          goto LABEL_38;
        }

        v27 = *(v13 + 8);
        v26 = *(v13 + 16);
        v28 = *v13;
        re::RigEnvironment::lookupRigDataType(v91, v26, (v21[19] + 16 * v25));
        LOBYTE(v62) = v91[8];
        re::StringID::StringID(&v63, &v91[16]);
        re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(v64, &v93[2]);
        if (v91[0] == 1)
        {
          v29 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v93[2]);
          if (v91[16])
          {
            if (v91[16])
            {
            }
          }
        }

        v66 = 0u;
        v67 = 0u;
        v68 = 0;
        v69 = 0;
        v70 = &str_67;
        v75 = 0;
        v72 = 0;
        v73 = 0;
        v71 = 0;
        v74 = 0;
        v76 = 0;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = -1;
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v85 = &str_67;
        v90 = 0;
        v87 = 0;
        v88 = 0;
        v89 = 0;
        v86 = 0;
        re::RigDataValue::init(&v66, v28, v26, &v62, v27);
        v30 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v64);
        if (v63)
        {
          if (v63)
          {
          }
        }

        v25 = v54;
        v13 = v51;
        if (v54 <= v23)
        {
          goto LABEL_42;
        }

        re::RigDataValue::operator=((v55 + v22), &v66);
        re::RigDataValue::~RigDataValue(&v66);
        ++v23;
        v21 = a2;
        v20 = a2[7];
        v24 += 40;
        v22 += 288;
        if (v23 >= v20)
        {
          goto LABEL_21;
        }
      }

      v65 = 0;
      v25 = v91;
      v103 = 0u;
      v104 = 0u;
      memset(v102, 0, sizeof(v102));
      v39 = MEMORY[0x1E69E9C10];
      v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v94 = 136315906;
      v95 = "operator[]";
      v96 = 1024;
      if (v40)
      {
        v41 = 3;
      }

      else
      {
        v41 = 2;
      }

      v97 = 797;
      v98 = 2048;
      v99 = v23;
      v100 = 2048;
      v101 = v20;
      _os_log_send_and_compose_impl(v41, &v65, v102, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v94, 38, v48, v49);
      _os_crash_msg();
      __break(1u);
LABEL_38:
      v65 = 0;
      v103 = 0u;
      v104 = 0u;
      memset(v102, 0, sizeof(v102));
      v42 = MEMORY[0x1E69E9C10];
      v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v94 = 136315906;
      v95 = "operator[]";
      v96 = 1024;
      if (v43)
      {
        v44 = 3;
      }

      else
      {
        v44 = 2;
      }

      v97 = 797;
      v98 = 2048;
      v99 = v25;
      v100 = 2048;
      v101 = v20;
      _os_log_send_and_compose_impl(v44, &v65, v102, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v94, 38, v48, v49);
      _os_crash_msg();
      __break(1u);
LABEL_42:
      v62 = 0;
      v103 = 0u;
      v104 = 0u;
      memset(v102, 0, sizeof(v102));
      v45 = MEMORY[0x1E69E9C10];
      v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v91 = 136315906;
      *&v91[4] = "operator[]";
      *&v91[12] = 1024;
      if (v46)
      {
        v47 = 3;
      }

      else
      {
        v47 = 2;
      }

      *&v91[14] = 468;
      *&v91[18] = 2048;
      *&v91[20] = v23;
      v92 = 2048;
      *v93 = v25;
      _os_log_send_and_compose_impl(v47, &v62, v102, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v91, 38, v48, v49);
      _os_crash_msg();
      __break(1u);
    }

LABEL_21:
    v31 = *v13;
    *&v93[2] = 0;
    memset(&v91[8], 0, 20);
    *v91 = v31;
    re::DynamicArray<float *>::setCapacity(v91, v54);
    ++*&v91[24];
    if (v54)
    {
      v32 = v55;
      v33 = 288 * v54;
      do
      {
        *&v66 = v32;
        re::DynamicArray<re::RigDataValue *>::add(v91, &v66);
        v32 += 288;
        v33 -= 288;
      }

      while (v33);
    }

    v34 = v60;
    v35 = *&v93[2];
    re::RigGraphSystem::compileRigGraph(v102, v13, a2, v60, v58, *&v93[2], *&v91[16]);
    *(v13 + 24) = 1;
    if (v102[0])
    {
      *&v66 = v55;
      *(&v66 + 1) = v54;
      re::RigGraphCompilation::setInputOutputValues((v13 + 32), v49, v61, &v66);
      re::RigGraphCompilation::RigGraphCompilation(&v66, v13 + 32);
      *a7 = 1;
      re::RigGraphCompilation::RigGraphCompilation(a7 + 8, &v66);
      re::RigGraphCompilation::~RigGraphCompilation(&v66);
    }

    else
    {
      *(a7 + 8) = *&v102[1];
      v36 = *&v102[3];
      v37 = v102[5];
      v38 = v103;
      *a7 = 0;
      *(a7 + 24) = v36;
      *(a7 + 40) = v37;
      *(a7 + 48) = v38;
    }

    if (*v91 && v35)
    {
      (*(**v91 + 40))();
    }

    re::FixedArray<re::RigDataValue>::deinit(&v53);
    result = v56;
    if (v56)
    {
      if (v34)
      {
        return (*(*v56 + 40))();
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RigDataValue *>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<float *>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<float *>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  *(*(v3 + 4) + 8 * v5) = *a2;
  *(v3 + 2) = v5 + 1;
  ++*(v3 + 6);
  return result;
}

void *re::RigGraphSystem::compileRigGraph(uint64_t a1, re::Allocator **a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  i = v188;
  v10 = v168;
  v198 = *MEMORY[0x1E69E9840];
  v11 = a7 + a5;
  v12 = a3[17];
  v13 = v12 + 1;
  if (v12 + 1 <= a7 + a5)
  {
LABEL_198:
    v157 = 0;
    *(v10 + 3) = 0u;
    *(v10 + 4) = 0u;
    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *v10 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v120 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v188 = 136315906;
    *(i + 4) = "slice";
    *&v188[12] = 1024;
    if (v120)
    {
      v121 = 3;
    }

    else
    {
      v121 = 2;
    }

    *(i + 14) = 1119;
    v189 = 2048;
    *(i + 20) = v11;
    v191 = 2048;
    *(i + 30) = v13;
    _os_log_send_and_compose_impl(v121, &v157, v168, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", i, 38, v126, v129);
    _os_crash_msg();
    __break(1u);
    goto LABEL_202;
  }

  v13 = a3[7] + a3[2];
  v7 = (v12 - v13);
  if (__CFADD__(v11, v12 - v13))
  {
LABEL_202:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::slice(size_t,size_t). index, %zu, count = %zu, array size = %zu", "!overflow", "slice", 1125, v11, v7, v12);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::slice(size_t,size_t). index, %zu, count = %zu, array size = %zu", v122, v124, v127);
    __break(1u);
LABEL_203:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Invalid count. index = %zu, count = %zu, array size = %zu", "endIndexExclusive <= m_size", "slice", 1129, v11, v7, v12);
    _os_crash("assertion failure: (endIndexExclusive <= m_size) Invalid count. index = %zu, count = %zu, array size = %zu", v123, v125, v128);
    __break(1u);
  }

  if (v11 + v12 - v13 > v12)
  {
    goto LABEL_203;
  }

  v15 = a3[19];
  v16 = *a2;
  v165 = 0;
  v166 = 0;
  v164 = 0;
  re::FixedArray<re::RigDataValue>::init<>(&v164, v16, v12 - v13);
  if (v12 != v13)
  {
    v17 = 0;
    v13 = 0;
    v18 = v168;
    v19 = (v15 + 16 * v11);
    do
    {
      v8 = v165;
      if (v165 <= v13)
      {
        goto LABEL_179;
      }

      i = v166;
      v8 = *a2;
      v20 = a2[2];
      re::RigEnvironment::lookupRigDataType(v168, v20, v19);
      re::RigDataValue::init(&i[v17], v8, v20, &v168[1], a2[1]);
      if (LOBYTE(v168[0]) == 1)
      {
        v21 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v168[4]);
        if (v168[2])
        {
          if (v168[2])
          {
          }
        }
      }

      ++v13;
      v17 += 288;
      v19 += 2;
    }

    while (v7 != v13);
  }

  i = a3;
  v22 = a3[22];
  if (v22)
  {
    v23 = a3[24];
    v13 = v23 + 24 * v22;
    v18 = 288;
    while (1)
    {
      v24 = *v23 - v11;
      v7 = v165;
      if (v165 <= v24)
      {
        break;
      }

      v25 = strlen(*(v23 + 16));
      *v188 = *(v23 + 16);
      *&v188[8] = v25;
      re::RigDataValue::setRigDataValue(&v166[288 * v24], v188, 1, v168);
      if (LOBYTE(v168[0]) != 1 && v168[3] && (v168[4] & 1) != 0)
      {
        (*(*v168[3] + 40))();
      }

      v23 += 24;
      if (v23 == v13)
      {
        goto LABEL_20;
      }
    }

    v157 = 0;
    v169 = 0u;
    v170 = 0u;
    memset(v168, 0, sizeof(v168));
    v105 = MEMORY[0x1E69E9C10];
    v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v188 = 136315906;
    *&v188[4] = "operator[]";
    *&v188[12] = 1024;
    if (v106)
    {
      v107 = 3;
    }

    else
    {
      v107 = 2;
    }

    *&v188[14] = 468;
    v189 = 2048;
    v190 = v24;
    v191 = 2048;
    v192[0] = v7;
    _os_log_send_and_compose_impl(v107, &v157, v168, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v188, 38, v126, v129);
    _os_crash_msg();
    __break(1u);
LABEL_179:
    v157 = 0;
    v169 = 0u;
    v170 = 0u;
    memset(v168, 0, sizeof(v168));
    v108 = MEMORY[0x1E69E9C10];
    v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v188 = 136315906;
    *&v188[4] = "operator[]";
    *&v188[12] = 1024;
    if (v109)
    {
      v110 = 3;
    }

    else
    {
      v110 = 2;
    }

    *&v188[14] = 468;
    v189 = 2048;
    v190 = v13;
    v191 = 2048;
    v192[0] = v8;
    _os_log_send_and_compose_impl(v110, &v157, v168, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v188, 38, v126, v129);
    _os_crash_msg();
    __break(1u);
LABEL_183:
    v167 = 0;
    *(v7 + 3) = 0u;
    *(v7 + 4) = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *v7 = 0u;
    v111 = MEMORY[0x1E69E9C10];
    v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v193 = 136315906;
    *&v193[4] = "operator[]";
    *&v193[12] = 1024;
    if (v112)
    {
      v113 = 3;
    }

    else
    {
      v113 = 2;
    }

    *&v193[14] = 797;
    v194 = 2048;
    v195 = v11;
    v196 = 2048;
    v197 = v13;
    _os_log_send_and_compose_impl(v113, &v167, v168, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v193, 38, v126, v129);
    _os_crash_msg();
    __break(1u);
LABEL_187:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
LABEL_188:
    v167 = 0;
    *(v7 + 3) = 0u;
    *(v7 + 4) = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *v7 = 0u;
    v114 = MEMORY[0x1E69E9C10];
    v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v193 = 136315906;
    *&v193[4] = "operator[]";
    *&v193[12] = 1024;
    if (v115)
    {
      v116 = 3;
    }

    else
    {
      v116 = 2;
    }

    *&v193[14] = 797;
    v194 = 2048;
    v195 = v13;
    v196 = 2048;
    v197 = v18;
    _os_log_send_and_compose_impl(v116, &v167, v168, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v193, 38, v126, v129);
    _os_crash_msg();
    __break(1u);
LABEL_192:
    re::internal::assertLog(4, v58, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
LABEL_193:
    re::internal::assertLog(4, v81, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
LABEL_194:
    *v193 = 0;
    *(v7 + 3) = 0u;
    *(v7 + 4) = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *v7 = 0u;
    v117 = MEMORY[0x1E69E9C10];
    v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v188 = 136315906;
    *&v188[4] = "operator[]";
    *&v188[12] = 1024;
    if (v118)
    {
      v119 = 3;
    }

    else
    {
      v119 = 2;
    }

    *&v188[14] = 789;
    v189 = 2048;
    v190 = v11;
    v191 = 2048;
    v192[0] = v11;
    _os_log_send_and_compose_impl(v119, v193, v168, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v188, 38, v126, v129);
    _os_crash_msg();
    __break(1u);
    goto LABEL_198;
  }

LABEL_20:
  v26 = *a2;
  v157 = 0;
  v158 = 0;
  v159 = 1;
  v161 = 0;
  v162 = 0;
  v160 = 0;
  v163 = 0;
  re::BucketArray<re::RigDataValue,8ul>::init(&v157, v26, 1uLL);
  v27 = *a2;
  v156 = 0;
  v153 = 0;
  v154 = 0;
  v155 = 0;
  v152 = v27;
  re::DynamicArray<float *>::setCapacity(&v152, 0);
  ++v155;
  v28 = *a2;
  v151 = 0;
  v148 = 0;
  v149 = 0;
  v150 = 0;
  v147 = v28;
  re::DynamicArray<float *>::setCapacity(&v147, 0);
  ++v150;
  v29 = a3[12];
  v7 = v168;
  if (!v29)
  {
    goto LABEL_158;
  }

  v30 = a3[14];
  v130 = (v30 + 96 * v29);
  v18 = v162;
LABEL_22:
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      v31 = re::BucketArray<re::RigDataValue,8ul>::operator[](&v157, i);
      re::RigDataValue::~RigDataValue(v31);
    }
  }

  v162 = 0;
  ++v163;
  v154 = 0;
  ++v155;
  v149 = 0;
  ++v150;
  v32 = re::RigEnvironment::lookupRigGraphNode(a2[2], v30);
  v139 = v30;
  if (v32)
  {
    v33 = *(v32 + 16);
    v34 = v32;
    if (v153 < v33)
    {
      re::DynamicArray<float *>::setCapacity(&v152, v33);
      v33 = v34[2];
    }

    v136 = v34;
    v18 = 0;
    if (v33)
    {
      v35 = v34[4];
      v133 = v35 + 40 * v33;
      while (1)
      {
        v36 = *(v139 + 4);
        if (!v36)
        {
          break;
        }

        i = *(v139 + 6);
        v37 = 40 * v36;
        while (!re::StringID::operator==(i, v35))
        {
          i += 40;
          v37 -= 40;
          if (!v37)
          {
            goto LABEL_34;
          }
        }

        if (!i)
        {
          goto LABEL_35;
        }

        v146 = v46;
        if (v46)
        {
          v44 = v46;
          goto LABEL_51;
        }

        v38 = 0;
LABEL_36:
        v11 = *(v35 + 16);
        v13 = v136[17];
        if (v13 <= v11)
        {
          goto LABEL_183;
        }

        re::RigEnvironment::lookupRigDataType(v188, a2[2], (v136[19] + 16 * v11));
        memset(v168, 0, 33);
        v168[5] = 0;
        *&v169 = &str_67;
        v172 = 0;
        *(&v169 + 1) = 0;
        v170 = 0uLL;
        v171 = 0;
        v173 = 0;
        v174 = 0u;
        v175 = 0u;
        v176 = 0u;
        v177 = 0u;
        v178 = -1;
        v179 = 0;
        v180 = 0;
        v181 = 0;
        v182 = &str_67;
        v187 = 0;
        v184 = 0;
        v185 = 0;
        v186 = 0;
        v183 = 0;
        v39 = re::BucketArray<re::RigDataValue,8ul>::addUninitialized(&v157);
        re::RigDataValue::RigDataValue(v39, v168);
        re::RigDataValue::~RigDataValue(v168);
        v18 = v162;
        if (!v162)
        {
          goto LABEL_187;
        }

        v41 = re::BucketArray<re::RigDataValue,8ul>::operator[](&v157, v162 - 1);
        re::RigDataValue::init(v41, *a2, a2[2], &v188[8], a2[1]);
        v42 = re::BucketArray<re::RigDataValue,8ul>::operator[](&v157, v18 - 1);
        v43 = strlen(*(v35 + 32));
        *v193 = *(v35 + 32);
        *&v193[8] = v43;
        re::RigDataValue::setRigDataValue(v42, v193, 1, v168);
        if (LOBYTE(v168[0]) != 1 && v168[3] && (v168[4] & 1) != 0)
        {
          (*(*v168[3] + 40))();
        }

        v44 = re::BucketArray<re::RigDataValue,8ul>::operator[](&v157, v18 - 1);
        v146 = v44;
        if (v188[0] == 1)
        {
          v45 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v192 + 2);
          if (v188[16])
          {
            if (v188[16])
            {
            }
          }
        }

        if (v38)
        {
LABEL_59:
          re::DynamicArray<re::TransitionCondition *>::add(&v152, &v146);
          goto LABEL_65;
        }

LABEL_51:
        v47 = *(i + 3);
        if (v47 < 0xFFFFFFFFFFFFFFFELL || (v47 & 1) != 0)
        {
          i = *(i + 4);
          if (v47 > 1)
          {
            goto LABEL_56;
          }
        }

        else
        {
          i = *(i + 4);
        }

        if (!*i)
        {
          goto LABEL_59;
        }

LABEL_56:
        v48 = strlen(i);
        *v188 = i;
        *&v188[8] = v48;
        re::RigDataValue::attributeValue(v44, v188, v168);
        v49 = v168[0];
        if (LOBYTE(v168[0]) == 1)
        {
          re::DynamicArray<re::TransitionCondition *>::add(&v152, &v168[1]);
          if (v168[0])
          {
            goto LABEL_65;
          }
        }

        else
        {
          v50 = *&v168[3];
          memset(&v168[3], 0, 24);
          v51 = v168[5];
          v52 = v169;
          *&v169 = 0;
          *a1 = 0;
          *(a1 + 8) = *&v168[1];
          *(a1 + 24) = v50;
          *(a1 + 40) = v51;
          *(a1 + 48) = v52;
        }

        if (v168[3] && (v168[4] & 1) != 0)
        {
          (*(*v168[3] + 40))();
        }

        if ((v49 & 1) == 0)
        {
          goto LABEL_159;
        }

LABEL_65:
        v35 += 40;
        if (v35 == v133)
        {
          goto LABEL_68;
        }
      }

LABEL_34:
      i = 0;
      v146 = 0;
LABEL_35:
      v38 = 1;
      goto LABEL_36;
    }

LABEL_68:
    v53 = v136[7];
    if (v148 < v53)
    {
      re::DynamicArray<float *>::setCapacity(&v147, v53);
      v53 = v136[7];
    }

    v30 = v139;
    if (v53)
    {
      i = v136[9];
      v11 = &i[40 * v53];
      do
      {
        v54 = *(v139 + 9);
        if (!v54)
        {
          goto LABEL_79;
        }

        v55 = *(v139 + 11);
        v56 = v54 << 6;
        while (!re::StringID::operator==(v55, i))
        {
          v55 += 8;
          v56 -= 64;
          if (!v56)
          {
            goto LABEL_79;
          }
        }

        if (v55)
        {
          re::DynamicArray<re::RigDataValue *>::add(&v147, v168);
        }

        else
        {
LABEL_79:
          v13 = *(i + 2);
          v18 = v136[17];
          if (v18 <= v13)
          {
            goto LABEL_188;
          }

          re::RigEnvironment::lookupRigDataType(v188, a2[2], (v136[19] + 16 * v13));
          memset(v168, 0, 33);
          v168[5] = 0;
          *&v169 = &str_67;
          v172 = 0;
          *(&v169 + 1) = 0;
          v170 = 0uLL;
          v171 = 0;
          v173 = 0;
          v174 = 0u;
          v175 = 0u;
          v176 = 0u;
          v177 = 0u;
          v178 = -1;
          v179 = 0;
          v180 = 0;
          v181 = 0;
          v182 = &str_67;
          v187 = 0;
          v184 = 0;
          v185 = 0;
          v186 = 0;
          v183 = 0;
          v57 = re::BucketArray<re::RigDataValue,8ul>::addUninitialized(&v157);
          re::RigDataValue::RigDataValue(v57, v168);
          re::RigDataValue::~RigDataValue(v168);
          v18 = v162;
          if (!v162)
          {
            goto LABEL_192;
          }

          v59 = re::BucketArray<re::RigDataValue,8ul>::operator[](&v157, v162 - 1);
          re::RigDataValue::init(v59, *a2, a2[2], &v188[8], a2[1]);
          v168[0] = re::BucketArray<re::RigDataValue,8ul>::operator[](&v157, v18 - 1);
          re::DynamicArray<re::RigDataValue *>::add(&v147, v168);
          if (v188[0] == 1)
          {
            v60 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v192 + 2);
            if (v188[16])
            {
              if (v188[16])
              {
              }
            }
          }
        }

        i += 40;
      }

      while (i != v11);
    }

    v61 = v151;
    v11 = v149;
    re::RigGraphSystem::compileRigGraph(v143, a2, v136, v156, v154, v151, v149);
    if ((v143[0] & 1) == 0 && v144)
    {
      if (BYTE8(v144))
      {
        (*(*v144 + 40))();
      }

      v145 = 0u;
      v144 = 0u;
    }

    goto LABEL_132;
  }

  v62 = re::RigEnvironment::lookupRigGraphOperator(a2[2], v30);
  v13 = a4;
  if (!v62)
  {
    re::internal::assertLog(4, v63, "assertion failure: '%s' (%s:line %i) Node definition not found!", "!Unreachable code", "compileRigGraph", 527);
    result = _os_crash("assertion failure: (!Unreachable code) Node definition not found!");
    __break(1u);
    return result;
  }

  v64 = v62;
  v65 = *(v62 + 24);
  if (v153 < v65)
  {
    re::DynamicArray<float *>::setCapacity(&v152, v65);
    v65 = *(v64 + 24);
  }

  if (!v65)
  {
LABEL_114:
    v76 = *(v64 + 48);
    if (v148 < v76)
    {
      re::DynamicArray<float *>::setCapacity(&v147, v76);
      v76 = *(v64 + 48);
    }

    v18 = 0;
    if (v76)
    {
      i = *(v64 + 56);
      v11 = &i[32 * v76];
      do
      {
        v77 = *(v30 + 9);
        if (!v77)
        {
          goto LABEL_125;
        }

        v78 = *(v30 + 11);
        v79 = v77 << 6;
        while (!re::StringID::operator==(v78, i))
        {
          v78 += 8;
          v79 -= 64;
          if (!v79)
          {
            goto LABEL_125;
          }
        }

        if (v78)
        {
          re::DynamicArray<re::RigDataValue *>::add(&v147, v168);
        }

        else
        {
LABEL_125:
          re::RigEnvironment::lookupRigDataType(v188, a2[2], i + 2);
          memset(v168, 0, 33);
          v168[5] = 0;
          *&v169 = &str_67;
          v172 = 0;
          *(&v169 + 1) = 0;
          v170 = 0uLL;
          v171 = 0;
          v173 = 0;
          v174 = 0u;
          v175 = 0u;
          v176 = 0u;
          v177 = 0u;
          v178 = -1;
          v179 = 0;
          v180 = 0;
          v181 = 0;
          v182 = &str_67;
          v187 = 0;
          v184 = 0;
          v185 = 0;
          v186 = 0;
          v183 = 0;
          v80 = re::BucketArray<re::RigDataValue,8ul>::addUninitialized(&v157);
          re::RigDataValue::RigDataValue(v80, v168);
          re::RigDataValue::~RigDataValue(v168);
          v18 = v162;
          if (!v162)
          {
            goto LABEL_193;
          }

          v82 = re::BucketArray<re::RigDataValue,8ul>::operator[](&v157, v162 - 1);
          re::RigDataValue::init(v82, *a2, a2[2], &v188[8], a2[1]);
          v168[0] = re::BucketArray<re::RigDataValue,8ul>::operator[](&v157, v18 - 1);
          re::DynamicArray<re::RigDataValue *>::add(&v147, v168);
          if (v188[0] == 1)
          {
            v83 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v192 + 2);
            if (v188[16])
            {
              if (v188[16])
              {
              }
            }
          }
        }

        i += 32;
      }

      while (i != v11);
    }

    v61 = v151;
    v11 = v149;
    (*(v64 + 64))(a2, v156, v154, v151, v149);
LABEL_132:
    v84 = *(v30 + 9);
    if (!v84)
    {
      goto LABEL_157;
    }

    v85 = 0;
    v134 = v11;
    v131 = v61;
    while (1)
    {
      if (v85 == v11)
      {
        goto LABEL_194;
      }

      v86 = *(v30 + 11) + (v85 << 6);
      v87 = *(v86 + 40);
      if (!v87)
      {
        goto LABEL_156;
      }

      v137 = v85;
      v88 = *(v61 + 8 * v85);
      v89 = *(v86 + 56);
      v90 = v89 + 56 * v87;
      v91 = v89 + 8;
      do
      {
        v13 = v91 - 8;
        v92 = *(v91 - 8);
        if (v92 >= 0xFFFFFFFFFFFFFFFELL && (v92 & 1) == 0)
        {
          i = *v91;
LABEL_141:
          v93 = v88;
          if (!*i)
          {
            goto LABEL_146;
          }

          goto LABEL_142;
        }

        i = *v91;
        if (v92 <= 1)
        {
          goto LABEL_141;
        }

LABEL_142:
        v94 = strlen(i);
        *v188 = i;
        *&v188[8] = v94;
        re::RigDataValue::attributeValue(v88, v188, v168);
        v93 = v168[1];
        if (v168[0] & 1) == 0 && v168[3] && (v168[4])
        {
          (*(*v168[3] + 40))();
        }

LABEL_146:
        v96 = strlen(*(v91 + 40));
        *v188 = *(v91 + 40);
        *&v188[8] = v96;
        re::RigDataValue::attributeValue(v95, v188, v168);
        v97 = v168[0];
        if (LOBYTE(v168[0]) == 1)
        {
          re::RigDataValue::operator=(v168[1], v93);
          if (v168[0])
          {
            goto LABEL_154;
          }
        }

        else
        {
          v98 = *&v168[3];
          memset(&v168[3], 0, 24);
          v99 = v168[5];
          v100 = v169;
          *&v169 = 0;
          *a1 = 0;
          *(a1 + 8) = *&v168[1];
          *(a1 + 24) = v98;
          *(a1 + 40) = v99;
          *(a1 + 48) = v100;
        }

        if (v168[3] && (v168[4] & 1) != 0)
        {
          (*(*v168[3] + 40))();
        }

        if ((v97 & 1) == 0)
        {
          goto LABEL_159;
        }

LABEL_154:
        v91 += 56;
      }

      while (v13 + 56 != v90);
      v30 = v139;
      v84 = *(v139 + 9);
      v7 = v168;
      v11 = v134;
      v61 = v131;
      v85 = v137;
LABEL_156:
      if (++v85 >= v84)
      {
LABEL_157:
        v30 = (v30 + 96);
        if (v30 == v130)
        {
LABEL_158:
          *a1 = 1;
          goto LABEL_159;
        }

        goto LABEL_22;
      }
    }
  }

  i = *(v64 + 32);
  v66 = &i[32 * v65];
  while (1)
  {
      ;
    }

    *v193 = v68;
    v69 = j[3];
    if (v69 < 0xFFFFFFFFFFFFFFFELL || (v69 & 1) != 0)
    {
      v70 = j[4];
      if (v69 > 1)
      {
        goto LABEL_103;
      }
    }

    else
    {
      v70 = j[4];
    }

    if (!*v70)
    {
      re::DynamicArray<re::TransitionCondition *>::add(&v152, v193);
      v30 = v139;
      goto LABEL_113;
    }

LABEL_103:
    v71 = strlen(v70);
    *v188 = v70;
    *&v188[8] = v71;
    re::RigDataValue::attributeValue(v68, v188, v168);
    v72 = v168[0];
    if (LOBYTE(v168[0]) != 1)
    {
      break;
    }

    re::DynamicArray<re::TransitionCondition *>::add(&v152, &v168[1]);
    v30 = v139;
    if ((v168[0] & 1) == 0)
    {
      goto LABEL_107;
    }

LABEL_113:
    i += 32;
    if (i == v66)
    {
      goto LABEL_114;
    }
  }

  v73 = *&v168[3];
  memset(&v168[3], 0, 24);
  v74 = v168[5];
  v75 = v169;
  *&v169 = 0;
  *a1 = 0;
  *(a1 + 8) = *&v168[1];
  *(a1 + 24) = v73;
  *(a1 + 40) = v74;
  *(a1 + 48) = v75;
  v30 = v139;
LABEL_107:
  if (v168[3] && (v168[4] & 1) != 0)
  {
    (*(*v168[3] + 40))();
  }

  if (v72)
  {
    goto LABEL_113;
  }

LABEL_159:
  if (v147 && v151)
  {
    (*(*v147 + 40))();
  }

  if (v152 && v156)
  {
    (*(*v152 + 40))();
  }

  v101 = v162;
  if (v162)
  {
    v102 = 0;
    do
    {
      v103 = re::BucketArray<re::RigDataValue,8ul>::operator[](&v157, v102);
      re::RigDataValue::~RigDataValue(v103);
      ++v102;
    }

    while (v101 != v102);
  }

  while (v158)
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v157);
  }

  if (v157)
  {
    if ((v159 & 1) == 0)
    {
      (*(*v157 + 40))();
    }
  }

  return re::FixedArray<re::RigDataValue>::deinit(&v164);
}

uint64_t re::anonymous namespace::resolveRigDataIndexInputValue(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a1 - a3;
  if (a1 < a3)
  {
    return *(a2 + 8 * a1);
  }

  v9 = a1 - (a5 + a3);
  if (a1 < a5 + a3)
  {
    if (v7 < a5)
    {
      return *(a4 + 8 * v7);
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a1 - a3, a5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v15);
    __break(1u);
LABEL_12:
    v18 = 0;
    memset(v27, 0, sizeof(v27));
    v10 = MEMORY[0x1E69E9C10];
    v11 = a6;
    v12 = v9;
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v22 = 476;
    v23 = 2048;
    v24 = v12;
    v25 = 2048;
    v26 = v11;
    _os_log_send_and_compose_impl(v13, &v18, v27, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v16, v17);
    _os_crash_msg();
    __break(1u);
  }

  if (a5 + a3 + a6 <= a1)
  {
    return 0;
  }

  if (v9 >= a6)
  {
    goto LABEL_12;
  }

  return a7 + 288 * v9;
}

uint64_t re::anonymous namespace::resolveRigDataIndexOutputValue(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a1 - (a4 + a2);
  if (a1 < a4 + a2)
  {
    if (a1 - a2 < a4)
    {
      return *(a3 + 8 * (a1 - a2));
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a1 - a2, a4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v12);
    __break(1u);
LABEL_8:
    v15 = 0;
    memset(v24, 0, sizeof(v24));
    v9 = MEMORY[0x1E69E9C10];
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v19 = 468;
    v20 = 2048;
    v21 = v7;
    v22 = 2048;
    v23 = v6;
    _os_log_send_and_compose_impl(v10, &v15, v24, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v13, v14);
    _os_crash_msg();
    __break(1u);
  }

  v6 = a5;
  if (v7 >= a5)
  {
    goto LABEL_8;
  }

  return a6 + 288 * v7;
}

uint64_t re::RigGraphSystem::visitTask(uint64_t result, uint64_t a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(result + 8) != 2)
  {
    v5 = result;
    v6 = *(result + 48);
    if (v6)
    {
      v7 = 0;
      v8 = (*(result + 32) + 8);
      while (1)
      {
        v9 = *v8;
        v8 += 6;
        if (v9 < 0)
        {
          break;
        }

        if (v6 == ++v7)
        {
          LODWORD(v7) = *(result + 48);
          break;
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

    while (v7 != v6)
    {
      result = re::RigGraphSystem::visitTask(*(*(v5 + 32) + 24 * v7 + 16), a2, a3);
      v10 = *(v5 + 48);
      if (v10 <= v7 + 1)
      {
        v10 = v7 + 1;
      }

      while (v10 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(*(v5 + 32) + 24 * v7 + 8) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v7) = v10;
LABEL_15:
      ;
    }

    *(v5 + 8) = 2;
    v11 = *(a3 + 8);
    v12 = *(a3 + 16);
    if (v12 >= v11)
    {
      v13 = v12 + 1;
      if (v11 < v12 + 1)
      {
        if (*a3)
        {
          v14 = 2 * v11;
          v15 = v11 == 0;
          v16 = 8;
          if (!v15)
          {
            v16 = v14;
          }

          if (v16 <= v13)
          {
            v17 = v13;
          }

          else
          {
            v17 = v16;
          }

          re::DynamicArray<re::RigGraphSystem::BuildTask>::setCapacity(a3, v17);
        }

        else
        {
          re::DynamicArray<re::RigGraphSystem::BuildTask>::setCapacity(a3, v13);
          ++*(a3 + 24);
        }
      }

      v12 = *(a3 + 16);
    }

    v18 = *(a3 + 32) + 144 * v12;
    v19 = *v5;
    *(v18 + 8) = *(v5 + 8);
    *v18 = v19;
    *(v18 + 32) = 0u;
    *(v18 + 48) = 0;
    *(v18 + 16) = 0u;
    *(v18 + 52) = 0x7FFFFFFFLL;
    result = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap((v18 + 16), (v5 + 16));
    *(v18 + 96) = 0;
    *(v18 + 88) = 0;
    *(v18 + 72) = 0;
    *(v18 + 80) = 0;
    *(v18 + 64) = 0;
    v20 = *(v5 + 72);
    *(v18 + 64) = *(v5 + 64);
    *(v18 + 72) = v20;
    *(v5 + 64) = 0;
    *(v5 + 72) = 0;
    v21 = *(v18 + 80);
    *(v18 + 80) = *(v5 + 80);
    *(v5 + 80) = v21;
    v22 = *(v18 + 96);
    *(v18 + 96) = *(v5 + 96);
    *(v5 + 96) = v22;
    ++*(v5 + 88);
    ++*(v18 + 88);
    *(v18 + 136) = 0;
    *(v18 + 112) = 0;
    *(v18 + 120) = 0;
    *(v18 + 104) = 0;
    *(v18 + 128) = 0;
    v23 = *(v5 + 112);
    *(v18 + 104) = *(v5 + 104);
    *(v18 + 112) = v23;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
    v24 = *(v18 + 120);
    *(v18 + 120) = *(v5 + 120);
    *(v5 + 120) = v24;
    v25 = *(v18 + 136);
    *(v18 + 136) = *(v5 + 136);
    *(v5 + 136) = v25;
    ++*(v5 + 128);
    ++*(v18 + 128);
    ++*(a3 + 16);
    ++*(a3 + 24);
    v26 = *(a2 + 32);
    v27 = *(a2 + 16);
    i = v26;
    if (v27)
    {
      v29 = 8 * v27;
      for (i = *(a2 + 32); *i != v5; i += 8)
      {
        v29 -= 8;
        if (!v29)
        {
          return result;
        }
      }
    }

    v30 = &v26[8 * v27];
    if (i != v30)
    {
      v31 = i - v26;
      v32 = v31 >> 3;
      if (v27 <= v31 >> 3)
      {
        v36 = 0;
        memset(v45, 0, sizeof(v45));
        v33 = MEMORY[0x1E69E9C10];
        v37 = 136315906;
        v38 = "removeAt";
        v39 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        v40 = 931;
        v41 = 2048;
        v42 = v32;
        v43 = 2048;
        v44 = v27;
        _os_log_send_and_compose_impl(v34, &v36, v45, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v35);
        _os_crash_msg();
        __break(1u);
      }

      if (v27 - 1 > v32)
      {
        *&v26[v31] = *(v30 - 1);
      }

      *(a2 + 16) = v27 - 1;
      ++*(a2 + 24);
    }
  }

  return result;
}

uint64_t re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

void re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}