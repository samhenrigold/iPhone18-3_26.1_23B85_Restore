void anonymous namespace::AssemblyWriter::printGlobal(llvm::raw_ostream **this, uint64_t ***a2, uint64_t a3, BOOL a4)
{
  v79 = *MEMORY[0x277D85DE8];
  if (a2 && !*(a2 + 16) && (*(a2 + 35) & 1) != 0)
  {
    v6 = *this;
    v7 = *(*this + 4);
    if ((*(*this + 3) - v7) > 0x10)
    {
      *(v7 + 16) = 10;
      *v7 = *"; Materializable\n";
      *(v6 + 4) += 17;
    }

    else
    {
      llvm::raw_ostream::write(v6, "; Materializable\n", 0x11uLL);
    }
  }

  v8 = this[4];
  v9 = a2[5];
  v74[0] = &unk_2883F1008;
  v74[1] = (this + 5);
  v74[2] = v8;
  v74[3] = v9;
  WriteAsOperandInternal(*this, a2, v74, a4);
  v10 = *this;
  v11 = *(*this + 4);
  if ((*(*this + 3) - v11) > 2)
  {
    *(v11 + 2) = 32;
    *v11 = 15648;
    *(v10 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v10, " = ", 3uLL);
  }

  if (*(a2 + 16))
  {
    if (*(a2 + 16) != 3 || (*(a2 + 5) & 0x7FFFFFF) != 0)
    {
      goto LABEL_20;
    }

    v12 = *(a2 + 8);
  }

  else
  {
    if (a2[9] != (a2 + 9))
    {
      goto LABEL_20;
    }

    v12 = *(a2 + 8);
    if ((v12 & 0x1000000) != 0)
    {
      goto LABEL_20;
    }
  }

  if ((v12 & 0xF) == 0)
  {
    v13 = *this;
    v14 = *(*this + 4);
    if ((*(*this + 3) - v14) > 8)
    {
      *(v14 + 8) = 32;
      *v14 = *"external ";
      *(v13 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v13, "external ", 9uLL);
    }
  }

LABEL_20:
  v15 = *this;
  getLinkageNameWithSpace(&__p, a2[4] & 0xF);
  if ((v78 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v78 & 0x80u) == 0)
  {
    v17 = v78;
  }

  else
  {
    v17 = v76;
  }

  llvm::raw_ostream::write(v15, p_p, v17);
  if (v78 < 0)
  {
    operator delete(__p);
  }

  PrintDSOLocation(a2, *this);
  v18 = *(a2 + 8);
  v19 = (v18 >> 4) & 3;
  v20 = *this;
  if (v19 == 1)
  {
    v21 = "hidden ";
    v22 = 7;
  }

  else
  {
    if (v19 != 2)
    {
      goto LABEL_33;
    }

    v21 = "protected ";
    v22 = 10;
  }

  llvm::raw_ostream::operator<<(*this, v21, v22);
  v18 = *(a2 + 8);
  v20 = *this;
LABEL_33:
  v23 = (v18 >> 8) & 3;
  if (v23 == 1)
  {
    v24 = "dllimport ";
  }

  else
  {
    if (v23 != 2)
    {
      goto LABEL_38;
    }

    v24 = "dllexport ";
  }

  llvm::raw_ostream::operator<<(v20, v24, 0xAuLL);
  v18 = *(a2 + 8);
  v20 = *this;
LABEL_38:
  PrintThreadLocalModel(((v18 >> 10) & 7), v20);
  if (*(a2 + 8) >> 6)
  {
    if (*(a2 + 8) >> 6 == 1)
    {
      v25 = "local_unnamed_addr";
      v26 = 18;
    }

    else
    {
      v25 = "unnamed_addr";
      v26 = 12;
    }

    v27 = llvm::raw_ostream::operator<<(*this, v25, v26);
    v28 = *(v27 + 4);
    if (v28 >= *(v27 + 3))
    {
      llvm::raw_ostream::write(v27, 32);
    }

    else
    {
      *(v27 + 4) = v28 + 1;
      *v28 = 32;
    }
  }

  v29 = *(*a2 + 2);
  if (v29 >= 0x100)
  {
    v30 = v29 >> 8;
    v31 = *this;
    v32 = *(*this + 4);
    if ((*(*this + 3) - v32) > 9)
    {
      *(v32 + 8) = 10341;
      *v32 = *"addrspace(";
      *(v31 + 4) += 10;
    }

    else
    {
      llvm::raw_ostream::write(*this, "addrspace(", 0xAuLL);
    }

    write_unsigned<unsigned long>(v31, v30, 0, 0, 0);
    v33 = *(v31 + 4);
    if (*(v31 + 3) - v33 > 1uLL)
    {
      *v33 = 8233;
      *(v31 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v31, ") ", 2uLL);
    }
  }

  v34 = *(a2 + 80);
  if ((v34 & 2) != 0)
  {
    v35 = *this;
    v36 = *(*this + 4);
    if (*(*this + 3) - v36 > 0x16uLL)
    {
      qmemcpy(v36, "externally_initialized ", 23);
      *(v35 + 4) += 23;
    }

    else
    {
      llvm::raw_ostream::write(v35, "externally_initialized ", 0x17uLL);
    }

    v34 = *(a2 + 80);
  }

  if (v34)
  {
    v37 = 9;
  }

  else
  {
    v37 = 7;
  }

  if (v34)
  {
    v38 = "constant ";
  }

  else
  {
    v38 = "global ";
  }

  llvm::raw_ostream::operator<<(*this, v38, v37);
  if (*(a2 + 16))
  {
    if (*(a2 + 16) == 3 && (*(a2 + 5) & 0x7FFFFFF) == 0)
    {
      goto LABEL_73;
    }
  }

  else if (a2[9] == (a2 + 9) && (*(a2 + 35) & 1) == 0)
  {
    goto LABEL_73;
  }

  v40 = *this;
  v41 = *(*this + 4);
  if (v41 >= *(*this + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

LABEL_73:
  if ((*(a2 + 34) & 0x80) != 0)
  {
    v42 = *this;
    v43 = *(*this + 4);
    if ((*(*this + 3) - v43) > 0xA)
    {
      *(v43 + 7) = 572550767;
      *v43 = *", section ";
      *(v42 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v42, ", section ", 0xBuLL);
    }

    if ((*(a2 + 34) & 0x80) != 0)
    {
      v46 = ***a2;
      __p = a2;
      v47 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>,llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>::FindAndConstruct((v46 + 2552), &__p);
      v44 = v47[1];
      v45 = v47[2];
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }

    llvm::printEscapedString(v44, v45, *this);
    v48 = *this;
    v49 = *(*this + 4);
    if (v49 >= *(*this + 3))
    {
      llvm::raw_ostream::write(v48, 34);
    }

    else
    {
      *(v48 + 4) = v49 + 1;
      *v49 = 34;
    }
  }

  if ((*(a2 + 33) & 0x80) != 0)
  {
    v50 = *this;
    v51 = *(*this + 4);
    if (*(*this + 3) - v51 > 0xCuLL)
    {
      qmemcpy(v51, ", partition ", 13);
      *(v50 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v50, ", partition ", 0xDuLL);
    }

    Partition = llvm::GlobalValue::getPartition(a2);
    llvm::printEscapedString(Partition, v53, *this);
    v54 = *this;
    v55 = *(*this + 4);
    if (v55 >= *(*this + 3))
    {
      llvm::raw_ostream::write(v54, 34);
    }

    else
    {
      *(v54 + 4) = v55 + 1;
      *v55 = 34;
    }
  }

  if (*(a2 + 34))
  {
    v56 = ***a2;
    __p = a2;
    v57 = *(llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata>>,llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata>>::FindAndConstruct((v56 + 2600), &__p) + 8);
    if ((v57 & 1) == 0)
    {
      if ((v57 & 2) == 0)
      {
        goto LABEL_93;
      }

LABEL_102:
      v62 = *this;
      v63 = *(*this + 4);
      if (*(*this + 3) - v63 > 0x16uLL)
      {
        qmemcpy(v63, ", no_sanitize_hwaddress", 23);
        *(v62 + 4) += 23;
        if ((v57 & 4) != 0)
        {
          goto LABEL_106;
        }
      }

      else
      {
        llvm::raw_ostream::write(v62, ", no_sanitize_hwaddress", 0x17uLL);
        if ((v57 & 4) != 0)
        {
          goto LABEL_106;
        }
      }

LABEL_94:
      if ((v57 & 8) == 0)
      {
        goto LABEL_110;
      }

LABEL_95:
      v58 = *this;
      v59 = *(*this + 4);
      if (*(*this + 3) - v59 > 0x19uLL)
      {
        qmemcpy(v59, ", sanitize_address_dyninit", 26);
        *(v58 + 4) += 26;
      }

      else
      {
        llvm::raw_ostream::write(v58, ", sanitize_address_dyninit", 0x1AuLL);
      }

      goto LABEL_110;
    }

    v60 = *this;
    v61 = *(*this + 4);
    if (*(*this + 3) - v61 > 0x14uLL)
    {
      qmemcpy(v61, ", no_sanitize_address", 21);
      *(v60 + 4) += 21;
      if ((v57 & 2) != 0)
      {
        goto LABEL_102;
      }
    }

    else
    {
      llvm::raw_ostream::write(v60, ", no_sanitize_address", 0x15uLL);
      if ((v57 & 2) != 0)
      {
        goto LABEL_102;
      }
    }

LABEL_93:
    if ((v57 & 4) == 0)
    {
      goto LABEL_94;
    }

LABEL_106:
    v64 = *this;
    v65 = *(*this + 4);
    if ((*(*this + 3) - v65) > 0x10)
    {
      *(v65 + 16) = 103;
      *v65 = *", sanitize_memtag";
      *(v64 + 4) += 17;
      if ((v57 & 8) == 0)
      {
        goto LABEL_110;
      }
    }

    else
    {
      llvm::raw_ostream::write(v64, ", sanitize_memtag", 0x11uLL);
      if ((v57 & 8) == 0)
      {
        goto LABEL_110;
      }
    }

    goto LABEL_95;
  }

LABEL_110:
  maybePrintComdat(*this, a2);
  v66 = (*(a2 + 8) >> 17) & 0x3F;
  if (v66)
  {
    v67 = v66 - 1;
    v68 = *this;
    v69 = *(*this + 4);
    if (*(*this + 3) - v69 > 7uLL)
    {
      *v69 = 0x206E67696C61202CLL;
      *(v68 + 4) += 8;
    }

    else
    {
      v68 = llvm::raw_ostream::write(v68, ", align ", 8uLL);
    }

    write_unsigned<unsigned long>(v68, 1 << v67, 0, 0, 0);
  }

  __p = v77;
  v76 = 0x400000000;
  llvm::Value::getAllMetadata(a2, &__p);
  v70 = a2[9];
  if (v70)
  {
    v71 = *this;
    v72 = *(*this + 4);
    if (*(*this + 3) - v72 > 1uLL)
    {
      *v72 = 8992;
      *(v71 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(*this, " #", 2uLL);
    }

    AttributeGroupSlot = llvm::SlotTracker::getAttributeGroupSlot(this[4], v70);
    llvm::write_integer(v71, AttributeGroupSlot, 0, 0);
  }

  if (__p != v77)
  {
    free(__p);
  }
}

llvm::raw_ostream *anonymous namespace::AssemblyWriter::printAlias(llvm::raw_ostream **a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  if (a2 && !*(a2 + 16) && (*(a2 + 35) & 1) != 0)
  {
    v6 = *a1;
    v7 = *(*a1 + 4);
    if ((*(*a1 + 3) - v7) > 0x10)
    {
      *(v7 + 16) = 10;
      *v7 = *"; Materializable\n";
      *(v6 + 4) += 17;
    }

    else
    {
      llvm::raw_ostream::write(v6, "; Materializable\n", 0x11uLL);
    }
  }

  v8 = a1[4];
  v9 = *(a2 + 40);
  v44[0] = &unk_2883F1008;
  v44[1] = (a1 + 5);
  v44[2] = v8;
  v44[3] = v9;
  WriteAsOperandInternal(*a1, a2, v44, a4);
  v10 = *a1;
  v11 = *(*a1 + 4);
  if ((*(*a1 + 3) - v11) > 2)
  {
    *(v11 + 2) = 32;
    *v11 = 15648;
    *(v10 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v10, " = ", 3uLL);
  }

  v12 = *a1;
  getLinkageNameWithSpace(__p, *(a2 + 32) & 0xF);
  if ((v43 & 0x80u) == 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if ((v43 & 0x80u) == 0)
  {
    v14 = v43;
  }

  else
  {
    v14 = __p[1];
  }

  llvm::raw_ostream::write(v12, v13, v14);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  PrintDSOLocation(a2, *a1);
  v15 = *(a2 + 32);
  v16 = (v15 >> 4) & 3;
  v17 = *a1;
  if (v16 == 1)
  {
    v18 = "hidden ";
    v19 = 7;
  }

  else
  {
    if (v16 != 2)
    {
      goto LABEL_23;
    }

    v18 = "protected ";
    v19 = 10;
  }

  llvm::raw_ostream::operator<<(*a1, v18, v19);
  v15 = *(a2 + 32);
  v17 = *a1;
LABEL_23:
  v20 = (v15 >> 8) & 3;
  if (v20 == 1)
  {
    v21 = "dllimport ";
  }

  else
  {
    if (v20 != 2)
    {
      goto LABEL_28;
    }

    v21 = "dllexport ";
  }

  llvm::raw_ostream::operator<<(v17, v21, 0xAuLL);
  v15 = *(a2 + 32);
  v17 = *a1;
LABEL_28:
  PrintThreadLocalModel(((v15 >> 10) & 7), v17);
  if (*(a2 + 32) >> 6)
  {
    if (*(a2 + 32) >> 6 == 1)
    {
      v22 = "local_unnamed_addr";
      v23 = 18;
    }

    else
    {
      v22 = "unnamed_addr";
      v23 = 12;
    }

    v24 = llvm::raw_ostream::operator<<(*a1, v22, v23);
    v25 = *(v24 + 4);
    if (v25 >= *(v24 + 3))
    {
      llvm::raw_ostream::write(v24, 32);
    }

    else
    {
      *(v24 + 4) = v25 + 1;
      *v25 = 32;
    }
  }

  v26 = *a1;
  v27 = *(*a1 + 4);
  if ((*(*a1 + 3) - v27) > 5)
  {
    *(v27 + 4) = 8307;
    *v27 = 1634298977;
    *(v26 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v26, "alias ", 6uLL);
  }

  v29 = *a1;
  v30 = *(*a1 + 4);
  if (*(*a1 + 3) - v30 > 1uLL)
  {
    *v30 = 8236;
    *(v29 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v29, ", ", 2uLL);
  }

  v31 = *(a2 - 32);
  if (v31)
  {
  }

  else
  {
    v32 = *a1;
    v33 = *(*a1 + 4);
    if ((*(*a1 + 3) - v33) > 0x10)
    {
      *(v33 + 16) = 62;
      *v33 = *" <<NULL ALIASEE>>";
      *(v32 + 4) += 17;
    }

    else
    {
      llvm::raw_ostream::write(v32, " <<NULL ALIASEE>>", 0x11uLL);
    }
  }

  if ((*(a2 + 33) & 0x80) != 0)
  {
    v34 = *a1;
    v35 = *(*a1 + 4);
    if (*(*a1 + 3) - v35 > 0xCuLL)
    {
      qmemcpy(v35, ", partition ", 13);
      *(v34 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v34, ", partition ", 0xDuLL);
    }

    Partition = llvm::GlobalValue::getPartition(a2);
    llvm::printEscapedString(Partition, v37, *a1);
    v38 = *a1;
    v39 = *(*a1 + 4);
    if (v39 >= *(*a1 + 3))
    {
      llvm::raw_ostream::write(v38, 34);
    }

    else
    {
      *(v38 + 4) = v39 + 1;
      *v39 = 34;
    }
  }

  result = *a1;
  v41 = *(*a1 + 4);
  if (v41 >= *(*a1 + 3))
  {
    return llvm::raw_ostream::write(result, 10);
  }

  *(result + 4) = v41 + 1;
  *v41 = 10;
  return result;
}

llvm::raw_ostream *anonymous namespace::AssemblyWriter::printIFunc(llvm::raw_ostream **a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  if (a2 && !*(a2 + 16) && (*(a2 + 35) & 1) != 0)
  {
    v6 = *a1;
    v7 = *(*a1 + 4);
    if ((*(*a1 + 3) - v7) > 0x10)
    {
      *(v7 + 16) = 10;
      *v7 = *"; Materializable\n";
      *(v6 + 4) += 17;
    }

    else
    {
      llvm::raw_ostream::write(v6, "; Materializable\n", 0x11uLL);
    }
  }

  v8 = a1[4];
  v9 = *(a2 + 40);
  v36[0] = &unk_2883F1008;
  v36[1] = (a1 + 5);
  v36[2] = v8;
  v36[3] = v9;
  WriteAsOperandInternal(*a1, a2, v36, a4);
  v10 = *a1;
  v11 = *(*a1 + 4);
  if ((*(*a1 + 3) - v11) > 2)
  {
    *(v11 + 2) = 32;
    *v11 = 15648;
    *(v10 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v10, " = ", 3uLL);
  }

  v12 = *a1;
  getLinkageNameWithSpace(__p, *(a2 + 32) & 0xF);
  if ((v35 & 0x80u) == 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if ((v35 & 0x80u) == 0)
  {
    v14 = v35;
  }

  else
  {
    v14 = __p[1];
  }

  llvm::raw_ostream::write(v12, v13, v14);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  PrintDSOLocation(a2, *a1);
  v15 = (*(a2 + 32) >> 4) & 3;
  v16 = *a1;
  if (v15 == 1)
  {
    v17 = "hidden ";
    v18 = 7;
  }

  else
  {
    if (v15 != 2)
    {
      goto LABEL_23;
    }

    v17 = "protected ";
    v18 = 10;
  }

  llvm::raw_ostream::operator<<(v16, v17, v18);
  v16 = *a1;
LABEL_23:
  v19 = *(v16 + 4);
  if ((*(v16 + 3) - v19) > 5)
  {
    *(v19 + 4) = 8291;
    *v19 = 1853187689;
    *(v16 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v16, "ifunc ", 6uLL);
  }

  v21 = *a1;
  v22 = *(*a1 + 4);
  if (*(*a1 + 3) - v22 > 1uLL)
  {
    *v22 = 8236;
    *(v21 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v21, ", ", 2uLL);
  }

  v23 = *(a2 - 32);
  if (v23)
  {
  }

  else
  {
    v24 = *a1;
    v25 = *(*a1 + 4);
    if ((*(*a1 + 3) - v25) > 0x11)
    {
      *(v25 + 16) = 15934;
      *v25 = *" <<NULL RESOLVER>>";
      *(v24 + 4) += 18;
    }

    else
    {
      llvm::raw_ostream::write(v24, " <<NULL RESOLVER>>", 0x12uLL);
    }
  }

  if ((*(a2 + 33) & 0x80) != 0)
  {
    v26 = *a1;
    v27 = *(*a1 + 4);
    if (*(*a1 + 3) - v27 > 0xCuLL)
    {
      qmemcpy(v27, ", partition ", 13);
      *(v26 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v26, ", partition ", 0xDuLL);
    }

    Partition = llvm::GlobalValue::getPartition(a2);
    llvm::printEscapedString(Partition, v29, *a1);
    v30 = *a1;
    v31 = *(*a1 + 4);
    if (v31 >= *(*a1 + 3))
    {
      llvm::raw_ostream::write(v30, 34);
    }

    else
    {
      *(v30 + 4) = v31 + 1;
      *v31 = 34;
    }
  }

  result = *a1;
  v33 = *(*a1 + 4);
  if (v33 >= *(*a1 + 3))
  {
    return llvm::raw_ostream::write(result, 10);
  }

  *(result + 4) = v33 + 1;
  *v33 = 10;
  return result;
}

void WriteConstantInternal(llvm::raw_ostream *a1, const llvm::Constant *a2, llvm::raw_ostream **a3)
{
  v5 = a1;
  v127[16] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 16);
  if (!a2 || v6 != 16)
  {
    if (a2 && v6 == 17)
    {
      v10 = (a2 + 32);
      v11 = *(a2 + 4);
      v12 = (a2 + 24);
      if (v11 == &llvm::semIEEEsingle || v11 == &llvm::semIEEEdouble)
      {
        if (v11 == &llvm::semPPCDoubleDouble)
        {
          v15 = *(a2 + 5);
          v14 = v15 + 28;
        }

        else
        {
          v14 = a2 + 52;
          v15 = a2 + 24;
        }

        if ((*v14 & 7) != 0 && (v15[28] & 7) != 1)
        {
          v26 = llvm::APFloat::convertToDouble(a2 + 3);
          v125 = v127;
          *__n = xmmword_2750C1290;
          llvm::APFloat::toString(v12, &v125, 6, 0, 0);
          llvm::APFloat::APFloat(&__src, &llvm::semIEEEdouble, v125, __n[0]);
          v27 = llvm::APFloat::convertToDouble(&__src);
          llvm::APFloat::Storage::~Storage(&v121);
          if (v27 == v26)
          {
            llvm::raw_ostream::write(v5, v125, __n[0]);
            if (v125 != v127)
            {
              free(v125);
            }

            return;
          }

          if (v125 != v127)
          {
            free(v125);
          }
        }

        llvm::APFloat::Storage::Storage(__n, v10);
        if (v11 != &llvm::semIEEEdouble)
        {
          v28 = __n[0] == &llvm::semPPCDoubleDouble ? (__n[1] + 8) : __n;
          isSignaling = llvm::detail::IEEEFloat::isSignaling(v28);
          llvm::APFloat::convert(&v125, &llvm::semIEEEdouble, 1, &v119);
          if (isSignaling)
          {
            llvm::APFloat::bitcastToAPInt(&v117, &v125);
            v30 = __n[0] == &llvm::semPPCDoubleDouble ? __n[1] : &v125;
            v31 = (*(v30 + 28) >> 3) & 1;
            llvm::detail::IEEEFloat::IEEEFloat(&v121, &llvm::semIEEEdouble);
            llvm::APFloat::makeNaN(&__src, 1, v31, &v117);
            llvm::APFloat::Storage::operator=(__n, &v121);
            llvm::APFloat::Storage::~Storage(&v121);
            if (v118 >= 0x41)
            {
              if (v117)
              {
                MEMORY[0x277C69E10](v117, 0x1000C8000313F17);
              }
            }
          }
        }

        llvm::APFloat::bitcastToAPInt(&v117, &v125);
        if (v118 >= 0x41)
        {
          v32 = v117;
        }

        else
        {
          v32 = &v117;
        }

        __src = *v32;
        v121 = 0;
        v122 = 0;
        v123 = 257;
        v124 = 1;
        llvm::raw_ostream::operator<<(v5, &__src);
        if (v118 >= 0x41 && v117)
        {
          MEMORY[0x277C69E10](v117, 0x1000C8000313F17);
        }

        llvm::APFloat::Storage::~Storage(__n);
        return;
      }

      v20 = *(a1 + 4);
      if (*(a1 + 3) - v20 > 1uLL)
      {
        *v20 = 30768;
        *(a1 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(a1, "0x", 2uLL);
      }

      llvm::APFloat::bitcastToAPInt(&__src, v12);
      v23 = *v10;
      if (*v10 == &llvm::semX87DoubleExtended)
      {
        v33 = *(v5 + 4);
        if (v33 >= *(v5 + 3))
        {
          llvm::raw_ostream::write(v5, 75);
        }

        else
        {
          *(v5 + 4) = v33 + 1;
          *v33 = 75;
        }

        v36 = v121;
        v37 = v121 - 16;
        if (v121 > 0x40)
        {
          operator new[]();
        }

        v38 = __src >> v37;
        v125 = (__src >> v37);
        __n[0] = 0;
        LODWORD(__n[1]) = 4;
        WORD2(__n[1]) = 257;
        BYTE6(__n[1]) = 0;
        llvm::raw_ostream::operator<<(v5, &v125);
        if (v36 >= 0x41 && v38)
        {
          MEMORY[0x277C69E10](v38, 0x1000C8000313F17);
        }

        llvm::APInt::getLoBits(&__src, 0x40u, &v117);
        if (v118 >= 0x41)
        {
          v39 = v117;
        }

        else
        {
          v39 = &v117;
        }

        v125 = *v39;
        __n[0] = 0;
        LODWORD(__n[1]) = 16;
        WORD2(__n[1]) = 257;
      }

      else
      {
        if (v23 == &llvm::semIEEEquad)
        {
          v35 = *(v5 + 4);
          if (v35 >= *(v5 + 3))
          {
            llvm::raw_ostream::write(v5, 76);
          }

          else
          {
            *(v5 + 4) = v35 + 1;
            *v35 = 76;
          }

          llvm::APInt::getLoBits(&__src, 0x40u, &v117);
          if (v118 >= 0x41)
          {
            v43 = v117;
          }

          else
          {
            v43 = &v117;
          }

          v125 = *v43;
          __n[0] = 0;
          LODWORD(__n[1]) = 16;
          WORD2(__n[1]) = 257;
          BYTE6(__n[1]) = 0;
          llvm::raw_ostream::operator<<(v5, &v125);
          if (v118 >= 0x41 && v117)
          {
            MEMORY[0x277C69E10](v117, 0x1000C8000313F17);
          }

          v44 = v121;
          v45 = v121 - 64;
          if (v121 > 0x40)
          {
            operator new[]();
          }

          v46 = __src >> v45;
          v125 = (__src >> v45);
          __n[0] = 0;
          LODWORD(__n[1]) = 16;
          WORD2(__n[1]) = 257;
          BYTE6(__n[1]) = 0;
          llvm::raw_ostream::operator<<(v5, &v125);
          if (v44 < 0x41 || !v46)
          {
            goto LABEL_154;
          }

          v47 = v46;
          goto LABEL_148;
        }

        if (v23 != &llvm::semPPCDoubleDouble)
        {
          if (v23 == &llvm::semIEEEhalf)
          {
            v24 = *(v5 + 4);
            if (v24 < *(v5 + 3))
            {
              *(v5 + 4) = v24 + 1;
              v25 = 72;
              goto LABEL_125;
            }

            v51 = v5;
            v52 = 72;
          }

          else
          {
            v24 = *(v5 + 4);
            if (v24 < *(v5 + 3))
            {
              *(v5 + 4) = v24 + 1;
              v25 = 82;
LABEL_125:
              *v24 = v25;
LABEL_151:
              p_src = &__src;
              if (v121 >= 0x41)
              {
                p_src = __src;
              }

              v125 = *p_src;
              __n[0] = 0;
              LODWORD(__n[1]) = 4;
              WORD2(__n[1]) = 257;
              BYTE6(__n[1]) = 0;
              llvm::raw_ostream::operator<<(v5, &v125);
              goto LABEL_154;
            }

            v51 = v5;
            v52 = 82;
          }

          llvm::raw_ostream::write(v51, v52);
          goto LABEL_151;
        }

        v42 = *(v5 + 4);
        if (v42 >= *(v5 + 3))
        {
          llvm::raw_ostream::write(v5, 77);
        }

        else
        {
          *(v5 + 4) = v42 + 1;
          *v42 = 77;
        }

        llvm::APInt::getLoBits(&__src, 0x40u, &v117);
        if (v118 >= 0x41)
        {
          v53 = v117;
        }

        else
        {
          v53 = &v117;
        }

        v125 = *v53;
        __n[0] = 0;
        LODWORD(__n[1]) = 16;
        WORD2(__n[1]) = 257;
        BYTE6(__n[1]) = 0;
        llvm::raw_ostream::operator<<(v5, &v125);
        if (v118 >= 0x41 && v117)
        {
          MEMORY[0x277C69E10](v117, 0x1000C8000313F17);
        }

        llvm::APInt::getHiBits(&__src, 64, &v117);
        if (v118 >= 0x41)
        {
          v54 = v117;
        }

        else
        {
          v54 = &v117;
        }

        v125 = *v54;
        __n[0] = 0;
        LODWORD(__n[1]) = 16;
        WORD2(__n[1]) = 257;
      }

      BYTE6(__n[1]) = 0;
      llvm::raw_ostream::operator<<(v5, &v125);
      if (v118 < 0x41 || (v47 = v117) == 0)
      {
LABEL_154:
        if (v121 >= 0x41 && __src)
        {
          MEMORY[0x277C69E10](__src, 0x1000C8000313F17);
        }

        return;
      }

LABEL_148:
      MEMORY[0x277C69E10](v47, 0x1000C8000313F17);
      goto LABEL_154;
    }

    if (v6 == 18 || v6 == 13)
    {
      v17 = *(a1 + 4);
      if (*(a1 + 3) - v17 > 0xEuLL)
      {
        qmemcpy(v17, "zeroinitializer", 15);
        v21 = *(a1 + 4) + 15;
LABEL_106:
        *(v5 + 4) = v21;
        return;
      }

      v18 = "zeroinitializer";
      v19 = 15;
LABEL_32:

      llvm::raw_ostream::write(a1, v18, v19);
      return;
    }

    if (a2 && v6 == 4)
    {
      v22 = *(a1 + 4);
      if (*(a1 + 3) - v22 > 0xCuLL)
      {
        qmemcpy(v22, "blockaddress(", 13);
        *(a1 + 4) += 13;
      }

      else
      {
        llvm::raw_ostream::write(a1, "blockaddress(", 0xDuLL);
      }

      WriteAsOperandInternal(v5, *(a2 - 8), a3);
      v40 = *(v5 + 4);
      if (*(v5 + 3) - v40 > 1uLL)
      {
        *v40 = 8236;
        *(v5 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v5, ", ", 2uLL);
      }

      WriteAsOperandInternal(v5, *(a2 - 4), a3);
      v41 = *(v5 + 4);
      if (*(v5 + 3) != v41)
      {
        *v41 = 41;
        v21 = *(v5 + 4) + 1;
        goto LABEL_106;
      }

      v18 = ")";
      a1 = v5;
      v19 = 1;
      goto LABEL_32;
    }

    if (a2 && v6 == 6)
    {
      v34 = *(a1 + 4);
      if (*(a1 + 3) - v34 > 0x14uLL)
      {
        qmemcpy(v34, "dso_local_equivalent ", 21);
        *(a1 + 4) += 21;
      }

      else
      {
        llvm::raw_ostream::write(a1, "dso_local_equivalent ", 0x15uLL);
      }

      goto LABEL_131;
    }

    if (a2 && v6 == 7)
    {
      llvm::raw_ostream::operator<<(a1, "no_cfi ", 7uLL);
LABEL_131:
      v50 = *(a2 - 4);

      WriteAsOperandInternal(v5, v50, a3);
      return;
    }

    if (a2 && v6 == 8)
    {
      v48 = *(*a2 + 24);
      v49 = *(a1 + 4);
      if (v49 >= *(a1 + 3))
      {
        llvm::raw_ostream::write(a1, 91);
      }

      else
      {
        *(a1 + 4) = v49 + 1;
        *v49 = 91;
      }

      v64 = *(v5 + 4);
      if (v64 >= *(v5 + 3))
      {
        llvm::raw_ostream::write(v5, 32);
      }

      else
      {
        *(v5 + 4) = v64 + 1;
        *v64 = 32;
      }

      WriteAsOperandInternal(v5, *(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF)), a3);
      v65 = *(a2 + 5) & 0x7FFFFFF;
      v66 = v65 - 1;
      if (v65 != 1)
      {
        v67 = a2 + 32;
        do
        {
          v68 = *(v5 + 4);
          if (*(v5 + 3) - v68 > 1uLL)
          {
            *v68 = 8236;
            *(v5 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v5, ", ", 2uLL);
          }

          v69 = *(v5 + 4);
          if (v69 >= *(v5 + 3))
          {
            llvm::raw_ostream::write(v5, 32);
          }

          else
          {
            *(v5 + 4) = v69 + 1;
            *v69 = 32;
          }

          WriteAsOperandInternal(v5, *&v67[-32 * (*(a2 + 5) & 0x7FFFFFF)], a3);
          v67 += 32;
          --v66;
        }

        while (v66);
      }

      v61 = *(v5 + 4);
      if (v61 < *(v5 + 3))
      {
        *(v5 + 4) = v61 + 1;
LABEL_207:
        v62 = 93;
        goto LABEL_208;
      }

LABEL_209:
      v78 = v5;
      v79 = 93;
      goto LABEL_210;
    }

    if (a2 && v6 == 14)
    {
      v56 = *a2;
      if (*(*a2 + 8) == 17)
      {
        v57 = *(v56 + 24);
        v58 = (a1 + 32);
        if (*(v57 + 2) == 2061)
        {
          llvm::raw_ostream::operator<<(a1, "c", 2uLL);
          RawDataValues = llvm::ConstantDataSequential::getRawDataValues(a2);
          llvm::printEscapedString(RawDataValues, v60, v5);
          v61 = *(v5 + 4);
          if (v61 < *(v5 + 3))
          {
            *v58 = v61 + 1;
            v62 = 34;
LABEL_208:
            *v61 = v62;
            return;
          }

          v78 = v5;
          v79 = 34;
LABEL_210:

          llvm::raw_ostream::write(v78, v79);
          return;
        }
      }

      else
      {
        v58 = (a1 + 32);
        v57 = *(v56 + 24);
      }

      v70 = *(a1 + 4);
      if (v70 >= *(a1 + 3))
      {
        llvm::raw_ostream::write(a1, 91);
      }

      else
      {
        *v58 = v70 + 1;
        *v70 = 91;
      }

      v71 = *(v5 + 4);
      if (v71 >= *(v5 + 3))
      {
        llvm::raw_ostream::write(v5, 32);
      }

      else
      {
        *v58 = v71 + 1;
        *v71 = 32;
      }

      ElementAsConstant = llvm::ConstantDataSequential::getElementAsConstant(a2, 0);
      WriteAsOperandInternal(v5, ElementAsConstant, a3);
      v73 = *(*a2 + 32);
      if (v73 != 1)
      {
        for (i = 1; i != v73; ++i)
        {
          v75 = *(v5 + 4);
          if (*(v5 + 3) - v75 > 1uLL)
          {
            *v75 = 8236;
            *v58 += 2;
          }

          else
          {
            llvm::raw_ostream::write(v5, ", ", 2uLL);
          }

          v76 = *(v5 + 4);
          if (v76 >= *(v5 + 3))
          {
            llvm::raw_ostream::write(v5, 32);
          }

          else
          {
            *v58 = v76 + 1;
            *v76 = 32;
          }

          v77 = llvm::ConstantDataSequential::getElementAsConstant(a2, i);
          WriteAsOperandInternal(v5, v77, a3);
        }
      }

      v61 = *(v5 + 4);
      if (v61 < *(v5 + 3))
      {
        *v58 = v61 + 1;
        goto LABEL_207;
      }

      goto LABEL_209;
    }

    if (a2 && v6 == 9)
    {
      if ((*(*a2 + 9) & 2) != 0)
      {
        v63 = *(a1 + 4);
        if (v63 >= *(a1 + 3))
        {
          llvm::raw_ostream::write(a1, 60);
        }

        else
        {
          *(a1 + 4) = v63 + 1;
          *v63 = 60;
        }
      }

      v83 = *(v5 + 4);
      if (v83 >= *(v5 + 3))
      {
        llvm::raw_ostream::write(v5, 123);
      }

      else
      {
        *(v5 + 4) = v83 + 1;
        *v83 = 123;
      }

      v84 = *(a2 + 5);
      v85 = v84 & 0x7FFFFFF;
      if ((v84 & 0x7FFFFFF) != 0)
      {
        v86 = *(v5 + 4);
        if (v86 >= *(v5 + 3))
        {
          llvm::raw_ostream::write(v5, 32);
        }

        else
        {
          *(v5 + 4) = v86 + 1;
          *v86 = 32;
        }

        v87 = *(v5 + 4);
        if (v87 >= *(v5 + 3))
        {
          llvm::raw_ostream::write(v5, 32);
        }

        else
        {
          *(v5 + 4) = v87 + 1;
          *v87 = 32;
        }

        WriteAsOperandInternal(v5, *(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF)), a3);
        if (v85 != 1)
        {
          v88 = v85 - 1;
          v89 = a2 + 32;
          do
          {
            llvm::raw_ostream::operator<<(v5, ", ", 2uLL);
            v90 = *(v5 + 4);
            if (v90 >= *(v5 + 3))
            {
              llvm::raw_ostream::write(v5, 32);
            }

            else
            {
              *(v5 + 4) = v90 + 1;
              *v90 = 32;
            }

            WriteAsOperandInternal(v5, *&v89[-32 * (*(a2 + 5) & 0x7FFFFFF)], a3);
            v89 += 32;
            --v88;
          }

          while (v88);
        }

        v91 = *(v5 + 4);
        if (v91 >= *(v5 + 3))
        {
          llvm::raw_ostream::write(v5, 32);
        }

        else
        {
          *(v5 + 4) = v91 + 1;
          *v91 = 32;
        }
      }

      v92 = *(v5 + 4);
      if (v92 >= *(v5 + 3))
      {
        llvm::raw_ostream::write(v5, 125);
      }

      else
      {
        *(v5 + 4) = v92 + 1;
        *v92 = 125;
      }

      if ((*(*a2 + 9) & 2) == 0)
      {
        return;
      }

      goto LABEL_257;
    }

    if (*(a2 + 16) > 0xEu)
    {
      switch(v6)
      {
        case 20:
          v9 = "none";
          break;
        case 19:
          v9 = "null";
          break;
        case 15:
          goto LABEL_216;
        default:
          goto LABEL_260;
      }

      v8 = 4;
      goto LABEL_13;
    }

    if (v6 != 10)
    {
      if (v6 == 12)
      {
        v9 = "poison";
        v8 = 6;
        goto LABEL_13;
      }

LABEL_260:
      if ((v6 - 11) > 1)
      {
        if (a2 && v6 == 5)
        {
          OpcodeName = llvm::Instruction::getOpcodeName(*(a2 + 9));
          llvm::raw_ostream::operator<<(v5, OpcodeName);
          WriteOptimizationInfo(v5, a2);
          if (*(a2 + 9) - 53 <= 1)
          {
            v104 = *(v5 + 4);
            if (v104 >= *(v5 + 3))
            {
              llvm::raw_ostream::write(v5, 32);
            }

            else
            {
              *(v5 + 4) = v104 + 1;
              *v104 = 32;
            }

            PredicateName = llvm::CmpInst::getPredicateName(*(a2 + 12));
            llvm::raw_ostream::operator<<(v5, PredicateName, v106);
          }

          llvm::raw_ostream::operator<<(v5, " (", 2uLL);
          if (*(a2 + 9) == 34)
          {
            v107 = 24;
            if (*(a2 + 16) == 62)
            {
              v107 = 64;
            }

            llvm::raw_ostream::operator<<(v5, ", ", 2uLL);
            v108 = *(a2 + 17);
            v109 = v108 > 3;
            v110 = v108 > 3;
            if (v108 <= 3)
            {
              v111 = 0;
            }

            else
            {
              v111 = (*(a2 + 17) >> 2) - 1;
            }

            if (v109)
            {
              v112 = v111 + 1;
            }

            else
            {
              v112 = 0;
            }
          }

          else
          {
            v112 = 0;
            v110 = 0;
          }

          v113 = *(a2 + 5) & 0x7FFFFFF;
          if (v113)
          {
            v114 = -32 * v113;
            if (!v110)
            {
              goto LABEL_286;
            }

LABEL_284:
            if (v112 == ((v114 + 32 * (*(a2 + 5) & 0x7FFFFFF)) >> 5))
            {
              llvm::raw_ostream::operator<<(v5, "inrange ", 8uLL);
            }

            while (1)
            {
LABEL_286:
              v115 = *(v5 + 4);
              if (v115 >= *(v5 + 3))
              {
                llvm::raw_ostream::write(v5, 32);
              }

              else
              {
                *(v5 + 4) = v115 + 1;
                *v115 = 32;
              }

              WriteAsOperandInternal(v5, *(a2 + v114), a3);
              if (v114 == -32)
              {
                break;
              }

              llvm::raw_ostream::operator<<(v5, ", ", 2uLL);
              v114 += 32;
              if (v110)
              {
                goto LABEL_284;
              }
            }
          }

          v116 = *(a2 + 9);
          if ((v116 - 38) < 0xD)
          {
            llvm::raw_ostream::operator<<(v5, " to ", 4uLL);
            v116 = *(a2 + 9);
          }

          if (v116 == 63)
          {
            PrintShuffleMask(v5, *a2, *(a2 + 3), *(a2 + 8));
          }

          v61 = *(v5 + 4);
          if (v61 < *(v5 + 3))
          {
            *(v5 + 4) = v61 + 1;
            v62 = 41;
            goto LABEL_208;
          }

          v78 = v5;
          v79 = 41;
          goto LABEL_210;
        }

        v9 = "<placeholder or erroneous Constant>";
        v8 = 35;
      }

      else
      {
        v9 = "undef";
        v8 = 5;
      }

LABEL_13:

      llvm::raw_ostream::operator<<(a1, v9, v8);
      return;
    }

LABEL_216:
    v80 = *a2;
    v81 = *(*a2 + 24);
    v82 = *(a1 + 4);
    if (v82 >= *(a1 + 3))
    {
      llvm::raw_ostream::write(a1, 60);
    }

    else
    {
      *(a1 + 4) = v82 + 1;
      *v82 = 60;
    }

    v95 = *(v5 + 4);
    if (v95 >= *(v5 + 3))
    {
      llvm::raw_ostream::write(v5, 32);
    }

    else
    {
      *(v5 + 4) = v95 + 1;
      *v95 = 32;
    }

    AggregateElement = llvm::Constant::getAggregateElement(a2, 0, v93, v94);
    WriteAsOperandInternal(v5, AggregateElement, a3);
    v97 = *(v80 + 32);
    if (v97 != 1)
    {
      v98 = 1;
      do
      {
        llvm::raw_ostream::operator<<(v5, ", ", 2uLL);
        v101 = *(v5 + 4);
        if (v101 >= *(v5 + 3))
        {
          llvm::raw_ostream::write(v5, 32);
        }

        else
        {
          *(v5 + 4) = v101 + 1;
          *v101 = 32;
        }

        v102 = llvm::Constant::getAggregateElement(a2, v98, v99, v100);
        WriteAsOperandInternal(v5, v102, a3);
        v98 = (v98 + 1);
      }

      while (v97 != v98);
    }

LABEL_257:
    v61 = *(v5 + 4);
    if (v61 < *(v5 + 3))
    {
      *(v5 + 4) = v61 + 1;
      v62 = 62;
      goto LABEL_208;
    }

    v78 = v5;
    v79 = 62;
    goto LABEL_210;
  }

  v7 = (a2 + 24);
  if (*(*a2 + 8) == 269)
  {
    if (*(a2 + 8) >= 0x41u)
    {
      v7 = *v7;
    }

    if (*v7)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }

    if (*v7)
    {
      v9 = "true";
    }

    else
    {
      v9 = "false";
    }

    a1 = v5;
    goto LABEL_13;
  }

  llvm::APInt::print(v7, v5, 1);
}

uint64_t printAsOperandImpl(llvm::Type **a1, uint64_t **a2, int a3, llvm::ModuleSlotTracker *this)
{
  v7 = *(this + 3);
  v15 = 0;
  v16 = 0;
  v14 = v7;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v30 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  __p = 0;
  v35 = 0;
  v36 = 0;
  if (a3)
  {
    v8 = a2[4];
    if (v8 >= a2[3])
    {
      llvm::raw_ostream::write(a2, 32);
    }

    else
    {
      a2[4] = (v8 + 1);
      *v8 = 32;
    }
  }

  Machine = llvm::ModuleSlotTracker::getMachine(this);
  v10 = *(this + 3);
  v13[0] = &unk_2883F1008;
  v13[1] = &v14;
  v13[2] = Machine;
  v13[3] = v10;
  WriteAsOperandInternal(a2, a1, v13, v11);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  MEMORY[0x277C69E30](v31, 8);
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  MEMORY[0x277C69E30](v24, 8);
  MEMORY[0x277C69E30](v21, 8);
  MEMORY[0x277C69E30](v18, 8);
  return MEMORY[0x277C69E30](v15, 8);
}

void printMetadataImpl(llvm::raw_ostream *a1, unsigned __int8 *a2, llvm::ModuleSlotTracker *a3, uint64_t a4, char a5, int a6)
{
  v10 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 1;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v9 = &unk_2883EAF50;
  v17 = 0;
  v18 = 0;
  v19 = &v21;
  v20 = xmmword_2750C3CD0;
  llvm::formatted_raw_ostream::setStream(&v9, a1);
  llvm::ModuleSlotTracker::getMachine(a3);
  if (a6)
  {
    if ((a5 & 1) == 0)
    {
      operator new();
    }
  }

  operator new();
}

void llvm::SlotTracker::~SlotTracker(llvm::SlotTracker *this)
{
  llvm::SlotTracker::~SlotTracker(this);

  JUMPOUT(0x277C69E40);
}

{
  *this = &unk_2883F0F90;
  llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(this + 296);
  MEMORY[0x277C69E30](*(this + 33), 8);
  llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(this + 232);
  MEMORY[0x277C69E30](*(this + 25), 8);
  MEMORY[0x277C69E30](*(this + 21), 8);
  MEMORY[0x277C69E30](*(this + 17), 8);
  MEMORY[0x277C69E30](*(this + 13), 8);
  std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Function const*,BOOL)>::~__value_func[abi:nn200100](this + 64);
  std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Module const*,BOOL)>::~__value_func[abi:nn200100](this + 32);
}

