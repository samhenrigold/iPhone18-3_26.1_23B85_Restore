BOOL llvm::Attribute::isExistingAttribute(unsigned __int16 *a1, uint64_t a2)
{
  v2 = 0;
  switch(a2)
  {
    case 3:
      if (*a1 == 28520 && *(a1 + 2) == 116)
      {
        return 1;
      }

      v4 = *(a1 + 2);
      v5 = *a1 == 29555;
      v6 = 112;
      return v5 && v4 == v6;
    case 4:
      return *a1 == 1684828003 || *a1 == 1953719662 || *a1 == 1952805491;
    case 5:
      if (*a1 == 1701998185 && *(a1 + 4) == 103)
      {
        return 1;
      }

      if (*a1 == 1701536110 && *(a1 + 4) == 100)
      {
        return 1;
      }

      if (*a1 == 1702000994 && *(a1 + 4) == 102)
      {
        return 1;
      }

      if (*a1 == 1635154274 && *(a1 + 4) == 108)
      {
        return 1;
      }

      v4 = *(a1 + 4);
      v5 = *a1 == 1734962273;
      v6 = 110;
      return v5 && v4 == v6;
    case 6:
      if (*a1 == 1634561385 && a1[2] == 26482)
      {
        return 1;
      }

      if (*a1 == 1919315822 && a1[2] == 25957)
      {
        return 1;
      }

      if (*a1 == 2037608302 && a1[2] == 25454)
      {
        return 1;
      }

      if (*a1 == 1919972211 && a1[2] == 29029)
      {
        return 1;
      }

      v4 = a1[2];
      v5 = *a1 == 1869440365;
      v6 = 31090;
      return v5 && v4 == v6;
    case 7:
      if (*a1 == 1818850658 && *(a1 + 3) == 1852404844)
      {
        return 1;
      }

      if (*a1 == 1936615789 && *(a1 + 3) == 1702521203)
      {
        return 1;
      }

      if (*a1 == 1818324846 && *(a1 + 3) == 1935763820)
      {
        return 1;
      }

      if (*a1 == 1701670766 && *(a1 + 3) == 1701278309)
      {
        return 1;
      }

      if (*a1 == 1853189998 && *(a1 + 3) == 1717920878)
      {
        return 1;
      }

      if (*a1 == 1852731246 && *(a1 + 3) == 1819047278)
      {
        return 1;
      }

      if (*a1 == 1937010799 && *(a1 + 3) == 1702521203)
      {
        return 1;
      }

      if (*a1 == 1853124719 && *(a1 + 3) == 1701736302)
      {
        return 1;
      }

      if (*a1 == 1852270963 && *(a1 + 3) == 1954047342)
      {
        return 1;
      }

      if (*a1 == 1869768058 && *(a1 + 3) == 1954047343)
      {
        return 1;
      }

      v4 = *(a1 + 3);
      v5 = *a1 == 1635022709;
      v6 = 1701601889;
      return v5 && v4 == v6;
    case 8:
      return *a1 == 0x727470636F6C6C61 || *a1 == 0x656E696C6E696F6ELL || *a1 == 0x6E72757465726F6ELL || *a1 == 0x646E69776E756F6ELL || *a1 == 0x656E6F6E64616572 || *a1 == 0x796C6E6F64616572 || *a1 == 0x64656E7275746572 || *a1 == 0x7066746369727473 || *a1 == 0x61636F6C6C616E69;
    case 9:
      if (*a1 == 0x6C626174706D756ALL && *(a1 + 8) == 101)
      {
        return 1;
      }

      if (*a1 == 0x69746C6975626F6ELL && *(a1 + 8) == 110)
      {
        return 1;
      }

      if (*a1 == 0x7275747061636F6ELL && *(a1 + 8) == 101)
      {
        return 1;
      }

      if (*a1 == 0x6C69666F72706F6ELL && *(a1 + 8) == 101)
      {
        return 1;
      }

      if (*a1 == 0x7372756365726F6ELL && *(a1 + 8) == 101)
      {
        return 1;
      }

      if (*a1 == 0x6E6F7A6465726F6ELL && *(a1 + 8) == 101)
      {
        return 1;
      }

      if (*a1 == 0x6361747365666173 && *(a1 + 8) == 107)
      {
        return 1;
      }

      if (*a1 == 0x6E6F727473707373 && *(a1 + 8) == 103)
      {
        return 1;
      }

      if (*a1 == 0x6C65737466697773 && *(a1 + 8) == 102)
      {
        return 1;
      }

      if (*a1 == 0x6C6E6F6574697277 && *(a1 + 8) == 121)
      {
        return 1;
      }

      if (*a1 == 0x6E696B636F6C6C61 && *(a1 + 8) == 100)
      {
        return 1;
      }

      if (*a1 == 0x7A6973636F6C6C61 && *(a1 + 8) == 101)
      {
        return 1;
      }

      v4 = *(a1 + 8);
      v5 = *a1 == 0x73616C6370666F6ELL;
      v6 = 115;
      return v5 && v4 == v6;
    case 10:
      if (*a1 == 0x696C61636F6C6C61 && a1[4] == 28263)
      {
        return 1;
      }

      if (*a1 == 0x65677265766E6F63 && a1[4] == 29806)
      {
        return 1;
      }

      if (*a1 == 0x6968656E696C6E69 && a1[4] == 29806)
      {
        return 1;
      }

      if (*a1 == 0x61626C6C61636F6ELL && a1[4] == 27491)
      {
        return 1;
      }

      if (*a1 == 0x6568635F66636F6ELL && a1[4] == 27491)
      {
        return 1;
      }

      if (*a1 == 0x7973617466697773 && a1[4] == 25454)
      {
        return 1;
      }

      if (*a1 == 0x7272657466697773 && a1[4] == 29295)
      {
        return 1;
      }

      if (*a1 == 0x757465726C6C6977 && a1[4] == 28274)
      {
        return 1;
      }

      v4 = a1[4];
      v5 = *a1 == 0x6174736E67696C61;
      v6 = 27491;
      return v5 && v4 == v6;
    case 11:
      if (*a1 == 0x63696C7075646F6ELL && *(a1 + 3) == 0x65746163696C7075)
      {
        return 1;
      }

      if (*a1 == 0x62797A616C6E6F6ELL && *(a1 + 3) == 0x646E6962797A616CLL)
      {
        return 1;
      }

      if (*a1 == 0x666F727070696B73 && *(a1 + 3) == 0x656C69666F727070)
      {
        return 1;
      }

      v15 = *(a1 + 3);
      v16 = *a1 == 0x74746E656D656C65;
      v17 = 0x65707974746E656DLL;
      return v16 && v15 == v17;
    case 12:
      if (*a1 == 0x6E69737961776C61 && *(a1 + 2) == 1701734764)
      {
        return 1;
      }

      if (*a1 == 0x676F72707473756DLL && *(a1 + 2) == 1936942450)
      {
        return 1;
      }

      if (*a1 == 0x74616C7563657073 && *(a1 + 2) == 1701601889)
      {
        return 1;
      }

      if (*a1 == 0x636F6C6C61657270 && *(a1 + 2) == 1684370529)
      {
        return 1;
      }

      v4 = *(a1 + 2);
      v5 = *a1 == 0x725F656C61637376;
      v6 = 1701277281;
      return v5 && v4 == v6;
    case 13:
      if (*a1 == 0x7566726F6674706FLL && *(a1 + 5) == 0x676E697A7A756672)
      {
        return 1;
      }

      v15 = *(a1 + 5);
      v16 = *a1 == 0x5F736E7275746572;
      v17 = 0x65636977745F736ELL;
      return v16 && v15 == v17;
    case 14:
      if (*a1 == 0x2D706D756A2D6F6ELL && *(a1 + 3) == 0x73656C6261742D70)
      {
        return 1;
      }

      v15 = *(a1 + 3);
      v16 = *a1 == 0x662D656661736E75;
      v17 = 0x6874616D2D70662DLL;
      return v16 && v15 == v17;
    case 15:
      if (*a1 == 0x63696C706D696F6ELL && *(a1 + 7) == 0x74616F6C66746963)
      {
        return 1;
      }

      if (*a1 == 0x657A6974696E6173 && *(a1 + 7) == 0x6761746D656D5F65)
      {
        return 1;
      }

      if (*a1 == 0x657A6974696E6173 && *(a1 + 7) == 0x79726F6D656D5F65)
      {
        return 1;
      }

      if (*a1 == 0x657A6974696E6173 && *(a1 + 7) == 0x6461657268745F65)
      {
        return 1;
      }

      if (*a1 == 0x6163776F64616873 && *(a1 + 7) == 0x6B636174736C6C61)
      {
        return 1;
      }

      if (*a1 == 0x6572656665726564 && *(a1 + 7) == 0x656C626165636E65)
      {
        return 1;
      }

      v14 = 0x6874616D2D70662DLL;
      if (*a1 == 0x2D73666E692D6F6ELL && *(a1 + 7) == 0x6874616D2D70662DLL)
      {
        return 1;
      }

      v12 = *(a1 + 7);
      v13 = *a1 == 0x2D736E616E2D6F6ELL;
      return v13 && v12 == v14;
    case 16:
      v15 = *(a1 + 1);
      v16 = *a1 == 0x657A6974696E6173;
      v17 = 0x737365726464615FLL;
      return v16 && v15 == v17;
    case 17:
      if (*a1 == 0x6974696E61736F6ELL && *(a1 + 1) == 0x646E756F625F657ALL && *(a1 + 16) == 115)
      {
        return 1;
      }

      v56 = *(a1 + 16);
      v57 = *a1 == 0x74696C7073657270 && *(a1 + 1) == 0x6E6974756F726F63;
      v58 = 101;
      return v57 && v56 == v58;
    case 18:
      if (*a1 == 0x657A6974696E6173 && *(a1 + 1) == 0x657264646177685FLL && a1[8] == 29555)
      {
        return 1;
      }

      v61 = *a1 == 0x6572702D7373656CLL && *(a1 + 1) == 0x6D70662D65736963;
      if (v61 && a1[8] == 25697)
      {
        return 1;
      }

      v56 = a1[8];
      v57 = *a1 == 0x706D61732D657375 && *(a1 + 1) == 0x69666F72702D656CLL;
      v58 = 25964;
      return v57 && v56 == v58;
    case 19:
      if (*a1 == 0x745F7465725F6E66 && *(a1 + 1) == 0x7478655F6B6E7568 && *(a1 + 11) == 0x6E72657478655F6BLL)
      {
        return 1;
      }

      v90 = *a1 == 0x6974696E61736F6ELL && *(a1 + 1) == 0x7265766F635F657ALL;
      if (v90 && *(a1 + 11) == 0x6567617265766F63)
      {
        return 1;
      }

      v12 = *(a1 + 11);
      v13 = *a1 == 0x662D786F72707061 && *(a1 + 1) == 0x6D2D70662D636E75;
      v14 = 0x6874616D2D70662DLL;
      return v13 && v12 == v14;
    case 21:
      if (*a1 == 0x696F705F6C6C756ELL && *(a1 + 1) == 0x5F73695F7265746ELL && *(a1 + 13) == 0x64696C61765F7369)
      {
        return 1;
      }

      v12 = *(a1 + 13);
      v13 = *a1 == 0x6E696C6E692D6F6ELL && *(a1 + 1) == 0x742D656E696C2D65;
      v14 = 0x73656C6261742D65;
      return v13 && v12 == v14;
    case 23:
      if (*a1 == 0x6572656665726564 && *(a1 + 1) == 0x5F656C626165636ELL && *(a1 + 15) == 0x6C6C756E5F726F5FLL)
      {
        return 1;
      }

      v10 = *a1 == 0x656E6769732D6F6ELL && *(a1 + 1) == 0x2D736F72657A2D64;
      if (v10 && *(a1 + 15) == 0x6874616D2D70662DLL)
      {
        return 1;
      }

      v12 = *(a1 + 15);
      v13 = *a1 == 0x2D656C69666F7270 && *(a1 + 1) == 0x612D656C706D6173;
      v14 = 0x6574617275636361;
      return v13 && v12 == v14;
    case 26:
      return *a1 == 0x74616C7563657073 && *(a1 + 1) == 0x64616F6C5F657669 && *(a1 + 2) == 0x696E65647261685FLL && a1[12] == 26478;
    case 33:
      return !memcmp(a1, "disable_sanitizer_instrumentation", 0x21uLL);
    default:
      return v2;
  }
}

BOOL llvm::AttributeImpl::hasAttribute(uint64_t a1, const void *a2, uint64_t a3)
{
  if (*(a1 + 8) != 2)
  {
    return 0;
  }

  v4 = *(a1 + 12);
  if (a3 != v4)
  {
    return 0;
  }

  if (v4)
  {
    return memcmp((a1 + 24), a2, v4) == 0;
  }

  return 1;
}

uint64_t llvm::Attribute::getVScaleRangeMax(llvm::Attribute *this)
{
  v1 = *(*this + 16);
  if (!*(*this + 16))
  {
    v1 = 0;
  }

  *&v4[4] = v1 | *(*this + 16) & 0xFFFFFF00 | ((*(*this + 16) != 0) << 32);
  *(&v3 + 1) = *(*this + 16) != 0;
  *&v3 = *v4;
  return v3 >> 32;
}

void llvm::Attribute::getAsString(std::string *__return_ptr a1@<X8>, llvm::Attribute *this@<X0>, int a3@<W1>)
{
  v78 = *MEMORY[0x277D85DE8];
  v4 = *this;
  if (!*this)
  {
    *&a1->__r_.__value_.__l.__data_ = 0uLL;
    a1->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  v6 = *(v4 + 8);
  if (v6 == 3)
  {
    *&v70 = llvm::Attribute::getNameFromAttrKind(*(v4 + 12));
    *(&v70 + 1) = v8;
    llvm::StringRef::str(&v70, a1);
    std::string::push_back(a1, 40);
    DWORD2(v70) = 0;
    v74 = 0;
    v75 = 0;
    v76 = 1;
    v72 = 0;
    v73 = 0;
    v71 = 0;
    *&v70 = &unk_2883EB8F0;
    v77 = a1;
    llvm::raw_ostream::SetUnbuffered(&v70);
    if (*this)
    {
      v9 = *(*this + 16);
    }

    else
    {
      v9 = 0;
    }

    llvm::Type::print(v9, &v70, 0, 1);
    v13 = v73 - v71;
    if (v73 != v71)
    {
      v73 = v71;
      llvm::raw_ostream::flush_tied_then_write(&v70, v71, v13);
    }

    std::string::push_back(a1, 41);
LABEL_20:
    v14 = &v70;
    goto LABEL_21;
  }

  if (!*(v4 + 8))
  {
    *&v70 = llvm::Attribute::getNameFromAttrKind(*(v4 + 12));
    *(&v70 + 1) = v7;
    llvm::StringRef::str(&v70, a1);
    return;
  }

  if (v6 == 2)
  {
LABEL_9:
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    DWORD2(v70) = 0;
    v74 = 0;
    v75 = 0;
    v76 = 1;
    v72 = 0;
    v73 = 0;
    v71 = 0;
    *&v70 = &unk_2883EB8F0;
    v77 = a1;
    llvm::raw_ostream::SetUnbuffered(&v70);
    v10 = v73;
    if (v73 >= v72)
    {
      llvm::raw_ostream::write(&v70, 34);
    }

    else
    {
      ++v73;
      *v10 = 34;
    }

    v15 = *this;
    if (*this)
    {
      v16 = (v15 + 24);
      v17 = *(v15 + 12);
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v25 = llvm::raw_ostream::operator<<(&v70, v16, v17);
    v26 = *(v25 + 4);
    if (v26 >= *(v25 + 3))
    {
      llvm::raw_ostream::write(v25, 34);
    }

    else
    {
      *(v25 + 4) = v26 + 1;
      *v26 = 34;
    }

    v27 = *(*this + 16);
    if (v27)
    {
      v28 = *this + *(*this + 12);
      if ((v72 - v73) > 1)
      {
        *v73 = 8765;
        v73 += 2;
      }

      else
      {
        llvm::raw_ostream::write(&v70, "=", 2uLL);
      }

      llvm::printEscapedString((v28 + 25), v27, &v70);
      if (v72 == v73)
      {
        llvm::raw_ostream::write(&v70, "", 1uLL);
      }

      else
      {
        *v73++ = 34;
      }
    }

    goto LABEL_20;
  }

  v11 = *(v4 + 12);
  if (v11 > 79)
  {
    if (v11 > 81)
    {
      if (v11 == 82)
      {
        if (a3)
        {
          v65[0] = *(v4 + 16);
          v67[0] = "=";
          v68 = v65;
          v69 = 3075;
          v37 = 2;
          v38 = 3;
          v39 = "alignstack";
          v40 = v67;
        }

        else
        {
          v63[0] = *(v4 + 16);
          v65[0] = "(";
          v65[2] = v63;
          v66 = 3075;
          v67[0] = "alignstack";
          v68 = v65;
          v37 = 3;
          v38 = 2;
          v40 = ")";
          v69 = 515;
          v39 = v67;
        }

        *&v70 = v39;
        v71 = v40;
        LOBYTE(v73) = v38;
        BYTE1(v73) = v37;
        goto LABEL_103;
      }

      if (v11 != 83)
      {
        if (v11 != 84)
        {
          goto LABEL_9;
        }

        v22 = *(v4 + 16);
        v18 = HIDWORD(v22);
        v19 = v22 == 0;
        v20 = v22 != 0;
        v21 = v22 & 0xFFFFFF00;
        v22 = v22;
        LODWORD(v70) = v18;
        if (v19)
        {
          v22 = 0;
        }

        *(&v70 + 4) = v22 | v21 | (v20 << 32);
        VScaleRangeMax = llvm::Attribute::getVScaleRangeMax(this);
        v61[0] = "vscale_range(";
        v62 = 259;
        v60 = 264;
        LODWORD(v59[0]) = v70;
        llvm::operator+(v61, v59, v63);
        __p.__r_.__value_.__r.__words[0] = ",";
        v58 = 259;
        llvm::operator+(v63, &__p, v65);
        if ((VScaleRangeMax & 0x100000000) != 0)
        {
          v24 = VScaleRangeMax;
        }

        else
        {
          v24 = 0;
        }

        v56 = 264;
        LODWORD(v55[0]) = v24;
        llvm::operator+(v65, v55, v67);
        v53 = ")";
        v54 = 259;
        goto LABEL_93;
      }

      v41 = *(v4 + 16);
      if (!v41)
      {
        goto LABEL_9;
      }

      if (v41 == 2)
      {
        std::string::basic_string[abi:nn200100]<0>(a1, "uwtable");
        return;
      }

      v65[0] = "uwtable(";
      v45 = "async";
      v66 = 259;
      if (v41 == 1)
      {
        v45 = "sync";
      }

      v46 = 1;
      HIBYTE(v64) = 1;
      if (*v45)
      {
        v63[0] = v45;
        v46 = 3;
      }

      LOBYTE(v64) = v46;
LABEL_101:
      llvm::operator+(v65, v63, v67);
      v61[0] = ")";
      v62 = 259;
      v44 = v61;
      goto LABEL_102;
    }

    if (v11 != 80)
    {
      std::string::basic_string[abi:nn200100]<0>(a1, "nofpclass");
      DWORD2(v70) = 0;
      v74 = 0;
      v75 = 0;
      v76 = 1;
      v72 = 0;
      v73 = 0;
      v71 = 0;
      *&v70 = &unk_2883EB8F0;
      v77 = a1;
      llvm::raw_ostream::SetUnbuffered(&v70);
      v14 = llvm::operator<<(&v70, *(*this + 16));
LABEL_21:
      llvm::raw_ostream::~raw_ostream(v14);
      return;
    }

    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    DWORD2(v70) = 0;
    v74 = 0;
    v75 = 0;
    v76 = 1;
    v72 = 0;
    v73 = 0;
    v71 = 0;
    *&v70 = &unk_2883EB8F0;
    v77 = a1;
    llvm::raw_ostream::SetUnbuffered(&v70);
    llvm::raw_ostream::operator<<(&v70, "memory(", 7uLL);
    v31 = *(*this + 16);
    v32 = (v31 >> 4) & 3;
    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v42 = "write";
      }

      else
      {
        v42 = "readwrite";
      }
    }

    else if (v32)
    {
      v42 = "read";
    }

    else
    {
      if (v31 & 3 | (v31 >> 2) & 3 | (v31 >> 4) & 3)
      {
        v33 = 1;
LABEL_108:
        v47 = 0;
        v48 = 0;
        while (1)
        {
          v49 = (v31 >> v47) & 3;
          if (v49 != v32)
          {
            break;
          }

LABEL_118:
          ++v48;
          v47 += 2;
          if (v48 == 3)
          {
            llvm::raw_ostream::operator<<(&v70, ")", 1uLL);
            v52 = v73 - v71;
            if (v73 != v71)
            {
              v73 = v71;
              llvm::raw_ostream::flush_tied_then_write(&v70, v71, v52);
            }

            goto LABEL_20;
          }
        }

        if ((v33 & 1) == 0)
        {
          llvm::raw_ostream::operator<<(&v70, ", ", 2uLL);
        }

        if (v48)
        {
          if (v48 != 1)
          {
LABEL_117:
            llvm::raw_ostream::operator<<(&v70, off_279F00458[v49]);
            v33 = 0;
            goto LABEL_118;
          }

          v50 = "inaccessiblemem: ";
          v51 = 17;
        }

        else
        {
          v50 = "argmem: ";
          v51 = 8;
        }

        llvm::raw_ostream::operator<<(&v70, v50, v51);
        goto LABEL_117;
      }

      v42 = "none";
    }

    llvm::raw_ostream::operator<<(&v70, v42);
    v33 = 0;
    goto LABEL_108;
  }

  if (v11 > 76)
  {
    if (v11 != 77)
    {
      if (v11 == 78)
      {
        v12 = "dereferenceable";
      }

      else
      {
        v12 = "dereferenceable_or_null";
      }

      llvm::Attribute::getAsString(BOOL)const::$_0::operator()(a1, a3, v4, v12);
      return;
    }

    v34 = *(v4 + 16);
    v35 = v34;
    LODWORD(v70) = HIDWORD(v34);
    if (v34 == 0xFFFFFFFFLL)
    {
      v36 = 0;
    }

    else
    {
      v36 = v34 | 0x100000000;
    }

    *(&v70 + 4) = v36;
    if (v35 != 0xFFFFFFFFLL)
    {
      v43 = DWORD1(v70);
      v61[0] = "allocsize(";
      v62 = 259;
      v60 = 264;
      LODWORD(v59[0]) = v70;
      llvm::operator+(v61, v59, v63);
      __p.__r_.__value_.__r.__words[0] = ",";
      v58 = 259;
      llvm::operator+(v63, &__p, v65);
      v56 = 264;
      LODWORD(v55[0]) = v43;
      llvm::operator+(v65, v55, v67);
      v53 = ")";
      v54 = 259;
LABEL_93:
      v44 = &v53;
LABEL_102:
      llvm::operator+(v67, v44, &v70);
LABEL_103:
      llvm::Twine::str(&v70, a1);
      return;
    }

    v65[0] = "allocsize(";
    v66 = 259;
    v64 = 264;
    LODWORD(v63[0]) = v70;
    goto LABEL_101;
  }

  if (v11 == 75)
  {
    v67[0] = *(v4 + 16);
    if (a3)
    {
      v30 = "align=";
    }

    else
    {
      v30 = "align ";
    }

    *&v70 = v30;
    v71 = v67;
    LOWORD(v73) = 3075;
    goto LABEL_103;
  }

  if (v11 != 76)
  {
    goto LABEL_9;
  }

  v29 = *(v4 + 16);
  *&v70 = &v71;
  *(&v70 + 1) = 0x300000000;
  if (v29)
  {
    llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v70, "alloc", 5);
    if ((v29 & 2) == 0)
    {
LABEL_51:
      if ((v29 & 4) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_85;
    }
  }

  else if ((v29 & 2) == 0)
  {
    goto LABEL_51;
  }

  llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v70, "realloc", 7);
  if ((v29 & 4) == 0)
  {
LABEL_52:
    if ((v29 & 8) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_86;
  }

LABEL_85:
  llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v70, "free", 4);
  if ((v29 & 8) == 0)
  {
LABEL_53:
    if ((v29 & 0x10) == 0)
    {
      goto LABEL_54;
    }

LABEL_87:
    llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v70, "zeroed", 6);
    if ((v29 & 0x20) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_86:
  llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v70, "uninitialized", 13);
  if ((v29 & 0x10) != 0)
  {
    goto LABEL_87;
  }

LABEL_54:
  if ((v29 & 0x20) != 0)
  {
LABEL_55:
    llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v70, "aligned", 7);
  }

LABEL_56:
  v63[0] = "allockind(";
  v64 = 259;
  llvm::detail::join_impl<llvm::StringRef *>(&__p, v70, v70 + 16 * DWORD2(v70));
  v62 = 260;
  v61[0] = &__p;
  llvm::operator+(v63, v61, v65);
  v59[0] = ")";
  v60 = 259;
  llvm::operator+(v65, v59, v67);
  llvm::Twine::str(v67, a1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v70 != &v71)
  {
    free(v70);
  }
}

void llvm::Attribute::getAsString(BOOL)const::$_0::operator()(uint64_t a1, char a2, uint64_t a3, unsigned __int8 *a4)
{
  v4 = *a4;
  if (a2)
  {
    if (a3)
    {
      v5 = *(a3 + 16);
    }

    else
    {
      v5 = 0;
    }

    *&v11 = v5;
    *&v14 = "=";
    *&v15 = &v11;
    LOWORD(v16) = 3075;
    if (!v4)
    {
      v17 = v14;
      v18 = v15;
      v19 = v16;
      goto LABEL_19;
    }

    *&v17 = a4;
    *&v18 = &v14;
    v7 = 515;
    goto LABEL_9;
  }

  if (a3)
  {
    v6 = *(a3 + 16);
  }

  else
  {
    v6 = 0;
  }

  v10 = v6;
  *&v11 = "(";
  *&v12 = &v10;
  LOWORD(v13) = 3075;
  if (v4)
  {
    *&v14 = a4;
    *&v15 = &v11;
    LOWORD(v16) = 515;
    v8 = 3;
  }

  else
  {
    v14 = v11;
    v15 = v12;
    v16 = v13;
    v8 = v13;
    if (v13 == 1)
    {
      *&v17 = ")";
      v7 = 259;
LABEL_9:
      LOWORD(v19) = v7;
      goto LABEL_19;
    }
  }

  if (BYTE1(v16) != 1)
  {
    v8 = 2;
  }

  v9 = &v14;
  if (BYTE1(v16) == 1)
  {
    v9 = v14;
  }

  *&v17 = v9;
  *(&v17 + 1) = *(&v14 + 1);
  *&v18 = ")";
  LOBYTE(v19) = v8;
  BYTE1(v19) = 3;
LABEL_19:
  llvm::Twine::str(&v17, a1);
}

BOOL llvm::Attribute::hasParentContext(uint64_t *a1, void *a2)
{
  v9[16] = *MEMORY[0x277D85DE8];
  v8[0] = v9;
  v8[1] = 0x2000000000;
  llvm::AttributeImpl::Profile(*a1, v8);
  NodeOrInsertPos = llvm::FoldingSetBase::FindNodeOrInsertPos(*a2 + 264, v8, &v7, llvm::FoldingSet<llvm::AttributeImpl>::getFoldingSetInfo(void)::Info);
  v5 = *a1;
  if (v8[0] != v9)
  {
    free(v8[0]);
  }

  return NodeOrInsertPos == v5;
}

unsigned int *llvm::AttributeImpl::Profile(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 8) == 2)
  {
    v8 = a1 + 24;
    v10 = *(a1 + 12);
    v9 = *(a1 + 16);
    result = llvm::FoldingSetNodeID::AddString(a2, (a1 + 24), v10);
    if (v9)
    {

      return llvm::FoldingSetNodeID::AddString(a2, (v8 + v10 + 1), v9);
    }
  }

  else
  {
    if (*(a1 + 8))
    {
      v6 = *(a1 + 16);
      v5 = *(a1 + 20);
      llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, *(a1 + 12));
      llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v6);
      v4 = a2;
      v3 = v5;
    }

    else
    {
      v3 = *(a1 + 12);
      v4 = a2;
    }

    return llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v4, v3);
  }

  return result;
}

BOOL llvm::AttributeImpl::operator<(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v19 = v2;
  v20 = v3;
  v6 = *(a2 + 8);
  if (*(a1 + 8) == 2)
  {
    if (v6 == 2)
    {
      v7 = a1 + 24;
      v8 = *(a1 + 12);
      v9 = a2 + 24;
      v10 = *(a2 + 12);
      if (v8 == v10 && (!v8 || !memcmp((a1 + 24), (a2 + 24), *(a1 + 12))))
      {
        v16 = *(a1 + 16);
        v12 = *(a2 + 16);
        v17 = v7 + v8 + 1;
        v18 = v16;
        v11 = (v9 + v10 + 1);
      }

      else
      {
        v17 = a1 + 24;
        v18 = v8;
        v11 = (a2 + 24);
        v12 = v10;
      }

      return llvm::StringRef::compare(&v17, v11, v12) >> 31;
    }

    else
    {
      return 0;
    }
  }

  else if (v6 == 2)
  {
    return 1;
  }

  else
  {
    v14 = *(a1 + 12);
    v15 = *(a2 + 12);
    if (v14 == v15)
    {
      return *(a1 + 16) < *(a2 + 16);
    }

    else
    {
      return v14 < v15;
    }
  }
}

uint64_t *llvm::AttributeSetNode::get(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v9[8] = *MEMORY[0x277D85DE8];
  __base = v9;
  __nel = 0x800000000;
  llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&__base, a2, &a2[8 * a3]);
  v4 = __nel;
  if (__nel >= 2)
  {
    qsort(__base, __nel, 8uLL, llvm::array_pod_sort_comparator<llvm::Attribute>);
    v4 = __nel;
  }

  Sorted = llvm::AttributeSetNode::getSorted(a1, __base, v4);
  if (__base != v9)
  {
    free(__base);
  }

  return Sorted;
}

uint64_t **llvm::AttrBuilder::addAttribute(uint64_t **a1, uint64_t a2)
{
  v2 = a2;
  v4 = (a1 + 1);
  v5 = llvm::Attribute::get(*a1, a2, 0);
  addAttributeImpl<llvm::Attribute::AttrKind>(v4, v2, v5);
  return a1;
}

uint64_t *llvm::AttributeSet::removeAttribute(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  v10[8] = *MEMORY[0x277D85DE8];
  Sorted = *a1;
  if (*a1)
  {
    v4 = a3;
    if ((*(Sorted + a3 / 8 + 12) >> (a3 & 7)))
    {
      v7 = a2;
      v8 = v10;
      v9 = 0x800000000;
      llvm::SmallVectorImpl<llvm::AttributeSet>::insert<llvm::AttributeSet const*,void>(&v8, v10, Sorted + 48, &Sorted[*(Sorted + 2) + 6]);
      llvm::AttrBuilder::removeAttribute(&v7, v4);
      Sorted = llvm::AttributeSetNode::getSorted(a2, v8, v9);
      if (v8 != v10)
      {
        free(v8);
      }
    }
  }

  return Sorted;
}

uint64_t llvm::AttrBuilder::removeAttribute(uint64_t a1, int a2)
{
  v8 = a2;
  v3 = llvm::lower_bound<llvm::SmallVector<llvm::Attribute,8u> &,llvm::Attribute::AttrKind &,AttributeComparator>(a1 + 8, &v8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 8) + 8 * v4;
  if (v3 != v5)
  {
    v6 = *v3;
    if (*v3)
    {
      if (*(v6 + 8) == 2 || *(v6 + 12) != v8)
      {
        return a1;
      }
    }

    else if (v8)
    {
      return a1;
    }

    if (v5 != v3 + 1)
    {
      memmove(v3, v3 + 1, v5 - (v3 + 1));
      LODWORD(v4) = *(a1 + 16);
    }

    *(a1 + 16) = v4 - 1;
  }

  return a1;
}

uint64_t llvm::AttrBuilder::removeAttribute(uint64_t a1, const void *a2, uint64_t a3)
{
  v12 = a2;
  v13 = a3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v14 = 0;
  v6 = std::__lower_bound_bisecting[abi:nn200100]<std::_ClassicAlgPolicy,llvm::Attribute *,llvm::StringRef,std::__identity,AttributeComparator>(v4, &v12, v5);
  v7 = *(a1 + 16);
  v8 = *(a1 + 8) + 8 * v7;
  if (v6 != v8)
  {
    v9 = v6;
    v10 = *v6;
    if (v10)
    {
      if (*(v10 + 8) == 2 && llvm::AttributeImpl::hasAttribute(v10, v12, v13))
      {
        if (v8 != v9 + 1)
        {
          memmove(v9, v9 + 1, v8 - (v9 + 1));
          LODWORD(v7) = *(a1 + 16);
        }

        *(a1 + 16) = v7 - 1;
      }
    }
  }

  return a1;
}

uint64_t *llvm::AttributeSet::removeAttributes(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  v16[8] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v13 = a2;
  v14 = v16;
  v15 = 0x800000000;
  if (v6)
  {
    v7 = (v6 + 6);
    v8 = &v6[*(v6 + 2) + 6];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  llvm::SmallVectorImpl<llvm::AttributeSet>::insert<llvm::AttributeSet const*,void>(&v14, v16, v7, v8);
  if (v15)
  {
    v9 = v14;
    v10 = 8 * v15;
    while (!llvm::AttributeMask::contains(a3, *v9))
    {
      ++v9;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    llvm::AttrBuilder::remove(&v13, a3);
    Sorted = llvm::AttributeSetNode::getSorted(a2, v14, v15);
  }

  else
  {
LABEL_8:
    Sorted = *a1;
  }

  if (v14 != v16)
  {
    free(v14);
  }

  return Sorted;
}

uint64_t llvm::AttrBuilder::remove(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = &v4[v5];
  if (v5)
  {
    v7 = 8 * v5;
    while (!llvm::AttributeMask::contains(a2, *v4))
    {
      ++v4;
      v7 -= 8;
      if (!v7)
      {
        v4 = v6;
        goto LABEL_13;
      }
    }
  }

  v8 = v4 + 1;
  if (v4 != v6 && v8 != v6)
  {
    do
    {
      if (!llvm::AttributeMask::contains(a2, *v8))
      {
        *v4++ = *v8;
      }

      ++v8;
    }

    while (v8 != v6);
  }

LABEL_13:
  *(a1 + 16) = (v4 - *(a1 + 8)) >> 3;
  return a1;
}

uint64_t llvm::AttributeSet::getAttribute(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7[0] = a2;
  v7[1] = a3;
  v8 = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>((v4 + 24), v7, &v8, a4);
  result = 0;
  if (v5)
  {
    return *(v8 + 16);
  }

  return result;
}

uint64_t llvm::AttributeSetNode::getAlignment(llvm::AttributeSetNode *this)
{
  EnumAttribute = llvm::AttributeSetNode::findEnumAttribute(this, 75);
  if (v2)
  {
    v3 = *(EnumAttribute + 16);
    v4 = __clz(v3) ^ 0x3F | 0x100;
    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5 >> 8;
  }

  else
  {
    LOBYTE(v5) = 0;
    v6 = 0;
  }

  return v5 | (v6 << 8);
}

uint64_t llvm::AttributeSetNode::getAllocSizeArgs(llvm::AttributeSetNode *this)
{
  EnumAttribute = llvm::AttributeSetNode::findEnumAttribute(this, 77);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  if (*(EnumAttribute + 16) == 0xFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(EnumAttribute + 16);
  }

  HIDWORD(v5) = v3;
  LODWORD(v5) = HIDWORD(*(EnumAttribute + 16));
  return v5;
}

uint64_t llvm::AttributeSetNode::getVScaleRangeMin(llvm::AttributeSetNode *this)
{
  EnumAttribute = llvm::AttributeSetNode::findEnumAttribute(this, 84);
  if (v2)
  {
    return *(EnumAttribute + 20);
  }

  else
  {
    return 1;
  }
}

uint64_t llvm::AttributeSetNode::getVScaleRangeMax(llvm::AttributeSetNode *this)
{
  EnumAttribute = llvm::AttributeSetNode::findEnumAttribute(this, 84);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v5 = *(EnumAttribute + 16);
  v3 = HIDWORD(v5);
  v4 = v5 & 0xFFFFFF00;
  LODWORD(v5) = v5;
  LODWORD(v8) = v3;
  if (!*(EnumAttribute + 16))
  {
    LODWORD(v5) = 0;
  }

  HIDWORD(v8) = v5 | v4;
  *(&v7 + 1) = *(EnumAttribute + 16) != 0;
  *&v7 = v8;
  return v7 >> 32;
}

void llvm::AttributeSet::getAsString(std::string *__return_ptr a1@<X8>, llvm::AttributeSetNode **this@<X0>, BOOL a3@<W1>)
{
  v3 = *this;
  if (v3)
  {
    llvm::AttributeSetNode::getAsString(v3, a3, a1);
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(a1, &str_119);
  }
}

void llvm::AttributeSetNode::getAsString(llvm::AttributeSetNode *this@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  *&a3->__r_.__value_.__l.__data_ = 0uLL;
  a3->__r_.__value_.__r.__words[2] = 0;
  v4 = *(this + 2);
  if (v4)
  {
    v6 = 0;
    v7 = (this + 48);
    v8 = -8 * v4;
    do
    {
      if (v6)
      {
        std::string::push_back(a3, 32);
      }

      llvm::Attribute::getAsString(&__p, v7, a2);
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

      std::string::append(a3, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v7 = (v7 + 8);
      v6 -= 8;
    }

    while (v8 != v6);
  }
}

BOOL llvm::AttributeSet::hasParentContext(unsigned int **a1, void *a2)
{
  v9[16] = *MEMORY[0x277D85DE8];
  v8[0] = v9;
  v8[1] = 0x2000000000;
  llvm::AttributeSetNode::Profile(*a1, v8);
  NodeOrInsertPos = llvm::FoldingSetBase::FindNodeOrInsertPos(*a2 + 296, v8, &v7, llvm::FoldingSet<llvm::AttributeSetNode>::getFoldingSetInfo(void)::Info);
  v5 = *a1;
  if (v8[0] != v9)
  {
    free(v8[0]);
  }

  return NodeOrInsertPos == v5;
}

unsigned int *llvm::AttributeSetNode::Profile(unsigned int *result, unsigned int *a2)
{
  v2 = result[2];
  if (v2)
  {
    v4 = (result + 12);
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v6);
      result = llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, SHIDWORD(v6));
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t llvm::AttributeSetNode::AttributeSetNode(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 12) = 0u;
  v5 = a1 + 12;
  *(a1 + 28) = 0u;
  if (a3)
  {
    v6 = (a1 + 48);
    memmove((a1 + 48), a2, 8 * a3);
    if (v3)
    {
      v8 = 8 * v3;
      while (1)
      {
        v9 = *v6;
        if (!*v6)
        {
          goto LABEL_13;
        }

        if (*(v9 + 8) != 2)
        {
          break;
        }

        v10 = *(v9 + 12);
        *&v16 = v9 + 24;
        *(&v16 + 1) = v10;
        v17 = v9;
        v18 = 0;
        if ((llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>((a1 + 24), &v16, &v18, v7) & 1) == 0)
        {
          v11 = *(a1 + 32);
          v12 = *(a1 + 40);
          if (4 * v11 + 4 >= 3 * v12)
          {
            v12 *= 2;
          }

          else if (v12 + ~v11 - *(a1 + 36) > v12 >> 3)
          {
LABEL_9:
            v13 = v18;
            ++*(a1 + 32);
            if (*v13 != -1)
            {
              --*(a1 + 36);
            }

            *v13 = v16;
            v13[2] = v17;
            goto LABEL_14;
          }

          llvm::DenseMap<llvm::StringRef,llvm::jitlink::Block *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Block *>>::grow(a1 + 24, v12);
          v18 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>((a1 + 24), &v16, &v18, v14);
          goto LABEL_9;
        }

LABEL_14:
        ++v6;
        v8 -= 8;
        if (!v8)
        {
          return a1;
        }
      }

      LODWORD(v9) = *(v9 + 12);
LABEL_13:
      *(v5 + v9 / 8) |= 1 << (v9 & 7);
      goto LABEL_14;
    }
  }

  return a1;
}

uint64_t *llvm::AttributeSetNode::getSorted(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v14[16] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v5 = *a1;
  v13[0] = v14;
  v13[1] = 0x2000000000;
  v6 = 8 * a3;
  v7 = 8 * a3;
  v8 = a2;
  do
  {
    v9 = *v8++;
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v13, v9);
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v13, SHIDWORD(v9));
    v7 -= 8;
  }

  while (v7);
  v12 = 0;
  NodeOrInsertPos = llvm::FoldingSetBase::FindNodeOrInsertPos(v5 + 296, v13, &v12, llvm::FoldingSet<llvm::AttributeSetNode>::getFoldingSetInfo(void)::Info);
  if (!NodeOrInsertPos)
  {
    NodeOrInsertPos = operator new(v6 + 48);
    llvm::AttributeSetNode::AttributeSetNode(NodeOrInsertPos, a2, a3);
    llvm::FoldingSetBase::InsertNode(v5 + 296, NodeOrInsertPos, v12, llvm::FoldingSet<llvm::AttributeSetNode>::getFoldingSetInfo(void)::Info);
  }

  if (v13[0] != v14)
  {
    free(v13[0]);
  }

  return NodeOrInsertPos;
}

uint64_t llvm::AttributeSetNode::findEnumAttribute(uint64_t a1, int a2)
{
  if (((*(a1 + a2 / 8 + 12) >> (a2 & 7)) & 1) == 0)
  {
    return 0;
  }

  v2 = (a1 + 48);
  v3 = *(a1 + 32);
  if (8 * *(a1 + 8) != 8 * v3)
  {
    v4 = (8 * *(a1 + 8) - 8 * v3) >> 3;
    do
    {
      v5 = v4 >> 1;
      v6 = &v2[v4 >> 1];
      v7 = *v6;
      if (*v6)
      {
        LODWORD(v7) = *(v7 + 12);
      }

      v8 = v6 + 1;
      v4 += ~v5;
      if (v7 < a2)
      {
        v2 = v8;
      }

      else
      {
        v4 = v5;
      }
    }

    while (v4);
  }

  return *v2;
}

uint64_t llvm::AttributeListImpl::AttributeListImpl(uint64_t a1, void *__src, uint64_t a3)
{
  v4 = __src;
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 12) = 0;
  v6 = a1 + 12;
  *(a1 + 28) = 0;
  *(a1 + 20) = 0;
  if (a3)
  {
    memmove((a1 + 40), __src, 8 * a3);
  }

  v7 = *v4;
  if (*v4)
  {
    v8 = (*v4 + 48);
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = *v4 + 48 + 8 * *(v7 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (v8 != v9)
  {
    while (1)
    {
      v10 = *v8;
      if (!*v8)
      {
        goto LABEL_13;
      }

      if (*(v10 + 8) != 2)
      {
        break;
      }

LABEL_14:
      if (++v8 == v9)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v10) = *(v10 + 12);
LABEL_13:
    *(v6 + v10 / 8) |= 1 << (v10 & 7);
    goto LABEL_14;
  }

LABEL_15:
  if (a3)
  {
    v11 = &v4[a3];
    do
    {
      v12 = *v4;
      if (*v4)
      {
        v13 = (*v4 + 48);
      }

      else
      {
        v13 = 0;
      }

      if (v12)
      {
        v14 = *v4 + 48 + 8 * *(v12 + 8);
      }

      else
      {
        v14 = 0;
      }

      while (v13 != v14)
      {
        v15 = *v13;
        if (*v13)
        {
          if (*(v15 + 8) == 2)
          {
            goto LABEL_27;
          }

          LODWORD(v15) = *(v15 + 12);
        }

        *(a1 + 24 + v15 / 8) |= 1 << (v15 & 7);
LABEL_27:
        ++v13;
      }

      ++v4;
    }

    while (v4 != v11);
  }

  return a1;
}

unsigned int *llvm::AttributeListImpl::Profile(unsigned int *result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 8 * a3;
    do
    {
      v6 = *a2++;
      llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v4, v6);
      result = llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v4, SHIDWORD(v6));
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

BOOL llvm::AttributeListImpl::hasAttrSomewhere(uint64_t a1, int a2, int *a3)
{
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 7;
  }

  v4 = 1 << (a2 & 7);
  v5 = (v4 & *(a1 + (v3 >> 3) + 24));
  if (a3)
  {
    if ((v4 & *(a1 + (v3 >> 3) + 24)) != 0)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        v7 = v3 >> 3;
        v8 = (a1 + 40);
        v9 = -1;
        while (!*v8 || (v4 & *(*v8 + v7 + 12)) == 0)
        {
          ++v9;
          ++v8;
          if (!--v6)
          {
            return v5 != 0;
          }
        }

        *a3 = v9;
      }
    }
  }

  return v5 != 0;
}

uint64_t *llvm::AttributeList::getImpl(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v10[16] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v9[0] = v10;
  v9[1] = 0x2000000000;
  llvm::AttributeListImpl::Profile(v9, a2, a3);
  v8 = 0;
  NodeOrInsertPos = llvm::FoldingSetBase::FindNodeOrInsertPos(v5 + 280, v9, &v8, llvm::FoldingSet<llvm::AttributeListImpl>::getFoldingSetInfo(void)::Info);
  if (!NodeOrInsertPos)
  {
    NodeOrInsertPos = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v5 + 2072), 8 * a3 + 40, 3);
    llvm::AttributeListImpl::AttributeListImpl(NodeOrInsertPos, a2, a3);
    llvm::FoldingSetBase::InsertNode(v5 + 280, NodeOrInsertPos, v8, llvm::FoldingSet<llvm::AttributeListImpl>::getFoldingSetInfo(void)::Info);
  }

  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  return NodeOrInsertPos;
}

uint64_t *llvm::AttributeList::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v12[4] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v4 = a2;
  v6 = a2 + 16 * a3;
  v7 = *(v6 - 16);
  if (v7 == -1)
  {
    if (a3 == 1)
    {
      v7 = -1;
    }

    else
    {
      v7 = *(v6 - 32);
    }
  }

  v10 = v12;
  v11 = 0x400000000;
  llvm::SmallVectorImpl<llvm::AttributeSet>::resizeImpl<false>(&v10, (v7 + 2));
  if ((a3 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    do
    {
      *(v10 + (*v4 + 1)) = *(v4 + 8);
      v4 += 16;
    }

    while (v4 != v6);
  }

  Impl = llvm::AttributeList::getImpl(a1, v10, v11);
  if (v10 != v12)
  {
    free(v10);
  }

  return Impl;
}

uint64_t *llvm::AttributeList::get(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, unint64_t a5)
{
  v18[8] = *MEMORY[0x277D85DE8];
  LODWORD(v10) = a5 + 3;
  v11 = a5;
  do
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = *&a4[8 * v11-- - 8];
    v10 = (v10 - 1);
  }

  while (!v12);
  if (!v10)
  {
LABEL_7:
    if (a3)
    {
      LODWORD(v10) = 2;
    }

    else
    {
      if (!a2)
      {
        return 0;
      }

      LODWORD(v10) = 1;
    }

    v16 = v18;
    v17 = 0x800000000;
    goto LABEL_12;
  }

  v16 = v18;
  v17 = 0x800000000;
  if (v10 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v16, v18, v10, 8);
    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v16, a2);
    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v16, a3);
    goto LABEL_14;
  }

LABEL_12:
  llvm::SmallVectorTemplateBase<void *,true>::push_back(&v16, a2);
  if (v10 == 1)
  {
    goto LABEL_17;
  }

  llvm::SmallVectorTemplateBase<void *,true>::push_back(&v16, a3);
  if (v10 < 3)
  {
    goto LABEL_17;
  }

LABEL_14:
  v13 = (v10 - 2);
  if (a5 < v13)
  {
    v13 = a5;
  }

  llvm::SmallVectorImpl<llvm::AttributeSet>::insert<llvm::AttributeSet const*,void>(&v16, v16 + 8 * v17, a4, &a4[8 * v13]);
LABEL_17:
  Impl = llvm::AttributeList::getImpl(a1, v16, v17);
  if (v16 != v18)
  {
    free(v16);
  }

  return Impl;
}

uint64_t *llvm::AttributeList::get(uint64_t *a1, int a2, uint64_t a3)
{
  v10[8] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v5 = a2 + 1;
  v8 = v10;
  v9 = 0x800000000;
  llvm::SmallVectorImpl<llvm::AttributeSet>::resizeImpl<false>(&v8, (a2 + 2));
  *(v8 + v5) = a3;
  Impl = llvm::AttributeList::getImpl(a1, v8, v9);
  if (v8 != v10)
  {
    free(v8);
  }

  return Impl;
}

{
  Sorted = llvm::AttributeSetNode::getSorted(a1, *(a3 + 8), *(a3 + 16));

  return llvm::AttributeList::get(a1, a2, Sorted);
}

uint64_t *llvm::AttributeList::get(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  Impl = a3;
  v31[8] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a3 == 1)
    {
      return *a2;
    }

    else
    {
      LODWORD(v5) = 0;
      v6 = 8 * a3;
      v7 = a2;
      v8 = &a2[a3];
      do
      {
        v9 = *v7;
        if (*v7)
        {
          LODWORD(v9) = *(v9 + 8);
        }

        if (v5 <= v9)
        {
          v5 = v9;
        }

        else
        {
          v5 = v5;
        }

        ++v7;
        v6 -= 8;
      }

      while (v6);
      if (v5)
      {
        v29 = v31;
        v30 = 0x800000000;
        llvm::SmallVectorImpl<llvm::AttributeSet>::resizeImpl<false>(&v29, v5);
        for (i = 0; i != v5; ++i)
        {
          v25 = a1;
          v26 = v28;
          v11 = a2;
          v27 = 0x800000000;
          do
          {
            v12 = *v11;
            if (*v11 && i < *(v12 + 8))
            {
              v13 = *(v12 + 8 * i + 40);
              v22 = v24;
              v23 = 0x800000000;
              if (v13)
              {
                v14 = (v13 + 48);
                v15 = (v13 + 48 + 8 * *(v13 + 8));
              }

              else
              {
                v14 = 0;
                v15 = 0;
              }
            }

            else
            {
              v14 = 0;
              v15 = 0;
              v22 = v24;
              v23 = 0x800000000;
            }

            llvm::SmallVectorImpl<llvm::AttributeSet>::insert<llvm::AttributeSet const*,void>(&v22, v24, v14, v15);
            v16 = v22;
            if (v23)
            {
              v17 = 8 * v23;
              do
              {
                v18 = *v16++;
                llvm::AttrBuilder::addAttribute(&v25, v18);
                v17 -= 8;
              }

              while (v17);
              v16 = v22;
            }

            if (v16 != v24)
            {
              free(v16);
            }

            ++v11;
          }

          while (v11 != v8);
          Sorted = llvm::AttributeSetNode::getSorted(a1, v26, v27);
          *(v29 + i) = Sorted;
          if (v26 != v28)
          {
            free(v26);
          }
        }

        Impl = llvm::AttributeList::getImpl(a1, v29, v30);
        if (v29 != v31)
        {
          free(v29);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return Impl;
}

uint64_t *llvm::AttributeList::addAttributeAtIndex(uint64_t **a1, uint64_t *a2, uint64_t a3, int a4)
{
  v5 = a3;
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  if (*a1 && (a3 + 1) < *(v8 + 2) && (v9 = v8[(a3 + 1) + 5]) != 0)
  {
    if ((*(v9 + a4 / 8 + 12) >> (a4 & 7)))
    {
      return v8;
    }

    v10 = (v9 + 48);
    v11 = (v9 + 48 + 8 * *(v9 + 8));
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v15 = v17;
  v16 = 0x800000000;
  llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v15, v10, v11);
  v12 = llvm::Attribute::get(a2, a4, 0);
  llvm::SmallVectorTemplateBase<void *,true>::push_back(&v15, v12);
  v13 = llvm::AttributeSetNode::get(a2, v15, v16);
  v8 = llvm::AttributeList::setAttributesAtIndex(a1, a2, v5, v13);
  if (v15 != v17)
  {
    free(v15);
  }

  return v8;
}

uint64_t *llvm::AttributeList::setAttributesAtIndex(void *a1, uint64_t *a2, int a3, uint64_t a4)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v7 = a3 + 1;
  v8 = *a1;
  if (*a1)
  {
    v9 = (*a1 + 40);
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = (*a1 + 40 + 8 * *(v8 + 8));
  }

  else
  {
    v10 = 0;
  }

  v16 = v18;
  v17 = 0x400000000;
  llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v16, v9, v10);
  v11 = v17;
  if (v17 > v7)
  {
    *(v16 + v7) = a4;
    v12 = v16;
    goto LABEL_10;
  }

  llvm::SmallVectorImpl<llvm::AttributeSet>::resizeImpl<false>(&v16, (a3 + 2));
  v11 = v17;
  *(v16 + v7) = a4;
  v12 = v16;
  if (v11)
  {
LABEL_10:
    while (1)
    {
      v13 = v11;
      if (v12[v11 - 1])
      {
        break;
      }

      --v11;
      LODWORD(v17) = v13 - 1;
      if (v13 == 1)
      {
        goto LABEL_12;
      }
    }

    Impl = llvm::AttributeList::getImpl(a2, v12, v11);
    v12 = v16;
  }

  else
  {
LABEL_12:
    Impl = 0;
  }

  if (v12 != v18)
  {
    free(v12);
  }

  return Impl;
}

uint64_t llvm::AttrBuilder::addAttribute(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (*(a2 + 8) != 2)
  {
    LODWORD(a2) = *(a2 + 12);
LABEL_5:
    addAttributeImpl<llvm::Attribute::AttrKind>((a1 + 8), a2, v2);
    return a1;
  }

  addAttributeImpl<llvm::StringRef>((a1 + 8), (a2 + 24), *(a2 + 12), a2);
  return a1;
}

uint64_t *llvm::AttributeList::addParamAttribute(void *a1, uint64_t *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v9 = *a1;
  if (*a1)
  {
    v10 = (*a1 + 40);
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = (*a1 + 40 + 8 * *(v9 + 8));
  }

  else
  {
    v11 = 0;
  }

  v25 = v27;
  v26 = 0x400000000;
  llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v25, v10, v11);
  v12 = a3[a4 - 1];
  if (v26 <= v12 + 2)
  {
    llvm::SmallVectorImpl<llvm::AttributeSet>::resizeImpl<false>(&v25, (v12 + 3));
  }

  if ((a4 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = 4 * a4;
    do
    {
      v14 = *a3 + 2;
      v15 = *(v25 + v14);
      v21 = a2;
      v22 = v24;
      v23 = 0x800000000;
      if (v15)
      {
        v16 = (v15 + 48);
        v17 = (v15 + 48 + 8 * *(v15 + 8));
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      llvm::SmallVectorImpl<llvm::AttributeSet>::insert<llvm::AttributeSet const*,void>(&v22, v24, v16, v17);
      llvm::AttrBuilder::addAttribute(&v21, a5);
      Sorted = llvm::AttributeSetNode::getSorted(a2, v22, v23);
      *(v25 + v14) = Sorted;
      if (v22 != v24)
      {
        free(v22);
      }

      ++a3;
      v13 -= 4;
    }

    while (v13);
  }

  Impl = llvm::AttributeList::getImpl(a2, v25, v26);
  if (v25 != v27)
  {
    free(v25);
  }

  return Impl;
}

uint64_t *llvm::AttributeList::removeAttributeAtIndex(void *a1, uint64_t *a2, int a3, uint64_t a4)
{
  v7 = *a1;
  if (*a1 && (a3 + 1) < *(v7 + 8))
  {
    v8 = *(v7 + 8 * (a3 + 1) + 40);
  }

  else
  {
    v8 = 0;
  }

  v11 = v8;
  v9 = llvm::AttributeSet::removeAttribute(&v11, a2, a4);
  if (v8 == v9)
  {
    return *a1;
  }

  return llvm::AttributeList::setAttributesAtIndex(a1, a2, a3, v9);
}

uint64_t *llvm::AttributeList::removeAttributesAtIndex(void *a1, uint64_t *a2, int a3, uint64_t a4)
{
  v7 = *a1;
  if (*a1 && (a3 + 1) < *(v7 + 8))
  {
    v8 = *(v7 + 8 * (a3 + 1) + 40);
  }

  else
  {
    v8 = 0;
  }

  v11 = v8;
  v9 = llvm::AttributeSet::removeAttributes(&v11, a2, a4);
  if (v8 == v9)
  {
    return *a1;
  }

  return llvm::AttributeList::setAttributesAtIndex(a1, a2, a3, v9);
}

uint64_t **llvm::AttrBuilder::addDereferenceableAttr(uint64_t **this, uint64_t a2)
{
  if (a2)
  {
    v3 = llvm::Attribute::get(*this, 78, a2);
    llvm::AttrBuilder::addAttribute(this, v3);
  }

  return this;
}

uint64_t **llvm::AttrBuilder::addDereferenceableOrNullAttr(uint64_t **this, uint64_t a2)
{
  if (a2)
  {
    v3 = llvm::Attribute::get(*this, 79, a2);
    llvm::AttrBuilder::addAttribute(this, v3);
  }

  return this;
}

uint64_t llvm::AttributeList::hasAttributeAtIndex(uint64_t *a1, int a2, uint64_t a3, unint64_t *a4)
{
  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if ((a2 + 1) >= *(v6 + 8))
  {
    return 0;
  }

  v7 = *(v6 + 8 * (a2 + 1) + 40);
  if (!v7)
  {
    return 0;
  }

  v10[1] = v4;
  v10[2] = v5;
  v9[0] = a3;
  v9[1] = a4;
  v10[0] = 0;
  return llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>((v7 + 24), v9, v10, a4);
}

uint64_t llvm::AttributeList::getAttributeAtIndex(uint64_t *a1, int a2, int a3)
{
  v3 = *a1;
  if (!*a1 || (a2 + 1) >= *(v3 + 8))
  {
    return 0;
  }

  result = *(v3 + 8 * (a2 + 1) + 40);
  if (result)
  {
    result = llvm::AttributeSetNode::findEnumAttribute(result, a3);
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::AttributeList::getRetAlignment(llvm::AttributeList *this)
{
  v1 = *this;
  if (!*this)
  {
    goto LABEL_6;
  }

  if (*(v1 + 8) < 2u)
  {
    LODWORD(v1) = 0;
LABEL_6:
    LOBYTE(v2) = 0;
    return v2 | (v1 << 8);
  }

  v2 = *(v1 + 48);
  if (v2)
  {
    LOWORD(v2) = llvm::AttributeSetNode::getAlignment(v2);
    LODWORD(v1) = BYTE1(v2);
  }

  else
  {
    LODWORD(v1) = 0;
  }

  return v2 | (v1 << 8);
}

uint64_t llvm::AttributeList::getParamAlignment(llvm::AttributeList *this, int a2)
{
  v2 = *this;
  if (!*this)
  {
    goto LABEL_6;
  }

  if ((a2 + 2) >= *(v2 + 8))
  {
    LODWORD(v2) = 0;
LABEL_6:
    LOBYTE(v3) = 0;
    return v3 | (v2 << 8);
  }

  v3 = *(v2 + 8 * (a2 + 2) + 40);
  if (v3)
  {
    LOWORD(v3) = llvm::AttributeSetNode::getAlignment(v3);
    LODWORD(v2) = BYTE1(v3);
  }

  else
  {
    LODWORD(v2) = 0;
  }

  return v3 | (v2 << 8);
}

uint64_t llvm::AttributeList::getParamStructRetType(llvm::AttributeList *this, int a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  if ((a2 + 2) >= *(v2 + 8))
  {
    return 0;
  }

  result = *(v2 + 8 * (a2 + 2) + 40);
  if (result)
  {
    EnumAttribute = llvm::AttributeSetNode::findEnumAttribute(result, 74);
    result = 0;
    if (v5)
    {
      if (EnumAttribute)
      {
        return *(EnumAttribute + 16);
      }
    }
  }

  return result;
}

uint64_t llvm::AttributeList::getParamElementType(llvm::AttributeList *this, int a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  if ((a2 + 2) >= *(v2 + 8))
  {
    return 0;
  }

  result = *(v2 + 8 * (a2 + 2) + 40);
  if (result)
  {
    EnumAttribute = llvm::AttributeSetNode::findEnumAttribute(result, 71);
    result = 0;
    if (v5)
    {
      if (EnumAttribute)
      {
        return *(EnumAttribute + 16);
      }
    }
  }

  return result;
}

uint64_t llvm::AttributeList::getAllocKind(llvm::AttributeList *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  if (!*(v1 + 8))
  {
    return 0;
  }

  result = *(v1 + 40);
  if (!result)
  {
    return result;
  }

  EnumAttribute = llvm::AttributeSetNode::findEnumAttribute(result, 76);
  if (v4)
  {
    return *(EnumAttribute + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::AttributeList::getMemoryEffects(llvm::AttributeList *this)
{
  v1 = *this;
  if (!*this)
  {
    return 63;
  }

  if (*(v1 + 8))
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      EnumAttribute = llvm::AttributeSetNode::findEnumAttribute(v2, 80);
      if (v4)
      {
        return *(EnumAttribute + 16);
      }
    }
  }

  return 63;
}

BOOL llvm::AttributeList::hasParentContext(uint64_t a1, void *a2)
{
  v9[16] = *MEMORY[0x277D85DE8];
  v8[0] = v9;
  v8[1] = 0x2000000000;
  llvm::AttributeListImpl::Profile(v8, (*a1 + 40), *(*a1 + 8));
  NodeOrInsertPos = llvm::FoldingSetBase::FindNodeOrInsertPos(*a2 + 280, v8, &v7, llvm::FoldingSet<llvm::AttributeListImpl>::getFoldingSetInfo(void)::Info);
  v5 = *a1;
  if (v8[0] != v9)
  {
    free(v8[0]);
  }

  return NodeOrInsertPos == v5;
}

void llvm::AttributeList::print(llvm::AttributeSetNode **this, llvm::raw_ostream *a2)
{
  v4 = *(a2 + 4);
  if (*(a2 + 3) - v4 > 0xEuLL)
  {
    qmemcpy(v4, "AttributeList[\n", 15);
    *(a2 + 4) += 15;
  }

  else
  {
    llvm::raw_ostream::write(a2, "AttributeList[\n", 0xFuLL);
  }

  if (*this)
  {
    v5 = *(*this + 2);
    if (v5)
    {
      v6 = 0;
      v7 = 10;
      while (1)
      {
        v8 = *this;
        if (*this)
        {
          if (v6 < v8[2] && *&v8[v7])
          {
            break;
          }
        }

LABEL_47:
        ++v6;
        v7 += 2;
        if (v5 == v6)
        {
          goto LABEL_48;
        }
      }

      v9 = *(a2 + 4);
      if (*(a2 + 3) - v9 > 3uLL)
      {
        *v9 = 544940064;
        *(a2 + 4) += 4;
      }

      else
      {
        llvm::raw_ostream::write(a2, "  { ", 4uLL);
      }

      v10 = *(a2 + 4);
      v11 = *(a2 + 3) - v10;
      if (v6)
      {
        if (v6 == 1)
        {
          if (v11 <= 5)
          {
            v12 = a2;
            v13 = "return";
            v14 = 6;
LABEL_28:
            llvm::raw_ostream::write(v12, v13, v14);
            goto LABEL_29;
          }

          *(v10 + 4) = 28274;
          *v10 = 1970562418;
          v15 = *(a2 + 4) + 6;
        }

        else
        {
          if (v11 > 3)
          {
            *v10 = 677868129;
            *(a2 + 4) += 4;
          }

          else
          {
            llvm::raw_ostream::write(a2, "arg(", 4uLL);
          }

          write_unsigned<unsigned long>(a2, v6 - 2, 0, 0, 0);
          v16 = *(a2 + 4);
          if (*(a2 + 3) == v16)
          {
            v12 = a2;
            v13 = ")";
            v14 = 1;
            goto LABEL_28;
          }

          *v16 = 41;
          v15 = *(a2 + 4) + 1;
        }
      }

      else
      {
        if (v11 <= 7)
        {
          v12 = a2;
          v13 = "function";
          v14 = 8;
          goto LABEL_28;
        }

        *v10 = 0x6E6F6974636E7566;
        v15 = *(a2 + 4) + 8;
      }

      *(a2 + 4) = v15;
LABEL_29:
      v17 = *(a2 + 4);
      if (*(a2 + 3) - v17 > 3uLL)
      {
        *v17 = 540949792;
        *(a2 + 4) += 4;
      }

      else
      {
        llvm::raw_ostream::write(a2, " => ", 4uLL);
      }

      v18 = *this;
      if (*this)
      {
        if (v6 >= *(v18 + 2))
        {
          v18 = 0;
        }

        else
        {
          v18 = *(v18 + v7 * 4);
        }
      }

      v24 = v18;
      llvm::AttributeSet::getAsString(&__p, &v24, 0);
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

      llvm::raw_ostream::write(a2, p_p, size);
      v21 = *(a2 + 4);
      if ((*(a2 + 3) - v21) > 2)
      {
        *(v21 + 2) = 10;
        *v21 = 32032;
        *(a2 + 4) += 3;
      }

      else
      {
        llvm::raw_ostream::write(a2, " }\n", 3uLL);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_47;
    }
  }

LABEL_48:
  v22 = *(a2 + 4);
  if (*(a2 + 3) - v22 > 1uLL)
  {
    *v22 = 2653;
    *(a2 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(a2, "]\n", 2uLL);
  }
}

uint64_t addAttributeImpl<llvm::StringRef>(unsigned int *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v13 = a3;
  v6 = *a1;
  v7 = a1[2];
  v14 = 0;
  v8 = std::__lower_bound_bisecting[abi:nn200100]<std::_ClassicAlgPolicy,llvm::Attribute *,llvm::StringRef,std::__identity,AttributeComparator>(v6, &v12, v7);
  v9 = v8;
  if (v8 != (*a1 + 8 * a1[2]) && (v10 = *v8, *v9) && *(v10 + 8) == 2 && (result = llvm::AttributeImpl::hasAttribute(v10, v12, v13), result))
  {
    *v9 = a4;
  }

  else
  {
    v15 = a4;
    return llvm::SmallVectorImpl<llvm::Attribute>::insert_one_impl<llvm::Attribute>(a1, v9, &v15);
  }

  return result;
}

uint64_t *addAttributeImpl<llvm::Attribute::AttrKind>(unsigned int *a1, int a2, uint64_t a3)
{
  v7 = a2;
  result = llvm::lower_bound<llvm::SmallVector<llvm::Attribute,8u> &,llvm::Attribute::AttrKind &,AttributeComparator>(a1, &v7);
  if (result != (*a1 + 8 * a1[2]))
  {
    v6 = *result;
    if (*result)
    {
      if (*(v6 + 8) != 2 && *(v6 + 12) == v7)
      {
        goto LABEL_5;
      }
    }

    else if (!v7)
    {
LABEL_5:
      *result = a3;
      return result;
    }
  }

  v8 = a3;
  return llvm::SmallVectorImpl<llvm::Attribute>::insert_one_impl<llvm::Attribute>(a1, result, &v8);
}

void *llvm::lower_bound<llvm::SmallVector<llvm::Attribute,8u> &,llvm::Attribute::AttrKind &,AttributeComparator>(uint64_t a1, _DWORD *a2)
{
  result = *a1;
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      v5 = v4 >> 1;
      v6 = &result[v4 >> 1];
      v7 = *v6;
      if (!*v6)
      {
        goto LABEL_5;
      }

      if (*(v7 + 8) != 2)
      {
        break;
      }

LABEL_7:
      v4 = v5;
      if (!v5)
      {
        return result;
      }
    }

    LODWORD(v7) = *(v7 + 12);
LABEL_5:
    v8 = v6 + 1;
    v9 = v4 + ~v5;
    if (v7 < *a2)
    {
      v5 = v9;
      result = v8;
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t llvm::AttrBuilder::getAttribute(uint64_t a1, int a2)
{
  v5 = a2;
  v3 = llvm::lower_bound<llvm::SmallVector<llvm::Attribute,8u> &,llvm::Attribute::AttrKind &,AttributeComparator>(a1 + 8, &v5);
  if (v3 == (*(a1 + 8) + 8 * *(a1 + 16)))
  {
    return 0;
  }

  result = *v3;
  if (!result)
  {
    if (!v5)
    {
      return result;
    }

    return 0;
  }

  if (*(result + 8) == 2 || *(result + 12) != v5)
  {
    return 0;
  }

  return result;
}

uint64_t **llvm::AttrBuilder::addAlignmentAttr(uint64_t **a1, __int16 a2)
{
  if ((a2 & 0x100) != 0)
  {
    v3 = llvm::Attribute::get(*a1, 75, 1 << a2);
    llvm::AttrBuilder::addAttribute(a1, v3);
  }

  return a1;
}

uint64_t **llvm::AttrBuilder::addStackAlignmentAttr(uint64_t **a1, __int16 a2)
{
  if ((a2 & 0x100) != 0)
  {
    v3 = llvm::Attribute::get(*a1, 82, 1 << a2);
    llvm::AttrBuilder::addAttribute(a1, v3);
  }

  return a1;
}

uint64_t llvm::AttrBuilder::addAllocSizeAttrFromRawRepr(uint64_t **this, uint64_t a2)
{
  v3 = llvm::Attribute::get(*this, 77, a2);

  return llvm::AttrBuilder::addAttribute(this, v3);
}

uint64_t **llvm::AttrBuilder::addVScaleRangeAttrFromRawRepr(uint64_t **this, uint64_t a2)
{
  if (a2)
  {
    v3 = llvm::Attribute::get(*this, 84, a2);
    llvm::AttrBuilder::addAttribute(this, v3);
  }

  return this;
}

uint64_t **llvm::AttrBuilder::addUWTableAttr(uint64_t **a1, int a2)
{
  if (a2)
  {
    v3 = llvm::Attribute::get(*a1, 83, a2);
    llvm::AttrBuilder::addAttribute(a1, v3);
  }

  return a1;
}

uint64_t llvm::AttrBuilder::addMemoryAttr(uint64_t **a1, unsigned int a2)
{
  v3 = llvm::Attribute::get(*a1, 80, a2);

  return llvm::AttrBuilder::addAttribute(a1, v3);
}

uint64_t **llvm::AttrBuilder::addNoFPClassAttr(uint64_t **a1, unsigned int a2)
{
  if (a2)
  {
    v3 = llvm::Attribute::get(*a1, 81, a2);
    llvm::AttrBuilder::addAttribute(a1, v3);
  }

  return a1;
}

uint64_t llvm::AttrBuilder::addAllocKindAttr(uint64_t **a1, uint64_t a2)
{
  v3 = llvm::Attribute::get(*a1, 76, a2);

  return llvm::AttrBuilder::addAttribute(a1, v3);
}

uint64_t llvm::AttrBuilder::addByValAttr(uint64_t **this, llvm::Type *a2)
{
  v3 = llvm::Attribute::get(*this, 70, a2);

  return llvm::AttrBuilder::addAttribute(this, v3);
}

uint64_t llvm::AttrBuilder::addStructRetAttr(uint64_t **this, llvm::Type *a2)
{
  v3 = llvm::Attribute::get(*this, 74, a2);

  return llvm::AttrBuilder::addAttribute(this, v3);
}

uint64_t llvm::AttrBuilder::addInAllocaAttr(uint64_t **this, llvm::Type *a2)
{
  v3 = llvm::Attribute::get(*this, 72, a2);

  return llvm::AttrBuilder::addAttribute(this, v3);
}

uint64_t llvm::AttrBuilder::getAttribute(uint64_t a1, const void *a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v11 = 0;
  v6 = std::__lower_bound_bisecting[abi:nn200100]<std::_ClassicAlgPolicy,llvm::Attribute *,llvm::StringRef,std::__identity,AttributeComparator>(v4, &v9, v5);
  if (v6 == (*(a1 + 8) + 8 * *(a1 + 16)))
  {
    return 0;
  }

  v7 = *v6;
  if (!*v6 || *(v7 + 8) != 2)
  {
    return 0;
  }

  if (llvm::AttributeImpl::hasAttribute(*v6, v9, v10))
  {
    return v7;
  }

  return 0;
}

BOOL llvm::AttributeFuncs::isNoFPClassCompatibleType(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (a1 && v1 == 17)
  {
    do
    {
      a1 = *(a1 + 24);
      v1 = *(a1 + 8);
      if (a1)
      {
        v2 = v1 == 17;
      }

      else
      {
        v2 = 0;
      }
    }

    while (v2);
  }

  if ((v1 & 0xFE) == 0x12)
  {
    v1 = *(**(a1 + 16) + 8);
  }

  return v1 < 6u && ((0x2Fu >> v1) & 1) != 0 || (v1 & 0xFD) == 4;
}

uint64_t llvm::AttributeFuncs::typeIncompatible@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = 0;
  v6 = 0;
  *a3 = 0;
  a3[1] = 0;
  a3[4] = 0;
  a3[3] = 0;
  a3[2] = (a3 + 3);
  v7 = *(result + 8);
  if (v7 != 13)
  {
    if (a2)
    {
      v6 = 2;
      *a3 = 2;
      if ((a2 & 2) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = 0;
      if ((a2 & 2) != 0)
      {
LABEL_4:
        v6 |= 0x1000000000000uLL;
        v5 = 16;
        *a3 = v6;
        a3[1] = 16;
        goto LABEL_7;
      }
    }

    v5 = 0;
LABEL_7:
    if (v7 == 15)
    {
      goto LABEL_12;
    }
  }

  if (a2)
  {
    v6 |= 0x304000240000uLL;
    v5 |= 0xC000uLL;
    *a3 = v6;
    a3[1] = v5;
  }

  if ((a2 & 2) != 0)
  {
    v5 |= 0x7E1uLL;
    v6 |= 0x20004uLL;
    *a3 = v6;
    a3[1] = v5;
  }

LABEL_12:
  v8 = v7;
  if ((v7 & 0xFE) == 0x12)
  {
    v8 = *(**(result + 16) + 8);
  }

  if ((a2 & 1) == 0 || v8 == 15)
  {
    if ((a2 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v5 |= 0x800uLL;
    a3[1] = v5;
  }

  result = llvm::AttributeFuncs::isNoFPClassCompatibleType(result);
  if ((result & 1) == 0)
  {
    a3[1] = v5 | 0x20000;
  }

  if ((a2 & 1) != 0 && v7 == 7)
  {
    *a3 = v6 | 0x800000000;
  }

  return result;
}

uint64_t llvm::StringAttributeImpl::StringAttributeImpl(uint64_t a1, const void *a2, size_t __len, void *__src, size_t a5)
{
  v7 = __len;
  *a1 = 0;
  *(a1 + 8) = 2;
  *(a1 + 12) = __len;
  *(a1 + 16) = a5;
  v9 = a1 + 24;
  if (__len)
  {
    memmove((a1 + 24), a2, __len);
  }

  *(v9 + v7) = 0;
  if (a5)
  {
    memmove((v9 + v7 + 1), __src, a5);
    v7 = *(a1 + 12);
    v10 = *(a1 + 16) + 1;
  }

  else
  {
    v10 = 1;
  }

  *(v9 + v10 + v7) = 0;
  return a1;
}

void *std::__lower_bound_bisecting[abi:nn200100]<std::_ClassicAlgPolicy,llvm::Attribute *,llvm::StringRef,std::__identity,AttributeComparator>(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    do
    {
      v6 = v4 >> 1;
      v7 = &a1[v4 >> 1];
      v8 = *v7;
      if (!*v7 || *(v8 + 8) != 2 || (v9 = *a2, v10 = *(a2 + 8), v11 = v8 + 24, v12 = *(v8 + 12), v14[0] = v11, v14[1] = v12, (llvm::StringRef::compare(v14, v9, v10) & 0x80000000) != 0))
      {
        a1 = v7 + 1;
        v6 = v4 + ~v6;
      }

      v4 = v6;
    }

    while (v6);
  }

  return a1;
}

BOOL llvm::FoldingSet<llvm::AttributeImpl>::NodeEquals(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  llvm::AttributeImpl::Profile(a2, a5);
  v7 = *(a3 + 8);
  return v7 == a5[2] && memcmp(*a5, *a3, 4 * v7) == 0;
}

std::string *llvm::detail::join_impl<llvm::StringRef *>(std::string *this, uint64_t a2, uint64_t a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v5 = this;
    v6 = ((a3 - a2) >> 4) - 1;
    v7 = a2;
    do
    {
      v6 += *(v7 + 8);
      v7 += 16;
    }

    while (v7 != a3);
    std::string::reserve(this, v6);
    this = std::string::append(v5, *a2, *(a2 + 8));
    for (i = a2 + 16; i != a3; this = std::string::append(v5, v9, v10))
    {
      std::string::append(v5, ",", 1uLL);
      v9 = *i;
      v10 = *(i + 8);
      i += 16;
    }
  }

  return this;
}

BOOL llvm::FoldingSet<llvm::AttributeSetNode>::NodeEquals(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  llvm::AttributeSetNode::Profile(a2, a5);
  v7 = *(a3 + 8);
  return v7 == a5[2] && memcmp(*a5, *a3, 4 * v7) == 0;
}

uint64_t llvm::array_pod_sort_comparator<llvm::Attribute>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  if (*a1)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = v3 == 0;
    }

    if (!v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (llvm::AttributeImpl::operator<(*a1, v3))
    {
      return 0xFFFFFFFFLL;
    }

    v4 = *a1;
    v3 = *a2;
  }

  if (v3)
  {
    v9 = 1;
  }

  else
  {
    v9 = v4 == 0;
  }

  result = !v9;
  if (v3)
  {
    v10 = v4 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    return llvm::AttributeImpl::operator<(v3, v4);
  }

  return result;
}

BOOL llvm::FoldingSet<llvm::AttributeListImpl>::NodeEquals(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  llvm::AttributeListImpl::Profile(a5, (a2 + 40), *(a2 + 8));
  v7 = *(a3 + 8);
  return v7 == a5[2] && memcmp(*a5, *a3, 4 * v7) == 0;
}

char *llvm::SmallVectorImpl<llvm::AttributeSet>::insert<llvm::AttributeSet const*,void>(unsigned int *a1, uint64_t a2, char *__src, char *a4)
{
  v5 = __src;
  v7 = *a1;
  v8 = a2 - *a1;
  v9 = a1[2];
  if (*a1 + 8 * v9 == a2)
  {
    llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(a1, __src, a4);
    return (*a1 + v8);
  }

  v10 = a4 - __src;
  v11 = (a4 - __src) >> 3;
  if (v9 + v11 > a1[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 4, v9 + v11, 8);
    v7 = *a1;
    v9 = a1[2];
  }

  v12 = (v7 + v8);
  v13 = 8 * v9;
  v14 = (v7 + 8 * v9);
  v15 = 8 * v9 - v8;
  v16 = v15 >> 3;
  if (v15 >> 3 < v11)
  {
    v17 = v9 + (v10 >> 3);
    a1[2] = v17;
    if (v13 != v8)
    {
      memcpy((v7 + 8 * v17 - 8 * v16), (v7 + v8), v15);
      v18 = v12;
      do
      {
        v19 = *v5;
        v5 += 8;
        *v18++ = v19;
        --v16;
      }

      while (v16);
    }

    if (v5 != a4)
    {
      memcpy(v14, v5, a4 - v5);
    }

    return v12;
  }

  v20 = v11 + v9;
  if (v20 > a1[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 4, v20, 8);
    LODWORD(v9) = a1[2];
  }

  if (a4 != v5)
  {
    v21 = (*a1 + 8 * v9);
    v22 = -8 * v11;
    do
    {
      *v21++ = *&v14[v22];
      v22 += 8;
    }

    while (v22);
  }

  a1[2] = v9 + v11;
  if (&v14[-8 * v11] != v12)
  {
    memmove(&v12[8 * v11], v12, &v14[-8 * v11] - v12);
  }

  if (a4 == v5)
  {
    return v12;
  }

  return memmove(v12, v5, a4 - v5);
}

void *llvm::SmallVectorImpl<llvm::Attribute>::insert_one_impl<llvm::Attribute>(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = a1[2];
  if (*a1 + 8 * v6 == a2)
  {
    llvm::SmallVectorTemplateBase<void *,true>::push_back(a1, *a3);
    return (*a1 + 8 * a1[2] - 8);
  }

  else
  {
    v7 = a2 - v5;
    if (v6 >= a1[3])
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 4, v6 + 1, 8);
      v5 = *a1;
      v6 = a1[2];
    }

    v8 = (v5 + v7);
    *(v5 + 8 * v6) = *(v5 + 8 * v6 - 8);
    v9 = *a1 + 8 * v6 - 8;
    if (v9 != v8)
    {
      memmove(v8 + 1, v8, v9 - v8);
      LODWORD(v6) = a1[2];
    }

    a1[2] = v6 + 1;
    *v8 = *a3;
  }

  return v8;
}

BOOL llvm::AttributeMask::contains(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = 0;
LABEL_6:
    v5 = (1 << v6) & *(a1 + ((v6 >> 3) & 0x1FFFFFF8));
    return v5 != 0;
  }

  if (*(a2 + 8) != 2)
  {
    v6 = *(a2 + 12);
    goto LABEL_6;
  }

  v9 = v2;
  v10 = v3;
  v4 = *(a2 + 12);
  *&v8 = a2 + 24;
  *(&v8 + 1) = v4;
  v5 = std::__tree<llvm::SmallString<32u>>::__count_multi<llvm::StringRef>(a1 + 16, &v8);
  return v5 != 0;
}

uint64_t std::__tree<llvm::SmallString<32u>>::__count_multi<llvm::StringRef>(uint64_t a1, __int128 *a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  while (1)
  {
    v5 = v3[4];
    v6 = v3[5];
    v24 = *a2;
    if ((llvm::StringRef::compare(&v24, v5, v6) & 0x80000000) != 0)
    {
      v2 = v3;
      goto LABEL_6;
    }

    v7 = v3[5];
    v8 = *a2;
    v9 = *(a2 + 1);
    *&v24 = v3[4];
    *(&v24 + 1) = v7;
    if ((llvm::StringRef::compare(&v24, v8, v9) & 0x80000000) == 0)
    {
      break;
    }

    ++v3;
LABEL_6:
    v3 = *v3;
    if (!v3)
    {
      return 0;
    }
  }

  v11 = *v3;
  v12 = v3;
  if (*v3)
  {
    v12 = v3;
    do
    {
      v13 = v11[5];
      v14 = *a2;
      v15 = *(a2 + 1);
      *&v24 = v11[4];
      *(&v24 + 1) = v13;
      v16 = llvm::StringRef::compare(&v24, v14, v15);
      if (v16 >= 0)
      {
        v12 = v11;
      }

      v11 = *(v11 + ((v16 >> 28) & 8));
    }

    while (v11);
  }

  for (i = v3[1]; i; i = i[v20 >= 0])
  {
    v18 = i[4];
    v19 = i[5];
    v24 = *a2;
    v20 = llvm::StringRef::compare(&v24, v18, v19);
    if (v20 < 0)
    {
      v2 = i;
    }
  }

  if (v12 == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    v21 = v12[1];
    if (v21)
    {
      do
      {
        v22 = v21;
        v21 = *v21;
      }

      while (v21);
    }

    else
    {
      do
      {
        v22 = v12[2];
        v23 = *v22 == v12;
        v12 = v22;
      }

      while (!v23);
    }

    ++result;
    v12 = v22;
  }

  while (v22 != v2);
  return result;
}

uint64_t llvm::UpgradeIntrinsicFunction(llvm *this, llvm::Function **a2, llvm::Function **a3)
{
  *a2 = 0;
  v5 = UpgradeIntrinsicFunction1(this, a2);
  if (*a2)
  {
    v6 = *a2;
  }

  else
  {
    v6 = this;
  }

  v7 = *(v6 + 9);
  if (v7)
  {
    *(v6 + 14) = llvm::Intrinsic::getAttributes(**v6, v7);
  }

  return v5;
}

uint64_t UpgradeIntrinsicFunction1(llvm::Function *a1, llvm::Function **a2)
{
  v292 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 23) & 0x10) == 0)
  {
    return 0;
  }

  ValueName = llvm::Value::getValueName(a1);
  v6 = *ValueName;
  if (*ValueName < 8uLL)
  {
    return 0;
  }

  v7 = ValueName;
  if (*(ValueName + 16) != 1836477548 || *(ValueName + 20) != 46)
  {
    return 0;
  }

  v12 = ValueName + 21;
  v11 = *(ValueName + 21);
  v13 = v6 - 5;
  v284 = (ValueName + 21);
  v285 = v6 - 5;
  switch(v11)
  {
    case 'a':
      if (v13 < 8)
      {
        goto LABEL_50;
      }

      if (*v12 == 0x746962722E6D7261)
      {
        goto LABEL_454;
      }

      if (v13 < 0xC)
      {
        goto LABEL_50;
      }

      if (*v12 == 0x2E34366863726161 && *(ValueName + 29) == 1953063538)
      {
        goto LABEL_454;
      }

      if (v13 >= 0x13)
      {
        if (*v12 == 0x2E34366863726161 && *(ValueName + 29) == 0x6972662E6E6F656ELL && *(ValueName + 32) == 0x6E746E6972662E6ELL)
        {
          v161 = *(a1 + 5);
          if (*(a1 + 9))
          {
            llvm::Function::BuildLazyArguments(a1);
          }

          v286.__r_.__value_.__r.__words[0] = **(a1 + 11);
          v9 = 1;
          v25 = v161;
          v26 = 264;
          goto LABEL_457;
        }
      }

      else if (v13 < 0x11)
      {
        goto LABEL_50;
      }

      if (*v12 == 0x2E34366863726161 && *(ValueName + 29) == 0x6962722E6E6F656ELL && *(ValueName + 37) == 116)
      {
LABEL_454:
        v143 = *(a1 + 5);
        if (*(a1 + 9))
        {
          llvm::Function::BuildLazyArguments(a1);
        }

        v286.__r_.__value_.__r.__words[0] = **(a1 + 11);
        v9 = 1;
        v25 = v143;
        v26 = 8;
        goto LABEL_457;
      }

LABEL_50:
      if (v6 == 29)
      {
        if (!memcmp((ValueName + 21), "aarch64.sve.bfmlalb.lane", v13))
        {
          v14 = *(a1 + 5);
          v15 = 991;
          goto LABEL_525;
        }

        if (*v12 == 0x2E34366863726161 && *(v7 + 29) == 0x6C6D66622E657673 && *(v7 + 37) == 0x656E616C2E746C61)
        {
          v14 = *(a1 + 5);
          v15 = 993;
          goto LABEL_525;
        }
      }

      else if (v6 == 27 && !memcmp((ValueName + 21), "aarch64.sve.bfdot.lane", v13))
      {
        v14 = *(a1 + 5);
        v15 = 989;
        goto LABEL_525;
      }

      if ((atomic_load_explicit(&_MergedGlobals_42, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_42))
      {
        llvm::Regex::Regex(&unk_2815AA878, "^aarch64\\.sve\\.ld[234](.nxv[a-z0-9]+|$)", 39);
      }

      if (!llvm::Regex::match(&unk_2815AA878, v284, v285, 0, 0))
      {
        if (v285 >= 0x15)
        {
          if (*v284 == 0x2E34366863726161 && *(v284 + 1) == 0x6C7075742E657673 && *(v284 + 13) == 0x7465672E656C7075)
          {
LABEL_312:
            v286.__r_.__value_.__r.__words[0] = **(*(a1 + 3) + 16);
            if (*(a1 + 18))
            {
              llvm::Function::BuildLazyArguments(a1);
            }

            v286.__r_.__value_.__l.__size_ = **(a1 + 11);
            v14 = *(a1 + 5);
            v85 = &v286;
            v15 = 320;
            goto LABEL_661;
          }

          if (*v284 == 0x2E34366863726161 && *(v284 + 1) == 0x6C7075742E657673 && *(v284 + 13) == 0x7465732E656C7075)
          {
            v158 = *(*(a1 + 3) + 16);
            v286.__r_.__value_.__r.__words[0] = v158->u64[1];
            *&v286.__r_.__value_.__r.__words[1] = vextq_s8(v158[1], v158[1], 8uLL);
            v14 = *(a1 + 5);
            v85 = &v286;
            v15 = 321;
            goto LABEL_653;
          }
        }

        if ((atomic_load_explicit(&qword_2815AA858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2815AA858))
        {
          llvm::Regex::Regex(&unk_2815AA888, "^aarch64\\.sve\\.tuple\\.create[234](.nxv[a-z0-9]+|$)", 50);
        }

        if (llvm::Regex::match(&unk_2815AA888, v284, v285, 0, 0))
        {
          v99 = *(*(a1 + 3) + 16);
          v100 = *v99;
          v101 = v99[2];
          v286.__r_.__value_.__r.__words[0] = v100;
          v286.__r_.__value_.__l.__size_ = v101;
          goto LABEL_309;
        }

        if (v285 >= 0xD)
        {
          if (*v284 == 0x6E6F656E2E6D7261 && *(v284 + 5) == 0x7A6C63762E6E6F65)
          {
            if (*(a1 + 9))
            {
              llvm::Function::BuildLazyArguments(a1);
            }

            *&v289 = **(a1 + 11);
            *(&v289 + 1) = ***a1 + 1920;
            v162 = llvm::FunctionType::get(**(*(a1 + 3) + 16), &v289, 2, 0);
            v163 = *(a1 + 8);
            v164 = (*(*a1 + 8) >> 8);
            v165 = 14;
            if (v285 < 0xE)
            {
              v165 = v285;
            }

            v288 = 1283;
            v286.__r_.__value_.__r.__words[0] = "llvm.ctlz.";
            v286.__r_.__value_.__r.__words[2] = &v284[v165];
            v287 = v285 - v165;
            v166 = *(a1 + 5);
            v167 = operator new(0x80uLL);
            v168 = (v167 + 2);
            v167[7] = v167[7] & 0x38000000 | 0x40000000;
            *v167 = 0;
            llvm::Function::Function((v167 + 2), v162, v163 & 0xF, v164, &v286.__r_.__value_.__l.__data_, v166);
            *a2 = v168;
            return 1;
          }

          if (*v284 == 0x6E6F656E2E6D7261 && *(v284 + 5) == 0x746E63762E6E6F65)
          {
            v178 = *(a1 + 5);
            if (*(a1 + 9))
            {
              llvm::Function::BuildLazyArguments(a1);
            }

            v286.__r_.__value_.__r.__words[0] = **(a1 + 11);
            v9 = 1;
            v25 = v178;
            v26 = 54;
            goto LABEL_457;
          }
        }

        if ((atomic_load_explicit(&qword_2815AA860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2815AA860))
        {
          llvm::Regex::Regex(&unk_2815AA898, "^arm\\.neon\\.vst([1234]|[234]lane)\\.v[a-z0-9]*$", 46);
        }

        if (llvm::Regex::match(&unk_2815AA898, v284, v285, 0, 0))
        {
          v125 = *(a1 + 3);
          v126 = 8 * *(v125 + 12) - 8;
          *&v286.__r_.__value_.__l.__data_ = *(*(v125 + 16) + 8);
          v127 = llvm::StringRef::find(&v284, "lane", 4uLL, 0);
          v128 = &UpgradeIntrinsicFunction1(llvm::Function *,llvm::Function *&)::StoreLaneInts + (v126 >> 1) - 20;
          if (v127 == -1)
          {
            v128 = &UpgradeIntrinsicFunction1(llvm::Function *,llvm::Function *&)::StoreInts + (v126 >> 1) - 12;
          }

          v15 = *v128;
          v85 = &v286;
          v14 = *(a1 + 5);
          goto LABEL_661;
        }

        if (v285 == 18)
        {
          if (*v284 != 0x657268742E6D7261 || *(v284 + 1) != 0x746E696F702E6461 || *(v284 + 8) != 29285)
          {
            goto LABEL_597;
          }
        }

        else
        {
          if (v285 != 22)
          {
            if (v285 < 0x10)
            {
              if (v285 == 15)
              {
                v181 = *v284 == 0x6E6F656E2E6D7261 && *(v284 + 7) == 0x2E746F6466622E6ELL;
                v182 = 1;
                if (!v181)
                {
                  goto LABEL_693;
                }

                goto LABEL_692;
              }

              if (v285 < 0xC)
              {
                goto LABEL_707;
              }

              v182 = 1;
              goto LABEL_693;
            }

LABEL_597:
            if (*v284 == 0x6E6F656E2E6D7261 && *(v284 + 1) == 0x2E7364646171762ELL)
            {
              v189 = *(a1 + 5);
              if (*(a1 + 9))
              {
                llvm::Function::BuildLazyArguments(a1);
              }

              v286.__r_.__value_.__r.__words[0] = **(a1 + 11);
              v9 = 1;
              v25 = v189;
              v26 = 265;
              goto LABEL_457;
            }

            if (*v284 == 0x6E6F656E2E6D7261 && *(v284 + 1) == 0x2E7564646171762ELL)
            {
              v201 = *(a1 + 5);
              if (*(a1 + 9))
              {
                llvm::Function::BuildLazyArguments(a1);
              }

              v286.__r_.__value_.__r.__words[0] = **(a1 + 11);
              v9 = 1;
              v25 = v201;
              v26 = 303;
              goto LABEL_457;
            }

            if (*v284 == 0x6E6F656E2E6D7261 && *(v284 + 1) == 0x2E7362757371762ELL)
            {
              v202 = *(a1 + 5);
              if (*(a1 + 9))
              {
                llvm::Function::BuildLazyArguments(a1);
              }

              v286.__r_.__value_.__r.__words[0] = **(a1 + 11);
              v9 = 1;
              v25 = v202;
              v26 = 286;
              goto LABEL_457;
            }

            if (*v284 == 0x6E6F656E2E6D7261 && *(v284 + 1) == 0x2E7562757371762ELL)
            {
              v203 = *(a1 + 5);
              if (*(a1 + 9))
              {
                llvm::Function::BuildLazyArguments(a1);
              }

              v286.__r_.__value_.__r.__words[0] = **(a1 + 11);
              v9 = 1;
              v25 = v203;
              v26 = 314;
              goto LABEL_457;
            }

            if (v285 < 0x11)
            {
              if (*v284 != 0x6E6F656E2E6D7261 || *(v284 + 7) != 0x2E746F6466622E6ELL)
              {
                if (*v284 == 0x6E6F656E2E6D7261 && *(v284 + 2) == 1835426350)
                {
                  goto LABEL_703;
                }

                goto LABEL_698;
              }

              goto LABEL_691;
            }

            if (*v284 == 0x2E34366863726161 && *(v284 + 1) == 0x6464612E6E6F656ELL && v284[16] == 112)
            {
              if (*(a1 + 12) != 2)
              {
                goto LABEL_822;
              }

              v229 = **(*(a1 + 3) + 16);
              if (v229)
              {
                if ((*(v229 + 8) & 0xFE) == 0x12)
                {
                  v230 = *(*(v229 + 24) + 8);
                  if (v230 < 4u || v230 == 5 || (v230 & 0xFD) == 4)
                  {
                    v25 = *(a1 + 5);
                    v286.__r_.__value_.__r.__words[0] = **(*(a1 + 3) + 16);
                    v9 = 1;
                    v26 = 496;
                    goto LABEL_457;
                  }
                }
              }
            }

            if (*v284 == 0x6E6F656E2E6D7261 && *(v284 + 7) == 0x2E746F6466622E6ELL)
            {
LABEL_691:
              v182 = 0;
LABEL_692:
              if (*&v284[v285 - 2] == 14441)
              {
                if (v285 > 28)
                {
                  if (v285 == 29)
                  {
                    v257 = *(v284 + 21);
                    v259 = *v284 == 0x2E34366863726161 && *(v284 + 1) == 0x6466622E6E6F656ELL && *(v284 + 2) == 0x32336632762E746FLL;
                    v260 = 0x38762E323366;
                  }

                  else
                  {
                    if (v285 != 30)
                    {
                      goto LABEL_822;
                    }

                    v257 = *(v284 + 22);
                    v259 = *v284 == 0x2E34366863726161 && *(v284 + 1) == 0x6466622E6E6F656ELL && *(v284 + 2) == 0x32336634762E746FLL;
                    v260 = 0x3631762E3233;
                  }

                  v273 = v260 & 0xFFFFFFFFFFFFLL | 0x3869000000000000;
                  if (!v259 || v257 != v273)
                  {
                    goto LABEL_822;
                  }

                  v271 = 488;
                }

                else
                {
                  if (v285 == 25)
                  {
                    v219 = v284[24];
                    v221 = *v284 == 0x6E6F656E2E6D7261 && *(v284 + 1) == 0x762E746F6466622ELL && *(v284 + 2) == 0x6938762E32336632;
                    v222 = 56;
                  }

                  else
                  {
                    if (v285 != 26)
                    {
                      goto LABEL_822;
                    }

                    v219 = *(v284 + 12);
                    v221 = *v284 == 0x6E6F656E2E6D7261 && *(v284 + 1) == 0x762E746F6466622ELL && *(v284 + 2) == 0x3631762E32336634;
                    v222 = 14441;
                  }

                  if (!v221 || v219 != v222)
                  {
                    goto LABEL_822;
                  }

                  v271 = 2812;
                }

                v275 = **(*(a1 + 3) + 16);
                PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v275);
                if (v276)
                {
                  v275 = **(*(a1 + 3) + 16);
                }

                v279 = **(a1 + 5);
                v286.__r_.__value_.__r.__words[0] = v275;
                llvm::FixedVectorType::get((*v279 + 1680), (PrimitiveSizeInBits >> 4));
                v286.__r_.__value_.__l.__size_ = v280;
                v14 = *(a1 + 5);
                v85 = &v286;
                v15 = v271;
                goto LABEL_661;
              }

              goto LABEL_693;
            }

            if (v285 < 0x13)
            {
              v182 = 0;
              goto LABEL_693;
            }

            v182 = 0;
            if (*v284 == 0x2E34366863726161 && *(v284 + 1) == 0x6466622E6E6F656ELL && *(v284 + 11) == 0x2E746F6466622E6ELL)
            {
              goto LABEL_692;
            }

LABEL_693:
            if (*v284 == 0x6E6F656E2E6D7261 && *(v284 + 2) == 1835426350)
            {
              goto LABEL_703;
            }

            if ((v182 & 1) == 0)
            {
LABEL_698:
              if (*v284 != 0x2E34366863726161 || *(v284 + 1) != 0x6D66622E6E6F656ELL)
              {
                goto LABEL_707;
              }

LABEL_703:
              if (*&v284[v285 - 12] == 0x762E32336634762ELL && *&v284[v285 - 4] == 946419249)
              {
                if (v285 > 30)
                {
                  if (v285 == 31)
                  {
                    if (*v284 != 0x2E34366863726161 || *(v284 + 1) != 0x6D66622E6E6F656ELL || *(v284 + 2) != 0x336634762E616C6DLL || *(v284 + 23) != 0x38693631762E3233)
                    {
                      goto LABEL_822;
                    }

                    v15 = 491;
                  }

                  else
                  {
                    if (v285 != 32)
                    {
                      goto LABEL_822;
                    }

                    if (*v284 == 0x2E34366863726161 && *(v284 + 1) == 0x6D66622E6E6F656ELL && *(v284 + 2) == 0x6634762E626C616CLL && *(v284 + 3) == 0x38693631762E3233)
                    {
                      v15 = 489;
                    }

                    else
                    {
                      if (*v284 != 0x2E34366863726161 || *(v284 + 1) != 0x6D66622E6E6F656ELL || *(v284 + 2) != 0x6634762E746C616CLL || *(v284 + 3) != 0x38693631762E3233)
                      {
                        goto LABEL_822;
                      }

                      v15 = 490;
                    }
                  }
                }

                else if (v285 == 27)
                {
                  if (*v284 != 0x6E6F656E2E6D7261 || *(v284 + 1) != 0x2E616C6D6D66622ELL || *(v284 + 2) != 0x31762E3233663476 || *(v284 + 19) != 0x38693631762E3233)
                  {
                    goto LABEL_822;
                  }

                  v15 = 2815;
                }

                else
                {
                  if (v285 != 28)
                  {
                    goto LABEL_822;
                  }

                  if (*v284 == 0x6E6F656E2E6D7261 && *(v284 + 1) == 0x626C616C6D66622ELL && *(v284 + 2) == 0x762E32336634762ELL && *(v284 + 6) == 946419249)
                  {
                    v15 = 2813;
                  }

                  else
                  {
                    if (*v284 != 0x6E6F656E2E6D7261 || *(v284 + 1) != 0x746C616C6D66622ELL || *(v284 + 2) != 0x762E32336634762ELL || *(v284 + 6) != 946419249)
                    {
                      goto LABEL_822;
                    }

                    v15 = 2814;
                  }
                }

                v14 = *(a1 + 5);
LABEL_525:
                v85 = 0;
                v86 = 0;
                goto LABEL_662;
              }
            }

LABEL_707:
            if (v285 > 52)
            {
              if (v285 <= 56)
              {
                switch(v285)
                {
                  case '5':
                    v210 = "arm.mve.vstr.scatter.base.predicated.v2i64.v2i64.v4i1";
                    v211 = v284;
                    v212 = 53;
                    break;
                  case '7':
                    v210 = "arm.mve.vldr.gather.base.wb.predicated.v2i64.v2i64.v4i1";
                    v211 = v284;
                    v212 = 55;
                    break;
                  case '8':
                    v210 = "arm.mve.vstr.scatter.base.wb.predicated.v2i64.v2i64.v4i1";
                    v211 = v284;
                    v212 = 56;
                    break;
                  default:
                    goto LABEL_822;
                }
              }

              else if (v285 > 59)
              {
                if (v285 == 60)
                {
                  v210 = "arm.mve.vldr.gather.offset.predicated.v2i64.p0i64.v2i64.v4i1";
                  v211 = v284;
                  v212 = 60;
                }

                else
                {
                  if (v285 != 61)
                  {
                    goto LABEL_822;
                  }

                  v210 = "arm.mve.vstr.scatter.offset.predicated.p0i64.v2i64.v2i64.v4i1";
                  v211 = v284;
                  v212 = 61;
                }
              }

              else if (v285 == 57)
              {
                v210 = "arm.mve.vldr.gather.offset.predicated.v2i64.p0.v2i64.v4i1";
                v211 = v284;
                v212 = 57;
              }

              else
              {
                if (v285 != 58)
                {
                  goto LABEL_822;
                }

                v210 = "arm.mve.vstr.scatter.offset.predicated.p0.v2i64.v2i64.v4i1";
                v211 = v284;
                v212 = 58;
              }

              goto LABEL_821;
            }

            if (v285 > 35)
            {
              if (v285 > 43)
              {
                if (v285 == 44)
                {
                  v210 = "arm.mve.mull.int.predicated.v2i64.v4i32.v4i1";
                  v211 = v284;
                  v212 = 44;
                }

                else
                {
                  if (v285 != 52)
                  {
                    goto LABEL_822;
                  }

                  v210 = "arm.mve.vldr.gather.base.predicated.v2i64.v2i64.v4i1";
                  v211 = v284;
                  v212 = 52;
                }
              }

              else
              {
                if (v285 != 36)
                {
                  if (v285 == 43)
                  {
                    v210 = "arm.mve.vqdmull.predicated.v2i64.v4i32.v4i1";
                    v211 = v284;
                    v212 = 43;
                    goto LABEL_821;
                  }

LABEL_822:
                  v233 = **(*(a1 + 3) + 16);
                  if ((*(v233 + 8) & 0x600) != 0x400 && v233 != 0 && *(v233 + 8) == 16)
                  {
                    v286.__r_.__value_.__r.__words[0] = &v286.__r_.__value_.__r.__words[2];
                    v286.__r_.__value_.__l.__size_ = 0x400000000;
                    llvm::Intrinsic::getIntrinsicInfoTableEntries(*(a1 + 9), &v286);
                    if (*v286.__r_.__value_.__l.__data_ == 13)
                    {
                      v236 = *(a1 + 3);
                      v237 = llvm::StructType::get(*v233, *(v233 + 16), *(v233 + 12), 0);
                      v238 = llvm::FunctionType::get(v237, (*(v236 + 16) + 8), (8 * *(v236 + 12) - 8) >> 3, (*(v236 + 8) > 0xFFu));
                      if ((*(a1 + 23) & 0x10) != 0)
                      {
                        v242 = llvm::Value::getValueName(a1);
                        v243 = *v242;
                        v240 = v242 + 2;
                        v239 = v243;
                      }

                      else
                      {
                        v239 = 0;
                        v240 = &str_3_24;
                      }

                      *&v289 = v240;
                      *(&v289 + 1) = v239;
                      llvm::StringRef::str(&v289, __p);
                      if ((*(a1 + 23) & 0x10) != 0)
                      {
                        v246 = llvm::Value::getValueName(a1);
                        v247 = *v246;
                        v245 = v246 + 2;
                        v244 = v247;
                      }

                      else
                      {
                        v244 = 0;
                        v245 = &str_3_24;
                      }

                      v291 = 773;
                      *&v289 = v245;
                      *(&v289 + 1) = v244;
                      v290 = ".old";
                      llvm::Value::setName(a1, &v289);
                      v248 = *(a1 + 8);
                      v249 = (*(*a1 + 8) >> 8);
                      v291 = 260;
                      *&v289 = __p;
                      v250 = *(a1 + 5);
                      v251 = operator new(0x80uLL);
                      v252 = (v251 + 2);
                      v251[7] = v251[7] & 0x38000000 | 0x40000000;
                      *v251 = 0;
                      v253 = llvm::Function::Function((v251 + 2), v238, v248 & 0xF, v249, &v289, v250);
                      *a2 = v252;
                      v255 = llvm::Intrinsic::remangleIntrinsicFunction(v253, v254);
                      if (v256)
                      {
                        *a2 = v255;
                      }

                      if (v283 < 0)
                      {
                        operator delete(__p[0]);
                      }

                      v200 = v286.__r_.__value_.__r.__words[0];
                      if (v286.__r_.__value_.__l.__data_ != &v286.__r_.__value_.__r.__words[2])
                      {
LABEL_846:
                        free(v200);
                      }

                      return 1;
                    }

                    if (v286.__r_.__value_.__l.__data_ != &v286.__r_.__value_.__r.__words[2])
                    {
                      free(v286.__r_.__value_.__l.__data_);
                    }
                  }

                  Declaration = llvm::Intrinsic::remangleIntrinsicFunction(a1, v5);
                  if ((v241 & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_836;
                }

                if (!memcmp(v284, "arm.cde.vcx1qa.predicated.v2i64.v4i1", 0x24uLL) || !memcmp(v284, "arm.cde.vcx2qa.predicated.v2i64.v4i1", 0x24uLL))
                {
                  return 1;
                }

                v210 = "arm.cde.vcx3qa.predicated.v2i64.v4i1";
                v211 = v284;
                v212 = 36;
              }

LABEL_821:
              if (memcmp(v211, v210, v212))
              {
                goto LABEL_822;
              }

              return 1;
            }

            if (v285 == 14)
            {
              v231 = *v284 == 0x2E65766D2E6D7261 && *(v284 + 6) == 0x3436707463762E65;
              if (!v231 || *(**(*(a1 + 3) + 16) + 32) != 4)
              {
                goto LABEL_822;
              }

              rename(a1);
              return 1;
            }

            if (v285 != 15)
            {
              if (v285 != 35)
              {
                goto LABEL_822;
              }

              if (!memcmp(v284, "arm.cde.vcx1q.predicated.v2i64.v4i1", 0x23uLL) || !memcmp(v284, "arm.cde.vcx2q.predicated.v2i64.v4i1", 0x23uLL))
              {
                return 1;
              }

              v210 = "arm.cde.vcx3q.predicated.v2i64.v4i1";
              v211 = v284;
              v212 = 35;
              goto LABEL_821;
            }

            if (*v284 != 0x612E6E6367646D61 || *(v284 + 7) != 0x7469626E67696C61)
            {
              goto LABEL_822;
            }

            v25 = *(a1 + 5);
            v286.__r_.__value_.__r.__words[0] = **(*(a1 + 3) + 16);
            v9 = 1;
            v26 = 149;
LABEL_457:
            *a2 = llvm::Intrinsic::getDeclaration(v25, v26, &v286, 1);
            return v9;
          }

          if (*v284 != 0x2E34366863726161 || *(v284 + 1) != 0x702E646165726874 || *(v284 + 14) != 0x7265746E696F702ELL)
          {
            goto LABEL_597;
          }
        }

        v14 = *(a1 + 5);
        v15 = 297;
        goto LABEL_525;
      }

      v90 = **(*(a1 + 3) + 16);
      if ((*(v90 + 8) & 0xFE) != 0x12)
      {
        v90 = 0;
      }

      v91 = *(v90 + 24);
      if (*(a1 + 9))
      {
        llvm::Function::BuildLazyArguments(a1);
      }

      v92 = **(a1 + 11);
      if ((*(v92 + 8) & 0xFE) != 0x12)
      {
        v92 = 0;
      }

      llvm::VectorType::get(v91, (*(v92 + 32) | ((*(v92 + 8) == 19) << 32)), v89);
      v286.__r_.__value_.__r.__words[0] = v93;
      if (v285 >= 0xF)
      {
        if (*v284 == 0x2E34366863726161 && *(v284 + 7) == 0x32646C2E6576732ELL)
        {
          v94 = 1221;
        }

        else if (*v284 == 0x2E34366863726161 && *(v284 + 7) == 0x33646C2E6576732ELL)
        {
          v94 = 1222;
        }

        else if (*v284 ^ 0x2E34366863726161 | *(v284 + 7) ^ 0x34646C2E6576732ELL)
        {
          v94 = 0;
        }

        else
        {
          v94 = 1223;
        }
      }

      else
      {
        v94 = 0;
      }

      v159 = *(a1 + 5);
      v9 = 1;
      *a2 = llvm::Intrinsic::getDeclaration(v159, v94, &v286, 1);
      return v9;
    case 'c':
      if (v13 < 5)
      {
        goto LABEL_822;
      }

      v23 = *v12 == 2053928035 && *(ValueName + 25) == 46;
      if (v23 && *(a1 + 12) == 1)
      {
        rename(a1);
        v24 = *(a1 + 5);
        if (*(a1 + 9))
        {
          llvm::Function::BuildLazyArguments(a1);
        }

        v286.__r_.__value_.__r.__words[0] = **(a1 + 11);
        v9 = 1;
        v25 = v24;
        v26 = 53;
      }

      else
      {
        v58 = *v12 == 2054452323 && *(ValueName + 25) == 46;
        if (!v58 || *(a1 + 12) != 1)
        {
          goto LABEL_822;
        }

        rename(a1);
        v59 = *(a1 + 5);
        if (*(a1 + 9))
        {
          llvm::Function::BuildLazyArguments(a1);
        }

        v286.__r_.__value_.__r.__words[0] = **(a1 + 11);
        v9 = 1;
        v25 = v59;
        v26 = 55;
      }

      goto LABEL_457;
    case 'd':
      if (v6 == 14)
      {
        if (memcmp((ValueName + 21), "dbg.value", v13) || *(a1 + 12) != 4)
        {
          goto LABEL_822;
        }
      }

      else if (v6 != 13 || memcmp((ValueName + 21), "dbg.addr", v13))
      {
        goto LABEL_822;
      }

      rename(a1);
      v14 = *(a1 + 5);
      v15 = 59;
      goto LABEL_525;
    case 'e':
      if (v13 >= 0x1C)
      {
        if (*v12 == 0x656D697265707865 && *(ValueName + 29) == 0x6365762E6C61746ELL && *(ValueName + 37) == 0x727478652E726F74 && *(ValueName + 45) == 779379553)
        {
          rename(a1);
          goto LABEL_312;
        }
      }

      else if (v6 != 32)
      {
        goto LABEL_167;
      }

      if (*v12 == 0x656D697265707865 && *(ValueName + 29) == 0x6365762E6C61746ELL && *(ValueName + 37) == 0x65736E692E726F74 && *(ValueName + 40) == 0x2E747265736E692ELL)
      {
        rename(a1);
        *&v286.__r_.__value_.__l.__data_ = *(*(*(a1 + 3) + 16) + 8);
LABEL_309:
        v14 = *(a1 + 5);
        v85 = &v286;
        v15 = 321;
        goto LABEL_661;
      }

LABEL_167:
      v286.__r_.__value_.__r.__words[0] = &v286.__r_.__value_.__r.__words[2];
      v286.__r_.__value_.__l.__size_ = 0x200000000;
      if ((atomic_load_explicit(&qword_2815AA868, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2815AA868))
      {
        llvm::Regex::Regex(&unk_2815AA8A8, "^experimental.vector.reduce.([a-z]+)\\.[a-z][0-9]+", 49);
      }

      if (!llvm::Regex::match(&unk_2815AA8A8, v284, v285, &v286, 0))
      {
        goto LABEL_415;
      }

      v49 = *(v286.__r_.__value_.__r.__words[0] + 16);
      v50 = *(v286.__r_.__value_.__r.__words[0] + 24);
      switch(v50)
      {
        case 2:
          if (*v49 != 29295)
          {
            goto LABEL_415;
          }

          v57 = 329;
          break;
        case 4:
          switch(*v49)
          {
            case 0x78616D73:
              v57 = 330;
              break;
            case 0x6E696D73:
              v57 = 331;
              break;
            case 0x78616D75:
              v57 = 332;
              break;
            case 0x6E696D75:
              v57 = 333;
              break;
            case 0x78616D66:
              v57 = 325;
              break;
            case 0x6E696D66:
              v57 = 326;
              break;
            default:
              goto LABEL_415;
          }

          break;
        case 3:
          if (*v49 == 25697 && *(v49 + 2) == 100)
          {
            v57 = 322;
          }

          else if (*v49 == 30061 && *(v49 + 2) == 108)
          {
            v57 = 328;
          }

          else if (*v49 == 28257 && *(v49 + 2) == 100)
          {
            v57 = 323;
          }

          else
          {
            v54 = *v49;
            v55 = *(v49 + 2);
            if (v54 != 28536 || v55 != 114)
            {
LABEL_415:
              if ((atomic_load_explicit(&qword_2815AA870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2815AA870))
              {
                llvm::Regex::Regex(&unk_2815AA8B8, "^experimental.vector.reduce.v2.([a-z]+)\\.[fi][0-9]+", 51);
              }

              LODWORD(v286.__r_.__value_.__r.__words[1]) = 0;
              if (!llvm::Regex::match(&unk_2815AA8B8, v284, v285, &v286, 0) || *(v286.__r_.__value_.__r.__words[0] + 24) != 4 || ((v129 = bswap32(**(v286.__r_.__value_.__r.__words[0] + 16)), v130 = v129 > 0x66616464, v131 = v129 < 0x66616464, v132 = v129 >= 0x666D756C, v133 = v129 > 0x666D756C, v132) ? (v134 = 0) : (v134 = 1), (v135 = v133 - v134, (v136 = v130 - v131) != 0) && v135))
              {
                if (v286.__r_.__value_.__l.__data_ != &v286.__r_.__value_.__r.__words[2])
                {
                  free(v286.__r_.__value_.__l.__data_);
                }

                goto LABEL_822;
              }

              if (v136)
              {
                v137 = 0;
              }

              else
              {
                v137 = 324;
              }

              if (v135)
              {
                v57 = v137;
              }

              else
              {
                v57 = 327;
              }

              rename(a1);
              *&v289 = *(*(*(a1 + 3) + 16) + 16);
              v138 = *(a1 + 5);
LABEL_665:
              *a2 = llvm::Intrinsic::getDeclaration(v138, v57, &v289, 1);
              v200 = v286.__r_.__value_.__r.__words[0];
              if (v286.__r_.__value_.__l.__data_ != &v286.__r_.__value_.__r.__words[2])
              {
                goto LABEL_846;
              }

              return 1;
            }

            v57 = 334;
          }

          break;
        default:
          goto LABEL_415;
      }

      rename(a1);
      v138 = *(a1 + 5);
      *&v289 = *(*(*(a1 + 3) + 16) + 8);
      goto LABEL_665;
    case 'f':
      if (v13 < 0xA)
      {
        goto LABEL_822;
      }

      if (*v12 != 0x6E756F722E746C66 || *(ValueName + 29) != 29540)
      {
        goto LABEL_822;
      }

      rename(a1);
      v14 = *(a1 + 5);
      v15 = 155;
      goto LABEL_525;
    case 'i':
    case 'l':
      if (v13 < 0xE)
      {
        if (v13 < 0xC)
        {
          goto LABEL_822;
        }

        goto LABEL_232;
      }

      if (*v12 == 0x656D69746566696CLL && *(ValueName + 27) == 0x74726174732E656DLL)
      {
        v60 = 171;
      }

      else
      {
        if (v6 == 19)
        {
          if (*v12 != 0x656D69746566696CLL || *(ValueName + 29) != 1684956462)
          {
LABEL_237:
            if (*v12 != 0x6E61697261766E69 || *(v12 + 5) != 0x646E652E746E6169)
            {
LABEL_256:
              if (v13 >= 0x17)
              {
                v83 = *v12 == 0x6E61697261766E69 && *(v12 + 8) == 0x2E70756F72672E74;
                if (v83 && *(v12 + 15) == 0x726569727261622ELL)
                {
                  v286.__r_.__value_.__r.__words[0] = *(*(*(a1 + 3) + 16) + 8);
                  rename(a1);
                  v25 = *(a1 + 5);
                  v9 = 1;
                  v26 = 169;
                  goto LABEL_457;
                }
              }

              goto LABEL_822;
            }

            v74 = 165;
            v75 = 2;
LABEL_244:
            *&v289 = *(*(*(a1 + 3) + 16) + 8 * v75 + 8);
            if ((*(a1 + 23) & 0x10) != 0)
            {
              v78 = llvm::Value::getValueName(a1);
              v77 = v78 + 2;
              v76 = *v78;
            }

            else
            {
              v76 = 0;
              v77 = &str_3_24;
            }

            v79 = 1;
            v281 = v74;
            getIntrinsicNameImpl(v74, &v289, 1, *(a1 + 5), 0, &v286);
            v80 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
            size = v286.__r_.__value_.__l.__size_;
            v82 = v286.__r_.__value_.__r.__words[0];
            if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v5 = &v286;
            }

            else
            {
              v5 = v286.__r_.__value_.__r.__words[0];
            }

            if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
            }

            if (v76 == size)
            {
              if (v76)
              {
                v79 = memcmp(v77, v5, v76) != 0;
                if (v80 < 0)
                {
                  goto LABEL_255;
                }

LABEL_267:
                if (!v79)
                {
                  goto LABEL_256;
                }

                goto LABEL_268;
              }

              v79 = 0;
              if ((SHIBYTE(v286.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_267;
              }
            }

            else if ((SHIBYTE(v286.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_267;
            }

LABEL_255:
            operator delete(v82);
            if (!v79)
            {
              goto LABEL_256;
            }

LABEL_268:
            rename(a1);
            v14 = *(a1 + 5);
            v85 = &v289;
            v15 = v281;
            goto LABEL_269;
          }

LABEL_243:
          v74 = 170;
          v75 = 1;
          goto LABEL_244;
        }

        if (*v12 != 0x6E61697261766E69 || *(ValueName + 28) != 0x74726174732E746ELL)
        {
LABEL_232:
          if (*v12 != 0x656D69746566696CLL || *(v12 + 8) != 1684956462)
          {
            if (v13 < 0xD)
            {
              goto LABEL_822;
            }

            goto LABEL_237;
          }

          goto LABEL_243;
        }

        v60 = 166;
      }

      *&v289 = *(*(*(a1 + 3) + 16) + 16);
      if ((*(a1 + 23) & 0x10) != 0)
      {
        v67 = llvm::Value::getValueName(a1);
        v63 = v67 + 2;
        v62 = *v67;
      }

      else
      {
        v62 = 0;
        v63 = &str_3_24;
      }

      v68 = 1;
      v281 = v60;
      getIntrinsicNameImpl(v60, &v289, 1, *(a1 + 5), 0, &v286);
      v69 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
      v70 = v286.__r_.__value_.__l.__size_;
      v71 = v286.__r_.__value_.__r.__words[0];
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v5 = &v286;
      }

      else
      {
        v5 = v286.__r_.__value_.__r.__words[0];
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v70 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
      }

      if (v62 == v70)
      {
        if (v62)
        {
          v68 = memcmp(v63, v5, v62) != 0;
          if (v69 < 0)
          {
            goto LABEL_228;
          }

LABEL_231:
          if (v68)
          {
            goto LABEL_268;
          }

          goto LABEL_232;
        }

        v68 = 0;
        if ((SHIBYTE(v286.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_231;
        }
      }

      else if ((SHIBYTE(v286.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_231;
      }

LABEL_228:
      operator delete(v71);
      if (v68)
      {
        goto LABEL_268;
      }

      goto LABEL_232;
    case 'm':
      if (v13 >= 0xC)
      {
        if (*v12 == 0x6C2E64656B73616DLL && *(ValueName + 29) == 778330479)
        {
          v289 = 0uLL;
          *&v289 = **(*(a1 + 3) + 16);
          if (*(a1 + 18))
          {
            llvm::Function::BuildLazyArguments(a1);
          }

          *(&v289 + 1) = **(a1 + 11);
          if ((*(a1 + 23) & 0x10) != 0)
          {
            v112 = llvm::Value::getValueName(a1);
            v42 = v112 + 2;
            v41 = *v112;
          }

          else
          {
            v41 = 0;
            v42 = &str_3_24;
          }

          getIntrinsicNameImpl(188, &v289, 2, *(a1 + 5), 0, &v286);
          v113 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
          v114 = v286.__r_.__value_.__l.__size_;
          v115 = v286.__r_.__value_.__r.__words[0];
          if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v5 = &v286;
          }

          else
          {
            v5 = v286.__r_.__value_.__r.__words[0];
          }

          if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v114 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
          }

          if (v41 == v114)
          {
            if (v41)
            {
              LODWORD(v41) = memcmp(v42, v5, v41) != 0;
            }
          }

          else
          {
            LODWORD(v41) = 1;
          }

          if (v113 < 0)
          {
            operator delete(v115);
          }

          if (v41)
          {
            rename(a1);
            v14 = *(a1 + 5);
            v85 = &v289;
            v15 = 188;
            goto LABEL_661;
          }
        }

        if (v13 != 12)
        {
          if (*v12 == 0x732E64656B73616DLL && *(v12 + 5) == 0x2E65726F74732E64)
          {
            v117 = *(*(a1 + 3) + 16);
            v289 = 0uLL;
            v289 = *(v117 + 8);
            if ((*(a1 + 23) & 0x10) != 0)
            {
              v149 = llvm::Value::getValueName(a1);
              v119 = v149 + 2;
              v118 = *v149;
            }

            else
            {
              v118 = 0;
              v119 = &str_3_24;
            }

            getIntrinsicNameImpl(190, &v289, 2, *(a1 + 5), 0, &v286);
            v150 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
            v151 = v286.__r_.__value_.__l.__size_;
            v152 = v286.__r_.__value_.__r.__words[0];
            if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v5 = &v286;
            }

            else
            {
              v5 = v286.__r_.__value_.__r.__words[0];
            }

            if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v151 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
            }

            if (v118 == v151)
            {
              if (v118)
              {
                LODWORD(v118) = memcmp(v119, v5, v118) != 0;
              }
            }

            else
            {
              LODWORD(v118) = 1;
            }

            if (v150 < 0)
            {
              operator delete(v152);
            }

            if (v118)
            {
              rename(a1);
              v14 = *(a1 + 5);
              v85 = &v289;
              v15 = 190;
              goto LABEL_661;
            }
          }

          if (v13 >= 0xE)
          {
            if (*v12 == 0x672E64656B73616DLL && *(v12 + 6) == 0x2E7265687461672ELL)
            {
              v289 = 0uLL;
              *&v289 = **(*(a1 + 3) + 16);
              if (*(a1 + 18))
              {
                llvm::Function::BuildLazyArguments(a1);
              }

              *(&v289 + 1) = **(a1 + 11);
              if ((*(a1 + 23) & 0x10) != 0)
              {
                v169 = llvm::Value::getValueName(a1);
                v155 = v169 + 2;
                v154 = *v169;
              }

              else
              {
                v154 = 0;
                v155 = &str_3_24;
              }

              getIntrinsicNameImpl(187, &v289, 2, *(a1 + 5), 0, &v286);
              v170 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
              v171 = v286.__r_.__value_.__l.__size_;
              v172 = v286.__r_.__value_.__r.__words[0];
              if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v5 = &v286;
              }

              else
              {
                v5 = v286.__r_.__value_.__r.__words[0];
              }

              if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v171 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
              }

              if (v154 == v171)
              {
                if (v154)
                {
                  LODWORD(v154) = memcmp(v155, v5, v154) != 0;
                }
              }

              else
              {
                LODWORD(v154) = 1;
              }

              if (v170 < 0)
              {
                operator delete(v172);
              }

              if (v154)
              {
                rename(a1);
                v14 = *(a1 + 5);
                v85 = &v289;
                v15 = 187;
                goto LABEL_661;
              }
            }

            if (v13 != 14 && *v12 == 0x732E64656B73616DLL && *(v12 + 7) == 0x2E72657474616373)
            {
              v174 = *(*(a1 + 3) + 16);
              v289 = 0uLL;
              v289 = *(v174 + 8);
              if ((*(a1 + 23) & 0x10) != 0)
              {
                v190 = llvm::Value::getValueName(a1);
                v176 = v190 + 2;
                v175 = *v190;
              }

              else
              {
                v175 = 0;
                v176 = &str_3_24;
              }

              getIntrinsicNameImpl(189, &v289, 2, *(a1 + 5), 0, &v286);
              v191 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
              v192 = v286.__r_.__value_.__l.__size_;
              v193 = v286.__r_.__value_.__r.__words[0];
              if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v5 = &v286;
              }

              else
              {
                v5 = v286.__r_.__value_.__r.__words[0];
              }

              if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v192 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
              }

              if (v175 == v192)
              {
                if (v175)
                {
                  LODWORD(v175) = memcmp(v176, v5, v175) != 0;
                }
              }

              else
              {
                LODWORD(v175) = 1;
              }

              if (v191 < 0)
              {
                operator delete(v193);
              }

              if (v175)
              {
                rename(a1);
                v14 = *(a1 + 5);
                v85 = &v289;
                v15 = 189;
                goto LABEL_661;
              }
            }
          }
        }
      }

      else if (v13 < 7)
      {
        goto LABEL_822;
      }

      v194 = *v12 == 1668113773 && *(v12 + 3) == 779710563;
      if (v194 && *(a1 + 12) == 5)
      {
        rename(a1);
        v14 = *(a1 + 5);
        v85 = (*(*(a1 + 3) + 16) + 8);
        v15 = 197;
      }

      else
      {
        if (v13 < 8 || *v12 != 0x2E65766F6D6D656DLL || *(a1 + 12) != 5)
        {
          v195 = *v12 == 1936549229 && *(v12 + 3) == 779380083;
          if (v195 && *(a1 + 12) == 5)
          {
            rename(a1);
            v196 = *(*(a1 + 3) + 16);
            v197 = *(v196 + 8);
            v198 = *(v196 + 24);
            v286.__r_.__value_.__r.__words[0] = v197;
            v286.__r_.__value_.__l.__size_ = v198;
            v14 = *(a1 + 5);
            v85 = &v286;
            v15 = 202;
LABEL_661:
            v86 = 2;
LABEL_662:
            Declaration = llvm::Intrinsic::getDeclaration(v14, v15, v85, v86);
LABEL_836:
            *a2 = Declaration;
            return 1;
          }

          goto LABEL_822;
        }

        rename(a1);
        v14 = *(a1 + 5);
        v85 = (*(*(a1 + 3) + 16) + 8);
        v15 = 200;
      }

LABEL_653:
      v86 = 3;
      goto LABEL_662;
    case 'n':
      if (v13 < 5)
      {
        goto LABEL_822;
      }

      if (*v12 != 1836480110 || *(ValueName + 25) != 46)
      {
        goto LABEL_822;
      }

      v33 = (ValueName + 26);
      if (v6 == 16)
      {
        v34 = *v33 == 1986359906 && *(v7 + 30) == 12851;
        if (v34 || (*v33 == 1986359906 ? (v35 = *(v7 + 30) == 13366) : (v35 = 0), v35))
        {
          v26 = 8;
        }

        else
        {
          if (*v33 != 1668312944 || *(v7 + 30) != 26926)
          {
            v286.__r_.__value_.__r.__words[0] = v7 + 26;
            v286.__r_.__value_.__l.__size_ = 6;
            LOWORD(v286.__r_.__value_.__r.__words[2]) = 0;
            goto LABEL_570;
          }

          v26 = 54;
        }
      }

      else
      {
        if (v6 != 15)
        {
          goto LABEL_562;
        }

        if (*v33 != 779775075 || *(v7 + 30) != 105)
        {
          v286.__r_.__value_.__r.__words[0] = v7 + 26;
          v286.__r_.__value_.__l.__size_ = 5;
          LOWORD(v286.__r_.__value_.__r.__words[2]) = 0;
          goto LABEL_563;
        }

        v26 = 53;
      }

      if (*(a1 + 12) == 1)
      {
        v25 = *(a1 + 5);
        v286.__r_.__value_.__r.__words[0] = **(*(a1 + 3) + 16);
        v9 = 1;
        goto LABEL_457;
      }

LABEL_562:
      v286.__r_.__value_.__r.__words[0] = v7 + 26;
      v286.__r_.__value_.__l.__size_ = v6 - 10;
      LOWORD(v286.__r_.__value_.__r.__words[2]) = 0;
      if (v6 != 15)
      {
        if (v6 != 16)
        {
          goto LABEL_572;
        }

LABEL_570:
        if (memcmp(v33, "abs.ll", v6 - 10))
        {
          goto LABEL_572;
        }

        goto LABEL_571;
      }

LABEL_563:
      if (*v33 != 779313761 || *(v7 + 30) != 105)
      {
LABEL_572:
        llvm::StringSwitch<BOOL,BOOL>::Cases(&v286, "clz.ll", 6, "popc.ll", 7, "h2f", 3);
        llvm::StringSwitch<BOOL,BOOL>::Case(&v286, "max.i", 5);
        llvm::StringSwitch<BOOL,BOOL>::Cases(&v286, "max.ll", 6, "max.ui", 6, "max.ull", 7);
        llvm::StringSwitch<BOOL,BOOL>::Case(&v286, "min.i", 5);
        llvm::StringSwitch<BOOL,BOOL>::Cases(&v286, "min.ll", 6, "min.ui", 6, "min.ull", 7);
        llvm::StringSwitch<BOOL,BOOL>::StartsWith(&v286, "atomic.load.add.f32.p", 0x15uLL);
        llvm::StringSwitch<BOOL,BOOL>::StartsWith(&v286, "atomic.load.add.f64.p", 0x15uLL);
        if ((v286.__r_.__value_.__s.__data_[17] & 1) != 0 && v286.__r_.__value_.__s.__data_[16] == 1)
        {
LABEL_46:
          *a2 = 0;
          return 1;
        }

        goto LABEL_822;
      }

LABEL_571:
      LOWORD(v286.__r_.__value_.__r.__words[2]) = 257;
      goto LABEL_572;
    case 'o':
      if (v13 < 0xB)
      {
        goto LABEL_822;
      }

      if (*v12 != 0x69737463656A626FLL || *(ValueName + 24) != 0x2E657A6973746365)
      {
        goto LABEL_822;
      }

      *&v289 = **(*(a1 + 3) + 16);
      if (*(a1 + 18))
      {
        llvm::Function::BuildLazyArguments(a1);
      }

      v31 = *(a1 + 12);
      *(&v289 + 1) = **(a1 + 11);
      if ((v31 & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
        if ((*(a1 + 23) & 0x10) != 0)
        {
          v145 = llvm::Value::getValueName(a1);
          v121 = v145 + 2;
          v120 = *v145;
        }

        else
        {
          v120 = 0;
          v121 = &str_3_24;
        }

        getIntrinsicNameImpl(240, &v289, 2, *(a1 + 5), 0, &v286);
        v146 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
        v147 = v286.__r_.__value_.__l.__size_;
        v148 = v286.__r_.__value_.__r.__words[0];
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v5 = &v286;
        }

        else
        {
          v5 = v286.__r_.__value_.__r.__words[0];
        }

        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v147 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
        }

        if (v120 == v147)
        {
          if (v120)
          {
            LODWORD(v120) = memcmp(v121, v5, v120) != 0;
          }
        }

        else
        {
          LODWORD(v120) = 1;
        }

        if (v146 < 0)
        {
          operator delete(v148);
        }

        if (!v120)
        {
          goto LABEL_822;
        }
      }

      rename(a1);
      v14 = *(a1 + 5);
      v15 = 240;
      v85 = &v289;
      v86 = 2;
      goto LABEL_662;
    case 'p':
      if (v6 != 13)
      {
        if (v13 >= 0xF)
        {
          v64 = *v12 == 0x6F6E6E612E727470 && *(ValueName + 28) == 0x2E6E6F697461746FLL;
          if (v64 && *(a1 + 12) == 4)
          {
            rename(a1);
            v65 = *(a1 + 5);
            if (*(a1 + 9))
            {
              llvm::Function::BuildLazyArguments(a1);
              v160 = *(a1 + 9);
              v66 = *(a1 + 11);
              v286.__r_.__value_.__r.__words[0] = *v66;
              if (v160)
              {
                llvm::Function::BuildLazyArguments(a1);
                v66 = *(a1 + 11);
              }
            }

            else
            {
              v66 = *(a1 + 11);
              v286.__r_.__value_.__r.__words[0] = *v66;
            }

            v286.__r_.__value_.__l.__size_ = v66[5];
            v85 = &v286;
            v14 = v65;
            v15 = 249;
            goto LABEL_661;
          }
        }

        else if (v13 < 8)
        {
          goto LABEL_822;
        }

        goto LABEL_346;
      }

      if (*v12 != 0x6863746566657270)
      {
        goto LABEL_346;
      }

      *&v289 = 0;
      if (*(a1 + 9))
      {
        llvm::Function::BuildLazyArguments(a1);
      }

      *&v289 = **(a1 + 11);
      if ((*(a1 + 23) & 0x10) != 0)
      {
        v105 = llvm::Value::getValueName(a1);
        v17 = v105 + 2;
        v16 = *v105;
      }

      else
      {
        v16 = 0;
        v17 = &str_3_24;
      }

      v106 = 1;
      getIntrinsicNameImpl(244, &v289, 1, *(a1 + 5), 0, &v286);
      v107 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
      v108 = v286.__r_.__value_.__l.__size_;
      v109 = v286.__r_.__value_.__r.__words[0];
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v5 = &v286;
      }

      else
      {
        v5 = v286.__r_.__value_.__r.__words[0];
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v108 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
      }

      if (v16 == v108)
      {
        if (v16)
        {
          v106 = memcmp(v17, v5, v16) != 0;
          if (v107 < 0)
          {
            goto LABEL_345;
          }

          goto LABEL_354;
        }

        v106 = 0;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_345:
          operator delete(v109);
          if (!v106)
          {
            goto LABEL_346;
          }

LABEL_355:
          rename(a1);
          v14 = *(a1 + 5);
          v85 = &v289;
          v15 = 244;
LABEL_269:
          v86 = 1;
          goto LABEL_662;
        }
      }

      else if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_345;
      }

LABEL_354:
      if (v106)
      {
        goto LABEL_355;
      }

LABEL_346:
      if (*v12 != 0x2E68747561727470)
      {
        goto LABEL_822;
      }

      v110 = v6 - 13;
      if (v6 > 22)
      {
        if (v6 == 23)
        {
          if (memcmp((v7 + 29), "resign.i64", v110))
          {
            goto LABEL_822;
          }

          v111 = 252;
        }

        else
        {
          if (v6 != 29 || memcmp((v7 + 29), "sign.generic.i64", v110))
          {
            goto LABEL_822;
          }

          v111 = 254;
        }
      }

      else if (v6 == 21)
      {
        if (!memcmp((v7 + 29), "auth.i64", v110))
        {
          v111 = 250;
        }

        else
        {
          if (memcmp((v7 + 29), "sign.i64", 8uLL))
          {
            goto LABEL_822;
          }

          v111 = 253;
        }
      }

      else
      {
        if (v6 != 22)
        {
          goto LABEL_822;
        }

        if (!memcmp((v7 + 29), "strip.i64", v110))
        {
          v111 = 255;
        }

        else
        {
          if (memcmp((v7 + 29), "blend.i64", 9uLL))
          {
            goto LABEL_822;
          }

          v111 = 251;
        }
      }

      rename(a1);
      v14 = *(a1 + 5);
      v15 = v111;
      goto LABEL_525;
    case 's':
      if (v6 != 24)
      {
        goto LABEL_822;
      }

      v21 = *v12 == 0x6F72706B63617473 && *(ValueName + 29) == 0x6863726F74636574;
      if (!v21 || *(ValueName + 32) != 0x6B63656863726F74)
      {
        goto LABEL_822;
      }

      goto LABEL_46;
    case 'v':
      if (v6 != 19)
      {
        goto LABEL_822;
      }

      v18 = *v12 == 0x6F6E6E612E726176 && *(ValueName + 27) == 0x6E6F697461746F6ELL;
      if (!v18 || *(a1 + 12) != 4)
      {
        goto LABEL_822;
      }

      rename(a1);
      v19 = *(a1 + 5);
      if (*(a1 + 9))
      {
        llvm::Function::BuildLazyArguments(a1);
        v144 = *(a1 + 9);
        v20 = *(a1 + 11);
        v286.__r_.__value_.__r.__words[0] = *v20;
        if (v144)
        {
          llvm::Function::BuildLazyArguments(a1);
          v20 = *(a1 + 11);
        }
      }

      else
      {
        v20 = *(a1 + 11);
        v286.__r_.__value_.__r.__words[0] = *v20;
      }

      v286.__r_.__value_.__l.__size_ = v20[5];
      v85 = &v286;
      v14 = v19;
      v15 = 319;
      goto LABEL_661;
    case 'w':
      if (v13 < 9)
      {
        goto LABEL_14;
      }

      if (*v12 == 0x616D662E6D736177 && *(ValueName + 29) == 46)
      {
        rename(a1);
        v25 = *(a1 + 5);
        v286.__r_.__value_.__r.__words[0] = **(*(a1 + 3) + 16);
        v9 = 1;
        v26 = 10138;
        goto LABEL_457;
      }

      if (*v12 == 0x736D662E6D736177 && *(ValueName + 29) == 46)
      {
        rename(a1);
        v25 = *(a1 + 5);
        v286.__r_.__value_.__r.__words[0] = **(*(a1 + 3) + 16);
        v9 = 1;
        v26 = 10141;
        goto LABEL_457;
      }

      if (v13 >= 0x10 && *v12 == 0x6E616C2E6D736177 && *(ValueName + 29) == 0x2E7463656C657365)
      {
        rename(a1);
        v25 = *(a1 + 5);
        v286.__r_.__value_.__r.__words[0] = **(*(a1 + 3) + 16);
        v9 = 1;
        v26 = 10137;
        goto LABEL_457;
      }

LABEL_14:
      if (v6 != 36)
      {
        if (v6 == 32 && !memcmp((ValueName + 21), "wasm.dot.i8x16.i7x16.signed", v13))
        {
          rename(a1);
          v14 = *(a1 + 5);
          v15 = 10136;
          goto LABEL_525;
        }

        goto LABEL_822;
      }

      if (memcmp((ValueName + 21), "wasm.dot.i8x16.i7x16.add.signed", v13))
      {
        goto LABEL_822;
      }

      rename(a1);
      v14 = *(a1 + 5);
      v15 = 10135;
      goto LABEL_525;
    case 'x':
      if (UpgradeX86IntrinsicFunction(a1, ValueName + 21, v6 - 5, a2))
      {
        return 1;
      }

      goto LABEL_822;
    default:
      goto LABEL_822;
  }
}

char *llvm::UpgradeGlobalVariable(uint64_t **this, llvm::GlobalVariable *a2)
{
  v48[1] = *MEMORY[0x277D85DE8];
  if ((this[4] & 0xF) == 6 && ((*(this + 23) & 0x10) != 0 && (v3 = llvm::Value::getValueName(this), *v3 == 12) && (*(v3 + 16) == 0x646D632E6D766C6CLL ? (v4 = *(v3 + 24) == 1701734764) : (v4 = 0), v4) || (*(this + 23) & 0x10) != 0 && (v5 = llvm::Value::getValueName(this), *v5 == 20) && (*(v5 + 16) == 0x626D652E6D766C6CLL ? (v6 = *(v5 + 24) == 0x6F6D2E6465646465) : (v6 = 0), v6 ? (v7 = *(v5 + 32) == 1701606756) : (v7 = 0), v7)))
  {
    v14 = 0;
    *(this + 8) = this[4] & 0xFFFFBCC0 | 0x4008;
  }

  else
  {
    if ((*(this + 23) & 0x10) == 0)
    {
      return 0;
    }

    ValueName = llvm::Value::getValueName(this);
    if (*ValueName != 17 || (*(ValueName + 16) == 0x6F6C672E6D766C6CLL ? (v9 = *(ValueName + 24) == 0x726F74635F6C6162) : (v9 = 0), v9 ? (v10 = *(ValueName + 32) == 115) : (v10 = 0), !v10))
    {
      if ((*(this + 23) & 0x10) == 0)
      {
        return 0;
      }

      v11 = llvm::Value::getValueName(this);
      if (*v11 != 17)
      {
        return 0;
      }

      v12 = *(v11 + 16) == 0x6F6C672E6D766C6CLL && *(v11 + 24) == 0x726F74645F6C6162;
      if (!v12 || *(v11 + 32) != 115)
      {
        return 0;
      }
    }

    if (*(this + 16))
    {
      if (*(this + 16) == 3 && (*(this + 5) & 0x7FFFFFF) == 0)
      {
        return 0;
      }
    }

    else if (this[9] == (this + 9) && (*(this + 35) & 1) == 0)
    {
      return 0;
    }

    v14 = 0;
    v15 = this[3];
    if (v15)
    {
      if (*(v15 + 8) == 17)
      {
        v14 = 0;
        v16 = v15[3];
        if (v16)
        {
          if (*(v16 + 8) == 16)
          {
            if (*(v16 + 12) != 2)
            {
              return 0;
            }

            v17 = **this;
            v39 = v41;
            v40 = 0x200000000;
            v41[6] = v17;
            v41[7] = &v47;
            v41[8] = v48;
            v41[9] = 0;
            v42 = 0;
            v43 = 512;
            v44 = 7;
            v41[4] = 0;
            v41[5] = 0;
            v45 = 0;
            v46 = 0;
            v47 = &unk_2883F13A8;
            v48[0] = &unk_2883F1498;
            v32 = **(v16 + 16);
            v18 = llvm::PointerType::get((*v17 + 1944), 0);
            v19 = *v32;
            v36 = v32;
            v37 = v18;
            v20 = llvm::StructType::get(v19, &v36, 3, 0);
            v21 = *(*(this - 4) + 5);
            __p = 0;
            v34 = 0;
            v35 = 0;
            if ((v21 & 0x7FFFFFF) != 0)
            {
              std::vector<llvm::jitlink::Block *>::__vallocate[abi:nn200100](&__p, v21 & 0x7FFFFFF);
            }

            llvm::ArrayType::get(v20, (v21 & 0x7FFFFFF));
            v23 = llvm::ConstantArray::get(v22, __p, ((v34 - __p) >> 3));
            v24 = operator new(0x78uLL);
            v14 = (v24 + 8);
            v24[13] = v24[13] & 0x38000000 | 1;
            *v24 = 0;
            *(v24 + 1) = 0;
            *(v24 + 2) = 0;
            *(v24 + 3) = v24 + 8;
            v25 = *v23;
            v26 = *(this + 8);
            if ((*(this + 23) & 0x10) != 0)
            {
              v30 = llvm::Value::getValueName(this);
              v31 = *v30;
              v28 = v30 + 2;
              v27 = v31;
            }

            else
            {
              v27 = 0;
              v28 = &str_3_24;
            }

            v38 = 261;
            *&v36 = v28;
            *(&v36 + 1) = v27;
            llvm::GlobalVariable::GlobalVariable(v14, v25, 0, v26 & 0xF, v23, &v36, 0, 0, 0);
            if (__p)
            {
              v34 = __p;
              operator delete(__p);
            }

            if (v39 != v41)
            {
              free(v39);
            }
          }
        }
      }
    }
  }

  return v14;
}

std::string *llvm::UpgradeInlineAsmString(std::string *__s)
{
  v1 = __s;
  v2 = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  if (v2 < 0)
  {
    v3 = __s->__r_.__value_.__r.__words[0];
    size = __s->__r_.__value_.__l.__size_;
  }

  else
  {
    v3 = __s;
    size = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  }

  if (size >= 6)
  {
    v5 = v3 + size;
    __s = v3;
    do
    {
      __s = memchr(__s, 109, size - 5);
      if (!__s)
      {
        break;
      }

      if (LODWORD(__s->__r_.__value_.__l.__data_) == 158756717 && WORD2(__s->__r_.__value_.__r.__words[0]) == 28774)
      {
        if (__s == v3)
        {
          if ((v2 & 0x80000000) != 0)
          {
            v7 = v1->__r_.__value_.__r.__words[0];
            v8 = v1->__r_.__value_.__l.__size_;
          }

          else
          {
            v7 = v1;
            v8 = v2;
          }

          if (v8 >= 33)
          {
            v9 = (v7 + v8);
            __s = v7;
            while (1)
            {
              __s = memchr(__s, 111, v8 - 32);
              if (!__s)
              {
                break;
              }

              v10 = __s;
              __s = memcmp(__s, "objc_retainAutoreleaseReturnValue", 0x21uLL);
              if (!__s)
              {
                if (v10 != v9 && v10 - v7 != -1)
                {
                  if ((v2 & 0x80000000) != 0)
                  {
                    v11 = v1->__r_.__value_.__r.__words[0];
                    v2 = v1->__r_.__value_.__l.__size_;
                  }

                  else
                  {
                    v11 = v1;
                  }

                  if (v2 >= 8)
                  {
                    v12 = (v11 + v2);
                    __s = v11;
                    while (1)
                    {
                      __s = memchr(__s, 35, v2 - 7);
                      if (!__s)
                      {
                        break;
                      }

                      if (__s->__r_.__value_.__r.__words[0] == 0x72656B72616D2023)
                      {
                        if (__s != v12 && __s - v11 != -1)
                        {

                          return std::string::replace(v1, __s - v11, 1uLL, ";");
                        }

                        return __s;
                      }

                      __s = (__s + 1);
                      v2 = v12 - __s;
                      if (v12 - __s < 8)
                      {
                        return __s;
                      }
                    }
                  }
                }

                return __s;
              }

              __s = (&v10->__r_.__value_.__l.__data_ + 1);
              v8 = v9 - (&v10->__r_.__value_.__l.__data_ + 1);
              if (v8 < 33)
              {
                return __s;
              }
            }
          }
        }

        return __s;
      }

      __s = (__s + 1);
      size = v5 - __s;
    }

    while (v5 - __s >= 6);
  }

  return __s;
}

void llvm::UpgradeIntrinsicCall(llvm *this, llvm::CallBase *a2, llvm::Function *a3)
{
  v1772[1] = *MEMORY[0x277D85DE8];
  v1741 = a2;
  v1742 = this;
  v4 = *(this - 4);
  if (v4)
  {
    v5 = *(v4 + 16) == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = **this;
    v7 = v1757;
    v1756[0] = v1757;
    v1756[1] = 0x200000000;
    v1759 = 0;
    v1760 = v6;
    v1761 = &v1769;
    v1762 = &v1770;
    v1763 = 0;
    v1764 = 0;
    v1765 = 512;
    v1766 = 7;
    v1758 = 0;
    v1768 = 0;
    v1767 = 0;
    v1769 = &unk_2883F13A8;
    v1770 = &unk_2883F1498;
    llvm::IRBuilderBase::SetInsertPoint(v1756, *(this + 5), this + 24);
    v13 = v1741;
    if (v1741)
    {
      v1737 = &v1742;
      v1738 = &v1741;
      v1739 = v1756;
      v14 = *(v1741 + 9);
      if (v14 > 2933)
      {
        if (v14 > 10958)
        {
          if (v14 > 11392)
          {
            if (v14 <= 11534)
            {
              if ((v14 - 11393) >= 4)
              {
                if ((v14 - 11400) < 3)
                {
                  v15 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                  v16 = *v15;
                  llvm::FixedVectorType::get((*v6 + 1704), 4);
                  if (v16 == v17)
                  {
                    v18 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4];
                    llvm::FixedVectorType::get((*v6 + 2016), 2);
                    v20 = v19;
                    __src = "cast";
                    LOWORD(NullValue) = 259;
                    Cast = llvm::IRBuilderBase::CreateCast(v1756, 49, v15, v19, &__src);
                    __src = "cast";
                    LOWORD(NullValue) = 259;
                    v22 = llvm::IRBuilderBase::CreateCast(v1756, 49, v18, v20, &__src);
                    v23 = v1741;
                    if (v1741)
                    {
                      v24 = *(v1741 + 3);
                    }

                    else
                    {
                      v24 = 0;
                    }

                    v1753[0] = Cast;
LABEL_516:
                    v1753[1] = v22;
                    LOWORD(NullValue) = 257;
                    v192 = v1753;
LABEL_517:
                    v193 = 2;
                    goto LABEL_894;
                  }

LABEL_901:
                  if (v1756[0] != v7)
                  {
                    free(v1756[0]);
                  }

                  return;
                }

LABEL_529:
                llvm::UpgradeIntrinsicCall(llvm::CallBase *,llvm::Function *)::$_0::operator()(&v1737, v8, v9);
                goto LABEL_901;
              }

              goto LABEL_344;
            }

            if ((v14 - 11537) < 4)
            {
              v99 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
              v100 = llvm::CallBase::arg_end(v1742);
              __src = &v1750;
              v1749 = 0x400000000;
              llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&__src, v99, v100);
              llvm::VectorType::getInteger(**(__src + 2));
              v101 = *(__src + 2);
              v1755 = 257;
              v103 = llvm::IRBuilderBase::CreateCast(v1756, 49, v101, v102, v1753);
              v104 = __src;
              *(__src + 2) = v103;
              v105 = v1741;
              if (v1741)
              {
                v106 = *(v1741 + 3);
              }

              else
              {
                v106 = 0;
              }

              v196 = v1749;
              v1755 = 257;
              goto LABEL_312;
            }

            if ((v14 - 11535) >= 2)
            {
              goto LABEL_529;
            }

            v24 = *(v1741 + 3);
            v155 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4];
            goto LABEL_269;
          }

          if ((v14 - 10959) > 8)
          {
            if (v14 == 11268)
            {
              if ((*(v1742 + 5) & 0x7FFFFFF) != 0)
              {
                v254 = *(v1741 + 3);
                LOWORD(NullValue) = 257;
                v255 = llvm::IRBuilderBase::CreateCall(v1756, v254, v1741, 0, 0, &__src, 0);
                LODWORD(v1753[0]) = 1;
                LOWORD(NullValue) = 257;
                Value = llvm::IRBuilderBase::CreateExtractValue(v1756, v255, v1753, 1, &__src);
                v257 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                v258 = llvm::PointerType::get(*Value, 0);
                LOWORD(NullValue) = 257;
                v259 = llvm::IRBuilderBase::CreateCast(v1756, 49, v257, v258, &__src);
                llvm::IRBuilderBase::CreateAlignedStore(v1756, Value, v259, 256, 0);
                LODWORD(v1753[0]) = 0;
                LOWORD(NullValue) = 257;
                v260 = llvm::IRBuilderBase::CreateExtractValue(v1756, v255, v1753, 1, &__src);
                llvm::Value::takeName(v255, v1742);
                v261 = v1742;
                v262 = v260;
                goto LABEL_898;
              }

              goto LABEL_901;
            }

            goto LABEL_529;
          }

          if (((1 << (v14 + 49)) & 0x11F) != 0)
          {
            v43 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
            v44 = llvm::CallBase::arg_end(v1742);
            __src = &v1750;
            v1749 = 0x400000000;
            llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&__src, v43, v44);
            v45 = v1741;
            v46 = *(*v1742 + 32);
            v47 = __src;
            if (*(v1741 + 9) == 10967 && (v48 = *(__src + 1), llvm::FixedVectorType::get((*v1760 + 1680), *(*v1742 + 32)), v1755 = 257, v50 = llvm::IRBuilderBase::CreateCast(v1756, 49, v48, v49, v1753), v47 = __src, *(__src + 1) = v50, (v45 = v1741) == 0))
            {
              v51 = 0;
            }

            else
            {
              v51 = *(v45 + 3);
            }

            v1755 = 257;
            v52 = llvm::IRBuilderBase::CreateCall(v1756, v51, v45, v47, v1749, v1753, 0);
            llvm::FixedVectorType::get((*v1760 + 1968), v46);
            v1755 = 257;
            v54 = llvm::IRBuilderBase::CreateCast(v1756, 49, v52, v53, v1753);
            llvm::Value::takeName(v52, v1742);
            v55 = v1742;
            v56 = v54;
LABEL_265:
            llvm::Value::doRAUW(v55, v56, 1);
            llvm::iplist_impl<llvm::simple_ilist<llvm::Instruction>,llvm::SymbolTableListTraits<llvm::Instruction>>::erase(*(v1742 + 5) + 40, v1742 + 24);
            v175 = __src;
            if (__src == &v1750)
            {
              goto LABEL_901;
            }

            goto LABEL_266;
          }

          v144 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
          v145 = llvm::CallBase::arg_end(v1742);
          __src = &v1750;
          v1749 = 0x400000000;
          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&__src, v144, v145);
          v146 = (2 * *(*v1742 + 32));
          v147 = *(__src + 1);
          llvm::FixedVectorType::get((*v1760 + 1680), v146);
          v1755 = 257;
          v149 = llvm::IRBuilderBase::CreateCast(v1756, 49, v147, v148, v1753);
          v150 = __src;
          *(__src + 1) = v149;
          v151 = *(v150 + 2);
          llvm::FixedVectorType::get((*v1760 + 1680), v146);
          v1755 = 257;
          v153 = llvm::IRBuilderBase::CreateCast(v1756, 49, v151, v152, v1753);
          v154 = __src;
          *(__src + 2) = v153;
          v117 = v1741;
          if (v1741)
          {
            v118 = *(v1741 + 3);
          }

          else
          {
            v118 = 0;
          }

          v176 = v1749;
          v1755 = 257;
LABEL_348:
          AlignedLoad = llvm::IRBuilderBase::CreateCall(v1756, v118, v117, v154, v176, v1753, 0);
          v232 = __src;
          if (__src == &v1750)
          {
LABEL_895:
            v341 = v1742;
            v340 = AlignedLoad;
LABEL_896:
            llvm::Value::takeName(v340, v341);
            goto LABEL_897;
          }

LABEL_349:
          free(v232);
          goto LABEL_895;
        }

        if (v14 > 10315)
        {
          if ((v14 - 10464) < 6)
          {
            v94 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
            v95 = llvm::CallBase::arg_end(v1742);
            __src = &v1750;
            v1749 = 0x400000000;
            llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&__src, v94, v95);
            X86MaskVec = getX86MaskVec(v1756, *(__src + 3), *(**__src + 32));
            v97 = __src;
            *(__src + 3) = X86MaskVec;
            if (v1741)
            {
              v98 = *(v1741 + 3);
            }

            else
            {
              v98 = 0;
            }

            v1755 = 257;
            v189 = llvm::IRBuilderBase::CreateCall(v1756, v98, v1741, v97, v1749, v1753, 0);
            v191 = ApplyX86MaskOn1BitsVec(v1756, v189, 0, v190);
            llvm::Value::takeName(v189, v1742);
            v55 = v1742;
            v56 = v191;
            goto LABEL_265;
          }

          v42 = 10316;
LABEL_343:
          if (v14 != v42)
          {
            goto LABEL_529;
          }

LABEL_344:
          v249 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
          v250 = llvm::CallBase::arg_end(v1742);
          __src = &v1750;
          v1749 = 0x400000000;
          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&__src, v249, v250);
          v251 = *(__src + v1749 - 1);
          v252 = *v6;
          v1753[0] = "trunc";
          v1755 = 259;
          v253 = llvm::IRBuilderBase::CreateCast(v1756, 38, v251, (v252 + 1944), v1753);
          v176 = v1749;
          *(__src + v1749 - 1) = v253;
          v117 = v1741;
          if (v1741)
          {
            v118 = *(v1741 + 3);
          }

          else
          {
            v118 = 0;
          }

          v154 = __src;
          v1755 = 257;
          goto LABEL_348;
        }

        if ((v14 - 2934) > 9 || ((1 << (v14 - 118)) & 0x3F1) == 0)
        {
          v42 = 10247;
          goto LABEL_343;
        }

        goto LABEL_271;
      }

      if (v14 > 296)
      {
        if (v14 > 988)
        {
          if ((v14 - 2812) >= 4)
          {
            if ((v14 - 989) > 4 || ((1 << (v14 + 35)) & 0x15) == 0)
            {
              if ((v14 - 1221) >= 3)
              {
                goto LABEL_529;
              }

              if ((*(v4 + 23) & 0x10) != 0)
              {
                ValueName = llvm::Value::getValueName(v4);
                v221 = *ValueName;
                v28 = (ValueName + 2);
                v27 = v221;
              }

              else
              {
                v27 = 0;
                v28 = &str_3_24;
              }

              v222 = 5;
              if (v27 < 5)
              {
                v222 = v27;
              }

              if (v27 - v222 >= 0xF)
              {
                v224 = &v28[v222];
                if (*&v28[v222] == 0x2E34366863726161 && *&v28[v222 + 7] == 0x32646C2E6576732ELL)
                {
                  v223 = 2;
                }

                else if (*v224 == 0x2E34366863726161 && *(v224 + 7) == 0x33646C2E6576732ELL)
                {
                  v223 = 3;
                }

                else
                {
                  v227 = *v224;
                  v228 = *(v224 + 7);
                  v230 = v227 == 0x2E34366863726161 && v228 == 0x34646C2E6576732ELL;
                  v223 = 4 * v230;
                }
              }

              else
              {
                v223 = 0;
              }

              if (*(**(*(v4 + 24) + 16) + 8) == 19)
              {
                v395 = **(*(v4 + 24) + 16);
              }

              else
              {
                v395 = 0;
              }

              v396 = *(v395 + 8);
              v397 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
              v398 = llvm::CallBase::arg_end(v1742);
              v1753[0] = &v1754;
              v1753[1] = 0x200000000;
              llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(v1753, v397, v398);
              if (v1741)
              {
                v399 = *(v1741 + 3);
              }

              else
              {
                v399 = 0;
              }

              LOWORD(NullValue) = 257;
              v400 = v396 / v223;
              v401 = llvm::IRBuilderBase::CreateCall(v1756, v399, v1741, v1753[0], LODWORD(v1753[1]), &__src, 0);
              v403 = llvm::PoisonValue::get(v395, v402);
              v404 = 0;
              LODWORD(v1743) = 0;
              do
              {
                v405 = llvm::ConstantInt::get(*v6 + 2016, v404 * v400, 0);
                LOWORD(NullValue) = 257;
                v406 = llvm::IRBuilderBase::CreateExtractValue(v1756, v401, &v1743, 1, &__src);
                LOWORD(NullValue) = 257;
                v1771[0] = v395;
                v1771[1] = *v406;
                __p = v403;
                v1745 = v406;
                v1746 = v405;
                Declaration = llvm::Intrinsic::getDeclaration(*(*(v1758 + 56) + 40), 321, v1771, 2);
                if (Declaration)
                {
                  v408 = *(Declaration + 24);
                }

                else
                {
                  v408 = 0;
                }

                v409 = llvm::IRBuilderBase::CreateCall(v1756, v408, Declaration, &__p, 3, 0, 0, &__src, 0);
                v403 = v409;
                v404 = v1743 + 1;
                LODWORD(v1743) = v404;
              }

              while (v404 < v223);
              if (*(v409 + 16) == 84)
              {
                AlignedLoad = v409;
              }

              else
              {
                AlignedLoad = 0;
              }

              v232 = v1753[0];
              if (v1753[0] == &v1754)
              {
                goto LABEL_895;
              }

              goto LABEL_349;
            }

            v136 = **(v4 + 40);
            v137 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
            v138 = llvm::CallBase::arg_end(v1742);
            __src = &v1750;
            v1749 = 0x400000000;
            llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&__src, v137, v138);
            v139 = *(__src + 3);
            v140 = (v139 + 24);
            if (*(v139 + 32) >= 0x41u)
            {
              v140 = *v140;
            }

            v141 = llvm::ConstantInt::get(*v136 + 1992, *v140, 0);
            v104 = __src;
            *(__src + 3) = v141;
            v105 = v1741;
            if (v1741)
            {
              v106 = *(v1741 + 3);
            }

            else
            {
              v106 = 0;
            }

            goto LABEL_275;
          }

LABEL_174:
          __src = &v1750;
          v1749 = 0x300000000;
          PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(*(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4]);
          if (v107)
          {
          }

          llvm::FixedVectorType::get((*v6 + 1680), (PrimitiveSizeInBits >> 4));
          v111 = v110;
          v112 = (v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF));
          llvm::CallBase::arg_end(v1742);
          llvm::SmallVectorTemplateBase<void *,true>::push_back(&__src, *v112);
          v113 = v112[4];
          v1755 = 257;
          v114 = llvm::IRBuilderBase::CreateCast(v1756, 49, v113, v111, v1753);
          llvm::SmallVectorTemplateBase<void *,true>::push_back(&__src, v114);
          v115 = v112[8];
          v1755 = 257;
          v116 = llvm::IRBuilderBase::CreateCast(v1756, 49, v115, v111, v1753);
          llvm::SmallVectorTemplateBase<void *,true>::push_back(&__src, v116);
          v117 = v1741;
          if (v1741)
          {
            v118 = *(v1741 + 3);
          }

          else
          {
            v118 = 0;
          }

          v154 = __src;
          v176 = v1749;
          v1755 = 257;
          goto LABEL_348;
        }

        if (v14 <= 320)
        {
          if (v14 == 297)
          {
            v24 = *(v1741 + 3);
            LOWORD(NullValue) = 257;
            v23 = v1741;
            v192 = 0;
            v193 = 0;
            goto LABEL_894;
          }

          if (v14 != 319)
          {
            if (v14 == 320)
            {
              if ((*(v4 + 23) & 0x10) != 0)
              {
                v285 = llvm::Value::getValueName(v4);
                v286 = *v285;
                v85 = (v285 + 2);
                v84 = v286;
              }

              else
              {
                v84 = 0;
                v85 = &str_3_24;
              }

              v287 = 5;
              if (v84 < 5)
              {
                v287 = v84;
              }

              if (v84 - v287 >= 0x15)
              {
                v288 = *&v85[v287] == 0x2E34366863726161 && *&v85[v287 + 8] == 0x6C7075742E657673;
                if (v288 && *&v85[v287 + 13] == 0x7465672E656C7075)
                {
                  v290 = **(*(v4 + 24) + 16);
                  if (*(v290 + 8) != 19)
                  {
                    v290 = 0;
                  }

                  v291 = *(v290 + 32);
                  v292 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4];
                  v293 = (v292 + 24);
                  if (*(v292 + 32) >= 0x41u)
                  {
                    v293 = *v293;
                  }

                  v22 = llvm::ConstantInt::get(*v6 + 2016, (v291 * *v293), 0);
                  v23 = v1741;
                  if (v1741)
                  {
                    v24 = *(v1741 + 3);
                  }

                  else
                  {
                    v24 = 0;
                  }

                  v1753[0] = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                  goto LABEL_516;
                }
              }
            }

            goto LABEL_529;
          }

LABEL_278:
          v197 = v1742;
          if (((llvm::CallBase::arg_end(v1742) - (v197 - 32 * (*(v197 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0x80)
          {
            v198 = v1741;
            if (v1741)
            {
              v199 = *(v1741 + 3);
            }

            else
            {
              v199 = 0;
            }

            v335 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
            __src = *v335;
            v1749 = *(v335 + 4);
            v1750 = *(v335 + 8);
            v1751 = *(v335 + 12);
            v336 = llvm::PointerType::get((*v1760 + 1944), 0);
            NullValue = llvm::Constant::getNullValue(v336, v337, v338, v339);
            v1755 = 257;
            v340 = llvm::IRBuilderBase::CreateCall(v1756, v199, v198, &__src, 5, v1753, 0);
            AlignedLoad = v340;
            v341 = v1742;
            goto LABEL_896;
          }

          goto LABEL_529;
        }

        if ((v14 - 488) < 4)
        {
          goto LABEL_174;
        }

        if (v14 != 321)
        {
          goto LABEL_529;
        }

        if ((*(v4 + 23) & 0x10) != 0)
        {
          v342 = llvm::Value::getValueName(v4);
          v343 = *v342;
          v283 = v342 + 2;
          v282 = v343;
        }

        else
        {
          v282 = 0;
          v283 = &str_3_24;
        }

        v344 = 5;
        if (v282 < 5)
        {
          v344 = v282;
        }

        v345 = v282 - v344;
        if (v282 - v344 < 0x11)
        {
          goto LABEL_529;
        }

        v346 = &v283[v344];
        v347 = *&v283[v344] == 0x2E34366863726161 && *&v283[v344 + 8] == 0x6C7075742E657673;
        if (!v347 || v283[v344 + 16] != 101)
        {
          goto LABEL_529;
        }

        if (v345 < 0x15)
        {
LABEL_729:
          AlignedLoad = 0;
          goto LABEL_895;
        }

        if (*v346 != 0x2E34366863726161 || *(v346 + 1) != 0x6C7075742E657673 || *(v346 + 13) != 0x7465732E656C7075)
        {
          if (v345 >= 0x18)
          {
            v478 = *v346 == 0x2E34366863726161 && *(v346 + 1) == 0x6C7075742E657673;
            if (v478 && *(v346 + 2) == 0x6574616572632E65)
            {
              if (v345 == 24)
              {
                v713 = 0;
              }

              else if (*v346 == 0x2E34366863726161 && *(v346 + 1) == 0x6C7075742E657673 && *(v346 + 2) == 0x6574616572632E65 && v346[24] == 50)
              {
                v713 = 2;
              }

              else if (*v346 == 0x2E34366863726161 && *(v346 + 1) == 0x6C7075742E657673 && *(v346 + 2) == 0x6574616572632E65 && v346[24] == 51)
              {
                v713 = 3;
              }

              else
              {
                v741 = *v346;
                v742 = *(v346 + 1);
                v743 = *(v346 + 2);
                v744 = v346[24];
                v748 = v741 == 0x2E34366863726161 && v742 == 0x6C7075742E657673 && v743 == 0x6574616572632E65 && v744 == 52;
                v713 = 4 * v748;
              }

              if (*(**(*(v4 + 24) + 16) + 8) == 19)
              {
                v765 = **(*(v4 + 24) + 16);
              }

              else
              {
                v765 = 0;
              }

              v766 = llvm::PoisonValue::get(v765, v8);
              v767 = 0;
              v768 = 0;
              if (v713 <= 1)
              {
                v769 = 1;
              }

              else
              {
                v769 = v713;
              }

              v770 = 32 * v769;
              v771 = *(v765 + 8) / v713;
              do
              {
                v772 = llvm::ConstantInt::get(*v6 + 2016, (v771 * v768), 0);
                v773 = *(v1742 + v767 + -32 * (*(v1742 + 5) & 0x7FFFFFF));
                LOWORD(NullValue) = 257;
                __p = v765;
                v1745 = *v773;
                v1753[0] = v766;
                v1753[1] = v773;
                *&v1754 = v772;
                Intrinsic = llvm::IRBuilderBase::CreateIntrinsic(v1756, 321, &__p, 2, v1753, 3, 0, &__src);
                v766 = Intrinsic;
                ++v768;
                v767 += 32;
              }

              while (v770 != v767);
              if (*(Intrinsic + 16) == 84)
              {
                AlignedLoad = Intrinsic;
              }

              else
              {
                AlignedLoad = 0;
              }

              goto LABEL_895;
            }
          }

          goto LABEL_729;
        }

        v638 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
        if (*(*(v638 + 4) + 16) == 16)
        {
          v639 = *(v638 + 4);
        }

        else
        {
          v639 = 0;
        }

        v640 = (v639 + 24);
        if (*(v639 + 32) >= 0x41u)
        {
          v640 = *v640;
        }

        v641 = *v640;
        v642 = **(v638 + 8);
        if (*(v642 + 8) != 19)
        {
          v642 = 0;
        }

        v643 = llvm::ConstantInt::get(*v6 + 2016, v641 * *(v642 + 32), 0);
        v23 = v1741;
        if (v1741)
        {
          v24 = *(v1741 + 3);
        }

        else
        {
          v24 = 0;
        }

        v712 = (v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF));
        v1753[0] = *v712;
        v1753[1] = v712[8];
        *&v1754 = v643;
        goto LABEL_892;
      }

      if (v14 > 164)
      {
        v38 = v14 + 91;
        if ((v14 - 165) <= 0x25)
        {
          if (((1 << v38) & 0x3C00000) != 0)
          {
            v119 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
            v120 = llvm::CallBase::arg_end(v1742);
            __src = &v1750;
            v1749 = 0x400000000;
            llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&__src, v119, v120);
            if (v1741)
            {
              v121 = *(v1741 + 3);
            }

            else
            {
              v121 = 0;
            }

            v1755 = 257;
            AlignedLoad = llvm::IRBuilderBase::CreateCall(v1756, v121, v1741, __src, v1749, v1753, 0);
            llvm::Instruction::copyMetadata(AlignedLoad, v1742, 0, 0);
LABEL_313:
            v232 = __src;
            if (__src == &v1750)
            {
              goto LABEL_895;
            }

            goto LABEL_349;
          }

          if (((1 << v38) & 0x2900000000) != 0)
          {
            v39 = v1742;
            if (((llvm::CallBase::arg_end(v1742) - (v39 - 32 * (*(v39 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) != 0xA0)
            {
              goto LABEL_529;
            }

            v40 = (v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF));
            v1753[0] = *v40;
            v1753[1] = v40[4];
            *&v1754 = v40[8];
            *(&v1754 + 1) = v40[16];
            if (v1741)
            {
              v41 = *(v1741 + 3);
            }

            else
            {
              v41 = 0;
            }

            LOWORD(NullValue) = 257;
            AlignedLoad = llvm::IRBuilderBase::CreateCall(v1756, v41, v1741, v1753, 4, &__src, 0);
            v320 = *(v1742 + 8);
            if (!v320)
            {
              v322 = 0;
              v323 = 0;
              __src = 0;
              v1749 = 0;
LABEL_631:
              v1750 = 0;
LABEL_632:
              v1751 = v320;
              *(AlignedLoad + 8) = llvm::AttributeList::get(v6, v322, v323, &__src, 4uLL);
              v410 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[12];
              v411 = (v410 + 24);
              v412 = (v410 + 24);
              if (*(v410 + 32) >= 0x41u)
              {
                v412 = *v411;
              }

              v413 = *v412;
              v414 = __clz(v413) ^ 0x13F;
              if (v413)
              {
                v415 = v414;
              }

              else
              {
                v415 = 0;
              }

              llvm::MemIntrinsicBase<llvm::MemIntrinsic>::setDestAlignment(AlignedLoad, v415);
              if ((*(*(AlignedLoad - 4) + 36) - 197) <= 3 && *(*(AlignedLoad - 4) + 36) != 198)
              {
                if (*(v410 + 32) >= 0x41u)
                {
                  v411 = *v411;
                }

                v416 = __clz(*v411) ^ 0x13F;
                if (*v411)
                {
                  v417 = v416;
                }

                else
                {
                  v417 = 0;
                }

                llvm::MemTransferBase<llvm::MemIntrinsic>::setSourceAlignment(AlignedLoad, v417);
              }

              goto LABEL_895;
            }

            v321 = *(v320 + 8);
            if (v321)
            {
              v322 = *(v320 + 40);
              if (v321 != 1)
              {
                v323 = *(v320 + 48);
                if (v321 > 2)
                {
                  __src = *(v320 + 56);
                  if (v321 != 3)
                  {
                    v1749 = *(v320 + 64);
                    if (v321 > 4)
                    {
                      v1750 = *(v320 + 72);
                      if (v321 < 7)
                      {
                        v320 = 0;
                      }

                      else
                      {
                        v320 = *(v320 + 88);
                      }

                      goto LABEL_632;
                    }

                    goto LABEL_630;
                  }

LABEL_629:
                  v1749 = 0;
LABEL_630:
                  v320 = 0;
                  goto LABEL_631;
                }

LABEL_628:
                __src = 0;
                goto LABEL_629;
              }
            }

            else
            {
              v322 = 0;
            }

            v323 = 0;
            goto LABEL_628;
          }

          if (((1 << v38) & 3) != 0)
          {
LABEL_271:
            v194 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
            v195 = llvm::CallBase::arg_end(v1742);
            __src = &v1750;
            v1749 = 0x400000000;
            llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&__src, v194, v195);
            v105 = v1741;
            if (v1741)
            {
              v106 = *(v1741 + 3);
            }

            else
            {
              v106 = 0;
            }

            v104 = __src;
LABEL_275:
            v196 = v1749;
            v1755 = 257;
LABEL_312:
            AlignedLoad = llvm::IRBuilderBase::CreateCall(v1756, v106, v105, v104, v196, v1753, 0);
            goto LABEL_313;
          }
        }

        if (v14 == 240)
        {
          v263 = v1742;
          if (((llvm::CallBase::arg_end(v1742) - (v263 - 32 * (*(v263 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0x40)
          {
            v264 = *v1760;
            v265 = *(*v1760 + 1600);
            if (!v265)
            {
              v265 = llvm::ConstantInt::get(v264 + 1920, 0, 0);
              *(v264 + 1600) = v265;
            }

            v266 = v1742;
          }

          else
          {
            v266 = v1742;
            v265 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[8];
          }

          if (((llvm::CallBase::arg_end(v266) - (v266 - 32 * (*(v266 + 5) & 0x7FFFFFF))) & 0x1FFFFFFF80) != 0)
          {
            v334 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[12];
          }

          else
          {
            v349 = *v1760;
            v334 = *(*v1760 + 1600);
            if (!v334)
            {
              v334 = llvm::ConstantInt::get(v349 + 1920, 0, 0);
              *(v349 + 1600) = v334;
            }
          }

          v23 = v1741;
          if (v1741)
          {
            v24 = *(v1741 + 3);
          }

          else
          {
            v24 = 0;
          }

          v350 = (v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF));
          v1753[0] = *v350;
          v1753[1] = v350[4];
          *&v1754 = v265;
          *(&v1754 + 1) = v334;
          LOWORD(NullValue) = 257;
          v192 = v1753;
          v193 = 4;
          goto LABEL_894;
        }

        if (v14 != 249)
        {
          goto LABEL_529;
        }

        goto LABEL_278;
      }

      if (v14 > 53)
      {
        if (v14 != 54)
        {
          if (v14 != 55)
          {
            if (v14 != 59)
            {
              goto LABEL_529;
            }

            if ((*(v4 + 23) & 0x10) != 0)
            {
              v329 = llvm::Value::getValueName(v4);
              v330 = *v329;
              v143 = (v329 + 2);
              v142 = v330;
            }

            else
            {
              v142 = 0;
              v143 = &str_3_24;
            }

            v331 = 5;
            if (v142 < 5)
            {
              v331 = v142;
            }

            if (v142 - v331 >= 8 && *&v143[v331] == 0x726464612E676264)
            {
              v469 = *((v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[8] + 24);
              __src = 6;
              v470 = llvm::DIExpression::append(v469, &__src, 1);
              v471 = v1741;
              if (v1741)
              {
                v472 = *(v1741 + 3);
              }

              else
              {
                v472 = 0;
              }

              v521 = (v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF));
              v1753[0] = *v521;
              v1753[1] = v521[4];
              *&v1754 = llvm::MetadataAsValue::get(v6, v470);
              LOWORD(NullValue) = 257;
              v192 = v1753;
              v24 = v472;
              v23 = v471;
              goto LABEL_893;
            }

            v332 = v1742;
            v333 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4];
            if (!v333 || v333[16] > 0x14u)
            {
LABEL_900:
              llvm::iplist_impl<llvm::simple_ilist<llvm::Instruction>,llvm::SymbolTableListTraits<llvm::Instruction>>::erase(*(v332 + 5) + 40, v332 + 24);
              goto LABEL_901;
            }

            if ((llvm::Constant::isZeroValue(v333, v8, v9, v10) & 1) == 0)
            {
              goto LABEL_899;
            }

            v23 = v1741;
            if (v1741)
            {
              v24 = *(v1741 + 3);
            }

            else
            {
              v24 = 0;
            }

            v565 = (v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF));
            v1753[0] = *v565;
            v1753[1] = v565[8];
            *&v1754 = v565[12];
LABEL_892:
            LOWORD(NullValue) = 257;
            v192 = v1753;
LABEL_893:
            v193 = 3;
            goto LABEL_894;
          }

LABEL_281:
          v200 = *(v1741 + 3);
          v1753[0] = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
          v201 = *v1760;
          v202 = *(*v1760 + 1600);
          if (!v202)
          {
            v202 = llvm::ConstantInt::get(v201 + 1920, 0, 0);
            *(v201 + 1600) = v202;
          }

          v1753[1] = v202;
          LOWORD(NullValue) = 257;
          v192 = v1753;
          v24 = v200;
          v23 = v13;
          goto LABEL_517;
        }
      }

      else if (v14 != 8 && v14 != 18)
      {
        if (v14 != 53)
        {
          goto LABEL_529;
        }

        goto LABEL_281;
      }

      v24 = *(v1741 + 3);
      v155 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
LABEL_269:
      v1753[0] = v155;
      LOWORD(NullValue) = 257;
      v192 = v1753;
      v23 = v1741;
      v193 = 1;
LABEL_894:
      AlignedLoad = llvm::IRBuilderBase::CreateCall(v1756, v24, v23, v192, v193, &__src, 0);
      goto LABEL_895;
    }

    if ((*(v4 + 23) & 0x10) != 0)
    {
      v29 = llvm::Value::getValueName(v4);
      v30 = *v29;
      v26 = (v29 + 2);
      v25 = v30;
    }

    else
    {
      v25 = 0;
      v26 = &str_3_24;
    }

    v31 = 5;
    if (v25 < 5)
    {
      v31 = v25;
    }

    v32 = v25 - v31;
    v33 = &v26[v31];
    v1737 = &v26[v31];
    v1738 = v32;
    v34 = *&v26[v31];
    v5 = v34 == 775305336;
    v35 = v34 != 775305336;
    if (v5)
    {
      v33 = (v33 + 4);
      v32 -= 4;
      v1737 = v33;
      v1738 = v32;
    }

    v36 = v32 > 4;
    if (v32 >= 5)
    {
      if (*v33 != 1836480110 || *(v33 + 4) != 46)
      {
        v36 = 0;
LABEL_56:
        if (*v33 == 778924641)
        {
          v33 = (v33 + 4);
          v32 -= 4;
          v1737 = v33;
          v1738 = v32;
        }

LABEL_58:
        if (v35)
        {
          ShuffleVector = 0;
          if (v32 == 19)
          {
            if (*v33 != 0x6F72706B63617473 || v33[1] != 0x6863726F74636574 || *(v33 + 11) != 0x6B63656863726F74)
            {
              goto LABEL_125;
            }

            goto LABEL_899;
          }

          if (v32 != 23)
          {
            goto LABEL_125;
          }

          v57 = 0;
LABEL_62:
          if (*v33 != 0x6D2E323135787661 || v33[1] != 0x766F6D702E6B7361 || *(v33 + 15) != 0x3635322E64712E76)
          {
            v60 = *v33 == 0x6D2E323135787661 && v33[1] == 0x766F6D702E6B7361;
            if (!v60 || *(v33 + 15) != 0x3231352E64712E76)
            {
              v62 = *v33 == 0x6D2E323135787661 && v33[1] == 0x766F6D702E6B7361;
              if (!v62 || *(v33 + 15) != 0x3635322E62772E76)
              {
                v64 = *v33 == 0x6D2E323135787661 && v33[1] == 0x766F6D702E6B7361;
                if (!v64 || *(v33 + 15) != 0x3231352E62772E76)
                {
                  if ((v57 & 1) == 0)
                  {
                    goto LABEL_125;
                  }

                  if (*v33 != 0x6F7262762E787661 || v33[1] != 0x3166747361636461 || *(v33 + 8) != 14386)
                  {
                    v68 = 23;
LABEL_99:
                    v70 = *v33 == 0x6D2E323135787661 && v33[1] == 0x667568732E6B7361 && *(v33 + 8) == 26926;
                    if (v70 || (*v33 == 0x6D2E323135787661 ? (v71 = v33[1] == 0x667568732E6B7361) : (v71 = 0), v71 ? (v72 = *(v33 + 8) == 26158) : (v72 = 0), v72))
                    {
                      v429 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[8];
                      v430 = (v429 + 24);
                      if (*(v429 + 32) >= 0x41u)
                      {
                        v430 = *v430;
                      }

                      v431 = *v430;
                      v432 = *v1742;
                      v435 = llvm::Type::getPrimitiveSizeInBits(*v1742);
                      if (v433)
                      {
                      }

                      v436 = v435 >> 7;
                      if ((*(v432 + 8) & 0xFE) == 0x12)
                      {
                        v432 = **(v432 + 16);
                      }

                      v437 = llvm::Type::getPrimitiveSizeInBits(v432);
                      __src = &v1750;
                      v1749 = 0x800000000;
                      llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, 0);
                      if (v436)
                      {
                        v438 = 0;
                        v439 = v436 >> 1;
                        do
                        {
                          if (v437 <= 0x80)
                          {
                            v440 = 0;
                            if (v438 >= v439)
                            {
                              v441 = v435 >> 7;
                            }

                            else
                            {
                              v441 = 0;
                            }

                            v442 = (((v431 >> (v438 * v439)) & (v436 - 1)) + v441) * (0x80 / v437);
                            v443 = 0x80 / v437;
                            do
                            {
                              llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&__src, v440 + v442);
                              ++v440;
                              --v443;
                            }

                            while (v443);
                          }

                          ++v438;
                        }

                        while (v438 != v436);
                      }

                      v444 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                      v445 = *v444;
                      v446 = *(v444 + 4);
                      v1755 = 257;
                      ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(v1756, v445, v446, __src, v1749, v1753);
                      v447 = (v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF));
                      ShuffleVector = EmitX86Select(v1756, v447[16], ShuffleVector, v447[12]);
                      if (__src != &v1750)
                      {
                        free(__src);
                      }

                      v7 = v1757;
                      goto LABEL_1380;
                    }

                    if (v68 < 0x16)
                    {
                      i = 0;
                      v74 = 1;
                      goto LABEL_782;
                    }

                    if (*v33 != 0x6D2E323135787661 || v33[1] != 0x616F72622E6B7361 || *(v33 + 14) != 0x667473616364616FLL)
                    {
                      v513 = *v33 == 0x6D2E323135787661 && v33[1] == 0x616F72622E6B7361;
                      if (!v513 || *(v33 + 14) != 0x697473616364616FLL)
                      {
                        v74 = 0;
                        for (i = 0; ; i = 1)
                        {
LABEL_782:
                          v515 = *v33 == 0x7262702E32787661 && *(v33 + 7) == 0x7473616364616F72;
                          if (v515 || (*v33 == 0x7262762E32787661 ? (v516 = *(v33 + 7) == 0x7473616364616F72) : (v516 = 0), v516))
                          {
LABEL_1310:
                            v716 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                            llvm::VectorType::get((*v6 + 1992), (*(*v1742 + 32) | ((*(*v1742 + 8) == 19) << 32)), v9);
                            __src = &v1750;
                            v1749 = 0x800000000;
                            v721 = llvm::Constant::getNullValue(v717, v718, v719, v720);
                            llvm::ShuffleVectorInst::getShuffleMask(v721, &__src, v722, v723);
                            v1755 = 257;
                            ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(v1756, v716, __src, v1749, v1753);
                            v724 = v1742;
                            if (((llvm::CallBase::arg_end(v1742) - (v724 - 32 * (*(v724 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0x60)
                            {
                              v561 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                              v562 = *(v561 + 8);
                              v560 = ShuffleVector;
                              goto LABEL_1312;
                            }

                            goto LABEL_1313;
                          }

                          if (v68 < 0x11)
                          {
                            break;
                          }

                          if (*v33 == 0x702E323135787661 && v33[1] == 0x73616364616F7262 && *(v33 + 16) == 116)
                          {
                            goto LABEL_1310;
                          }

                          v3 = v7;
                          if (v68 < 0x17)
                          {
                            v518 = 0;
                            v517 = 0;
                            goto LABEL_1140;
                          }

                          if (*v33 == 0x6D2E323135787661 && v33[1] == 0x616F72622E6B7361 && *(v33 + 15) == 0x732E747361636461)
                          {
                            goto LABEL_1310;
                          }

                          v518 = 0;
                          v517 = 0;
                          v655 = 0;
LABEL_1141:
                          v656 = *v33 == 0x6461702E32657373 && *(v33 + 3) == 0x2E73646461702E32;
                          if (v656 || (*v33 == 0x6461702E32787661 ? (v657 = *(v33 + 3) == 0x2E73646461702E32) : (v657 = 0), v657 || (v658 = v68 < 0xD, v68 >= 0xD) && (*v33 == 0x702E323135787661 ? (v659 = *(v33 + 5) == 0x2E73646461702E32) : (v659 = 0), v659)) || (i & 1) == 0 && (*v33 == 0x6D2E323135787661 ? (v660 = v33[1] == 0x646461702E6B7361) : (v660 = 0), v660 ? (v661 = *(v33 + 8) == 11891) : (v661 = 0), v661))
                          {
                            v692 = v1742;
                            v693 = 265;
LABEL_1606:
                            InsertElement = UpgradeX86BinaryIntrinsics(v1756, v692, v693);
                            goto LABEL_1607;
                          }

                          v662 = *v33 == 0x7573702E32657373 && *(v33 + 3) == 0x2E73627573702E32;
                          if (v662 || ((v10 = *(v33 + 3), *v33 == 0x7573702E32787661) ? (v663 = v10 == 0x2E73627573702E32) : (v663 = 0), v663 || v68 >= 0xD && ((v10 = *(v33 + 5), *v33 == 0x702E323135787661) ? (v664 = v10 == 0x2E73627573702E32) : (v664 = 0), v664)) || (i & 1) == 0 && ((v10 = *(v33 + 8), *v33 == 0x6D2E323135787661) ? (v665 = v33[1] == 0x627573702E6B7361) : (v665 = 0), v665 ? (v666 = v10 == 11891) : (v666 = 0), v666))
                          {
                            v692 = v1742;
                            v693 = 286;
                            goto LABEL_1606;
                          }

                          if (v68 < 0xC)
                          {
                            v667 = 1;
                            v68 = 11;
                            v668 = 1;
                            v669 = 1;
                            goto LABEL_1185;
                          }

                          v759 = *v33 == 0x6461702E32657373 && *(v33 + 2) == 779318628;
                          if (v759 || ((v10 = *(v33 + 2), *v33 == 0x6461702E32787661) ? (v760 = v10 == 779318628) : (v760 = 0), v760 || v68 >= 0x13 && ((v10 = 0x6D2E323135787661, *v33 == 0x6D2E323135787661) ? (v761 = v33[1] == 0x646461702E6B7361) : (v761 = 0), v761 ? (v762 = *(v33 + 11) == 0x2E7375646461702ELL) : (v762 = 0), v762)))
                          {
                            v692 = v1742;
                            v693 = 303;
                            goto LABEL_1606;
                          }

                          v763 = *v33 == 0x7573702E32657373 && *(v33 + 2) == 779318626;
                          if (v763 || (*v33 == 0x7573702E32787661 ? (v764 = *(v33 + 2) == 779318626) : (v764 = 0), v764))
                          {
LABEL_1605:
                            v692 = v1742;
                            v693 = 314;
                            goto LABEL_1606;
                          }

                          if (v68 >= 0x13)
                          {
                            if (*v33 == 0x6D2E323135787661 && v33[1] == 0x627573702E6B7361 && *(v33 + 11) == 0x2E7375627573702ELL)
                            {
                              goto LABEL_1605;
                            }

                            v669 = v68 == 19;
                            if (v68 != 19)
                            {
                              v877 = *v33 == 0x6D2E323135787661 && v33[1] == 0x696C61702E6B7361;
                              if (v877 && *(v33 + 4) == 779251303)
                              {
                                v1194 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                                v1072 = *v1194;
                                v1073 = *(v1194 + 4);
                                v1074 = *(v1194 + 8);
                                v1075 = *(v1194 + 12);
                                v1076 = *(v1194 + 16);
                                v1077 = 0;
LABEL_2460:
                                InsertElement = UpgradeX86ALIGNIntrinsics(v1756, v1072, v1073, v1074, v1075, v1076, v1077);
                                goto LABEL_1607;
                              }
                            }

                            if (*v33 == 0x6D2E323135787661 && v33[1] == 0x696C61762E6B7361 && *(v33 + 11) == 0x2E6E67696C61762ELL)
                            {
                              v1071 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                              v1072 = *v1071;
                              v1073 = *(v1071 + 4);
                              v1074 = *(v1071 + 8);
                              v1075 = *(v1071 + 12);
                              v1076 = *(v1071 + 16);
                              v1077 = 1;
                              goto LABEL_2460;
                            }

                            v667 = 0;
                            v658 = 0;
                            v668 = 0;
                          }

                          else
                          {
                            v667 = 0;
                            v668 = 1;
                            v669 = 1;
                          }

LABEL_1596:
                          if (v68 > 14)
                          {
                            if (v68 == 15)
                            {
                              v923 = *v33 == 0x6C73702E32657373 && *(v33 + 7) == 0x73622E71642E6C6CLL;
                              if (v923 || (*v33 == 0x6C73702E32787661 ? (v924 = *(v33 + 7) == 0x73622E71642E6C6CLL) : (v924 = 0), v924))
                              {
LABEL_1729:
                                v928 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                                v929 = *(v928 + 4);
                                v930 = (v929 + 24);
                                if (*(v929 + 32) >= 0x41u)
                                {
                                  v930 = *v930;
                                }

                                v931 = *v930;
                                v932 = *v928;
                                goto LABEL_2229;
                              }

                              v925 = *v33 == 0x7273702E32657373 && *(v33 + 7) == 0x73622E71642E6C72;
                              if (v925 || ((v10 = 0x7273702E32787661, *v33 == 0x7273702E32787661) ? (v926 = *(v33 + 7) == 0x73622E71642E6C72) : (v926 = 0), v926))
                              {
LABEL_2429:
                                v1165 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                                v1166 = *(v1165 + 4);
                                v1167 = (v1166 + 24);
                                if (*(v1166 + 32) >= 0x41u)
                                {
                                  v1167 = *v1167;
                                }

                                v922 = *v1167;
                                v921 = *v1165;
                                goto LABEL_2432;
                              }

LABEL_1723:
                              if (*v33 == 0x6C622E3134657373 && *(v33 + 2) == 1885630053)
                              {
                                goto LABEL_2235;
                              }

                              if (v667)
                              {
                                goto LABEL_1728;
                              }

                              goto LABEL_1185;
                            }

                            if (v68 == 18)
                            {
                              if (*v33 == 0x702E323135787661 && v33[1] == 0x352E71642E6C6C73 && *(v33 + 8) == 12849)
                              {
                                goto LABEL_1729;
                              }

                              v10 = *v33;
                              if (*v33 == 0x702E323135787661 && v33[1] == 0x352E71642E6C7273 && *(v33 + 8) == 12849)
                              {
                                goto LABEL_2429;
                              }

                              goto LABEL_1723;
                            }
                          }

                          else
                          {
                            if (v68 == 12)
                            {
                              v914 = *v33 == 0x6C73702E32657373 && *(v33 + 2) == 1902390892;
                              if (v914 || (*v33 == 0x6C73702E32787661 ? (v915 = *(v33 + 2) == 1902390892) : (v915 = 0), v915))
                              {
                                v1078 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                                v1079 = *(v1078 + 4);
                                v1080 = (v1079 + 24);
                                if (*(v1079 + 32) >= 0x41u)
                                {
                                  v1080 = *v1080;
                                }

                                v932 = *v1078;
                                v931 = *v1080 >> 3;
LABEL_2229:
                                InsertElement = UpgradeX86PSLLDQIntrinsics(v1756, v932, v931);
                                goto LABEL_1607;
                              }

                              v916 = *v33 == 0x7273702E32657373 && *(v33 + 2) == 1902390892;
                              if (v916 || ((v10 = 0x7273702E32787661, *v33 == 0x7273702E32787661) ? (v917 = *(v33 + 2) == 1902390892) : (v917 = 0), v917))
                              {
                                v918 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                                v919 = *(v918 + 4);
                                v920 = (v919 + 24);
                                if (*(v919 + 32) >= 0x41u)
                                {
                                  v920 = *v920;
                                }

                                v921 = *v918;
                                v922 = *v920 >> 3;
LABEL_2432:
                                InsertElement = UpgradeX86PSRLDQIntrinsics(v1756, v921, v922);
                                goto LABEL_1607;
                              }

                              goto LABEL_1723;
                            }

                            if (v68 == 13)
                            {
                              if (*v33 == 0x62702E3134657373 && *(v33 + 5) == 0x77646E656C62702ELL)
                              {
                                goto LABEL_2235;
                              }

                              goto LABEL_1723;
                            }
                          }

                          if (v667)
                          {
                            v667 = 1;
LABEL_1728:
                            v671 = 1;
                            goto LABEL_1190;
                          }

                          if (*v33 == 0x6C622E3134657373 && *(v33 + 2) == 1885630053)
                          {
                            goto LABEL_2235;
                          }

                          v667 = 0;
LABEL_1185:
                          if (*v33 == 0x6E656C622E787661 && *(v33 + 3) == 0x702E646E656C622ELL)
                          {
                            goto LABEL_2235;
                          }

                          v671 = 0;
LABEL_1190:
                          if (v68 == 12 && ((v10 = 0x6C62702E32787661, *v33 == 0x6C62702E32787661) ? (v672 = *(v33 + 2) == 2003070565) : (v672 = 0), v672) || !v658 && ((v10 = 0x6C62702E32787661, *v33 == 0x6C62702E32787661) ? (v673 = *(v33 + 5) == 0x2E64646E656C6270) : (v673 = 0), v673))
                          {
LABEL_2235:
                            v1082 = (v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF));
                            v1083 = *v1082;
                            v1084 = v1082[4];
                            v1085 = v1082[8];
                            v1086 = (v1085 + 24);
                            if (*(v1085 + 8) >= 0x41u)
                            {
                              v1086 = *v1086;
                            }

                            v1087 = *v1086;
                            v1088 = *(*v1742 + 32);
                            __src = &v1750;
                            v1749 = 0x1000000000;
                            llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v1088);
                            v893 = __src;
                            if (v1088)
                            {
                              v1089 = 0;
                              v1090 = vdupq_n_s64(v1088 - 1);
                              v1091 = xmmword_2750C1830;
                              v1092 = xmmword_2750C1210;
                              v1093 = __src + 8;
                              v1094 = vdupq_n_s64(4uLL);
                              do
                              {
                                v1095 = vmovn_s64(vcgeq_u64(v1090, v1092));
                                if (vuzp1_s16(v1095, *v1090.i8).u8[0])
                                {
                                  *(v1093 - 2) = v1089 + (((v1087 >> (v1089 & 4) << 31) >> 31) & v1088);
                                }

                                if (vuzp1_s16(v1095, *&v1090).i8[2])
                                {
                                  *(v1093 - 1) = v1089 + (((v1087 >> ((v1089 + 1) & 5) << 31) >> 31) & v1088) + 1;
                                }

                                if (vuzp1_s16(*&v1090, vmovn_s64(vcgeq_u64(v1090, *&v1091))).i32[1])
                                {
                                  *v1093 = v1089 + (((v1087 >> ((v1089 + 2) & 6) << 31) >> 31) & v1088) + 2;
                                  v1093[1] = v1089 + (((v1087 >> ((v1089 + 3) & 7) << 31) >> 31) & v1088) + 3;
                                }

                                v1089 += 4;
                                v1091 = vaddq_s64(v1091, v1094);
                                v1092 = vaddq_s64(v1092, v1094);
                                v1093 += 4;
                              }

                              while (((v1088 + 3) & 0x1FFFFFFFCLL) != v1089);
                            }

                            v911 = v1749;
                            v1755 = 257;
                            v912 = v1083;
                            v913 = v1084;
LABEL_2247:
                            v822 = llvm::IRBuilderBase::CreateShuffleVector(v1756, v912, v913, v893, v911, v1753);
LABEL_2248:
                            ShuffleVector = v822;
LABEL_2249:
                            v874 = __src;
                            if (__src == &v1750)
                            {
                              goto LABEL_2251;
                            }

LABEL_2250:
                            free(v874);
                            goto LABEL_2251;
                          }

                          if (v68 >= 0x10 && ((v10 = 0x736E69762E787661, *v33 == 0x736E69762E787661) ? (v674 = v33[1] == 0x2E38323166747265) : (v674 = 0), v674 || v68 == 16 && ((v10 = 0x6E69762E32787661, *v33 == 0x6E69762E32787661) ? (v675 = v33[1] == 0x3832316974726573) : (v675 = 0), v675)) || (i & 1) == 0 && ((v10 = *(v33 + 8), *v33 == 0x6D2E323135787661) ? (v676 = v33[1] == 0x65736E692E6B7361) : (v676 = 0), v676 ? (v677 = v10 == 29810) : (v677 = 0), v677))
                          {
                            v786 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                            v787 = *v786;
                            v788 = *(v786 + 4);
                            v789 = *(v786 + 8);
                            v790 = (v789 + 24);
                            if (*(v789 + 32) >= 0x41u)
                            {
                              v790 = *v790;
                            }

                            v791 = *v790;
                            v792 = *(*v1742 + 32);
                            v793 = *(*v788 + 8);
                            __src = &v1750;
                            v1749 = 0x800000000;
                            llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v792);
                            v794 = 0;
                            v795 = __src;
                            v796 = v793 - 1;
                            v797 = (v796 + 4) & 0x1FFFFFFFCLL;
                            v798 = vdupq_n_s64(v796);
                            v799 = xmmword_2750C1830;
                            v800 = xmmword_2750C1210;
                            v801 = __src + 8;
                            v802 = vdupq_n_s64(4uLL);
                            do
                            {
                              v803 = vmovn_s64(vcgeq_u64(v798, v800));
                              if (vuzp1_s16(v803, *v798.i8).u8[0])
                              {
                                *(v801 - 2) = v794;
                              }

                              if (vuzp1_s16(v803, *&v798).i8[2])
                              {
                                *(v801 - 1) = v794 + 1;
                              }

                              if (vuzp1_s16(*&v798, vmovn_s64(vcgeq_u64(v798, *&v799))).i32[1])
                              {
                                *v801 = v794 + 2;
                                v801[1] = v794 + 3;
                              }

                              v794 += 4;
                              v799 = vaddq_s64(v799, v802);
                              v800 = vaddq_s64(v800, v802);
                              v801 += 4;
                            }

                            while (v797 != v794);
                            if (v793 != v792)
                            {
                              v804 = v793;
                              do
                              {
                                v795[v804++] = v793;
                              }

                              while (v792 != v804);
                            }

                            v805 = v791 % (v792 / v793);
                            v1755 = 257;
                            v806 = llvm::IRBuilderBase::CreateShuffleVector(v1756, v788, v795, v1749, v1753);
                            ShuffleVector = v806;
                            v807 = __src;
                            if (v792)
                            {
                              v808 = 0;
                              v809 = vdupq_n_s64(v792 - 1);
                              v810 = xmmword_2750C1830;
                              v811 = xmmword_2750C1210;
                              v812 = __src + 8;
                              v813 = vdupq_n_s64(4uLL);
                              do
                              {
                                v814 = vmovn_s64(vcgeq_u64(v809, v811));
                                if (vuzp1_s16(v814, *v809.i8).u8[0])
                                {
                                  *(v812 - 2) = v808;
                                }

                                if (vuzp1_s16(v814, *&v809).i8[2])
                                {
                                  *(v812 - 1) = v808 + 1;
                                }

                                if (vuzp1_s16(*&v809, vmovn_s64(vcgeq_u64(v809, *&v810))).i32[1])
                                {
                                  *v812 = v808 + 2;
                                  v812[1] = v808 + 3;
                                }

                                v808 += 4;
                                v810 = vaddq_s64(v810, v813);
                                v811 = vaddq_s64(v811, v813);
                                v812 += 4;
                              }

                              while (((v792 + 3) & 0x1FFFFFFFCLL) != v808);
                            }

                            v815 = 0;
                            v816 = v805 * v793;
                            do
                            {
                              v807[(v816 + v815++)] = v792;
                              LODWORD(v792) = v792 + 1;
                              --v793;
                            }

                            while (v793);
                            v1755 = 257;
                            ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(v1756, v787, v806, v807, v1749, v1753);
                            v817 = v1742;
                            if (((llvm::CallBase::arg_end(v1742) - (v817 - 32 * (*(v817 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) != 0xA0)
                            {
                              goto LABEL_2249;
                            }

                            v818 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                            v819 = *(v818 + 16);
                            v820 = ShuffleVector;
                            v821 = *(v818 + 12);
                            goto LABEL_1499;
                          }

                          if ((v518 & 1) == 0 && ((v10 = *(v33 + 16), *v33 == 0x747865762E787661) ? (v678 = v33[1] == 0x3832316674636172) : (v678 = 0), v678 ? (v679 = v10 == 46) : (v679 = 0), v679) || v68 == 17 && ((v10 = *(v33 + 16), *v33 == 0x7865762E32787661) ? (v680 = v33[1] == 0x3231697463617274) : (v680 = 0), v680 ? (v681 = v10 == 56) : (v681 = 0), v681))
                          {
LABEL_1557:
                            v855 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                            v838 = *v855;
                            v856 = *(v855 + 4);
                            v857 = (v856 + 24);
                            if (*(v856 + 32) >= 0x41u)
                            {
                              v857 = *v857;
                            }

                            v858 = *(*v1742 + 32);
                            v859 = *v857 % (*(*v838 + 32) / v858);
                            __src = &v1750;
                            v1749 = 0x800000000;
                            llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v858);
                            v860 = 0;
                            v861 = v859 * v858;
                            v843 = __src;
                            v862 = (v858 + 3) & 0x1FFFFFFFCLL;
                            v863 = vdupq_n_s64(v858 - 1);
                            v864 = xmmword_2750C1830;
                            v865 = xmmword_2750C1210;
                            v866 = __src + 8;
                            v867 = vdupq_n_s64(4uLL);
                            do
                            {
                              v868 = vmovn_s64(vcgeq_u64(v863, v865));
                              if (vuzp1_s16(v868, *v863.i8).u8[0])
                              {
                                *(v866 - 2) = v861 + v860;
                              }

                              if (vuzp1_s16(v868, *&v863).i8[2])
                              {
                                *(v866 - 1) = v861 + v860 + 1;
                              }

                              if (vuzp1_s16(*&v863, vmovn_s64(vcgeq_u64(v863, *&v864))).i32[1])
                              {
                                *v866 = v861 + v860 + 2;
                                v866[1] = v861 + v860 + 3;
                              }

                              v860 += 4;
                              v864 = vaddq_s64(v864, v867);
                              v865 = vaddq_s64(v865, v867);
                              v866 += 4;
                              v862 -= 4;
                            }

                            while (v862);
LABEL_1567:
                            v1755 = 257;
                            ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(v1756, v838, v838, v843, v1749, v1753);
                            v869 = v1742;
                            if (((llvm::CallBase::arg_end(v1742) - (v869 - 32 * (*(v869 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0x80)
                            {
                              v870 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                              v871 = *(v870 + 12);
                              v872 = ShuffleVector;
                              v873 = *(v870 + 8);
                              goto LABEL_1569;
                            }

LABEL_1570:
                            v874 = __src;
                            if (__src == &v1750)
                            {
                              goto LABEL_2251;
                            }

                            goto LABEL_2250;
                          }

                          if (!v669)
                          {
                            if (*v33 == 0x6D2E323135787661 && v33[1] == 0x747865762E6B7361 && *(v33 + 4) == 1952670066)
                            {
                              goto LABEL_1557;
                            }

                            v833 = *v33 == 0x6D2E323135787661 && v33[1] == 0x6D7265702E6B7361;
                            v834 = v833 && *(v33 + 4) == 778462254;
                            if (v834 || ((v10 = 778658862, *v33 == 0x6D2E323135787661) ? (v835 = v33[1] == 0x6D7265702E6B7361) : (v835 = 0), v835 ? (v836 = *(v33 + 4) == 778658862) : (v836 = 0), v836))
                            {
                              v837 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                              v838 = *v837;
                              v839 = *(v837 + 4);
                              v840 = (v839 + 24);
                              if (*(v839 + 32) >= 0x41u)
                              {
                                v840 = *v840;
                              }

                              v841 = *v840;
                              v842 = *(*v1742 + 32);
                              __src = &v1750;
                              v1749 = 0x800000000;
                              llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v842);
                              v843 = __src;
                              if (v842)
                              {
                                v844 = (v842 + 3) & 0x1FFFFFFFCLL;
                                v845 = vdupq_n_s64(v842 - 1);
                                v846 = v841 & 3;
                                v847 = (v841 >> 2) & 3;
                                v848 = (v841 >> 4) & 3;
                                v849 = xmmword_2750C1830;
                                v850 = xmmword_2750C1210;
                                v851 = v841 >> 6;
                                v852 = (__src + 8);
                                v853 = vdupq_n_s64(4uLL);
                                do
                                {
                                  v854 = vmovn_s64(vcgeq_u64(v845, v850));
                                  if (vuzp1_s16(v854, *v845.i8).u8[0])
                                  {
                                    *(v852 - 2) = v846;
                                  }

                                  if (vuzp1_s16(v854, *&v845).i8[2])
                                  {
                                    *(v852 - 1) = v847;
                                  }

                                  if (vuzp1_s16(*&v845, vmovn_s64(vcgeq_u64(v845, *&v849))).i32[1])
                                  {
                                    *v852 = v848;
                                    v852[1] = v851;
                                  }

                                  v849 = vaddq_s64(v849, v853);
                                  v846 += 4;
                                  v847 += 4;
                                  v850 = vaddq_s64(v850, v853);
                                  v848 += 4;
                                  v852 += 4;
                                  v851 += 4;
                                  v844 -= 4;
                                }

                                while (v844);
                              }

                              goto LABEL_1567;
                            }
                          }

                          if ((v517 & 1) == 0)
                          {
                            v10 = 0x726570762E787661;
                            if (*v33 == 0x726570762E787661 && *(v33 + 7) == 0x2E38323166326D72)
                            {
LABEL_1246:
                              v684 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[8];
                              v685 = (v684 + 24);
                              if (*(v684 + 32) >= 0x41u)
                              {
                                v685 = *v685;
                              }

                              v686 = *v685;
                              v687 = *(*v1742 + 32);
                              __src = &v1750;
                              v1749 = 0x800000000;
                              llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v687);
                              v689 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                              v690 = *&v689[v686 & 0x20];
                              if ((v686 & 8) != 0)
                              {
                                v691 = llvm::ConstantAggregateZero::get(*v1742, v688);
                              }

                              else
                              {
                                v691 = *&v689[(16 * v686) & 0x20];
                              }

                              if ((v686 & 0x80) != 0)
                              {
                                v690 = llvm::ConstantAggregateZero::get(*v1742, v688);
                              }

                              v893 = __src;
                              if (v687 >= 2)
                              {
                                v894 = v687 >> 1;
                                v895 = ((v686 << 31) >> 31) & (v687 >> 1);
                                v896 = ((v687 >> 1) + 3) & 0xFFFFFFFC;
                                v897 = vdupq_n_s64((v687 >> 1) - 1);
                                v898 = xmmword_2750C1830;
                                v899 = xmmword_2750C1210;
                                v900 = __src + 8;
                                v901 = vdupq_n_s64(4uLL);
                                do
                                {
                                  v902 = vmovn_s64(vcgeq_u64(v897, v899));
                                  if (vuzp1_s16(v902, *v897.i8).u8[0])
                                  {
                                    *(v900 - 2) = v895;
                                  }

                                  if (vuzp1_s16(v902, *&v897).i8[2])
                                  {
                                    *(v900 - 1) = v895 + 1;
                                  }

                                  if (vuzp1_s16(*&v897, vmovn_s64(vcgeq_u64(v897, *&v898))).i32[1])
                                  {
                                    *v900 = v895 + 2;
                                    v900[1] = v895 + 3;
                                  }

                                  v898 = vaddq_s64(v898, v901);
                                  v899 = vaddq_s64(v899, v901);
                                  v895 += 4;
                                  v900 += 4;
                                  v896 -= 4;
                                }

                                while (v896);
                                v903 = 0;
                                v904 = (v894 + 3) & 0xFFFFFFFC;
                                v905 = (v894 & ((v686 << 27) >> 31)) + v687;
                                v906 = &v893[v894 + 2];
                                v907 = xmmword_2750C1830;
                                v908 = xmmword_2750C1210;
                                v909 = vdupq_n_s64(4uLL);
                                do
                                {
                                  v910 = vmovn_s64(vcgeq_u64(v897, v908));
                                  if (vuzp1_s16(v910, *v897.i8).u8[0])
                                  {
                                    *(v906 - 2) = v905 + v903;
                                  }

                                  if (vuzp1_s16(v910, *&v897).i8[2])
                                  {
                                    *(v906 - 1) = v905 + v903 + 1;
                                  }

                                  if (vuzp1_s16(*&v897, vmovn_s64(vcgeq_u64(v897, *&v907))).i32[1])
                                  {
                                    *v906 = v905 + v903 + 2;
                                    v906[1] = v905 + v903 + 3;
                                  }

                                  v903 += 4;
                                  v907 = vaddq_s64(v907, v909);
                                  v908 = vaddq_s64(v908, v909);
                                  v906 += 4;
                                }

                                while (v904 != v903);
                              }

                              v911 = v1749;
                              v1755 = 257;
                              v912 = v691;
                              v913 = v690;
                              goto LABEL_2247;
                            }
                          }

                          if (v68 == 15)
                          {
                            if (*v33 == 0x6570762E32787661 && *(v33 + 7) == 0x38323169326D7265)
                            {
                              goto LABEL_1246;
                            }
                          }

                          else if (v667)
                          {
                            goto LABEL_1733;
                          }

                          v10 = 0x726570762E787661;
                          if (*v33 == 0x726570762E787661 && *(v33 + 2) == 778856813)
                          {
LABEL_2441:
                            v1170 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                            v1171 = *(v1170 + 4);
                            v1172 = (v1171 + 24);
                            if (*(v1171 + 32) >= 0x41u)
                            {
                              v1172 = *v1172;
                            }

                            v1173 = *v1170;
                            v1174 = *v1742;
                            v1175 = *(*v1742 + 32);
                            if ((*(*v1742 + 8) & 0xFE) == 0x12)
                            {
                              v1174 = **(v1174 + 2);
                            }

                            v1176 = *v1172;
                            v1177 = llvm::Type::getPrimitiveSizeInBits(v1174);
                            __src = &v1750;
                            v1749 = 0x800000000;
                            llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v1175);
                            v1178 = __src;
                            if (v1175)
                            {
                              v1179 = 0;
                              v1180 = 0x40 / v1177;
                              v1181 = -1 << (0x40 / v1177);
                              v1182 = ~v1181;
                              v1183 = vdupq_n_s64(v1175 - 1);
                              v1184 = xmmword_2750C1830;
                              v1185 = xmmword_2750C1210;
                              v1186 = vdupq_n_s64(4uLL);
                              v1187 = __src + 8;
                              do
                              {
                                v1188 = vmovn_s64(vcgeq_u64(v1183, v1185));
                                if (vuzp1_s16(v1188, *v1183.i8).u8[0])
                                {
                                  *(v1187 - 2) = (v1176 >> ((v1180 * v1179) & 4)) & v1182 | v1181 & v1179;
                                }

                                if (vuzp1_s16(v1188, *&v1183).i8[2])
                                {
                                  *(v1187 - 1) = (v1176 >> ((v1180 * (v1179 | 1)) & 7)) & v1182 | v1181 & (v1179 + 1);
                                }

                                if (vuzp1_s16(*&v1183, vmovn_s64(vcgeq_u64(v1183, *&v1184))).i32[1])
                                {
                                  *v1187 = (v1176 >> ((v1180 * (v1179 | 2)) & 6)) & v1182 | v1181 & (v1179 + 2);
                                  v1187[1] = (v1176 >> ((v1180 * (v1179 | 3)) & 7)) & v1182 | v1181 & (v1179 + 3);
                                }

                                v1179 += 4;
                                v1184 = vaddq_s64(v1184, v1186);
                                v1185 = vaddq_s64(v1185, v1186);
                                v1187 += 4;
                              }

                              while (((v1175 + 3) & 0x1FFFFFFFCLL) != v1179);
                            }

                            v1755 = 257;
                            ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(v1756, v1173, v1173, v1178, v1749, v1753);
                            v1189 = v1742;
                            if (((llvm::CallBase::arg_end(v1742) - (v1189 - 32 * (*(v1189 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) != 0x80)
                            {
                              goto LABEL_2249;
                            }

                            v1190 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                            v819 = *(v1190 + 12);
                            v820 = ShuffleVector;
                            v821 = *(v1190 + 8);
LABEL_1499:
                            v822 = EmitX86Select(v1756, v819, v820, v821);
                            goto LABEL_2248;
                          }

                          if (v68 == 12)
                          {
                            v10 = 0x6873702E32657373;
                            if (*v33 == 0x6873702E32657373 && *(v33 + 2) == 1680762485)
                            {
                              goto LABEL_2441;
                            }

LABEL_1733:
                            v933 = 1;
                            goto LABEL_1734;
                          }

                          if (v68 < 0x15)
                          {
                            goto LABEL_1733;
                          }

                          v10 = *(v33 + 13);
                          if (*v33 == 0x6D2E323135787661 && v33[1] == 0x726570762E6B7361 && v10 == 0x702E6C696D726570)
                          {
                            goto LABEL_2441;
                          }

                          v933 = 0;
LABEL_1734:
                          v934 = 0x756873702E6B7361;
                          if (!v669)
                          {
                            v935 = *v33 == 0x6D2E323135787661 && v33[1] == 0x756873702E6B7361;
                            v10 = 778317414;
                            if (v935 && *(v33 + 4) == 778317414)
                            {
                              goto LABEL_2441;
                            }
                          }

                          if (v68 == 13 && ((v10 = 0x772E6C6675687370, *v33 == 0x6873702E32657373) ? (v937 = *(v33 + 5) == 0x772E6C6675687370) : (v937 = 0), v937) || (v933 & 1) == 0 && (*v33 == 0x6D2E323135787661 ? (v938 = v33[1] == 0x756873702E6B7361) : (v938 = 0), (v10 = 0x2E772E6C66756873, v938) ? (v939 = *(v33 + 13) == 0x2E772E6C66756873) : (v939 = 0), v939))
                          {
                            v1025 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                            v838 = *v1025;
                            v1026 = *(v1025 + 4);
                            v1027 = (v1026 + 24);
                            if (*(v1026 + 32) >= 0x41u)
                            {
                              v1027 = *v1027;
                            }

                            v1028 = *v1027;
                            v1029 = *(*v1742 + 32);
                            __src = &v1750;
                            v1749 = 0x1000000000;
                            llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v1029);
                            v843 = __src;
                            if (v1029)
                            {
                              v1030 = 0;
                              v1031.i64[0] = 0x300000003;
                              v1031.i64[1] = 0x300000003;
                              v1032 = vandq_s8(vshlq_u32(vdupq_n_s32(v1028), xmmword_2750C8A90), v1031);
                              v1033 = __src;
                              do
                              {
                                *v1033 = vorrq_s8(v1032, vdupq_n_s32(v1030));
                                v1033 += 2;
                                v1034 = vdupq_n_s64(v1030);
                                v1035 = vorrq_s8(v1034, xmmword_2750C4000);
                                v1036 = vorrq_s8(v1034, xmmword_2750C4010);
                                *&v843[v1036.i64[0]] = vuzp1q_s32(v1036, v1035);
                                v1030 += 8;
                              }

                              while (v1029 != v1030);
                            }

                            goto LABEL_1567;
                          }

                          if (v68 == 13 && ((v10 = 0x772E686675687370, *v33 == 0x6873702E32657373) ? (v940 = *(v33 + 5) == 0x772E686675687370) : (v940 = 0), v940) || (v933 & 1) == 0 && ((v10 = *v33, *v33 == 0x6D2E323135787661) ? (v941 = v33[1] == 0x756873702E6B7361) : (v941 = 0), (v934 = 0x2E772E6866756873, v941) ? (v942 = *(v33 + 13) == 0x2E772E6866756873) : (v942 = 0), v942))
                          {
                            v1155 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                            v838 = *v1155;
                            v1156 = *(v1155 + 4);
                            v1157 = (v1156 + 24);
                            if (*(v1156 + 32) >= 0x41u)
                            {
                              v1157 = *v1157;
                            }

                            v1158 = *v1157;
                            v1159 = *(*v1742 + 32);
                            __src = &v1750;
                            v1749 = 0x1000000000;
                            llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v1159);
                            v843 = __src;
                            if (v1159)
                            {
                              v1160 = 0;
                              v1161.i64[0] = 0x300000003;
                              v1161.i64[1] = 0x300000003;
                              v1162 = vandq_s8(vshlq_u32(vdupq_n_s32(v1158), xmmword_2750C8A90), v1161);
                              v1163 = (__src + 16);
                              do
                              {
                                v1164.i32[0] = v1160;
                                v1164.i32[1] = v1160 + 1;
                                *(v1163 - 1) = vmovn_hight_s64(v1164, vorrq_s8(vdupq_n_s64(v1160), xmmword_2750C1830));
                                *v1163 = *&vorrq_s8(v1162, vdupq_n_s32(v1160)) | __PAIR128__(0x400000004, 0x400000004);
                                v1163 += 2;
                                v1160 += 8;
                              }

                              while (v1159 != v1160);
                            }

                            goto LABEL_1567;
                          }

                          if ((i & 1) == 0)
                          {
                            v10 = v33[1];
                            v943 = *v33 == 0x6D2E323135787661 && v10 == 0x667568732E6B7361;
                            v934 = 28718;
                            if (v943 && *(v33 + 8) == 28718)
                            {
                              v1235 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                              v1236 = *(v1235 + 8);
                              v1237 = (v1236 + 24);
                              if (*(v1236 + 32) >= 0x41u)
                              {
                                v1237 = *v1237;
                              }

                              v1238 = *v1235;
                              v1239 = *(v1235 + 4);
                              v1240 = *v1742;
                              v1241 = *(*v1742 + 32);
                              if ((*(*v1742 + 8) & 0xFE) == 0x12)
                              {
                                v1240 = **(v1240 + 2);
                              }

                              v1242 = *v1237;
                              v1243 = llvm::Type::getPrimitiveSizeInBits(v1240);
                              __src = &v1750;
                              v1749 = 0x1000000000;
                              llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v1241);
                              v1245 = __src;
                              if (v1241)
                              {
                                v1246 = 0;
                                v1247 = 0x80 / v1243;
                                v1248 = vdupq_n_s64(v1241 - 1);
                                v1249 = vdupq_n_s32((0x80 / v1243) >> 1);
                                v1250 = vdupq_n_s32(v1241);
                                v1251 = vdupq_n_s32(v1242);
                                v1252 = vdupq_n_s32(~(-1 << ((0x80 / v1243) >> 1)));
                                v1253 = xmmword_2750C1830;
                                v1254 = xmmword_2750C1210;
                                v1255 = xmmword_2750C8A80;
                                v1256 = __src + 8;
                                v1257.i64[0] = 0x700000007;
                                v1257.i64[1] = 0x700000007;
                                v1258 = vdupq_n_s64(4uLL);
                                v1259.i64[0] = 0x400000004;
                                v1259.i64[1] = 0x400000004;
                                do
                                {
                                  v1260 = vmovn_s64(vcgeq_u64(v1248, v1254));
                                  if (vuzp1_s16(v1260, *v1248.i8).u8[0])
                                  {
                                    v1244.i32[0] = v1246 % v1247;
                                  }

                                  if (vuzp1_s16(v1260, *&v1248).i8[2])
                                  {
                                    v1244.i32[1] = (v1246 + 1) % v1247;
                                  }

                                  v1261 = vmovn_s64(vcgeq_u64(v1248, v1253));
                                  if (vuzp1_s16(*&v1248, v1261).i32[1])
                                  {
                                    v1244.i32[2] = (v1246 + 2) % v1247;
                                    v1244.i32[3] = (v1246 + 3) % v1247;
                                  }

                                  v1244 = vaddq_s32(vaddq_s32(vsubq_s32(v1255, v1244), vbicq_s8(v1250, vcgtq_u32(v1249, v1244))), vandq_s8(vshlq_u32(v1251, vnegq_s32(vandq_s8(vmulq_s32(v1249, v1255), v1257))), v1252));
                                  if (vuzp1_s16(v1260, *v1248.i8).u8[0])
                                  {
                                    *(v1256 - 2) = v1244.i32[0];
                                  }

                                  if (vuzp1_s16(v1260, *&v1248).i8[2])
                                  {
                                    *(v1256 - 1) = v1244.i32[1];
                                  }

                                  if (vuzp1_s16(*&v1248, v1261).i32[1])
                                  {
                                    *v1256 = v1244.i64[1];
                                  }

                                  v1246 += 4;
                                  v1253 = vaddq_s64(v1253, v1258);
                                  v1254 = vaddq_s64(v1254, v1258);
                                  v1255 = vaddq_s32(v1255, v1259);
                                  v1256 += 2;
                                }

                                while (((v1241 + 3) & 0x1FFFFFFFCLL) != v1246);
                              }

                              v1755 = 257;
                              v1262 = llvm::IRBuilderBase::CreateShuffleVector(v1756, v1238, v1239, v1245, v1749, v1753);
                              ShuffleVector = v1262;
                              v1263 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                              v1264 = *(v1263 + 16);
                              v1265 = *(v1263 + 12);
                              goto LABEL_2570;
                            }
                          }

                          if ((v668 & 1) == 0 && ((v10 = v33[1], *v33 == 0x6D2E323135787661) ? (v945 = v10 == 0x64766F6D2E6B7361) : (v945 = 0), (v934 = 0x70756464766F6D2ELL, v945) ? (v946 = *(v33 + 11) == 0x70756464766F6D2ELL) : (v946 = 0), v946) || !v669 && ((v934 = 0x73766F6D2E6B7361, *v33 == 0x6D2E323135787661) ? (v947 = v33[1] == 0x73766F6D2E6B7361) : (v947 = 0), v947 ? (v948 = *(v33 + 4) == 1886741608) : (v948 = 0), v948 || ((v10 = 1886741612, *v33 == 0x6D2E323135787661) ? (v949 = v33[1] == 0x73766F6D2E6B7361) : (v949 = 0), v949 ? (v950 = *(v33 + 4) == 1886741612) : (v950 = 0), v950)))
                          {
                            v1195 = *v1742;
                            v1196 = *(*v1742 + 32);
                            if ((*(*v1742 + 8) & 0xFE) == 0x12)
                            {
                              v1195 = **(v1195 + 2);
                            }

                            v1197 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                            v1198 = llvm::Type::getPrimitiveSizeInBits(v1195);
                            if (v933)
                            {
                              v1199 = 0;
                            }

                            else
                            {
                              v1269 = 0x6176783531322E6DLL;
                              v1270 = bswap64(*v33);
                              if (v1270 == 0x6176783531322E6DLL && (v1269 = 0x61736B2E6D6F7673, v1270 = bswap64(v33[1]), v1270 == 0x61736B2E6D6F7673) && (v1269 = 0x6F7673686475702ELL, v1270 = bswap64(*(v33 + 13)), v1270 == 0x6F7673686475702ELL))
                              {
                                v1271 = 0;
                              }

                              else if (v1270 < v1269)
                              {
                                v1271 = -1;
                              }

                              else
                              {
                                v1271 = 1;
                              }

                              v1199 = v1271 == 0;
                            }

                            __src = &v1750;
                            v1749 = 0x1000000000;
                            llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v1196);
                            v1272 = __src;
                            if (v1196)
                            {
                              v1273 = 0;
                              do
                              {
                                if (v1198 <= 0x80)
                                {
                                  v1274 = 0;
                                  v1275 = 0x80 / v1198;
                                  do
                                  {
                                    v1276 = v1273 + v1274 + v1199;
                                    v1272[(v1273 + v1274)] = v1276;
                                    v1272[(v1273 + v1274 + 1)] = v1276;
                                    v1274 += 2;
                                    v1275 -= 2;
                                  }

                                  while (v1275);
                                }

                                v1273 += 0x80 / v1198;
                              }

                              while (v1273 != v1196);
                            }

                            v1755 = 257;
                            v872 = llvm::IRBuilderBase::CreateShuffleVector(v1756, v1197, v1197, v1272, v1749, v1753);
                            ShuffleVector = v872;
                            v1277 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                            v871 = *(v1277 + 8);
LABEL_2552:
                            v873 = *(v1277 + 4);
LABEL_1569:
                            ShuffleVector = EmitX86Select(v1756, v871, v872, v873);
                            goto LABEL_1570;
                          }

                          if ((v668 & 1) == 0)
                          {
                            v1203 = *v33 == 0x6D2E323135787661 && v33[1] == 0x706E75702E6B7361 && *(v33 + 11) == 0x6C6B63706E75702ELL;
                            if (v1203 || ((v934 = 0x63706E752E6B7361, *v33 == 0x6D2E323135787661) ? (v1204 = v33[1] == 0x63706E752E6B7361) : (v1204 = 0), v1204 ? (v1205 = *(v33 + 11) == 0x2E6C6B63706E752ELL) : (v1205 = 0), v1205))
                            {
                              v1285 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                              v1211 = *v1285;
                              v1212 = *(v1285 + 4);
                              v1286 = *v1742;
                              v1287 = *(*v1742 + 32);
                              v1288 = *(*v1742 + 32);
                              if ((*(*v1742 + 8) & 0xFE) == 0x12)
                              {
                                v1286 = **(v1286 + 2);
                              }

                              v1289 = llvm::Type::getPrimitiveSizeInBits(v1286);
                              __src = &v1750;
                              v1749 = 0x4000000000;
                              llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v1287);
                              v1217 = __src;
                              if (v1288)
                              {
                                v1290 = 0;
                                v1291 = 0x80 / v1289;
                                v1292 = vdupq_n_s64(v1291 - 1);
                                v1293 = vdupq_n_s64(4uLL);
                                do
                                {
                                  if (v1289 <= 0x80)
                                  {
                                    v1294 = 0;
                                    v1295 = xmmword_2750C1210;
                                    v1296 = xmmword_2750C1830;
                                    v1297 = &v1217[v1290];
                                    do
                                    {
                                      v1298 = vmovn_s64(vcgeq_u64(v1292, v1295));
                                      if (vuzp1_s16(v1298, *v1292.i8).u8[0])
                                      {
                                        v1297[v1294] = v1290 + (v1294 >> 1);
                                      }

                                      if (vuzp1_s16(v1298, *&v1292).i8[2])
                                      {
                                        v1297[v1294 + 1] = v1290 + (v1294 >> 1) + v1288;
                                      }

                                      if (vuzp1_s16(*&v1292, vmovn_s64(vcgeq_u64(v1292, *&v1296))).i32[1])
                                      {
                                        v1297[v1294 + 2] = v1290 + (v1294 >> 1) + 1;
                                        v1297[v1294 + 3] = v1290 + (v1294 >> 1) + v1287 + 1;
                                      }

                                      v1294 += 4;
                                      v1296 = vaddq_s64(v1296, v1293);
                                      v1295 = vaddq_s64(v1295, v1293);
                                    }

                                    while (((v1291 + 3) & 0x1FC) != v1294);
                                  }

                                  v1290 += v1291;
                                }

                                while (v1290 != v1287);
                              }

LABEL_2569:
                              v1755 = 257;
                              v1262 = llvm::IRBuilderBase::CreateShuffleVector(v1756, v1211, v1212, v1217, v1749, v1753);
                              ShuffleVector = v1262;
                              v1299 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                              v1264 = *(v1299 + 12);
                              v1265 = *(v1299 + 8);
LABEL_2570:
                              ShuffleVector = EmitX86Select(v1756, v1264, v1262, v1265);
                              v874 = __src;
                              if (__src == &v1750)
                              {
                                goto LABEL_2251;
                              }

                              goto LABEL_2250;
                            }

                            v1207 = *v33 == 0x6D2E323135787661 && v33[1] == 0x706E75702E6B7361 && *(v33 + 11) == 0x686B63706E75702ELL;
                            if (v1207 || ((v10 = v33[1], *v33 == 0x6D2E323135787661) ? (v1208 = v10 == 0x63706E752E6B7361) : (v1208 = 0), v1208 ? (v1209 = *(v33 + 11) == 0x2E686B63706E752ELL) : (v1209 = 0), v1209))
                            {
                              v1210 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                              v1211 = *v1210;
                              v1212 = *(v1210 + 4);
                              v1213 = *v1742;
                              v1214 = *(*v1742 + 32);
                              v1215 = *(*v1742 + 32);
                              if ((*(*v1742 + 8) & 0xFE) == 0x12)
                              {
                                v1213 = **(v1213 + 2);
                              }

                              v1216 = llvm::Type::getPrimitiveSizeInBits(v1213);
                              __src = &v1750;
                              v1749 = 0x4000000000;
                              llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v1214);
                              v1217 = __src;
                              if (v1215)
                              {
                                v1218 = 0;
                                v1219 = 0x80 / v1216;
                                v1220 = vdupq_n_s64(v1219 - 1);
                                v1221 = vdupq_n_s64(4uLL);
                                do
                                {
                                  if (v1216 <= 0x80)
                                  {
                                    v1222 = 0;
                                    v1223 = (v1219 >> 1) + v1218;
                                    v1224 = xmmword_2750C1210;
                                    v1225 = xmmword_2750C1830;
                                    v1226 = &v1217[v1218];
                                    do
                                    {
                                      v1227 = vmovn_s64(vcgeq_u64(v1220, v1224));
                                      if (vuzp1_s16(v1227, *v1220.i8).u8[0])
                                      {
                                        v1226[v1222] = v1223 + (v1222 >> 1);
                                      }

                                      if (vuzp1_s16(v1227, *&v1220).i8[2])
                                      {
                                        v1226[v1222 + 1] = v1223 + (v1222 >> 1) + v1215;
                                      }

                                      if (vuzp1_s16(*&v1220, vmovn_s64(vcgeq_u64(v1220, *&v1225))).i32[1])
                                      {
                                        v1226[v1222 + 2] = v1223 + (v1222 >> 1) + 1;
                                        v1226[v1222 + 3] = v1223 + (v1222 >> 1) + v1214 + 1;
                                      }

                                      v1222 += 4;
                                      v1225 = vaddq_s64(v1225, v1221);
                                      v1224 = vaddq_s64(v1224, v1221);
                                    }

                                    while (((v1219 + 3) & 0x1FC) != v1222);
                                  }

                                  v1218 += v1219;
                                }

                                while (v1218 != v1214);
                              }

                              goto LABEL_2569;
                            }
                          }

                          if (v68 >= 0x10)
                          {
                            v934 = v33[1];
                            if (*v33 == 0x6D2E323135787661 && v934 == 0x2E646E612E6B7361)
                            {
LABEL_2573:
                              v1302 = *v1742;
                              llvm::VectorType::getInteger(*v1742);
                              v1304 = v1303;
                              v1305 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                              LOWORD(NullValue) = 257;
                              Not = llvm::IRBuilderBase::CreateCast(v1756, 49, v1305, v1303, &__src);
                              v1307 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4];
                              v1755 = 257;
                              v1308 = llvm::IRBuilderBase::CreateCast(v1756, 49, v1307, v1304, v1753);
                              v1747 = 257;
                              p_p = &__p;
                              goto LABEL_2590;
                            }
                          }

                          if ((v518 & 1) == 0)
                          {
                            if (*v33 == 0x6D2E323135787661 && v33[1] == 0x646E61702E6B7361 && *(v33 + 16) == 46)
                            {
                              goto LABEL_2573;
                            }

                            v10 = v33[1];
                            v934 = 0x6E646E612E6B7361;
                            v954 = *v33 == 0x6D2E323135787661 && v10 == 0x6E646E612E6B7361;
                            if (v954 && *(v33 + 16) == 46)
                            {
LABEL_2589:
                              v1302 = *v1742;
                              llvm::VectorType::getInteger(*v1742);
                              v1323 = v1322;
                              v1324 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                              LOWORD(NullValue) = 257;
                              v1325 = llvm::IRBuilderBase::CreateCast(v1756, 49, v1324, v1322, &__src);
                              v1755 = 257;
                              Not = llvm::IRBuilderBase::CreateNot(v1756, v1325, v1753);
                              ShuffleVector = Not;
                              v1326 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4];
                              LOWORD(NullValue) = 257;
                              v1308 = llvm::IRBuilderBase::CreateCast(v1756, 49, v1326, v1323, &__src);
                              v1755 = 257;
                              p_p = v1753;
LABEL_2590:
                              Xor = llvm::IRBuilderBase::CreateAnd(v1756, Not, v1308, p_p);
LABEL_2625:
                              ShuffleVector = Xor;
                              LOWORD(NullValue) = 257;
                              Add = llvm::IRBuilderBase::CreateCast(v1756, 49, Xor, v1302, &__src);
LABEL_2626:
                              v1365 = Add;
                              ShuffleVector = Add;
                              v1366 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                              v1367 = *(v1366 + 12);
                              v1368 = *(v1366 + 8);
                              goto LABEL_2627;
                            }
                          }

                          if ((i & 1) == 0)
                          {
                            v934 = v33[1];
                            v10 = *(v33 + 8);
                            v956 = *v33 == 0x6D2E323135787661 && v934 == 0x646E61702E6B7361;
                            if (v956 && v10 == 11886)
                            {
                              goto LABEL_2589;
                            }
                          }

                          if ((v517 & 1) == 0)
                          {
                            v934 = *(v33 + 7);
                            if (*v33 == 0x6D2E323135787661 && v934 == 0x2E726F2E6B73616DLL)
                            {
LABEL_2595:
                              v1302 = *v1742;
                              llvm::VectorType::getInteger(*v1742);
                              v1338 = v1337;
                              v1339 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                              LOWORD(NullValue) = 257;
                              v1340 = llvm::IRBuilderBase::CreateCast(v1756, 49, v1339, v1337, &__src);
                              v1341 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4];
                              v1755 = 257;
                              v1342 = llvm::IRBuilderBase::CreateCast(v1756, 49, v1341, v1338, v1753);
                              v1747 = 257;
                              Xor = llvm::IRBuilderBase::CreateOr(v1756, v1340, v1342, &__p);
                              goto LABEL_2625;
                            }
                          }

                          if (v68 >= 0x10)
                          {
                            if (*v33 == 0x6D2E323135787661 && v33[1] == 0x2E726F702E6B7361)
                            {
                              goto LABEL_2595;
                            }

                            v934 = v33[1];
                            if (*v33 == 0x6D2E323135787661 && v934 == 0x2E726F782E6B7361)
                            {
LABEL_2624:
                              v1302 = *v1742;
                              llvm::VectorType::getInteger(*v1742);
                              v1360 = v1359;
                              v1361 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                              LOWORD(NullValue) = 257;
                              v1362 = llvm::IRBuilderBase::CreateCast(v1756, 49, v1361, v1359, &__src);
                              v1363 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4];
                              v1755 = 257;
                              v1364 = llvm::IRBuilderBase::CreateCast(v1756, 49, v1363, v1360, v1753);
                              v1747 = 257;
                              Xor = llvm::IRBuilderBase::CreateXor(v1756, v1362, v1364, &__p);
                              goto LABEL_2625;
                            }
                          }

                          if ((v518 & 1) == 0)
                          {
                            if (*v33 == 0x6D2E323135787661 && v33[1] == 0x726F78702E6B7361 && *(v33 + 16) == 46)
                            {
                              goto LABEL_2624;
                            }

                            if (*v33 == 0x6D2E323135787661 && v33[1] == 0x646461702E6B7361 && *(v33 + 16) == 46)
                            {
                              v1430 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                              v1431 = *v1430;
                              v1432 = *(v1430 + 4);
                              LOWORD(NullValue) = 257;
                              Add = llvm::IRBuilderBase::CreateAdd(v1756, v1431, v1432, &__src, 0, 0);
                              goto LABEL_2626;
                            }

                            v934 = v33[1];
                            v10 = *(v33 + 16);
                            v1353 = *v33 == 0x6D2E323135787661 && v934 == 0x627573702E6B7361;
                            if (v1353 && v10 == 46)
                            {
                              v1355 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                              v1356 = *v1355;
                              v1357 = *(v1355 + 4);
                              LOWORD(NullValue) = 257;
                              Add = llvm::IRBuilderBase::CreateSub(v1756, v1356, v1357, &__src, 0, 0);
                              goto LABEL_2626;
                            }
                          }

                          if ((i & 1) == 0)
                          {
                            v934 = v33[1];
                            v10 = *(v33 + 8);
                            v961 = *v33 == 0x6D2E323135787661 && v934 == 0x6C756D702E6B7361;
                            if (v961 && v10 == 11884)
                            {
                              v1433 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                              v1434 = *v1433;
                              v1435 = *(v1433 + 4);
                              LOWORD(NullValue) = 257;
                              Add = llvm::IRBuilderBase::CreateMul(v1756, v1434, v1435, &__src, 0, 0);
                              goto LABEL_2626;
                            }
                          }

                          if ((v518 & 1) == 0)
                          {
                            if (*v33 == 0x6D2E323135787661 && v33[1] == 0x2E6464612E6B7361 && *(v33 + 16) == 112)
                            {
                              if (*(v33 + v68 - 4) != 842085678)
                              {
                                v1442 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                                v1443 = *v1442;
                                v1444 = *(v1442 + 4);
                                LOWORD(NullValue) = 257;
                                Add = llvm::IRBuilderBase::CreateFAdd(v1756, v1443, v1444, &__src, 0);
                                goto LABEL_2626;
                              }

                              v1471 = *(v33 + 17) == 115;
                              v1472 = 10381;
                              goto LABEL_2941;
                            }

                            if (*v33 == 0x6D2E323135787661 && v33[1] == 0x2E7669642E6B7361 && *(v33 + 16) == 112)
                            {
                              if (*(v33 + v68 - 4) != 842085678)
                              {
                                v1446 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                                v1447 = *v1446;
                                v1448 = *(v1446 + 4);
                                LOWORD(NullValue) = 257;
                                Add = llvm::IRBuilderBase::CreateFDiv(v1756, v1447, v1448, &__src, 0);
                                goto LABEL_2626;
                              }

                              v1471 = *(v33 + 17) == 115;
                              v1472 = 10412;
                              goto LABEL_2941;
                            }

                            if (*v33 == 0x6D2E323135787661 && v33[1] == 0x2E6C756D2E6B7361 && *(v33 + 16) == 112)
                            {
                              if (*(v33 + v68 - 4) != 842085678)
                              {
                                v1468 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                                v1469 = *v1468;
                                v1470 = *(v1468 + 4);
                                LOWORD(NullValue) = 257;
                                Add = llvm::IRBuilderBase::CreateFMul(v1756, v1469, v1470, &__src, 0);
                                goto LABEL_2626;
                              }

                              v1471 = *(v33 + 17) == 115;
                              v1472 = 10763;
                              goto LABEL_2941;
                            }

                            v10 = *(v33 + 16);
                            if (*v33 == 0x6D2E323135787661 && v33[1] == 0x2E6275732E6B7361 && v10 == 112)
                            {
                              if (*(v33 + v68 - 4) != 842085678)
                              {
                                v1476 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                                v1477 = *v1476;
                                v1478 = *(v1476 + 4);
                                LOWORD(NullValue) = 257;
                                Add = llvm::IRBuilderBase::CreateFSub(v1756, v1477, v1478, &__src, 0);
                                goto LABEL_2626;
                              }

                              v1471 = *(v33 + 17) == 115;
                              v1472 = 10893;
LABEL_2941:
                              if (v1471)
                              {
                                v1391 = v1472 + 1;
                              }

                              else
                              {
                                v1391 = v1472;
                              }

LABEL_2944:
                              v1551 = llvm::Intrinsic::getDeclaration(*(v4 + 40), v1391, 0, 0);
                              if (v1551)
                              {
                                v1552 = *(v1551 + 24);
                              }

                              else
                              {
                                v1552 = 0;
                              }

                              v1553 = (v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF));
                              v1753[0] = *v1553;
                              v1753[1] = v1553[4];
                              *&v1754 = v1553[16];
                              LOWORD(NullValue) = 257;
                              Add = llvm::IRBuilderBase::CreateCall(v1756, v1552, v1551, v1753, 3, &__src, 0);
                              goto LABEL_2626;
                            }

                            v934 = *(v33 + 16);
                            v1387 = *v33 == 0x6D2E323135787661 && v33[1] == 0x2E78616D2E6B7361 && v934 == 112;
                            if (v1387 || ((v934 = v33[1], v10 = *(v33 + 16), *v33 == 0x6D2E323135787661) ? (v1388 = v934 == 0x2E6E696D2E6B7361) : (v1388 = 0), v1388 ? (v1389 = v10 == 112) : (v1389 = 0), v1389))
                            {
                              v1390 = 18;
                              if (v68 < 0x12)
                              {
                                v1390 = v68;
                              }

                              if (v68 - v1390 == 4 && *(v33 + v1390) == 842085678)
                              {
                                v1391 = llvm::UpgradeIntrinsicCall(llvm::CallBase *,llvm::Function *)::MinMaxTbl[2 * (*(v33 + 13) == 105) + (*(v33 + 17) == 100)];
                                goto LABEL_2944;
                              }
                            }
                          }

                          if ((i & 1) == 0)
                          {
                            v934 = *(v33 + 8);
                            v963 = *v33 == 0x6D2E323135787661 && v33[1] == 0x6E637A6C2E6B7361;
                            if (v963 && v934 == 11892)
                            {
                              v1449 = *(v4 + 40);
                              __p = *v1742;
                              v1450 = llvm::Intrinsic::getDeclaration(v1449, 53, &__p, 1);
                              v1451 = v1450;
                              if (v1450)
                              {
                                v1452 = *(v1450 + 24);
                              }

                              else
                              {
                                v1452 = 0;
                              }

                              v1753[0] = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                              v1753[1] = llvm::ConstantInt::get(*v1760 + 1920, 0, 0);
                              LOWORD(NullValue) = 257;
                              v1365 = llvm::IRBuilderBase::CreateCall(v1756, v1452, v1451, v1753, 2, &__src, 0);
                              ShuffleVector = v1365;
                              v1481 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                              v1367 = *(v1481 + 8);
                              v1368 = *(v1481 + 4);
                              goto LABEL_2627;
                            }
                          }

                          if (v68 >= 0x10)
                          {
                            if (*v33 == 0x6D2E323135787661 && v33[1] == 0x6C6C73702E6B7361)
                            {
                              v1453 = *(v33 + 16);
                              if (v1453 == 105)
                              {
                                v1454 = *(v33 + 18);
                                if (*(v33 + 17) == 46)
                                {
                                  v1455 = 0;
                                }

                                else
                                {
                                  v1455 = 0;
                                  v1535 = 19;
                                  if (v1454 != 46)
                                  {
                                    v1535 = 20;
                                  }

                                  v1454 = *(v33 + v1535);
                                }

                                v1480 = 1;
                                goto LABEL_3046;
                              }

                              v1480 = v68 >= 0x13 && *(v33 + 18) == 105;
                              v1455 = v1453 == 118;
                              v1536 = *(v33 + 17);
                              if (v1453 == 46)
                              {
                                v1455 = 0;
                                v1454 = *(v33 + 17);
                                goto LABEL_3046;
                              }

                              v1454 = *(v33 + 18);
                              if (v1536 != 46)
                              {
                                if (v1454 == 46)
                                {
                                  v1454 = *(v33 + 19);
                                }

                                else
                                {
                                  v1454 = *(v33 + 20);
                                }

                                if (v1453 != 118)
                                {
                                  v1455 = 0;
                                  goto LABEL_3046;
                                }

                                switch(v1454)
                                {
                                  case 's':
                                    if (v1536 == 52)
                                    {
                                      v1599 = 10349;
                                    }

                                    else
                                    {
                                      if (v1536 != 56)
                                      {
                                        goto LABEL_3220;
                                      }

                                      v1599 = 10350;
                                    }

                                    break;
                                  case 'h':
                                    if (v1536 == 49)
                                    {
                                      v1599 = 10802;
                                    }

                                    else
                                    {
                                      if (v1536 != 56)
                                      {
                                        goto LABEL_3220;
                                      }

                                      v1599 = 10801;
                                    }

                                    break;
                                  case 'd':
                                    if (v1536 == 50)
                                    {
                                      v1599 = 10351;
                                    }

                                    else
                                    {
                                      if (v1536 == 52)
                                      {
                                        v1599 = 10352;
                                        break;
                                      }

LABEL_3220:
                                      v1599 = 10803;
                                    }

                                    break;
                                  default:
                                    goto LABEL_3220;
                                }

LABEL_3204:
                                InsertElement = UpgradeX86MaskedShift(v1756, v1742, v1599);
LABEL_1607:
                                AlignedLoad = InsertElement;
                                ShuffleVector = InsertElement;
                                goto LABEL_1608;
                              }

LABEL_3046:
                              if (*(v33 + v68 - 4) == 942813486)
                              {
                                if (v1454 == 113)
                                {
                                  v1603 = !v1480;
                                  v1604 = 11361;
                                  v1605 = 11364;
                                }

                                else
                                {
                                  v1603 = !v1480;
                                  if (v1454 == 100)
                                  {
                                    v1604 = 11360;
                                    v1605 = 11363;
                                  }

                                  else
                                  {
                                    v1604 = 11362;
                                    v1605 = 11365;
                                  }
                                }
                              }

                              else if (*(v33 + v68 - 4) == 909455918)
                              {
                                if (v1454 == 113)
                                {
                                  v1603 = !v1480;
                                  v1604 = 10344;
                                  v1605 = 10347;
                                }

                                else
                                {
                                  v1603 = !v1480;
                                  if (v1454 == 100)
                                  {
                                    v1604 = 10343;
                                    v1605 = 10346;
                                  }

                                  else
                                  {
                                    v1604 = 10345;
                                    v1605 = 10348;
                                  }
                                }
                              }

                              else
                              {
                                if (v1454 == 113)
                                {
                                  if (v1455)
                                  {
                                    v1600 = 10800;
                                  }

                                  else
                                  {
                                    v1600 = 10794;
                                  }

                                  v1601 = !v1480;
                                  v1602 = 10797;
                                  goto LABEL_3197;
                                }

                                if (v1454 == 100)
                                {
                                  if (v1455)
                                  {
                                    v1600 = 10799;
                                  }

                                  else
                                  {
                                    v1600 = 10793;
                                  }

                                  v1601 = !v1480;
                                  v1602 = 10796;
                                  goto LABEL_3197;
                                }

                                v1603 = !v1480;
                                v1604 = 10795;
                                v1605 = 10798;
                              }

LABEL_3201:
                              if (v1603)
                              {
                                v1599 = v1604;
                              }

                              else
                              {
                                v1599 = v1605;
                              }

                              goto LABEL_3204;
                            }

                            if (*v33 == 0x6D2E323135787661 && v33[1] == 0x6C7273702E6B7361)
                            {
                              v1473 = *(v33 + 16);
                              if (v1473 == 105)
                              {
                                v1474 = *(v33 + 18);
                                if (*(v33 + 17) == 46)
                                {
                                  v1475 = 0;
                                }

                                else
                                {
                                  v1475 = 0;
                                  v1565 = 19;
                                  if (v1474 != 46)
                                  {
                                    v1565 = 20;
                                  }

                                  v1474 = *(v33 + v1565);
                                }

                                v1516 = 1;
                              }

                              else
                              {
                                v1516 = v68 >= 0x13 && *(v33 + 18) == 105;
                                v1475 = v1473 == 118;
                                v1566 = *(v33 + 17);
                                if (v1473 == 46)
                                {
                                  v1475 = 0;
                                  v1474 = *(v33 + 17);
                                }

                                else
                                {
                                  v1474 = *(v33 + 18);
                                  if (v1566 != 46)
                                  {
                                    if (v1474 == 46)
                                    {
                                      v1474 = *(v33 + 19);
                                    }

                                    else
                                    {
                                      v1474 = *(v33 + 20);
                                    }

                                    if (v1473 == 118)
                                    {
                                      switch(v1474)
                                      {
                                        case 's':
                                          if (v1566 == 52)
                                          {
                                            v1599 = 10365;
                                            goto LABEL_3204;
                                          }

                                          if (v1566 == 56)
                                          {
                                            v1599 = 10366;
                                            goto LABEL_3204;
                                          }

                                          break;
                                        case 'h':
                                          if (v1566 == 49)
                                          {
                                            v1599 = 10830;
                                            goto LABEL_3204;
                                          }

                                          if (v1566 == 56)
                                          {
                                            v1599 = 10829;
                                            goto LABEL_3204;
                                          }

                                          break;
                                        case 'd':
                                          if (v1566 == 50)
                                          {
                                            v1599 = 10367;
                                            goto LABEL_3204;
                                          }

                                          if (v1566 == 52)
                                          {
                                            v1599 = 10368;
                                            goto LABEL_3204;
                                          }

                                          break;
                                      }

                                      v1599 = 10831;
                                      goto LABEL_3204;
                                    }

                                    v1475 = 0;
                                  }
                                }
                              }

                              if (*(v33 + v68 - 4) == 942813486)
                              {
                                if (v1474 == 113)
                                {
                                  v1603 = !v1516;
                                  v1604 = 11371;
                                  v1605 = 11374;
                                }

                                else
                                {
                                  v1603 = !v1516;
                                  if (v1474 == 100)
                                  {
                                    v1604 = 11370;
                                    v1605 = 11373;
                                  }

                                  else
                                  {
                                    v1604 = 11372;
                                    v1605 = 11375;
                                  }
                                }

                                goto LABEL_3201;
                              }

                              if (*(v33 + v68 - 4) == 909455918)
                              {
                                if (v1474 == 113)
                                {
                                  v1603 = !v1516;
                                  v1604 = 10360;
                                  v1605 = 10363;
                                }

                                else
                                {
                                  v1603 = !v1516;
                                  if (v1474 == 100)
                                  {
                                    v1604 = 10359;
                                    v1605 = 10362;
                                  }

                                  else
                                  {
                                    v1604 = 10361;
                                    v1605 = 10364;
                                  }
                                }

                                goto LABEL_3201;
                              }

                              if (v1474 == 113)
                              {
                                if (v1475)
                                {
                                  v1600 = 10828;
                                }

                                else
                                {
                                  v1600 = 10822;
                                }

                                v1601 = !v1516;
                                v1602 = 10825;
                              }

                              else
                              {
                                if (v1474 != 100)
                                {
                                  v1603 = !v1516;
                                  v1604 = 10823;
                                  v1605 = 10826;
                                  goto LABEL_3201;
                                }

                                if (v1475)
                                {
                                  v1600 = 10827;
                                }

                                else
                                {
                                  v1600 = 10821;
                                }

                                v1601 = !v1516;
                                v1602 = 10824;
                              }

                              goto LABEL_3197;
                            }

                            if (*v33 == 0x6D2E323135787661 && v33[1] == 0x617273702E6B7361)
                            {
                              v1439 = *(v33 + 16);
                              if (v1439 == 105)
                              {
                                v1440 = *(v33 + 18);
                                if (*(v33 + 17) == 46)
                                {
                                  v1441 = 0;
                                }

                                else
                                {
                                  v1441 = 0;
                                  v1595 = 19;
                                  if (v1440 != 46)
                                  {
                                    v1595 = 20;
                                  }

                                  v1440 = *(v33 + v1595);
                                }

                                v1554 = 1;
                              }

                              else
                              {
                                v1554 = v68 >= 0x13 && *(v33 + 18) == 105;
                                v1441 = v1439 == 118;
                                v1596 = *(v33 + 17);
                                if (v1439 == 46)
                                {
                                  v1441 = 0;
                                  v1440 = *(v33 + 17);
                                }

                                else
                                {
                                  v1440 = *(v33 + 18);
                                  if (v1596 != 46)
                                  {
                                    if (v1440 == 46)
                                    {
                                      v1440 = *(v33 + 19);
                                    }

                                    else
                                    {
                                      v1440 = *(v33 + 20);
                                    }

                                    if (v1439 == 118)
                                    {
                                      if (v1440 == 104)
                                      {
                                        if (v1596 == 49)
                                        {
                                          v1599 = 10819;
                                          goto LABEL_3204;
                                        }

                                        if (v1596 == 56)
                                        {
                                          v1599 = 10818;
                                          goto LABEL_3204;
                                        }
                                      }

                                      else if (v1440 == 115)
                                      {
                                        if (v1596 == 52)
                                        {
                                          v1599 = 10357;
                                          goto LABEL_3204;
                                        }

                                        if (v1596 == 56)
                                        {
                                          v1599 = 10358;
                                          goto LABEL_3204;
                                        }
                                      }

                                      v1599 = 10820;
                                      goto LABEL_3204;
                                    }

                                    v1441 = 0;
                                  }
                                }
                              }

                              if (*(v33 + v68 - 4) == 942813486)
                              {
                                if (v1440 != 113)
                                {
                                  v1603 = !v1554;
                                  if (v1440 == 100)
                                  {
                                    v1604 = 11366;
                                    v1605 = 11368;
                                  }

                                  else
                                  {
                                    v1604 = 11367;
                                    v1605 = 11369;
                                  }

                                  goto LABEL_3201;
                                }

                                if (v1441)
                                {
                                  v1600 = 10815;
                                }

                                else
                                {
                                  v1600 = 10805;
                                }

                                v1601 = !v1554;
                                v1602 = 10810;
                              }

                              else if (*(v33 + v68 - 4) == 909455918)
                              {
                                if (v1440 != 113)
                                {
                                  v1603 = !v1554;
                                  if (v1440 == 100)
                                  {
                                    v1604 = 10353;
                                    v1605 = 10355;
                                  }

                                  else
                                  {
                                    v1604 = 10354;
                                    v1605 = 10356;
                                  }

                                  goto LABEL_3201;
                                }

                                if (v1441)
                                {
                                  v1600 = 10816;
                                }

                                else
                                {
                                  v1600 = 10806;
                                }

                                v1601 = !v1554;
                                v1602 = 10811;
                              }

                              else if (v1440 == 113)
                              {
                                if (v1441)
                                {
                                  v1600 = 10817;
                                }

                                else
                                {
                                  v1600 = 10807;
                                }

                                v1601 = !v1554;
                                v1602 = 10812;
                              }

                              else
                              {
                                if (v1440 != 100)
                                {
                                  v1603 = !v1554;
                                  v1604 = 10808;
                                  v1605 = 10813;
                                  goto LABEL_3201;
                                }

                                if (v1441)
                                {
                                  v1600 = 10814;
                                }

                                else
                                {
                                  v1600 = 10804;
                                }

                                v1601 = !v1554;
                                v1602 = 10809;
                              }

LABEL_3197:
                              if (v1601)
                              {
                                v1599 = v1600;
                              }

                              else
                              {
                                v1599 = v1602;
                              }

                              goto LABEL_3204;
                            }
                          }

                          if ((i & 1) == 0)
                          {
                            v965 = *v33 == 0x6D2E323135787661 && v33[1] == 0x65766F6D2E6B7361;
                            if (v965 && *(v33 + 8) == 29486)
                            {
                              InsertElement = upgradeMaskedMove(v1756, v1742, v934, v10);
                              goto LABEL_1607;
                            }
                          }

                          if ((v517 & 1) == 0 && *v33 == 0x632E323135787661 && *(v33 + 7) == 0x326B73616D747663)
                          {
                            InsertElement = UpgradeMaskToInt(v1756, v1742);
                            goto LABEL_1607;
                          }

                          if (v68 >= 9 && *(v33 + v68 - 9) == 0x7164746E766F6D2ELL && *(v33 + v68 - 1) == 97)
                          {
                            v1502 = *(v4 + 40);
                            v1503 = llvm::ConstantInt::get(*v6 + 1992, 1, 0);
                            llvm::ValueAsMetadata::get(v1503, v1504);
                            __src = v1505;
                            Impl = llvm::MDTuple::getImpl(v6, &__src, 1uLL, 0, 1);
                            v1507 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                            v1508 = llvm::PointerType::get(*v1742, 0);
                            __src = "cast";
                            LOWORD(NullValue) = 259;
                            v1509 = llvm::IRBuilderBase::CreateCast(v1756, 49, v1507, v1508, &__src);
                            v1510 = *v1742;
                            v1511 = llvm::Type::getPrimitiveSizeInBits(*v1742);
                            LOWORD(NullValue) = 257;
                            AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v1756, v1510, v1509, (63 - __clz(v1511 >> 3)) | 0x100u, 0, &__src);
                            MDKindID = llvm::Module::getMDKindID(v1502, "nontemporal", 0xBuLL);
                            llvm::Instruction::setMetadata(AlignedLoad, MDKindID, Impl);
                            ShuffleVector = AlignedLoad;
LABEL_1608:
                            v7 = v3;
LABEL_607:
                            if (!AlignedLoad)
                            {
LABEL_899:
                              v332 = v1742;
                              goto LABEL_900;
                            }

LABEL_897:
                            v261 = v1742;
                            v262 = AlignedLoad;
LABEL_898:
                            llvm::Value::doRAUW(v261, v262, 1);
                            goto LABEL_899;
                          }

                          if ((v671 & 1) == 0 && (*v33 == 0x616D66762E616D66 ? (v969 = *(v33 + 3) == 0x2E6464616D66762ELL) : (v969 = 0), v969 || (*v33 == 0x736D66762E616D66 ? (v970 = *(v33 + 3) == 0x2E6275736D66762ELL) : (v970 = 0), v970)) || (v667 & 1) == 0 && (*v33 == 0x6D6E66762E616D66 ? (v971 = *(v33 + 2) == 778331233) : (v971 = 0), v971 || (*v33 == 0x6D6E66762E616D66 ? (v972 = *(v33 + 2) == 778204531) : (v972 = 0), v972)))
                          {
                            v1456 = *(v33 + 6);
                            v1457 = 7;
                            if (v1456 == 110)
                            {
                              v1457 = 8;
                            }

                            v1458 = 11;
                            if (v1456 == 110)
                            {
                              v1458 = 12;
                            }

                            v1459 = *(v33 + v1458);
                            v1460 = *(v33 + v1457);
                            v1461 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                            Element = *v1461;
                            v1753[0] = *v1461;
                            v1463 = *(v1461 + 4);
                            v1753[1] = v1463;
                            v1464 = *(v1461 + 8);
                            *&v1754 = v1464;
                            if (v1459 == 115)
                            {
                              LOWORD(NullValue) = 257;
                              Element = llvm::IRBuilderBase::CreateExtractElement(v1756, Element, &__src, v10);
                              v1753[0] = Element;
                              LOWORD(NullValue) = 257;
                              v1466 = llvm::IRBuilderBase::CreateExtractElement(v1756, v1463, &__src, v1465);
                              v1753[1] = v1466;
                              LOWORD(NullValue) = 257;
                              v1464 = llvm::IRBuilderBase::CreateExtractElement(v1756, v1464, &__src, v1467);
                              *&v1754 = v1464;
                              if (v1456 == 110)
                              {
                                LOWORD(NullValue) = 257;
                                v1753[1] = llvm::IRBuilderBase::CreateFNeg(v1756, v1466, &__src, 0);
                              }
                            }

                            else if (v1456 == 110)
                            {
                              LOWORD(NullValue) = 257;
                              Element = llvm::IRBuilderBase::CreateFNeg(v1756, Element, &__src, 0);
                              v1753[0] = Element;
                            }

                            if (v1460 == 115)
                            {
                              LOWORD(NullValue) = 257;
                              *&v1754 = llvm::IRBuilderBase::CreateFNeg(v1756, v1464, &__src, 0);
                            }

                            v1482 = *(*(*(v1742 + 5) + 56) + 40);
                            __p = *Element;
                            v1483 = llvm::Intrinsic::getDeclaration(v1482, 142, &__p, 1);
                            if (v1483)
                            {
                              v1484 = *(v1483 + 24);
                            }

                            else
                            {
                              v1484 = 0;
                            }

                            LOWORD(NullValue) = 257;
                            v1513 = llvm::IRBuilderBase::CreateCall(v1756, v1484, v1483, v1753, 3, &__src, 0);
                            ShuffleVector = v1513;
                            if (v1459 == 115)
                            {
                              v1515 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                              LOWORD(NullValue) = 257;
                              ShuffleVector = llvm::IRBuilderBase::CreateInsertElement(v1756, v1515, v1513, &__src, v1514);
                            }

LABEL_2251:
                            v7 = v3;
LABEL_1380:
                            AlignedLoad = ShuffleVector;
                            goto LABEL_607;
                          }

                          if (!v658 && *v33 == 0x6D66762E34616D66 && *(v33 + 5) == 0x732E6464616D6676)
                          {
                            v1555 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                            v1556 = *v1555;
                            v1557 = *(v1555 + 4);
                            v1558 = *(v1555 + 8);
                            LOWORD(NullValue) = 257;
                            v1559 = llvm::IRBuilderBase::CreateExtractElement(v1756, v1556, &__src, v10);
                            v1753[0] = v1559;
                            LOWORD(NullValue) = 257;
                            v1753[1] = llvm::IRBuilderBase::CreateExtractElement(v1756, v1557, &__src, v1560);
                            LOWORD(NullValue) = 257;
                            *&v1754 = llvm::IRBuilderBase::CreateExtractElement(v1756, v1558, &__src, v1561);
                            v1562 = *(*(*(v1742 + 5) + 56) + 40);
                            __p = *v1559;
                            v1563 = llvm::Intrinsic::getDeclaration(v1562, 142, &__p, 1);
                            if (v1563)
                            {
                              v1564 = *(v1563 + 24);
                            }

                            else
                            {
                              v1564 = 0;
                            }

                            LOWORD(NullValue) = 257;
                            ShuffleVector = llvm::IRBuilderBase::CreateCall(v1756, v1564, v1563, v1753, 3, &__src, 0);
                            v1047 = llvm::Constant::getNullValue(*v1742, v1606, v1607, v1608);
                            v1046 = ShuffleVector;
                            LOWORD(NullValue) = 257;
                            goto LABEL_2128;
                          }

                          if (!v669 && (*v33 == 0x6D2E323135787661 ? (v974 = v33[1] == 0x616D66762E6B7361) : (v974 = 0), v974 ? (v975 = *(v33 + 4) == 1932420196) : (v975 = 0), v975) || (v933 & 1) == 0 && (*v33 == 0x6D2E323135787661 ? (v1517 = v33[1] == 0x6D66762E7A6B7361) : (v1517 = 0), v1517 ? (v1518 = *(v33 + 13) == 0x732E6464616D6676) : (v1518 = 0), v1518 || (*v33 == 0x6D2E323135787661 ? (v1519 = v33[1] == 0x6D66762E336B7361) : (v1519 = 0), v1519 ? (v1520 = *(v33 + 13) == 0x732E6464616D6676) : (v1520 = 0), v1520 || (*v33 == 0x6D2E323135787661 ? (v1521 = v33[1] == 0x6D66762E336B7361) : (v1521 = 0), v1521 ? (v1522 = *(v33 + 13) == 0x732E6275736D6676) : (v1522 = 0), v1522))) || (v74 & 1) == 0 && (*v33 == 0x6D2E323135787661 ? (v976 = v33[1] == 0x6E66762E336B7361) : (v976 = 0), v976 ? (v977 = *(v33 + 14) == 0x732E6275736D6E66) : (v977 = 0), v977))
                          {
                            v1523 = *(v33 + 11);
                            v1524 = v1523 == 51 || v1523 == 122;
                            v1525 = v1524;
                            v1526 = 12;
                            if (v1524)
                            {
                              v1526 = 13;
                            }

                            if (v68 < v1526)
                            {
                              v1526 = v68;
                            }

                            v1527 = v33 + v1526;
                            v1737 = (v33 + v1526);
                            v1738 = v68 - v1526;
                            v1528 = *(v33 + v1526 + 2);
                            v1529 = 3;
                            if (v1528 == 110)
                            {
                              v1529 = 4;
                            }

                            v1530 = v1527[v1529];
                            v1531 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                            FNeg = *v1531;
                            v1533 = *(v1531 + 4);
                            v1534 = *(v1531 + 8);
                            if (v1525 == 1 && v1528 == 110)
                            {
                              LOWORD(NullValue) = 257;
                              FNeg = llvm::IRBuilderBase::CreateFNeg(v1756, FNeg, &__src, 0);
                              goto LABEL_2924;
                            }

                            if (v1528 == 110)
                            {
LABEL_2924:
                              if (v1523 != 51 && v1523 != 122)
                              {
                                LOWORD(NullValue) = 257;
                                v1533 = llvm::IRBuilderBase::CreateFNeg(v1756, v1533, &__src, 0);
                              }
                            }

                            if (v1530 == 115)
                            {
                              LOWORD(NullValue) = 257;
                              v1534 = llvm::IRBuilderBase::CreateFNeg(v1756, v1534, &__src, 0);
                            }

                            LOWORD(NullValue) = 257;
                            v1537 = llvm::IRBuilderBase::CreateExtractElement(v1756, FNeg, &__src, v10);
                            LOWORD(NullValue) = 257;
                            v1539 = llvm::IRBuilderBase::CreateExtractElement(v1756, v1533, &__src, v1538);
                            LOWORD(NullValue) = 257;
                            v1541 = llvm::IRBuilderBase::CreateExtractElement(v1756, v1534, &__src, v1540);
                            v1542 = v1541;
                            v1543 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[16];
                            if (*(v1543 + 16) != 16)
                            {
                              goto LABEL_2935;
                            }

                            v1544 = (v1543 + 24);
                            if (*(v1543 + 32) >= 0x41u)
                            {
                              v1544 = *v1544;
                            }

                            if (*v1544 == 4)
                            {
                              v1545 = *(*(*(v1742 + 5) + 56) + 40);
                              __src = *v1537;
                              v1546 = llvm::Intrinsic::getDeclaration(v1545, 142, &__src, 1);
                              v1547 = v1546;
                              if (v1546)
                              {
                                v1548 = *(v1546 + 24);
                              }

                              else
                              {
                                v1548 = 0;
                              }

                              v1753[0] = v1537;
                              v1753[1] = v1539;
                              *&v1754 = v1542;
                              LOWORD(NullValue) = 257;
                              v1587 = 3;
                            }

                            else
                            {
LABEL_2935:
                              v1753[0] = v1537;
                              v1753[1] = v1539;
                              *&v1754 = v1541;
                              *(&v1754 + 1) = v1543;
                              if (*(v1737 + v1738 - 1) == 100)
                              {
                                v1549 = 10907;
                              }

                              else
                              {
                                v1549 = 10906;
                              }

                              v1550 = llvm::Intrinsic::getDeclaration(*(*(*(v1742 + 5) + 56) + 40), v1549, 0, 0);
                              v1547 = v1550;
                              if (v1550)
                              {
                                v1548 = *(v1550 + 24);
                              }

                              else
                              {
                                v1548 = 0;
                              }

                              LOWORD(NullValue) = 257;
                              v1587 = 4;
                            }

                            v1610 = llvm::IRBuilderBase::CreateCall(v1756, v1548, v1547, v1753, v1587, &__src, 0);
                            ShuffleVector = v1610;
                            if (v1523 == 122)
                            {
                              v1614 = llvm::Constant::getNullValue(*v1610, v1611, v1612, v1613);
                              goto LABEL_3115;
                            }

                            if (v1523 == 51)
                            {
                              v1615 = v1542;
                            }

                            else
                            {
                              v1615 = v1537;
                            }

                            if (v1523 == 51 && v1530 == 115)
                            {
                              v1616 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[8];
                              LOWORD(NullValue) = 257;
                              v1614 = llvm::IRBuilderBase::CreateExtractElement(v1756, v1616, &__src, v1615);
LABEL_3115:
                              v1615 = v1614;
                            }

                            v1046 = EmitX86ScalarSelect(v1756, (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[12], ShuffleVector, v1615);
                            ShuffleVector = v1046;
                            v1047 = *(v1742 + 8 * (v1523 == 51) + -4 * (*(v1742 + 5) & 0x7FFFFFF));
                            LOWORD(NullValue) = 257;
LABEL_2128:
                            InsertElement = llvm::IRBuilderBase::CreateInsertElement(v1756, v1047, v1046, &__src, v1045);
                            goto LABEL_1607;
                          }

                          if (!v669 && (*v33 == 0x6D2E323135787661 ? (v978 = v33[1] == 0x616D66762E6B7361) : (v978 = 0), v978 ? (v979 = *(v33 + 4) == 1882088548) : (v979 = 0), v979) || (v933 & 1) == 0 && (*v33 == 0x6D2E323135787661 ? (v1567 = v33[1] == 0x6D6E66762E6B7361) : (v1567 = 0), v1567 ? (v1568 = *(v33 + 13) == 0x702E6464616D6E66) : (v1568 = 0), v1568 || (*v33 == 0x6D2E323135787661 ? (v1569 = v33[1] == 0x6D6E66762E6B7361) : (v1569 = 0), v1569 ? (v1570 = *(v33 + 13) == 0x702E6275736D6E66) : (v1570 = 0), v1570 || (*v33 == 0x6D2E323135787661 ? (v1571 = v33[1] == 0x6D66762E336B7361) : (v1571 = 0), v1571 ? (v1572 = *(v33 + 13) == 0x702E6464616D6676) : (v1572 = 0), v1572 || (*v33 == 0x6D2E323135787661 ? (v1573 = v33[1] == 0x6D66762E336B7361) : (v1573 = 0), v1573 ? (v1574 = *(v33 + 13) == 0x702E6275736D6676) : (v1574 = 0), v1574)))) || (v74 & 1) == 0 && (*v33 == 0x6D2E323135787661 ? (v980 = v33[1] == 0x6E66762E336B7361) : (v980 = 0), v980 ? (v981 = *(v33 + 14) == 0x702E6275736D6E66) : (v981 = 0), v981) || (v933 & 1) == 0 && (*v33 == 0x6D2E323135787661 ? (v982 = v33[1] == 0x6D66762E7A6B7361) : (v982 = 0), v982 ? (v983 = *(v33 + 13) == 0x702E6464616D6676) : (v983 = 0), v983))
                          {
                            v1575 = *(v33 + 11);
                            v1576 = v1575 == 51 || v1575 == 122;
                            v1577 = v1576;
                            v1578 = 12;
                            if (v1576)
                            {
                              v1578 = 13;
                            }

                            if (v68 < v1578)
                            {
                              v1578 = v68;
                            }

                            v1579 = v33 + v1578;
                            v1737 = (v33 + v1578);
                            v1738 = v68 - v1578;
                            v1580 = *(v33 + v1578 + 2);
                            v1581 = 3;
                            if (v1580 == 110)
                            {
                              v1581 = 4;
                            }

                            v1582 = v1579[v1581];
                            v1583 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                            v1584 = *v1583;
                            v1585 = *(v1583 + 4);
                            v1586 = *(v1583 + 8);
                            if (v1577 == 1 && v1580 == 110)
                            {
                              LOWORD(NullValue) = 257;
                              v1584 = llvm::IRBuilderBase::CreateFNeg(v1756, v1584, &__src, 0);
                              goto LABEL_3010;
                            }

                            if (v1580 == 110)
                            {
LABEL_3010:
                              if (v1575 != 51 && v1575 != 122)
                              {
                                LOWORD(NullValue) = 257;
                                v1585 = llvm::IRBuilderBase::CreateFNeg(v1756, v1585, &__src, 0);
                              }
                            }

                            if (v1582 == 115)
                            {
                              LOWORD(NullValue) = 257;
                              v1586 = llvm::IRBuilderBase::CreateFNeg(v1756, v1586, &__src, 0);
                            }

                            v1588 = v1742;
                            if (((llvm::CallBase::arg_end(v1742) - (v1588 - 32 * (*(v1588 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) != 0xA0)
                            {
                              goto LABEL_3020;
                            }

                            v1589 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[16];
                            if (*(v1589 + 16) != 16)
                            {
                              goto LABEL_3032;
                            }

                            v1590 = (v1589 + 24);
                            if (*(v1589 + 32) >= 0x41u)
                            {
                              v1590 = *v1590;
                            }

                            if (*v1590 == 4)
                            {
LABEL_3020:
                              v1591 = *(*(*(v1742 + 5) + 56) + 40);
                              __src = *v1584;
                              v1592 = llvm::Intrinsic::getDeclaration(v1591, 142, &__src, 1);
                              v1593 = v1592;
                              if (v1592)
                              {
                                v1594 = *(v1592 + 24);
                              }

                              else
                              {
                                v1594 = 0;
                              }

                              v1753[0] = v1584;
                              v1753[1] = v1585;
                              *&v1754 = v1586;
                              LOWORD(NullValue) = 257;
                              v1609 = 3;
                            }

                            else
                            {
LABEL_3032:
                              if (*(v1737 + v1738 - 5) == 115)
                              {
                                v1597 = 10909;
                              }

                              else
                              {
                                v1597 = 10908;
                              }

                              v1598 = llvm::Intrinsic::getDeclaration(*(v4 + 40), v1597, 0, 0);
                              v1593 = v1598;
                              if (v1598)
                              {
                                v1594 = *(v1598 + 24);
                              }

                              else
                              {
                                v1594 = 0;
                              }

                              v1753[0] = v1584;
                              v1753[1] = v1585;
                              *&v1754 = v1586;
                              *(&v1754 + 1) = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[16];
                              LOWORD(NullValue) = 257;
                              v1609 = 4;
                            }

                            v1365 = llvm::IRBuilderBase::CreateCall(v1756, v1594, v1593, v1753, v1609, &__src, 0);
                            ShuffleVector = v1365;
                            v1635 = v1742;
                            if (v1575 == 122)
                            {
                              v1636 = llvm::Constant::getNullValue(*v1742, v1633, v1365, v1634);
                              goto LABEL_3158;
                            }

                            v1638 = *(v1742 + 5) & 0x7FFFFFF;
                            v1637 = -v1638;
                            v1639 = v1742 - 32 * v1638;
                            if (v1575 == 51)
                            {
                              v1368 = *(v1639 + 8);
                              goto LABEL_3401;
                            }

LABEL_3400:
                            v1368 = *v1639;
                            goto LABEL_3401;
                          }

                          if ((v517 & 1) == 0 && *v33 == 0x736D66762E616D66 && *(v33 + 7) == 0x702E646461627573)
                          {
                            v1647 = v1742;
                            v1648 = *v1742;
                            v1651 = llvm::Type::getPrimitiveSizeInBits(*v1742);
                            if (v1649)
                            {
                              v1647 = v1742;
                              v1648 = *v1742;
                            }

                            if ((*(v1648 + 2) & 0xFE) == 0x12)
                            {
                              v1648 = **(v1648 + 2);
                            }

                            v1652 = llvm::Type::getPrimitiveSizeInBits(v1648);
                            if (v1651 == 128 && v1652 == 32)
                            {
                              v1653 = 11154;
                            }

                            else if (v1651 == 256 && v1652 == 32)
                            {
                              v1653 = 11155;
                            }

                            else if (v1652 == 64 && v1651 == 128)
                            {
                              v1653 = 11152;
                            }

                            else
                            {
                              v1653 = 11153;
                            }

                            v1692 = v1647 - 32 * (*(v1647 + 5) & 0x7FFFFFF);
                            v1753[0] = *v1692;
                            v1753[1] = *(v1692 + 4);
                            v1693 = *(v1692 + 8);
                            LOWORD(NullValue) = 257;
                            *&v1754 = llvm::IRBuilderBase::CreateFNeg(v1756, v1693, &__src, 0);
                            v1694 = llvm::Intrinsic::getDeclaration(*(v4 + 40), v1653, 0, 0);
                            v1233 = v1694;
                            if (v1694)
                            {
                              v1234 = *(v1694 + 24);
                            }

                            else
                            {
                              v1234 = 0;
                            }

                            LOWORD(NullValue) = 257;
                            goto LABEL_2717;
                          }

                          if ((v655 & 1) == 0 && (*v33 == 0x6D2E323135787661 ? (v985 = v33[1] == 0x616D66762E6B7361) : (v985 = 0), v985 ? (v986 = *(v33 + 15) == 0x702E627573646461) : (v986 = 0), v986) || v68 >= 0x18 && (*v33 == 0x6D2E323135787661 ? (v1617 = v33[1] == 0x6D66762E336B7361) : (v1617 = 0), v1617 ? (v1618 = v33[2] == 0x702E627573646461) : (v1618 = 0), v1618 || (*v33 == 0x6D2E323135787661 ? (v1619 = v33[1] == 0x6D66762E7A6B7361) : (v1619 = 0), v1619 ? (v1620 = v33[2] == 0x702E627573646461) : (v1620 = 0), v1620 || (*v33 == 0x6D2E323135787661 ? (v1621 = v33[1] == 0x6D66762E336B7361) : (v1621 = 0), v1621 ? (v1622 = v33[2] == 0x702E646461627573) : (v1622 = 0), v1622))))
                          {
                            v1623 = *(v33 + 11);
                            v1624 = v1623 == 122 || v1623 == 51;
                            v1625 = 12;
                            if (v1624)
                            {
                              v1625 = 13;
                            }

                            if (v68 < v1625)
                            {
                              v1625 = v68;
                            }

                            v1737 = (v33 + v1625);
                            v1738 = v68 - v1625;
                            v1626 = *(v33 + v1625 + 3);
                            v1627 = v1742;
                            if (((llvm::CallBase::arg_end(v1742) - (v1627 - 32 * (*(v1627 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0xA0)
                            {
                              if (*(v1737 + v1738 - 5) == 115)
                              {
                                v1628 = 10911;
                              }

                              else
                              {
                                v1628 = 10910;
                              }

                              v1629 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                              v1753[0] = *v1629;
                              v1753[1] = *(v1629 + 4);
                              v1630 = *(v1629 + 8);
                              *&v1754 = v1630;
                              *(&v1754 + 1) = *(v1629 + 16);
                              if (v1626 == 115)
                              {
                                LOWORD(NullValue) = 257;
                                *&v1754 = llvm::IRBuilderBase::CreateFNeg(v1756, v1630, &__src, 0);
                              }

                              v1631 = llvm::Intrinsic::getDeclaration(*(v4 + 40), v1628, 0, 0);
                              if (v1631)
                              {
                                v1632 = *(v1631 + 24);
                              }

                              else
                              {
                                v1632 = 0;
                              }

                              LOWORD(NullValue) = 257;
                              ShuffleVector = llvm::IRBuilderBase::CreateCall(v1756, v1632, v1631, v1753, 4, &__src, 0);
                            }

                            else
                            {
                              v1640 = *(*v1742 + 32);
                              v1641 = *(*v1742 + 32);
                              v1642 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                              __p = *v1642;
                              v1745 = *(v1642 + 4);
                              v1746 = *(v1642 + 8);
                              v1643 = *(*(*(v1742 + 5) + 56) + 40);
                              __src = *__p;
                              v1644 = llvm::Intrinsic::getDeclaration(v1643, 142, &__src, 1);
                              v1645 = v1644;
                              if (v1644)
                              {
                                v1646 = *(v1644 + 24);
                              }

                              else
                              {
                                v1646 = 0;
                              }

                              LOWORD(NullValue) = 257;
                              v1658 = llvm::IRBuilderBase::CreateCall(v1756, v1646, v1644, &__p, 3, &__src, 0);
                              LOWORD(NullValue) = 257;
                              v1746 = llvm::IRBuilderBase::CreateFNeg(v1756, v1746, &__src, 0);
                              if (v1645)
                              {
                                v1659 = *(v1645 + 24);
                              }

                              else
                              {
                                v1659 = 0;
                              }

                              LOWORD(NullValue) = 257;
                              v1660 = llvm::IRBuilderBase::CreateCall(v1756, v1659, v1645, &__p, 3, &__src, 0);
                              if (v1626 == 115)
                              {
                                v1661 = v1658;
                              }

                              else
                              {
                                v1661 = v1660;
                              }

                              if (v1626 == 115)
                              {
                                v1658 = v1660;
                              }

                              __src = &v1750;
                              v1749 = 0x2000000000;
                              llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v1640);
                              v1662 = __src;
                              if (v1641)
                              {
                                v1663 = (v1640 + 3) & 0x1FFFFFFFCLL;
                                v1664 = vdupq_n_s64(v1640 - 1);
                                v1665 = v1640 + 1;
                                v1666 = xmmword_2750C1830;
                                v1667 = xmmword_2750C1210;
                                v1668 = __src + 8;
                                v1669 = 3;
                                v1670 = vdupq_n_s64(4uLL);
                                do
                                {
                                  v1671 = vmovn_s64(vcgeq_u64(v1664, v1667));
                                  if (vuzp1_s16(v1671, *v1664.i8).u8[0])
                                  {
                                    *(v1668 - 2) = v1669 - 3;
                                  }

                                  if (vuzp1_s16(v1671, *&v1664).i8[2])
                                  {
                                    *(v1668 - 1) = v1665;
                                  }

                                  if (vuzp1_s16(*&v1664, vmovn_s64(vcgeq_u64(v1664, *&v1666))).i32[1])
                                  {
                                    *v1668 = v1669 - 1;
                                    v1668[1] = v1665 + 2;
                                  }

                                  v1666 = vaddq_s64(v1666, v1670);
                                  v1667 = vaddq_s64(v1667, v1670);
                                  v1669 += 4;
                                  v1665 += 4;
                                  v1668 += 4;
                                  v1663 -= 4;
                                }

                                while (v1663);
                              }

                              v1755 = 257;
                              ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(v1756, v1661, v1658, v1662, v1749, v1753);
                              if (__src != &v1750)
                              {
                                free(__src);
                              }
                            }

                            v1672 = v1742;
                            if (v1623 == 122)
                            {
                              v1368 = llvm::Constant::getNullValue(*v1742, v1655, v1656, v1657);
                              v1672 = v1742;
                              v1673 = -(*(v1742 + 5) & 0x7FFFFFF);
                            }

                            else
                            {
                              v1674 = *(v1742 + 5) & 0x7FFFFFF;
                              v1673 = -v1674;
                              v1675 = v1742 - 32 * v1674;
                              if (v1623 == 51)
                              {
                                v1368 = *(v1675 + 8);
                              }

                              else
                              {
                                v1368 = *v1675;
                              }
                            }

                            v1367 = *(v1672 + 4 * v1673 + 12);
                            v1365 = ShuffleVector;
                            goto LABEL_2627;
                          }

                          if ((v933 & 1) == 0)
                          {
                            v987 = *v33 == 0x6D2E323135787661 && v33[1] == 0x726574702E6B7361;
                            if (v987 && *(v33 + 13) == 0x2E676F6C6E726574)
                            {
                              goto LABEL_3267;
                            }
                          }

                          if ((v74 & 1) == 0)
                          {
                            v989 = *v1737 == 0x6D2E323135787661 && v1737[1] == 0x6574702E7A6B7361;
                            if (v989 && *(v1737 + 14) == 0x2E676F6C6E726574)
                            {
                              v33 = v1737;
LABEL_3267:
                              v1676 = *(v33 + 11);
                              v1677 = v1742;
                              v1678 = *v1742;
                              v1681 = llvm::Type::getPrimitiveSizeInBits(*v1742);
                              if (v1679)
                              {
                                v1677 = v1742;
                                v1678 = *v1742;
                              }

                              if ((*(v1678 + 2) & 0xFE) == 0x12)
                              {
                                v1678 = **(v1678 + 2);
                              }

                              v1682 = llvm::Type::getPrimitiveSizeInBits(v1678);
                              if (v1681 == 128 && v1682 == 32)
                              {
                                v1683 = 10832;
                              }

                              else if (v1681 == 256 && v1682 == 32)
                              {
                                v1683 = 10833;
                              }

                              else if (v1681 == 512 && v1682 == 32)
                              {
                                v1683 = 10834;
                              }

                              else if (v1681 == 128 && v1682 == 64)
                              {
                                v1683 = 10835;
                              }

                              else if (v1682 == 64 && v1681 == 256)
                              {
                                v1683 = 10836;
                              }

                              else
                              {
                                v1683 = 10837;
                              }

                              v1705 = (v1677 - 32 * (*(v1677 + 5) & 0x7FFFFFF));
                              v1753[0] = *v1705;
                              v1753[1] = v1705[4];
                              *&v1754 = v1705[8];
                              *(&v1754 + 1) = v1705[12];
                              v1706 = llvm::Intrinsic::getDeclaration(*(*(*(v1677 + 5) + 56) + 40), v1683, 0, 0);
                              if (v1706)
                              {
                                v1707 = *(v1706 + 24);
                              }

                              else
                              {
                                v1707 = 0;
                              }

                              LOWORD(NullValue) = 257;
                              v1708 = llvm::IRBuilderBase::CreateCall(v1756, v1707, v1706, v1753, 4, &__src, 0);
                              ShuffleVector = v1708;
                              v1710 = v1742;
                              if (v1676 == 122)
                              {
                                v1368 = llvm::ConstantAggregateZero::get(*v1742, v1709);
                                v1710 = v1742;
                                v1365 = ShuffleVector;
                                v1711 = -(*(v1742 + 5) & 0x7FFFFFF);
                              }

                              else
                              {
                                v1365 = v1708;
                                v1712 = *(v1742 + 5) & 0x7FFFFFF;
                                v1711 = -v1712;
                                v1368 = *(v1742 - 4 * v1712);
                              }

                              v1367 = *(v1710 + 4 * v1711 + 16);
                              goto LABEL_2627;
                            }
                          }

                          if (!v669 && ((v991 = v1737, *v1737 == 0x6D2E323135787661) ? (v992 = v1737[1] == 0x616D70762E6B7361) : (v992 = 0), v992 ? (v993 = *(v1737 + 4) == 842359908) : (v993 = 0), v993) || (v933 & 1) == 0 && ((v991 = v1737, *v1737 == 0x6D2E323135787661) ? (v994 = v1737[1] == 0x6D70762E7A6B7361) : (v994 = 0), v994 ? (v995 = *(v1737 + 13) == 0x32356464616D7076) : (v995 = 0), v995))
                          {
                            v1654 = v991[20] == 104 || v991[21] == 104;
                            v1684 = v991[11];
                            v1697 = llvm::Type::getPrimitiveSizeInBits(*v1742);
                            if (v1695)
                            {
                            }

                            if (v1697 == 128 && !v1654)
                            {
                              v1690 = 10953;
                              goto LABEL_3394;
                            }

                            if (v1697 == 256 && !v1654)
                            {
                              v1690 = 10954;
                              goto LABEL_3394;
                            }

                            if (v1697 == 512 && !v1654)
                            {
                              v1690 = 10955;
                              goto LABEL_3394;
                            }

                            v1698 = !v1654;
                            if (v1697 == 128 && !v1698)
                            {
                              v1690 = 10950;
                              goto LABEL_3394;
                            }

                            v1722 = ((v1697 != 256) | v1698 & 1) == 0;
                            v1723 = 10951;
LABEL_3391:
                            if (v1722)
                            {
                              v1690 = v1723;
                            }

                            else
                            {
                              v1690 = v1723 + 1;
                            }

                            goto LABEL_3394;
                          }

                          if ((v655 & 1) == 0 && ((v996 = v1737, *v1737 == 0x6D2E323135787661) ? (v997 = v1737[1] == 0x726570762E6B7361) : (v997 = 0), v997 ? (v998 = *(v1737 + 15) == 0x2E72617632696D72) : (v998 = 0), v998 || (*v1737 == 0x6D2E323135787661 ? (v999 = v1737[1] == 0x726570762E6B7361) : (v999 = 0), v999 ? (v1000 = *(v1737 + 15) == 0x2E72617632746D72) : (v1000 = 0), v1000)) || v68 >= 0x18 && ((v996 = v1737, *v1737 == 0x6D2E323135787661) ? (v1001 = v1737[1] == 0x6570762E7A6B7361) : (v1001 = 0), v1001 ? (v1002 = v1737[2] == 0x2E72617632746D72) : (v1002 = 0), v1002))
                          {
                            InsertElement = UpgradeX86VPERMT2Intrinsics(v1756, v1742, *(v996 + 11) == 122, *(v996 + 17) == 105);
                            goto LABEL_1607;
                          }

                          if ((v933 & 1) == 0 && ((v1003 = v1737, *v1737 == 0x6D2E323135787661) ? (v1004 = v1737[1] == 0x706470762E6B7361) : (v1004 = 0), v1004 ? (v1005 = *(v1737 + 13) == 0x2E64737562706470) : (v1005 = 0), v1005) || (v74 & 1) == 0 && ((v1003 = v1737, *v1737 == 0x6D2E323135787661) ? (v1006 = v1737[1] == 0x6470762E7A6B7361) : (v1006 = 0), v1006 ? (v1007 = *(v1737 + 14) == 0x2E64737562706470) : (v1007 = 0), v1007 || (*v1737 == 0x6D2E323135787661 ? (v1008 = v1737[1] == 0x706470762E6B7361) : (v1008 = 0), v1008 ? (v1009 = *(v1737 + 14) == 0x2E73647375627064) : (v1009 = 0), v1009)) || (v655 & 1) == 0 && ((v1003 = v1737, *v1737 == 0x6D2E323135787661) ? (v1010 = v1737[1] == 0x6470762E7A6B7361) : (v1010 = 0), v1010 ? (v1011 = *(v1737 + 15) == 0x2E73647375627064) : (v1011 = 0), v1011))
                          {
                            v1684 = *(v1003 + 11);
                            v1685 = 20;
                            if (v1684 == 122)
                            {
                              v1685 = 21;
                            }

                            v1686 = *(v1003 + v1685);
                            v1689 = llvm::Type::getPrimitiveSizeInBits(*v1742);
                            if (v1687)
                            {
                            }

                            if (v1689 != 128 || v1686 == 115)
                            {
                              if (v1689 == 256 && v1686 != 115)
                              {
                                v1690 = 10919;
                                goto LABEL_3394;
                              }

                              if (v1689 == 512 && v1686 != 115)
                              {
                                v1690 = 10920;
                                goto LABEL_3394;
                              }

                              if (v1689 == 128 && v1686 == 115)
                              {
                                v1690 = 10921;
                                goto LABEL_3394;
                              }

                              v1722 = v1689 == 256 && v1686 == 115;
                              v1723 = 10922;
                              goto LABEL_3391;
                            }

                            v1690 = 10918;
LABEL_3394:
                            v1730 = (v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF));
                            v1753[0] = *v1730;
                            v1753[1] = v1730[4];
                            *&v1754 = v1730[8];
                            v1731 = llvm::Intrinsic::getDeclaration(*(*(*(v1742 + 5) + 56) + 40), v1690, 0, 0);
                            if (v1731)
                            {
                              v1732 = *(v1731 + 24);
                            }

                            else
                            {
                              v1732 = 0;
                            }

                            LOWORD(NullValue) = 257;
                            v1733 = llvm::IRBuilderBase::CreateCall(v1756, v1732, v1731, v1753, 3, &__src, 0);
                            ShuffleVector = v1733;
                            v1635 = v1742;
                            if (v1684 != 122)
                            {
                              v1365 = v1733;
                              v1735 = *(v1742 + 5) & 0x7FFFFFF;
                              v1637 = -v1735;
                              v1639 = v1742 - 32 * v1735;
                              goto LABEL_3400;
                            }

                            v1636 = llvm::ConstantAggregateZero::get(*v1742, v1734);
LABEL_3158:
                            v1368 = v1636;
                            v1635 = v1742;
                            v1365 = ShuffleVector;
                            v1637 = -(*(v1742 + 5) & 0x7FFFFFF);
LABEL_3401:
                            v1367 = *(v1635 + 4 * v1637 + 12);
LABEL_2627:
                            InsertElement = EmitX86Select(v1756, v1367, v1365, v1368);
                            goto LABEL_1607;
                          }

                          if ((v933 & 1) == 0 && ((v1012 = v1737, *v1737 == 0x6D2E323135787661) ? (v1013 = v1737[1] == 0x706470762E6B7361) : (v1013 = 0), v1013 ? (v1014 = *(v1737 + 13) == 0x2E64737377706470) : (v1014 = 0), v1014) || (v74 & 1) == 0 && ((v1012 = v1737, *v1737 == 0x6D2E323135787661) ? (v1015 = v1737[1] == 0x6470762E7A6B7361) : (v1015 = 0), v1015 ? (v1016 = *(v1737 + 14) == 0x2E64737377706470) : (v1016 = 0), v1016 || (*v1737 == 0x6D2E323135787661 ? (v1017 = v1737[1] == 0x706470762E6B7361) : (v1017 = 0), v1017 ? (v1018 = *(v1737 + 14) == 0x2E73647373777064) : (v1018 = 0), v1018)) || (v655 & 1) == 0 && ((v1012 = v1737, *v1737 == 0x6D2E323135787661) ? (v1019 = v1737[1] == 0x6470762E7A6B7361) : (v1019 = 0), v1019 ? (v1020 = *(v1737 + 15) == 0x2E73647373777064) : (v1020 = 0), v1020))
                          {
                            v1684 = *(v1012 + 11);
                            v1699 = 20;
                            if (v1684 == 122)
                            {
                              v1699 = 21;
                            }

                            v1700 = *(v1012 + v1699);
                            v1703 = llvm::Type::getPrimitiveSizeInBits(*v1742);
                            if (v1701)
                            {
                            }

                            if (v1703 == 128 && v1700 != 115)
                            {
                              v1690 = 10924;
                              goto LABEL_3394;
                            }

                            if (v1703 == 256 && v1700 != 115)
                            {
                              v1690 = 10925;
                              goto LABEL_3394;
                            }

                            if (v1703 == 512 && v1700 != 115)
                            {
                              v1690 = 10926;
                              goto LABEL_3394;
                            }

                            if (v1703 == 128 && v1700 == 115)
                            {
                              v1690 = 10927;
                              goto LABEL_3394;
                            }

                            v1722 = v1703 == 256 && v1700 == 115;
                            v1723 = 10928;
                            goto LABEL_3391;
                          }

                          if (v68 == 12)
                          {
                            v1713 = *v33 == 0x7972726163646461 && *(v33 + 2) == 842233134;
                            if (v1713 || (*v33 == 0x7972726163646461 ? (v1714 = *(v33 + 2) == 875984174) : (v1714 = 0), v1714))
                            {
LABEL_3358:
                              if (*(v1737 + v68 - 1) == 50)
                              {
                                v1715 = 10199;
                              }

                              else
                              {
                                v1715 = 10200;
                              }

                              if (*(v1737 + v68 - 1) == 50)
                              {
                                v1716 = 11458;
                              }

                              else
                              {
                                v1716 = 11459;
                              }

                              if (*v1737 == 97)
                              {
                                v1717 = v1715;
                              }

                              else
                              {
                                v1717 = v1716;
                              }

                              v1718 = (v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF));
                              v1753[0] = *v1718;
                              v1753[1] = v1718[4];
                              *&v1754 = v1718[8];
                              v1719 = llvm::Intrinsic::getDeclaration(*(*(*(v1742 + 5) + 56) + 40), v1717, 0, 0);
                              if (v1719)
                              {
                                v1720 = *(v1719 + 24);
                              }

                              else
                              {
                                v1720 = 0;
                              }

                              LOWORD(NullValue) = 257;
                              v1724 = llvm::IRBuilderBase::CreateCall(v1756, v1720, v1719, v1753, 3, &__src, 0);
                              LODWORD(__p) = 1;
                              LOWORD(NullValue) = 257;
                              v1725 = llvm::IRBuilderBase::CreateExtractValue(v1756, v1724, &__p, 1, &__src);
                              v1726 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[12];
                              v1727 = llvm::PointerType::get(*v1725, 0);
                              LOWORD(NullValue) = 257;
                              v1728 = llvm::IRBuilderBase::CreateCast(v1756, 49, v1726, v1727, &__src);
                              llvm::IRBuilderBase::CreateAlignedStore(v1756, v1725, v1728, 256, 0);
                              LODWORD(__p) = 0;
                              LOWORD(NullValue) = 257;
                              v1729 = llvm::IRBuilderBase::CreateExtractValue(v1756, v1724, &__p, 1, &__src);
                              llvm::Value::doRAUW(v1742, v1729, 1);
                              ShuffleVector = 0;
                              v7 = v3;
                              goto LABEL_899;
                            }
                          }

                          else if (v68 == 13)
                          {
                            if (*v33 == 0x7972726163646461 && *(v33 + 5) == 0x3233752E78797272)
                            {
                              goto LABEL_3358;
                            }

                            if (*v33 == 0x7972726163646461 && *(v33 + 5) == 0x3436752E78797272)
                            {
                              goto LABEL_3358;
                            }

                            if (*v33 == 0x6F72726F62627573 && *(v33 + 5) == 0x3233752E776F7272)
                            {
                              goto LABEL_3358;
                            }

                            if (*v33 == 0x6F72726F62627573 && *(v33 + 5) == 0x3436752E776F7272)
                            {
                              goto LABEL_3358;
                            }
                          }

                          else if (v667)
                          {
                            goto LABEL_3374;
                          }

                          if (*v1737 != 0x6D2E323135787661 || *(v1737 + 2) != 778793825)
                          {
LABEL_3374:
                            v7 = v3;
                            goto LABEL_125;
                          }

                          v7 = v3;
                          if (upgradeAVX512MaskToSelect(v33, v68, v1756, v1742, &ShuffleVector))
                          {
                            goto LABEL_1380;
                          }

LABEL_125:
                          if (v36)
                          {
                            v33 = v1738;
                            if (v1738 == 6)
                            {
                              if (*v1737 == 779313761 && *(v1737 + 2) == 27756)
                              {
LABEL_284:
                                v203 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                                __src = "neg";
                                LOWORD(NullValue) = 259;
                                Neg = llvm::IRBuilderBase::CreateNeg(v1756, v203, &__src, v10);
                                v208 = llvm::Constant::getNullValue(*v203, v205, v206, v207);
                                __src = "abs.cond";
                                LOWORD(NullValue) = 259;
                                ICmp = llvm::IRBuilderBase::CreateICmp(v1756, 39, v203, v208, &__src);
                                __src = "abs";
                                LOWORD(NullValue) = 259;
                                v210 = v203;
                                v211 = Neg;
LABEL_412:
                                Select = llvm::IRBuilderBase::CreateSelect(v1756, ICmp, v210, v211, &__src, 0);
                                goto LABEL_413;
                              }

                              if (!memcmp(v1737, "max.ll", v1738) || (*v1737 == 779641197 ? (v178 = *(v1737 + 2) == 26997) : (v178 = 0), v178))
                              {
LABEL_373:
                                v273 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                                v274 = *v273;
                                v275 = *(v273 + 4);
                                v276 = *(v1737 + v1738 - 3) == 29998 && *(v1737 + v1738 - 1) == 105;
                                if (v276 || *(v1737 + v1738 - 4) == 1819047214)
                                {
                                  __src = "max.cond";
                                  LOWORD(NullValue) = 259;
                                  v277 = 35;
                                }

                                else
                                {
                                  __src = "max.cond";
                                  LOWORD(NullValue) = 259;
                                  v277 = 39;
                                }

                                ICmp = llvm::IRBuilderBase::CreateICmp(v1756, v277, v274, v275, &__src);
                                v278 = "max";
                                goto LABEL_411;
                              }

                              if (!memcmp(v1737, "min.ll", 6uLL) || (*v1737 == 778987885 ? (v179 = *(v1737 + 2) == 26997) : (v179 = 0), v179))
                              {
LABEL_381:
                                v279 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                                v274 = *v279;
                                v275 = *(v279 + 4);
                                v280 = *(v1737 + v1738 - 3) == 29998 && *(v1737 + v1738 - 1) == 105;
                                if (v280 || *(v1737 + v1738 - 4) == 1819047214)
                                {
                                  __src = "min.cond";
                                  LOWORD(NullValue) = 259;
                                  v281 = 37;
                                }

                                else
                                {
                                  __src = "min.cond";
                                  LOWORD(NullValue) = 259;
                                  v281 = 41;
                                }

                                ICmp = llvm::IRBuilderBase::CreateICmp(v1756, v281, v274, v275, &__src);
                                v278 = "min";
LABEL_411:
                                __src = v278;
                                LOWORD(NullValue) = 259;
                                v210 = v274;
                                v211 = v275;
                                goto LABEL_412;
                              }

                              if (!memcmp(v1737, "clz.ll", 6uLL))
                              {
                                v180 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                                v181 = *(v4 + 40);
                                __p = *v180;
                                v182 = llvm::Intrinsic::getDeclaration(v181, 53, &__p, 1);
                                v183 = v182;
                                if (v182)
                                {
                                  v184 = *(v182 + 24);
                                }

                                else
                                {
                                  v184 = 0;
                                }

                                v1753[0] = v180;
                                v566 = *v1760;
                                v567 = *(*v1760 + 1600);
                                if (!v567)
                                {
                                  v567 = llvm::ConstantInt::get(v566 + 1920, 0, 0);
                                  *(v566 + 1600) = v567;
                                }

                                v1753[1] = v567;
                                __src = "ctlz";
                                LOWORD(NullValue) = 259;
                                v216 = llvm::IRBuilderBase::CreateCall(v1756, v184, v183, v1753, 2, &__src, 0);
                                v568 = *v1760;
                                __src = "ctlz.trunc";
                                LOWORD(NullValue) = 259;
LABEL_1258:
                                v217 = (v568 + 1992);
                                p_src = &__src;
                                v219 = 38;
LABEL_289:
                                Select = llvm::IRBuilderBase::CreateCast(v1756, v219, v216, v217, p_src);
LABEL_413:
                                AlignedLoad = Select;
                                ShuffleVector = Select;
                                goto LABEL_607;
                              }
                            }

                            else if (v1738 == 5)
                            {
                              if (*v1737 == 779313761 && *(v1737 + 4) == 105)
                              {
                                goto LABEL_284;
                              }

                              if (*v1737 == 779641197 && *(v1737 + 4) == 105)
                              {
                                goto LABEL_373;
                              }

                              if (!memcmp(v1737, "min.i", v1738))
                              {
                                goto LABEL_381;
                              }
                            }

                            else
                            {
                              if (v1738 >= 0x15)
                              {
                                v185 = *v1737 == 0x6C2E63696D6F7461 && v1737[1] == 0x2E6464612E64616FLL;
                                v186 = v185 && *(v1737 + 13) == 0x702E3233662E6464;
                                if (v186 || (*v1737 == 0x6C2E63696D6F7461 ? (v187 = v1737[1] == 0x2E6464612E64616FLL) : (v187 = 0), v187 ? (v188 = *(v1737 + 13) == 0x702E3436662E6464) : (v188 = 0), v188))
                                {
                                  v284 = (v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF));
                                  Select = llvm::IRBuilderBase::CreateAtomicRMW(v1756, 11, *v284, v284[4], 0, 7, 1);
                                  goto LABEL_413;
                                }
                              }

                              if (v1738 > 5)
                              {
                                if (v1738 == 7)
                                {
                                  if (*v1737 == 779641197 && *(v1737 + 3) == 1819047214)
                                  {
                                    goto LABEL_373;
                                  }

                                  if (*v1737 == 778987885 && *(v1737 + 3) == 1819047214)
                                  {
                                    goto LABEL_381;
                                  }

                                  if (*v1737 == 1668312944 && *(v1737 + 3) == 1819029091)
                                  {
                                    v1753[0] = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                                    v270 = *(v4 + 40);
                                    __p = *v1753[0];
                                    v271 = llvm::Intrinsic::getDeclaration(v270, 54, &__p, 1);
                                    if (v271)
                                    {
                                      v272 = *(v271 + 24);
                                    }

                                    else
                                    {
                                      v272 = 0;
                                    }

                                    __src = "ctpop";
                                    LOWORD(NullValue) = 259;
                                    v216 = llvm::IRBuilderBase::CreateCall(v1756, v272, v271, v1753, 1, &__src, 0);
                                    v568 = *v1760;
                                    __src = "ctpop.trunc";
                                    LOWORD(NullValue) = 259;
                                    goto LABEL_1258;
                                  }
                                }
                              }

                              else if (v1738 == 3 && *v1737 == 12904 && *(v1737 + 2) == 102)
                              {
                                v480 = *(v4 + 40);
                                v1753[0] = (*v1760 + 1704);
                                v481 = llvm::Intrinsic::getDeclaration(v480, 18, v1753, 1);
                                v304 = v481;
                                if (v481)
                                {
                                  v305 = *(v481 + 24);
                                }

                                else
                                {
                                  v305 = 0;
                                }

                                __p = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                                __src = "h2f";
                                v351 = 259;
LABEL_538:
                                LOWORD(NullValue) = v351;
                                Select = llvm::IRBuilderBase::CreateCall(v1756, v305, v304, &__p, 1, &__src, 0);
                                goto LABEL_413;
                              }
                            }
                          }

                          v6 = v1742;
                          if (v1738 == 14 && *v1737 == 0x707463762E65766DLL && *(v1737 + 6) == 0x646C6F2E34367074)
                          {
                            v354 = llvm::Intrinsic::getDeclaration(*(v4 + 40), 2699, 0, 0);
                            v355 = v354;
                            if (v354)
                            {
                              v356 = *(v354 + 24);
                            }

                            else
                            {
                              v356 = 0;
                            }

                            v498 = *(v6 + 5);
                            v1753[0] = *(v6 - 4 * (v498 & 0x7FFFFFF));
                            if ((v498 & 0x10000000) != 0)
                            {
                              v501 = llvm::Value::getValueName(v6);
                              v502 = *v501;
                              v500 = v501 + 2;
                              v499 = v502;
                            }

                            else
                            {
                              v499 = 0;
                              v500 = &str_3_24;
                            }

                            LOWORD(NullValue) = 261;
                            __src = v500;
                            v1749 = v499;
                            v1753[0] = llvm::IRBuilderBase::CreateCall(v1756, v356, v355, v1753, 1, &__src, 0);
                            v503 = *(v4 + 40);
                            llvm::FixedVectorType::get((*v1760 + 1920), 2);
                            __p = v504;
                            v505 = llvm::Intrinsic::getDeclaration(v503, 2659, &__p, 1);
                            if (v505)
                            {
                              v506 = *(v505 + 24);
                            }

                            else
                            {
                              v506 = 0;
                            }

                            LOWORD(NullValue) = 257;
                            __p = llvm::IRBuilderBase::CreateCall(v1756, v506, v505, v1753, 1, &__src, 0);
                            v507 = *(v4 + 40);
                            llvm::FixedVectorType::get((*v1760 + 1920), 4);
                            v1771[0] = v508;
                            v509 = llvm::Intrinsic::getDeclaration(v507, 2658, v1771, 1);
                            if (v509)
                            {
                              v510 = *(v509 + 24);
                            }

                            else
                            {
                              v510 = 0;
                            }

                            LOWORD(NullValue) = 257;
                            AlignedLoad = llvm::IRBuilderBase::CreateCall(v1756, v510, v509, &__p, 1, &__src, 0);
LABEL_606:
                            ShuffleVector = AlignedLoad;
                            goto LABEL_607;
                          }

                          v1753[0] = 0;
                          v1753[1] = 0;
                          *&v1754 = 0;
                          v357 = *(v1742 - 4);
                          if (v357 && !*(v357 + 16) && *(v357 + 24) == *(v1742 + 9))
                          {
                            v358 = *(v357 + 36);
                            llvm::FixedVectorType::get((*v1760 + 1920), 2);
                            v360 = v359;
                            v1736 = v358;
                            if (v358 <= 2728)
                            {
                              if ((v358 - 2562) <= 0xE && ((1 << (v358 - 2)) & 0x5145) != 0)
                              {
                                __src = *(v6 - 4 * (*(v6 + 5) & 0x7FFFFFF))[4];
                                v1749 = v359;
                                p_NullValue = &v1750;
                                v362 = 2;
LABEL_571:
                                std::vector<llvm::Type *>::__assign_with_size[abi:nn200100]<llvm::Type * const*,llvm::Type * const*>(v1753, &__src, p_NullValue, v362);
                                v1745 = 0;
                                v1746 = 0;
                                __p = 0;
                                v367 = (v6 - 32 * (*(v6 + 5) & 0x7FFFFFF));
                                v368 = llvm::CallBase::arg_end(v6);
                                if (v367 != v368)
                                {
                                  v369 = v368;
                                  v370 = 0;
                                  do
                                  {
                                    v1771[0] = *v367;
                                    v371 = v1771[0];
                                    v372 = *v1771[0];
                                    if ((*(*v1771[0] + 8) & 0xFE) == 0x12)
                                    {
                                      v372 = **(v372 + 2);
                                    }

                                    if (llvm::Type::getPrimitiveSizeInBits(v372) == 1)
                                    {
                                      v373 = *(v4 + 40);
                                      llvm::FixedVectorType::get((*v1760 + 1920), 4);
                                      v1772[0] = v374;
                                      v375 = llvm::Intrinsic::getDeclaration(v373, 2659, v1772, 1);
                                      if (v375)
                                      {
                                        v376 = *(v375 + 24);
                                      }

                                      else
                                      {
                                        v376 = 0;
                                      }

                                      LOWORD(NullValue) = 257;
                                      v1743 = llvm::IRBuilderBase::CreateCall(v1756, v376, v375, v1771, 1, &__src, 0);
                                      v377 = *(v4 + 40);
                                      v1772[0] = v360;
                                      v378 = llvm::Intrinsic::getDeclaration(v377, 2658, v1772, 1);
                                      if (v378)
                                      {
                                        v379 = *(v378 + 24);
                                      }

                                      else
                                      {
                                        v379 = 0;
                                      }

                                      LOWORD(NullValue) = 257;
                                      v371 = llvm::IRBuilderBase::CreateCall(v1756, v379, v378, &v1743, 1, &__src, 0);
                                      v1771[0] = v371;
                                      v370 = v1745;
                                    }

                                    if (v370 >= v1746)
                                    {
                                      v380 = (v370 - __p) >> 3;
                                      if ((v380 + 1) >> 61)
                                      {
                                        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                                      }

                                      v381 = (v1746 - __p) >> 2;
                                      if (v381 <= v380 + 1)
                                      {
                                        v381 = v380 + 1;
                                      }

                                      if ((v1746 - __p) >= 0x7FFFFFFFFFFFFFF8)
                                      {
                                        v382 = 0x1FFFFFFFFFFFFFFFLL;
                                      }

                                      else
                                      {
                                        v382 = v381;
                                      }

                                      if (v382)
                                      {
                                        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(&__p, v382);
                                      }

                                      v383 = (8 * v380);
                                      *v383 = v371;
                                      v370 = (8 * v380 + 8);
                                      v384 = v383 - (v1745 - __p);
                                      memcpy(v384, __p, v1745 - __p);
                                      v385 = __p;
                                      __p = v384;
                                      v1745 = v370;
                                      v1746 = 0;
                                      if (v385)
                                      {
                                        operator delete(v385);
                                      }
                                    }

                                    else
                                    {
                                      *v370++ = v371;
                                    }

                                    v1745 = v370;
                                    v367 += 4;
                                  }

                                  while (v367 != v369);
                                }

                                v386 = llvm::Intrinsic::getDeclaration(*(v4 + 40), v1736, v1753[0], (v1753[1] - v1753[0]) >> 3);
                                v387 = v386;
                                if (v386)
                                {
                                  v388 = *(v386 + 24);
                                }

                                else
                                {
                                  v388 = 0;
                                }

                                v389 = __p;
                                v390 = (v1745 - __p) >> 3;
                                if ((*(v6 + 23) & 0x10) != 0)
                                {
                                  v393 = llvm::Value::getValueName(v6);
                                  v394 = *v393;
                                  v392 = v393 + 2;
                                  v391 = v394;
                                }

                                else
                                {
                                  v391 = 0;
                                  v392 = &str_3_24;
                                }

                                LOWORD(NullValue) = 261;
                                __src = v392;
                                v1749 = v391;
                                AlignedLoad = llvm::IRBuilderBase::CreateCall(v1756, v388, v387, v389, v390, &__src, 0);
                                if (__p)
                                {
                                  v1745 = __p;
                                  operator delete(__p);
                                }

                                if (v1753[0])
                                {
                                  v1753[1] = v1753[0];
                                  operator delete(v1753[0]);
                                }

                                goto LABEL_606;
                              }

LABEL_565:
                              __src = *v6;
                              v365 = **(v6 - 4 * (*(v6 + 5) & 0x7FFFFFF));
LABEL_568:
                              v1749 = v365;
                              v1750 = v359;
                              p_NullValue = &v1751;
                              v362 = 3;
                              goto LABEL_571;
                            }

                            if (v358 <= 2756)
                            {
                              if (v358 == 2729)
                              {
                                goto LABEL_565;
                              }

                              if (v358 == 2731)
                              {
                                goto LABEL_567;
                              }

                              __src = *v6;
                              v363 = v6 - 32 * (*(v6 + 5) & 0x7FFFFFF);
                              v1749 = **v363;
                              v364 = *(v363 + 4);
                            }

                            else
                            {
                              if (v358 <= 2804)
                              {
                                if (v358 == 2757)
                                {
                                  goto LABEL_565;
                                }

                                goto LABEL_567;
                              }

                              if (v358 == 2805)
                              {
LABEL_567:
                                v365 = **(v6 - 4 * (*(v6 + 5) & 0x7FFFFFF));
                                __src = v365;
                                goto LABEL_568;
                              }

                              v366 = v6 - 32 * (*(v6 + 5) & 0x7FFFFFF);
                              __src = **v366;
                              v1749 = **(v366 + 4);
                              v364 = *(v366 + 8);
                            }

                            v1750 = *v364;
                            v1751 = v359;
                            p_NullValue = &NullValue;
                            v362 = 4;
                            goto LABEL_571;
                          }

                          llvm::FixedVectorType::get((*v1760 + 1920), 2);
                          __break(1u);
LABEL_2920:
                          v74 = 1;
                          v7 = v3;
                        }

                        v3 = v7;
                        v517 = 0;
                        v518 = 1;
LABEL_1140:
                        v655 = 1;
                        goto LABEL_1141;
                      }
                    }

                    v549 = *(**(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF)) + 32);
                    v550 = *(*v1742 + 32);
                    __src = &v1750;
                    v1749 = 0x800000000;
                    llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v550);
                    v551 = __src;
                    if (v550)
                    {
                      v552 = 0;
                      v553 = vdupq_n_s64(v550 - 1);
                      v554 = xmmword_2750C1830;
                      v555 = xmmword_2750C1210;
                      v556 = (__src + 8);
                      v557 = vdupq_n_s64(4uLL);
                      do
                      {
                        v558 = vmovn_s64(vcgeq_u64(v553, v555));
                        if (vuzp1_s16(v558, *v553.i8).u8[0])
                        {
                          *(v556 - 2) = v552 % v549;
                        }

                        if (vuzp1_s16(v558, *&v553).i8[2])
                        {
                          *(v556 - 1) = (v552 + 1) % v549;
                        }

                        if (vuzp1_s16(*&v553, vmovn_s64(vcgeq_u64(v553, *&v554))).i32[1])
                        {
                          *v556 = (v552 + 2) % v549;
                          v556[1] = (v552 + 3) % v549;
                        }

                        v552 += 4;
                        v554 = vaddq_s64(v554, v557);
                        v555 = vaddq_s64(v555, v557);
                        v556 += 4;
                      }

                      while (((v550 + 3) & 0x1FFFFFFFCLL) != v552);
                    }

                    v559 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                    v1755 = 257;
                    v560 = llvm::IRBuilderBase::CreateShuffleVector(v1756, v559, v559, v551, v1749, v1753);
                    ShuffleVector = v560;
                    v561 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                    v562 = *(v561 + 8);
LABEL_1312:
                    ShuffleVector = EmitX86Select(v1756, v562, v560, *(v561 + 4));
LABEL_1313:
                    v725 = __src;
                    if (__src == &v1750)
                    {
                      goto LABEL_1380;
                    }

LABEL_1379:
                    free(v725);
                    goto LABEL_1380;
                  }

                  goto LABEL_2858;
                }
              }
            }
          }

          v86 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
          v87 = **(v86 + 4);
          v88 = *v86;
          LOWORD(NullValue) = 257;
          VectorSplat = llvm::IRBuilderBase::CreateCast(v1756, 38, v88, v87, &__src);
          goto LABEL_160;
        }

        if (v32 >= 0xC)
        {
          if (*v33 == 0x6F6D2E6134657373 && *(v33 + 2) == 779382390)
          {
            v122 = *(v4 + 40);
            v1753[0] = &v1754;
            v1753[1] = 0x100000000;
            v123 = llvm::ConstantInt::get(*v6 + 1992, 1, 0);
            llvm::ValueAsMetadata::get(v123, v124);
            llvm::SmallVectorTemplateBase<void *,true>::push_back(v1753, v125);
            v126 = llvm::MDTuple::getImpl(v6, v1753[0], LODWORD(v1753[1]), 0, 1);
            v127 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
            v128 = *v127;
            v129 = *(v127 + 4);
            v130 = llvm::PointerType::get(*(*v129 + 24), 0);
            __src = "cast";
            LOWORD(NullValue) = 259;
            v131 = llvm::IRBuilderBase::CreateCast(v1756, 49, v128, v130, &__src);
            __src = "extractelement";
            LOWORD(NullValue) = 259;
            v133 = llvm::IRBuilderBase::CreateExtractElement(v1756, v129, &__src, v132);
            v134 = v131;
            v135 = 256;
            goto LABEL_224;
          }
        }

        else if (v32 < 0xA)
        {
          v75 = 1;
          goto LABEL_199;
        }

        if (*v33 != 0x6E766F6D2E787661 || *(v33 + 4) != 11892)
        {
          if (v32 < 0xF)
          {
            if (v32 == 14)
            {
              if (*v33 == 0x6F74732E32657373 && *(v33 + 6) == 0x71642E6C65726F74)
              {
                v324 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                v245 = *v324;
                v325 = *(v324 + 4);
                llvm::FixedVectorType::get((*v6 + 2016), 2);
                __src = "cast";
                LOWORD(NullValue) = 259;
                v327 = llvm::IRBuilderBase::CreateCast(v1756, 49, v325, v326, &__src);
                LOWORD(NullValue) = 257;
                v246 = llvm::IRBuilderBase::CreateExtractElement(v1756, v327, &__src, v328);
                v247 = llvm::PointerType::get(*v246, 0);
                __src = "cast";
                LOWORD(NullValue) = 259;
                goto LABEL_336;
              }

              v75 = 0;
              v83 = v33;
              goto LABEL_202;
            }

            goto LABEL_198;
          }

          if (*v33 != 0x732E323135787661 || *(v33 + 7) != 0x2E746E65726F7473)
          {
LABEL_198:
            v75 = 0;
LABEL_199:
            v83 = v33;
            if (v32 < 0xB)
            {
              v157 = 1;
              ShuffleVector = 0;
              v158 = 1;
              v159 = 1;
              v160 = 1;
              if (v32 < 9)
              {
                goto LABEL_422;
              }

              goto LABEL_213;
            }

LABEL_202:
            if (*v33 == 0x726F74732E657373 && *(v33 + 3) == 0x2E7565726F74732ELL)
            {
              goto LABEL_335;
            }

            if (v32 < 0xC)
            {
              if (*v33 != 0x726F74732E787661 || *(v33 + 3) != 0x2E7565726F74732ELL)
              {
                goto LABEL_211;
              }

              goto LABEL_335;
            }

            v233 = *v33 == 0x6F74732E32657373 && *(v33 + 2) == 779445618;
            if (v233 || (*v33 == 0x726F74732E787661 ? (v234 = *(v33 + 3) == 0x2E7565726F74732ELL) : (v234 = 0), v234))
            {
LABEL_335:
              v244 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
              v245 = *v244;
              v246 = *(v244 + 4);
              v247 = llvm::PointerType::get(*v246, 0);
              __src = "cast";
              LOWORD(NullValue) = 259;
LABEL_336:
              v248 = llvm::IRBuilderBase::CreateCast(v1756, 49, v245, v247, &__src);
              llvm::IRBuilderBase::CreateAlignedStore(v1756, v246, v248, 256, 0);
              goto LABEL_899;
            }

            if (v32 == 20)
            {
              if (*v83 == 0x6D2E323135787661 && v83[1] == 0x726F74732E6B7361 && *(v83 + 4) == 1936928357)
              {
                v237 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[8];
                v238 = llvm::ConstantInt::get(*v1760 + 1944, 1, 0);
                LOWORD(NullValue) = 257;
                v239 = llvm::IRBuilderBase::CreateAnd(v1756, v237, v238, &__src);
                v240 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                v241 = *v240;
                v242 = *(v240 + 4);
                v243 = 0;
                goto LABEL_733;
              }
            }

            else if (v32 < 0x11)
            {
LABEL_211:
              v158 = 1;
LABEL_212:
              v157 = 0;
              ShuffleVector = 0;
LABEL_213:
              v163 = *v33 == 0x6D63702E32657373 && *(v33 + 8) == 112;
              if (v163 || (*v33 == 0x6D63702E32787661 ? (v164 = *(v33 + 8) == 112) : (v164 = 0), v164))
              {
                if (*(v33 + 9) == 101)
                {
                  v212 = 32;
                }

                else
                {
                  v212 = 38;
                }

                v213 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                v214 = *v213;
                v215 = *(v213 + 4);
                LOWORD(NullValue) = 257;
                v216 = llvm::IRBuilderBase::CreateICmp(v1756, v212, v214, v215, &__src);
                ShuffleVector = v216;
                v217 = *v1742;
                LOWORD(NullValue) = 257;
                p_src = &__src;
                v219 = 40;
                goto LABEL_289;
              }

              if (v158)
              {
                v159 = 0;
                v160 = 1;
              }

              else
              {
                if (*v33 == 0x622E323135787661 && v33[1] == 0x7473616364616F72 && *(v33 + 16) == 109)
                {
                  v453 = *v6;
                  if (*(**(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF)) + 8) == 2061)
                  {
                    v454 = 2016;
                  }

                  else
                  {
                    v454 = 1992;
                  }

                  v457 = llvm::Type::getPrimitiveSizeInBits(*v1742);
                  if (v455)
                  {
                  }

                  v460 = llvm::Type::getPrimitiveSizeInBits((v453 + v454));
                  if (v458)
                  {
                  }

                  v461 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                  LOWORD(NullValue) = 257;
                  ShuffleVector = llvm::IRBuilderBase::CreateCast(v1756, 39, v461, (v453 + v454), &__src);
                  LOWORD(NullValue) = 257;
                  Select = llvm::IRBuilderBase::CreateVectorSplat(v1756, (v457 / v460), ShuffleVector, &__src);
                  goto LABEL_413;
                }

                v159 = 0;
                v160 = 0;
              }

LABEL_422:
              if (v32 == 12)
              {
                if (*v83 != 0x7271732E32657373 || *(v83 + 2) != 1685270132)
                {
                  goto LABEL_428;
                }
              }

              else if (v32 != 11 || (*v83 == 0x747271732E657373 ? (v296 = *(v83 + 3) == 0x73732E747271732ELL) : (v296 = 0), !v296))
              {
LABEL_428:
                if ((v75 & 1) == 0 && (*v33 == 0x747271732E787661 ? (v297 = *(v33 + 4) == 28718) : (v297 = 0), v297) || (v157 & 1) == 0 && (*v33 == 0x7271732E32657373 ? (v298 = *(v33 + 3) == 0x702E747271732E32) : (v298 = 0), v298) || (v75 & 1) == 0 && (*v33 == 0x747271732E657373 ? (v299 = *(v33 + 4) == 28718) : (v299 = 0), v299))
                {
                  v302 = *(v4 + 40);
                  v1753[0] = *v1742;
                  v303 = llvm::Intrinsic::getDeclaration(v302, 283, v1753, 1);
                  v304 = v303;
                  if (v303)
                  {
                    v305 = *(v303 + 24);
                  }

                  else
                  {
                    v305 = 0;
                  }

                  __p = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                  v351 = 257;
                  goto LABEL_538;
                }

                if (v32 >= 0x12)
                {
                  if (*v33 == 0x6D2E323135787661 && v33[1] == 0x747271732E6B7361 && *(v33 + 8) == 28718)
                  {
                    if (((llvm::CallBase::arg_end(v1742) - (v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) != 0x80)
                    {
                      goto LABEL_706;
                    }

                    v462 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                    v463 = *(v462 + 12);
                    if (*(v463 + 16) != 16)
                    {
                      goto LABEL_792;
                    }

                    v464 = (v463 + 24);
                    if (*(v463 + 32) >= 0x41u)
                    {
                      v464 = *v464;
                    }

                    if (*v464 == 4)
                    {
LABEL_706:
                      v465 = *(v4 + 40);
                      v1753[0] = *v1742;
                      v466 = llvm::Intrinsic::getDeclaration(v465, 283, v1753, 1);
                      v467 = v466;
                      if (v466)
                      {
                        v468 = *(v466 + 24);
                      }

                      else
                      {
                        v468 = 0;
                      }

                      __p = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                      LOWORD(NullValue) = 257;
                      v563 = &__p;
                      v564 = 1;
                    }

                    else
                    {
LABEL_792:
                      if (*(v1737 + 18) == 115)
                      {
                        v519 = 10892;
                      }

                      else
                      {
                        v519 = 10891;
                      }

                      v1753[0] = *v462;
                      v1753[1] = v463;
                      v520 = llvm::Intrinsic::getDeclaration(*(*(*(v1742 + 5) + 56) + 40), v519, 0, 0);
                      v467 = v520;
                      if (v520)
                      {
                        v468 = *(v520 + 24);
                      }

                      else
                      {
                        v468 = 0;
                      }

                      LOWORD(NullValue) = 257;
                      v563 = v1753;
                      v564 = 2;
                    }

                    VectorSplat = llvm::IRBuilderBase::CreateCall(v1756, v468, v467, v563, v564, &__src, 0);
                    goto LABEL_160;
                  }
                }

                else if (v32 < 0xD)
                {
                  v300 = 1;
                  v301 = 1;
                  goto LABEL_477;
                }

                if (*v33 == 0x702E323135787661 && *(v33 + 5) == 0x6D74736574702E32)
                {
                  goto LABEL_645;
                }

                v300 = v32 < 0xE;
                if (v32 < 0xE)
                {
LABEL_472:
                  v301 = 1;
                  goto LABEL_473;
                }

                if (*v33 == 0x702E323135787661 && *(v33 + 6) == 0x6D6E74736574702ELL)
                {
LABEL_645:
                  v418 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                  v419 = *v418;
                  v420 = *(v418 + 4);
                  v421 = *(v418 + 8);
                  LOWORD(NullValue) = 257;
                  ShuffleVector = llvm::IRBuilderBase::CreateAnd(v1756, v419, v420, &__src);
                  v425 = llvm::Constant::getNullValue(*v419, v422, v423, v424);
                  if (v1738 >= 0xD)
                  {
                    v473 = bswap64(*v1737);
                    v474 = 0x6176783531322E70;
                    if (v473 == 0x6176783531322E70 && (v474 = 0x322E70746573746DLL, v473 = bswap64(*(v1737 + 5)), v473 == 0x322E70746573746DLL))
                    {
                      v475 = 0;
                    }

                    else if (v473 < v474)
                    {
                      v475 = -1;
                    }

                    else
                    {
                      v475 = 1;
                    }

                    if (v475)
                    {
                      v426 = 32;
                    }

                    else
                    {
                      v426 = 33;
                    }
                  }

                  else
                  {
                    v426 = 32;
                  }

                  LOWORD(NullValue) = 257;
                  v483 = llvm::IRBuilderBase::CreateICmp(v1756, v426, ShuffleVector, v425, &__src);
                  ShuffleVector = v483;
                  v485 = v421;
                  goto LABEL_741;
                }

                if (v32 < 0x16)
                {
                  goto LABEL_472;
                }

                if (*v33 != 0x6D2E323135787661 || v33[1] != 0x6F7262702E6B7361 || *(v33 + 14) != 0x7473616364616F72)
                {
                  v301 = 0;
LABEL_473:
                  if (*v33 == 0x6B2E323135787661 && *(v33 + 5) == 0x6B63706E756B2E32)
                  {
                    v486 = *v1742;
                    if ((*(*v1742 + 8) & 0xFE) == 0x12)
                    {
                      v486 = **(v486 + 2);
                    }

                    v487 = llvm::Type::getPrimitiveSizeInBits(v486);
                    v488 = getX86MaskVec(v1756, *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF)), v487);
                    v489 = getX86MaskVec(v1756, (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4], v487);
                    if (v487)
                    {
                      v490 = 0;
                      v491 = v487;
                      v492 = vdupq_n_s64(v487 - 1);
                      v493 = xmmword_2750C1830;
                      v494 = xmmword_2750C1210;
                      v495 = &v1749;
                      v496 = vdupq_n_s64(4uLL);
                      do
                      {
                        v497 = vmovn_s64(vcgeq_u64(v492, v494));
                        if (vuzp1_s16(v497, *v492.i8).u8[0])
                        {
                          *(v495 - 2) = v490;
                        }

                        if (vuzp1_s16(v497, *&v492).i8[2])
                        {
                          *(v495 - 1) = v490 + 1;
                        }

                        if (vuzp1_s16(*&v492, vmovn_s64(vcgeq_u64(v492, *&v493))).i32[1])
                        {
                          *v495 = v490 + 2;
                          *(v495 + 1) = v490 + 3;
                        }

                        v490 += 4;
                        v493 = vaddq_s64(v493, v496);
                        v494 = vaddq_s64(v494, v496);
                        v495 += 2;
                      }

                      while (((v487 + 3) & 0x1FFFFFFFCLL) != v490);
                    }

                    else
                    {
                      v491 = 0;
                    }

                    v569 = (v487 >> 1);
                    v1755 = 257;
                    v570 = llvm::IRBuilderBase::CreateShuffleVector(v1756, v488, v488, &__src, v569, v1753);
                    v1755 = 257;
                    v571 = llvm::IRBuilderBase::CreateShuffleVector(v1756, v489, v489, &__src, v569, v1753);
                    v1755 = 257;
                    v216 = llvm::IRBuilderBase::CreateShuffleVector(v1756, v571, v570, &__src, v491, v1753);
                    ShuffleVector = v216;
                    v217 = *v1742;
                    v1755 = 257;
                    p_src = v1753;
                    goto LABEL_1270;
                  }

LABEL_477:
                  if (v32 > 12)
                  {
                    switch(v32)
                    {
                      case 0x11uLL:
                        v527 = *v83 == 0x6B2E323135787661 && v83[1] == 0x2E7A74736574726FLL && *(v83 + 16) == 119;
                        if (v527 || (*v83 == 0x6B2E323135787661 ? (v528 = v83[1] == 0x2E6374736574726FLL) : (v528 = 0), v528 ? (v529 = *(v83 + 16) == 119) : (v529 = 0), v529))
                        {
                          v572 = getX86MaskVec(v1756, *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF)), 0x10u);
                          v573 = getX86MaskVec(v1756, (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4], 0x10u);
                          LOWORD(NullValue) = 257;
                          ShuffleVector = llvm::IRBuilderBase::CreateOr(v1756, v572, v573, &__src);
                          v574 = *v1760;
                          LOWORD(NullValue) = 257;
                          ShuffleVector = llvm::IRBuilderBase::CreateCast(v1756, 49, ShuffleVector, (v574 + 1968), &__src);
                          v578 = (*v1760 + 1968);
                          if (*(v1737 + 14) == 99)
                          {
                            AllOnesValue = llvm::Constant::getAllOnesValue(v578, v575);
                          }

                          else
                          {
                            AllOnesValue = llvm::Constant::getNullValue(v578, v575, v576, v577);
                          }

                          LOWORD(NullValue) = 257;
                          v216 = llvm::IRBuilderBase::CreateICmp(v1756, 32, ShuffleVector, AllOnesValue, &__src);
                          ShuffleVector = v216;
                          v696 = *v1760;
                          LOWORD(NullValue) = 257;
                          v217 = (v696 + 1992);
                          p_src = &__src;
                          v219 = 39;
                          goto LABEL_289;
                        }

                        if (*v33 != 0x6D2E323135787661 || v33[1] != 0x706D63702E6B7361)
                        {
                          goto LABEL_920;
                        }

                        goto LABEL_1251;
                      case 0xEuLL:
                        if (*v83 == 0x6B2E323135787661 && *(v83 + 6) == 0x772E6E646E616B2ELL)
                        {
                          v646 = getX86MaskVec(v1756, *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF)), 0x10u);
                          v647 = getX86MaskVec(v1756, (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4], 0x10u);
                          LOWORD(NullValue) = 257;
                          v648 = llvm::IRBuilderBase::CreateNot(v1756, v646, &__src);
                          LOWORD(NullValue) = 257;
                          v649 = llvm::IRBuilderBase::CreateAnd(v1756, v648, v647, &__src);
                        }

                        else
                        {
                          if (*v83 != 0x6B2E323135787661 || *(v83 + 6) != 0x772E726F6E786B2ELL)
                          {
                            goto LABEL_867;
                          }

                          v702 = getX86MaskVec(v1756, *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF)), 0x10u);
                          v703 = getX86MaskVec(v1756, (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4], 0x10u);
                          LOWORD(NullValue) = 257;
                          v704 = llvm::IRBuilderBase::CreateNot(v1756, v702, &__src);
                          LOWORD(NullValue) = 257;
                          v649 = llvm::IRBuilderBase::CreateXor(v1756, v704, v703, &__src);
                        }

                        v216 = v649;
                        ShuffleVector = v649;
                        v217 = *v1742;
                        LOWORD(NullValue) = 257;
                        goto LABEL_1269;
                      case 0xDuLL:
                        if (*v83 == 0x6B2E323135787661 && *(v83 + 5) == 0x772E646E616B2E32)
                        {
                          v644 = getX86MaskVec(v1756, *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF)), 0x10u);
                          v645 = getX86MaskVec(v1756, (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4], 0x10u);
                          LOWORD(NullValue) = 257;
                          v319 = llvm::IRBuilderBase::CreateAnd(v1756, v644, v645, &__src);
                        }

                        else
                        {
                          if (*v83 != 0x6B2E323135787661 || *(v83 + 5) != 0x772E726F786B2E32)
                          {
                            if (*v83 != 0x6B2E323135787661 || *(v83 + 5) != 0x772E746F6E6B2E32)
                            {
                              goto LABEL_867;
                            }

                            v452 = getX86MaskVec(v1756, *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF)), 0x10u);
                            LOWORD(NullValue) = 257;
                            v216 = llvm::IRBuilderBase::CreateNot(v1756, v452, &__src);
                            ShuffleVector = v216;
                            v217 = *v1742;
                            LOWORD(NullValue) = 257;
                            goto LABEL_1269;
                          }

                          v700 = getX86MaskVec(v1756, *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF)), 0x10u);
                          v701 = getX86MaskVec(v1756, (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4], 0x10u);
                          LOWORD(NullValue) = 257;
                          v319 = llvm::IRBuilderBase::CreateXor(v1756, v700, v701, &__src);
                        }

                        goto LABEL_1266;
                    }

LABEL_837:
                    if (v32 < 0x10)
                    {
                      v531 = 1;
                      v532 = 1;
                      if (v32 < 0xC)
                      {
                        goto LABEL_940;
                      }

                      goto LABEL_922;
                    }

                    if (*v33 != 0x6D2E323135787661 || v33[1] != 0x706D63702E6B7361)
                    {
                      if (v32 >= 0x19)
                      {
                        if (*v33 == 0x6D2E323135787661 && v33[1] == 0x687370762E6B7361 && v33[2] == 0x626D717469626675 && *(v33 + 24) == 46)
                        {
                          v751 = llvm::Type::getPrimitiveSizeInBits(**(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF)));
                          if (v749)
                          {
                          }

                          if (v751 == 128)
                          {
                            v734 = 10956;
                          }

                          else if (v751 == 256)
                          {
                            v734 = 10957;
                          }

                          else
                          {
                            v734 = 10958;
                          }

                          goto LABEL_1440;
                        }
                      }

                      else if (v32 < 0x15)
                      {
LABEL_920:
                        v531 = 0;
                        goto LABEL_921;
                      }

                      if (*v33 != 0x6D2E323135787661 || v33[1] != 0x6C6370662E6B7361 || *(v33 + 13) != 0x702E7373616C6370)
                      {
                        v531 = 0;
                        v532 = 0;
                        goto LABEL_922;
                      }

                      v729 = **(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                      v732 = llvm::Type::getPrimitiveSizeInBits(v729);
                      if (v730)
                      {
                      }

                      if ((*(v729 + 8) & 0xFE) == 0x12)
                      {
                        v729 = **(v729 + 16);
                      }

                      v733 = llvm::Type::getPrimitiveSizeInBits(v729);
                      if (v732 == 128 && v733 == 32)
                      {
                        v734 = 10419;
                      }

                      else if (v732 == 256 && v733 == 32)
                      {
                        v734 = 10420;
                      }

                      else if (v732 == 512 && v733 == 32)
                      {
                        v734 = 10421;
                      }

                      else if (v732 == 128 && v733 == 64)
                      {
                        v734 = 10416;
                      }

                      else if (v733 == 64 && v732 == 256)
                      {
                        v734 = 10417;
                      }

                      else
                      {
                        v734 = 10418;
                      }

LABEL_1440:
                      v776 = llvm::Intrinsic::getDeclaration(*(v4 + 40), v734, 0, 0);
                      if (v776)
                      {
                        v777 = *(v776 + 24);
                      }

                      else
                      {
                        v777 = 0;
                      }

                      v778 = (v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF));
                      v1753[0] = *v778;
                      v1753[1] = v778[4];
                      LOWORD(NullValue) = 257;
                      v483 = llvm::IRBuilderBase::CreateCall(v1756, v777, v776, v1753, 2, &__src, 0);
                      ShuffleVector = v483;
                      v485 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[8];
                      goto LABEL_741;
                    }

LABEL_1251:
                    v694 = v1742;
                    if (*(v33 + 16) == 101)
                    {
                      v695 = 0;
                    }

                    else
                    {
                      v695 = 6;
                    }

                    goto LABEL_1274;
                  }

                  switch(v32)
                  {
                    case 0xAuLL:
                      if ((*v83 != 0x2E6464612E657373 || *(v83 + 4) != 29555) && (*v83 != 0x2E6275732E657373 || *(v83 + 4) != 29555) && (*v83 != 0x2E6C756D2E657373 || *(v83 + 4) != 29555) && (*v83 != 0x2E7669642E657373 || *(v83 + 4) != 29555))
                      {
                        goto LABEL_856;
                      }

                      break;
                    case 0xBuLL:
                      if ((*v83 != 0x6464612E32657373 || *(v83 + 3) != 0x64732E6464612E32) && (*v83 != 0x6275732E32657373 || *(v83 + 3) != 0x64732E6275732E32) && (*v83 != 0x6C756D2E32657373 || *(v83 + 3) != 0x64732E6C756D2E32) && (*v83 != 0x7669642E32657373 || *(v83 + 3) != 0x64732E7669642E32))
                      {
LABEL_856:
                        v532 = 1;
LABEL_927:
                        v531 = 1;
LABEL_940:
                        if (v160)
                        {
LABEL_941:
                          if (v32 == 16 && (*v83 == 0x61702E3365737373 ? (v592 = v83[1] == 0x3832312E622E7362) : (v592 = 0), v592 || (*v83 == 0x61702E3365737373 ? (v593 = v83[1] == 0x3832312E772E7362) : (v593 = 0), v593 || ((v9 = v83[1], *v83 == 0x61702E3365737373) ? (v594 = v9 == 0x3832312E642E7362) : (v594 = 0), v594))) || (v159 & 1) == 0 && ((LODWORD(v9) = 846755425, *v33 == 0x6261702E32787661) ? (v595 = *(v33 + 8) == 115) : (v595 = 0), v595) || (v531 & 1) == 0 && ((LODWORD(v9) = 897087073, *v33 == 0x6D2E323135787661) ? (v596 = v33[1] == 0x736261702E6B7361) : (v596 = 0), v596))
                          {
                            Select = upgradeAbs(v1756, v1742);
                            goto LABEL_413;
                          }

                          if (v32 == 12 && (*v83 == 0x6D702E3134657373 ? (v597 = *(v83 + 2) == 1651734625) : (v597 = 0), v597 || ((v11 = 0x616D702E32657373, *v83 == 0x616D702E32657373) ? (v598 = *(v83 + 2) == 1999532920) : (v598 = 0), v598 || ((v9 = *(v83 + 2), v10 = 1685289057, *v83 == 0x6D702E3134657373) ? (v599 = v9 == 1685289057) : (v599 = 0), v599))) || (v75 & 1) == 0 && ((LODWORD(v9) = 846755425, *v33 == 0x616D702E32787661) ? (v600 = *(v33 + 4) == 29560) : (v600 = 0), v600) || (v160 & 1) == 0 && ((LODWORD(v9) = *(v33 + 16), v10 = 0x6D2E323135787661, *v33 == 0x6D2E323135787661) ? (v601 = v33[1] == 0x78616D702E6B7361) : (v601 = 0), v601 ? (v602 = v9 == 115) : (v602 = 0), v602))
                          {
                            Select = UpgradeX86BinaryIntrinsics(v1756, v1742, 277);
                            goto LABEL_413;
                          }

                          v3 = v1757;
                          if (v32 == 12 && (*v83 == 0x616D702E32657373 ? (v603 = *(v83 + 2) == 1647211896) : (v603 = 0), v603 || ((v10 = 2004187233, *v83 == 0x6D702E3134657373) ? (v604 = *(v83 + 2) == 2004187233) : (v604 = 0), v604 || ((LODWORD(v9) = *(v83 + 2), *v83 == 0x6D702E3134657373) ? (v605 = v9 == 1685420129) : (v605 = 0), v605))) || (v75 & 1) == 0 && ((LODWORD(v9) = 846755425, *v33 == 0x616D702E32787661) ? (v606 = *(v33 + 4) == 30072) : (v606 = 0), v606) || (v160 & 1) == 0 && ((LODWORD(v9) = *(v33 + 16), v10 = 0x6D2E323135787661, *v33 == 0x6D2E323135787661) ? (v607 = v33[1] == 0x78616D702E6B7361) : (v607 = 0), v607 ? (v608 = v9 == 117) : (v608 = 0), v608))
                          {
                            v692 = v1742;
                            v693 = 308;
                            goto LABEL_1606;
                          }

                          if (v32 == 12 && (*v83 == 0x6D702E3134657373 ? (v609 = *(v83 + 2) == 1651732073) : (v609 = 0), v609 || ((v10 = 1999532910, v11 = 0x696D702E32657373, *v83 == 0x696D702E32657373) ? (v610 = *(v83 + 2) == 1999532910) : (v610 = 0), v610 || ((LODWORD(v9) = *(v83 + 2), *v83 == 0x6D702E3134657373) ? (v611 = v9 == 1685286505) : (v611 = 0), v611))) || (v75 & 1) == 0 && ((LODWORD(v9) = 846755425, *v33 == 0x696D702E32787661) ? (v612 = *(v33 + 4) == 29550) : (v612 = 0), v612) || (v160 & 1) == 0 && ((LODWORD(v9) = *(v33 + 16), v10 = 0x6D2E323135787661, *v33 == 0x6D2E323135787661) ? (v613 = v33[1] == 0x6E696D702E6B7361) : (v613 = 0), v613 ? (v614 = v9 == 115) : (v614 = 0), v614))
                          {
                            v692 = v1742;
                            v693 = 278;
                            goto LABEL_1606;
                          }

                          if (v32 == 12 && (*v83 == 0x696D702E32657373 ? (v615 = *(v83 + 2) == 1647211886) : (v615 = 0), v615 || (*v83 == 0x6D702E3134657373 ? (v616 = *(v83 + 2) == 2004184681) : (v616 = 0), v616 || ((v9 = *(v83 + 2), v10 = 1685417577, *v83 == 0x6D702E3134657373) ? (v617 = v9 == 1685417577) : (v617 = 0), v617))) || (v75 & 1) == 0 && ((LODWORD(v9) = 846755425, *v33 == 0x696D702E32787661) ? (v618 = *(v33 + 4) == 30062) : (v618 = 0), v618) || (v160 & 1) == 0 && ((LODWORD(v9) = *(v33 + 16), *v33 == 0x6D2E323135787661) ? (v619 = v33[1] == 0x6E696D702E6B7361) : (v619 = 0), v619 ? (v620 = v9 == 117) : (v620 = 0), v620))
                          {
                            v692 = v1742;
                            v693 = 309;
                            goto LABEL_1606;
                          }

                          if (v32 == 19)
                          {
                            v9 = *(v83 + 11);
                            v10 = 0x702E323135787661;
                            v623 = *v83 == 0x702E323135787661 && v83[1] == 0x2E71642E756C756DLL;
                            v621 = 0x3231352E71642E75;
                          }

                          else
                          {
                            if (v32 != 13)
                            {
LABEL_1452:
                              if ((v532 & 1) != 0 || ((v9 = *(v33 + 13), *v33 == 0x6D2E323135787661) ? (v780 = v33[1] == 0x6C756D702E6B7361) : (v780 = 0), v780 ? (v781 = v9 == 0x2E71642E756C756DLL) : (v781 = 0), !v781))
                              {
                                if (v32 == 18)
                                {
                                  LODWORD(v9) = 778859885;
                                  v10 = *(v83 + 8);
                                  v11 = 0x702E323135787661;
                                  if (*v83 != 0x702E323135787661 || v83[1] != 0x352E71642E6C756DLL || v10 != 12849)
                                  {
                                    goto LABEL_2133;
                                  }
                                }

                                else
                                {
                                  if (v32 == 12)
                                  {
                                    if ((*v83 != 0x6D702E3134657373 || *(v83 + 2) != 1902406773) && (*v83 != 0x756D702E32787661 || *(v83 + 2) != 1902390892))
                                    {
                                      LODWORD(v9) = 1936929385;
                                      v10 = 0x737476632E657373;
                                      if (*v83 != 0x737476632E657373 || *(v83 + 2) != 1936929385)
                                      {
                                        goto LABEL_2133;
                                      }

                                      goto LABEL_2126;
                                    }

                                    goto LABEL_1521;
                                  }

                                  if (v32 < 0x14 || ((LODWORD(v9) = *(v33 + 4), *v33 == 0x6D2E323135787661) ? (v825 = v33[1] == 0x6C756D702E6B7361) : (v825 = 0), v825 ? (v826 = v9 == 779183150) : (v826 = 0), !v826))
                                  {
                                    if (v32 > 14)
                                    {
                                      switch(v32)
                                      {
                                        case 0xFuLL:
                                          v827 = *(v83 + 7);
                                          LODWORD(v9) = 845509491;
                                          v828 = *v83 == 0x7476632E32657373;
                                          v829 = 0x6473323436697374;
LABEL_2102:
                                          if (!v828 || v827 != v829)
                                          {
                                            break;
                                          }

                                          goto LABEL_2126;
                                        case 0x10uLL:
                                          LODWORD(v9) = 897087073;
                                          if (*v83 != 0x632E323135787661 || v83[1] != 0x6473326973757476)
                                          {
                                            break;
                                          }

                                          v1200 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4];
                                          v1201 = *(*v1742 + 24);
                                          LOWORD(NullValue) = 257;
                                          UIToFP = llvm::IRBuilderBase::CreateUIToFP(v1756, v1200, v1201, &__src);
LABEL_2127:
                                          v1046 = UIToFP;
                                          ShuffleVector = UIToFP;
                                          v1047 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                                          LOWORD(NullValue) = 257;
                                          goto LABEL_2128;
                                        case 0x11uLL:
                                          v885 = *v83 == 0x647476632E787661 && v83[1] == 0x35322E64702E3271;
                                          if (v885 && *(v83 + 16) == 54)
                                          {
                                            goto LABEL_2401;
                                          }

                                          v9 = *v83;
                                          v10 = v83[1];
                                          v11 = *(v83 + 16);
                                          v887 = *v83 == 0x647476632E787661 && v10 == 0x35322E73702E3271;
                                          if (v887 && v11 == 54)
                                          {
                                            goto LABEL_2401;
                                          }

                                          break;
                                      }
                                    }

                                    else if (v32 == 13)
                                    {
                                      if (*v83 == 0x7476632E32657373 && *(v83 + 5) == 0x6473326973747663)
                                      {
LABEL_2126:
                                        v1042 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4];
                                        v1043 = *(*v1742 + 24);
                                        LOWORD(NullValue) = 257;
                                        UIToFP = llvm::IRBuilderBase::CreateSIToFP(v1756, v1042, v1043, &__src);
                                        goto LABEL_2127;
                                      }

                                      if (*v83 == 0x7476632E32657373 && *(v83 + 5) == 0x6473327373747663)
                                      {
                                        v1266 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4];
                                        LOWORD(NullValue) = 257;
                                        ShuffleVector = llvm::IRBuilderBase::CreateExtractElement(v1756, v1266, &__src, v10);
                                        v1267 = *(*v1742 + 24);
                                        LOWORD(NullValue) = 257;
                                        UIToFP = llvm::IRBuilderBase::CreateFPExt(v1756, ShuffleVector, v1267, &__src);
                                        goto LABEL_2127;
                                      }

                                      if (*v83 == 0x7476632E32657373 && *(v83 + 5) == 0x6470327164747663)
                                      {
                                        goto LABEL_2401;
                                      }

                                      v9 = *(v83 + 5);
                                      if (*v83 == 0x7476632E32657373 && v9 == 0x7370327164747663)
                                      {
                                        goto LABEL_2401;
                                      }
                                    }

                                    else if (v32 == 14)
                                    {
                                      v827 = *(v83 + 6);
                                      LODWORD(v9) = 778400627;
                                      v828 = *v83 == 0x737476632E657373;
                                      v829 = 0x7373323436697374;
                                      goto LABEL_2102;
                                    }

LABEL_2133:
                                    if ((v532 & 1) == 0)
                                    {
                                      v9 = v33[1];
                                      v10 = *(v33 + 13);
                                      v1049 = *v33 == 0x6D2E323135787661 && v9 == 0x647476632E6B7361;
                                      if (v1049 && v10 == 0x2E64703271647476)
                                      {
                                        goto LABEL_2401;
                                      }
                                    }

                                    if ((v301 & 1) == 0)
                                    {
                                      v9 = *v33;
                                      v10 = v33[1];
                                      v11 = *(v33 + 14);
                                      v12 = 0x2E64703271647574;
                                      v1051 = *v33 == 0x6D2E323135787661 && v10 == 0x757476632E6B7361;
                                      if (v1051 && v11 == 0x2E64703271647574)
                                      {
                                        goto LABEL_2401;
                                      }
                                    }

                                    if ((v532 & 1) == 0)
                                    {
                                      v10 = v33[1];
                                      v11 = *(v33 + 13);
                                      v1053 = *v33 == 0x6D2E323135787661 && v10 == 0x647476632E6B7361;
                                      LODWORD(v9) = 1902408822;
                                      if (v1053 && v11 == 0x2E73703271647476)
                                      {
                                        goto LABEL_2401;
                                      }
                                    }

                                    if ((v301 & 1) == 0)
                                    {
                                      v9 = *v33;
                                      v10 = v33[1];
                                      v11 = *(v33 + 14);
                                      v12 = 0x2E73703271647574;
                                      v1055 = *v33 == 0x6D2E323135787661 && v10 == 0x757476632E6B7361;
                                      if (v1055 && v11 == 0x2E73703271647574)
                                      {
                                        goto LABEL_2401;
                                      }
                                    }

                                    if ((v532 & 1) == 0)
                                    {
                                      v10 = v33[1];
                                      v11 = *(v33 + 13);
                                      LODWORD(v9) = 778793825;
                                      v1057 = *v33 == 0x6D2E323135787661 && v10 == 0x717476632E6B7361;
                                      if (v1057 && v11 == 0x2E64703271717476)
                                      {
                                        goto LABEL_2401;
                                      }
                                    }

                                    if ((v301 & 1) == 0)
                                    {
                                      v9 = v33[1];
                                      v10 = *(v33 + 14);
                                      v1059 = *v33 == 0x6D2E323135787661 && v9 == 0x757476632E6B7361;
                                      if (v1059 && v10 == 0x2E64703271717574)
                                      {
                                        goto LABEL_2401;
                                      }
                                    }

                                    if (v32 > 23)
                                    {
                                      if (v32 == 25)
                                      {
                                        if (*v83 == 0x6D2E323135787661 && v83[1] == 0x757476632E6B7361 && v83[2] == 0x35322E7370327171 && *(v83 + 24) == 54)
                                        {
                                          goto LABEL_2401;
                                        }

                                        v9 = v83[1];
                                        v10 = v83[2];
                                        v11 = *(v83 + 24);
                                        v1100 = *v83 == 0x6D2E323135787661 && v9 == 0x757476632E6B7361;
                                        v1101 = v1100 && v10 == 0x31352E7370327171;
                                        if (v1101 && v11 == 50)
                                        {
                                          goto LABEL_2401;
                                        }
                                      }

                                      else if (v32 == 24)
                                      {
                                        v1063 = *v83 == 0x6D2E323135787661 && v83[1] == 0x717476632E6B7361;
                                        if (v1063 && v83[2] == 0x3635322E73703271)
                                        {
                                          goto LABEL_2401;
                                        }

                                        v1065 = *v83 == 0x6D2E323135787661 && v83[1] == 0x717476632E6B7361;
                                        if (v1065 && v83[2] == 0x3231352E73703271)
                                        {
                                          goto LABEL_2401;
                                        }

                                        v1067 = *v83 == 0x6D2E323135787661 && v83[1] == 0x707476632E6B7361;
                                        if (v1067 && v83[2] == 0x3832312E64703273)
                                        {
                                          goto LABEL_2401;
                                        }

                                        v9 = v83[1];
                                        v10 = v83[2];
                                        v1069 = *v83 == 0x6D2E323135787661 && v9 == 0x707476632E6B7361;
                                        if (v1069 && v10 == 0x3635322E64703273)
                                        {
                                          goto LABEL_2401;
                                        }
                                      }
                                    }

                                    else
                                    {
                                      if (v32 != 13)
                                      {
                                        if (v32 != 18)
                                        {
                                          goto LABEL_2278;
                                        }

                                        LODWORD(v9) = *(v83 + 8);
                                        v10 = 0x2E7476632E787661;
                                        v1061 = *v83 == 0x2E7476632E787661 && v83[1] == 0x322E64702E327370;
                                        if (!v1061 || v9 != 13877)
                                        {
                                          goto LABEL_2278;
                                        }

LABEL_2401:
                                        v1138 = *v1742;
                                        v1139 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                                        ShuffleVector = v1139;
                                        v1140 = *v1139;
                                        if (*(v1138 + 8) < *(*v1139 + 32))
                                        {
                                          v1753[0] = 0x100000000;
                                          LOWORD(NullValue) = 257;
                                          ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(v1756, v1139, v1139, v1753, 2, &__src);
                                        }

                                        v1141 = *(*(v1140 + 24) + 8);
                                        v1142 = llvm::StringRef::find(&v1737, "cvtu", 4uLL, 0);
                                        if (v1141 != 2)
                                        {
                                          v1146 = v1142;
                                          v1147 = v1742;
                                          if (((llvm::CallBase::arg_end(v1742) - (v1147 - 32 * (*(v1147 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) != 0x80)
                                          {
                                            goto LABEL_2411;
                                          }

                                          v1148 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[12];
                                          if (*(v1148 + 16) != 16)
                                          {
                                            goto LABEL_2413;
                                          }

                                          v1149 = (v1148 + 24);
                                          if (*(v1148 + 32) >= 0x41u)
                                          {
                                            v1149 = *v1149;
                                          }

                                          if (*v1149 == 4)
                                          {
LABEL_2411:
                                            __src = "cvt";
                                            LOWORD(NullValue) = 259;
                                            if (v1146 == -1)
                                            {
                                              SIToFP = llvm::IRBuilderBase::CreateSIToFP(v1756, ShuffleVector, v1138, &__src);
                                            }

                                            else
                                            {
                                              SIToFP = llvm::IRBuilderBase::CreateUIToFP(v1756, ShuffleVector, v1138, &__src);
                                            }
                                          }

                                          else
                                          {
LABEL_2413:
                                            if (v1146 == -1)
                                            {
                                              v1150 = 10890;
                                            }

                                            else
                                            {
                                              v1150 = 10895;
                                            }

                                            v1151 = *(*(*(v1742 + 5) + 56) + 40);
                                            __src = v1138;
                                            v1749 = v1140;
                                            v1152 = llvm::Intrinsic::getDeclaration(v1151, v1150, &__src, 2);
                                            if (v1152)
                                            {
                                              v1153 = *(v1152 + 24);
                                            }

                                            else
                                            {
                                              v1153 = 0;
                                            }

                                            v1753[0] = ShuffleVector;
                                            v1753[1] = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[12];
                                            LOWORD(NullValue) = 257;
                                            SIToFP = llvm::IRBuilderBase::CreateCall(v1756, v1153, v1152, v1753, 2, &__src, 0);
                                          }

                                          goto LABEL_2421;
                                        }

                                        v1143 = ShuffleVector;
                                        v1144 = "cvtps2pd";
LABEL_2405:
                                        __src = v1144;
                                        LOWORD(NullValue) = 259;
                                        SIToFP = llvm::IRBuilderBase::CreateFPExt(v1756, v1143, v1138, &__src);
LABEL_2421:
                                        ShuffleVector = SIToFP;
                                        v1154 = v1742;
                                        if (((llvm::CallBase::arg_end(v1742) - (v1154 - 32 * (*(v1154 + 5) & 0x7FFFFFF))) >> 5) < 3)
                                        {
                                          goto LABEL_1380;
                                        }

                                        v91 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                                        v92 = *(v91 + 8);
                                        v90 = ShuffleVector;
                                        goto LABEL_161;
                                      }

                                      LODWORD(v9) = 845509491;
                                      if (*v83 == 0x7476632E32657373 && *(v83 + 5) == 0x6470327370747663)
                                      {
                                        goto LABEL_2401;
                                      }
                                    }

LABEL_2278:
                                    if ((v301 & 1) != 0 || (*v33 == 0x6D2E323135787661 ? (v1103 = v33[1] == 0x747663762E6B7361) : (v1103 = 0), v1103 ? (v1104 = *(v33 + 14) == 0x2E73703268707476) : (v1104 = 0), !v1104))
                                    {
                                      if ((v75 & 1) != 0 || (*v33 == 0x7032687074766376 ? (v1105 = *(v33 + 4) == 11891) : (v1105 = 0), !v1105))
                                      {
                                        if ((v531 & 1) == 0 && *v33 == 0x6D2E323135787661 && v33[1] == 0x64616F6C2E6B7361)
                                        {
                                          v1268 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                                          InsertElement = UpgradeMaskedLoad(v1756, *v1268, *(v1268 + 4), *(v1268 + 8), *(v33 + 16) != 117);
                                          goto LABEL_1607;
                                        }

                                        if (v32 < 0x18)
                                        {
                                          goto LABEL_2315;
                                        }

                                        if (*v33 == 0x6D2E323135787661 && v33[1] == 0x617078652E6B7361 && v33[2] == 0x2E64616F6C2E646ELL)
                                        {
                                          v1278 = *v1742;
                                          v1279 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                                          v1280 = llvm::PointerType::get(*(*v1742 + 24), 0);
                                          LOWORD(NullValue) = 257;
                                          v1281 = llvm::IRBuilderBase::CreateCast(v1756, 49, v1279, v1280, &__src);
                                          v1282 = getX86MaskVec(v1756, (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[8], *(v1278 + 8));
                                          v1283 = *(v4 + 40);
                                          __src = v1278;
                                          v1284 = llvm::Intrinsic::getDeclaration(v1283, 186, &__src, 1);
                                          v1233 = v1284;
                                          if (v1284)
                                          {
                                            v1234 = *(v1284 + 24);
                                          }

                                          else
                                          {
                                            v1234 = 0;
                                          }

                                          v1753[0] = v1281;
                                          v1753[1] = v1282;
                                          *&v1754 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4];
                                        }

                                        else
                                        {
                                          if (v32 < 0x1B || ((v9 = *(v33 + 19), *v33 == 0x6D2E323135787661) ? (v1109 = v33[1] == 0x706D6F632E6B7361) : (v1109 = 0), v1109 ? (v1110 = v33[2] == 0x6F74732E73736572) : (v1110 = 0), v1110 ? (v1111 = v9 == 0x2E65726F74732E73) : (v1111 = 0), !v1111))
                                          {
LABEL_2315:
                                            if ((v532 & 1) != 0 || (*v33 == 0x6D2E323135787661 ? (v1112 = v33[1] == 0x706D6F632E6B7361) : (v1112 = 0), v1112 ? (v1113 = *(v33 + 13) == 0x2E73736572706D6FLL) : (v1113 = 0), !v1113))
                                            {
                                              if (v32 < 0x13 || (*v33 == 0x6D2E323135787661 ? (v1114 = v33[1] == 0x617078652E6B7361) : (v1114 = 0), v1114 ? (v1115 = *(v33 + 11) == 0x2E646E617078652ELL) : (v1115 = 0), !v1115))
                                              {
                                                if ((v159 & 1) != 0 || (*v33 == 0x6F6370762E706F78 ? (v1116 = *(v33 + 8) == 109) : (v1116 = 0), !v1116))
                                                {
                                                  if ((v75 & 1) == 0 && *v33 == 0x6D6370762E706F78 && *(v33 + 4) == 30319)
                                                  {
                                                    v1316 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[8];
                                                    LOWORD(NullValue) = 257;
                                                    v1317 = llvm::IRBuilderBase::CreateNot(v1756, v1316, &__src);
                                                    v1318 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                                                    LOWORD(NullValue) = 257;
                                                    v1319 = llvm::IRBuilderBase::CreateAnd(v1756, v1318, v1316, &__src);
                                                    v1320 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4];
                                                    LOWORD(NullValue) = 257;
                                                    v1321 = llvm::IRBuilderBase::CreateAnd(v1756, v1320, v1317, &__src);
                                                    LOWORD(NullValue) = 257;
                                                    InsertElement = llvm::IRBuilderBase::CreateOr(v1756, v1319, v1321, &__src);
                                                    goto LABEL_1607;
                                                  }

                                                  if ((v159 & 1) == 0 && (*v33 == 0x6F7270762E706F78 ? (v1118 = *(v33 + 8) == 116) : (v1118 = 0), v1118) || (v157 & 1) == 0 && (*v33 == 0x702E323135787661 ? (v1119 = *(v33 + 3) == 0x6C6F72702E323135) : (v1119 = 0), v1119) || (v531 & 1) == 0 && (*v33 == 0x6D2E323135787661 ? (v1120 = v33[1] == 0x6C6F72702E6B7361) : (v1120 = 0), v1120))
                                                  {
                                                    v1300 = v1742;
                                                    v1301 = 0;
                                                  }

                                                  else
                                                  {
                                                    if ((v157 & 1) != 0 || (*v33 == 0x702E323135787661 ? (v1121 = *(v33 + 3) == 0x726F72702E323135) : (v1121 = 0), !v1121))
                                                    {
                                                      if ((v531 & 1) != 0 || (*v33 == 0x6D2E323135787661 ? (v1122 = v33[1] == 0x726F72702E6B7361) : (v1122 = 0), !v1122))
                                                      {
                                                        if (!v300 && (*v33 == 0x762E323135787661 ? (v1123 = *(v33 + 6) == 0x2E646C687370762ELL) : (v1123 = 0), v1123) || v32 >= 0x12 && ((v33 = v1737, *v1737 == 0x6D2E323135787661) ? (v1124 = v1737[1] == 0x687370762E6B7361) : (v1124 = 0), v1124 ? (v1125 = *(v1737 + 8) == 25708) : (v1125 = 0), v1125 || v32 >= 0x13 && (*v1737 == 0x6D2E323135787661 ? (v1126 = v1737[1] == 0x7370762E7A6B7361) : (v1126 = 0), v1126 ? (v1127 = *(v1737 + 11) == 0x646C687370762E7ALL) : (v1127 = 0), v1127)))
                                                        {
                                                          v1346 = *(v33 + 11) == 122;
                                                          v1347 = v1742;
                                                          v1348 = 0;
                                                        }

                                                        else
                                                        {
                                                          if (v300 || ((v1128 = v1737, *v1737 == 0x762E323135787661) ? (v1129 = *(v1737 + 6) == 0x2E6472687370762ELL) : (v1129 = 0), !v1129))
                                                          {
                                                            if (v32 < 0x12)
                                                            {
                                                              if (v32 == 16)
                                                              {
                                                                v1131 = *v83;
                                                                v1130 = v83[1];
                                                                if (v1131 == 0x72632E3234657373 && v1130 == 0x382E34362E323363)
                                                                {
                                                                  v1133 = llvm::Intrinsic::getDeclaration(*(v4 + 40), 11409, 0, 0);
                                                                  v1134 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                                                                  v1135 = *v6;
                                                                  LOWORD(NullValue) = 257;
                                                                  v1136 = llvm::IRBuilderBase::CreateCast(v1756, 38, v1134, (v1135 + 1992), &__src);
                                                                  if (v1133)
                                                                  {
                                                                    v1137 = *(v1133 + 24);
                                                                  }

                                                                  else
                                                                  {
                                                                    v1137 = 0;
                                                                  }

                                                                  v1753[0] = v1136;
                                                                  v1753[1] = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4];
                                                                  LOWORD(NullValue) = 257;
                                                                  ShuffleVector = llvm::IRBuilderBase::CreateCall(v1756, v1137, v1133, v1753, 2, &__src, 0);
                                                                  v1479 = *v1742;
                                                                  LOWORD(NullValue) = 257;
                                                                  InsertElement = llvm::IRBuilderBase::CreateCast(v1756, 39, ShuffleVector, v1479, &__src);
                                                                  goto LABEL_1607;
                                                                }
                                                              }

LABEL_2643:
                                                              if ((v531 & 1) != 0 || (*v1737 == 0x6F7262762E787661 ? (v1373 = v1737[1] == 0x732E747361636461) : (v1373 = 0), !v1373))
                                                              {
                                                                if (v32 < 0x13)
                                                                {
                                                                  if (v32 < 0xC)
                                                                  {
LABEL_2733:
                                                                    if ((v157 & 1) != 0 || (*v1737 == 0x6F6D702E32787661 ? (v1398 = *(v1737 + 3) == 0x7873766F6D702E32) : (v1398 = 0), !v1398 && (*v1737 == 0x6F6D702E32787661 ? (v1399 = *(v1737 + 3) == 0x787A766F6D702E32) : (v1399 = 0), !v1399)))
                                                                    {
                                                                      if (v32 < 0x12 || (*v1737 == 0x6D2E323135787661 ? (v1400 = v1737[1] == 0x766F6D702E6B7361) : (v1400 = 0), v1400 ? (v1401 = *(v1737 + 8) == 30835) : (v1401 = 0), !v1401 && (*v1737 == 0x6D2E323135787661 ? (v1402 = v1737[1] == 0x766F6D702E6B7361) : (v1402 = 0), v1402 ? (v1403 = *(v1737 + 8) == 30842) : (v1403 = 0), !v1403)))
                                                                      {
                                                                        v33 = v1737;
                                                                        v68 = v1738;
                                                                        if (v1738 != 23)
                                                                        {
                                                                          if (v1738 < 0x12)
                                                                          {
                                                                            if (v1738 >= 0xF)
                                                                            {
                                                                              goto LABEL_2920;
                                                                            }

                                                                            v518 = 1;
                                                                            v517 = 1;
                                                                            v74 = 1;
                                                                            i = 1;
                                                                            v655 = 1;
                                                                            v667 = 1;
                                                                            v658 = 1;
                                                                            v668 = 1;
                                                                            v669 = 1;
                                                                            if (v1738 >= 0xB)
                                                                            {
                                                                              goto LABEL_1141;
                                                                            }

                                                                            goto LABEL_1596;
                                                                          }

                                                                          if (*v1737 != 0x6F7262762E787661 || v1737[1] != 0x3166747361636461 || *(v1737 + 8) != 14386)
                                                                          {
                                                                            if (v1738 != 19)
                                                                            {
                                                                              v7 = v1757;
                                                                              goto LABEL_99;
                                                                            }

                                                                            v1487 = *v1737 == 0x7262762E32787661 && v1737[1] == 0x697473616364616FLL;
                                                                            v1488 = v1487 && *(v1737 + 11) == 0x3832316974736163;
                                                                            v7 = v1757;
                                                                            if (!v1488)
                                                                            {
                                                                              v68 = 19;
                                                                              goto LABEL_99;
                                                                            }
                                                                          }

LABEL_2858:
                                                                          v1489 = *(*v1742 + 24);
                                                                          v1492 = llvm::Type::getPrimitiveSizeInBits(v1489);
                                                                          if (v1490)
                                                                          {
                                                                          }

                                                                          v1493 = (0x80 / v1492);
                                                                          llvm::FixedVectorType::get(v1489, v1493);
                                                                          v1495 = v1494;
                                                                          v1496 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                                                                          v1497 = llvm::PointerType::get(v1494, 0);
                                                                          LOWORD(NullValue) = 257;
                                                                          PointerCast = llvm::IRBuilderBase::CreatePointerCast(v1756, v1496, v1497, &__src, v1498);
                                                                          LOWORD(NullValue) = 257;
                                                                          v1500 = llvm::IRBuilderBase::CreateAlignedLoad(v1756, v1495, PointerCast, 256, 0, &__src);
                                                                          if (v1493 == 2)
                                                                          {
                                                                            *v1753 = xmmword_2750C8AA0;
                                                                            LOWORD(NullValue) = 257;
                                                                            v1501 = 4;
                                                                          }

                                                                          else
                                                                          {
                                                                            *v1753 = xmmword_2750C8AB0;
                                                                            v1754 = unk_2750C8AC0;
                                                                            LOWORD(NullValue) = 257;
                                                                            v1501 = 8;
                                                                          }

                                                                          Select = llvm::IRBuilderBase::CreateShuffleVector(v1756, v1500, v1753, v1501, &__src);
                                                                          goto LABEL_413;
                                                                        }

                                                                        v57 = 1;
                                                                        goto LABEL_62;
                                                                      }
                                                                    }

LABEL_2759:
                                                                    v1404 = *v1742;
                                                                    v1405 = *(*v1742 + 32);
                                                                    __src = &v1750;
                                                                    v1749 = 0x800000000;
                                                                    llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v1405);
                                                                    v1406 = __src;
                                                                    if (v1405)
                                                                    {
                                                                      v1407 = 0;
                                                                      v1408 = vdupq_n_s64(v1405 - 1);
                                                                      v1409 = xmmword_2750C1830;
                                                                      v1410 = xmmword_2750C1210;
                                                                      v1411 = __src + 8;
                                                                      v1412 = vdupq_n_s64(4uLL);
                                                                      do
                                                                      {
                                                                        v1413 = vmovn_s64(vcgeq_u64(v1408, v1410));
                                                                        if (vuzp1_s16(v1413, *v1408.i8).u8[0])
                                                                        {
                                                                          *(v1411 - 2) = v1407;
                                                                        }

                                                                        if (vuzp1_s16(v1413, *&v1408).i8[2])
                                                                        {
                                                                          *(v1411 - 1) = v1407 + 1;
                                                                        }

                                                                        if (vuzp1_s16(*&v1408, vmovn_s64(vcgeq_u64(v1408, *&v1409))).i32[1])
                                                                        {
                                                                          *v1411 = v1407 + 2;
                                                                          v1411[1] = v1407 + 3;
                                                                        }

                                                                        v1407 += 4;
                                                                        v1409 = vaddq_s64(v1409, v1412);
                                                                        v1410 = vaddq_s64(v1410, v1412);
                                                                        v1411 += 4;
                                                                      }

                                                                      while (((v1405 + 3) & 0x1FFFFFFFCLL) != v1407);
                                                                    }

                                                                    v1414 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                                                                    v1755 = 257;
                                                                    v1415 = llvm::IRBuilderBase::CreateShuffleVector(v1756, v1414, v1406, v1749, v1753);
                                                                    if (llvm::StringRef::find(&v1737, "pmovsx", 6uLL, 0) == -1)
                                                                    {
                                                                      v1755 = 257;
                                                                      v1416 = 39;
                                                                    }

                                                                    else
                                                                    {
                                                                      v1755 = 257;
                                                                      v1416 = 40;
                                                                    }

                                                                    ShuffleVector = llvm::IRBuilderBase::CreateCast(v1756, v1416, v1415, v1404, v1753);
                                                                    v1445 = v1742;
                                                                    if (((llvm::CallBase::arg_end(v1742) - (v1445 - 32 * (*(v1445 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0x60)
                                                                    {
                                                                      v1277 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                                                                      v871 = *(v1277 + 8);
                                                                      v872 = ShuffleVector;
                                                                      goto LABEL_2552;
                                                                    }

                                                                    goto LABEL_1570;
                                                                  }

                                                                  v1374 = v1737;
LABEL_2725:
                                                                  if (*v1374 == 0x6D702E3134657373 && *(v1374 + 2) == 2020832879)
                                                                  {
                                                                    goto LABEL_2759;
                                                                  }

                                                                  v1395 = *v1374;
                                                                  v1396 = *(v1374 + 2);
                                                                  if (v1395 == 0x6D702E3134657373 && v1396 == 2021291631)
                                                                  {
                                                                    goto LABEL_2759;
                                                                  }

                                                                  goto LABEL_2733;
                                                                }

                                                                v1374 = v1737;
                                                                if (*v1737 != 0x762E323135787661 || v1737[1] != 0x73616364616F7262 || *(v1737 + 11) != 0x732E747361636461)
                                                                {
                                                                  goto LABEL_2725;
                                                                }
                                                              }

                                                              v1417 = *v1742;
                                                              v1418 = *(*v1742 + 24);
                                                              v1419 = *(*v1742 + 32);
                                                              v1420 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                                                              v1421 = llvm::PointerType::get(v1418, 0);
                                                              LOWORD(NullValue) = 257;
                                                              v1422 = llvm::IRBuilderBase::CreateCast(v1756, 49, v1420, v1421, &__src);
                                                              LOWORD(NullValue) = 257;
                                                              v1423 = llvm::IRBuilderBase::CreateAlignedLoad(v1756, v1418, v1422, 0, 0, &__src);
                                                              v1424 = *v6;
                                                              v1426 = llvm::PoisonValue::get(v1417, v1425);
                                                              ShuffleVector = v1426;
                                                              if (v1419)
                                                              {
                                                                v1427 = v1426;
                                                                for (j = 0; j != v1419; j = (j + 1))
                                                                {
                                                                  v1429 = llvm::ConstantInt::get((v1424 + 1992), j, 0);
                                                                  LOWORD(NullValue) = 257;
                                                                  v1427 = llvm::IRBuilderBase::CreateInsertElement(v1756, v1427, v1423, v1429, &__src);
                                                                  ShuffleVector = v1427;
                                                                }
                                                              }

                                                              goto LABEL_1380;
                                                            }

                                                            v1128 = v1737;
                                                            if (*v1737 != 0x6D2E323135787661 || v1737[1] != 0x687370762E6B7361 || *(v1737 + 8) != 25714)
                                                            {
                                                              if (v32 < 0x13)
                                                              {
                                                                goto LABEL_2643;
                                                              }

                                                              v1371 = *v1737 == 0x6D2E323135787661 && v1737[1] == 0x7370762E7A6B7361;
                                                              if (!v1371 || *(v1737 + 11) != 0x6472687370762E7ALL)
                                                              {
                                                                goto LABEL_2643;
                                                              }
                                                            }
                                                          }

                                                          v1346 = *(v1128 + 11) == 122;
                                                          v1347 = v1742;
                                                          v1348 = 1;
                                                        }

                                                        InsertElement = upgradeX86ConcatShift(v1756, v1347, v1348, v1346, v11, v12);
                                                        goto LABEL_1607;
                                                      }
                                                    }

                                                    v1300 = v1742;
                                                    v1301 = 1;
                                                  }

                                                  InsertElement = upgradeX86Rotate(v1756, v1300, v1301, v10, v11, v12);
                                                  goto LABEL_1607;
                                                }

                                                v1311 = v33 + v32;
                                                v1312 = *(v1311 - 1) != 25205 && *(v1311 - 1) != 30581 && *(v1311 - 1) != 25717 && *(v1311 - 1) != 29045;
                                                if (((llvm::CallBase::arg_end(v1742) - (v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0x60)
                                                {
                                                  v1313 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[8];
                                                  v1314 = (v1313 + 24);
                                                  if (*(v1313 + 32) >= 0x41u)
                                                  {
                                                    v1314 = *v1314;
                                                  }

                                                  v1315 = *v1314;
                                                  goto LABEL_2922;
                                                }

                                                v1343 = 9;
                                                if (v1738 < 9)
                                                {
                                                  v1343 = v1738;
                                                }

                                                v1344 = v1737 + v1343;
                                                v1345 = v1738 - v1343;
                                                v1737 = (v1737 + v1343);
                                                v1738 = v1345;
                                                if (v1345 < 2)
                                                {
                                                  goto LABEL_2599;
                                                }

                                                switch(*v1344)
                                                {
                                                  case 0x746C:
                                                    v1315 = 0;
                                                    goto LABEL_2922;
                                                  case 0x656C:
                                                    v1315 = 1;
                                                    goto LABEL_2922;
                                                  case 0x7467:
                                                    v1315 = 2;
                                                    goto LABEL_2922;
                                                  case 0x6567:
                                                    v1315 = 3;
                                                    goto LABEL_2922;
                                                  case 0x7165:
                                                    v1315 = 4;
                                                    goto LABEL_2922;
                                                  case 0x656E:
                                                    v1315 = 5;
                                                    goto LABEL_2922;
                                                }

                                                if (v1345 >= 5 && ((v1375 = *v1344, v1376 = v1344[4], v1375 == 1936482662) ? (v1377 = v1376 == 101) : (v1377 = 0), v1377))
                                                {
                                                  v1315 = 6;
                                                }

                                                else
                                                {
LABEL_2599:
                                                  v1315 = 7;
                                                }

LABEL_2922:
                                                InsertElement = upgradeX86vpcom(v1756, v1742, v1315, v1312);
                                                goto LABEL_1607;
                                              }
                                            }

                                            v1228 = *v1742;
                                            v1229 = getX86MaskVec(v1756, (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[8], *(*v1742 + 32));
                                            if (*(v1737 + 12) == 99)
                                            {
                                              v1230 = 10472;
                                            }

                                            else
                                            {
                                              v1230 = 10526;
                                            }

                                            v1231 = *(v4 + 40);
                                            __src = v1228;
                                            v1232 = llvm::Intrinsic::getDeclaration(v1231, v1230, &__src, 1);
                                            v1233 = v1232;
                                            if (v1232)
                                            {
                                              v1234 = *(v1232 + 24);
                                            }

                                            else
                                            {
                                              v1234 = 0;
                                            }

                                            v1310 = (v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF));
                                            v1753[0] = *v1310;
                                            v1753[1] = v1310[4];
                                            *&v1754 = v1229;
                                            LOWORD(NullValue) = 257;
LABEL_2717:
                                            InsertElement = llvm::IRBuilderBase::CreateCall(v1756, v1234, v1233, v1753, 3, &__src, 0);
                                            goto LABEL_1607;
                                          }

                                          v1328 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                                          v1329 = *(v1328 + 4);
                                          v1330 = *v1329;
                                          v1331 = *v1328;
                                          v1332 = llvm::PointerType::get(*(*v1329 + 3), 0);
                                          LOWORD(NullValue) = 257;
                                          v1333 = llvm::IRBuilderBase::CreateCast(v1756, 49, v1331, v1332, &__src);
                                          v1334 = getX86MaskVec(v1756, (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[8], v1330[8]);
                                          v1335 = *(v4 + 40);
                                          __src = v1330;
                                          v1336 = llvm::Intrinsic::getDeclaration(v1335, 185, &__src, 1);
                                          v1233 = v1336;
                                          if (v1336)
                                          {
                                            v1234 = *(v1336 + 24);
                                          }

                                          else
                                          {
                                            v1234 = 0;
                                          }

                                          v1753[0] = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4];
                                          v1753[1] = v1333;
                                          *&v1754 = v1334;
                                        }

                                        LOWORD(NullValue) = 257;
                                        goto LABEL_2717;
                                      }
                                    }

                                    v1138 = *v1742;
                                    v1191 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                                    ShuffleVector = v1191;
                                    v1192 = *(v1138 + 8);
                                    if (v1192 != *(*v1191 + 32))
                                    {
                                      *v1753 = xmmword_2750C8A80;
                                      LOWORD(NullValue) = 257;
                                      v1191 = llvm::IRBuilderBase::CreateShuffleVector(v1756, v1191, v1191, v1753, 4, &__src);
                                      ShuffleVector = v1191;
                                    }

                                    llvm::FixedVectorType::get((*v6 + 1656), v1192);
                                    LOWORD(NullValue) = 257;
                                    v1143 = llvm::IRBuilderBase::CreateCast(v1756, 49, v1191, v1193, &__src);
                                    ShuffleVector = v1143;
                                    v1144 = "cvtph2ps";
                                    goto LABEL_2405;
                                  }
                                }

LABEL_1521:
                                v784 = v1742;
                                v785 = 1;
                                goto LABEL_1522;
                              }

LABEL_1472:
                              v784 = v1742;
                              v785 = 0;
LABEL_1522:
                              InsertElement = upgradePMULDQ(v1756, v784, v785);
                              goto LABEL_1607;
                            }

                            v621 = 0x71642E756C756D70;
                            if (*v83 == 0x756D702E32657373 && *(v83 + 5) == 0x71642E756C756D70)
                            {
                              goto LABEL_1472;
                            }

                            v9 = *(v83 + 5);
                            v10 = 0x756D702E32787661;
                            v623 = *v83 == 0x756D702E32787661;
                          }

                          if (v623 && v9 == v621)
                          {
                            goto LABEL_1472;
                          }

                          goto LABEL_1452;
                        }

                        v624 = *v33 == 0x6D2E323135787661 && v33[1] == 0x706D63752E6B7361;
                        v9 = 46;
                        if (!v624 || *(v33 + 16) != 46)
                        {
                          v626 = 0x6B73616D32627476;
                          v10 = *v33;
                          if (*v33 != 0x632E323135787661 || v33[1] != 0x6B73616D32627476 || *(v33 + 16) != 46)
                          {
                            v10 = v33[1];
                            v629 = *v33 == 0x632E323135787661 && v10 == 0x6B73616D32777476;
                            v9 = 46;
                            if (!v629 || *(v33 + 16) != 46)
                            {
                              v10 = *v33;
                              v12 = 0x6B73616D32647476;
                              v631 = *v33 == 0x632E323135787661 && v33[1] == 0x6B73616D32647476;
                              if (!v631 || *(v33 + 16) != 46)
                              {
                                v9 = *v33;
                                v10 = v33[1];
                                v626 = 0x6B73616D32717476;
                                v11 = *(v33 + 16);
                                v633 = *v33 == 0x632E323135787661 && v10 == 0x6B73616D32717476;
                                if (!v633 || v11 != 46)
                                {
                                  goto LABEL_941;
                                }
                              }
                            }
                          }

                          v635 = (v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF));
                          v636 = *v635;
                          v637 = llvm::Constant::getNullValue(**v635, v626, v9, v10);
                          LOWORD(NullValue) = 257;
                          v483 = llvm::IRBuilderBase::CreateICmp(v1756, 40, v636, v637, &__src);
                          ShuffleVector = v483;
                          v485 = 0;
LABEL_741:
                          Select = ApplyX86MaskOn1BitsVec(v1756, v483, v485, v484);
                          goto LABEL_413;
                        }

                        v694 = v1742;
                        v697 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[8];
                        v698 = (v697 + 24);
                        if (*(v697 + 32) >= 0x41u)
                        {
                          v698 = *v698;
                        }

                        v695 = *v698;
                        v699 = 0;
LABEL_1275:
                        Select = upgradeMaskedCompare(v1756, v694, v695, v699);
                        goto LABEL_413;
                      }

                      break;
                    case 0xCuLL:
                      if (*v83 != 0x6B2E323135787661 || *(v83 + 2) != 1999532655)
                      {
LABEL_867:
                        v531 = 1;
LABEL_921:
                        v532 = 1;
LABEL_922:
                        LODWORD(v9) = 1882091629;
                        v10 = 0x632E323135787661;
                        if (*v33 == 0x632E323135787661 && *(v33 + 2) == 1882091629)
                        {
                          v582 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                          v583 = llvm::CallBase::arg_end(v1742);
                          __src = &v1750;
                          v1749 = 0x400000000;
                          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&__src, v582, v583);
                          v584 = **__src;
                          v587 = llvm::Type::getPrimitiveSizeInBits(v584);
                          if (v585)
                          {
                          }

                          if ((*(v584 + 8) & 0xFE) == 0x12)
                          {
                            v584 = **(v584 + 16);
                          }

                          v588 = llvm::Type::getPrimitiveSizeInBits(v584);
                          if (v587 == 128 && v588 == 32)
                          {
                            v590 = 10467;
                          }

                          else if (v587 == 256 && v588 == 32)
                          {
                            v590 = 10468;
                          }

                          else if (v587 == 512 && v588 == 32)
                          {
                            v590 = 10469;
                          }

                          else if (v587 == 128 && v588 == 64)
                          {
                            v590 = 10464;
                          }

                          else if (v588 == 64 && v587 == 256)
                          {
                            v590 = 10465;
                          }

                          else
                          {
                            v590 = 10466;
                          }

                          v753 = llvm::Constant::getAllOnesValue(*v1742, v589);
                          v754 = v753;
                          if (v587 == 512)
                          {
                            v755 = __src + 8 * v1749;
                            v756 = *(v755 - 1);
                            *(v755 - 1) = v753;
                            v754 = v756;
                          }

                          llvm::SmallVectorTemplateBase<void *,true>::push_back(&__src, v754);
                          v757 = llvm::Intrinsic::getDeclaration(*(v4 + 40), v590, 0, 0);
                          if (v757)
                          {
                            v758 = *(v757 + 24);
                          }

                          else
                          {
                            v758 = 0;
                          }

                          v1755 = 257;
                          ShuffleVector = llvm::IRBuilderBase::CreateCall(v1756, v758, v757, __src, v1749, v1753, 0);
                          v725 = __src;
                          if (__src == &v1750)
                          {
                            goto LABEL_1380;
                          }

                          goto LABEL_1379;
                        }

                        if (v531)
                        {
                          goto LABEL_927;
                        }

                        if (*v33 != 0x6D2E323135787661 || v33[1] != 0x2E706D632E6B7361)
                        {
                          v531 = 0;
                          goto LABEL_940;
                        }

                        v694 = v1742;
                        v705 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[8];
                        v706 = (v705 + 24);
                        if (*(v705 + 32) >= 0x41u)
                        {
                          v706 = *v706;
                        }

                        v695 = *v706;
LABEL_1274:
                        v699 = 1;
                        goto LABEL_1275;
                      }

                      v317 = getX86MaskVec(v1756, *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF)), 0x10u);
                      v318 = getX86MaskVec(v1756, (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4], 0x10u);
                      LOWORD(NullValue) = 257;
                      v319 = llvm::IRBuilderBase::CreateOr(v1756, v317, v318, &__src);
LABEL_1266:
                      v216 = v319;
                      ShuffleVector = v319;
                      v217 = *v1742;
                      LOWORD(NullValue) = 257;
LABEL_1269:
                      p_src = &__src;
LABEL_1270:
                      v219 = 49;
                      goto LABEL_289;
                    default:
                      goto LABEL_837;
                  }

                  v537 = *v6;
                  v538 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                  v539 = llvm::ConstantInt::get((*v6 + 1992), 0, 0);
                  LOWORD(NullValue) = 257;
                  v540 = llvm::IRBuilderBase::CreateExtractElement(v1756, v538, v539, &__src);
                  v541 = (v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF))[4];
                  v542 = llvm::ConstantInt::get((v537 + 1992), 0, 0);
                  LOWORD(NullValue) = 257;
                  v543 = llvm::IRBuilderBase::CreateExtractElement(v1756, v541, v542, &__src);
                  if (llvm::StringRef::find(&v1737, ".add.", 5uLL, 0) == -1)
                  {
                    if (llvm::StringRef::find(&v1737, ".sub.", 5uLL, 0) == -1)
                    {
                      if (llvm::StringRef::find(&v1737, ".mul.", 5uLL, 0) == -1)
                      {
                        LOWORD(NullValue) = 257;
                        FDiv = llvm::IRBuilderBase::CreateFDiv(v1756, v540, v543, &__src, 0);
                      }

                      else
                      {
                        LOWORD(NullValue) = 257;
                        FDiv = llvm::IRBuilderBase::CreateFMul(v1756, v540, v543, &__src, 0);
                      }
                    }

                    else
                    {
                      LOWORD(NullValue) = 257;
                      FDiv = llvm::IRBuilderBase::CreateFSub(v1756, v540, v543, &__src, 0);
                    }
                  }

                  else
                  {
                    LOWORD(NullValue) = 257;
                    FDiv = llvm::IRBuilderBase::CreateFAdd(v1756, v540, v543, &__src, 0);
                  }

                  v726 = FDiv;
                  v727 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
                  v728 = llvm::ConstantInt::get((v537 + 1992), 0, 0);
                  LOWORD(NullValue) = 257;
                  Select = llvm::IRBuilderBase::CreateInsertElement(v1756, v727, v726, v728, &__src);
                  goto LABEL_413;
                }

                v650 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                v651 = *(**(v650 + 4) + 32);
                v652 = *v650;
                LOWORD(NullValue) = 257;
                VectorSplat = llvm::IRBuilderBase::CreateVectorSplat(v1756, v651, v652, &__src);
LABEL_160:
                v90 = VectorSplat;
                ShuffleVector = VectorSplat;
                v91 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
                v92 = *(v91 + 8);
LABEL_161:
                Select = EmitX86Select(v1756, v92, v90, *(v91 + 4));
                goto LABEL_413;
              }

              v307 = *(v1742 - 4 * (*(v1742 + 5) & 0x7FFFFFF));
              LOWORD(NullValue) = 257;
              v1753[0] = llvm::IRBuilderBase::CreateExtractElement(v1756, v307, &__src, v10);
              v308 = *(v4 + 40);
              __src = *v1753[0];
              v309 = llvm::Intrinsic::getDeclaration(v308, 283, &__src, 1);
              if (v309)
              {
                v310 = *(v309 + 24);
              }

              else
              {
                v310 = 0;
              }

              LOWORD(NullValue) = 257;
              v1753[0] = llvm::IRBuilderBase::CreateCall(v1756, v310, v309, v1753, 1, &__src, 0);
              LOWORD(NullValue) = 257;
              Select = llvm::IRBuilderBase::CreateInsertElement(v1756, v307, v1753[0], &__src, v448);
              goto LABEL_413;
            }

            if (*v33 != 0x6D2E323135787661 || v33[1] != 0x726F74732E6B7361 || *(v33 + 16) != 101)
            {
              v158 = 0;
              goto LABEL_212;
            }

            v243 = *(v33 + 17) != 117;
            v482 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
            v241 = *v482;
            v242 = *(v482 + 4);
            v239 = *(v482 + 8);
LABEL_733:
            UpgradeMaskedStore(v1756, v241, v242, v239, v243);
            goto LABEL_899;
          }
        }

        v122 = *(v4 + 40);
        v1753[0] = &v1754;
        v1753[1] = 0x100000000;
        v165 = llvm::ConstantInt::get(*v6 + 1992, 1, 0);
        llvm::ValueAsMetadata::get(v165, v166);
        llvm::SmallVectorTemplateBase<void *,true>::push_back(v1753, v167);
        v126 = llvm::MDTuple::getImpl(v6, v1753[0], LODWORD(v1753[1]), 0, 1);
        v168 = v1742 - 32 * (*(v1742 + 5) & 0x7FFFFFF);
        v169 = *v168;
        v170 = *(v168 + 4);
        v171 = llvm::PointerType::get(*v170, 0);
        __src = "cast";
        LOWORD(NullValue) = 259;
        v172 = llvm::IRBuilderBase::CreateCast(v1756, 49, v169, v171, &__src);
        v135 = (63 - __clz(llvm::Type::getPrimitiveSizeInBits(*v170) >> 3)) | 0x100;
        v133 = v170;
        v134 = v172;
LABEL_224:
        AlignedStore = llvm::IRBuilderBase::CreateAlignedStore(v1756, v133, v134, v135, 0);
        v174 = llvm::Module::getMDKindID(v122, "nontemporal", 0xBuLL);
        llvm::Instruction::setMetadata(AlignedStore, v174, v126);
        llvm::iplist_impl<llvm::simple_ilist<llvm::Instruction>,llvm::SymbolTableListTraits<llvm::Instruction>>::erase(*(v1742 + 5) + 40, v1742 + 24);
        v175 = v1753[0];
        if (v1753[0] == &v1754)
        {
          goto LABEL_901;
        }

LABEL_266:
        free(v175);
        goto LABEL_901;
      }

      v33 = (v33 + 5);
      v1737 = v33;
      v1738 = v32 - 5;
      v32 -= 5;
    }

    if (v32 < 4)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }
}