uint64_t llvm::concat_iterator<llvm::GlobalObject const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[2] || *a1 == 0)
  {
    return 0;
  }

  else
  {
    return *a1 - 56;
  }
}

uint64_t llvm::concat_iterator<llvm::GlobalObject const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>>::getHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == *(a1 + 24) || v1 == 0)
  {
    return 0;
  }

  else
  {
    return v1 - 56;
  }
}

BOOL llvm::concat_iterator<llvm::GlobalObject const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>>::incrementHelper<0ul>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  if (*a1 != v2)
  {
    *a1 = *(v1 + 8);
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<llvm::GlobalObject const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>>::incrementHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (v1 != v2)
  {
    *(a1 + 8) = *(v1 + 8);
  }

  return v1 != v2;
}

void anonymous namespace::AssemblyWriter::printMetadataAttachments(uint64_t result, _DWORD *a2, const void *a3, size_t __n)
{
  v4 = a2[2];
  if (v4)
  {
    if (!*(result + 320))
    {
      v9 = *(*(*a2 + 8) + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 4) != 0)
      {
        v10 = *v10;
      }

      llvm::LLVMContext::getMDKindNames(v10, (result + 312));
      v4 = a2[2];
    }

    v11 = *(result + 32);
    v12 = *(result + 8);
    v23[0] = &unk_2883F1008;
    v23[1] = result + 40;
    v23[2] = v11;
    v23[3] = v12;
    if (v4)
    {
      v13 = *a2;
      v14 = *a2 + 16 * v4;
      do
      {
        v15 = *v13;
        llvm::raw_ostream::operator<<(*result, a3, __n);
        v16 = *result;
        v18 = *(*result + 24);
        v17 = *(*result + 32);
        if (*(result + 320) <= v15)
        {
          if ((v18 - v17) > 0xF)
          {
            *v17 = *"!<unknown kind #";
            *(v16 + 4) += 16;
          }

          else
          {
            llvm::raw_ostream::write(*result, "!<unknown kind #", 0x10uLL);
          }

          write_unsigned<unsigned long>(v16, v15, 0, 0, 0);
          v20 = *(v16 + 4);
          if (*(v16 + 3) == v20)
          {
            llvm::raw_ostream::write(v16, ">", 1uLL);
          }

          else
          {
            *v20 = 62;
            ++*(v16 + 4);
          }
        }

        else
        {
          if (v18 == v17)
          {
            llvm::raw_ostream::write(*result, "!", 1uLL);
          }

          else
          {
            *v17 = 33;
            ++*(v16 + 4);
          }

          printMetadataIdentifier(*(*(result + 312) + 16 * v15), *(*(result + 312) + 16 * v15 + 8), *result);
        }

        v21 = *result;
        v22 = *(*result + 32);
        if (v22 >= *(*result + 24))
        {
          llvm::raw_ostream::write(v21, 32);
        }

        else
        {
          *(v21 + 4) = v22 + 1;
          *v22 = 32;
        }

        WriteAsOperandInternal(*result, v13[1], v23, v19);
        v13 += 2;
      }

      while (v13 != v14);
    }
  }
}

void getLinkageNameWithSpace(void *a1, int a2)
{
  if (a2)
  {
    std::string::basic_string[abi:nn200100]<0>(&v5, off_279F00140[a2 - 1]);
    v3 = std::string::append(&v5, " ");
    v4 = v3->__r_.__value_.__r.__words[2];
    *a1 = *&v3->__r_.__value_.__l.__data_;
    a1[2] = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    std::string::basic_string[abi:nn200100]<0>(a1, "");
  }
}

llvm::raw_ostream *PrintDSOLocation(llvm::raw_ostream *result, llvm::formatted_raw_ostream *this)
{
  v2 = *(result + 8);
  if ((v2 & 0x4000) != 0 && (*(result + 8) & 0xFu) - 7 >= 2)
  {
    if ((v2 & 0x30) == 0 || (result = llvm::GlobalValue::hasExternalWeakLinkage(result), result))
    {
      v4 = *(this + 4);
      if ((*(this + 3) - v4) > 9)
      {
        *(v4 + 8) = 8300;
        *v4 = *"dso_local ";
        *(this + 4) += 10;
      }

      else
      {

        return llvm::raw_ostream::write(this, "dso_local ", 0xAuLL);
      }
    }
  }

  return result;
}

llvm::raw_ostream *PrintCallingConv(llvm::raw_ostream *result, llvm::raw_ostream *this)
{
  v3 = result;
  v4 = *(this + 4);
  v5 = *(this + 3) - v4;
  switch(result)
  {
    case 8:
      if (v5 <= 5)
      {
        v6 = "fastcc";
        goto LABEL_98;
      }

      *(v4 + 4) = 25443;
      v22 = 1953718630;
      goto LABEL_164;
    case 9:
      if (v5 <= 5)
      {
        v6 = "coldcc";
        goto LABEL_98;
      }

      *(v4 + 4) = 25443;
      v22 = 1684828003;
      goto LABEL_164;
    case 10:
      if (v5 <= 4)
      {
        v6 = "ghccc";
        v7 = this;
        v8 = 5;
        goto LABEL_106;
      }

      *(v4 + 4) = 99;
      *v4 = 1667459175;
      v21 = *(this + 4) + 5;
      goto LABEL_169;
    case 12:
      if (v5 <= 0xA)
      {
        v6 = "webkit_jscc";
        goto LABEL_72;
      }

      v19 = 1667461994;
      v20 = "webkit_jscc";
      goto LABEL_148;
    case 13:
      if (v5 <= 7)
      {
        v6 = "anyregcc";
        goto LABEL_75;
      }

      v18 = 0x676572796E61;
      goto LABEL_150;
    case 14:
      if (v5 <= 0xE)
      {
        v6 = "preserve_mostcc";
        goto LABEL_90;
      }

      v17 = "preserve_mostcc";
      goto LABEL_159;
    case 15:
      if (v5 <= 0xD)
      {
        v6 = "preserve_allcc";
        goto LABEL_82;
      }

      v15 = "preserve_allcc";
      goto LABEL_154;
    case 16:
      if (v5 <= 6)
      {
        v6 = "swiftcc";
        goto LABEL_60;
      }

      *(v4 + 3) = 1667462246;
      v16 = 1718187891;
      goto LABEL_141;
    case 17:
      if (v5 <= 0xD)
      {
        v6 = "cxx_fast_tlscc";
        goto LABEL_82;
      }

      v15 = "cxx_fast_tlscc";
      goto LABEL_154;
    case 18:
      if (v5 <= 5)
      {
        v6 = "tailcc";
        goto LABEL_98;
      }

      *(v4 + 4) = 25443;
      v22 = 1818845556;
      goto LABEL_164;
    case 19:
      if (v5 <= 0xE)
      {
        v6 = "cfguard_checkcc";
        goto LABEL_90;
      }

      v17 = "cfguard_checkcc";
      goto LABEL_159;
    case 20:
      if (v5 <= 0xA)
      {
        v6 = "swifttailcc";
        goto LABEL_72;
      }

      v19 = 1667460201;
      v20 = "swifttailcc";
      goto LABEL_148;
    case 64:
      if (v5 <= 0xC)
      {
        v6 = "x86_stdcallcc";
        goto LABEL_85;
      }

      v13 = "x86_stdcallcc";
      goto LABEL_156;
    case 65:
      if (v5 <= 0xD)
      {
        v6 = "x86_fastcallcc";
        goto LABEL_82;
      }

      v15 = "x86_fastcallcc";
      goto LABEL_154;
    case 66:
      if (v5 <= 9)
      {
        v6 = "arm_apcscc";
        goto LABEL_95;
      }

      v9 = 25443;
      v10 = "arm_apcscc";
      goto LABEL_162;
    case 67:
      if (v5 <= 0xA)
      {
        v6 = "arm_aapcscc";
        goto LABEL_72;
      }

      v19 = 1667461987;
      v20 = "arm_aapcscc";
      goto LABEL_148;
    case 68:
      if (v5 <= 0xE)
      {
        v6 = "arm_aapcs_vfpcc";
LABEL_90:
        v7 = this;
        v8 = 15;
        goto LABEL_106;
      }

      v17 = "arm_aapcs_vfpcc";
LABEL_159:
      *v4 = *v17;
      *(v4 + 7) = *(v17 + 7);
      v21 = *(this + 4) + 15;
      goto LABEL_169;
    case 69:
      if (v5 <= 0xC)
      {
        v6 = "msp430_intrcc";
        goto LABEL_85;
      }

      v13 = "msp430_intrcc";
      goto LABEL_156;
    case 70:
      if (v5 <= 0xD)
      {
        v6 = "x86_thiscallcc";
        goto LABEL_82;
      }

      v15 = "x86_thiscallcc";
      goto LABEL_154;
    case 71:
      if (v5 <= 9)
      {
        v6 = "ptx_kernel";
        goto LABEL_95;
      }

      v9 = 27749;
      v10 = "ptx_kernel";
      goto LABEL_162;
    case 72:
      if (v5 <= 9)
      {
        v6 = "ptx_device";
        goto LABEL_95;
      }

      v9 = 25955;
      v10 = "ptx_device";
      goto LABEL_162;
    case 75:
      if (v5 <= 8)
      {
        v6 = "spir_func";
        goto LABEL_105;
      }

      v11 = 99;
      v12 = "spir_func";
      goto LABEL_168;
    case 76:
      if (v5 <= 0xA)
      {
        v6 = "spir_kernel";
        goto LABEL_72;
      }

      v19 = 1818586738;
      v20 = "spir_kernel";
      goto LABEL_148;
    case 77:
      if (v5 <= 0xD)
      {
        v6 = "intel_ocl_bicc";
LABEL_82:
        v7 = this;
        v8 = 14;
        goto LABEL_106;
      }

      v15 = "intel_ocl_bicc";
LABEL_154:
      *v4 = *v15;
      *(v4 + 6) = *(v15 + 6);
      v21 = *(this + 4) + 14;
      goto LABEL_169;
    case 78:
      if (v5 <= 0xC)
      {
        v6 = "x86_64_sysvcc";
        goto LABEL_85;
      }

      v13 = "x86_64_sysvcc";
      goto LABEL_156;
    case 79:
      if (v5 <= 6)
      {
        v6 = "win64cc";
LABEL_60:
        v7 = this;
        v8 = 7;
        goto LABEL_106;
      }

      *(v4 + 3) = 1667445814;
      v16 = 913205623;
LABEL_141:
      *v4 = v16;
      v21 = *(this + 4) + 7;
      goto LABEL_169;
    case 80:
      if (v5 <= 0xF)
      {
        v6 = "x86_vectorcallcc";
        v7 = this;
        v8 = 16;
        goto LABEL_106;
      }

      *v4 = *"x86_vectorcallcc";
      v21 = *(this + 4) + 16;
      goto LABEL_169;
    case 81:
      if (v5 <= 5)
      {
        v6 = "hhvmcc";
LABEL_98:
        v7 = this;
        v8 = 6;
        goto LABEL_106;
      }

      *(v4 + 4) = 25443;
      v22 = 1836476520;
LABEL_164:
      *v4 = v22;
      v21 = *(this + 4) + 6;
      goto LABEL_169;
    case 82:
      if (v5 <= 7)
      {
        v6 = "hhvm_ccc";
LABEL_75:
        v7 = this;
        v8 = 8;
        goto LABEL_106;
      }

      v18 = 0x635F6D766868;
LABEL_150:
      *v4 = v18 & 0xFFFFFFFFFFFFLL | 0x6363000000000000;
      v21 = *(this + 4) + 8;
      goto LABEL_169;
    case 83:
      if (v5 <= 9)
      {
        v6 = "x86_intrcc";
        goto LABEL_95;
      }

      v9 = 25443;
      v10 = "x86_intrcc";
      goto LABEL_162;
    case 84:
      if (v5 <= 0xA)
      {
        v6 = "avr_intrcc ";
LABEL_72:
        v7 = this;
        v8 = 11;
        goto LABEL_106;
      }

      v19 = 543384434;
      v20 = "avr_intrcc ";
LABEL_148:
      *(v4 + 7) = v19;
      *v4 = *v20;
      v21 = *(this + 4) + 11;
      goto LABEL_169;
    case 85:
      if (v5 <= 0xC)
      {
        v6 = "avr_signalcc ";
        goto LABEL_85;
      }

      v13 = "avr_signalcc ";
      goto LABEL_156;
    case 87:
      if (v5 <= 8)
      {
        v6 = "amdgpu_vs";
        goto LABEL_105;
      }

      v11 = 115;
      v12 = "amdgpu_vs";
      goto LABEL_168;
    case 88:
      if (v5 <= 8)
      {
        v6 = "amdgpu_gs";
        goto LABEL_105;
      }

      v11 = 115;
      v12 = "amdgpu_gs";
      goto LABEL_168;
    case 89:
      if (v5 <= 8)
      {
        v6 = "amdgpu_ps";
        goto LABEL_105;
      }

      v11 = 115;
      v12 = "amdgpu_ps";
      goto LABEL_168;
    case 90:
      if (v5 <= 8)
      {
        v6 = "amdgpu_cs";
        goto LABEL_105;
      }

      v11 = 115;
      v12 = "amdgpu_cs";
      goto LABEL_168;
    case 91:
      if (v5 <= 0xC)
      {
        v6 = "amdgpu_kernel";
        goto LABEL_85;
      }

      v13 = "amdgpu_kernel";
      goto LABEL_156;
    case 92:
      if (v5 <= 0xC)
      {
        v6 = "x86_regcallcc";
LABEL_85:
        v7 = this;
        v8 = 13;
        goto LABEL_106;
      }

      v13 = "x86_regcallcc";
LABEL_156:
      *v4 = *v13;
      *(v4 + 5) = *(v13 + 5);
      v21 = *(this + 4) + 13;
      goto LABEL_169;
    case 93:
      if (v5 <= 8)
      {
        v6 = "amdgpu_hs";
        goto LABEL_105;
      }

      v11 = 115;
      v12 = "amdgpu_hs";
      goto LABEL_168;
    case 95:
      if (v5 <= 8)
      {
        v6 = "amdgpu_ls";
        goto LABEL_105;
      }

      v11 = 115;
      v12 = "amdgpu_ls";
      goto LABEL_168;
    case 96:
      if (v5 <= 8)
      {
        v6 = "amdgpu_es";
LABEL_105:
        v7 = this;
        v8 = 9;
        goto LABEL_106;
      }

      v11 = 115;
      v12 = "amdgpu_es";
LABEL_168:
      *(v4 + 8) = v11;
      *v4 = *v12;
      v21 = *(this + 4) + 9;
      goto LABEL_169;
    case 97:
      if (v5 <= 0x11)
      {
        v6 = "aarch64_vector_pcs";
        v7 = this;
        v8 = 18;
        goto LABEL_106;
      }

      *(v4 + 16) = 29539;
      *v4 = *"aarch64_vector_pcs";
      v21 = *(this + 4) + 18;
      goto LABEL_169;
    case 98:
      if (v5 <= 0x15)
      {
        v6 = "aarch64_sve_vector_pcs";
        v7 = this;
        v8 = 22;
        goto LABEL_106;
      }

      qmemcpy(v4, "aarch64_sve_vector_pcs", 22);
      v21 = *(this + 4) + 22;
      goto LABEL_169;
    case 100:
      if (v5 <= 9)
      {
        v6 = "amdgpu_gfx";
LABEL_95:
        v7 = this;
        v8 = 10;
        goto LABEL_106;
      }

      v9 = 30822;
      v10 = "amdgpu_gfx";
LABEL_162:
      *(v4 + 8) = v9;
      *v4 = *v10;
      v21 = *(this + 4) + 10;
      goto LABEL_169;
    case 102:
      if (v5 <= 0x1F)
      {
        v6 = "aarch64_sme_preservemost_from_x0";
        goto LABEL_63;
      }

      v14 = "aarch64_sme_preservemost_from_x0";
      goto LABEL_143;
    case 103:
      if (v5 > 0x1F)
      {
        v14 = "aarch64_sme_preservemost_from_x2";
LABEL_143:
        v23 = *(v14 + 1);
        *v4 = *v14;
        *(v4 + 16) = v23;
        v21 = *(this + 4) + 32;
LABEL_169:
        *(this + 4) = v21;
      }

      else
      {
        v6 = "aarch64_sme_preservemost_from_x2";
LABEL_63:
        v7 = this;
        v8 = 32;
LABEL_106:

        return llvm::raw_ostream::write(v7, v6, v8);
      }

      return result;
    default:
      if (v5 > 1)
      {
        *v4 = 25443;
        *(this + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(this, "cc", 2uLL);
      }

      return write_unsigned<unsigned long>(this, v3, 0, 0, 0);
  }
}

void WriteAsOperandInternal(llvm::raw_ostream *a1, uint64_t ***a2, llvm::raw_ostream **a3, BOOL a4)
{
  if ((*(a2 + 23) & 0x10) != 0)
  {
    ValueName = llvm::Value::getValueName(a2);
    v10 = *ValueName;
    if (*(a2 + 16) >= 4u)
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }

    PrintLLVMName(a1, (ValueName + 2), v10, v11);
  }

  else
  {
    v6 = *(a2 + 16);
    if (v6 <= 0x14)
    {
      if (v6 < 4)
      {
        goto LABEL_14;
      }

      WriteConstantInternal(a1, a2, a3);
    }

    else
    {
      if (v6 != 23)
      {
        if (v6 == 24)
        {
          v7 = *(a1 + 4);
          if (*(a1 + 3) - v7 > 3uLL)
          {
            *v7 = 544043873;
            v8 = *(a1 + 4) + 4;
            *(a1 + 4) = v8;
          }

          else
          {
            llvm::raw_ostream::write(a1, "asm ", 4uLL);
            v8 = *(a1 + 4);
          }

          if (*(a2 + 80) == 1)
          {
            if (*(a1 + 3) - v8 > 0xA)
            {
              *(v8 + 7) = 544498533;
              *v8 = *"sideeffect ";
              v8 = *(a1 + 4) + 11;
              *(a1 + 4) = v8;
            }

            else
            {
              llvm::raw_ostream::write(a1, "sideeffect ", 0xBuLL);
              v8 = *(a1 + 4);
            }
          }

          if (*(a2 + 81) == 1)
          {
            if (*(a1 + 3) - v8 > 0xA)
            {
              *(v8 + 7) = 543908705;
              *v8 = *"alignstack ";
              v8 = *(a1 + 4) + 11;
              *(a1 + 4) = v8;
            }

            else
            {
              llvm::raw_ostream::write(a1, "alignstack ", 0xBuLL);
              v8 = *(a1 + 4);
            }
          }

          if (*(a2 + 21) == 1)
          {
            if (*(a1 + 3) - v8 > 0xC)
            {
              qmemcpy(v8, "inteldialect ", 13);
              v8 = *(a1 + 4) + 13;
              *(a1 + 4) = v8;
            }

            else
            {
              llvm::raw_ostream::write(a1, "inteldialect ", 0xDuLL);
              v8 = *(a1 + 4);
            }
          }

          if (*(a2 + 88) == 1)
          {
            if (*(a1 + 3) - v8 > 6)
            {
              *(v8 + 3) = 543452777;
              *v8 = 1769434741;
              v8 = *(a1 + 4) + 7;
              *(a1 + 4) = v8;
            }

            else
            {
              llvm::raw_ostream::write(a1, "unwind ", 7uLL);
              v8 = *(a1 + 4);
            }
          }

          if (v8 >= *(a1 + 3))
          {
            llvm::raw_ostream::write(a1, 34);
          }

          else
          {
            *(a1 + 4) = v8 + 1;
            *v8 = 34;
          }

          v23 = *(a2 + 47);
          if (v23 >= 0)
          {
            v24 = (a2 + 3);
          }

          else
          {
            v24 = a2[3];
          }

          if (v23 >= 0)
          {
            v25 = *(a2 + 47);
          }

          else
          {
            v25 = a2[4];
          }

          llvm::printEscapedString(v24, v25, a1);
          v26 = *(a1 + 4);
          if (*(a1 + 3) - v26 > 3uLL)
          {
            *v26 = 572533794;
            *(a1 + 4) += 4;
          }

          else
          {
            llvm::raw_ostream::write(a1, ", ", 4uLL);
          }

          v29 = a2[6];
          v28 = (a2 + 6);
          v27 = v29;
          v30 = *(v28 + 23);
          if (v30 >= 0)
          {
            v31 = v28;
          }

          else
          {
            v31 = v27;
          }

          if (v30 >= 0)
          {
            v32 = *(v28 + 23);
          }

          else
          {
            v32 = v28[1];
          }

          llvm::printEscapedString(v31, v32, a1);
          v33 = *(a1 + 4);
          if (v33 >= *(a1 + 3))
          {

            llvm::raw_ostream::write(a1, 34);
          }

          else
          {
            *(a1 + 4) = v33 + 1;
            *v33 = 34;
          }

          return;
        }

LABEL_14:
        v12 = a3[2];
        if (v12)
        {
          if (v6 <= 3)
          {
            GlobalSlot = llvm::SlotTracker::getGlobalSlot(v12, a2);
            v15 = 64;
          }

          else
          {
            LocalSlot = llvm::SlotTracker::getLocalSlot(v12, a2);
            if (LocalSlot != -1)
            {
              GlobalSlot = LocalSlot;
              v15 = 37;
LABEL_37:
              v21 = *(a1 + 4);
              if (v21 >= *(a1 + 3))
              {
                llvm::raw_ostream::write(a1, v15);
              }

              else
              {
                *(a1 + 4) = v21 + 1;
                *v21 = v15;
              }

              llvm::write_integer(a1, GlobalSlot, 0, 0);
              return;
            }

            createSlotTracker(a2);
            if (!v19)
            {
              goto LABEL_39;
            }

            v20 = v19;
            GlobalSlot = llvm::SlotTracker::getLocalSlot(v19, a2);
            (*(*v20 + 8))(v20);
            v15 = 37;
          }
        }

        else
        {
          createSlotTracker(a2);
          if (!v17)
          {
LABEL_39:
            v22 = *(a1 + 4);
            if (*(a1 + 3) - v22 > 7uLL)
            {
              *v22 = 0x3E6665726461623CLL;
              *(a1 + 4) += 8;
            }

            else
            {

              llvm::raw_ostream::write(a1, "<badref>", 8uLL);
            }

            return;
          }

          v18 = v17;
          if (*(a2 + 16) <= 3u)
          {
            GlobalSlot = llvm::SlotTracker::getGlobalSlot(v17, a2);
            v15 = 64;
          }

          else
          {
            GlobalSlot = llvm::SlotTracker::getLocalSlot(v17, a2);
            v15 = 37;
          }

          (*(*v18 + 8))(v18);
        }

        if (GlobalSlot != -1)
        {
          goto LABEL_37;
        }

        goto LABEL_39;
      }

      v16 = a2[3];

      WriteAsOperandInternal(a1, v16, a3, a4);
    }
  }
}

void anonymous namespace::AssemblyWriter::writeAttributeSet(uint64_t ***a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (a2 + 48);
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    v4 = a2 + 48 + 8 * *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v3 != v4)
  {
    for (i = 1; ; i = 0)
    {
      if ((i & 1) == 0)
      {
        v6 = *a1;
        v7 = (*a1)[4];
        if (v7 >= (*a1)[3])
        {
          llvm::raw_ostream::write(v6, 32);
        }

        else
        {
          v6[4] = (v7 + 1);
          *v7 = 32;
        }
      }

      v8 = *v3;
      if (!*v3)
      {
        break;
      }

      v9 = *a1;
      if (*(v8 + 8) != 3)
      {
        goto LABEL_20;
      }

      NameFromAttrKind = llvm::Attribute::getNameFromAttrKind(*(v8 + 12));
      llvm::raw_ostream::operator<<(v9, NameFromAttrKind, v11);
      if (*v3)
      {
        v12 = *(*v3 + 16);
        if (v12)
        {
          v13 = *a1;
          v14 = (*a1)[4];
          if (v14 >= (*a1)[3])
          {
            llvm::raw_ostream::write(v13, 40);
          }

          else
          {
            v13[4] = (v14 + 1);
            *v14 = 40;
          }

          v17 = *a1;
          v18 = (*a1)[4];
          if (v18 >= (*a1)[3])
          {
            llvm::raw_ostream::write(v17, 41);
          }

          else
          {
            v17[4] = (v18 + 1);
            *v18 = 41;
          }
        }
      }

LABEL_28:
      v3 = (v3 + 8);
      if (v3 == v4)
      {
        return;
      }
    }

    v9 = *a1;
LABEL_20:
    llvm::Attribute::getAsString(&__p, v3, 0);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    llvm::raw_ostream::write(v9, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_28;
  }
}

llvm::raw_ostream *maybePrintComdat(llvm::raw_ostream *this, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (v2)
  {
    v4 = this;
    if (*(a2 + 16) == 3)
    {
      v5 = *(this + 4);
      if (v5 >= *(this + 3))
      {
        this = llvm::raw_ostream::write(this, 44);
      }

      else
      {
        *(this + 4) = v5 + 1;
        *v5 = 44;
      }
    }

    v6 = *(v4 + 4);
    if (*(v4 + 3) - v6 > 6uLL)
    {
      *(v6 + 3) = 1952539757;
      *v6 = 1836016416;
      *(v4 + 4) += 7;
    }

    else
    {
      this = llvm::raw_ostream::write(v4, " comdat", 7uLL);
    }

    if ((*(a2 + 23) & 0x10) != 0)
    {
      ValueName = llvm::Value::getValueName(a2);
      v9 = *ValueName;
      this = (ValueName + 2);
      v8 = v9;
      if (v9 == **v2)
      {
        if (!v8)
        {
          return this;
        }

        this = memcmp(this, *v2 + 9, v8);
        if (!this)
        {
          return this;
        }
      }
    }

    else if (!**v2)
    {
      return this;
    }

    v10 = *(v4 + 4);
    if (v10 >= *(v4 + 3))
    {
      llvm::raw_ostream::write(v4, 40);
    }

    else
    {
      *(v4 + 4) = v10 + 1;
      *v10 = 40;
    }

    this = PrintLLVMName(v4, (*v2 + 9), **v2, 1);
    v11 = *(v4 + 4);
    if (v11 >= *(v4 + 3))
    {

      return llvm::raw_ostream::write(v4, 41);
    }

    else
    {
      *(v4 + 4) = v11 + 1;
      *v11 = 41;
    }
  }

  return this;
}

void anonymous namespace::AssemblyWriter::writeOperand(uint64_t ***this, llvm::Type **a2, int a3, BOOL a4)
{
  if (a2)
  {
    if (a3)
    {
      v6 = *this;
      v7 = (*this)[4];
      if (v7 >= (*this)[3])
      {
        llvm::raw_ostream::write(v6, 32);
      }

      else
      {
        v6[4] = (v7 + 1);
        *v7 = 32;
      }
    }

    v10 = this[4];
    v11 = *this;
    v12 = this[1];
    v13[0] = &unk_2883F1008;
    v13[1] = (this + 5);
    v13[2] = v10;
    v13[3] = v12;
    WriteAsOperandInternal(v11, a2, v13, a4);
  }

  else
  {
    v8 = *this;
    v9 = (*this)[4];
    if (((*this)[3] - v9) > 0xE)
    {
      qmemcpy(v9, "<null operand!>", 15);
      v8[4] = (v8[4] + 15);
    }

    else
    {

      llvm::raw_ostream::write(v8, "<null operand!>", 0xFuLL);
    }
  }
}

llvm::raw_ostream *anonymous namespace::AssemblyWriter::printUseLists(_anonymous_namespace_::AssemblyWriter *this, const llvm::Function *a2)
{
  v33[0] = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>>>,llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>>>::LookupBucketFor<llvm::Function const*>(*(this + 36), *(this + 76), a2, v33);
  v5 = v33[0];
  if (result)
  {
    v6 = v33[0] == (*(this + 36) + 56 * *(this + 76));
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    result = *this;
    v7 = *(*this + 32);
    if (*(*this + 24) - v7 > 0x1AuLL)
    {
      qmemcpy(v7, "\n; uselistorder directives\n", 27);
      *(result + 4) += 27;
    }

    else
    {
      result = llvm::raw_ostream::write(result, "\n; uselistorder directives\n", 0x1BuLL);
    }

    v9 = *(v5 + 4);
    for (i = *(v5 + 5); v9 != i; v9 += 4)
    {
      v10 = *v9;
      v11 = *this;
      v12 = *(*this + 32);
      v13 = *(*this + 24) - v12;
      if (*(*(this + 4) + 16))
      {
        if (v13 > 1)
        {
          *v12 = 8224;
          *(v11 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v11, "  ", 2uLL);
        }

        v14 = *this;
        v15 = *(*this + 32);
        if ((*(*this + 24) - v15) > 0xB)
        {
          *(v15 + 8) = 1919247474;
          *v15 = *"uselistorder";
          *(v14 + 4) += 12;
        }

        else
        {
          llvm::raw_ostream::write(v14, "uselistorder", 0xCuLL);
        }
      }

      else
      {
        if (v13 > 0xB)
        {
          *(v12 + 8) = 1919247474;
          *v12 = *"uselistorder";
          *(v11 + 4) += 12;
        }

        else
        {
          llvm::raw_ostream::write(v11, "uselistorder", 0xCuLL);
        }

        if (*(v10 + 16) == 22)
        {
          v16 = *this;
          v17 = *(*this + 32);
          if (*(*this + 24) - v17 > 3uLL)
          {
            *v17 = 543318623;
            *(v16 + 4) += 4;
          }

          else
          {
            llvm::raw_ostream::write(v16, "_bb ", 4uLL);
          }

          v28 = *this;
          v29 = *(*this + 32);
          if (*(*this + 24) - v29 > 1uLL)
          {
            *v29 = 8236;
            *(v28 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v28, ", ", 2uLL);
          }

          v30 = *(this + 4);
          v31 = *this;
          v32 = *(this + 1);
          v33[0] = &unk_2883F1008;
          v33[1] = (this + 40);
          v33[2] = v30;
          v33[3] = v32;
          WriteAsOperandInternal(v31, v10, v33, v27);
          goto LABEL_26;
        }
      }

      v18 = *this;
      v19 = *(*this + 32);
      if (*(*this + 24) == v19)
      {
        llvm::raw_ostream::write(v18, " ", 1uLL);
      }

      else
      {
        *v19 = 32;
        ++*(v18 + 4);
      }

LABEL_26:
      v20 = *this;
      v21 = *(*this + 32);
      if (*(*this + 24) - v21 > 3uLL)
      {
        *v21 = 544940076;
        *(v20 + 4) += 4;
      }

      else
      {
        llvm::raw_ostream::write(v20, ", { ", 4uLL);
      }

      write_unsigned<unsigned long>(*this, *v9[1], 0, 0, 0);
      v22 = (v9[2] - v9[1]) >> 2;
      if (v22 != 1)
      {
        v23 = 1;
        do
        {
          v24 = *this;
          v25 = *(*this + 32);
          if (*(*this + 24) - v25 > 1uLL)
          {
            *v25 = 8236;
            *(v24 + 4) += 2;
          }

          else
          {
            v24 = llvm::raw_ostream::write(v24, ", ", 2uLL);
          }

          write_unsigned<unsigned long>(v24, *(v9[1] + 4 * v23++), 0, 0, 0);
        }

        while (v22 != v23);
      }

      result = *this;
      v26 = *(*this + 32);
      if ((*(*this + 24) - v26) > 2)
      {
        *(v26 + 2) = 10;
        *v26 = 32032;
        *(result + 4) += 3;
      }

      else
      {
        result = llvm::raw_ostream::write(result, " }\n", 3uLL);
      }
    }
  }

  return result;
}

llvm::raw_ostream *printMetadataIdentifier(llvm::raw_ostream *result, uint64_t a2, llvm::raw_ostream *a3)
{
  if (!a2)
  {
    v8 = *(a3 + 4);
    if (*(a3 + 3) - v8 > 0xCuLL)
    {
      qmemcpy(v8, "<empty name> ", 13);
      *(a3 + 4) += 13;
    }

    else
    {

      return llvm::raw_ostream::write(a3, "<empty name> ", 0xDuLL);
    }

    return result;
  }

  v4 = a2;
  v5 = result;
  v6 = *result;
  v7 = MEMORY[0x277D85DE0];
  if (v6 < 0)
  {
    result = __maskrune(*result, 0x100uLL);
    LOBYTE(v6) = *v5;
    if (!result)
    {
      goto LABEL_10;
    }

LABEL_14:
    v10 = *(a3 + 4);
    if (v10 < *(a3 + 3))
    {
      *(a3 + 4) = v10 + 1;
      *v10 = v6;
      goto LABEL_18;
    }

    v11 = v6;
    goto LABEL_17;
  }

  result = (*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x100);
  if (result)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (v6 - 36 <= 0x3B && ((1 << (v6 - 36)) & 0x800000000000601) != 0)
  {
    goto LABEL_14;
  }

  v25 = *(a3 + 4);
  if (v25 >= *(a3 + 3))
  {
    result = llvm::raw_ostream::write(a3, 92);
  }

  else
  {
    *(a3 + 4) = v25 + 1;
    *v25 = 92;
  }

  v26 = llvm::hexdigit(unsigned int,BOOL)::LUT[*v5 >> 4];
  v27 = *(a3 + 4);
  if (v27 >= *(a3 + 3))
  {
    result = llvm::raw_ostream::write(a3, v26);
  }

  else
  {
    *(a3 + 4) = v27 + 1;
    *v27 = v26;
  }

  v11 = llvm::hexdigit(unsigned int,BOOL)::LUT[*v5 & 0xF];
  v28 = *(a3 + 4);
  if (v28 >= *(a3 + 3))
  {
LABEL_17:
    result = llvm::raw_ostream::write(a3, v11);
    goto LABEL_18;
  }

  *(a3 + 4) = v28 + 1;
  *v28 = v11;
LABEL_18:
  v12 = v4 - 1;
  if (v12)
  {
    v13 = v5 + 1;
    do
    {
      v14 = *v13++;
      v15 = v14;
      v16 = v14;
      if (v14 < 0)
      {
        result = __maskrune(v15, 0x500uLL);
        if (result)
        {
          goto LABEL_28;
        }
      }

      else
      {
        result = (*(v7 + 4 * v16 + 60) & 0x500);
        if (result)
        {
          goto LABEL_28;
        }
      }

      if ((v15 - 36) > 0x3B || ((1 << (v15 - 36)) & 0x800000000000601) == 0)
      {
        v21 = *(a3 + 4);
        if (v21 >= *(a3 + 3))
        {
          result = llvm::raw_ostream::write(a3, 92);
        }

        else
        {
          *(a3 + 4) = v21 + 1;
          *v21 = 92;
        }

        v22 = llvm::hexdigit(unsigned int,BOOL)::LUT[v16 >> 4];
        v23 = *(a3 + 4);
        if (v23 >= *(a3 + 3))
        {
          result = llvm::raw_ostream::write(a3, v22);
        }

        else
        {
          *(a3 + 4) = v23 + 1;
          *v23 = v22;
        }

        v20 = llvm::hexdigit(unsigned int,BOOL)::LUT[v16 & 0xF];
        v24 = *(a3 + 4);
        if (v24 < *(a3 + 3))
        {
          *(a3 + 4) = v24 + 1;
          *v24 = v20;
          goto LABEL_32;
        }

        v19 = a3;
        goto LABEL_31;
      }

LABEL_28:
      v18 = *(a3 + 4);
      if (v18 >= *(a3 + 3))
      {
        v19 = a3;
        v20 = v15;
LABEL_31:
        result = llvm::raw_ostream::write(v19, v20);
        goto LABEL_32;
      }

      *(a3 + 4) = v18 + 1;
      *v18 = v15;
LABEL_32:
      --v12;
    }

    while (v12);
  }

  return result;
}

void WriteAsOperandInternal(llvm::raw_ostream *this, llvm::DIExpression *a2, uint64_t a3, BOOL a4)
{
  v7 = *a2;
  if (v7 == 33)
  {

    writeDIArgList(this, a2, a3, a4);
  }

  else if (v7 == 6)
  {

    writeDIExpression(this, a2, a3);
  }

  else if (llvm::MDNode::classof(a2))
  {
    v8 = *(a3 + 16);
    if (!v8)
    {
      operator new();
    }

    v11 = (*(**(a3 + 16) + 32))(*(a3 + 16), a2);
    if (v11 == -1)
    {
      if (*a2 == 5)
      {
        writeDILocation(this, a2, a3);
      }

      else
      {
        v17 = *(this + 4);
        if (*(this + 3) == v17)
        {
          llvm::raw_ostream::write(this, "<", 1uLL);
        }

        else
        {
          *v17 = 60;
          ++*(this + 4);
        }

        llvm::write_hex(this, a2, 3, 0, 0);
        v18 = *(this + 4);
        if (*(this + 3) == v18)
        {
          llvm::raw_ostream::write(this, ">", 1uLL);
        }

        else
        {
          *v18 = 62;
          ++*(this + 4);
        }
      }
    }

    else
    {
      v12 = v11;
      v13 = *(this + 4);
      if (v13 >= *(this + 3))
      {
        llvm::raw_ostream::write(this, 33);
      }

      else
      {
        *(this + 4) = v13 + 1;
        *v13 = 33;
      }

      llvm::write_integer(this, v12, 0, 0);
    }

    *(a3 + 16) = v8;
  }

  else if (*a2)
  {
    v10 = *(this + 4);
    if (v10 >= *(this + 3))
    {
      llvm::raw_ostream::write(this, 32);
    }

    else
    {
      *(this + 4) = v10 + 1;
      *v10 = 32;
    }

    v15 = *(a2 + 16);

    WriteAsOperandInternal(this, v15, a3, v9);
  }

  else
  {
    v14 = *(this + 4);
    if (*(this + 3) - v14 > 1uLL)
    {
      *v14 = 8737;
      *(this + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(this, "!", 2uLL);
    }

    llvm::printEscapedString((*(a2 + 1) + 24), **(a2 + 1), this);
    v16 = *(this + 4);
    if (v16 >= *(this + 3))
    {

      llvm::raw_ostream::write(this, 34);
    }

    else
    {
      *(this + 4) = v16 + 1;
      *v16 = 34;
    }
  }
}

uint64_t writeDIExpression(llvm::raw_ostream *this, unsigned int **a2, _anonymous_namespace_::AsmWriterContext *a3)
{
  v5 = *(this + 4);
  if (*(this + 3) - v5 > 0xDuLL)
  {
    qmemcpy(v5, "!DIExpression(", 14);
    *(this + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(this, "!DIExpression(", 0xEuLL);
  }

  result = llvm::DIExpression::isValid(a2);
  v7 = a2[2];
  v8 = a2[3];
  if (result)
  {
    v27 = a2[2];
    if (v7 != v8)
    {
      v9 = 1;
      do
      {
        v10 = llvm::dwarf::OperationEncodingString(*v7);
        v12 = v11;
        v13 = this;
        if ((v9 & 1) == 0)
        {
          v13 = llvm::raw_ostream::operator<<(this, ", ", 2uLL);
        }

        llvm::raw_ostream::operator<<(v13, v10, v12);
        if (*v7 == 4097)
        {
          v14 = llvm::raw_ostream::operator<<(this, ", ", 2uLL);
          write_unsigned<unsigned long>(v14, *(v7 + 1), 0, 0, 0);
          v15 = llvm::raw_ostream::operator<<(this, ", ", 2uLL);
          v16 = llvm::dwarf::AttributeEncodingString(v7[4]);
          llvm::raw_ostream::operator<<(v15, v16, v17);
        }

        else
        {
          Size = llvm::DIExpression::ExprOperand::getSize(&v27);
          v19 = (Size - 1);
          if (Size != 1)
          {
            v20 = (v7 + 2);
            do
            {
              v21 = llvm::raw_ostream::operator<<(this, ", ", 2uLL);
              v22 = *v20++;
              write_unsigned<unsigned long>(v21, v22, 0, 0, 0);
              --v19;
            }

            while (v19);
          }
        }

        result = llvm::DIExpression::ExprOperand::getSize(&v27);
        v9 = 0;
        v7 += 2 * result;
        v27 = v7;
      }

      while (v7 != v8);
    }
  }

  else if (v7 != v8)
  {
    v23 = 1;
    do
    {
      v24 = this;
      if ((v23 & 1) == 0)
      {
        v24 = llvm::raw_ostream::operator<<(this, ", ", 2uLL);
      }

      v25 = *v7;
      v7 += 2;
      result = write_unsigned<unsigned long>(v24, v25, 0, 0, 0);
      v23 = 0;
    }

    while (v7 != v8);
  }

  v26 = *(this + 4);
  if (*(this + 3) == v26)
  {

    return llvm::raw_ostream::write(this, ")", 1uLL);
  }

  else
  {
    *v26 = 41;
    ++*(this + 4);
  }

  return result;
}

void writeDIArgList(llvm::raw_ostream *this, const llvm::DIArgList *a2, _anonymous_namespace_::AsmWriterContext *a3, BOOL a4)
{
  v7 = *(this + 4);
  if ((*(this + 3) - v7) > 0xA)
  {
    *(v7 + 7) = 678720361;
    *v7 = *"!DIArgList(";
    *(this + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(this, "!DIArgList(", 0xBuLL);
  }

  v8 = *(a2 + 6);
  if (v8)
  {
    v9 = *(a2 + 2);
    v10 = 8 * v8;
    v11 = 1;
    do
    {
      v12 = *v9;
      if ((v11 & 1) == 0)
      {
        llvm::raw_ostream::operator<<(this, ", ", 2uLL);
      }

      WriteAsOperandInternal(this, v12, a3, a4);
      v11 = 0;
      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  v13 = *(this + 4);
  if (*(this + 3) == v13)
  {

    llvm::raw_ostream::write(this, ")", 1uLL);
  }

  else
  {
    *v13 = 41;
    ++*(this + 4);
  }
}

llvm::raw_ostream *writeDILocation(llvm::raw_ostream *this, const llvm::DILocation *a2, _anonymous_namespace_::AsmWriterContext *a3)
{
  v6 = *(this + 4);
  if ((*(this + 3) - v6) > 0xB)
  {
    *(v6 + 8) = 678326121;
    *v6 = *"!DILocation(";
    *(this + 4) += 12;
  }

  else
  {
    llvm::raw_ostream::write(this, "!DILocation(", 0xCuLL);
  }

  v14 = this;
  v15 = 1;
  v16 = ", ";
  v17 = a3;
  v8 = (a2 - 16);
  v7 = *(a2 - 2);
  if ((v7 & 2) != 0)
  {
    v9 = *(a2 - 4);
  }

  else
  {
    v9 = &v8[-((v7 >> 2) & 0xF)];
  }

  if ((*v8 & 2) != 0)
  {
    if (*(a2 - 6) == 2)
    {
      v10 = *(a2 - 4);
      goto LABEL_12;
    }
  }

  else if ((*v8 & 0x3C0) == 0x80)
  {
    v10 = &v8[-((*v8 >> 2) & 0xFLL)];
LABEL_12:
    v11 = v10[1];
    goto LABEL_14;
  }

  v11 = 0;
LABEL_14:
  v13 = *(this + 4);
  if (*(this + 3) == v13)
  {

    return llvm::raw_ostream::write(this, ")", 1uLL);
  }

  else
  {
    *v13 = 41;
    ++*(this + 4);
  }

  return result;
}

llvm::raw_ostream **anonymous namespace::MDFieldPrinter::printInt<unsigned int>(llvm::raw_ostream **result, const void *a2, size_t __n, unsigned int a4, char a5)
{
  v8 = result;
  if (a4 || (a5 & 1) == 0)
  {
    v9 = *result;
    if (*(v8 + 8) == 1)
    {
      *(v8 + 8) = 0;
    }

    else
    {
      v9 = llvm::raw_ostream::operator<<(v9, v8[2]);
    }

    v10 = llvm::raw_ostream::operator<<(v9, a2, __n);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 1uLL)
    {
      *v11 = 8250;
      *(v10 + 4) += 2;
    }

    else
    {
      v10 = llvm::raw_ostream::write(v10, ": ", 2uLL);
    }

    return write_unsigned<unsigned long>(v10, a4, 0, 0, 0);
  }

  return result;
}

llvm::raw_ostream **anonymous namespace::MDFieldPrinter::printMetadata(llvm::raw_ostream **result, const void *a2, size_t __n, llvm::DIExpression *a4, char a5)
{
  v8 = result;
  if (a4 || (a5 & 1) == 0)
  {
    v9 = *result;
    if (*(v8 + 8) == 1)
    {
      *(v8 + 8) = 0;
    }

    else
    {
      v9 = llvm::raw_ostream::operator<<(v9, v8[2]);
    }

    v10 = llvm::raw_ostream::operator<<(v9, a2, __n);
    v12 = *(v10 + 4);
    if (*(v10 + 3) - v12 > 1uLL)
    {
      *v12 = 8250;
      *(v10 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v10, ": ", 2uLL);
    }

    v13 = *v8;
    v14 = v8[3];

    return writeMetadataAsOperand(v13, a4, v14, v11);
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::MDFieldPrinter::printBool(llvm::raw_ostream *result, const void *a2, size_t __n, int a4, __int16 a5)
{
  if ((a5 & 0x100) == 0 || a4 != a5)
  {
    v8 = *result;
    if (*(result + 8) == 1)
    {
      *(result + 8) = 0;
    }

    else
    {
      v8 = llvm::raw_ostream::operator<<(*result, *(result + 2));
    }

    v9 = llvm::raw_ostream::operator<<(v8, a2, __n);
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 > 1uLL)
    {
      *v10 = 8250;
      *(v9 + 4) += 2;
    }

    else
    {
      v9 = llvm::raw_ostream::write(v9, ": ", 2uLL);
    }

    if (a4)
    {
      v11 = 4;
    }

    else
    {
      v11 = 5;
    }

    if (a4)
    {
      v12 = "true";
    }

    else
    {
      v12 = "false";
    }

    return llvm::raw_ostream::operator<<(v9, v12, v11);
  }

  return result;
}

llvm::raw_ostream *writeMetadataAsOperand(llvm::raw_ostream *result, llvm::DIExpression *a2, void **a3, BOOL a4)
{
  if (a2)
  {
    WriteAsOperandInternal(result, a2, a3, a4);
    v7 = **a3;

    return v7(a3, a2);
  }

  else
  {
    v8 = *(result + 4);
    if (*(result + 3) - v8 > 3uLL)
    {
      *v8 = 1819047278;
      *(result + 4) += 4;
    }

    else
    {

      return llvm::raw_ostream::write(result, "null", 4uLL);
    }
  }

  return result;
}

void createSlotTracker(const llvm::Value *a1)
{
  v1 = *(a1 + 16);
  if (a1 && v1 == 21)
  {
    operator new();
  }

  if (a1 && v1 >= 0x1C)
  {
    if (*(a1 + 5))
    {
      operator new();
    }
  }

  else
  {
    if (a1 && v1 == 22)
    {
      operator new();
    }

    if (a1 && v1 == 3 || a1 && v1 == 1 || a1 && v1 == 2)
    {
      operator new();
    }

    if (a1 && !*(a1 + 16))
    {
      operator new();
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>>>,llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>>>::LookupBucketFor<llvm::Function const*>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 56 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 56 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>>>,llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 56 * v1;
    v3 = (*result + 32);
    do
    {
      if ((*(v3 - 4) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = v3;
        std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>::__destroy_vector::operator()[abi:nn200100](&v4);
        result = MEMORY[0x277C69E30](*(v3 - 3), 8);
      }

      v3 += 7;
      v2 -= 56;
    }

    while (v2);
  }

  return result;
}

void std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void anonymous namespace::TypePrinting::incorporateTypes(uint64_t this)
{
  if (*this)
  {
    llvm::TypeFinder::run((this + 8), *this, 0);
    *this = 0;
    v2 = *(this + 104);
    v3 = *(this + 112);
    if (v2 != v3)
    {
      v4 = 0;
      v5 = *(this + 104);
      while (1)
      {
        v6 = *v5;
        if ((*(*v5 + 9) & 4) == 0)
        {
          v7 = *(v6 + 24);
          if (!v7 || !*v7)
          {
            v12 = 0;
            v8 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*(this + 136), *(this + 152), v6, &v12);
            v9 = v12;
            if ((v8 & 1) == 0)
            {
              v10 = *(this + 144);
              v11 = *(this + 152);
              if (4 * v10 + 4 >= 3 * v11)
              {
                v11 *= 2;
              }

              else if (v11 + ~v10 - *(this + 148) > v11 >> 3)
              {
                goto LABEL_11;
              }

              llvm::DenseMap<llvm::Function *,unsigned int,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,unsigned int>>::grow(this + 136, v11);
              v12 = 0;
              llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*(this + 136), *(this + 152), v6, &v12);
              v9 = v12;
LABEL_11:
              ++*(this + 144);
              if (*v9 != -4096)
              {
                --*(this + 148);
              }

              *v9 = v6;
              *(v9 + 8) = 0;
            }

            *(v9 + 8) = v4++;
            goto LABEL_15;
          }

          *v2++ = v6;
        }

LABEL_15:
        if (++v5 == v3)
        {
          v3 = *(this + 112);
          break;
        }
      }
    }

    if (v2 != v3)
    {
      *(this + 112) = v2;
    }
  }
}

void WriteMDNodeBodyInternal(llvm::raw_ostream *this, const llvm::MDNode *a2, llvm::raw_ostream **a3, BOOL a4)
{
  v6 = this;
  v545 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 1) & 0x7F;
  if (v7 == 1)
  {
    v8 = "distinct ";
    v9 = 9;
    goto LABEL_5;
  }

  if (v7 == 2)
  {
    v8 = "<temporary!> ";
    v9 = 13;
LABEL_5:
    this = llvm::raw_ostream::operator<<(this, v8, v9);
  }

  switch(*a2)
  {
    case 5:

      writeDILocation(v6, a2, a3);
      return;
    case 6:

      writeDIExpression(v6, a2, a3);
      return;
    case 7:
      v24 = *(v6 + 4);
      if (*(v6 + 3) - v24 > 0x1BuLL)
      {
        qmemcpy(v24, "!DIGlobalVariableExpression(", 28);
        *(v6 + 4) += 28;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DIGlobalVariableExpression(", 0x1CuLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      v105 = (a2 - 16);
      v104 = *(a2 - 2);
      if ((v104 & 2) != 0)
      {
        v106 = *(a2 - 4);
      }

      else
      {
        v106 = &v105[-((v104 >> 2) & 0xF)];
      }

      if ((*v105 & 2) != 0)
      {
        v107 = *(a2 - 4);
      }

      else
      {
        v107 = &v105[-((*v105 >> 2) & 0xFLL)];
      }

      v47 = v107[1];
      v48 = "expr";
      goto LABEL_508;
    case 8:
      v15 = *(v6 + 4);
      if (*(v6 + 3) - v15 > 0xEuLL)
      {
        qmemcpy(v15, "!GenericDINode(", 15);
        *(v6 + 4) += 15;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!GenericDINode(", 0xFuLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      v72 = (a2 - 16);
      v71 = *(a2 - 2);
      if ((v71 & 2) != 0)
      {
        v73 = *(a2 - 4);
      }

      else
      {
        v73 = &v72[-((v71 >> 2) & 0xF)];
      }

      v74 = *v73;
      if (v74)
      {
        v75 = *(v74 + 8);
        v78 = *v75;
        v76 = (v75 + 3);
        v77 = v78;
      }

      else
      {
        v76 = 0;
        v77 = 0;
      }

      if ((*v72 & 2) != 0)
      {
        v268 = *(a2 - 6);
      }

      else
      {
        v268 = (*v72 >> 6) & 0xF;
      }

      if (v268 != 1)
      {
        v269 = v6;
        if ((v542 & 1) == 0)
        {
          v269 = llvm::raw_ostream::operator<<(v6, __s);
        }

        llvm::raw_ostream::operator<<(v269, "operands: {", 0xBuLL);
        v271 = *v72;
        if ((*v72 & 2) != 0)
        {
          v272 = *(a2 - 4);
          v273 = *(a2 - 6);
        }

        else
        {
          v272 = &v72[-((v271 >> 2) & 0xF)];
          v273 = (v271 >> 6) & 0xF;
        }

        if (v273 != 1)
        {
          v399 = (v272 + 1);
          v400 = 8 * v273 - 8;
          v401 = 1;
          do
          {
            if ((v401 & 1) == 0)
            {
              v402 = *(v6 + 4);
              if (*(v6 + 3) - v402 > 1uLL)
              {
                *v402 = 8236;
                *(v6 + 4) += 2;
              }

              else
              {
                llvm::raw_ostream::write(v6, ", ", 2uLL);
              }
            }

            v403 = *v399++;
            writeMetadataAsOperand(v6, v403, a3, v270);
            v401 = 0;
            v400 -= 8;
          }

          while (v400);
        }

        llvm::raw_ostream::operator<<(v6, "}", 1uLL);
      }

      goto LABEL_769;
    case 9:
      v29 = *(v6 + 4);
      if ((*(v6 + 3) - v29) > 0xB)
      {
        *(v29 + 8) = 677734254;
        *v29 = *"!DISubrange(";
        *(v6 + 4) += 12;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DISubrange(", 0xCuLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      v158 = (a2 - 16);
      v157 = *(a2 - 2);
      if ((v157 & 2) != 0)
      {
        v159 = *(a2 - 4);
      }

      else
      {
        v159 = &v158[-((v157 >> 2) & 0xF)];
      }

      v160 = *v159;
      if (*v159 && *v160 == 1)
      {
        v161 = *(v160 + 16);
        v162 = *(v161 + 32);
        if (v162 > 0x40)
        {
          v163 = **(v161 + 24);
        }

        else
        {
          v163 = (*(v161 + 24) << -v162) >> -v162;
        }
      }

      else
      {
      }

      if ((*v158 & 2) != 0)
      {
        v521 = *(a2 - 4);
      }

      else
      {
        v521 = &v158[-((*v158 >> 2) & 0xFLL)];
      }

      v522 = v521[1];
      if (v522 && *v522 == 1)
      {
        v523 = *(v522 + 16);
        v524 = *(v523 + 32);
        if (v524 > 0x40)
        {
          v525 = **(v523 + 24);
        }

        else
        {
          v525 = (*(v523 + 24) << -v524) >> -v524;
        }
      }

      else
      {
      }

      if ((*v158 & 2) != 0)
      {
        v526 = *(a2 - 4);
      }

      else
      {
        v526 = &v158[-((*v158 >> 2) & 0xFLL)];
      }

      v527 = v526[2];
      if (v527 && *v527 == 1)
      {
        v528 = *(v527 + 16);
        v529 = *(v528 + 32);
        if (v529 > 0x40)
        {
          v530 = **(v528 + 24);
        }

        else
        {
          v530 = (*(v528 + 24) << -v529) >> -v529;
        }
      }

      else
      {
      }

      if ((*v158 & 2) != 0)
      {
        v531 = *(a2 - 4);
      }

      else
      {
        v531 = &v158[-((*v158 >> 2) & 0xFLL)];
      }

      v47 = v531[3];
      if (!v47 || *v47 != 1)
      {
        v48 = "stride";
        v49 = 6;
        goto LABEL_680;
      }

      v532 = *(v47 + 16);
      v533 = *(v532 + 32);
      if (v533 > 0x40)
      {
        v139 = **(v532 + 24);
      }

      else
      {
        v139 = (*(v532 + 24) << -v533) >> -v533;
      }

      goto LABEL_826;
    case 0xA:
      v32 = *(v6 + 4);
      if (*(v6 + 3) - v32 > 0xDuLL)
      {
        qmemcpy(v32, "!DIEnumerator(", 14);
        *(v6 + 4) += 14;
      }

      else
      {
        this = llvm::raw_ostream::write(v6, "!DIEnumerator(", 0xEuLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = &qword_2815AA830;
      v180 = *(a2 - 2);
      if ((v180 & 2) != 0)
      {
        v181 = *(a2 - 4);
      }

      else
      {
        v181 = (a2 - 8 * ((v180 >> 2) & 0xF) - 16);
      }

      v182 = *v181;
      if (v182)
      {
        v183 = *(v182 + 8);
        v186 = *v183;
        v184 = (v183 + 3);
        v185 = v186;
      }

      else
      {
        v184 = 0;
        v185 = 0;
      }

      v333 = *(a2 + 1);
      v334 = p_s;
      if (v542 == 1)
      {
        LOBYTE(v542) = 0;
        v335 = p_s;
      }

      else
      {
        v335 = llvm::raw_ostream::operator<<(p_s, __s);
      }

      v336 = *(v335 + 4);
      if ((*(v335 + 3) - v336) > 4)
      {
        *(v336 + 4) = 101;
        *v336 = 1970037110;
        v337 = (*(v335 + 4) + 5);
        *(v335 + 4) = v337;
      }

      else
      {
        v335 = llvm::raw_ostream::write(v335, "value", 5uLL);
        v337 = *(v335 + 4);
      }

      if (*(v335 + 3) - v337 > 1uLL)
      {
        *v337 = 8250;
        *(v335 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v335, ": ", 2uLL);
      }

      llvm::APInt::print((a2 + 16), v334, v333 == 0);
      if (!*(a2 + 1))
      {
        goto LABEL_769;
      }

      v253 = "isUnsigned";
      v255 = 10;
      v254 = 1;
      goto LABEL_451;
    case 0xB:
      v25 = *(v6 + 4);
      if (*(v6 + 3) - v25 > 0xCuLL)
      {
        qmemcpy(v25, "!DIBasicType(", 13);
        *(v6 + 4) += 13;
      }

      else
      {
        this = llvm::raw_ostream::write(v6, "!DIBasicType(", 0xDuLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = &qword_2815AA830;
      if (*(a2 + 1) != 36)
      {
      }

      v108 = *(a2 - 2);
      if ((v108 & 2) != 0)
      {
        v109 = *(a2 - 4);
      }

      else
      {
        v109 = a2 - 8 * ((v108 >> 2) & 0xF) - 16;
      }

      v110 = *(v109 + 2);
      if (v110)
      {
        v111 = *(v110 + 8);
        v114 = *v111;
        v112 = (v111 + 3);
        v113 = v114;
      }

      else
      {
        v112 = 0;
        v113 = 0;
      }

      goto LABEL_769;
    case 0xC:
      v35 = *(v6 + 4);
      if (*(v6 + 3) - v35 > 0xEuLL)
      {
        qmemcpy(v35, "!DIDerivedType(", 15);
        *(v6 + 4) += 15;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DIDerivedType(", 0xFuLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      v199 = (a2 - 16);
      v198 = *(a2 - 2);
      if ((v198 & 2) != 0)
      {
        v200 = *(a2 - 4);
      }

      else
      {
        v200 = &v199[-((v198 >> 2) & 0xF)];
      }

      v201 = v200[2];
      if (v201)
      {
        v202 = *(v201 + 8);
        v205 = *v202;
        v203 = (v202 + 3);
        v204 = v205;
      }

      else
      {
        v203 = 0;
        v204 = 0;
      }

      if ((*v199 & 2) != 0)
      {
        v340 = *(a2 - 4);
      }

      else
      {
        v340 = &v199[-((*v199 >> 2) & 0xFLL)];
      }

      v341 = a2;
      if (*a2 != 15)
      {
        if ((*v199 & 2) != 0)
        {
          v342 = *(a2 - 4);
        }

        else
        {
          v342 = &v199[-((*v199 >> 2) & 0xFLL)];
        }

        v341 = *v342;
      }

      v514 = *(a2 - 2);
      if ((v514 & 2) != 0)
      {
        v515 = *(a2 - 4);
      }

      else
      {
        v515 = &v199[-((v514 >> 2) & 0xF)];
      }

      v516 = *(a2 - 2);
      if ((v516 & 2) != 0)
      {
        v517 = *(a2 - 4);
      }

      else
      {
        v517 = &v199[-((v516 >> 2) & 0xF)];
      }

      v518 = *(a2 + 44);
      if ((v518 & 0x100000000) != 0)
      {
      }

      if ((*v199 & 2) != 0)
      {
        v519 = *(a2 - 4);
      }

      else
      {
        v519 = &v199[-((*v199 >> 2) & 0xFLL)];
      }

      if (*(a2 + 1) != 17152)
      {
        goto LABEL_769;
      }

      if (*(a2 + 1) != 17152)
      {
        goto LABEL_769;
      }

      if (*(a2 + 1) != 17152)
      {
        goto LABEL_769;
      }

      if (*(a2 + 1) != 17152)
      {
        goto LABEL_769;
      }

      if (*(a2 + 1) != 17152)
      {
        goto LABEL_769;
      }

      v254 = (*(a2 + 1) >> 22) & 1;
      v253 = "ptrAuthAuthenticatesNullValues";
      v255 = 30;
LABEL_451:
      v338 = 0;
      goto LABEL_690;
    case 0xD:
      v17 = *(v6 + 4);
      if ((*(v6 + 3) - v17) > 0x10)
      {
        *(v17 + 16) = 40;
        *v17 = *"!DICompositeType(";
        *(v6 + 4) += 17;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DICompositeType(", 0x11uLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      v83 = (a2 - 16);
      v82 = *(a2 - 2);
      if ((v82 & 2) != 0)
      {
        v84 = *(a2 - 4);
      }

      else
      {
        v84 = &v83[-((v82 >> 2) & 0xF)];
      }

      v85 = v84[2];
      if (v85)
      {
        v86 = *(v85 + 8);
        v89 = *v86;
        v87 = (v86 + 3);
        v88 = v89;
      }

      else
      {
        v87 = 0;
        v88 = 0;
      }

      if ((*v83 & 2) != 0)
      {
        v274 = *(a2 - 4);
      }

      else
      {
        v274 = &v83[-((*v83 >> 2) & 0xF)];
      }

      v275 = a2;
      if (*a2 != 15)
      {
        if ((*v83 & 2) != 0)
        {
          v276 = *(a2 - 4);
        }

        else
        {
          v276 = &v83[-((*v83 >> 2) & 0xF)];
        }

        v275 = *v276;
      }

      v453 = *(a2 - 2);
      if ((v453 & 2) != 0)
      {
        v454 = *(a2 - 4);
      }

      else
      {
        v454 = &v83[-((v453 >> 2) & 0xF)];
      }

      v455 = *(a2 - 2);
      if ((v455 & 2) != 0)
      {
        v456 = *(a2 - 4);
      }

      else
      {
        v456 = &v83[-((v455 >> 2) & 0xF)];
      }

      v457 = *(a2 - 2);
      if ((v457 & 2) != 0)
      {
        v458 = *(a2 - 4);
      }

      else
      {
        v458 = &v83[-((v457 >> 2) & 0xF)];
      }

      if ((*v83 & 2) != 0)
      {
        v459 = *(a2 - 4);
      }

      else
      {
        v459 = &v83[-((*v83 >> 2) & 0xF)];
      }

      if ((*v83 & 2) != 0)
      {
        v460 = *(a2 - 4);
      }

      else
      {
        v460 = &v83[-((*v83 >> 2) & 0xF)];
      }

      v461 = v460[7];
      if (v461)
      {
        v462 = *(v461 + 8);
        v465 = *v462;
        v463 = (v462 + 3);
        v464 = v465;
      }

      else
      {
        v463 = 0;
        v464 = 0;
      }

      if ((*v83 & 2) != 0)
      {
        v466 = *(a2 - 4);
      }

      else
      {
        v466 = &v83[-((*v83 >> 2) & 0xF)];
      }

      if ((*v83 & 2) != 0)
      {
        v467 = *(a2 - 4);
      }

      else
      {
        v467 = &v83[-((*v83 >> 2) & 0xF)];
      }

      if ((*v83 & 2) != 0)
      {
        v468 = *(a2 - 4);
      }

      else
      {
        v468 = &v83[-((*v83 >> 2) & 0xF)];
      }

      if ((*v83 & 2) != 0)
      {
        v469 = *(a2 - 4);
      }

      else
      {
        v469 = &v83[-((*v83 >> 2) & 0xF)];
      }

      v470 = *v83;
      if ((*v83 & 2) != 0)
      {
        v471 = *(a2 - 4);
      }

      else
      {
        v471 = &v83[-((v470 >> 2) & 0xF)];
      }

      v472 = v471[12];
      if (v472 && *v472 == 1 && (v473 = *(v472 + 128)) != 0 && *(v473 + 16) == 16)
      {
        v474 = *(v473 + 32);
        if (v474 > 0x40)
        {
          v475 = **(v473 + 24);
        }

        else
        {
          v475 = (*(v473 + 24) << -v474) >> -v474;
        }
      }

      else
      {
        if ((v470 & 2) != 0)
        {
          v476 = *(a2 - 4);
        }

        else
        {
          v476 = &v83[-((v470 >> 2) & 0xF)];
        }
      }

      if ((*v83 & 2) != 0)
      {
        v477 = *(a2 - 4);
      }

      else
      {
        v477 = &v83[-((*v83 >> 2) & 0xF)];
      }

      v47 = v477[13];
      goto LABEL_679;
    case 0xE:
      v34 = *(v6 + 4);
      if ((*(v6 + 3) - v34) > 0x11)
      {
        *(v34 + 16) = 10341;
        *v34 = *"!DISubroutineType(";
        *(v6 + 4) += 18;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DISubroutineType(", 0x12uLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      v195 = *(a2 + 44);
      if (*(a2 + 44))
      {
        v196 = p_s;
        if (v542 == 1)
        {
          LOBYTE(v542) = 0;
          v197 = p_s;
        }

        else
        {
          v197 = llvm::raw_ostream::operator<<(p_s, __s);
        }

        v388 = llvm::raw_ostream::operator<<(v197, "cc", 2uLL);
        v389 = *(v388 + 4);
        if (*(v388 + 3) - v389 > 1uLL)
        {
          *v389 = 8250;
          *(v388 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v388, ": ", 2uLL);
        }

        v390 = llvm::dwarf::ConventionString(v195);
        if (v391)
        {
          llvm::raw_ostream::operator<<(v196, v390, v391);
        }

        else
        {
          v520 = *(v196 + 4);
          if (v520 >= *(v196 + 3))
          {
            llvm::raw_ostream::write(v196, v195);
          }

          else
          {
            *(v196 + 4) = v520 + 1;
            *v520 = v195;
          }
        }
      }

      v534 = *(a2 - 2);
      if ((v534 & 2) != 0)
      {
        v535 = *(a2 - 4);
      }

      else
      {
        v535 = a2 - 8 * ((v534 >> 2) & 0xF) - 16;
      }

      v47 = *(v535 + 3);
      v48 = "types";
      goto LABEL_832;
    case 0xF:
      v14 = *(v6 + 4);
      if (*(v6 + 3) - v14 > 7uLL)
      {
        *v14 = 0x28656C6946494421;
        *(v6 + 4) += 8;
      }

      else
      {
        this = llvm::raw_ostream::write(v6, "!DIFile(", 8uLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = &qword_2815AA830;
      v64 = (a2 - 16);
      v63 = *(a2 - 2);
      if ((v63 & 2) != 0)
      {
        v65 = *(a2 - 4);
      }

      else
      {
        v65 = &v64[-((v63 >> 2) & 0xF)];
      }

      v66 = *v65;
      if (v66)
      {
        v67 = *(v66 + 8);
        v70 = *v67;
        v68 = (v67 + 3);
        v69 = v70;
      }

      else
      {
        v68 = 0;
        v69 = 0;
      }

      if ((*v64 & 2) != 0)
      {
        v256 = *(a2 - 4);
      }

      else
      {
        v256 = &v64[-((*v64 >> 2) & 0xFLL)];
      }

      v257 = v256[1];
      if (v257)
      {
        v258 = *(v257 + 8);
        v261 = *v258;
        v259 = (v258 + 3);
        v260 = v261;
      }

      else
      {
        v259 = 0;
        v260 = 0;
      }

      if (*(a2 + 32) == 1)
      {
        v262 = *(*(a2 + 3) + 8);
        v265 = *v262;
        v263 = (v262 + 3);
        v264 = v265;
        v266 = *(a2 + 4);
        v267 = p_s;
        if (v542 == 1)
        {
          LOBYTE(v542) = 0;
        }

        else
        {
          v267 = llvm::raw_ostream::operator<<(p_s, __s);
        }

        v393 = *(v267 + 4);
        if (*(v267 + 3) - v393 > 0xDuLL)
        {
          qmemcpy(v393, "checksumkind: ", 14);
          *(v267 + 4) += 14;
        }

        else
        {
          llvm::raw_ostream::write(v267, "checksumkind: ", 0xEuLL);
        }

        v394 = ChecksumKindName[v266 - 1];
        v395 = strlen(v394);
        llvm::raw_ostream::operator<<(v267, v394, v395);
      }

      v396 = *(a2 + 5);
      if (v396)
      {
        v397 = *(v396 + 8);
        v398 = *v397;
        TargetFuncName = (v397 + 3);
        v383 = v398;
      }

      else
      {
        TargetFuncName = 0;
        v383 = 0;
      }

      v385 = "source";
      p_p_s = &p_s;
      v387 = 6;
      goto LABEL_768;
    case 0x10:
      v16 = *(v6 + 4);
      if (*(v6 + 3) - v16 > 0xEuLL)
      {
        qmemcpy(v16, "!DICompileUnit(", 15);
        *(v6 + 4) += 15;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DICompileUnit(", 0xFuLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      v79 = a2;
      if (*a2 != 15)
      {
        v80 = *(a2 - 2);
        if ((v80 & 2) != 0)
        {
          v81 = *(a2 - 4);
        }

        else
        {
          v81 = (a2 - 8 * ((v80 >> 2) & 0xF) - 16);
        }

        v79 = *v81;
      }

      v405 = (a2 - 16);
      v404 = *(a2 - 2);
      if ((v404 & 2) != 0)
      {
        v406 = *(a2 - 4);
      }

      else
      {
        v406 = &v405[-((v404 >> 2) & 0xF)];
      }

      v407 = v406[1];
      if (v407)
      {
        v408 = *(v407 + 8);
        v411 = *v408;
        v409 = (v408 + 3);
        v410 = v411;
      }

      else
      {
        v409 = 0;
        v410 = 0;
      }

      v412 = *(a2 - 2);
      if ((v412 & 2) != 0)
      {
        v413 = *(a2 - 4);
      }

      else
      {
        v413 = &v405[-((v412 >> 2) & 0xF)];
      }

      v414 = v413[2];
      if (v414)
      {
        v415 = *(v414 + 8);
        v418 = *v415;
        v416 = (v415 + 3);
        v417 = v418;
      }

      else
      {
        v416 = 0;
        v417 = 0;
      }

      v419 = *(a2 - 2);
      if ((v419 & 2) != 0)
      {
        v420 = *(a2 - 4);
      }

      else
      {
        v420 = &v405[-((v419 >> 2) & 0xF)];
      }

      v421 = v420[3];
      if (v421)
      {
        v422 = *(v421 + 8);
        v425 = *v422;
        v423 = (v422 + 3);
        v424 = v425;
      }

      else
      {
        v423 = 0;
        v424 = 0;
      }

      v426 = *(a2 + 7);
      v427 = p_s;
      if (v542 == 1)
      {
        LOBYTE(v542) = 0;
      }

      else
      {
        v427 = llvm::raw_ostream::operator<<(p_s, __s);
      }

      v428 = *(v427 + 4);
      if ((*(v427 + 3) - v428) > 0xB)
      {
        *(v428 + 8) = 1684957515;
        *v428 = *"emissionKind";
        v429 = (*(v427 + 4) + 12);
        *(v427 + 4) = v429;
      }

      else
      {
        v427 = llvm::raw_ostream::write(v427, "emissionKind", 0xCuLL);
        v429 = *(v427 + 4);
      }

      if (*(v427 + 3) - v429 > 1uLL)
      {
        *v429 = 8250;
        *(v427 + 4) += 2;
      }

      else
      {
        v427 = llvm::raw_ostream::write(v427, ": ", 2uLL);
      }

      if (v426 > 3)
      {
        v430 = 0;
      }

      else
      {
        v430 = off_279F00190[v426];
      }

      llvm::raw_ostream::operator<<(v427, v430);
      if ((*v405 & 2) != 0)
      {
        v431 = *(a2 - 4);
      }

      else
      {
        v431 = &v405[-((*v405 >> 2) & 0xFLL)];
      }

      if ((*v405 & 2) != 0)
      {
        v432 = *(a2 - 4);
      }

      else
      {
        v432 = &v405[-((*v405 >> 2) & 0xFLL)];
      }

      if ((*v405 & 2) != 0)
      {
        v433 = *(a2 - 4);
      }

      else
      {
        v433 = &v405[-((*v405 >> 2) & 0xFLL)];
      }

      if ((*v405 & 2) != 0)
      {
        v434 = *(a2 - 4);
      }

      else
      {
        v434 = &v405[-((*v405 >> 2) & 0xFLL)];
      }

      if ((*v405 & 2) != 0)
      {
        v435 = *(a2 - 4);
      }

      else
      {
        v435 = &v405[-((*v405 >> 2) & 0xFLL)];
      }

      v436 = *(a2 + 11);
      if (v436)
      {
        v437 = p_s;
        if (v542 == 1)
        {
          LOBYTE(v542) = 0;
        }

        else
        {
          v437 = llvm::raw_ostream::operator<<(p_s, __s);
        }

        v438 = llvm::raw_ostream::operator<<(v437, "nameTableKind", 0xDuLL);
        v439 = *(v438 + 4);
        if (*(v438 + 3) - v439 > 1uLL)
        {
          *v439 = 8250;
          *(v438 + 4) += 2;
        }

        else
        {
          v438 = llvm::raw_ostream::write(v438, ": ", 2uLL);
        }

        v440 = "GNU";
        if (v436 != 1)
        {
          v440 = 0;
        }

        if (v436 == 2)
        {
          v441 = "None";
        }

        else
        {
          v441 = v440;
        }

        llvm::raw_ostream::operator<<(v438, v441);
      }

      v442 = *(a2 - 2);
      if ((v442 & 2) != 0)
      {
        v443 = *(a2 - 4);
      }

      else
      {
        v443 = &v405[-((v442 >> 2) & 0xF)];
      }

      v444 = v443[9];
      if (v444)
      {
        v445 = *(v444 + 8);
        v448 = *v445;
        v446 = (v445 + 3);
        v447 = v448;
      }

      else
      {
        v446 = 0;
        v447 = 0;
      }

      if ((*v405 & 2) != 0)
      {
        v449 = *(a2 - 4);
      }

      else
      {
        v449 = &v405[-((*v405 >> 2) & 0xFLL)];
      }

      v450 = v449[10];
      if (v450)
      {
        v451 = *(v450 + 8);
        v452 = *v451;
        TargetFuncName = (v451 + 3);
        v383 = v452;
      }

      else
      {
        TargetFuncName = 0;
        v383 = 0;
      }

      v385 = "sdk";
      p_p_s = &p_s;
      v387 = 3;
      goto LABEL_768;
    case 0x11:
      v31 = *(v6 + 4);
      if (*(v6 + 3) - v31 > 0xDuLL)
      {
        qmemcpy(v31, "!DISubprogram(", 14);
        *(v6 + 4) += 14;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DISubprogram(", 0xEuLL);
      }

      *v537 = v6;
      v538 = 1;
      v539 = ", ";
      v540 = a3;
      v173 = (a2 - 16);
      v172 = *(a2 - 2);
      if ((v172 & 2) != 0)
      {
        v174 = *(a2 - 4);
      }

      else
      {
        v174 = &v173[-((v172 >> 2) & 0xF)];
      }

      v175 = v174[2];
      if (v175)
      {
        v176 = *(v175 + 8);
        v179 = *v176;
        v177 = (v176 + 3);
        v178 = v179;
      }

      else
      {
        v177 = 0;
        v178 = 0;
      }

      if ((*v173 & 2) != 0)
      {
        v324 = *(a2 - 4);
      }

      else
      {
        v324 = &v173[-((*v173 >> 2) & 0xF)];
      }

      v325 = v324[3];
      if (v325)
      {
        v326 = *(v325 + 8);
        v329 = *v326;
        v327 = (v326 + 3);
        v328 = v329;
      }

      else
      {
        v327 = 0;
        v328 = 0;
      }

      if ((*v173 & 2) != 0)
      {
        v330 = *(a2 - 4);
      }

      else
      {
        v330 = &v173[-((*v173 >> 2) & 0xF)];
      }

      v331 = a2;
      if (*a2 != 15)
      {
        if ((*v173 & 2) != 0)
        {
          v332 = *(a2 - 4);
        }

        else
        {
          v332 = &v173[-((*v173 >> 2) & 0xF)];
        }

        v331 = *v332;
      }

      v479 = *(a2 - 2);
      if ((v479 & 2) != 0)
      {
        v480 = *(a2 - 4);
      }

      else
      {
        v480 = &v173[-((v479 >> 2) & 0xF)];
      }

      v481 = *(a2 - 2);
      if ((v481 & 2) != 0)
      {
        if (*(a2 - 6) >= 9u)
        {
          v482 = *(a2 - 4);
          goto LABEL_701;
        }
      }

      else if ((*(a2 - 2) & 0x3C0uLL) > 0x200)
      {
        v482 = &v173[-((v481 >> 2) & 0xF)];
LABEL_701:
        v483 = v482[8];
        goto LABEL_703;
      }

      v483 = 0;
LABEL_703:
      v484 = *(a2 + 6);
      if (*(a2 + 9) & 3 | v484)
      {
      }

      v485 = *(a2 + 7);
      if (v485)
      {
        v486 = *v537;
        if (v538 == 1)
        {
          v538 = 0;
        }

        else
        {
          v486 = llvm::raw_ostream::operator<<(*v537, v539);
        }

        v487 = llvm::raw_ostream::operator<<(v486, "thisAdjustment", 0xEuLL);
        v488 = *(v487 + 4);
        if (*(v487 + 3) - v488 > 1uLL)
        {
          *v488 = 8250;
          *(v487 + 4) += 2;
        }

        else
        {
          v487 = llvm::raw_ostream::write(v487, ": ", 2uLL);
        }

        llvm::write_integer(v487, v485, 0, 0);
      }

      v489 = *(a2 + 9);
      v490 = *v537;
      if (v538 == 1)
      {
        v538 = 0;
        v491 = *v537;
      }

      else
      {
        v491 = llvm::raw_ostream::operator<<(*v537, v539);
      }

      v492 = *(v491 + 4);
      if (*(v491 + 3) - v492 > 6uLL)
      {
        *(v492 + 3) = 1936154988;
        *v492 = 1816555635;
        v493 = (*(v491 + 4) + 7);
        *(v491 + 4) = v493;
      }

      else
      {
        v491 = llvm::raw_ostream::write(v491, "spFlags", 7uLL);
        v493 = *(v491 + 4);
      }

      if (*(v491 + 3) - v493 > 1uLL)
      {
        *v493 = 8250;
        *(v491 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v491, ": ", 2uLL);
      }

      if (!v489)
      {
        write_unsigned<unsigned long>(v490, 0, 0, 0, 0);
        goto LABEL_737;
      }

      p_s = &__s;
      v542 = 0x800000000;
      v494 = llvm::DISubprogram::splitFlags(v489, &p_s);
      v495 = v494;
      if (!v542)
      {
        goto LABEL_733;
      }

      v536 = v494;
      v496 = p_s;
      v497 = 4 * v542;
      v498 = 1;
      do
      {
        FlagString = llvm::DISubprogram::getFlagString(*v496);
        v501 = v500;
        if ((v498 & 1) == 0)
        {
          v502 = *(v490 + 4);
          if ((*(v490 + 3) - v502) > 2)
          {
            *(v502 + 2) = 32;
            *v502 = 31776;
            *(v490 + 4) += 3;
          }

          else
          {
            llvm::raw_ostream::write(v490, " | ", 3uLL);
          }
        }

        llvm::raw_ostream::operator<<(v490, FlagString, v501);
        v498 = 0;
        ++v496;
        v497 -= 4;
      }

      while (v497);
      v173 = (a2 - 16);
      v495 = v536;
      if (v536 || !v542)
      {
        v490 = llvm::raw_ostream::operator<<(v490, " | ", 3uLL);
LABEL_733:
        write_unsigned<unsigned long>(v490, v495, 0, 0, 0);
      }

      if (p_s != &__s)
      {
        free(p_s);
      }

LABEL_737:
      if ((*v173 & 2) != 0)
      {
        v503 = *(a2 - 4);
      }

      else
      {
        v503 = &v173[-((*v173 >> 2) & 0xF)];
      }

      if ((*v173 & 2) != 0)
      {
        if (*(a2 - 6) >= 0xAu)
        {
          v504 = *(a2 - 4);
          goto LABEL_745;
        }
      }

      else if ((*v173 & 0x380) > 0x240)
      {
        v504 = &v173[-((*v173 >> 2) & 0xF)];
LABEL_745:
        v505 = v504[9];
        goto LABEL_747;
      }

      v505 = 0;
LABEL_747:
      if ((*v173 & 2) != 0)
      {
        v506 = *(a2 - 4);
      }

      else
      {
        v506 = &v173[-((*v173 >> 2) & 0xF)];
      }

      if ((*v173 & 2) != 0)
      {
        v507 = *(a2 - 4);
      }

      else
      {
        v507 = &v173[-((*v173 >> 2) & 0xF)];
      }

      if ((*v173 & 2) != 0)
      {
        if (*(a2 - 6) >= 0xBu)
        {
          v508 = *(a2 - 4);
          goto LABEL_758;
        }
      }

      else if ((*v173 & 0x3C0) > 0x280)
      {
        v508 = &v173[-((*v173 >> 2) & 0xF)];
LABEL_758:
        v509 = v508[10];
        goto LABEL_760;
      }

      v509 = 0;
LABEL_760:
      v510 = *v173;
      if ((*v173 & 2) != 0)
      {
        if (*(a2 - 6) >= 0xCu)
        {
          v511 = *(a2 - 4);
          goto LABEL_765;
        }
      }

      else if ((~v510 & 0x300) == 0)
      {
        v511 = &v173[-((v510 >> 2) & 0xF)];
LABEL_765:
        v512 = v511[11];
        goto LABEL_767;
      }

      v512 = 0;
LABEL_767:
      TargetFuncName = llvm::DISubprogram::getTargetFuncName(a2);
      v383 = v513;
      v385 = "targetFuncName";
      p_p_s = v537;
      v387 = 14;
LABEL_768:
LABEL_769:
      v127 = *(v6 + 4);
      if (*(v6 + 3) == v127)
      {
        llvm::raw_ostream::write(v6, ")", 1uLL);
      }

      else
      {
        v128 = 41;
LABEL_771:
        *v127 = v128;
        v90 = *(v6 + 4) + 1;
LABEL_772:
        *(v6 + 4) = v90;
      }

      return;
    case 0x12:
      v13 = *(v6 + 4);
      if (*(v6 + 3) - v13 > 0xFuLL)
      {
        *v13 = *"!DILexicalBlock(";
        *(v6 + 4) += 16;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DILexicalBlock(", 0x10uLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      v59 = (a2 - 16);
      v58 = *(a2 - 2);
      if ((v58 & 2) != 0)
      {
        v60 = *(a2 - 4);
      }

      else
      {
        v60 = &v59[-((v58 >> 2) & 0xF)];
      }

      v61 = a2;
      if (*a2 != 15)
      {
        if ((*v59 & 2) != 0)
        {
          v62 = *(a2 - 4);
        }

        else
        {
          v62 = &v59[-((*v59 >> 2) & 0xFLL)];
        }

        v61 = *v62;
      }

      v368 = *(a2 + 10);
      v369 = "column";
      v370 = 6;
      goto LABEL_538;
    case 0x13:
      v23 = *(v6 + 4);
      if ((*(v6 + 3) - v23) > 0x13)
      {
        *(v23 + 16) = 677735529;
        *v23 = *"!DILexicalBlockFile(";
        *(v6 + 4) += 20;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DILexicalBlockFile(", 0x14uLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      v100 = (a2 - 16);
      v99 = *(a2 - 2);
      if ((v99 & 2) != 0)
      {
        v101 = *(a2 - 4);
      }

      else
      {
        v101 = &v100[-((v99 >> 2) & 0xF)];
      }

      v102 = a2;
      if (*a2 != 15)
      {
        if ((*v100 & 2) != 0)
        {
          v103 = *(a2 - 4);
        }

        else
        {
          v103 = &v100[-((*v100 >> 2) & 0xFLL)];
        }

        v102 = *v103;
      }

      v368 = *(a2 + 4);
      v369 = "discriminator";
      v370 = 13;
      v392 = 0;
      goto LABEL_685;
    case 0x14:
      v12 = *(v6 + 4);
      if (*(v6 + 3) - v12 > 0xCuLL)
      {
        qmemcpy(v12, "!DINamespace(", 13);
        *(v6 + 4) += 13;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DINamespace(", 0xDuLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      v51 = (a2 - 16);
      v50 = *(a2 - 2);
      if ((v50 & 2) != 0)
      {
        v52 = *(a2 - 4);
      }

      else
      {
        v52 = &v51[-((v50 >> 2) & 0xF)];
      }

      v53 = v52[2];
      if (v53)
      {
        v54 = *(v53 + 8);
        v57 = *v54;
        v55 = (v54 + 3);
        v56 = v57;
      }

      else
      {
        v55 = 0;
        v56 = 0;
      }

      if ((*v51 & 2) != 0)
      {
        v252 = *(a2 - 4);
      }

      else
      {
        v252 = &v51[-((*v51 >> 2) & 0xFLL)];
      }

      v253 = "exportSymbols";
      v254 = *(a2 + 16) & 1;
      v255 = 13;
      goto LABEL_689;
    case 0x15:
      v27 = *(v6 + 4);
      if ((*(v6 + 3) - v27) > 9)
      {
        *(v27 + 8) = 10341;
        *v27 = *"!DIModule(";
        *(v6 + 4) += 10;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DIModule(", 0xAuLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      v141 = (a2 - 16);
      v140 = *(a2 - 2);
      if ((v140 & 2) != 0)
      {
        v142 = *(a2 - 4);
      }

      else
      {
        v142 = &v141[-((v140 >> 2) & 0xF)];
      }

      if ((*v141 & 2) != 0)
      {
        v143 = *(a2 - 4);
      }

      else
      {
        v143 = &v141[-((*v141 >> 2) & 0xFLL)];
      }

      v144 = v143[2];
      if (v144)
      {
        v145 = *(v144 + 8);
        v148 = *v145;
        v146 = (v145 + 3);
        v147 = v148;
      }

      else
      {
        v146 = 0;
        v147 = 0;
      }

      if ((*v141 & 2) != 0)
      {
        v282 = *(a2 - 4);
      }

      else
      {
        v282 = &v141[-((*v141 >> 2) & 0xFLL)];
      }

      v283 = v282[3];
      if (v283)
      {
        v284 = *(v283 + 8);
        v287 = *v284;
        v285 = (v284 + 3);
        v286 = v287;
      }

      else
      {
        v285 = 0;
        v286 = 0;
      }

      if ((*v141 & 2) != 0)
      {
        v288 = *(a2 - 4);
      }

      else
      {
        v288 = &v141[-((*v141 >> 2) & 0xFLL)];
      }

      v289 = v288[4];
      if (v289)
      {
        v290 = *(v289 + 8);
        v293 = *v290;
        v291 = (v290 + 3);
        v292 = v293;
      }

      else
      {
        v291 = 0;
        v292 = 0;
      }

      if ((*v141 & 2) != 0)
      {
        v294 = *(a2 - 4);
      }

      else
      {
        v294 = &v141[-((*v141 >> 2) & 0xFLL)];
      }

      v295 = v294[5];
      if (v295)
      {
        v296 = *(v295 + 8);
        v299 = *v296;
        v297 = (v296 + 3);
        v298 = v299;
      }

      else
      {
        v297 = 0;
        v298 = 0;
      }

      v300 = a2;
      if (*a2 != 15)
      {
        if ((*v141 & 2) != 0)
        {
          v301 = *(a2 - 4);
        }

        else
        {
          v301 = &v141[-((*v141 >> 2) & 0xFLL)];
        }

        v300 = *v301;
      }

      v254 = *(a2 + 20);
      v253 = "isDecl";
      v255 = 6;
      goto LABEL_689;
    case 0x16:
      v33 = *(v6 + 4);
      if (*(v6 + 3) - v33 > 0x18uLL)
      {
        qmemcpy(v33, "!DITemplateTypeParameter(", 25);
        *(v6 + 4) += 25;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DITemplateTypeParameter(", 0x19uLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      v188 = (a2 - 16);
      v187 = *(a2 - 2);
      if ((v187 & 2) != 0)
      {
        v189 = *(a2 - 4);
      }

      else
      {
        v189 = &v188[-((v187 >> 2) & 0xF)];
      }

      v190 = *v189;
      if (v190)
      {
        v191 = *(v190 + 8);
        v194 = *v191;
        v192 = (v191 + 3);
        v193 = v194;
      }

      else
      {
        v192 = 0;
        v193 = 0;
      }

      if ((*v188 & 2) != 0)
      {
        v339 = *(a2 - 4);
      }

      else
      {
        v339 = &v188[-((*v188 >> 2) & 0xFLL)];
      }

      v254 = *(a2 + 16);
      v253 = "defaulted";
      v255 = 9;
LABEL_689:
      v338 = 256;
LABEL_690:
      goto LABEL_769;
    case 0x17:
      v38 = *(v6 + 4);
      if (*(v6 + 3) - v38 > 0x19uLL)
      {
        qmemcpy(v38, "!DITemplateValueParameter(", 26);
        *(v6 + 4) += 26;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DITemplateValueParameter(", 0x1AuLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      if (*(a2 + 1) != 48)
      {
      }

      v224 = (a2 - 16);
      v223 = *(a2 - 2);
      if ((v223 & 2) != 0)
      {
        v225 = *(a2 - 4);
      }

      else
      {
        v225 = &v224[-((v223 >> 2) & 0xF)];
      }

      v226 = *v225;
      if (v226)
      {
        v227 = *(v226 + 8);
        v230 = *v227;
        v228 = (v227 + 3);
        v229 = v230;
      }

      else
      {
        v228 = 0;
        v229 = 0;
      }

      if ((*v224 & 2) != 0)
      {
        v348 = *(a2 - 4);
      }

      else
      {
        v348 = &v224[-((*v224 >> 2) & 0xFLL)];
      }

      v349 = *(a2 - 2);
      if ((v349 & 2) != 0)
      {
        v350 = *(a2 - 4);
      }

      else
      {
        v350 = &v224[-((v349 >> 2) & 0xF)];
      }

      v47 = v350[2];
      v48 = "value";
LABEL_832:
      v49 = 5;
      v478 = 0;
      goto LABEL_681;
    case 0x18:
      v28 = *(v6 + 4);
      if ((*(v6 + 3) - v28) > 0x11)
      {
        *(v28 + 16) = 10341;
        *v28 = *"!DIGlobalVariable(";
        *(v6 + 4) += 18;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DIGlobalVariable(", 0x12uLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      v150 = (a2 - 16);
      v149 = *(a2 - 2);
      if ((v149 & 2) != 0)
      {
        v151 = *(a2 - 4);
      }

      else
      {
        v151 = &v150[-((v149 >> 2) & 0xF)];
      }

      v152 = v151[1];
      if (v152)
      {
        v153 = *(v152 + 8);
        v156 = *v153;
        v154 = (v153 + 3);
        v155 = v156;
      }

      else
      {
        v154 = 0;
        v155 = 0;
      }

      if ((*v150 & 2) != 0)
      {
        v302 = *(a2 - 4);
      }

      else
      {
        v302 = &v150[-((*v150 >> 2) & 0xFLL)];
      }

      v303 = v302[5];
      if (v303)
      {
        v304 = *(v303 + 8);
        v307 = *v304;
        v305 = (v304 + 3);
        v306 = v307;
      }

      else
      {
        v305 = 0;
        v306 = 0;
      }

      if ((*v150 & 2) != 0)
      {
        v308 = *(a2 - 4);
      }

      else
      {
        v308 = &v150[-((*v150 >> 2) & 0xFLL)];
      }

      if ((*v150 & 2) != 0)
      {
        v309 = *(a2 - 4);
      }

      else
      {
        v309 = &v150[-((*v150 >> 2) & 0xFLL)];
      }

      v310 = *(a2 - 2);
      if ((v310 & 2) != 0)
      {
        v311 = *(a2 - 4);
      }

      else
      {
        v311 = &v150[-((v310 >> 2) & 0xF)];
      }

      v312 = *(a2 - 2);
      if ((v312 & 2) != 0)
      {
        v313 = *(a2 - 4);
      }

      else
      {
        v313 = &v150[-((v312 >> 2) & 0xF)];
      }

      if ((*v150 & 2) != 0)
      {
        v314 = *(a2 - 4);
      }

      else
      {
        v314 = &v150[-((*v150 >> 2) & 0xFLL)];
      }

      v315 = *(a2 - 2);
      if ((v315 & 2) != 0)
      {
        v316 = *(a2 - 4);
      }

      else
      {
        v316 = &v150[-((v315 >> 2) & 0xF)];
      }

      v47 = v316[8];
      goto LABEL_679;
    case 0x19:
      v30 = *(v6 + 4);
      if ((*(v6 + 3) - v30) > 0x10)
      {
        *(v30 + 16) = 40;
        *v30 = *"!DILocalVariable(";
        *(v6 + 4) += 17;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DILocalVariable(", 0x11uLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      v165 = (a2 - 16);
      v164 = *(a2 - 2);
      if ((v164 & 2) != 0)
      {
        v166 = *(a2 - 4);
      }

      else
      {
        v166 = &v165[-((v164 >> 2) & 0xF)];
      }

      v167 = v166[1];
      if (v167)
      {
        v168 = *(v167 + 8);
        v171 = *v168;
        v169 = (v168 + 3);
        v170 = v171;
      }

      else
      {
        v169 = 0;
        v170 = 0;
      }

      v317 = *(a2 - 2);
      if ((v317 & 2) != 0)
      {
        v318 = *(a2 - 4);
      }

      else
      {
        v318 = &v165[-((v317 >> 2) & 0xF)];
      }

      if ((*v165 & 2) != 0)
      {
        v319 = *(a2 - 4);
      }

      else
      {
        v319 = &v165[-((*v165 >> 2) & 0xFLL)];
      }

      v320 = *(a2 - 2);
      if ((v320 & 2) != 0)
      {
        v321 = *(a2 - 4);
      }

      else
      {
        v321 = &v165[-((v320 >> 2) & 0xF)];
      }

      v322 = *(a2 - 2);
      if ((v322 & 2) != 0)
      {
        v323 = *(a2 - 4);
      }

      else
      {
        v323 = &v165[-((v322 >> 2) & 0xF)];
      }

      v47 = v323[4];
LABEL_679:
      v48 = "annotations";
      v49 = 11;
      goto LABEL_680;
    case 0x1A:
      v37 = *(v6 + 4);
      if ((*(v6 + 3) - v37) > 8)
      {
        *(v37 + 8) = 40;
        *v37 = *"!DILabel(";
        *(v6 + 4) += 9;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DILabel(", 9uLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      v215 = (a2 - 16);
      v214 = *(a2 - 2);
      if ((v214 & 2) != 0)
      {
        v216 = *(a2 - 4);
      }

      else
      {
        v216 = &v215[-((v214 >> 2) & 0xF)];
      }

      if ((*v215 & 2) != 0)
      {
        v217 = *(a2 - 4);
      }

      else
      {
        v217 = &v215[-((*v215 >> 2) & 0xFLL)];
      }

      v218 = v217[1];
      if (v218)
      {
        v219 = *(v218 + 8);
        v222 = *v219;
        v220 = (v219 + 3);
        v221 = v222;
      }

      else
      {
        v220 = 0;
        v221 = 0;
      }

      if ((*v215 & 2) != 0)
      {
        v346 = *(a2 - 4);
      }

      else
      {
        v346 = &v215[-((*v215 >> 2) & 0xFLL)];
      }

      v347 = v346[2];
      goto LABEL_514;
    case 0x1B:
      v39 = *(v6 + 4);
      if (*(v6 + 3) - v39 > 0xFuLL)
      {
        *v39 = *"!DIObjCProperty(";
        *(v6 + 4) += 16;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DIObjCProperty(", 0x10uLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      v232 = (a2 - 16);
      v231 = *(a2 - 2);
      if ((v231 & 2) != 0)
      {
        v233 = *(a2 - 4);
      }

      else
      {
        v233 = &v232[-((v231 >> 2) & 0xF)];
      }

      v234 = *v233;
      if (v234)
      {
        v235 = *(v234 + 8);
        v238 = *v235;
        v236 = (v235 + 3);
        v237 = v238;
      }

      else
      {
        v236 = 0;
        v237 = 0;
      }

      if ((*v232 & 2) != 0)
      {
        v351 = *(a2 - 4);
      }

      else
      {
        v351 = &v232[-((*v232 >> 2) & 0xFLL)];
      }

      v352 = *(a2 - 2);
      if ((v352 & 2) != 0)
      {
        v353 = *(a2 - 4);
      }

      else
      {
        v353 = &v232[-((v352 >> 2) & 0xF)];
      }

      v354 = v353[3];
      if (v354)
      {
        v355 = *(v354 + 8);
        v358 = *v355;
        v356 = (v355 + 3);
        v357 = v358;
      }

      else
      {
        v356 = 0;
        v357 = 0;
      }

      if ((*v232 & 2) != 0)
      {
        v359 = *(a2 - 4);
      }

      else
      {
        v359 = &v232[-((*v232 >> 2) & 0xFLL)];
      }

      v360 = v359[2];
      if (v360)
      {
        v361 = *(v360 + 8);
        v364 = *v361;
        v362 = (v361 + 3);
        v363 = v364;
      }

      else
      {
        v362 = 0;
        v363 = 0;
      }

      v365 = *(a2 - 2);
      if ((v365 & 2) != 0)
      {
        v366 = *(a2 - 4);
      }

      else
      {
        v366 = &v232[-((v365 >> 2) & 0xF)];
      }

      v47 = v366[4];
      v48 = "type";
LABEL_508:
      v49 = 4;
      goto LABEL_680;
    case 0x1C:
      v22 = *(v6 + 4);
      if ((*(v6 + 3) - v22) > 0x11)
      {
        *(v22 + 16) = 10361;
        *v22 = *"!DIImportedEntity(";
        *(v6 + 4) += 18;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DIImportedEntity(", 0x12uLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      v92 = (a2 - 16);
      v91 = *(a2 - 2);
      if ((v91 & 2) != 0)
      {
        v93 = *(a2 - 4);
      }

      else
      {
        v93 = &v92[-((v91 >> 2) & 0xF)];
      }

      v94 = v93[2];
      if (v94)
      {
        v95 = *(v94 + 8);
        v98 = *v95;
        v96 = (v95 + 3);
        v97 = v98;
      }

      else
      {
        v96 = 0;
        v97 = 0;
      }

      if ((*v92 & 2) != 0)
      {
        v277 = *(a2 - 4);
      }

      else
      {
        v277 = &v92[-((*v92 >> 2) & 0xFLL)];
      }

      if ((*v92 & 2) != 0)
      {
        v278 = *(a2 - 4);
      }

      else
      {
        v278 = &v92[-((*v92 >> 2) & 0xFLL)];
      }

      if ((*v92 & 2) != 0)
      {
        v279 = *(a2 - 4);
      }

      else
      {
        v279 = &v92[-((*v92 >> 2) & 0xFLL)];
      }

      v280 = *(a2 - 2);
      if ((v280 & 2) != 0)
      {
        v281 = *(a2 - 4);
      }

      else
      {
        v281 = &v92[-((v280 >> 2) & 0xF)];
      }

      v47 = v281[4];
      v48 = "elements";
      v49 = 8;
      goto LABEL_680;
    case 0x1D:
      v18 = *(v6 + 4);
      if (*(v6 + 3) - v18 <= 0xCuLL)
      {
        v19 = "!DIAssignID()";
        v20 = v6;
        v21 = 13;
        goto LABEL_361;
      }

      qmemcpy(v18, "!DIAssignID()", 13);
      v90 = *(v6 + 4) + 13;
      goto LABEL_772;
    case 0x1E:
      v41 = *(v6 + 4);
      if ((*(v6 + 3) - v41) > 8)
      {
        *(v41 + 8) = 40;
        *v41 = *"!DIMacro(";
        v42 = *(v6 + 4) + 9;
        *(v6 + 4) = v42;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DIMacro(", 9uLL);
        v42 = *(v6 + 4);
      }

      p_s = v6;
      __s = ", ";
      v544 = a3;
      LOBYTE(v542) = 0;
      if ((*(v6 + 3) - v42) > 5)
      {
        *(v42 + 4) = 8250;
        *v42 = 1701869940;
        *(v6 + 4) += 6;
      }

      else
      {
        llvm::raw_ostream::write(v6, "type: ", 6uLL);
      }

      v249 = *(a2 + 1);
      v250 = llvm::dwarf::MacinfoString(v249);
      if (v251)
      {
        llvm::raw_ostream::operator<<(v6, v250, v251);
      }

      else
      {
        write_unsigned<unsigned long>(v6, v249, 0, 0, 0);
      }

      v372 = (a2 - 16);
      v371 = *(a2 - 2);
      if ((v371 & 2) != 0)
      {
        v373 = *(a2 - 4);
      }

      else
      {
        v373 = &v372[-((v371 >> 2) & 0xF)];
      }

      v374 = *v373;
      if (v374)
      {
        v375 = *(v374 + 8);
        v378 = *v375;
        v376 = (v375 + 3);
        v377 = v378;
      }

      else
      {
        v376 = 0;
        v377 = 0;
      }

      if ((*v372 & 2) != 0)
      {
        v379 = *(a2 - 4);
      }

      else
      {
        v379 = &v372[-((*v372 >> 2) & 0xFLL)];
      }

      v380 = v379[1];
      if (v380)
      {
        v381 = *(v380 + 8);
        v384 = *v381;
        TargetFuncName = (v381 + 3);
        v383 = v384;
      }

      else
      {
        TargetFuncName = 0;
        v383 = 0;
      }

      v385 = "value";
      p_p_s = &p_s;
      v387 = 5;
      goto LABEL_768;
    case 0x1F:
      v11 = *(v6 + 4);
      if (*(v6 + 3) - v11 > 0xCuLL)
      {
        qmemcpy(v11, "!DIMacroFile(", 13);
        *(v6 + 4) += 13;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DIMacroFile(", 0xDuLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      v44 = (a2 - 16);
      v43 = *(a2 - 2);
      if ((v43 & 2) != 0)
      {
        v45 = *(a2 - 4);
      }

      else
      {
        v45 = &v44[-((v43 >> 2) & 0xF)];
      }

      if ((*v44 & 2) != 0)
      {
        v46 = *(a2 - 4);
      }

      else
      {
        v46 = &v44[-((*v44 >> 2) & 0xFLL)];
      }

      v47 = v46[1];
      v48 = "nodes";
      v49 = 5;
      goto LABEL_680;
    case 0x20:
      v40 = *(v6 + 4);
      if (*(v6 + 3) - v40 > 0xEuLL)
      {
        qmemcpy(v40, "!DICommonBlock(", 15);
        *(v6 + 4) += 15;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DICommonBlock(", 0xFuLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      v240 = (a2 - 16);
      v239 = *(a2 - 2);
      if ((v239 & 2) != 0)
      {
        v241 = *(a2 - 4);
      }

      else
      {
        v241 = &v240[-((v239 >> 2) & 0xF)];
      }

      if ((*v240 & 2) != 0)
      {
        v242 = *(a2 - 4);
      }

      else
      {
        v242 = &v240[-((*v240 >> 2) & 0xFLL)];
      }

      if ((*v240 & 2) != 0)
      {
        v243 = *(a2 - 4);
      }

      else
      {
        v243 = &v240[-((*v240 >> 2) & 0xFLL)];
      }

      v244 = v243[2];
      if (v244)
      {
        v245 = *(v244 + 8);
        v248 = *v245;
        v246 = (v245 + 3);
        v247 = v248;
      }

      else
      {
        v246 = 0;
        v247 = 0;
      }

      if ((*v240 & 2) != 0)
      {
        v367 = *(a2 - 4);
      }

      else
      {
        v367 = &v240[-((*v240 >> 2) & 0xFLL)];
      }

      v347 = v367[3];
LABEL_514:
      v368 = *(a2 + 4);
      v369 = "line";
      v370 = 4;
LABEL_538:
      v392 = 1;
LABEL_685:
      goto LABEL_769;
    case 0x21:

      writeDIArgList(v6, a2, a3, a4);
      return;
    case 0x22:
      v36 = *(v6 + 4);
      if (*(v6 + 3) - v36 > 0xDuLL)
      {
        qmemcpy(v36, "!DIStringType(", 14);
        *(v6 + 4) += 14;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DIStringType(", 0xEuLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      if (*(a2 + 1) != 18)
      {
      }

      v207 = (a2 - 16);
      v206 = *(a2 - 2);
      if ((v206 & 2) != 0)
      {
        v208 = *(a2 - 4);
      }

      else
      {
        v208 = &v207[-((v206 >> 2) & 0xF)];
      }

      v209 = v208[2];
      if (v209)
      {
        v210 = *(v209 + 8);
        v213 = *v210;
        v211 = (v210 + 3);
        v212 = v213;
      }

      else
      {
        v211 = 0;
        v212 = 0;
      }

      if ((*v207 & 2) != 0)
      {
        v343 = *(a2 - 4);
      }

      else
      {
        v343 = &v207[-((*v207 >> 2) & 0xFLL)];
      }

      if ((*v207 & 2) != 0)
      {
        v344 = *(a2 - 4);
      }

      else
      {
        v344 = &v207[-((*v207 >> 2) & 0xFLL)];
      }

      if ((*v207 & 2) != 0)
      {
        v345 = *(a2 - 4);
      }

      else
      {
        v345 = &v207[-((*v207 >> 2) & 0xFLL)];
      }

      goto LABEL_769;
    case 0x23:
      v26 = *(v6 + 4);
      if ((*(v6 + 3) - v26) > 0x12)
      {
        *(v26 + 15) = 677734254;
        *v26 = *"!DIGenericSubrange(";
        *(v6 + 4) += 19;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!DIGenericSubrange(", 0x13uLL);
      }

      p_s = v6;
      LOBYTE(v542) = 1;
      __s = ", ";
      v544 = a3;
      v130 = (a2 - 16);
      v129 = *(a2 - 2);
      if ((v129 & 2) != 0)
      {
        v131 = *(a2 - 4);
      }

      else
      {
        v131 = &v130[-((v129 >> 2) & 0xF)];
      }

      v132 = *v131;
      if (*v131 && *v132 == 6 && (llvm::DIExpression::isConstant(v132) & 0x1FFFFFFFFLL) == 0x100000000)
      {
      }

      else
      {
      }

      if ((*v130 & 2) != 0)
      {
        v133 = *(a2 - 4);
      }

      else
      {
        v133 = &v130[-((*v130 >> 2) & 0xFLL)];
      }

      v134 = v133[1];
      if (v134 && *v134 == 6 && (llvm::DIExpression::isConstant(v134) & 0x1FFFFFFFFLL) == 0x100000000)
      {
      }

      else
      {
      }

      if ((*v130 & 2) != 0)
      {
        v135 = *(a2 - 4);
      }

      else
      {
        v135 = &v130[-((*v130 >> 2) & 0xFLL)];
      }

      v136 = v135[2];
      if (v136 && *v136 == 6 && (llvm::DIExpression::isConstant(v136) & 0x1FFFFFFFFLL) == 0x100000000)
      {
      }

      else
      {
      }

      if ((*v130 & 2) != 0)
      {
        v137 = *(a2 - 4);
      }

      else
      {
        v137 = &v130[-((*v130 >> 2) & 0xFLL)];
      }

      v138 = v137[3];
      if (v138 && *v138 == 6 && (llvm::DIExpression::isConstant(v138) & 0x1FFFFFFFFLL) == 0x100000000)
      {
        v139 = *(*(v138 + 2) + 8);
LABEL_826:
      }

      else
      {
        v48 = "stride";
        v49 = 6;
        v47 = v138;
LABEL_680:
        v478 = 1;
LABEL_681:
      }

      goto LABEL_769;
    default:
      v10 = *(v6 + 4);
      if (*(v6 + 3) - v10 > 1uLL)
      {
        *v10 = 31521;
        *(v6 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v6, "!{", 2uLL);
      }

      v116 = (a2 - 16);
      v115 = *(a2 - 2);
      if ((v115 & 2) != 0)
      {
        v117 = *(a2 - 6);
      }

      else
      {
        v117 = (v115 >> 6) & 0xF;
      }

      if (!v117)
      {
        goto LABEL_171;
      }

      v118 = 0;
      v119 = 8 * v117 - 8;
      if ((v115 & 2) == 0)
      {
        goto LABEL_159;
      }

LABEL_158:
      for (i = *(a2 - 4); ; i = &v116[-((v115 >> 2) & 0xF)])
      {
        v122 = i[v118 / 8];
        if (v122)
        {
          if (*v122 - 3 >= 0xFFFFFFFE)
          {
            v124 = *(v122 + 16);
            v126 = *(v6 + 4);
            if (v126 >= *(v6 + 3))
            {
              llvm::raw_ostream::write(v6, 32);
            }

            else
            {
              *(v6 + 4) = v126 + 1;
              *v126 = 32;
            }

            WriteAsOperandInternal(v6, v124, a3, v125);
          }

          else
          {
            WriteAsOperandInternal(v6, v122, a3, a4);
            (**a3)(a3, v122);
          }
        }

        else
        {
          v123 = *(v6 + 4);
          if (*(v6 + 3) - v123 > 3uLL)
          {
            *v123 = 1819047278;
            *(v6 + 4) += 4;
          }

          else
          {
            llvm::raw_ostream::write(v6, "null", 4uLL);
          }
        }

        if (v119 == v118)
        {
          break;
        }

        v120 = *(v6 + 4);
        if (*(v6 + 3) - v120 > 1uLL)
        {
          *v120 = 8236;
          *(v6 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v6, ", ", 2uLL);
        }

        v115 = *v116;
        v118 += 8;
        if ((*v116 & 2) != 0)
        {
          goto LABEL_158;
        }

LABEL_159:
        ;
      }

LABEL_171:
      v127 = *(v6 + 4);
      if (*(v6 + 3) != v127)
      {
        v128 = 125;
        goto LABEL_771;
      }

      v19 = "}";
      v20 = v6;
      v21 = 1;
LABEL_361:

      llvm::raw_ostream::write(v20, v19, v21);
      return;
  }
}

llvm::raw_ostream *anonymous namespace::MDFieldPrinter::printTag(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*(a1 + 8) == 1)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    v4 = llvm::raw_ostream::operator<<(v4, *(a1 + 16));
  }

  v5 = *(v4 + 4);
  if ((*(v4 + 3) - v5) > 4)
  {
    *(v5 + 4) = 32;
    *v5 = 979853684;
    *(v4 + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(v4, "tag: ", 5uLL);
  }

  v7 = llvm::dwarf::TagString(*(a2 + 2));
  v8 = *a1;
  if (v6)
  {

    return llvm::raw_ostream::operator<<(v8, v7, v6);
  }

  else
  {
    v10 = *(a2 + 2);

    return llvm::write_integer(v8, v10, 0, 0);
  }
}

llvm::raw_ostream *anonymous namespace::MDFieldPrinter::printString(llvm::raw_ostream *result, const void *a2, size_t a3, llvm::raw_ostream *a4, uint64_t a5, int a6)
{
  v10 = result;
  if (!a6 || a5)
  {
    v11 = *result;
    if (*(v10 + 8) == 1)
    {
      *(v10 + 8) = 0;
    }

    else
    {
      v11 = llvm::raw_ostream::operator<<(v11, *(v10 + 2));
    }

    v12 = llvm::raw_ostream::operator<<(v11, a2, a3);
    v13 = *(v12 + 4);
    if ((*(v12 + 3) - v13) > 2)
    {
      *(v13 + 2) = 34;
      *v13 = 8250;
      *(v12 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v12, ": ", 3uLL);
    }

    llvm::printEscapedString(a4, a5, *v10);
    result = *v10;
    v14 = *(*v10 + 32);
    if (*(*v10 + 24) == v14)
    {

      return llvm::raw_ostream::write(result, "", 1uLL);
    }

    else
    {
      *v14 = 34;
      ++*(result + 4);
    }
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::MDFieldPrinter::printInt<long long>(uint64_t a1, const void *a2, size_t __n, int64_t a4)
{
  v8 = *a1;
  if (*(a1 + 8) == 1)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    v8 = llvm::raw_ostream::operator<<(v8, *(a1 + 16));
  }

  v9 = llvm::raw_ostream::operator<<(v8, a2, __n);
  v10 = *(v9 + 4);
  if (*(v9 + 3) - v10 > 1uLL)
  {
    *v10 = 8250;
    *(v9 + 4) += 2;
  }

  else
  {
    v9 = llvm::raw_ostream::write(v9, ": ", 2uLL);
  }

  return llvm::write_integer(v9, a4, 0, 0);
}

void anonymous namespace::AsmWriterContext::getEmpty(_anonymous_namespace_::AsmWriterContext *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_41, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_41))
  {
    qword_2815AA830 = &unk_2883F1008;
    unk_2815AA838 = 0;
    qword_2815AA840 = 0;
    unk_2815AA848 = 0;

    __cxa_guard_release(&_MergedGlobals_41);
  }
}

llvm::raw_ostream **anonymous namespace::MDFieldPrinter::printInt<unsigned long long>(llvm::raw_ostream **result, const void *a2, size_t __n, unint64_t a4)
{
  if (a4)
  {
    v7 = result;
    v8 = *result;
    if (*(v7 + 8) == 1)
    {
      *(v7 + 8) = 0;
    }

    else
    {
      v8 = llvm::raw_ostream::operator<<(v8, v7[2]);
    }

    v9 = llvm::raw_ostream::operator<<(v8, a2, __n);
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 > 1uLL)
    {
      *v10 = 8250;
      *(v9 + 4) += 2;
    }

    else
    {
      v9 = llvm::raw_ostream::write(v9, ": ", 2uLL);
    }

    return write_unsigned<unsigned long>(v9, a4, 0, 0, 0);
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::MDFieldPrinter::printDwarfEnum<unsigned int,llvm::StringRef (*)(unsigned int)>(llvm::raw_ostream *result, const void *a2, size_t __n, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a4)
  {
    v9 = result;
    v10 = *result;
    if (*(v9 + 8) == 1)
    {
      *(v9 + 8) = 0;
    }

    else
    {
      v10 = llvm::raw_ostream::operator<<(v10, *(v9 + 2));
    }

    v11 = llvm::raw_ostream::operator<<(v10, a2, __n);
    v12 = *(v11 + 4);
    if (*(v11 + 3) - v12 > 1uLL)
    {
      *v12 = 8250;
      *(v11 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v11, ": ", 2uLL);
    }

    v14 = a5(a4);
    v15 = *v9;
    if (v13)
    {

      return llvm::raw_ostream::operator<<(v15, v14, v13);
    }

    else
    {

      return write_unsigned<unsigned long>(v15, a4, 0, 0, 0);
    }
  }

  return result;
}

void anonymous namespace::MDFieldPrinter::printDIFlags(uint64_t a1, uint64_t a2)
{
  v18[4] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *a1;
    if (*(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
    }

    else
    {
      v4 = llvm::raw_ostream::operator<<(v4, *(a1 + 16));
    }

    v5 = *(v4 + 4);
    if ((*(v4 + 3) - v5) > 4)
    {
      *(v5 + 4) = 115;
      *v5 = 1734437990;
      v6 = (*(v4 + 4) + 5);
      *(v4 + 4) = v6;
    }

    else
    {
      v4 = llvm::raw_ostream::write(v4, "flags", 5uLL);
      v6 = *(v4 + 4);
    }

    if (*(v4 + 3) - v6 > 1uLL)
    {
      *v6 = 8250;
      *(v4 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v4, ": ", 2uLL);
    }

    v16 = v18;
    v17 = 0x800000000;
    v7 = llvm::DINode::splitFlags(a2, &v16);
    if (v17)
    {
      v8 = v16;
      v9 = 4 * v17;
      v10 = 1;
      do
      {
        FlagString = llvm::DINode::getFlagString(*v8);
        v13 = v12;
        v14 = *a1;
        if ((v10 & 1) == 0)
        {
          v14 = llvm::raw_ostream::operator<<(v14, " | ", 3uLL);
        }

        llvm::raw_ostream::operator<<(v14, FlagString, v13);
        v10 = 0;
        ++v8;
        v9 -= 4;
      }

      while (v9);
      if (!v7 && v17)
      {
        goto LABEL_21;
      }

      v15 = llvm::raw_ostream::operator<<(*a1, " | ", 3uLL);
    }

    else
    {
      v15 = *a1;
    }

    write_unsigned<unsigned long>(v15, v7, 0, 0, 0);
LABEL_21:
    if (v16 != v18)
    {
      free(v16);
    }
  }
}

uint64_t llvm::DISubprogram::getTargetFuncName(llvm::DISubprogram *this)
{
  v1 = *(this - 2);
  if ((v1 & 2) != 0)
  {
    if (*(this - 6) <= 0xCu)
    {
      return 0;
    }

    v2 = *(this - 4);
  }

  else
  {
    if ((*(this - 2) & 0x3C0uLL) <= 0x300)
    {
      return 0;
    }

    v2 = this - 8 * ((v1 >> 2) & 0xF) - 16;
  }

  v3 = *(v2 + 12);
  if (v3)
  {
    return *(v3 + 8) + 24;
  }

  return 0;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::StructType *,unsigned int,llvm::DenseMapInfo<llvm::StructType *,void>,llvm::detail::DenseMapPair<llvm::StructType *,unsigned int>>,llvm::StructType *,unsigned int,llvm::DenseMapInfo<llvm::StructType *,void>,llvm::detail::DenseMapPair<llvm::StructType *,unsigned int>>::find(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a2)
  {
    return (a1 + 16 * a2);
  }

  LODWORD(v3) = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
  v4 = (a1 + 16 * v3);
  v5 = *v4;
  if (*v4 != a3)
  {
    v6 = 1;
    while (v5 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (a2 - 1);
      v5 = *(a1 + 16 * v3);
      if (v5 == a3)
      {
        return (a1 + 16 * v3);
      }
    }

    return (a1 + 16 * a2);
  }

  return v4;
}

llvm::raw_ostream *WriteOptimizationInfo(llvm::raw_ostream *a1, const llvm::User *a2)
{
  result = llvm::FPMathOperator::classof(a2);
  if (a2 && result)
  {
    v5 = *(a2 + 17) >> 1;
    if (v5 == 127)
    {
      v5 = -1;
    }

    v21 = v5;
    result = llvm::FastMathFlags::print(&v21, a1);
  }

  v6 = *(a2 + 16);
  if (v6 >= 0x1C)
  {
    HIDWORD(v8) = v6 - 41;
    LODWORD(v8) = v6 - 41;
    v7 = v8 >> 1;
    v9 = v7 > 6;
    v10 = (1 << v7) & 0x47;
    if (!v9 && v10 != 0)
    {
      goto LABEL_21;
    }

    if (v6 > 0x3E)
    {
      return result;
    }

    if (((1 << v6) & 0xC1800000000000) == 0)
    {
      if (v6 != 62)
      {
        return result;
      }

LABEL_37:
      if ((*(a2 + 17) & 2) == 0)
      {
        return result;
      }

      v19 = " inbounds";
      v20 = 9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v6 != 5)
  {
    return result;
  }

  v12 = *(a2 + 9);
  HIDWORD(v14) = v12 - 13;
  LODWORD(v14) = v12 - 13;
  v13 = v14 >> 1;
  v9 = v13 > 6;
  v15 = (1 << v13) & 0x47;
  if (v9 || v15 == 0)
  {
    if (v12 > 0x22)
    {
      return result;
    }

    if (((1 << v12) & 0xC180000) == 0)
    {
      if (v12 != 34)
      {
        return result;
      }

      goto LABEL_37;
    }

LABEL_34:
    if ((*(a2 + 17) & 2) == 0)
    {
      return result;
    }

    v19 = " exact";
    v20 = 6;
    goto LABEL_29;
  }

LABEL_21:
  v17 = *(a2 + 17);
  if ((v17 & 2) != 0)
  {
    v18 = *(a1 + 4);
    if (*(a1 + 3) - v18 > 3uLL)
    {
      *v18 = 2004184608;
      *(a1 + 4) += 4;
    }

    else
    {
      result = llvm::raw_ostream::write(a1, " nuw", 4uLL);
    }

    v17 = *(a2 + 17);
  }

  if ((v17 & 4) != 0)
  {
    v19 = " nsw";
    v20 = 4;
LABEL_29:

    return llvm::raw_ostream::operator<<(a1, v19, v20);
  }

  return result;
}

llvm::raw_ostream *maybePrintCallAddrSpace(llvm::raw_ostream *result, const llvm::Instruction *a2, llvm::raw_ostream *this)
{
  if (!result)
  {
    v7 = *(this + 4);
    if (*(this + 3) - v7 > 0x17uLL)
    {
      qmemcpy(v7, " <cannot get addrspace!>", 24);
      v12 = *(this + 4) + 24;
      goto LABEL_19;
    }

    v8 = " <cannot get addrspace!>";
    v9 = this;
    v10 = 24;
    goto LABEL_15;
  }

  v4 = *(*result + 8);
  if ((v4 & 0xFE) == 0x12)
  {
    v4 = *(**(*result + 16) + 8);
  }

  if (v4 > 0xFF || (result = getModuleFromVal(a2)) == 0 || *(result + 67))
  {
    v5 = v4 >> 8;
    v6 = *(this + 4);
    if ((*(this + 3) - v6) > 0xA)
    {
      *(v6 + 7) = 677733217;
      *v6 = *" addrspace(";
      *(this + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(this, " addrspace(", 0xBuLL);
    }

    result = write_unsigned<unsigned long>(this, v5, 0, 0, 0);
    v11 = *(this + 4);
    if (*(this + 3) != v11)
    {
      *v11 = 41;
      v12 = *(this + 4) + 1;
LABEL_19:
      *(this + 4) = v12;
      return result;
    }

    v8 = ")";
    v9 = this;
    v10 = 1;
LABEL_15:

    return llvm::raw_ostream::write(v9, v8, v10);
  }

  return result;
}

void anonymous namespace::AssemblyWriter::writeParamOperand(uint64_t ***this, llvm::Type **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      v7 = *this;
      v8 = (*this)[4];
      if (v8 >= (*this)[3])
      {
        llvm::raw_ostream::write(v7, 32);
      }

      else
      {
        v7[4] = (v8 + 1);
        *v8 = 32;
      }
    }

    v11 = *this;
    v12 = (*this)[4];
    if (v12 >= (*this)[3])
    {
      llvm::raw_ostream::write(v11, 32);
    }

    else
    {
      v11[4] = (v12 + 1);
      *v12 = 32;
    }

    v13 = this[4];
    v14 = *this;
    v15 = this[1];
    v16[0] = &unk_2883F1008;
    v16[1] = (this + 5);
    v16[2] = v13;
    v16[3] = v15;
    WriteAsOperandInternal(v14, a2, v16, v6);
  }

  else
  {
    v9 = *this;
    v10 = (*this)[4];
    if (((*this)[3] - v10) > 0xE)
    {
      qmemcpy(v10, "<null operand!>", 15);
      v9[4] = (v9[4] + 15);
    }

    else
    {

      llvm::raw_ostream::write(v9, "<null operand!>", 0xFuLL);
    }
  }
}

llvm::raw_ostream *anonymous namespace::AssemblyWriter::writeOperandBundles(llvm::raw_ostream *this, const llvm::CallBase *a2)
{
  v4 = *(a2 + 5);
  if (v4 < 0)
  {
    v42[14] = v2;
    v42[15] = v3;
    if ((*(a2 - 4 * (v4 & 0x7FFFFFF) - 1) & 0xFFFFFFFF0) != 0)
    {
      v6 = this;
      v7 = *this;
      v8 = *(v7 + 4);
      if ((*(v7 + 3) - v8) > 2)
      {
        *(v8 + 2) = 32;
        *v8 = 23328;
        *(v7 + 4) += 3;
      }

      else
      {
        llvm::raw_ostream::write(v7, " [ ", 3uLL);
      }

      v9 = *(a2 + 5);
      if (v9 < 0)
      {
        v10 = *(a2 - 4 * (v9 & 0x7FFFFFF) - 1);
        if ((v10 & 0xFFFFFFFF0) != 0)
        {
          v11 = 0;
          v41 = (v10 >> 4);
          v12 = 1;
          do
          {
            v13 = *(a2 + 5) & 0x7FFFFFF;
            v14 = a2 + 16 * v11 - *(a2 - 4 * v13 - 1) + -32 * v13 - 8;
            v15 = *(a2 + 16 * v11 - *(a2 - 4 * v13 - 1) + -32 * v13);
            v16 = *(v14 + 3);
            v17 = *v14;
            if ((v12 & 1) == 0)
            {
              v18 = *v6;
              v19 = *(*v6 + 32);
              if (*(*v6 + 24) - v19 > 1uLL)
              {
                *v19 = 8236;
                *(v18 + 4) += 2;
              }

              else
              {
                llvm::raw_ostream::write(v18, ", ", 2uLL);
              }
            }

            v20 = *v6;
            v21 = *(*v6 + 32);
            if (v21 >= *(*v6 + 24))
            {
              llvm::raw_ostream::write(v20, 34);
            }

            else
            {
              *(v20 + 4) = v21 + 1;
              *v21 = 34;
            }

            llvm::printEscapedString((v17 + 2), *v17, *v6);
            v22 = *v6;
            v23 = *(*v6 + 32);
            if (v23 >= *(*v6 + 24))
            {
              llvm::raw_ostream::write(v22, 34);
            }

            else
            {
              *(v22 + 4) = v23 + 1;
              *v23 = 34;
            }

            v24 = *v6;
            v25 = *(*v6 + 32);
            if (v25 >= *(*v6 + 24))
            {
              llvm::raw_ostream::write(v24, 40);
            }

            else
            {
              *(v24 + 4) = v25 + 1;
              *v25 = 40;
            }

            v26 = *(v6 + 4);
            v27 = *(v6 + 1);
            v42[0] = &unk_2883F1008;
            v42[1] = (v6 + 40);
            v42[2] = v26;
            v42[3] = v27;
            if (v15 != v16)
            {
              v28 = (a2 + 32 * v15 + -32 * v13);
              v29 = 1;
              v30 = 32 * v16 - 32 * v15;
              do
              {
                if ((v29 & 1) == 0)
                {
                  v31 = *v6;
                  v32 = *(*v6 + 32);
                  if (*(*v6 + 24) - v32 > 1uLL)
                  {
                    *v32 = 8236;
                    *(v31 + 4) += 2;
                  }

                  else
                  {
                    llvm::raw_ostream::write(v31, ", ", 2uLL);
                  }
                }

                if (*v28)
                {
                  v34 = *v6;
                  v35 = *(*v6 + 32);
                  if (*(*v6 + 24) == v35)
                  {
                    llvm::raw_ostream::write(v34, " ", 1uLL);
                  }

                  else
                  {
                    *v35 = 32;
                    ++*(v34 + 4);
                  }

                  WriteAsOperandInternal(*v6, *v28, v42, v33);
                }

                else
                {
                  v36 = *v6;
                  v37 = *(*v6 + 32);
                  if (*(*v6 + 24) - v37 > 0x15uLL)
                  {
                    qmemcpy(v37, "<null operand bundle!>", 22);
                    *(v36 + 4) += 22;
                  }

                  else
                  {
                    llvm::raw_ostream::write(v36, "<null operand bundle!>", 0x16uLL);
                  }
                }

                v29 = 0;
                v28 += 4;
                v30 -= 32;
              }

              while (v30);
            }

            v38 = *v6;
            v39 = *(*v6 + 32);
            if (v39 >= *(*v6 + 24))
            {
              llvm::raw_ostream::write(v38, 41);
            }

            else
            {
              *(v38 + 4) = v39 + 1;
              *v39 = 41;
            }

            v12 = 0;
            ++v11;
          }

          while (v11 != v41);
        }
      }

      this = *v6;
      v40 = *(*v6 + 32);
      if (*(*v6 + 24) - v40 > 1uLL)
      {
        *v40 = 23840;
        *(this + 4) += 2;
      }

      else
      {
        return llvm::raw_ostream::write(this, " ]", 2uLL);
      }
    }
  }

  return this;
}

llvm::raw_ostream *anonymous namespace::AssemblyWriter::writeAtomic(llvm::raw_ostream *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v5 = result;
    v6 = *v5;
    v7 = *(*v5 + 32);
    if (*(*v5 + 24) == v7)
    {
      v6 = llvm::raw_ostream::write(v6, " ", 1uLL);
    }

    else
    {
      *v7 = 32;
      ++*(v6 + 4);
    }

    v8 = llvm::toIRString(llvm::AtomicOrdering)::names[a3];

    return llvm::raw_ostream::operator<<(v6, v8);
  }

  return result;
}

llvm::raw_ostream *PrintShuffleMask(llvm::raw_ostream *this, uint64_t a2, int *a3, unint64_t a4)
{
  v8 = *(this + 4);
  if ((*(this + 3) - v8) > 2)
  {
    *(v8 + 2) = 60;
    *v8 = 8236;
    *(this + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(this, ", <", 3uLL);
  }

  if (*(a2 + 8) == 19)
  {
    v9 = *(this + 4);
    if ((*(this + 3) - v9) > 8)
    {
      *(v9 + 8) = 32;
      *v9 = *"vscale x ";
      *(this + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(this, "vscale x ", 9uLL);
    }
  }

  write_unsigned<unsigned long>(this, a4, 0, 0, 0);
  v10 = *(this + 4);
  if (*(this + 3) - v10 <= 7uLL)
  {
    llvm::raw_ostream::write(this, " x i32> ", 8uLL);
    if (a4)
    {
      goto LABEL_10;
    }

LABEL_15:
    v12 = "zeroinitializer";
    v13 = 15;
    goto LABEL_37;
  }

  *v10 = 0x203E323369207820;
  *(this + 4) += 8;
  if (!a4)
  {
    goto LABEL_15;
  }

LABEL_10:
  v11 = 4 * a4;
  v12 = "zeroinitializer";
  v13 = 15;
  v14 = v11;
  v15 = a3;
  while (!*v15)
  {
    ++v15;
    v14 -= 4;
    if (!v14)
    {
      goto LABEL_37;
    }
  }

  v13 = 5;
  v16 = v11;
  v17 = a3;
  v12 = "undef";
  while (*v17 == -1)
  {
    ++v17;
    v16 -= 4;
    if (!v16)
    {
      goto LABEL_37;
    }
  }

  v18 = *(this + 4);
  if (*(this + 3) == v18)
  {
    llvm::raw_ostream::write(this, "<", 1uLL);
  }

  else
  {
    *v18 = 60;
    ++*(this + 4);
  }

  v13 = 1;
  v12 = ">";
  v19 = 1;
  do
  {
    v20 = *a3;
    v21 = *(this + 4);
    if ((v19 & 1) == 0)
    {
      if (*(this + 3) - v21 > 1uLL)
      {
        *v21 = 8236;
        v21 = (*(this + 4) + 2);
        *(this + 4) = v21;
      }

      else
      {
        llvm::raw_ostream::write(this, ", ", 2uLL);
        v21 = *(this + 4);
      }
    }

    if (*(this + 3) - v21 > 3uLL)
    {
      *v21 = 540160873;
      *(this + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(this, "i32 ", 4uLL);
    }

    if (v20 == -1)
    {
      v22 = *(this + 4);
      if ((*(this + 3) - v22) > 4)
      {
        *(v22 + 4) = 102;
        *v22 = 1701080693;
        *(this + 4) += 5;
      }

      else
      {
        llvm::raw_ostream::write(this, "undef", 5uLL);
      }
    }

    else
    {
      llvm::write_integer(this, v20, 0, 0);
    }

    v19 = 0;
    ++a3;
    v11 -= 4;
  }

  while (v11);
LABEL_37:

  return llvm::raw_ostream::operator<<(this, v12, v13);
}

uint64_t **anonymous namespace::AssemblyWriter::printInfoComment(uint64_t ***this, const llvm::Value *a2)
{
  if (llvm::GCRelocateInst::classof(a2))
  {
    v4 = *this;
    v5 = (*this)[4];
    if (((*this)[3] - v5) > 3)
    {
      *v5 = 673200928;
      v4[4] = (v4[4] + 4);
    }

    else
    {
      llvm::raw_ostream::write(v4, " ; (", 4uLL);
    }

    BasePtr = llvm::GCRelocateInst::getBasePtr(a2);
    v8 = *this;
    v9 = (*this)[4];
    if (((*this)[3] - v9) > 1)
    {
      *v9 = 8236;
      v8[4] = (v8[4] + 2);
    }

    else
    {
      llvm::raw_ostream::write(v8, ", ", 2uLL);
    }

    DerivedPtr = llvm::GCRelocateInst::getDerivedPtr(a2);
    v12 = *this;
    v13 = (*this)[4];
    if ((*this)[3] == v13)
    {
      llvm::raw_ostream::write(v12, ")", 1uLL);
    }

    else
    {
      *v13 = 41;
      v12[4] = (v12[4] + 1);
    }
  }

  result = this[28];
  if (result)
  {
    v15 = (*result)[6];

    return v15();
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::AssemblyWriter::writeSyncScope(llvm::raw_ostream *result, uint64_t a2, unsigned int a3)
{
  if (a3 != 1)
  {
    v4 = result;
    if (!*(result + 116))
    {
      llvm::LLVMContextImpl::getSyncScopeNames(a2, result + 57);
    }

    v5 = *v4;
    v6 = *(*v4 + 4);
    if ((*(*v4 + 3) - v6) > 0xB)
    {
      *(v6 + 8) = 573072752;
      *v6 = *" syncscope(";
      *(v5 + 4) += 12;
    }

    else
    {
      llvm::raw_ostream::write(v5, " syncscope(", 0xCuLL);
    }

    v7 = v4[57] + 16 * a3;
    llvm::printEscapedString(*v7, *(v7 + 8), *v4);
    result = *v4;
    v8 = *(*v4 + 4);
    if (*(*v4 + 3) - v8 > 1uLL)
    {
      *v8 = 10530;
      *(result + 4) += 2;
    }

    else
    {

      return llvm::raw_ostream::write(result, ")", 2uLL);
    }
  }

  return result;
}

llvm::raw_ostream *PrintThreadLocalModel(llvm::raw_ostream *result, llvm::raw_ostream *this)
{
  if (result > 2)
  {
    if (result == 3)
    {
      v2 = "thread_local(initialexec) ";
      v3 = 26;
      return llvm::raw_ostream::operator<<(this, v2, v3);
    }

    if (result == 4)
    {
      v2 = "thread_local(localexec) ";
      v3 = 24;
      return llvm::raw_ostream::operator<<(this, v2, v3);
    }
  }

  else
  {
    if (result == 1)
    {
      v2 = "thread_local ";
      v3 = 13;
      return llvm::raw_ostream::operator<<(this, v2, v3);
    }

    if (result == 2)
    {
      v2 = "thread_local(localdynamic) ";
      v3 = 27;
      return llvm::raw_ostream::operator<<(this, v2, v3);
    }
  }

  return result;
}

void anonymous namespace::MDTreeAsmWriterContext::onWriteMetadataAsOperand(uint64_t a1, char *a2)
{
  llvm::SmallPtrSetImpl<llvm::Value *>::insert((a1 + 184), a2, &v26);
  if (v28 == 1)
  {
    __p[0] = 0;
    __p[1] = 0;
    v25 = 0;
    v16 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 1;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v15 = &unk_2883EB8F0;
    v23 = __p;
    llvm::raw_ostream::SetUnbuffered(&v15);
    v4 = (*(a1 + 32) + 1);
    *(a1 + 32) = v4;
    v26 = v4;
    v27 = "";
    v5 = *(a1 + 48);
    if (v5 >= *(a1 + 52))
    {
      llvm::SmallVectorTemplateBase<std::pair<unsigned int,std::string>,false>::growAndEmplaceBack<std::pair<unsigned int,char const*>>((a1 + 40), &v26);
      v7 = *(a1 + 48) - 1;
    }

    else
    {
      v6 = *(a1 + 40) + 32 * v5;
      *v6 = v4;
      std::string::basic_string[abi:nn200100]<0>((v6 + 8), "");
      v7 = *(a1 + 48);
      *(a1 + 48) = v7 + 1;
    }

    LODWORD(v27) = 0;
    v31 = 0;
    v32 = 0;
    v33 = 1;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v26 = &unk_2883EAF50;
    v34 = 0;
    v35 = 0;
    v36 = &v38;
    v37 = xmmword_2750C3CD0;
    llvm::formatted_raw_ostream::setStream(&v26, &v15);
    WriteAsOperandInternal(&v26, a2, a1, v8);
    if (llvm::MDNode::classof(a2))
    {
      v10 = *a2;
      if (v10 != 6 && v10 != 33)
      {
        v11 = v30;
        if ((v29 - v30) > 2)
        {
          *(v30 + 2) = 32;
          *v11 = 15648;
          v30 += 3;
        }

        else
        {
          llvm::raw_ostream::write(&v26, " = ", 3uLL);
        }

        WriteMDNodeBodyInternal(&v26, a2, a1, v9);
      }
    }

    llvm::formatted_raw_ostream::~formatted_raw_ostream(&v26);
    v12 = v23;
    v13 = *(a1 + 40) + 32 * v7;
    if (*(v13 + 31) < 0)
    {
      operator delete(*(v13 + 8));
    }

    v14 = *v12;
    *(v13 + 24) = v12[2];
    *(v13 + 8) = v14;
    *(v12 + 23) = 0;
    *v12 = 0;
    --*(a1 + 32);
    llvm::raw_ostream::~raw_ostream(&v15);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void anonymous namespace::MDTreeAsmWriterContext::~MDTreeAsmWriterContext(_anonymous_namespace_::MDTreeAsmWriterContext *this)
{
  *this = &unk_2883F1030;
  v2 = *(this + 12);
  if (v2)
  {
    v3 = *(this + 5);
    v4 = v3 + 32 * v2;
    do
    {
      v5 = *(this + 31);
      v6 = *(v5 + 4);
      if (*(v5 + 3) == v6)
      {
        llvm::raw_ostream::write(v5, "\n", 1uLL);
      }

      else
      {
        *v6 = 10;
        ++*(v5 + 4);
      }

      v7 = llvm::raw_ostream::indent(*(this + 31), (2 * *v3));
      v10 = *(v3 + 8);
      v9 = v3 + 8;
      v8 = v10;
      v11 = *(v9 + 23);
      if (v11 >= 0)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= 0)
      {
        v13 = *(v9 + 23);
      }

      else
      {
        v13 = *(v9 + 8);
      }

      llvm::raw_ostream::write(v7, v12, v13);
      v3 = v9 + 24;
    }

    while (v3 != v4);
  }

  v14 = *(this + 24);
  if (v14 != *(this + 23))
  {
    free(v14);
  }

  v15 = *(this + 5);
  v16 = *(this + 12);
  if (v16)
  {
    v17 = &v15[32 * v16 - 24];
    v18 = -32 * v16;
    do
    {
      if (*(v17 + 23) < 0)
      {
        operator delete(*v17);
      }

      v17 -= 32;
      v18 += 32;
    }

    while (v18);
    v15 = *(this + 5);
  }

  if (v15 != this + 56)
  {
    free(v15);
  }
}

{

  JUMPOUT(0x277C69E40);
}

void llvm::SmallVectorTemplateBase<std::pair<unsigned int,std::string>,false>::growAndEmplaceBack<std::pair<unsigned int,char const*>>(char **a1, uint64_t a2)
{
  v16 = 0;
  v4 = (a1 + 2);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, 0, 32, &v16);
  v6 = &v5[32 * *(a1 + 2)];
  *v6 = *a2;
  std::string::basic_string[abi:nn200100]<0>(v6 + 1, *(a2 + 8));
  v7 = *a1;
  v8 = *(a1 + 2);
  if (v8)
  {
    v9 = &v7[32 * v8];
    v10 = v5;
    do
    {
      *v10 = *v7;
      v11 = *(v7 + 8);
      *(v10 + 3) = *(v7 + 3);
      *(v10 + 8) = v11;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = 0;
      v10 += 32;
      v7 += 32;
    }

    while (v7 != v9);
    v7 = *a1;
    v12 = *(a1 + 2);
    if (v12)
    {
      v13 = &v7[32 * v12 - 24];
      v14 = -32 * v12;
      do
      {
        if (*(v13 + 23) < 0)
        {
          operator delete(*v13);
        }

        v13 -= 32;
        v14 += 32;
      }

      while (v14);
      v7 = *a1;
    }
  }

  v15 = v16;
  if (v7 != v4)
  {
    free(v7);
  }

  *a1 = v5;
  ++*(a1 + 2);
  *(a1 + 3) = v15;
}

uint64_t std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Module const*,BOOL)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Function const*,BOOL)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Module const*,BOOL)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Function const*,BOOL)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Module const*,BOOL)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void *std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Function const*,BOOL)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::AttributeSet,unsigned int,llvm::DenseMapInfo<llvm::AttributeSet,void>,llvm::detail::DenseMapPair<llvm::AttributeSet,unsigned int>>,llvm::AttributeSet,unsigned int,llvm::DenseMapInfo<llvm::AttributeSet,void>,llvm::detail::DenseMapPair<llvm::AttributeSet,unsigned int>>::LookupBucketFor<llvm::AttributeSet>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

char *llvm::DenseMap<llvm::AttributeSet,unsigned int,llvm::DenseMapInfo<llvm::AttributeSet,void>,llvm::detail::DenseMapPair<llvm::AttributeSet,unsigned int>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4;
        }

        if (v17.i8[4])
        {
          *v16 = -4;
        }

        v11 += 2;
        v16 += 32;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 4) != 0xFFFFFFFFFFFFFFFCLL)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::AttributeSet,unsigned int,llvm::DenseMapInfo<llvm::AttributeSet,void>,llvm::detail::DenseMapPair<llvm::AttributeSet,unsigned int>>,llvm::AttributeSet,unsigned int,llvm::DenseMapInfo<llvm::AttributeSet,void>,llvm::detail::DenseMapPair<llvm::AttributeSet,unsigned int>>::LookupBucketFor<llvm::AttributeSet>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          *(v21 + 2) = *(v19 + 8);
          ++*(a1 + 8);
        }

        v19 += 16;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_2750C1210)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4;
      }

      if (v29.i8[4])
      {
        *v28 = -4;
      }

      v23 += 2;
      v28 += 32;
    }

    while (v26 != v23);
  }

  return result;
}

unint64_t llvm::Attribute::get(uint64_t *a1, int a2, uint64_t a3)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v5 = a2 - 75;
  v6 = *a1;
  v12[0] = v13;
  v12[1] = 0x2000000000;
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v12, a2);
  if (v5 > 9)
  {
    v11 = 0;
    v7 = v6 + 264;
    NodeOrInsertPos = llvm::FoldingSetBase::FindNodeOrInsertPos(v6 + 264, v12, &v11, llvm::FoldingSet<llvm::AttributeImpl>::getFoldingSetInfo(void)::Info);
    if (!NodeOrInsertPos)
    {
      v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v6 + 2072), 16, 3);
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 12) = a2;
      goto LABEL_7;
    }

LABEL_5:
    v9 = NodeOrInsertPos;
    goto LABEL_8;
  }

  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v12, a3);
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v12, SHIDWORD(a3));
  v11 = 0;
  v7 = v6 + 264;
  NodeOrInsertPos = llvm::FoldingSetBase::FindNodeOrInsertPos(v6 + 264, v12, &v11, llvm::FoldingSet<llvm::AttributeImpl>::getFoldingSetInfo(void)::Info);
  if (NodeOrInsertPos)
  {
    goto LABEL_5;
  }

  v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v6 + 2072), 24, 3);
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v9 + 12) = a2;
  *(v9 + 16) = a3;
LABEL_7:
  llvm::FoldingSetBase::InsertNode(v7, v9, v11, llvm::FoldingSet<llvm::AttributeImpl>::getFoldingSetInfo(void)::Info);
LABEL_8:
  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  return v9;
}

{
  v10[16] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v9[0] = v10;
  v9[1] = 0x2000000000;
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v9, a2);
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v9, a3);
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v9, SHIDWORD(a3));
  v8 = 0;
  NodeOrInsertPos = llvm::FoldingSetBase::FindNodeOrInsertPos(v5 + 264, v9, &v8, llvm::FoldingSet<llvm::AttributeImpl>::getFoldingSetInfo(void)::Info);
  if (!NodeOrInsertPos)
  {
    NodeOrInsertPos = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v5 + 2072), 24, 3);
    *NodeOrInsertPos = 0;
    *(NodeOrInsertPos + 8) = 3;
    *(NodeOrInsertPos + 12) = a2;
    *(NodeOrInsertPos + 16) = a3;
    llvm::FoldingSetBase::InsertNode(v5 + 264, NodeOrInsertPos, v8, llvm::FoldingSet<llvm::AttributeImpl>::getFoldingSetInfo(void)::Info);
  }

  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  return NodeOrInsertPos;
}

uint64_t *llvm::Attribute::get(uint64_t *a1, unsigned __int8 *a2, size_t a3, unsigned __int8 *a4, size_t a5)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v13[0] = v14;
  v13[1] = 0x2000000000;
  llvm::FoldingSetNodeID::AddString(v13, a2, a3);
  if (a5)
  {
    llvm::FoldingSetNodeID::AddString(v13, a4, a5);
  }

  v12 = 0;
  NodeOrInsertPos = llvm::FoldingSetBase::FindNodeOrInsertPos(v9 + 264, v13, &v12, llvm::FoldingSet<llvm::AttributeImpl>::getFoldingSetInfo(void)::Info);
  if (!NodeOrInsertPos)
  {
    NodeOrInsertPos = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v9 + 2072), a3 + a5 + 26, 3);
    llvm::StringAttributeImpl::StringAttributeImpl(NodeOrInsertPos, a2, a3, a4, a5);
    llvm::FoldingSetBase::InsertNode(v9 + 264, NodeOrInsertPos, v12, llvm::FoldingSet<llvm::AttributeImpl>::getFoldingSetInfo(void)::Info);
  }

  if (v13[0] != v14)
  {
    free(v13[0]);
  }

  return NodeOrInsertPos;
}

uint64_t llvm::Attribute::getAttrKindFromName(char *a1, uint64_t a2)
{
  v2 = 0;
  switch(a2)
  {
    case 3:
      if (*a1 == 28520 && a1[2] == 116)
      {
        v2 = 9;
      }

      else
      {
        if (*a1 != 29555 || a1[2] != 112)
        {
          goto LABEL_353;
        }

        v2 = 59;
      }

      break;
    case 4:
      switch(*a1)
      {
        case 0x646C6F63:
          v2 = 5;
          break;
        case 0x7473656E:
          v2 = 17;
          break;
        case 0x74657273:
          v2 = 74;
          break;
        default:
          goto LABEL_353;
      }

      break;
    case 5:
      if (*a1 == 1701998185 && a1[4] == 103)
      {
        v2 = 11;
      }

      else if (*a1 == 1701536110 && a1[4] == 100)
      {
        v2 = 16;
      }

      else if (*a1 == 1702000994 && a1[4] == 102)
      {
        v2 = 69;
      }

      else if (*a1 == 1635154274 && a1[4] == 108)
      {
        v2 = 70;
      }

      else
      {
        if (*a1 != 1734962273 || a1[4] != 110)
        {
          goto LABEL_353;
        }

        v2 = 75;
      }

      break;
    case 6:
      if (*a1 == 1634561385 && *(a1 + 2) == 26482)
      {
        v2 = 10;
      }

      else if (*a1 == 1919315822 && *(a1 + 2) == 25957)
      {
        v2 = 24;
      }

      else if (*a1 == 2037608302 && *(a1 + 2) == 25454)
      {
        v2 = 34;
      }

      else if (*a1 == 1919972211 && *(a1 + 2) == 29029)
      {
        v2 = 60;
      }

      else
      {
        if (*a1 != 1869440365 || *(a1 + 2) != 31090)
        {
          goto LABEL_353;
        }

        v2 = 80;
      }

      break;
    case 7:
      if (*a1 == 1818850658 && *(a1 + 3) == 1852404844)
      {
        v2 = 4;
      }

      else if (*a1 == 1936615789 && *(a1 + 3) == 1702521203)
      {
        v2 = 14;
      }

      else if (*a1 == 1818324846 && *(a1 + 3) == 1935763820)
      {
        v2 = 18;
      }

      else if (*a1 == 1701670766 && *(a1 + 3) == 1701278309)
      {
        v2 = 27;
      }

      else if (*a1 == 1853189998 && *(a1 + 3) == 1717920878)
      {
        v2 = 35;
      }

      else if (*a1 == 1852731246 && *(a1 + 3) == 1819047278)
      {
        v2 = 38;
      }

      else if (*a1 == 1937010799 && *(a1 + 3) == 1702521203)
      {
        v2 = 41;
      }

      else if (*a1 == 1853124719 && *(a1 + 3) == 1701736302)
      {
        v2 = 42;
      }

      else if (*a1 == 1852270963 && *(a1 + 3) == 1954047342)
      {
        v2 = 48;
      }

      else if (*a1 == 1869768058 && *(a1 + 3) == 1954047343)
      {
        v2 = 68;
      }

      else
      {
        if (*a1 != 1635022709 || *(a1 + 3) != 1701601889)
        {
          goto LABEL_353;
        }

        v2 = 83;
      }

      break;
    case 8:
      switch(*a1)
      {
        case 0x727470636F6C6C61:
          v2 = 2;
          break;
        case 0x656E696C6E696F6ELL:
          v2 = 26;
          break;
        case 0x6E72757465726F6ELL:
          v2 = 31;
          break;
        case 0x646E69776E756F6ELL:
          v2 = 36;
          break;
        case 0x656E6F6E64616572:
          v2 = 44;
          break;
        case 0x796C6E6F64616572:
          v2 = 45;
          break;
        case 0x64656E7275746572:
          v2 = 46;
          break;
        case 0x7066746369727473:
          v2 = 62;
          break;
        case 0x61636F6C6C616E69:
          v2 = 72;
          break;
        default:
          goto LABEL_353;
      }

      break;
    case 9:
      if (*a1 == 0x6C626174706D756ALL && a1[8] == 101)
      {
        v2 = 13;
      }

      else if (*a1 == 0x69746C6975626F6ELL && a1[8] == 110)
      {
        v2 = 19;
      }

      else if (*a1 == 0x7275747061636F6ELL && a1[8] == 101)
      {
        v2 = 21;
      }

      else if (*a1 == 0x6C69666F72706F6ELL && a1[8] == 101)
      {
        v2 = 28;
      }

      else if (*a1 == 0x7372756365726F6ELL && a1[8] == 101)
      {
        v2 = 29;
      }

      else if (*a1 == 0x6E6F7A6465726F6ELL && a1[8] == 101)
      {
        v2 = 30;
      }

      else if (*a1 == 0x6361747365666173 && a1[8] == 107)
      {
        v2 = 49;
      }

      else if (*a1 == 0x6E6F727473707373 && a1[8] == 103)
      {
        v2 = 61;
      }

      else if (*a1 == 0x6C65737466697773 && a1[8] == 102)
      {
        v2 = 65;
      }

      else if (*a1 == 0x6C6E6F6574697277 && a1[8] == 121)
      {
        v2 = 67;
      }

      else if (*a1 == 0x6E696B636F6C6C61 && a1[8] == 100)
      {
        v2 = 76;
      }

      else if (*a1 == 0x7A6973636F6C6C61 && a1[8] == 101)
      {
        v2 = 77;
      }

      else
      {
        if (*a1 != 0x73616C6370666F6ELL || a1[8] != 115)
        {
          goto LABEL_353;
        }

        v2 = 81;
      }

      break;
    case 10:
      if (*a1 == 0x696C61636F6C6C61 && *(a1 + 4) == 28263)
      {
        v2 = 1;
      }

      else if (*a1 == 0x65677265766E6F63 && *(a1 + 4) == 29806)
      {
        v2 = 6;
      }

      else if (*a1 == 0x6968656E696C6E69 && *(a1 + 4) == 29806)
      {
        v2 = 12;
      }

      else if (*a1 == 0x61626C6C61636F6ELL && *(a1 + 4) == 27491)
      {
        v2 = 20;
      }

      else if (*a1 == 0x6568635F66636F6ELL && *(a1 + 4) == 27491)
      {
        v2 = 22;
      }

      else if (*a1 == 0x7973617466697773 && *(a1 + 4) == 25454)
      {
        v2 = 63;
      }

      else if (*a1 == 0x7272657466697773 && *(a1 + 4) == 29295)
      {
        v2 = 64;
      }

      else if (*a1 == 0x757465726C6C6977 && *(a1 + 4) == 28274)
      {
        v2 = 66;
      }

      else
      {
        if (*a1 != 0x6174736E67696C61 || *(a1 + 4) != 27491)
        {
          goto LABEL_353;
        }

        v2 = 82;
      }

      break;
    case 11:
      if (*a1 == 0x63696C7075646F6ELL && *(a1 + 3) == 0x65746163696C7075)
      {
        v2 = 23;
      }

      else if (*a1 == 0x62797A616C6E6F6ELL && *(a1 + 3) == 0x646E6962797A616CLL)
      {
        v2 = 37;
      }

      else if (*a1 == 0x666F727070696B73 && *(a1 + 3) == 0x656C69666F727070)
      {
        v2 = 56;
      }

      else
      {
        if (*a1 != 0x74746E656D656C65 || *(a1 + 3) != 0x65707974746E656DLL)
        {
          goto LABEL_353;
        }

        v2 = 71;
      }

      break;
    case 12:
      if (*a1 == 0x6E69737961776C61 && *(a1 + 2) == 1701734764)
      {
        v2 = 3;
      }

      else if (*a1 == 0x676F72707473756DLL && *(a1 + 2) == 1936942450)
      {
        v2 = 15;
      }

      else if (*a1 == 0x74616C7563657073 && *(a1 + 2) == 1701601889)
      {
        v2 = 57;
      }

      else
      {
        if (*a1 != 0x636F6C6C61657270 || *(a1 + 2) != 1684370529)
        {
          v10 = (*a1 ^ 0x725F656C61637376 | *(a1 + 2) ^ 0x65676E61) == 0;
          LODWORD(v2) = 84;
          goto LABEL_32;
        }

        v2 = 73;
      }

      break;
    case 13:
      if (*a1 == 0x7566726F6674706FLL && *(a1 + 5) == 0x676E697A7A756672)
      {
        v2 = 40;
      }

      else
      {
        if (*a1 != 0x5F736E7275746572 || *(a1 + 5) != 0x65636977745F736ELL)
        {
          goto LABEL_353;
        }

        v2 = 47;
      }

      break;
    case 15:
      if (*a1 == 0x63696C706D696F6ELL && *(a1 + 7) == 0x74616F6C66746963)
      {
        v2 = 25;
      }

      else if (*a1 == 0x657A6974696E6173 && *(a1 + 7) == 0x6761746D656D5F65)
      {
        v2 = 52;
      }

      else if (*a1 == 0x657A6974696E6173 && *(a1 + 7) == 0x79726F6D656D5F65)
      {
        v2 = 53;
      }

      else if (*a1 == 0x657A6974696E6173 && *(a1 + 7) == 0x6461657268745F65)
      {
        v2 = 54;
      }

      else if (*a1 == 0x6163776F64616873 && *(a1 + 7) == 0x6B636174736C6C61)
      {
        v2 = 55;
      }

      else
      {
        if (*a1 != 0x6572656665726564 || *(a1 + 7) != 0x656C626165636E65)
        {
          goto LABEL_353;
        }

        v2 = 78;
      }

      break;
    case 16:
      if (*a1 != 0x657A6974696E6173 || *(a1 + 1) != 0x737365726464615FLL)
      {
        goto LABEL_353;
      }

      v2 = 50;
      break;
    case 17:
      if (*a1 == 0x6974696E61736F6ELL && *(a1 + 1) == 0x646E756F625F657ALL && a1[16] == 115)
      {
        v2 = 32;
      }

      else
      {
        v10 = (*a1 ^ 0x74696C7073657270 | *(a1 + 1) ^ 0x6E6974756F726F63 | a1[16] ^ 0x65) == 0;
        LODWORD(v2) = 43;
LABEL_32:
        if (v10)
        {
          v2 = v2;
        }

        else
        {
          v2 = 0;
        }
      }

      break;
    case 18:
      if (*a1 != 0x657A6974696E6173 || *(a1 + 1) != 0x657264646177685FLL || *(a1 + 8) != 29555)
      {
        goto LABEL_353;
      }

      v2 = 51;
      break;
    case 19:
      if (*a1 == 0x745F7465725F6E66 && *(a1 + 1) == 0x7478655F6B6E7568 && *(a1 + 11) == 0x6E72657478655F6BLL)
      {
        v2 = 8;
      }

      else
      {
        if (*a1 != 0x6974696E61736F6ELL || *(a1 + 1) != 0x7265766F635F657ALL || *(a1 + 11) != 0x6567617265766F63)
        {
          goto LABEL_353;
        }

        v2 = 33;
      }

      break;
    case 21:
      if (*a1 != 0x696F705F6C6C756ELL || *(a1 + 1) != 0x5F73695F7265746ELL || *(a1 + 13) != 0x64696C61765F7369)
      {
        goto LABEL_353;
      }

      v2 = 39;
      break;
    case 23:
      if (*a1 != 0x6572656665726564 || *(a1 + 1) != 0x5F656C626165636ELL || *(a1 + 15) != 0x6C6C756E5F726F5FLL)
      {
        goto LABEL_353;
      }

      v2 = 79;
      break;
    case 26:
      if (*a1 == 0x74616C7563657073 && *(a1 + 1) == 0x64616F6C5F657669 && *(a1 + 2) == 0x696E65647261685FLL && *(a1 + 12) == 26478)
      {
        v2 = 58;
      }

      else
      {
LABEL_353:
        v2 = 0;
      }

      break;
    case 33:
      if (!memcmp(a1, "disable_sanitizer_instrumentation", 0x21uLL))
      {
        v2 = 7;
      }

      else
      {
        v2 = 0;
      }

      break;
    default:
      return v2;
  }

  return v2;
}