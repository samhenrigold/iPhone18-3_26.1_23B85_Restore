uint64_t *std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x1865FF210);
  }

  return result;
}

uint64_t LoaderContext::loadRecursive(uint64_t a1, uint64_t a2, unint64_t a3, __CFString *a4, uint64_t a5, id *a6)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) < a3)
  {
    *(a1 + 32) = a3;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = *(a2 + 16);
  v10 = [v9 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v10)
  {
    return 1;
  }

  v11 = a3 + 1;
  v12 = *v40;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v40 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v39 + 1) + 8 * i);
      if (*(a2 + 32) || ([*(*(&v39 + 1) + 8 * i) isEqualToString:@"/System/Library/Frameworks/CoreImage.framework/CoreImage.metallib"] & 1) == 0)
      {
        v15 = [v14 UTF8String];
        v16 = v15;
        v17 = *v15;
        v18 = v14;
        if (v17 != 47)
        {
          if (v17 != 64)
          {
            v27 = ": relative paths cannot be used to load Metal libraries";
            goto LABEL_36;
          }

          if (!strncmp(v15, "@executable_path/", 0x11uLL))
          {
            v19 = *(a1 + 16);
            if (!v19)
            {
              v27 = ": @executable_path cannot be used in a library that has not been loaded from file URL";
LABEL_36:
              if (a6)
              {
                v28 = @"<no URL>";
                v29 = a4;
                if (!a4)
                {
                  v29 = @"<no URL>";
                }

                if (*(a1 + 16))
                {
                  v28 = *(a1 + 16);
                }

                v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to resolve install name ”%@” (embedded in ”%@”, loading from executable directory ”%@”)%s", v14, v29, v28, v27];
                v31 = [MEMORY[0x1E695DF20] dictionaryWithObject:v30 forKey:*MEMORY[0x1E696A578]];
                v32 = objc_alloc(MEMORY[0x1E696ABC0]);
                v33 = 3;
                goto LABEL_42;
              }

              return 0;
            }

            v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16 + 16];
          }

          else
          {
            if (strncmp(v16, "@loader_path/", 0xDuLL))
            {
              goto LABEL_32;
            }

            v19 = [(__CFString *)a4 stringByDeletingLastPathComponent];
            if (!v19)
            {
              v27 = ": @loader_path cannot be used in a library that has not been loaded from file URL";
              goto LABEL_36;
            }

            v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16 + 12];
          }

          v18 = [v19 stringByAppendingString:v20];
        }

        if (!v18)
        {
LABEL_32:
          v27 = "";
          goto LABEL_36;
        }

        Image = LoaderContext::getImage(a1, v18);
        if (!Image)
        {
          v22 = [MTLLoader canonicalURL:v18];
          v23 = [v22 path];
          Image = LoaderContext::getImage(a1, v23);
          if (!Image)
          {
            v25 = [*(a1 + 8) newDynamicLibraryWithURL:v22 options:a5 error:a6];
            if (v25)
            {
              LoaderContext::addImage(a1, v25, v23);
            }

            if (a6)
            {
              v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to load ”%@”, which was resolved from install name ”%@” (embedded in ”%@”, loading from executable directory ”%@”): %@", v23, v14, a4, *(a1 + 16), objc_msgSend(*a6, "localizedDescription")];
              v31 = [MEMORY[0x1E695DF20] dictionaryWithObject:v35 forKey:*MEMORY[0x1E696A578]];
              v32 = objc_alloc(MEMORY[0x1E696ABC0]);
              v33 = 4;
LABEL_42:
              v34 = [v32 initWithDomain:@"MTLDynamicLibraryDomain" code:v33 userInfo:v31];
              result = 0;
              *a6 = v34;
              return result;
            }

            return 0;
          }
        }

        v24 = *(Image + 24);
        if (v24 >= v11)
        {
          v24 = v11;
        }

        *(Image + 24) = v24;
      }
    }

    v10 = [v9 countByEnumeratingWithState:&v39 objects:v43 count:16];
    result = 1;
    if (v10)
    {
      continue;
    }

    return result;
  }
}

void sub_185CD76D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*,false>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v90 = *(a2 - 1);
        v91 = *v9;
        v92 = v90[3];
        v93 = *(*v9 + 24);
        if (v92 < v93 || v93 >= v92 && *v90 < *v91)
        {
          *v9 = v90;
          *(a2 - 1) = v91;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*,0>(v9, (v9 + 1), (v9 + 2), (a2 - 1));
    }

    if (v12 == 5)
    {
      result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*,0>(v9, (v9 + 1), (v9 + 2), (v9 + 3));
      v100 = *(a2 - 1);
      v101 = v9[3];
      v102 = v100[3];
      v103 = v101[3];
      if (v102 < v103 || v103 >= v102 && *v100 < *v101)
      {
        v9[3] = v100;
        *(a2 - 1) = v101;
        v105 = v9[2];
        v104 = v9[3];
        v106 = v104[3];
        v107 = v105[3];
        if (v106 < v107 || v107 >= v106 && *v104 < *v105)
        {
          v9[2] = v104;
          v9[3] = v105;
          v108 = v9[1];
          v109 = v108[3];
          if (v106 < v109 || v109 >= v106 && *v104 < *v108)
          {
            v9[1] = v104;
            v9[2] = v108;
            v110 = *v9;
            v111 = *(*v9 + 24);
            if (v106 < v111 || v111 >= v106 && *v104 < *v110)
            {
              *v9 = v104;
              v9[1] = v110;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*>(v9, a2);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*,std::unique_ptr<LoaderContext::Image>*>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[v12 >> 1];
    v15 = v14;
    if (v12 >= 0x81)
    {
      v16 = *v14;
      v17 = *v9;
      v18 = *(*v14 + 24);
      v19 = *(*v9 + 24);
      if (v18 < v19 || v19 >= v18 && *v16 < *v17)
      {
        v20 = *(a2 - 1);
        v21 = v20[3];
        if (v21 < v18 || v18 >= v21 && *v20 < *v16)
        {
          *v9 = v20;
        }

        else
        {
          *v9 = v16;
          *v14 = v17;
          v40 = *(a2 - 1);
          v41 = v40[3];
          if (v41 >= v19 && (v19 < v41 || *v40 >= *v17))
          {
            goto LABEL_35;
          }

          *v14 = v40;
        }

        *(a2 - 1) = v17;
        goto LABEL_35;
      }

      v28 = *(a2 - 1);
      v29 = v28[3];
      if (v29 < v18 || v18 >= v29 && *v28 < *v16)
      {
        *v14 = v28;
        *(a2 - 1) = v16;
        v30 = *v14;
        v31 = *v9;
        v32 = *(*v14 + 24);
        v33 = *(*v9 + 24);
        if (v32 < v33 || v33 >= v32 && *v30 < *v31)
        {
          *v9 = v30;
          *v14 = v31;
        }
      }

LABEL_35:
      v42 = v13 - 1;
      v43 = v9[v42];
      v44 = v9[1];
      v45 = v43[3];
      v46 = v44[3];
      if (v45 < v46 || v46 >= v45 && *v43 < *v44)
      {
        v47 = *(a2 - 2);
        v48 = v47[3];
        if (v48 < v45 || v45 >= v48 && *v47 < *v43)
        {
          v9[1] = v47;
        }

        else
        {
          v9[1] = v43;
          v9[v42] = v44;
          v57 = *(a2 - 2);
          v58 = v57[3];
          if (v58 >= v46 && (v46 < v58 || *v57 >= *v44))
          {
            goto LABEL_53;
          }

          v9[v42] = v57;
        }

        *(a2 - 2) = v44;
        goto LABEL_53;
      }

      v49 = *(a2 - 2);
      v50 = v49[3];
      if (v50 < v45 || v45 >= v50 && *v49 < *v43)
      {
        v9[v42] = v49;
        *(a2 - 2) = v43;
        v51 = v9[v42];
        v52 = v9[1];
        v53 = v51[3];
        v54 = v52[3];
        if (v53 < v54 || v54 >= v53 && *v51 < *v52)
        {
          v9[1] = v51;
          v9[v42] = v52;
        }
      }

LABEL_53:
      v61 = v14[1];
      v59 = v14 + 1;
      v60 = v61;
      v62 = v9[2];
      v63 = v61[3];
      v64 = v62[3];
      if (v63 < v64 || v64 >= v63 && *v60 < *v62)
      {
        v65 = *(a2 - 3);
        v66 = v65[3];
        if (v66 < v63 || v63 >= v66 && *v65 < *v60)
        {
          v9[2] = v65;
        }

        else
        {
          v9[2] = v60;
          *v59 = v62;
          v73 = *(a2 - 3);
          v74 = v73[3];
          if (v74 >= v64 && (v64 < v74 || *v73 >= *v62))
          {
            goto LABEL_66;
          }

          *v59 = v73;
        }

        *(a2 - 3) = v62;
        goto LABEL_66;
      }

      v67 = *(a2 - 3);
      v68 = v67[3];
      if (v68 < v63 || v63 >= v68 && *v67 < *v60)
      {
        *v59 = v67;
        *(a2 - 3) = v60;
        v69 = *v59;
        v70 = v9[2];
        v71 = *(*v59 + 24);
        v72 = v70[3];
        if (v71 < v72 || v72 >= v71 && *v69 < *v70)
        {
          v9[2] = v69;
          *v59 = v70;
        }
      }

LABEL_66:
      v75 = *v15;
      v76 = v9[v42];
      v77 = *(*v15 + 24);
      v78 = v76[3];
      if (v77 < v78 || v78 >= v77 && *v75 < *v76)
      {
        v79 = *v59;
        v80 = *(*v59 + 24);
        if (v80 < v77 || v77 >= v80 && *v79 < *v75)
        {
          v9[v42] = v79;
        }

        else
        {
          v9[v42] = v75;
          *v15 = v76;
          if (v80 >= v78 && (v78 < v80 || *v79 >= *v76))
          {
            v75 = v76;
            goto LABEL_79;
          }

          *v15 = v79;
          v75 = v79;
        }
      }

      else
      {
        v81 = *v59;
        v82 = *(*v59 + 24);
        if (v82 >= v77 && (v77 < v82 || *v81 >= *v75))
        {
          goto LABEL_79;
        }

        *v15 = v81;
        *v59 = v75;
        if (v82 >= v78 && (v78 < v82 || *v81 >= *v76))
        {
          v75 = v81;
          goto LABEL_79;
        }

        v9[v42] = v81;
        v59 = v15;
        v75 = v76;
      }

      *v59 = v76;
LABEL_79:
      v83 = *v9;
      *v9 = v75;
      *v15 = v83;
      goto LABEL_80;
    }

    v22 = *v9;
    v23 = *v14;
    v24 = *(*v9 + 24);
    v25 = *(*v15 + 24);
    if (v24 < v25 || v25 >= v24 && *v22 < *v23)
    {
      v26 = *(a2 - 1);
      v27 = v26[3];
      if (v27 < v24 || v24 >= v27 && *v26 < *v22)
      {
        *v15 = v26;
LABEL_47:
        *(a2 - 1) = v23;
        goto LABEL_80;
      }

      *v15 = v22;
      *v9 = v23;
      v55 = *(a2 - 1);
      v56 = v55[3];
      if (v56 < v25 || v25 >= v56 && *v55 < *v23)
      {
        *v9 = v55;
        goto LABEL_47;
      }
    }

    else
    {
      v34 = *(a2 - 1);
      v35 = v34[3];
      if (v35 < v24 || v24 >= v35 && *v34 < *v22)
      {
        *v9 = v34;
        *(a2 - 1) = v22;
        v36 = *v9;
        v37 = *v15;
        v38 = *(*v9 + 24);
        v39 = *(*v15 + 24);
        if (v38 < v39 || v39 >= v38 && *v36 < *v37)
        {
          *v15 = v36;
          *v9 = v37;
        }
      }
    }

LABEL_80:
    if ((a5 & 1) == 0)
    {
      v84 = *(v9 - 1);
      v85 = v84[3];
      v86 = *(*v9 + 24);
      if (v85 >= v86 && (v86 < v85 || *v84 >= **v9))
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::unique_ptr<LoaderContext::Image> *,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &>(v9, a2);
        v9 = result;
        goto LABEL_135;
      }
    }

    v87 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::unique_ptr<LoaderContext::Image> *,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &>(v9, a2);
    if ((v88 & 1) == 0)
    {
      goto LABEL_133;
    }

    v89 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*>(v9, v87);
    v9 = v87 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*>(v87 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v87;
      if (v89)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v89)
    {
LABEL_133:
      result = std::__introsort<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*,false>(v8, v87, a3, -v11, a5 & 1);
      v9 = v87 + 1;
LABEL_135:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v94 = *v9;
  v95 = v9[1];
  v96 = v95[3];
  v97 = *(*v9 + 24);
  if (v96 < v97 || v97 >= v96 && *v95 < *v94)
  {
    v98 = *(a2 - 1);
    v99 = v98[3];
    if (v99 < v96 || v96 >= v99 && *v98 < *v95)
    {
      *v9 = v98;
    }

    else
    {
      *v9 = v95;
      v9[1] = v94;
      v118 = *(a2 - 1);
      v119 = v118[3];
      if (v119 >= v97 && (v97 < v119 || *v118 >= *v94))
      {
        return result;
      }

      v9[1] = v118;
    }

    *(a2 - 1) = v94;
    return result;
  }

  v112 = *(a2 - 1);
  v113 = v112[3];
  if (v113 < v96 || v96 >= v113 && *v112 < *v95)
  {
    v9[1] = v112;
    *(a2 - 1) = v95;
    v115 = *v9;
    v114 = v9[1];
    v116 = v114[3];
    v117 = *(*v9 + 24);
    if (v116 < v117 || v117 >= v116 && *v114 < *v115)
    {
      *v9 = v114;
      v9[1] = v115;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*,0>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(*a2 + 24);
  v7 = *(*result + 24);
  if (v6 < v7 || v7 >= v6 && *v4 < *v5)
  {
    v8 = *a3;
    v9 = *(*a3 + 24);
    if (v9 < v6 || v6 >= v9 && *v8 < *v4)
    {
      *result = v8;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v4 = *a3;
      v15 = *(*a3 + 24);
      if (v15 >= v7 && (v7 < v15 || *v4 >= *v5))
      {
        goto LABEL_15;
      }

      *a2 = v4;
    }

    *a3 = v5;
    goto LABEL_14;
  }

  v5 = *a3;
  v10 = *(*a3 + 24);
  if (v10 >= v6 && (v6 < v10 || *v5 >= *v4))
  {
LABEL_14:
    v4 = v5;
    goto LABEL_15;
  }

  *a2 = v5;
  *a3 = v4;
  v11 = *a2;
  v12 = *result;
  v13 = *(*a2 + 24);
  v14 = *(*result + 24);
  if (v13 < v14 || v14 >= v13 && *v11 < *v12)
  {
    *result = v11;
    *a2 = v12;
    v4 = *a3;
  }

LABEL_15:
  v16 = *a4;
  v17 = *(*a4 + 24);
  v18 = v4[3];
  if (v17 < v18 || v18 >= v17 && *v16 < *v4)
  {
    *a3 = v16;
    *a4 = v4;
    v19 = *a3;
    v20 = *a2;
    v21 = *(*a3 + 24);
    v22 = *(*a2 + 24);
    if (v21 < v22 || v22 >= v21 && *v19 < *v20)
    {
      *a2 = v19;
      *a3 = v20;
      v23 = *a2;
      v24 = *result;
      v25 = *(*a2 + 24);
      v26 = *(*result + 24);
      if (v25 < v26 || v26 >= v25 && *v23 < *v24)
      {
        *result = v23;
        *a2 = v24;
      }
    }
  }

  return result;
}

uint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*>(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v21[7] = v2;
    v21[8] = v3;
    v5 = result;
    v6 = result + 1;
    if (result + 1 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v8;
        v8 = v6;
        v10 = v9[1];
        v11 = v10[3];
        v12 = *(*v9 + 24);
        if (v11 < v12 || v12 >= v11 && *v10 < **v9)
        {
          v21[0] = v9[1];
          v13 = *v9;
          *v9 = 0;
          v9[1] = 0;
          std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v8, v13);
          v14 = v5;
          if (v9 != v5)
          {
            v15 = v7;
            while (1)
            {
              v16 = (v5 + v15);
              v17 = *(v5 + v15 - 8);
              v18 = *(v21[0] + 24);
              v19 = v17[3];
              if (v18 >= v19)
              {
                if (v19 < v18)
                {
                  v14 = v9;
                  goto LABEL_17;
                }

                if (*v21[0] >= *v17)
                {
                  break;
                }
              }

              --v9;
              *(v16 - 1) = 0;
              std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v16, v17);
              v15 -= 8;
              if (!v15)
              {
                v14 = v5;
                goto LABEL_17;
              }
            }

            v14 = (v5 + v15);
          }

LABEL_17:
          v20 = v21[0];
          v21[0] = 0;
          std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v14, v20);
          result = std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v21, 0);
        }

        v6 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*>(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v16[5] = v2;
    v16[6] = v3;
    v5 = result;
    while (v5 + 1 != a2)
    {
      v6 = v5++;
      v7 = v6[1];
      v8 = v7[3];
      v9 = *(*v6 + 24);
      if (v8 < v9 || v9 >= v8 && *v7 < **v6)
      {
        *v5 = 0;
        v16[0] = v7;
        v10 = *v6;
        do
        {
          do
          {
            v11 = v6;
            *v6 = 0;
            std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v6 + 1, v10);
            v12 = *--v6;
            v10 = v12;
            v13 = v16[0];
            v14 = *(v16[0] + 24);
            v15 = v12[3];
          }

          while (v14 < v15);
        }

        while (v15 >= v14 && *v16[0] < *v10);
        v16[0] = 0;
        std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v11, v13);
        result = std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v16, 0);
      }
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::unique_ptr<LoaderContext::Image> *,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = 0;
  v23 = v3;
  v4 = *(a2 - 1);
  v5 = v3[3];
  v6 = v4[3];
  if (v5 < v6 || v6 >= v5 && *v3 < *v4)
  {
    i = a1;
    do
    {
      v9 = i[1];
      ++i;
      v8 = v9;
      v10 = v9[3];
    }

    while (v5 >= v10 && (v10 < v5 || *v3 >= *v8));
  }

  else
  {
    for (i = a1 + 1; i < a2; ++i)
    {
      v22 = *(*i + 24);
      if (v5 < v22 || v22 >= v5 && *v3 < **i)
      {
        break;
      }
    }
  }

  if (i < a2)
  {
    --a2;
    while (v5 < v6 || v6 >= v5 && *v3 < *v4)
    {
      v11 = *--a2;
      v4 = v11;
      v6 = v11[3];
    }
  }

  if (i < a2)
  {
    v12 = *i;
    v13 = *a2;
    do
    {
      *i = v13;
      *a2 = v12;
      v3 = v23;
      v14 = v23[3];
      do
      {
        v15 = i[1];
        ++i;
        v12 = v15;
        v16 = v15[3];
      }

      while (v14 >= v16 && (v16 < v14 || *v23 >= *v12));
      do
      {
        do
        {
          v17 = *--a2;
          v13 = v17;
          v18 = v17[3];
        }

        while (v14 < v18);
      }

      while (v18 >= v14 && *v23 < *v13);
    }

    while (i < a2);
  }

  v19 = i - 1;
  if (i - 1 != a1)
  {
    v20 = *v19;
    *v19 = 0;
    std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](a1, v20);
    v3 = v23;
  }

  v23 = 0;
  std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](i - 1, v3);
  std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](&v23, 0);
  return i;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::unique_ptr<LoaderContext::Image> *,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &>(uint64_t *a1, uint64_t *a2)
{
  v3 = 0;
  v4 = *a1;
  *a1 = 0;
  v26 = v4;
  v5 = v4[3];
  while (1)
  {
    v6 = a1[v3 + 1];
    v7 = v6[3];
    if (v7 >= v5 && (v5 < v7 || *v6 >= *v4))
    {
      break;
    }

    ++v3;
  }

  v8 = &a1[v3];
  v9 = &a1[v3 + 1];
  if (v3 * 8)
  {
    do
    {
      v11 = *--a2;
      v10 = v11;
      v12 = v11[3];
    }

    while (v12 >= v5 && (v5 < v12 || *v10 >= *v4));
  }

  else
  {
LABEL_19:
    if (v9 < a2)
    {
      do
      {
        v14 = *--a2;
        v13 = v14;
        v15 = v14[3];
        if (v15 < v5)
        {
          break;
        }

        if (v5 < v15)
        {
          goto LABEL_19;
        }
      }

      while (*v13 >= *v4 && v9 < a2);
    }
  }

  if (v9 < a2)
  {
    v17 = *a2;
    v18 = v9;
    v19 = a2;
    do
    {
      *v18++ = v17;
      *v19 = v6;
      v4 = v26;
      v20 = v26[3];
      while (1)
      {
        v6 = *v18;
        v21 = *(*v18 + 24);
        if (v21 >= v20 && (v20 < v21 || *v6 >= *v26))
        {
          break;
        }

        ++v18;
      }

      do
      {
        v22 = *--v19;
        v17 = v22;
        v23 = v22[3];
      }

      while (v23 >= v20 && (v20 < v23 || *v17 >= *v26));
    }

    while (v18 < v19);
    v8 = v18 - 1;
  }

  if (v8 != a1)
  {
    v24 = *v8;
    *v8 = 0;
    std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](a1, v24);
    v4 = v26;
  }

  v26 = 0;
  std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v8, v4);
  std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](&v26, 0);
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v21 = *a1;
        v22 = a1[1];
        v23 = v22[3];
        v24 = *(*a1 + 24);
        if (v23 >= v24 && (v24 < v23 || *v22 >= *v21))
        {
          v35 = *(a2 - 1);
          v36 = v35[3];
          if (v36 < v23 || v23 >= v36 && *v35 < *v22)
          {
            a1[1] = v35;
            *(a2 - 1) = v22;
            v38 = *a1;
            v37 = a1[1];
            v39 = v37[3];
            v40 = *(*a1 + 24);
            if (v39 < v40 || v40 >= v39 && *v37 < *v38)
            {
              *a1 = v37;
              a1[1] = v38;
            }
          }

          return 1;
        }

        v25 = *(a2 - 1);
        v26 = v25[3];
        if (v26 < v23 || v23 >= v26 && *v25 < *v22)
        {
          *a1 = v25;
        }

        else
        {
          *a1 = v22;
          a1[1] = v21;
          v43 = *(a2 - 1);
          v44 = v43[3];
          if (v44 >= v24 && (v24 < v44 || *v43 >= *v21))
          {
            return 1;
          }

          a1[1] = v43;
        }

        *(a2 - 1) = v21;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*,0>(a1, (a1 + 1), (a1 + 2), (a2 - 1));
        break;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*,0>(a1, (a1 + 1), (a1 + 2), (a1 + 3));
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = v9[3];
        v12 = v10[3];
        if (v11 < v12 || v12 >= v11 && *v9 < *v10)
        {
          a1[3] = v9;
          *(a2 - 1) = v10;
          v14 = a1[2];
          v13 = a1[3];
          v15 = v13[3];
          v16 = v14[3];
          if (v15 < v16 || v16 >= v15 && *v13 < *v14)
          {
            a1[2] = v13;
            a1[3] = v14;
            v17 = a1[1];
            v18 = v17[3];
            if (v15 < v18 || v18 >= v15 && *v13 < *v17)
            {
              a1[1] = v13;
              a1[2] = v17;
              v19 = *a1;
              v20 = *(*a1 + 24);
              if (v15 < v20 || v20 >= v15 && *v13 < *v19)
              {
                *a1 = v13;
                a1[1] = v19;
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_17;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    v7 = v5[3];
    v8 = *(*a1 + 24);
    if (v7 < v8 || v8 >= v7 && *v5 < *v6)
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_17:
  v27 = a1 + 2;
  v28 = *a1;
  v29 = a1 + 1;
  v30 = a1[1];
  v31 = v30[3];
  v32 = *(*a1 + 24);
  if (v31 < v32 || v32 >= v31 && *v30 < *v28)
  {
    v33 = *v27;
    v34 = *(*v27 + 24);
    if (v34 < v31 || v31 >= v34 && *v33 < *v30)
    {
      *a1 = v33;
    }

    else
    {
      *a1 = v30;
      a1[1] = v28;
      if (v34 >= v32 && (v32 < v34 || *v33 >= *v28))
      {
        goto LABEL_48;
      }

      *v29 = v33;
    }

    v29 = a1 + 2;
LABEL_47:
    *v29 = v28;
    goto LABEL_48;
  }

  v41 = *v27;
  v42 = *(*v27 + 24);
  if (v42 < v31 || v31 >= v42 && *v41 < *v30)
  {
    *v29 = v41;
    *v27 = v30;
    if (v42 < v32 || v32 >= v42 && *v41 < *v28)
    {
      *a1 = v41;
      goto LABEL_47;
    }
  }

LABEL_48:
  v45 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (1)
  {
    v48 = *v45;
    v49 = *(*v45 + 24);
    v50 = *(*v27 + 24);
    if (v49 >= v50 && (v50 < v49 || *v48 >= **v27))
    {
      goto LABEL_63;
    }

    *v45 = 0;
    v61 = v48;
    v51 = *v27;
    *v27 = 0;
    std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v45, v51);
    v52 = v46;
    while (1)
    {
      v53 = a1 + v52;
      v54 = v61;
      v55 = *(a1 + v52 + 8);
      v56 = v61[3];
      v57 = v55[3];
      if (v56 >= v57 && (v57 < v56 || *v61 >= *v55))
      {
        break;
      }

      *(v53 + 1) = 0;
      std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v53 + 2, v55);
      v52 -= 8;
      if (v52 == -16)
      {
        v54 = v61;
        v58 = a1;
        goto LABEL_61;
      }
    }

    v58 = (a1 + v52 + 16);
LABEL_61:
    v61 = 0;
    std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v58, v54);
    if (++v47 == 8)
    {
      break;
    }

    std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](&v61, 0);
LABEL_63:
    v27 = v45;
    v46 += 8;
    if (++v45 == a2)
    {
      return 1;
    }
  }

  v59 = v45 + 1 == a2;
  std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](&v61, 0);
  return v59;
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*,std::unique_ptr<LoaderContext::Image>*>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*>(a1, a4, v8, v11);
        v11 -= 8;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        v14 = *a1;
        v15 = *(*v12 + 24);
        v16 = *(*a1 + 24);
        if (v15 < v16 || v16 >= v15 && *v13 < *v14)
        {
          *v12 = v14;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*>(a1, a4, v8, a1);
        }

        v12 += 8;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1},std::unique_ptr<LoaderContext::Image>*>(a1, v6, a4, v8);
        v6 -= 8;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t *std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*>(uint64_t *result, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v30[9] = v4;
    v30[10] = v5;
    v7 = result;
    v8 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = &result[v10 + 1];
      v13 = v10 + 2;
      if (v13 < a3)
      {
        v14 = v12[1];
        v15 = *(*v12 + 24);
        v16 = v14[3];
        if (v15 < v16 || v16 >= v15 && **v12 < *v14)
        {
          ++v12;
          v11 = v13;
        }
      }

      v17 = *a4;
      v18 = *(*v12 + 24);
      v19 = *(*a4 + 24);
      if (v18 >= v19 && (v19 < v18 || **v12 >= *v17))
      {
        *a4 = 0;
        v20 = *v12;
        *v12 = 0;
        std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](a4, v20);
        if (v8 >= v11)
        {
          while (1)
          {
            v22 = 2 * v11;
            v11 = (2 * v11) | 1;
            v21 = &v7[v11];
            v23 = v22 + 2;
            if (v23 < a3)
            {
              v24 = v21[1];
              v25 = *(*v21 + 24);
              v26 = v24[3];
              if (v25 < v26 || v26 >= v25 && **v21 < *v24)
              {
                ++v21;
                v11 = v23;
              }
            }

            v27 = *v21;
            v28 = *(*v21 + 24);
            v29 = v17[3];
            if (v28 < v29 || v29 >= v28 && *v27 < *v17)
            {
              break;
            }

            *v21 = 0;
            std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v12, v27);
            v12 = v21;
            if (v8 < v11)
            {
              goto LABEL_13;
            }
          }
        }

        v21 = v12;
LABEL_13:
        v30[0] = 0;
        std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v21, v17);
        return std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v30, 0);
      }
    }
  }

  return result;
}

uint64_t *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1},std::unique_ptr<LoaderContext::Image>*>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = result;
    v7 = *result;
    *result = 0;
    v12 = v7;
    v8 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*>(result, a3, a4);
    v9 = v8;
    v10 = (a2 - 8);
    if (v8 == v10)
    {
      v12 = 0;
      std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v8, v7);
    }

    else
    {
      v11 = *v10;
      *v10 = 0;
      std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v8, v11);
      v12 = 0;
      std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v10, v7);
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*>(v6, (v9 + 1), a3, v9 + 1 - v6);
    }

    return std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](&v12, 0);
  }

  return result;
}

void sub_185CD90DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1;
    v8 = &a1[v5];
    a1 = v8 + 1;
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v10 < a3)
    {
      v13 = v8[2];
      v11 = v8 + 2;
      v12 = v13;
      v14 = *(v11 - 1);
      v15 = v14[3];
      v16 = v13[3];
      if (v15 < v16 || v16 >= v15 && *v14 < *v12)
      {
        a1 = v11;
        v5 = v10;
      }
    }

    v17 = *a1;
    *a1 = 0;
    std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v7, v17);
  }

  while (v5 <= v6);
  return a1;
}

uint64_t *std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    v7 = &result[v4 >> 1];
    v10 = *(a2 - 8);
    v8 = (a2 - 8);
    v9 = v10;
    v11 = *(*v7 + 24);
    v12 = v10[3];
    if (v11 < v12 || v12 >= v11 && **v7 < *v9)
    {
      *v8 = 0;
      v13 = *v7;
      *v7 = 0;
      std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v8, v13);
      if (v4 >= 2)
      {
        while (1)
        {
          v15 = v6 - 1;
          v6 = (v6 - 1) >> 1;
          v14 = &v5[v6];
          v16 = *v14;
          v17 = *(*v14 + 24);
          v18 = v9[3];
          if (v17 >= v18 && (v18 < v17 || *v16 >= *v9))
          {
            break;
          }

          *v14 = 0;
          std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v7, v16);
          v7 = &v5[v6];
          if (v15 <= 1)
          {
            goto LABEL_9;
          }
        }
      }

      v14 = v7;
LABEL_9:
      v19 = 0;
      std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](v14, v9);
      return std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](&v19, 0);
    }
  }

  return result;
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n, std::vector<char>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      memset(this->__end_, *__x, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v8 = (end - this->__begin_);
    v9 = &v8[__n];
    if (&v8[__n] < 0)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v10 = value - begin;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = end - this->__begin_;
    memset(v8, *__x, __n);
    memcpy(&v8[begin - end], begin, v12);
    this->__begin_ = &v8[begin - end];
    this->__end_ = &v8[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void *std::__hash_table<std::__hash_value_type<MTLLoadedFile *,objc_object *>,std::__unordered_map_hasher<MTLLoadedFile *,std::__hash_value_type<MTLLoadedFile *,objc_object *>,std::hash<MTLLoadedFile *>,std::equal_to<MTLLoadedFile *>,true>,std::__unordered_map_equal<MTLLoadedFile *,std::__hash_value_type<MTLLoadedFile *,objc_object *>,std::equal_to<MTLLoadedFile *>,std::hash<MTLLoadedFile *>,true>,std::allocator<std::__hash_value_type<MTLLoadedFile *,objc_object *>>>::__emplace_unique_key_args<MTLLoadedFile *,std::pair<MTLLoadedFile *,objc_object *>>(void *a1, void *a2, _OWORD *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != *a2)
  {
    goto LABEL_17;
  }

  return v10;
}

char *std::vector<char>::__insert_with_size[abi:ne200100]<char const*,char const*>(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((v9 - v10) >= a5)
  {
    v16 = v10 - __dst;
    if ((v10 - __dst) >= a5)
    {
      v21 = &__dst[a5];
      v22 = (v10 - a5);
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = (&a4[__dst] - __src);
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return v5;
      }

      v32 = &__dst[a5];
      v33 = &v18[-a5];
      v34 = v18;
      if (&v18[-a5] < v10)
      {
        do
        {
          v35 = *v33++;
          *v34++ = v35;
        }

        while (v33 != v10);
      }

      *(a1 + 8) = v34;
      if (v19 != v32)
      {
        memmove(&__dst[a5], __dst, v18 - v32);
      }

      v25 = v5;
      v26 = __src;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = v10 - *a1 + a5;
  if (v12 < 0)
  {
    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    operator new();
  }

  v28 = (__dst - v11);
  memcpy(v13, __src, a5);
  v29 = &v13[a5];
  v30 = v10 - v5;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v31 = &v13[v11 - v5];
  memcpy(v31, v11, v28);
  *a1 = v31;
  *(a1 + 8) = &v29[v30];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

unint64_t **std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,+[MTLLoader serializeMachOContainerWithSlice:payload:count:writer:]::$_2 &,MTLLoaderMachOPayload const**,0>(unint64_t **result, unint64_t **a2, unint64_t **a3, unint64_t **a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = bswap64((*a2)[1]);
  v7 = bswap64((*result)[1]);
  if (v6 == v7 && (v6 = bswap64(v4[2]), v7 = bswap64(v5[2]), v6 == v7) && (v6 = bswap64(v4[3]), v7 = bswap64(v5[3]), v6 == v7) && (v6 = bswap64(v4[4]), v7 = bswap64(v5[4]), v6 == v7))
  {
    v8 = 0;
  }

  else if (v6 < v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  v9 = *a3;
  v10 = bswap64((*a3)[1]);
  v11 = bswap64(v4[1]);
  if (v10 != v11 || (v10 = bswap64(v9[2]), v11 = bswap64(v4[2]), v10 != v11) || (v10 = bswap64(v9[3]), v11 = bswap64(v4[3]), v10 != v11) || (v10 = bswap64(v9[4]), v11 = bswap64(v4[4]), v10 != v11))
  {
    if (v10 < v11)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v8 < 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    if (v12 < 0)
    {
      *a2 = v9;
      *a3 = v4;
      v16 = *a2;
      v17 = *result;
      v18 = bswap64((*a2)[1]);
      v19 = bswap64((*result)[1]);
      if (v18 == v19 && (v18 = bswap64(v16[2]), v19 = bswap64(v17[2]), v18 == v19) && (v18 = bswap64(v16[3]), v19 = bswap64(v17[3]), v18 == v19) && (v18 = bswap64(v16[4]), v19 = bswap64(v17[4]), v18 == v19))
      {
        v20 = 0;
      }

      else if (v18 < v19)
      {
        v20 = -1;
      }

      else
      {
        v20 = 1;
      }

      if (v20 < 0)
      {
        *result = v16;
        *a2 = v17;
        v4 = *a3;
      }
    }

    else
    {
      v4 = *a3;
    }

    goto LABEL_43;
  }

  v12 = 0;
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (v12 < 0)
  {
    *result = v9;
    goto LABEL_42;
  }

  *result = v4;
  *a2 = v5;
  v4 = *a3;
  v13 = bswap64((*a3)[1]);
  v14 = bswap64(v5[1]);
  if (v13 == v14 && (v13 = bswap64(v4[2]), v14 = bswap64(v5[2]), v13 == v14) && (v13 = bswap64(v4[3]), v14 = bswap64(v5[3]), v13 == v14) && (v13 = bswap64(v4[4]), v14 = bswap64(v5[4]), v13 == v14))
  {
    v15 = 0;
  }

  else if (v13 < v14)
  {
    v15 = -1;
  }

  else
  {
    v15 = 1;
  }

  if (v15 < 0)
  {
    *a2 = v4;
LABEL_42:
    *a3 = v5;
    v4 = v5;
  }

LABEL_43:
  v21 = *a4;
  v22 = bswap64((*a4)[1]);
  v23 = bswap64(v4[1]);
  if (v22 != v23 || (v22 = bswap64(v21[2]), v23 = bswap64(v4[2]), v22 != v23) || (v22 = bswap64(v21[3]), v23 = bswap64(v4[3]), v22 != v23) || (v22 = bswap64(v21[4]), v23 = bswap64(v4[4]), v22 != v23))
  {
    v24 = v22 < v23 ? -1 : 1;
    if (v24 < 0)
    {
      *a3 = v21;
      *a4 = v4;
      v25 = *a3;
      v26 = *a2;
      v27 = bswap64((*a3)[1]);
      v28 = bswap64((*a2)[1]);
      if (v27 == v28 && (v27 = bswap64(v25[2]), v28 = bswap64(v26[2]), v27 == v28) && (v27 = bswap64(v25[3]), v28 = bswap64(v26[3]), v27 == v28) && (v27 = bswap64(v25[4]), v28 = bswap64(v26[4]), v27 == v28))
      {
        v29 = 0;
      }

      else
      {
        v29 = v27 < v28 ? -1 : 1;
      }

      if (v29 < 0)
      {
        *a2 = v25;
        *a3 = v26;
        v30 = *a2;
        v31 = *result;
        v32 = bswap64((*a2)[1]);
        v33 = bswap64((*result)[1]);
        if (v32 == v33 && (v32 = bswap64(v30[2]), v33 = bswap64(v31[2]), v32 == v33) && (v32 = bswap64(v30[3]), v33 = bswap64(v31[3]), v32 == v33) && (v32 = bswap64(v30[4]), v33 = bswap64(v31[4]), v32 == v33))
        {
          v34 = 0;
        }

        else if (v32 < v33)
        {
          v34 = -1;
        }

        else
        {
          v34 = 1;
        }

        if (v34 < 0)
        {
          *result = v30;
          *a2 = v31;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,+[MTLLoader serializeMachOContainerWithSlice:payload:count:writer:]::$_2 &,MTLLoaderMachOPayload const**>(unint64_t **a1, unint64_t **a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v15 = *a1;
        v16 = a1[1];
        v17 = bswap64(v16[1]);
        v18 = bswap64((*a1)[1]);
        if (v17 == v18 && (v17 = bswap64(v16[2]), v18 = bswap64(v15[2]), v17 == v18) && (v17 = bswap64(v16[3]), v18 = bswap64(v15[3]), v17 == v18) && (v17 = bswap64(v16[4]), v18 = bswap64(v15[4]), v17 == v18))
        {
          v19 = 0;
        }

        else if (v17 < v18)
        {
          v19 = -1;
        }

        else
        {
          v19 = 1;
        }

        v26 = *(a2 - 1);
        v27 = bswap64(v26[1]);
        v28 = bswap64(v16[1]);
        if (v27 == v28 && (v27 = bswap64(v26[2]), v28 = bswap64(v16[2]), v27 == v28) && (v27 = bswap64(v26[3]), v28 = bswap64(v16[3]), v27 == v28) && (v27 = bswap64(v26[4]), v28 = bswap64(v16[4]), v27 == v28))
        {
          v29 = 0;
        }

        else if (v27 < v28)
        {
          v29 = -1;
        }

        else
        {
          v29 = 1;
        }

        if (v19 < 0)
        {
          if (v29 < 0)
          {
            *a1 = v26;
          }

          else
          {
            *a1 = v16;
            a1[1] = v15;
            v46 = *(a2 - 1);
            v47 = bswap64(v46[1]);
            v48 = bswap64(v15[1]);
            if (v47 == v48 && (v47 = bswap64(v46[2]), v48 = bswap64(v15[2]), v47 == v48) && (v47 = bswap64(v46[3]), v48 = bswap64(v15[3]), v47 == v48) && (v47 = bswap64(v46[4]), v48 = bswap64(v15[4]), v47 == v48))
            {
              v49 = 0;
            }

            else if (v47 < v48)
            {
              v49 = -1;
            }

            else
            {
              v49 = 1;
            }

            if ((v49 & 0x80000000) == 0)
            {
              return 1;
            }

            a1[1] = v46;
          }

          *(a2 - 1) = v15;
          return 1;
        }

        if ((v29 & 0x80000000) == 0)
        {
          return 1;
        }

        a1[1] = v26;
        *(a2 - 1) = v16;
        v30 = a1[1];
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,+[MTLLoader serializeMachOContainerWithSlice:payload:count:writer:]::$_2 &,MTLLoaderMachOPayload const**,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,+[MTLLoader serializeMachOContainerWithSlice:payload:count:writer:]::$_2 &,MTLLoaderMachOPayload const**,0>(a1, a1 + 1, a1 + 2, a1 + 3);
        v10 = *(a2 - 1);
        v11 = a1[3];
        v12 = bswap64(v10[1]);
        v13 = bswap64(v11[1]);
        if (v12 == v13 && (v12 = bswap64(v10[2]), v13 = bswap64(v11[2]), v12 == v13) && (v12 = bswap64(v10[3]), v13 = bswap64(v11[3]), v12 == v13) && (v12 = bswap64(v10[4]), v13 = bswap64(v11[4]), v12 == v13))
        {
          v14 = 0;
        }

        else if (v12 < v13)
        {
          v14 = -1;
        }

        else
        {
          v14 = 1;
        }

        if ((v14 & 0x80000000) == 0)
        {
          return 1;
        }

        a1[3] = v10;
        *(a2 - 1) = v11;
        v42 = a1[2];
        v30 = a1[3];
        v43 = bswap64(v30[1]);
        v44 = bswap64(v42[1]);
        if (v43 == v44 && (v43 = bswap64(v30[2]), v44 = bswap64(v42[2]), v43 == v44) && (v43 = bswap64(v30[3]), v44 = bswap64(v42[3]), v43 == v44) && (v43 = bswap64(v30[4]), v44 = bswap64(v42[4]), v43 == v44))
        {
          v45 = 0;
        }

        else
        {
          v45 = v43 < v44 ? -1 : 1;
        }

        if ((v45 & 0x80000000) == 0)
        {
          return 1;
        }

        a1[2] = v30;
        a1[3] = v42;
        v55 = a1[1];
        v56 = bswap64(v30[1]);
        v57 = bswap64(v55[1]);
        if (v56 == v57 && (v56 = bswap64(v30[2]), v57 = bswap64(v55[2]), v56 == v57) && (v56 = bswap64(v30[3]), v57 = bswap64(v55[3]), v56 == v57) && (v56 = bswap64(v30[4]), v57 = bswap64(v55[4]), v56 == v57))
        {
          v58 = 0;
        }

        else
        {
          v58 = v56 < v57 ? -1 : 1;
        }

        if ((v58 & 0x80000000) == 0)
        {
          return 1;
        }

        a1[1] = v30;
        a1[2] = v55;
        break;
      default:
        goto LABEL_22;
    }

    v31 = *a1;
    v32 = bswap64(v30[1]);
    v33 = bswap64((*a1)[1]);
    if (v32 == v33 && (v32 = bswap64(v30[2]), v33 = bswap64(v31[2]), v32 == v33) && (v32 = bswap64(v30[3]), v33 = bswap64(v31[3]), v32 == v33) && (v32 = bswap64(v30[4]), v33 = bswap64(v31[4]), v32 == v33))
    {
      v34 = 0;
    }

    else if (v32 < v33)
    {
      v34 = -1;
    }

    else
    {
      v34 = 1;
    }

    if (v34 < 0)
    {
      *a1 = v30;
      a1[1] = v31;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    v7 = bswap64(v5[1]);
    v8 = bswap64((*a1)[1]);
    if (v7 == v8 && (v7 = bswap64(v5[2]), v8 = bswap64(v6[2]), v7 == v8) && (v7 = bswap64(v5[3]), v8 = bswap64(v6[3]), v7 == v8) && (v7 = bswap64(v5[4]), v8 = bswap64(v6[4]), v7 == v8))
    {
      v9 = 0;
    }

    else if (v7 < v8)
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }

    if (v9 < 0)
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_22:
  v20 = a1 + 2;
  v21 = *a1;
  v22 = a1[1];
  v23 = bswap64(v22[1]);
  v24 = bswap64((*a1)[1]);
  if (v23 == v24 && (v23 = bswap64(v22[2]), v24 = bswap64(v21[2]), v23 == v24) && (v23 = bswap64(v22[3]), v24 = bswap64(v21[3]), v23 == v24) && (v23 = bswap64(v22[4]), v24 = bswap64(v21[4]), v23 == v24))
  {
    v25 = 0;
  }

  else if (v23 < v24)
  {
    v25 = -1;
  }

  else
  {
    v25 = 1;
  }

  v35 = *v20;
  v36 = bswap64((*v20)[1]);
  v37 = bswap64(v22[1]);
  if (v36 == v37 && (v36 = bswap64(v35[2]), v37 = bswap64(v22[2]), v36 == v37) && (v36 = bswap64(v35[3]), v37 = bswap64(v22[3]), v36 == v37) && (v36 = bswap64(v35[4]), v37 = bswap64(v22[4]), v36 == v37))
  {
    v38 = 0;
  }

  else if (v36 < v37)
  {
    v38 = -1;
  }

  else
  {
    v38 = 1;
  }

  if (v25 < 0)
  {
    v50 = a1;
    v51 = a1 + 2;
    if (v38 < 0)
    {
      goto LABEL_114;
    }

    *a1 = v22;
    a1[1] = v21;
    v52 = bswap64(v35[1]);
    v53 = bswap64(v21[1]);
    if (v52 == v53 && (v52 = bswap64(v35[2]), v53 = bswap64(v21[2]), v52 == v53) && (v52 = bswap64(v35[3]), v53 = bswap64(v21[3]), v52 == v53) && (v52 = bswap64(v35[4]), v53 = bswap64(v21[4]), v52 == v53))
    {
      v54 = 0;
    }

    else
    {
      v54 = v52 < v53 ? -1 : 1;
    }

    v50 = a1 + 1;
    v51 = a1 + 2;
    if (v54 < 0)
    {
      goto LABEL_114;
    }
  }

  else if (v38 < 0)
  {
    a1[1] = v35;
    *v20 = v22;
    v39 = bswap64(v35[1]);
    v40 = bswap64(v21[1]);
    if (v39 == v40 && (v39 = bswap64(v35[2]), v40 = bswap64(v21[2]), v39 == v40) && (v39 = bswap64(v35[3]), v40 = bswap64(v21[3]), v39 == v40) && (v39 = bswap64(v35[4]), v40 = bswap64(v21[4]), v39 == v40))
    {
      v41 = 0;
    }

    else
    {
      v41 = v39 < v40 ? -1 : 1;
    }

    v50 = a1;
    v51 = a1 + 1;
    if (v41 < 0)
    {
LABEL_114:
      *v50 = v35;
      *v51 = v21;
    }
  }

  v59 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v60 = 0;
  for (i = 24; ; i += 8)
  {
    v62 = *v59;
    v63 = *v20;
    v64 = bswap64((*v59)[1]);
    v65 = bswap64(v63[1]);
    if (v64 != v65 || (v64 = bswap64(v62[2]), v65 = bswap64(v63[2]), v64 != v65) || (v64 = bswap64(v62[3]), v65 = bswap64(v63[3]), v64 != v65) || (v64 = bswap64(v62[4]), v65 = bswap64(v63[4]), v64 != v65))
    {
      v66 = v64 < v65 ? -1 : 1;
      if (v66 < 0)
      {
        v67 = i;
        while (1)
        {
          *(a1 + v67) = v63;
          v68 = v67 - 8;
          if (v67 == 8)
          {
            break;
          }

          v63 = *(a1 + v67 - 16);
          v69 = bswap64(v62[1]);
          v70 = bswap64(v63[1]);
          if (v69 == v70 && (v69 = bswap64(v62[2]), v70 = bswap64(v63[2]), v69 == v70) && (v69 = bswap64(v62[3]), v70 = bswap64(v63[3]), v69 == v70) && (v69 = bswap64(v62[4]), v70 = bswap64(v63[4]), v69 == v70))
          {
            v71 = 0;
          }

          else if (v69 < v70)
          {
            v71 = -1;
          }

          else
          {
            v71 = 1;
          }

          v67 = v68;
          if ((v71 & 0x80000000) == 0)
          {
            v72 = (a1 + v68);
            goto LABEL_138;
          }
        }

        v72 = a1;
LABEL_138:
        *v72 = v62;
        if (++v60 == 8)
        {
          break;
        }
      }
    }

    v20 = v59++;
    if (v59 == a2)
    {
      return 1;
    }
  }

  return v59 + 1 == a2;
}

__CFString *MTLHeapTypeString(uint64_t a1)
{
  v1 = @"Invalid";
  if (a1 == 1)
  {
    v1 = @"MTLHeapTypePlacement";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"MTLHeapTypeAutomatic";
  }
}

void MTLCompilerMachORequest::MTLCompilerMachORequest(MTLCompilerMachORequest *this)
{
  MTLCompilerRequest::MTLCompilerRequest(this);
  *v1 = &unk_1EF476328;
  *(v1 + 188) = -1;
  *(v1 + 192) = 0;
  *(v1 + 172) = 16;
}

void MTLCompilerMachORequest::~MTLCompilerMachORequest(MTLCompilerMachORequest *this)
{
  *this = &unk_1EF476328;
  v2 = *(this + 24);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 47);
  if (v3 != -1)
  {
    close(v3);
  }

  MTLCompilerRequest::~MTLCompilerRequest(this);
}

{
  MTLCompilerMachORequest::~MTLCompilerMachORequest(this);

  JUMPOUT(0x1865FF210);
}

BOOL MTLCompilerMachORequest::CreateMachOFile(MTLCompilerMachORequest *this, const char *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = open(a2, 1538, 420);
  *(this + 47) = v4;
  if (v4 == -1)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      MTLCompilerMachORequest::CreateMachOFile(a2);
      return 0;
    }
  }

  else
  {
    v5 = *(this + 24);
    if (v5)
    {
      free(v5);
    }

    v6 = strlen(a2);
    v7 = malloc_type_malloc(v6 + 1, 0x100004077774924uLL);
    *(this + 24) = v7;
    strcpy(v7, a2);
    return 1;
  }

  return result;
}

unsigned __int8 *getFragmentHash(int *a1, char a2)
{
  v4 = 1;
  v5 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
  v6 = (a1 - *a1);
  if (*v6 < 0x17u)
  {
    v9 = 0;
LABEL_12:
    v12 = 0;
    goto LABEL_14;
  }

  v7 = v6[11];
  if (!v6[11])
  {
    v9 = 0;
    v12 = 0;
    v4 = 1;
    goto LABEL_14;
  }

  v8 = *(a1 + v7);
  v9 = (a1 + v7 + v8);
  v10 = *v9;
  if (!v10)
  {
    v4 = 0;
    goto LABEL_12;
  }

  v11 = 0;
  v12 = 0;
  v13 = 4 * v10;
  v14 = a1 + v7 + v8;
  do
  {
    v15 = *&v14[v11 + 4];
    v16 = &v14[v11 + v15 - *(&v9[v11 / 4 + 1] + v15)];
    if (*(v16 + 2) >= 5u)
    {
      v17 = *(v16 + 4);
      if (v17)
      {
        if (*&v14[v11 + 4 + v15 + v17])
        {
          ++v12;
        }
      }
    }

    v11 += 4;
  }

  while (v13 != v11);
  v4 = 0;
LABEL_14:
  v18 = 2 * v12 + 8;
  v19 = malloc_type_malloc(v18, 0x100004000313F17uLL);
  bzero(v19, v18);
  if (a2)
  {
    v21 = (a1 - *a1);
    if (*v21 < 0x1Bu)
    {
      LOWORD(v22) = 0;
    }

    else
    {
      v22 = v21[13];
      if (v21[13])
      {
        LOWORD(v22) = *(a1 + v22);
      }
    }

    v19[2] = v22;
    if (*v21 < 0x19u)
    {
      LOWORD(v20) = 0;
    }

    else
    {
      v20 = v21[12];
      if (v20)
      {
        LOWORD(v20) = *(a1 + v20);
      }
    }
  }

  else
  {
    v19[2] = 652;
    LOWORD(v20) = 651;
  }

  v19[1] = v20;
  *v19 = v12;
  if ((v4 & 1) == 0 && *v9)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = v19 + 4;
    do
    {
      v27 = v9[v23 + 1];
      v28 = &v9[v23] + v27;
      v29 = &v9[v23] + v27 - *(v28 + 1);
      if (*(v29 + 2) < 5u)
      {
        goto LABEL_54;
      }

      v30 = *(v29 + 4);
      if (!v30 || !*(&v9[v23 + 1] + v27 + v30))
      {
        goto LABEL_54;
      }

      v26[v24] = v26[v24] & 0xFFF0 | v25 & 0xF;
      v31 = v27 - *(v28 + 1);
      if (*(&v9[v23 + 1] + v31) >= 5u && (v32 = *(&v9[v23 + 2] + v31)) != 0)
      {
        v33 = 16 * *(&v9[v23 + 1] + v27 + v32);
      }

      else
      {
        v33 = 0;
      }

      v26[v24] = v33 | v25 & 0xF;
      v34 = v9[v23 + 1];
      v35 = &v9[v23] + v34 - *(&v9[v23 + 1] + v34);
      if (*(v35 + 2) >= 9u)
      {
        v36 = *(v35 + 6);
        if (v36)
        {
          if (*(&v9[v23 + 1] + v34 + v36))
          {
            v37 = v27 - *(v28 + 1);
            v38 = *(&v9[v23 + 1] + v37);
            if (v38 >= 0x15)
            {
              if (!*(&v9[v23 + 6] + v37) || *(&v9[v23 + 1] + v27 + *(&v9[v23 + 6] + v37)) - 15 >= 4)
              {
LABEL_42:
                if (!*(&v9[v23 + 5] + v37 + 2) || *(&v9[v23 + 1] + v27 + *(&v9[v23 + 5] + v37 + 2)) - 15 >= 4)
                {
LABEL_46:
                  if (!*(&v9[v23 + 5] + v37) || *(&v9[v23 + 1] + v27 + *(&v9[v23 + 5] + v37)) - 15 >= 4)
                  {
LABEL_50:
                    v39 = *(&v9[v23 + 4] + v37 + 2);
                    if (!v39 || *(&v9[v23 + 1] + v27 + v39) - 15 > 3)
                    {
                      goto LABEL_53;
                    }
                  }
                }
              }

              v19[3] = v19[3] & 0xFF00 | (1 << v25 << 8) | (v19[3] | (1 << v25));
              goto LABEL_53;
            }

            if (v38 >= 0x13)
            {
              goto LABEL_42;
            }

            if (v38 >= 0x11)
            {
              goto LABEL_46;
            }

            if (v38 >= 0xF)
            {
              goto LABEL_50;
            }
          }
        }
      }

LABEL_53:
      ++v24;
LABEL_54:
      ++v25;
      ++v23;
    }

    while (v25 < *v9);
  }

  CC_SHA256(v19, v18, v5);
  free(v19);
  return v5;
}

unsigned __int8 *getTileHash(int *a1)
{
  v2 = 1;
  v3 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
  v4 = (a1 - *a1);
  if (*v4 < 0xFu)
  {
    v7 = 0;
LABEL_12:
    v10 = 0;
    goto LABEL_14;
  }

  v5 = v4[7];
  if (!v4[7])
  {
    v7 = 0;
    v10 = 0;
    v2 = 1;
    goto LABEL_14;
  }

  v6 = *(a1 + v5);
  v7 = (a1 + v5 + v6);
  v8 = *v7;
  if (!v8)
  {
    v2 = 0;
    goto LABEL_12;
  }

  v9 = 0;
  v10 = 0;
  v11 = 4 * v8;
  v12 = a1 + v5 + v6;
  do
  {
    v13 = *&v12[v9 + 4];
    v14 = &v12[v9 + v13 - *(&v7[v9 / 4 + 1] + v13)];
    if (*(v14 + 2) >= 5u)
    {
      v15 = *(v14 + 4);
      if (v15)
      {
        if (*&v12[v9 + 4 + v13 + v15])
        {
          ++v10;
        }
      }
    }

    v9 += 4;
  }

  while (v11 != v9);
  v2 = 0;
LABEL_14:
  v16 = 2 * v10 + 8;
  v17 = malloc_type_malloc(v16, 0x1000040BDFB0063uLL);
  bzero(v17, v16);
  *v17 = v10;
  if ((v2 & 1) == 0 && *v7)
  {
    v18 = 0;
    v19 = 0;
    v20 = v17 + 1;
    do
    {
      v21 = (&v7[v19 + 1] + v7[v19 + 1]);
      v22 = (v21 - *v21);
      if (*v22 >= 5u)
      {
        v23 = v22[2];
        if (v23)
        {
          if (*(v21 + v23))
          {
            v20[v18] = v20[v18] & 0xFFF0 | v19 & 0xF;
            v24 = (v21 - *v21);
            if (*v24 >= 5u && (v25 = v24[2]) != 0)
            {
              v26 = 16 * *(v21 + v25);
            }

            else
            {
              v26 = 0;
            }

            v20[v18++] = v26 | v19 & 0xF;
          }
        }
      }

      ++v19;
    }

    while (v19 < *v7);
  }

  CC_SHA256(v17, v16, v3);
  free(v17);
  return v3;
}

uint64_t Air::FunctionScript::function_as_object(Air::FunctionScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 7) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *getMeshHash(int *a1)
{
  v2 = 1;
  v3 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
  v4 = (a1 - *a1);
  if (*v4 >= 0xDu)
  {
    v5 = v4[6];
    if (v5)
    {
      v2 = *(a1 + v5) != 0;
    }

    else
    {
      v2 = 1;
    }
  }

  data = v2;
  CC_SHA256(&data, 1u, v3);
  return v3;
}

uint64_t Air::FunctionScript::function_as_mesh(Air::FunctionScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 8) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t functionNameWithDescriptor(MTL4FunctionDescriptor *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_5:

    return [(MTL4FunctionDescriptor *)a1 name];
  }

  else
  {
    while (1)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if ([(MTL4FunctionDescriptor *)a1 specializedName])
      {

        return [(MTL4FunctionDescriptor *)a1 specializedName];
      }

      a1 = [(MTL4FunctionDescriptor *)a1 functionDescriptor];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_5;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [(MTL4FunctionDescriptor *)a1 functionGraph];

      return [v3 functionName];
    }

    else
    {
      return 0;
    }
  }
}

MTLFunctionReflectionInternal *newFunctionReflectionWithFunctionDescriptor(MTL4FunctionDescriptor *a1, uint64_t a2, NSObject *a3)
{
  if (a3)
  {
    v4 = functionNameWithDescriptor(a1);
    if (v4)
    {
      v5 = v4;
      if (([v4 isEqual:&stru_1EF478240] & 1) == 0)
      {
        MTLNewReflectionData(a3);
        ReflectionReaderFactory<MTLReflectionByNameReader>::Create(v5);
      }
    }
  }

  return 0;
}

void functionHashWithFunctionDescriptor(MTL4FunctionDescriptor *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [-[MTL4FunctionDescriptor library](a1 "library")];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 bitCodeHash];
      std::string::basic_string[abi:ne200100]<0>(&c, [-[MTL4FunctionDescriptor name](a1 "name")]);
      v7 = v6[1];
      *a2 = *v6;
      *(a2 + 16) = v7;
      *&v61[0] = *c.hash;
      *(v61 + 7) = *(&c.hash[1] + 3);
      v8 = HIBYTE(c.hash[3]);
      v9 = *&v61[0];
      *(a2 + 32) = *c.count;
      *(a2 + 40) = v9;
      *(a2 + 47) = *(v61 + 7);
      *(a2 + 55) = v8;
      *(a2 + 56) = v5;
      *(a2 + 64) = 1;
      return;
    }

    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    functionHashWithFunctionDescriptor([(MTL4FunctionDescriptor *)a1 functionDescriptor], &v75);
    if ((v79 & 1) == 0)
    {
      *a2 = 0;
      *(a2 + 64) = 0;
      return;
    }

    data = v75;
    v72 = v76;
    v10 = &v73;
    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v73, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
    }

    else
    {
      v73 = v77;
    }

    v74 = v78;
    v18 = [(MTL4FunctionDescriptor *)a1 constantValues];
    v19 = [(MTL4FunctionDescriptor *)a1 specializedName];
    CC_SHA256_Init(&c);
    CC_SHA256_Update(&c, &data, 0x20u);
    if (v74)
    {
      if ([(MTL4FunctionDescriptor *)a1 specializedName])
      {
        v20 = [(MTL4FunctionDescriptor *)a1 specializedName];
        if (([v20 isEqualToString:{objc_msgSend(v74, "name")}] & 1) != 0 || objc_msgSend(-[MTL4FunctionDescriptor specializedName](a1, "specializedName"), "isEqualToString:", &stru_1EF478240))
        {
          v19 = 0;
        }
      }

      if (![objc_msgSend(v74 "functionConstants")] && !v19)
      {
        v61[0] = data;
        v61[1] = v72;
        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(__p, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
        }

        else
        {
          *__p = *&v73.__r_.__value_.__l.__data_;
          *&v63 = *(&v73.__r_.__value_.__l + 2);
        }

        v29 = v74;
        v30 = v61[1];
        *a2 = v61[0];
        *(a2 + 16) = v30;
        *(a2 + 32) = *__p;
        *(a2 + 48) = v63;
        *(a2 + 56) = v29;
        goto LABEL_73;
      }

      *&v61[0] = 0;
      v22 = newConstantScriptForFunction(v18, v74, [v74 name], v19, v61);

      *buffer_ptr = 0;
      size_ptr = 0;
      v23 = dispatch_data_create_map(v22, buffer_ptr, &size_ptr);
      serializeConstantScript(*buffer_ptr, size_ptr, &v52);
    }

    else
    {
      *&v61[0] = 0;
      BYTE8(v61[0]) = 0;
      v61[1] = xmmword_185DB8250;
      *__p = 0u;
      v63 = 0u;
      v64 = 0;
      v65 = 1;
      v66 = 256;
      v67 = 0;
      if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || (v10 = v73.__r_.__value_.__r.__words[0]) != 0)
      {
        if (v10->__r_.__value_.__s.__data_[0])
        {
          v21 = strlen(v10);
          LODWORD(v10) = flatbuffers::FlatBufferBuilder::CreateString(v61, v10, v21);
        }

        else
        {
          LODWORD(v10) = 0;
        }
      }

      v26 = [v19 cStringUsingEncoding:4];
      v27 = v26;
      if (v26)
      {
        if (*v26)
        {
          v28 = strlen(v26);
          LODWORD(v27) = flatbuffers::FlatBufferBuilder::CreateString(v61, v27, v28);
        }

        else
        {
          LODWORD(v27) = 0;
        }
      }

      v31 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(v61, &flatbuffers::data<flatbuffers::Offset<Air::FunctionConstantValue>,std::allocator<flatbuffers::Offset<Air::FunctionConstantValue>>>(std::vector<flatbuffers::Offset<Air::FunctionConstantValue>> const&)::t, 0);
      BYTE6(v64) = 1;
      v32 = v63;
      v33 = __p[0];
      v34 = __p[1];
      flatbuffers::FlatBufferBuilder::AddOffset<void>(v61, 4, v10);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(v61, 6, v27);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(v61, 8, v31);
      v35 = flatbuffers::FlatBufferBuilder::EndTable(v61, v33 - v32 + v34);
      BYTE6(v64) = 1;
      LOWORD(v31) = v63;
      v36 = __p[0];
      v37 = __p[1];
      v38 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(v61, 2);
      flatbuffers::FlatBufferBuilder::TrackField(v61, 6, v38);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(v61, 8, v35);
      v39 = flatbuffers::FlatBufferBuilder::EndTable(v61, v36 - v31 + v37);
      flatbuffers::FlatBufferBuilder::Finish(v61, v39, "AIRC", 0);
      v40 = v63;
      v41 = (LODWORD(__p[0]) + LODWORD(__p[1]) - v63);
      *buffer_ptr = *&v61[0];
      buffer_ptr[8] = BYTE8(v61[0]);
      v57 = __p[1];
      v58 = __p[0];
      v59 = v63;
      v60 = v41;
      if (BYTE8(v61[0]) == 1)
      {
        *&v61[0] = 0;
        BYTE8(v61[0]) = 0;
      }

      *__p = 0u;
      v63 = 0u;
      serializeConstantScript(v40, v41, &v52);
      flatbuffers::DetachedBuffer::~DetachedBuffer(buffer_ptr);
      flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(v61);
    }

    CC_SHA256_Update(&c, v52, len);
    free(v52);
    if (v54)
    {
      free(v54);
    }

    if (v19)
    {
      CC_SHA256_Update(&c, [-[MTL4FunctionDescriptor specializedName](a1 "specializedName")], objc_msgSend(-[MTL4FunctionDescriptor specializedName](a1, "specializedName"), "cStringLength"));
    }

    else
    {
      v19 = [v74 name];
    }

    if (v74)
    {
    }

    CC_SHA256_Final(md, &c);
    std::string::basic_string[abi:ne200100]<0>(v61, [v19 cStringUsingEncoding:4]);
    v42 = v69;
    *a2 = *md;
    *(a2 + 16) = v42;
    *buffer_ptr = *(&v61[0] + 1);
    *&buffer_ptr[7] = *(v61 + 15);
    v43 = BYTE7(v61[1]);
    v44 = *buffer_ptr;
    *(a2 + 32) = *&v61[0];
    *(a2 + 40) = v44;
    *(a2 + 47) = *&buffer_ptr[7];
    *(a2 + 55) = v43;
    *(a2 + 56) = 0;
LABEL_73:
    *(a2 + 64) = 1;
    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if ((v79 & 1) != 0 && SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      v25 = v77.__r_.__value_.__r.__words[0];
      goto LABEL_78;
    }

    return;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_31:
    *a2 = 0;
    *(a2 + 64) = 0;
    return;
  }

  v11 = [(MTL4FunctionDescriptor *)a1 functionGraph];
  std::string::basic_string[abi:ne200100]<0>(&v75, -[NSString UTF8String](-[MTLFunctionStitchingGraph functionName](v11, "functionName"), "UTF8String"));
  data = 0uLL;
  *&v72 = 0;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v12 = [(MTL4FunctionDescriptor *)a1 functionDescriptors];
  v13 = [v12 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v13)
  {
    v14 = *v48;
    do
    {
      v15 = 0;
      do
      {
        if (*v48 != v14)
        {
          objc_enumerationMutation(v12);
        }

        functionHashWithFunctionDescriptor(*(*(&v47 + 1) + 8 * v15), &c);
        if ((c.wbuf[6] & 1) == 0)
        {
          *a2 = 0;
          *(a2 + 64) = 0;
          goto LABEL_51;
        }

        v61[0] = *c.count;
        v61[1] = *&c.hash[2];
        v16 = SHIBYTE(c.wbuf[3]);
        if (SHIBYTE(c.wbuf[3]) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *&c.hash[6], *c.wbuf);
        }

        else
        {
          *__p = *&c.hash[6];
          *&v63 = *&c.wbuf[2];
        }

        *(&v63 + 1) = *&c.wbuf[4];
        if (*&c.wbuf[4])
        {
        }

        std::vector<MTLUINT256_t>::push_back[abi:ne200100](&data, v61);
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p[0]);
          if ((v16 & 0x80000000) == 0)
          {
            goto LABEL_22;
          }
        }

        else if ((v16 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        operator delete(*&c.hash[6]);
LABEL_22:
        ++v15;
      }

      while (v13 != v15);
      v17 = [v12 countByEnumeratingWithState:&v47 objects:v55 count:16];
      v13 = v17;
    }

    while (v17);
  }

  memset(v61, 0, sizeof(v61));
  *v45 = data;
  v46 = v72;
  data = 0uLL;
  *&v72 = 0;
  _MTLGetStitchingLookupHash(v45, v11, v61);
  if (v45[0])
  {
    v45[1] = v45[0];
    operator delete(v45[0]);
  }

  *c.count = v61[0];
  *&c.hash[2] = v61[1];
  if (SBYTE7(v76) < 0)
  {
    std::string::__init_copy_ctor_external(&c.hash[6], v75, *(&v75 + 1));
  }

  else
  {
    *&c.hash[6] = v75;
    *&c.wbuf[2] = v76;
  }

  v24 = *&c.hash[2];
  *a2 = *c.count;
  *(a2 + 16) = v24;
  *(a2 + 32) = *&c.hash[6];
  *(a2 + 48) = *&c.wbuf[2];
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
LABEL_51:
  if (data)
  {
    *(&data + 1) = data;
    operator delete(data);
  }

  if (SBYTE7(v76) < 0)
  {
    v25 = v75;
LABEL_78:
    operator delete(v25);
  }
}

void sub_185CDE4BC(_Unwind_Exception *a1)
{
  if (*(v1 - 185) < 0)
  {
    operator delete(*(v1 - 208));
  }

  if (*(v1 - 112) == 1 && *(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  _Unwind_Resume(a1);
}

void generateFunctionHash(MTL4FunctionDescriptor *a1@<X0>, _OWORD *a2@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  *a2 = 0u;
  a2[1] = 0u;
  functionHashWithFunctionDescriptor(a1, v9);
  if (v12 == 1)
  {
    v5 = v9[0];
    v6 = v9[1];
    v3 = SHIBYTE(v10.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v10;
    }

    v4 = v11;
    v8 = v11;
    *a2 = v5;
    a2[1] = v6;
    if (v4)
    {
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if ((v3 & 0x80000000) == 0)
      {
        return;
      }

LABEL_11:
      operator delete(v10.__r_.__value_.__l.__data_);
      return;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (v3 < 0)
    {
      goto LABEL_11;
    }
  }
}

void *generateFunctionArrayHash@<X0>(void *result@<X0>, const void **a2@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (result)
  {
    v3 = result;
    result = [result count];
    if (result)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      result = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
      v4 = result;
      if (result)
      {
        v5 = *v20;
        do
        {
          v6 = 0;
          do
          {
            if (*v20 != v5)
            {
              objc_enumerationMutation(v3);
            }

            generateFunctionHash(*(*(&v19 + 1) + 8 * v6), &v23);
            v7 = a2[1];
            v8 = a2[2];
            if (v7 >= v8)
            {
              v11 = *a2;
              v12 = v7 - *a2;
              v13 = v12 >> 5;
              v14 = (v12 >> 5) + 1;
              if (v14 >> 59)
              {
                std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
              }

              v15 = v8 - v11;
              if (v15 >> 4 > v14)
              {
                v14 = v15 >> 4;
              }

              if (v15 >= 0x7FFFFFFFFFFFFFE0)
              {
                v14 = 0x7FFFFFFFFFFFFFFLL;
              }

              if (v14)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t>>(a2, v14);
              }

              v16 = (32 * v13);
              v17 = v24;
              *v16 = v23;
              v16[1] = v17;
              v10 = (32 * v13 + 32);
              memcpy(0, v11, v12);
              v18 = *a2;
              *a2 = 0;
              a2[1] = v10;
              a2[2] = 0;
              if (v18)
              {
                operator delete(v18);
              }
            }

            else
            {
              v9 = v24;
              *v7 = v23;
              *(v7 + 1) = v9;
              v10 = v7 + 32;
            }

            a2[1] = v10;
            v6 = v6 + 1;
          }

          while (v4 != v6);
          result = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
          v4 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

void sub_185CDE8D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void functionsInGroupsFromDescriptor(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x4812000000;
  v16 = __Block_byref_object_copy__8;
  v17 = __Block_byref_object_dispose__8;
  v18 = &unk_185DF1D43;
  memset(v19, 0, sizeof(v19));
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (a1)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___Z31functionsInGroupsFromDescriptorP12NSDictionaryIP8NSStringP7NSArrayIP22MTL4FunctionDescriptorEE_block_invoke;
    v12[3] = &unk_1E6EEBEB0;
    v12[4] = &v13;
    [a1 enumerateKeysAndObjectsUsingBlock:v12];
    v3 = v14[6];
    v4 = v14[7];
    v5 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * (v4 - v3));
    if (v4 == v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    std::__introsort<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *,false>(v3, v4, v6, 1);
    CC_SHA256_Init(&c);
    v7 = v14[6];
    v8 = v14[7];
    while (v7 != v8)
    {
      v9 = *(v7 + 23);
      if (v9 < 0)
      {
        v10 = *v7;
        v9 = *(v7 + 8);
      }

      else
      {
        v10 = v7;
      }

      CC_SHA256_Update(&c, v10, v9);
      CC_SHA256_Update(&c, (v7 + 24), 0x20u);
      v7 += 56;
    }

    CC_SHA256_Final(a2, &c);
  }

  _Block_object_dispose(&v13, 8);
  *c.count = v19;
  std::vector<std::pair<std::string,MTLUINT256_t>>::__destroy_vector::operator()[abi:ne200100](&c);
}

void sub_185CDEA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose((v3 - 120), 8);
  std::vector<std::pair<std::string,MTLUINT256_t>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___Z31functionsInGroupsFromDescriptorP12NSDictionaryIP8NSStringP7NSArrayIP22MTL4FunctionDescriptorEE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  generateFunctionArrayHash(a3, &v33);
  v6 = v33;
  v7 = (v34 - v33) >> 5;
  v8 = 126 - 2 * __clz(v7);
  if (v34 == v33)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  std::__introsort<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,false>(v33, v34, v9, 1, v5);
  *md = 0u;
  v42 = 0u;
  CC_SHA256(v6, 32 * v7, md);
  v10 = *(*(a1 + 32) + 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, [a2 UTF8String]);
  v11 = __p;
  v40[0] = v32;
  *(v40 + 7) = *(&v32 + 7);
  v12 = HIBYTE(v32);
  v32 = 0uLL;
  __p = 0;
  v38 = *md;
  v39 = v42;
  v13 = v10[7];
  v14 = v10[8];
  if (v13 >= v14)
  {
    v18 = v10[6];
    v19 = 0x6DB6DB6DB6DB6DB7 * ((v13 - v18) >> 3);
    v20 = v19 + 1;
    if ((v19 + 1) > 0x492492492492492)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v21 = 0x6DB6DB6DB6DB6DB7 * ((v14 - v18) >> 3);
    if (2 * v21 > v20)
    {
      v20 = 2 * v21;
    }

    if (v21 >= 0x249249249249249)
    {
      v22 = 0x492492492492492;
    }

    else
    {
      v22 = v20;
    }

    v37 = v10 + 6;
    if (v22)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,MTLUINT256_t>>>((v10 + 6), v22);
    }

    v23 = 56 * v19;
    v24 = v39;
    *(v23 + 24) = v38;
    v25 = v40[0];
    *v23 = v11;
    *(v23 + 8) = v25;
    *(v23 + 15) = *(v40 + 7);
    *(v23 + 23) = v12;
    *(v23 + 40) = v24;
    v17 = 56 * v19 + 56;
    v26 = v10[6];
    v27 = v10[7] - v26;
    v28 = (56 * v19 - v27);
    memcpy(v28, v26, v27);
    v29 = v10[6];
    v10[6] = v28;
    v10[7] = v17;
    v30 = v10[8];
    v10[8] = 0;
    v35 = v29;
    v36 = v30;
    v33 = v29;
    v34 = v29;
    std::__split_buffer<std::pair<std::string,MTLUINT256_t>>::~__split_buffer(&v33);
  }

  else
  {
    v15 = v40[0];
    *v13 = v11;
    *(v13 + 8) = v15;
    *(v13 + 15) = *(v40 + 7);
    *(v13 + 23) = v12;
    v16 = v39;
    *(v13 + 24) = v38;
    *(v13 + 40) = v16;
    v17 = v13 + 56;
  }

  v10[7] = v17;
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  if (v6)
  {
    operator delete(v6);
  }
}

void sub_185CDECFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void generateStaticLinkingDescriptorHash(MTL4StaticLinkingDescriptor *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  data = 0;
  __dst = 0;
  v13 = 0;
  generateFunctionArrayHash([(MTL4StaticLinkingDescriptor *)a1 functionDescriptors], &v9);
  generateFunctionArrayHash([(MTL4StaticLinkingDescriptor *)a1 privateFunctionDescriptors], &__p);
  memset(v14, 0, sizeof(v14));
  functionsInGroupsFromDescriptor([(MTL4StaticLinkingDescriptor *)a1 groups], v14);
  std::vector<MTLUINT256_t>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLUINT256_t*>,std::__wrap_iter<MTLUINT256_t*>>(&data, 0, v9, v10, (v10 - v9) >> 5);
  std::vector<MTLUINT256_t>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLUINT256_t*>,std::__wrap_iter<MTLUINT256_t*>>(&data, __dst, __p, v8, (v8 - __p) >> 5);
  std::vector<MTLUINT256_t>::push_back[abi:ne200100](&data, v14);
  v5 = 126 - 2 * __clz((__dst - data) >> 5);
  if (__dst == data)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,false>(data, __dst, v6, 1, v4);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  CC_SHA256(data, (__dst - data) & 0xFFFFFFE0, a2);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (data)
  {
    __dst = data;
    operator delete(data);
  }
}

void sub_185CDEE8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

CC_SHA256_CTX *updateHashWithVertexDescriptor(CC_SHA256_CTX *result, MTLVertexDescriptor *a2)
{
  if (a2)
  {
    v3 = result;
    updateHashWithAttributeDescriptorArray<MTLVertexAttributeDescriptorArrayInternal>(result, a2[2].super.isa);
    isa = a2[1].super.isa;

    return updateHashWithBufferLayoutDescriptorArray<MTLVertexBufferLayoutDescriptorArrayInternal>(v3, isa);
  }

  return result;
}

CC_SHA256_CTX *updateHashWithAttributeDescriptorArray<MTLVertexAttributeDescriptorArrayInternal>(CC_SHA256_CTX *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    v4 = 31;
    do
    {
      v5 = *(v2 + 8);
      if (v5)
      {
        data = [*(v2 + 8) format];
        CC_SHA256_Update(v3, &data, 8u);
        data = [v5 offset];
        CC_SHA256_Update(v3, &data, 8u);
        data = [v5 bufferIndex];
        result = CC_SHA256_Update(v3, &data, 8u);
      }

      v2 += 8;
      --v4;
    }

    while (v4);
  }

  return result;
}

CC_SHA256_CTX *updateHashWithBufferLayoutDescriptorArray<MTLVertexBufferLayoutDescriptorArrayInternal>(CC_SHA256_CTX *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    v4 = 31;
    do
    {
      v5 = *(v2 + 8);
      if (v5)
      {
        data = [*(v2 + 8) stepFunction];
        CC_SHA256_Update(v3, &data, 8u);
        data = [v5 stepRate];
        CC_SHA256_Update(v3, &data, 8u);
        data = [v5 stride];
        result = CC_SHA256_Update(v3, &data, 8u);
      }

      v2 += 8;
      --v4;
    }

    while (v4);
  }

  return result;
}

CC_SHA256_CTX *updateHashWithFragmentColorAttachmentDescriptorArray(CC_SHA256_CTX *result, MTL4RenderPipelineColorAttachmentDescriptorArray *a2)
{
  if (a2)
  {
    v3 = result;
    for (i = 0; i != 8; ++i)
    {
      data = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{i), "pixelFormat"}];
      CC_SHA256_Update(v3, &data, 8u);
      data = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{i), "blendingState"}];
      CC_SHA256_Update(v3, &data, 8u);
      data = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{i), "sourceRGBBlendFactor"}];
      CC_SHA256_Update(v3, &data, 8u);
      data = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{i), "sourceAlphaBlendFactor"}];
      CC_SHA256_Update(v3, &data, 8u);
      data = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{i), "destinationRGBBlendFactor"}];
      CC_SHA256_Update(v3, &data, 8u);
      data = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{i), "rgbBlendOperation"}];
      CC_SHA256_Update(v3, &data, 8u);
      data = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{i), "destinationAlphaBlendFactor"}];
      CC_SHA256_Update(v3, &data, 8u);
      data = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{i), "alphaBlendOperation"}];
      CC_SHA256_Update(v3, &data, 8u);
      data = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{i), "writeMask"}];
      result = CC_SHA256_Update(v3, &data, 8u);
    }
  }

  return result;
}

unint64_t *updateHashWithRenderLogicalToPhysicalColorAttachmentMapArray(unint64_t *result, MTLLogicalToPhysicalColorAttachmentMap *a2)
{
  if (a2)
  {
    v2 = result;
    v7 = 0;
    result = [(MTLLogicalToPhysicalColorAttachmentMap *)a2 map:&v7];
    if (v7)
    {
      v3 = result;
      v4 = 0;
      v5 = 1;
      do
      {
        LODWORD(data) = v5 - 1;
        CC_SHA256_Update(v2, &data, 4u);
        data = v3[v4];
        result = CC_SHA256_Update(v2, &data, 8u);
        v4 = v5;
      }

      while (v7 > v5++);
    }
  }

  return result;
}

uint64_t updateHashWithTileRenderPipelineColorAttachmentDescriptorArray(CC_SHA256state_st *a1, MTLTileRenderPipelineColorAttachmentDescriptorArray *a2)
{
  for (i = 0; i != 8; ++i)
  {
    data = [[(MTLTileRenderPipelineColorAttachmentDescriptorArray *)a2 objectAtIndexedSubscript:i] pixelFormat];
    result = CC_SHA256_Update(a1, &data, 8u);
  }

  return result;
}

uint64_t *generatePipelineHashWithDescriptor@<X0>(uint64_t *__return_ptr a1@<X8>, MTL4PipelineDescriptor *a2@<X0>)
{
  v14 = *MEMORY[0x1E69E9840];
  CC_SHA256_Init(&c);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    data = 0u;
    v13 = 0u;
    generateFunctionHash([(MTL4PipelineDescriptor *)a2 computeFunctionDescriptor], &data);
    CC_SHA256_Update(&c, &data, 0x20u);
    LOBYTE(v10) = [(MTL4PipelineDescriptor *)a2 threadGroupSizeIsMultipleOfThreadExecutionWidth];
    CC_SHA256_Update(&c, &v10, 1u);
    *&v10 = [(MTL4PipelineDescriptor *)a2 maxTotalThreadsPerThreadgroup];
    CC_SHA256_Update(&c, &v10, 8u);
    if (a2)
    {
      objc_msgSend_requiredThreadsPerThreadgroup(a2);
    }

    else
    {
      v10 = 0uLL;
      *&v11 = 0;
    }

    CC_SHA256_Update(&c, &v10, 0x18u);
    LOBYTE(v10) = [(MTL4PipelineDescriptor *)a2 supportBinaryLinking];
    CC_SHA256_Update(&c, &v10, 1u);
    v10 = 0u;
    v11 = 0u;
    generateStaticLinkingDescriptorHash([(MTL4PipelineDescriptor *)a2 staticLinkingDescriptor], &v10);
    CC_SHA256_Update(&c, &v10, 0x20u);
    v6 = [(MTL4PipelineDescriptor *)a2 supportIndirectCommandBuffers];
    p_data = &v6;
LABEL_14:
    CC_SHA256_Update(&c, p_data, 8u);
    return CC_SHA256_Final(a1, &c);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(MTL4PipelineDescriptor *)a2 vertexFunctionDescriptor])
    {
      data = 0u;
      v13 = 0u;
      generateFunctionHash([(MTL4PipelineDescriptor *)a2 vertexFunctionDescriptor], &data);
      CC_SHA256_Update(&c, &data, 0x20u);
      updateHashWithVertexDescriptor(&c, [(MTL4PipelineDescriptor *)a2 vertexDescriptor]);
      LOBYTE(v10) = [(MTL4PipelineDescriptor *)a2 supportVertexBinaryLinking];
      CC_SHA256_Update(&c, &v10, 1u);
      v10 = 0u;
      v11 = 0u;
      generateStaticLinkingDescriptorHash([(MTL4PipelineDescriptor *)a2 vertexStaticLinkingDescriptor], &v10);
      CC_SHA256_Update(&c, &v10, 0x20u);
    }

    if ([(MTL4PipelineDescriptor *)a2 fragmentFunctionDescriptor])
    {
      data = 0u;
      v13 = 0u;
      generateFunctionHash([(MTL4PipelineDescriptor *)a2 fragmentFunctionDescriptor], &data);
      CC_SHA256_Update(&c, &data, 0x20u);
      LOBYTE(v10) = [(MTL4PipelineDescriptor *)a2 supportFragmentBinaryLinking];
      CC_SHA256_Update(&c, &v10, 1u);
      v10 = 0u;
      v11 = 0u;
      generateStaticLinkingDescriptorHash([(MTL4PipelineDescriptor *)a2 fragmentStaticLinkingDescriptor], &v10);
      CC_SHA256_Update(&c, &v10, 0x20u);
    }

    *&v10 = [(MTL4PipelineDescriptor *)a2 supportIndirectCommandBuffers];
    CC_SHA256_Update(&c, &v10, 8u);
    *&data = [(MTL4PipelineDescriptor *)a2 rasterSampleCount];
    CC_SHA256_Update(&c, &data, 8u);
    *&data = [(MTL4PipelineDescriptor *)a2 colorSampleCount];
    CC_SHA256_Update(&c, &data, 8u);
    *&data = [(MTL4PipelineDescriptor *)a2 alphaToCoverageState];
    CC_SHA256_Update(&c, &data, 8u);
    *&data = [(MTL4PipelineDescriptor *)a2 alphaToOneState];
    CC_SHA256_Update(&c, &data, 8u);
    LOBYTE(data) = [(MTL4PipelineDescriptor *)a2 isRasterizationEnabled];
    CC_SHA256_Update(&c, &data, 1u);
    *&data = [(MTL4PipelineDescriptor *)a2 maxVertexAmplificationCount];
    CC_SHA256_Update(&c, &data, 8u);
    *&data = [(MTL4PipelineDescriptor *)a2 inputPrimitiveTopology];
    CC_SHA256_Update(&c, &data, 8u);
    *&data = [(MTL4PipelineDescriptor *)a2 colorAttachmentMappingState];
    CC_SHA256_Update(&c, &data, 8u);
    updateHashWithFragmentColorAttachmentDescriptorArray(&c, [(MTL4PipelineDescriptor *)a2 colorAttachments]);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return CC_SHA256_Final(a1, &c);
      }

      if ([(MTL4PipelineDescriptor *)a2 meshFunctionDescriptor])
      {
        data = 0u;
        v13 = 0u;
        generateFunctionHash([(MTL4PipelineDescriptor *)a2 meshFunctionDescriptor], &data);
        CC_SHA256_Update(&c, &data, 0x20u);
        LOBYTE(v10) = [(MTL4PipelineDescriptor *)a2 supportMeshBinaryLinking];
        CC_SHA256_Update(&c, &v10, 1u);
        v10 = 0u;
        v11 = 0u;
        generateStaticLinkingDescriptorHash([(MTL4PipelineDescriptor *)a2 meshStaticLinkingDescriptor], &v10);
        CC_SHA256_Update(&c, &v10, 0x20u);
        LOBYTE(v6) = [(MTL4PipelineDescriptor *)a2 isRasterizationEnabled];
        CC_SHA256_Update(&c, &v6, 1u);
        v6 = [(MTL4PipelineDescriptor *)a2 maxTotalThreadsPerMeshThreadgroup];
        CC_SHA256_Update(&c, &v6, 8u);
        LOBYTE(v6) = [(MTL4PipelineDescriptor *)a2 meshThreadgroupSizeIsMultipleOfThreadExecutionWidth];
        CC_SHA256_Update(&c, &v6, 1u);
        if (a2)
        {
          objc_msgSend_requiredThreadsPerMeshThreadgroup(a2);
        }

        else
        {
          v6 = 0;
          v7 = 0;
          v8 = 0;
        }

        CC_SHA256_Update(&c, &v6, 0x18u);
      }

      if ([(MTL4PipelineDescriptor *)a2 objectFunctionDescriptor:v6])
      {
        data = 0u;
        v13 = 0u;
        generateFunctionHash([(MTL4PipelineDescriptor *)a2 objectFunctionDescriptor], &data);
        CC_SHA256_Update(&c, &data, 0x20u);
        LOBYTE(v10) = [(MTL4PipelineDescriptor *)a2 supportObjectBinaryLinking];
        CC_SHA256_Update(&c, &v10, 1u);
        v10 = 0u;
        v11 = 0u;
        generateStaticLinkingDescriptorHash([(MTL4PipelineDescriptor *)a2 objectStaticLinkingDescriptor], &v10);
        CC_SHA256_Update(&c, &v10, 0x20u);
        LOBYTE(v6) = [(MTL4PipelineDescriptor *)a2 objectThreadgroupSizeIsMultipleOfThreadExecutionWidth];
        CC_SHA256_Update(&c, &v6, 1u);
        if (a2)
        {
          objc_msgSend_requiredThreadsPerObjectThreadgroup(a2);
        }

        else
        {
          v6 = 0;
          v7 = 0;
          v8 = 0;
        }

        CC_SHA256_Update(&c, &v6, 0x18u);
        v6 = [(MTL4PipelineDescriptor *)a2 maxTotalThreadsPerObjectThreadgroup];
        CC_SHA256_Update(&c, &v6, 8u);
      }

      if ([(MTL4PipelineDescriptor *)a2 fragmentFunctionDescriptor])
      {
        data = 0u;
        v13 = 0u;
        generateFunctionHash([(MTL4PipelineDescriptor *)a2 fragmentFunctionDescriptor], &data);
        CC_SHA256_Update(&c, &data, 0x20u);
        LOBYTE(v10) = [(MTL4PipelineDescriptor *)a2 supportFragmentBinaryLinking];
        CC_SHA256_Update(&c, &v10, 1u);
        v10 = 0u;
        v11 = 0u;
        generateStaticLinkingDescriptorHash([(MTL4PipelineDescriptor *)a2 fragmentStaticLinkingDescriptor], &v10);
        CC_SHA256_Update(&c, &v10, 0x20u);
        v6 = [(MTL4PipelineDescriptor *)a2 alphaToCoverageState];
        CC_SHA256_Update(&c, &v6, 8u);
        v6 = [(MTL4PipelineDescriptor *)a2 alphaToOneState];
        CC_SHA256_Update(&c, &v6, 8u);
        v6 = [(MTL4PipelineDescriptor *)a2 colorAttachmentMappingState];
        CC_SHA256_Update(&c, &v6, 8u);
        LOBYTE(v6) = [(MTL4PipelineDescriptor *)a2 isRasterizationEnabled];
        CC_SHA256_Update(&c, &v6, 1u);
        v6 = [(MTL4PipelineDescriptor *)a2 rasterSampleCount];
        CC_SHA256_Update(&c, &v6, 8u);
        updateHashWithFragmentColorAttachmentDescriptorArray(&c, [(MTL4PipelineDescriptor *)a2 colorAttachments]);
      }

      *&v10 = [(MTL4PipelineDescriptor *)a2 supportIndirectCommandBuffers];
      CC_SHA256_Update(&c, &v10, 8u);
      *&data = [(MTL4PipelineDescriptor *)a2 payloadMemoryLength];
      CC_SHA256_Update(&c, &data, 8u);
      *&data = [(MTL4PipelineDescriptor *)a2 maxVertexAmplificationCount];
      CC_SHA256_Update(&c, &data, 8u);
      *&data = [(MTL4PipelineDescriptor *)a2 maxTotalThreadgroupsPerMeshGrid];
      p_data = &data;
      goto LABEL_14;
    }

    data = 0u;
    v13 = 0u;
    generateFunctionHash([(MTL4PipelineDescriptor *)a2 tileFunctionDescriptor], &data);
    CC_SHA256_Update(&c, &data, 0x20u);
    LOBYTE(v10) = [(MTL4PipelineDescriptor *)a2 supportBinaryLinking];
    CC_SHA256_Update(&c, &v10, 1u);
    v10 = 0u;
    v11 = 0u;
    generateStaticLinkingDescriptorHash([(MTL4PipelineDescriptor *)a2 staticLinkingDescriptor], &v10);
    CC_SHA256_Update(&c, &v10, 0x20u);
    v6 = [(MTL4PipelineDescriptor *)a2 rasterSampleCount];
    CC_SHA256_Update(&c, &v6, 8u);
    LOBYTE(v6) = [(MTL4PipelineDescriptor *)a2 threadgroupSizeMatchesTileSize];
    CC_SHA256_Update(&c, &v6, 1u);
    v6 = [(MTL4PipelineDescriptor *)a2 maxTotalThreadsPerThreadgroup];
    CC_SHA256_Update(&c, &v6, 8u);
    updateHashWithTileRenderPipelineColorAttachmentDescriptorArray(&c, [(MTL4PipelineDescriptor *)a2 colorAttachments]);
  }

  return CC_SHA256_Final(a1, &c);
}

void std::vector<std::pair<std::string,MTLUINT256_t>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::string,MTLUINT256_t>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::string,MTLUINT256_t>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 33);
    v3 -= 7;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,MTLUINT256_t>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<std::string,MTLUINT256_t>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<std::string,MTLUINT256_t>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,MTLUINT256_t>>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 7;
      *(a1 + 16) = v2 - 7;
      if (*(v2 - 33) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *,false>(const void **a1, const void **a2, uint64_t a3, char a4)
{
  v348 = *MEMORY[0x1E69E9840];
  while (2)
  {
    v6 = a2;
    v332 = a2 - 7;
    v7 = a1;
    while (1)
    {
      while (1)
      {
        a1 = v7;
        v8 = v6 - v7;
        v9 = 0x6DB6DB6DB6DB6DB7 * (v6 - v7);
        v10 = v9 - 2;
        if (v9 > 2)
        {
          switch(v9)
          {
            case 3uLL:

              std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *,0>(v7, v7 + 7, v332);
              return;
            case 4uLL:

              std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *,0>(v7, (v7 + 7), v7 + 7, v332);
              return;
            case 5uLL:

              std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *,0>(v7, (v7 + 7), (v7 + 14), (v7 + 21), v332);
              return;
          }
        }

        else
        {
          if (v9 < 2)
          {
            return;
          }

          v6 = a2;
          if (v9 == 2)
          {
            v135 = a2 - 7;
            v136 = *(v7 + 23);
            v137 = *(a2 - 33);
            if (v137 >= 0)
            {
              v138 = *(a2 - 33);
            }

            else
            {
              v138 = *(a2 - 6);
            }

            if (v137 >= 0)
            {
              v139 = a2 - 7;
            }

            else
            {
              v139 = *(a2 - 7);
            }

            if (v136 >= 0)
            {
              v140 = *(v7 + 23);
            }

            else
            {
              v140 = v7[1];
            }

            if (v136 >= 0)
            {
              v141 = v7;
            }

            else
            {
              v141 = *v7;
            }

            if (v140 >= v138)
            {
              v142 = v138;
            }

            else
            {
              v142 = v140;
            }

            v143 = memcmp(v139, v141, v142);
            v144 = v138 < v140;
            if (v143)
            {
              v144 = v143 < 0;
            }

            if (v144)
            {
              v145 = *v7;
              *v346 = v7[2];
              *__p = v145;
              v146 = *v135;
              v7[2] = *(a2 - 5);
              *v7 = v146;
              v147 = *__p;
              *(a2 - 5) = *v346;
              *v135 = v147;
              v149 = *(v7 + 5);
              *__p = *(v7 + 3);
              v148 = *__p;
              *v346 = v149;
              v150 = *(a2 - 1);
              *(v7 + 3) = *(a2 - 2);
              *(v7 + 5) = v150;
              v151 = *v346;
              *(a2 - 2) = v148;
              *(a2 - 1) = v151;
            }

            return;
          }
        }

        if (v8 <= 1343)
        {
          if (a4)
          {
            if (v7 != v6)
            {
              v152 = v7 + 7;
              if (v7 + 7 != a2)
              {
                v153 = 0;
                v154 = v7;
                do
                {
                  v155 = v152;
                  v156 = *(v154 + 23);
                  v157 = *(v154 + 79);
                  if (v157 >= 0)
                  {
                    v158 = *(v154 + 79);
                  }

                  else
                  {
                    v158 = v154[8];
                  }

                  if (v157 >= 0)
                  {
                    v159 = v152;
                  }

                  else
                  {
                    v159 = v154[7];
                  }

                  if (v156 >= 0)
                  {
                    v160 = *(v154 + 23);
                  }

                  else
                  {
                    v160 = v154[1];
                  }

                  if (v156 >= 0)
                  {
                    v161 = v154;
                  }

                  else
                  {
                    v161 = *v154;
                  }

                  if (v160 >= v158)
                  {
                    v162 = v158;
                  }

                  else
                  {
                    v162 = v160;
                  }

                  v163 = memcmp(v159, v161, v162);
                  v164 = v158 < v160;
                  if (v163)
                  {
                    v164 = v163 < 0;
                  }

                  if (v164)
                  {
                    v165 = *v155;
                    *v346 = v155[2];
                    *__p = v165;
                    v155[1] = 0;
                    v155[2] = 0;
                    *v155 = 0;
                    v166 = *(v154 + 6);
                    *&v346[8] = *(v154 + 5);
                    v347 = v166;
                    if (v346[7] >= 0)
                    {
                      v167 = v346[7];
                    }

                    else
                    {
                      v167 = __p[1];
                    }

                    if (v346[7] >= 0)
                    {
                      v168 = __p;
                    }

                    else
                    {
                      v168 = __p[0];
                    }

                    v169 = v153;
                    while (1)
                    {
                      v170 = v169;
                      v171 = a1 + v169;
                      if (*(a1 + v169 + 79) < 0)
                      {
                        operator delete(*(v171 + 7));
                      }

                      *(v171 + 56) = *v171;
                      *(v171 + 9) = *(v171 + 2);
                      v171[23] = 0;
                      *v171 = 0;
                      v172 = *(v171 + 40);
                      *(v171 + 5) = *(v171 + 24);
                      *(v171 + 6) = v172;
                      if (!v170)
                      {
                        break;
                      }

                      v173 = *(a1 + v170 - 33);
                      if (v173 >= 0)
                      {
                        v174 = *(a1 + v170 - 33);
                      }

                      else
                      {
                        v174 = *(a1 + v170 - 48);
                      }

                      if (v173 >= 0)
                      {
                        v175 = a1 + v170 - 56;
                      }

                      else
                      {
                        v175 = *(a1 + v170 - 56);
                      }

                      if (v174 >= v167)
                      {
                        v176 = v167;
                      }

                      else
                      {
                        v176 = v174;
                      }

                      v177 = memcmp(v168, v175, v176);
                      v178 = v177 < 0;
                      if (!v177)
                      {
                        v178 = v167 < v174;
                      }

                      v169 = v170 - 56;
                      if (!v178)
                      {
                        v179 = (a1 + v170);
                        goto LABEL_309;
                      }
                    }

                    v179 = a1;
LABEL_309:
                    if (*(v179 + 23) < 0)
                    {
                      operator delete(*v179);
                    }

                    v180 = a1 + v170;
                    v181 = *__p;
                    v179[2] = *v346;
                    *v179 = v181;
                    v182 = *&v346[8];
                    *(v180 + 40) = v347;
                    *(v180 + 24) = v182;
                  }

                  v152 = v155 + 7;
                  v153 += 56;
                  v154 = v155;
                }

                while (v155 + 7 != a2);
              }
            }
          }

          else if (v7 != v6)
          {
            v293 = v7 + 7;
            if (v7 + 7 != a2)
            {
              v294 = v7 + 10;
              do
              {
                v295 = v293;
                v296 = *(a1 + 23);
                v297 = *(a1 + 79);
                if (v297 >= 0)
                {
                  v298 = *(a1 + 79);
                }

                else
                {
                  v298 = a1[8];
                }

                if (v297 >= 0)
                {
                  v299 = v293;
                }

                else
                {
                  v299 = a1[7];
                }

                if (v296 >= 0)
                {
                  v300 = *(a1 + 23);
                }

                else
                {
                  v300 = a1[1];
                }

                if (v296 >= 0)
                {
                  v301 = a1;
                }

                else
                {
                  v301 = *a1;
                }

                if (v300 >= v298)
                {
                  v302 = v298;
                }

                else
                {
                  v302 = v300;
                }

                v303 = memcmp(v299, v301, v302);
                v304 = v298 < v300;
                if (v303)
                {
                  v304 = v303 < 0;
                }

                if (v304)
                {
                  v305 = *v295;
                  *v346 = v295[2];
                  *__p = v305;
                  v295[1] = 0;
                  v295[2] = 0;
                  *v295 = 0;
                  v306 = *(a1 + 6);
                  *&v346[8] = *(a1 + 5);
                  v347 = v306;
                  if (v346[7] >= 0)
                  {
                    v307 = v346[7];
                  }

                  else
                  {
                    v307 = __p[1];
                  }

                  if (v346[7] >= 0)
                  {
                    v308 = __p;
                  }

                  else
                  {
                    v308 = __p[0];
                  }

                  v309 = v294;
                  do
                  {
                    v310 = (v309 - 3);
                    if (*(v309 - 1) < 0)
                    {
                      operator delete(*v310);
                    }

                    *v310 = *(v309 - 5);
                    *(v309 - 1) = *(v309 - 8);
                    *(v309 - 57) = 0;
                    *(v309 - 80) = 0;
                    v311 = v309 - 7;
                    v312 = *(v309 - 5);
                    *v309 = *(v309 - 7);
                    *(v309 + 1) = v312;
                    v313 = *(v309 - 113);
                    v314 = v309 - 17;
                    v315 = *(v309 - 17);
                    if (v313 >= 0)
                    {
                      v316 = *(v309 - 113);
                    }

                    else
                    {
                      v316 = *(v309 - 16);
                    }

                    if (v313 >= 0)
                    {
                      v317 = v314;
                    }

                    else
                    {
                      v317 = v315;
                    }

                    if (v316 >= v307)
                    {
                      v318 = v307;
                    }

                    else
                    {
                      v318 = v316;
                    }

                    v319 = memcmp(v308, v317, v318);
                    v320 = v307 < v316;
                    if (v319)
                    {
                      v320 = v319 < 0;
                    }

                    v309 = v311;
                  }

                  while (v320);
                  v321 = (v311 - 3);
                  if (*(v311 - 1) < 0)
                  {
                    operator delete(*v321);
                  }

                  v322 = *__p;
                  *(v311 - 1) = *v346;
                  *v321 = v322;
                  v323 = v347;
                  *v311 = *&v346[8];
                  *(v311 + 1) = v323;
                }

                v293 = v295 + 7;
                v294 += 7;
                a1 = v295;
              }

              while (v295 + 7 != a2);
            }
          }

          return;
        }

        if (!a3)
        {
          if (v7 != v6)
          {
            v324 = v8;
            v183 = v10 >> 1;
            v184 = v10 >> 1;
            v326 = a1;
            v327 = v9;
            do
            {
              v185 = v184;
              if (v183 >= v184)
              {
                v333 = v184;
                v186 = (2 * v184) | 1;
                v187 = &a1[7 * v186];
                v188 = 2 * v184 + 2;
                if (v188 >= v9)
                {
                  v198 = *v187;
                }

                else
                {
                  v189 = *(v187 + 79);
                  v325 = v187[7];
                  v190 = *(v187 + 23);
                  v330 = *v187;
                  if (v190 >= 0)
                  {
                    v191 = *(v187 + 23);
                  }

                  else
                  {
                    v191 = v187[1];
                  }

                  if (v190 >= 0)
                  {
                    v192 = &a1[7 * v186];
                  }

                  else
                  {
                    v192 = *v187;
                  }

                  if (v189 >= 0)
                  {
                    v193 = *(v187 + 79);
                  }

                  else
                  {
                    v193 = v187[8];
                  }

                  if (v189 >= 0)
                  {
                    v194 = v187 + 7;
                  }

                  else
                  {
                    v194 = v187[7];
                  }

                  if (v193 >= v191)
                  {
                    v195 = v191;
                  }

                  else
                  {
                    v195 = v193;
                  }

                  v196 = memcmp(v192, v194, v195);
                  v197 = v191 < v193;
                  if (v196)
                  {
                    v197 = v196 < 0;
                  }

                  v228 = !v197;
                  v198 = v330;
                  if (!v228)
                  {
                    v198 = v325;
                    v187 += 7;
                    v186 = v188;
                  }
                }

                v199 = &a1[7 * v333];
                v200 = *(v199 + 23);
                v201 = *(v187 + 23);
                if (v201 >= 0)
                {
                  v202 = *(v187 + 23);
                }

                else
                {
                  v202 = v187[1];
                }

                if (v201 >= 0)
                {
                  v203 = v187;
                }

                else
                {
                  v203 = v198;
                }

                if (v200 >= 0)
                {
                  v204 = *(v199 + 23);
                }

                else
                {
                  v204 = v199[1];
                }

                if (v200 >= 0)
                {
                  v205 = &a1[7 * v333];
                }

                else
                {
                  v205 = *v199;
                }

                if (v204 >= v202)
                {
                  v206 = v202;
                }

                else
                {
                  v206 = v204;
                }

                v207 = memcmp(v203, v205, v206);
                v185 = v333;
                v208 = v202 < v204;
                if (v207)
                {
                  v208 = v207 < 0;
                }

                if (!v208)
                {
                  v209 = *v199;
                  *v346 = v199[2];
                  *__p = v209;
                  v199[1] = 0;
                  v199[2] = 0;
                  *v199 = 0;
                  v210 = *(v199 + 3);
                  v347 = *(v199 + 5);
                  *&v346[8] = v210;
                  do
                  {
                    v211 = v187;
                    if (*(v199 + 23) < 0)
                    {
                      operator delete(*v199);
                    }

                    v212 = *v187;
                    v199[2] = v187[2];
                    *v199 = v212;
                    *(v187 + 23) = 0;
                    *v187 = 0;
                    v213 = *(v187 + 3);
                    *(v199 + 5) = *(v187 + 5);
                    *(v199 + 3) = v213;
                    if (v183 < v186)
                    {
                      break;
                    }

                    v214 = (2 * v186) | 1;
                    v187 = &a1[7 * v214];
                    v186 = 2 * v186 + 2;
                    if (v186 >= v9)
                    {
                      v229 = *v187;
                      v186 = v214;
                    }

                    else
                    {
                      v215 = *(v187 + 79);
                      v216 = v187[7];
                      v217 = *(v187 + 23);
                      v218 = *v187;
                      if (v217 >= 0)
                      {
                        v219 = *(v187 + 23);
                      }

                      else
                      {
                        v219 = v187[1];
                      }

                      if (v217 >= 0)
                      {
                        v220 = &a1[7 * v214];
                      }

                      else
                      {
                        v220 = *v187;
                      }

                      v221 = v183;
                      if (v215 >= 0)
                      {
                        v222 = *(v187 + 79);
                      }

                      else
                      {
                        v222 = v187[8];
                      }

                      if (v215 >= 0)
                      {
                        v223 = v187 + 7;
                      }

                      else
                      {
                        v223 = v187[7];
                      }

                      if (v222 >= v219)
                      {
                        v224 = v219;
                      }

                      else
                      {
                        v224 = v222;
                      }

                      v225 = memcmp(v220, v223, v224);
                      v226 = v219 >= v222;
                      v183 = v221;
                      v227 = !v226;
                      if (v225)
                      {
                        v227 = v225 < 0;
                      }

                      v228 = !v227;
                      v229 = (v227 ? v216 : v218);
                      a1 = v326;
                      v9 = v327;
                      if (v228)
                      {
                        v186 = v214;
                      }

                      else
                      {
                        v187 += 7;
                      }
                    }

                    v230 = *(v187 + 23);
                    if (v230 >= 0)
                    {
                      v231 = *(v187 + 23);
                    }

                    else
                    {
                      v231 = v187[1];
                    }

                    if (v230 >= 0)
                    {
                      v232 = v187;
                    }

                    else
                    {
                      v232 = v229;
                    }

                    if (v346[7] >= 0)
                    {
                      v233 = v346[7];
                    }

                    else
                    {
                      v233 = __p[1];
                    }

                    if (v346[7] >= 0)
                    {
                      v234 = __p;
                    }

                    else
                    {
                      v234 = __p[0];
                    }

                    if (v233 >= v231)
                    {
                      v235 = v231;
                    }

                    else
                    {
                      v235 = v233;
                    }

                    v236 = memcmp(v232, v234, v235);
                    v237 = v231 < v233;
                    if (v236)
                    {
                      v237 = v236 < 0;
                    }

                    v199 = v211;
                  }

                  while (!v237);
                  if (*(v211 + 23) < 0)
                  {
                    operator delete(*v211);
                  }

                  v238 = *__p;
                  v211[2] = *v346;
                  *v211 = v238;
                  v239 = *&v346[8];
                  *(v211 + 5) = v347;
                  *(v211 + 3) = v239;
                  v185 = v333;
                }
              }

              v184 = v185 - 1;
            }

            while (v185);
            v240 = 0x6DB6DB6DB6DB6DB7 * (v324 >> 3);
            do
            {
              v241 = 0;
              v328 = a2;
              v331 = *a1;
              *v336 = a1[1];
              *&v336[7] = *(a1 + 15);
              v334 = *(a1 + 23);
              a1[1] = 0;
              a1[2] = 0;
              *a1 = 0;
              v242 = a1;
              v339 = *(a1 + 3);
              v344 = *(a1 + 5);
              do
              {
                v243 = &v242[7 * v241];
                v244 = v243 + 7;
                v245 = (2 * v241) | 1;
                v241 = 2 * v241 + 2;
                if (v241 >= v240)
                {
                  v241 = v245;
                }

                else
                {
                  v248 = v243[14];
                  v247 = v243 + 14;
                  v246 = v248;
                  v249 = *(v247 + 23);
                  v250 = *(v247 - 33);
                  if (v250 >= 0)
                  {
                    v251 = *(v247 - 33);
                  }

                  else
                  {
                    v251 = *(v247 - 6);
                  }

                  if (v250 >= 0)
                  {
                    v252 = v244;
                  }

                  else
                  {
                    v252 = *(v247 - 7);
                  }

                  if (v249 >= 0)
                  {
                    v253 = *(v247 + 23);
                  }

                  else
                  {
                    v253 = v247[1];
                  }

                  if (v249 >= 0)
                  {
                    v254 = v247;
                  }

                  else
                  {
                    v254 = v246;
                  }

                  if (v253 >= v251)
                  {
                    v255 = v251;
                  }

                  else
                  {
                    v255 = v253;
                  }

                  v256 = memcmp(v252, v254, v255);
                  v257 = v251 < v253;
                  if (v256)
                  {
                    v257 = v256 < 0;
                  }

                  if (v257)
                  {
                    v244 = v247;
                  }

                  else
                  {
                    v241 = v245;
                  }
                }

                if (*(v242 + 23) < 0)
                {
                  operator delete(*v242);
                }

                v258 = *v244;
                v242[2] = v244[2];
                *v242 = v258;
                *(v244 + 23) = 0;
                *v244 = 0;
                v259 = *(v244 + 3);
                *(v242 + 5) = *(v244 + 5);
                *(v242 + 3) = v259;
                v242 = v244;
              }

              while (v241 <= ((v240 - 2) >> 1));
              v260 = a2 - 7;
              v261 = *(v244 + 23);
              a2 -= 7;
              if (v244 == v328 - 7)
              {
                if (v261 < 0)
                {
                  operator delete(*v244);
                }

                *v244 = v331;
                *(v244 + 15) = *&v336[7];
                v244[1] = *v336;
                *(v244 + 23) = v334;
                *(v244 + 3) = v339;
                *(v244 + 5) = v344;
              }

              else
              {
                if (v261 < 0)
                {
                  operator delete(*v244);
                }

                v262 = *v260;
                v244[2] = v260[2];
                *v244 = v262;
                *(v328 - 33) = 0;
                *(v328 - 56) = 0;
                v263 = *(v328 - 2);
                *(v244 + 5) = *(v328 - 1);
                *(v244 + 3) = v263;
                if (*(v328 - 33) < 0)
                {
                  operator delete(*v260);
                }

                v264 = v328 - 4;
                *(v328 - 7) = v331;
                *(v328 - 41) = *&v336[7];
                *(v328 - 6) = *v336;
                *(v328 - 33) = v334;
                *v264 = v339;
                *(v264 + 1) = v344;
                v265 = (v244 + 7) - a1;
                if (v265 >= 57)
                {
                  v266 = (0x6DB6DB6DB6DB6DB7 * (v265 >> 3) - 2) >> 1;
                  v267 = &a1[7 * v266];
                  v268 = *(v244 + 23);
                  v269 = *(v267 + 23);
                  if (v269 >= 0)
                  {
                    v270 = *(v267 + 23);
                  }

                  else
                  {
                    v270 = v267[1];
                  }

                  if (v269 >= 0)
                  {
                    v271 = &a1[7 * v266];
                  }

                  else
                  {
                    v271 = *v267;
                  }

                  if (v268 >= 0)
                  {
                    v272 = *(v244 + 23);
                  }

                  else
                  {
                    v272 = v244[1];
                  }

                  if (v268 >= 0)
                  {
                    v273 = v244;
                  }

                  else
                  {
                    v273 = *v244;
                  }

                  if (v272 >= v270)
                  {
                    v274 = v270;
                  }

                  else
                  {
                    v274 = v272;
                  }

                  v275 = memcmp(v271, v273, v274);
                  v276 = v270 < v272;
                  if (v275)
                  {
                    v276 = v275 < 0;
                  }

                  if (v276)
                  {
                    v277 = *v244;
                    *v346 = v244[2];
                    *__p = v277;
                    v244[1] = 0;
                    v244[2] = 0;
                    *v244 = 0;
                    v278 = *(v244 + 5);
                    *&v346[8] = *(v244 + 3);
                    v347 = v278;
                    if (v346[7] >= 0)
                    {
                      v279 = v346[7];
                    }

                    else
                    {
                      v279 = __p[1];
                    }

                    if (v346[7] >= 0)
                    {
                      v280 = __p;
                    }

                    else
                    {
                      v280 = __p[0];
                    }

                    do
                    {
                      v281 = v267;
                      if (*(v244 + 23) < 0)
                      {
                        operator delete(*v244);
                      }

                      v282 = *v267;
                      v244[2] = v267[2];
                      *v244 = v282;
                      *(v267 + 23) = 0;
                      *v267 = 0;
                      v283 = *(v267 + 3);
                      *(v244 + 5) = *(v267 + 5);
                      *(v244 + 3) = v283;
                      if (!v266)
                      {
                        break;
                      }

                      v266 = (v266 - 1) >> 1;
                      v267 = &a1[7 * v266];
                      v284 = *(v267 + 23);
                      if (v284 >= 0)
                      {
                        v285 = *(v267 + 23);
                      }

                      else
                      {
                        v285 = v267[1];
                      }

                      if (v284 >= 0)
                      {
                        v286 = &a1[7 * v266];
                      }

                      else
                      {
                        v286 = *v267;
                      }

                      if (v279 >= v285)
                      {
                        v287 = v285;
                      }

                      else
                      {
                        v287 = v279;
                      }

                      v288 = memcmp(v286, v280, v287);
                      v289 = v285 < v279;
                      if (v288)
                      {
                        v289 = v288 < 0;
                      }

                      v244 = v281;
                    }

                    while (v289);
                    if (*(v281 + 23) < 0)
                    {
                      operator delete(*v281);
                    }

                    v290 = *__p;
                    v281[2] = *v346;
                    *v281 = v290;
                    v291 = *&v346[8];
                    *(v281 + 5) = v347;
                    *(v281 + 3) = v291;
                  }
                }
              }
            }

            while (v240-- > 2);
          }

          return;
        }

        v11 = &v7[7 * (v9 >> 1)];
        if (v8 < 0x1C01)
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *,0>(&a1[7 * (v9 >> 1)], a1, v332);
        }

        else
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *,0>(a1, &a1[7 * (v9 >> 1)], v332);
          v12 = 7 * (v9 >> 1);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *,0>(a1 + 7, &a1[v12 - 7], a2 - 14);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *,0>(a1 + 14, &a1[v12 + 7], a2 - 21);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *,0>(&a1[v12 - 7], &a1[v12], &a1[v12 + 7]);
          v13 = *a1;
          *v346 = a1[2];
          *__p = v13;
          v14 = v11[2];
          *a1 = *v11;
          a1[2] = v14;
          v15 = *__p;
          v11[2] = *v346;
          *v11 = v15;
          v17 = *(a1 + 5);
          *__p = *(a1 + 3);
          v16 = *__p;
          *v346 = v17;
          v18 = *(v11 + 5);
          *(a1 + 3) = *(v11 + 3);
          *(a1 + 5) = v18;
          *(v11 + 5) = *v346;
          *(v11 + 3) = v16;
        }

        --a3;
        if (a4)
        {
          break;
        }

        v19 = *(a1 + 23);
        v20 = *(a1 - 33);
        if (v20 >= 0)
        {
          v21 = *(a1 - 33);
        }

        else
        {
          v21 = *(a1 - 6);
        }

        if (v20 >= 0)
        {
          v22 = a1 - 7;
        }

        else
        {
          v22 = *(a1 - 7);
        }

        if (v19 >= 0)
        {
          v23 = *(a1 + 23);
        }

        else
        {
          v23 = a1[1];
        }

        if (v19 >= 0)
        {
          v24 = a1;
        }

        else
        {
          v24 = *a1;
        }

        if (v23 >= v21)
        {
          v25 = v21;
        }

        else
        {
          v25 = v23;
        }

        v26 = memcmp(v22, v24, v25);
        v27 = v21 < v23;
        if (v26)
        {
          v27 = v26 < 0;
        }

        if (v27)
        {
          break;
        }

        v80 = *a1;
        *v346 = a1[2];
        *__p = v80;
        a1[1] = 0;
        a1[2] = 0;
        *a1 = 0;
        v81 = *(a1 + 5);
        *&v346[8] = *(a1 + 3);
        v347 = v81;
        v82 = *(v6 - 33);
        if (v346[7] >= 0)
        {
          v83 = v346[7];
        }

        else
        {
          v83 = __p[1];
        }

        if (v346[7] >= 0)
        {
          v84 = __p;
        }

        else
        {
          v84 = __p[0];
        }

        if (v82 >= 0)
        {
          v85 = *(v6 - 33);
        }

        else
        {
          v85 = *(v6 - 6);
        }

        if (v82 >= 0)
        {
          v86 = a2 - 7;
        }

        else
        {
          v86 = *(v6 - 7);
        }

        if (v85 >= v83)
        {
          v87 = v83;
        }

        else
        {
          v87 = v85;
        }

        v88 = memcmp(v84, v86, v87);
        v89 = v83 < v85;
        if (v88)
        {
          v89 = v88 < 0;
        }

        if (v89)
        {
          v90 = a1 + 7;
          do
          {
            v91 = *(v90 + 23);
            if (v91 >= 0)
            {
              v92 = *(v90 + 23);
            }

            else
            {
              v92 = v90[1];
            }

            if (v91 >= 0)
            {
              v93 = v90;
            }

            else
            {
              v93 = *v90;
            }

            if (v92 >= v83)
            {
              v94 = v83;
            }

            else
            {
              v94 = v92;
            }

            v95 = memcmp(v84, v93, v94);
            v96 = v83 < v92;
            if (v95)
            {
              v96 = v95 < 0;
            }

            v90 += 7;
          }

          while (!v96);
          v7 = v90 - 7;
        }

        else
        {
          v97 = a1 + 7;
          do
          {
            v7 = v97;
            if (v97 >= v6)
            {
              break;
            }

            v98 = *(v97 + 23);
            if (v98 >= 0)
            {
              v99 = *(v97 + 23);
            }

            else
            {
              v99 = v97[1];
            }

            if (v98 >= 0)
            {
              v100 = v97;
            }

            else
            {
              v100 = *v97;
            }

            if (v99 >= v83)
            {
              v101 = v83;
            }

            else
            {
              v101 = v99;
            }

            v102 = memcmp(v84, v100, v101);
            v103 = v102 < 0;
            if (!v102)
            {
              v103 = v83 < v99;
            }

            v97 = v7 + 7;
          }

          while (!v103);
        }

        v104 = v6;
        if (v7 < v6)
        {
          v105 = a2 - 7;
          do
          {
            v106 = *(v105 + 23);
            if (v106 >= 0)
            {
              v107 = *(v105 + 23);
            }

            else
            {
              v107 = v105[1];
            }

            if (v106 >= 0)
            {
              v108 = v105;
            }

            else
            {
              v108 = *v105;
            }

            if (v107 >= v83)
            {
              v109 = v83;
            }

            else
            {
              v109 = v107;
            }

            v110 = memcmp(v84, v108, v109);
            v111 = v83 < v107;
            if (v110)
            {
              v111 = v110 < 0;
            }

            v105 -= 7;
          }

          while (v111);
          goto LABEL_190;
        }

        while (v7 < v104)
        {
          v342 = v7[2];
          v338 = *v7;
          v112 = *v104;
          v7[2] = v104[2];
          *v7 = v112;
          v104[2] = v342;
          *v104 = v338;
          v113 = *(v7 + 3);
          v343 = *(v7 + 5);
          v114 = *(v104 + 5);
          *(v7 + 3) = *(v104 + 3);
          *(v7 + 5) = v114;
          *(v104 + 3) = v113;
          *(v104 + 5) = v343;
          if (v346[7] >= 0)
          {
            v115 = v346[7];
          }

          else
          {
            v115 = __p[1];
          }

          if (v346[7] >= 0)
          {
            v116 = __p;
          }

          else
          {
            v116 = __p[0];
          }

          v117 = v7 + 7;
          do
          {
            v118 = *(v117 + 23);
            if (v118 >= 0)
            {
              v119 = *(v117 + 23);
            }

            else
            {
              v119 = v117[1];
            }

            if (v118 >= 0)
            {
              v120 = v117;
            }

            else
            {
              v120 = *v117;
            }

            if (v119 >= v115)
            {
              v121 = v115;
            }

            else
            {
              v121 = v119;
            }

            v122 = memcmp(v116, v120, v121);
            v123 = v115 < v119;
            if (v122)
            {
              v123 = v122 < 0;
            }

            v117 += 7;
          }

          while (!v123);
          v7 = v117 - 7;
          v105 = v104 - 7;
          do
          {
            v124 = *(v105 + 23);
            if (v124 >= 0)
            {
              v125 = *(v105 + 23);
            }

            else
            {
              v125 = v105[1];
            }

            if (v124 >= 0)
            {
              v126 = v105;
            }

            else
            {
              v126 = *v105;
            }

            if (v125 >= v115)
            {
              v127 = v115;
            }

            else
            {
              v127 = v125;
            }

            v128 = memcmp(v116, v126, v127);
            v129 = v115 < v125;
            if (v128)
            {
              v129 = v128 < 0;
            }

            v105 -= 7;
          }

          while (v129);
LABEL_190:
          v104 = v105 + 7;
        }

        v130 = (v7 - 7);
        if (v7 - 7 != a1)
        {
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v131 = *v130;
          a1[2] = *(v7 - 5);
          *a1 = v131;
          *(v7 - 33) = 0;
          *(v7 - 56) = 0;
          v132 = *(v7 - 2);
          *(a1 + 5) = *(v7 - 1);
          *(a1 + 3) = v132;
        }

        if (*(v7 - 33) < 0)
        {
          operator delete(*v130);
        }

        v133 = *__p;
        *(v7 - 5) = *v346;
        *v130 = v133;
        v346[7] = 0;
        LOBYTE(__p[0]) = 0;
        v134 = v347;
        *(v7 - 2) = *&v346[8];
        *(v7 - 1) = v134;
        if ((v346[7] & 0x80000000) != 0)
        {
          operator delete(__p[0]);
        }

LABEL_129:
        a4 = 0;
      }

      v28 = 0;
      v29 = *a1;
      *v346 = a1[2];
      *__p = v29;
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 0;
      v30 = *(a1 + 5);
      *&v346[8] = *(a1 + 3);
      v347 = v30;
      if (v346[7] >= 0)
      {
        v31 = v346[7];
      }

      else
      {
        v31 = __p[1];
      }

      if (v346[7] >= 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __p[0];
      }

      do
      {
        v33 = SHIBYTE(a1[v28 + 9]);
        if (v33 >= 0)
        {
          v34 = HIBYTE(a1[v28 + 9]);
        }

        else
        {
          v34 = a1[v28 + 8];
        }

        if (v33 >= 0)
        {
          v35 = &a1[v28 + 7];
        }

        else
        {
          v35 = a1[v28 + 7];
        }

        if (v31 >= v34)
        {
          v36 = v34;
        }

        else
        {
          v36 = v31;
        }

        v37 = memcmp(v35, v32, v36);
        v38 = v34 < v31;
        if (v37)
        {
          v38 = v37 < 0;
        }

        v28 += 7;
      }

      while (v38);
      v39 = &a1[v28];
      v40 = a2 - 7;
      if (v28 == 7)
      {
        v40 = a2 - 7;
        while (1)
        {
          v47 = v40 + 7;
          if (v39 >= v40 + 7)
          {
            break;
          }

          v48 = *(v40 + 23);
          if (v48 >= 0)
          {
            v49 = *(v40 + 23);
          }

          else
          {
            v49 = v40[1];
          }

          if (v48 >= 0)
          {
            v50 = v40;
          }

          else
          {
            v50 = *v40;
          }

          if (v31 >= v49)
          {
            v51 = v49;
          }

          else
          {
            v51 = v31;
          }

          v52 = memcmp(v50, v32, v51);
          v53 = v49 < v31;
          if (v52)
          {
            v53 = v52 < 0;
          }

          v40 -= 7;
          if (v53)
          {
            goto LABEL_80;
          }
        }
      }

      else
      {
        do
        {
          v41 = *(v40 + 23);
          if (v41 >= 0)
          {
            v42 = *(v40 + 23);
          }

          else
          {
            v42 = v40[1];
          }

          if (v41 >= 0)
          {
            v43 = v40;
          }

          else
          {
            v43 = *v40;
          }

          if (v31 >= v42)
          {
            v44 = v42;
          }

          else
          {
            v44 = v31;
          }

          v45 = memcmp(v43, v32, v44);
          v46 = v42 < v31;
          if (v45)
          {
            v46 = v45 < 0;
          }

          v40 -= 7;
        }

        while (!v46);
LABEL_80:
        v47 = v40 + 7;
      }

      v7 = v39;
      if (v39 < v47)
      {
        v54 = v47;
        do
        {
          v340 = v7[2];
          v337 = *v7;
          v55 = *v54;
          v7[2] = *(v54 + 16);
          *v7 = v55;
          *(v54 + 16) = v340;
          *v54 = v337;
          v56 = *(v7 + 3);
          v341 = *(v7 + 5);
          v57 = *(v54 + 40);
          *(v7 + 3) = *(v54 + 24);
          *(v7 + 5) = v57;
          *(v54 + 24) = v56;
          *(v54 + 40) = v341;
          if (v346[7] >= 0)
          {
            v58 = v346[7];
          }

          else
          {
            v58 = __p[1];
          }

          if (v346[7] >= 0)
          {
            v59 = __p;
          }

          else
          {
            v59 = __p[0];
          }

          v60 = v7 + 7;
          do
          {
            v61 = *(v60 + 23);
            if (v61 >= 0)
            {
              v62 = *(v60 + 23);
            }

            else
            {
              v62 = v60[1];
            }

            if (v61 >= 0)
            {
              v63 = v60;
            }

            else
            {
              v63 = *v60;
            }

            if (v58 >= v62)
            {
              v64 = v62;
            }

            else
            {
              v64 = v58;
            }

            v65 = memcmp(v63, v59, v64);
            v66 = v62 < v58;
            if (v65)
            {
              v66 = v65 < 0;
            }

            v60 += 7;
          }

          while (v66);
          v7 = v60 - 7;
          v67 = (v54 - 56);
          do
          {
            v68 = *(v67 + 23);
            if (v68 >= 0)
            {
              v69 = *(v67 + 23);
            }

            else
            {
              v69 = v67[1];
            }

            if (v68 >= 0)
            {
              v70 = v67;
            }

            else
            {
              v70 = *v67;
            }

            if (v58 >= v69)
            {
              v71 = v69;
            }

            else
            {
              v71 = v58;
            }

            v72 = memcmp(v70, v59, v71);
            v73 = v69 < v58;
            if (v72)
            {
              v73 = v72 < 0;
            }

            v67 -= 7;
          }

          while (!v73);
          v54 = (v67 + 7);
        }

        while (v7 < v54);
        v6 = a2;
      }

      v74 = (v7 - 7);
      if (v7 - 7 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v75 = *v74;
        a1[2] = *(v7 - 5);
        *a1 = v75;
        *(v7 - 33) = 0;
        *(v7 - 56) = 0;
        v76 = *(v7 - 2);
        *(a1 + 5) = *(v7 - 1);
        *(a1 + 3) = v76;
      }

      if (*(v7 - 33) < 0)
      {
        operator delete(*v74);
      }

      v77 = *__p;
      *(v7 - 5) = *v346;
      *v74 = v77;
      v346[7] = 0;
      LOBYTE(__p[0]) = 0;
      v78 = v347;
      *(v7 - 2) = *&v346[8];
      *(v7 - 1) = v78;
      if ((v346[7] & 0x80000000) != 0)
      {
        operator delete(__p[0]);
      }

      if (v39 < v47)
      {
LABEL_128:
        std::__introsort<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *,false>(a1, v7 - 7, a3, a4 & 1);
        goto LABEL_129;
      }

      v79 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *>(a1, v7 - 7);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *>(v7, v6))
      {
        break;
      }

      if (!v79)
      {
        goto LABEL_128;
      }
    }

    a2 = v7 - 7;
    if (!v79)
    {
      continue;
    }

    break;
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *,0>(const void **a1, const void **a2, const void **a3)
{
  v6 = *(a1 + 23);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = a1[1];
  }

  if (v6 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(v9, v11, v12);
  if (v13)
  {
    v14 = v13 < 0;
  }

  else
  {
    v14 = v8 < v10;
  }

  v15 = *(a3 + 23);
  if (v15 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = a3[1];
  }

  if (v15 >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if (v8 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v8;
  }

  result = memcmp(v17, v9, v18);
  v20 = v16 < v8;
  if (result)
  {
    v20 = result < 0;
  }

  if (v14)
  {
    if (v20)
    {
      v21 = a1[2];
      v22 = *a1;
      v23 = a3[2];
      *a1 = *a3;
      a1[2] = v23;
      *a3 = v22;
      a3[2] = v21;
      v24 = *(a1 + 5);
      v25 = *(a1 + 3);
      v26 = *(a3 + 5);
      *(a1 + 3) = *(a3 + 3);
      *(a1 + 5) = v26;
LABEL_72:
      *(a3 + 3) = v25;
      *(a3 + 5) = v24;
      return result;
    }

    v47 = a1[2];
    v48 = *a1;
    v49 = a2[2];
    *a1 = *a2;
    a1[2] = v49;
    *a2 = v48;
    a2[2] = v47;
    v50 = *(a1 + 5);
    v51 = *(a1 + 3);
    v52 = *(a2 + 5);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 5) = v52;
    *(a2 + 3) = v51;
    *(a2 + 5) = v50;
    v53 = *(a2 + 23);
    v54 = *(a3 + 23);
    if (v54 >= 0)
    {
      v55 = *(a3 + 23);
    }

    else
    {
      v55 = a3[1];
    }

    if (v54 >= 0)
    {
      v56 = a3;
    }

    else
    {
      v56 = *a3;
    }

    if (v53 >= 0)
    {
      v57 = *(a2 + 23);
    }

    else
    {
      v57 = a2[1];
    }

    if (v53 >= 0)
    {
      v58 = a2;
    }

    else
    {
      v58 = *a2;
    }

    if (v57 >= v55)
    {
      v59 = v55;
    }

    else
    {
      v59 = v57;
    }

    result = memcmp(v56, v58, v59);
    v60 = v55 < v57;
    if (result)
    {
      v60 = result < 0;
    }

    if (v60)
    {
      v61 = a2[2];
      v62 = *a2;
      v63 = a3[2];
      *a2 = *a3;
      a2[2] = v63;
      *a3 = v62;
      a3[2] = v61;
      v24 = *(a2 + 5);
      v25 = *(a2 + 3);
      v64 = *(a3 + 5);
      *(a2 + 3) = *(a3 + 3);
      *(a2 + 5) = v64;
      goto LABEL_72;
    }
  }

  else if (v20)
  {
    v27 = a2[2];
    v28 = *a2;
    v29 = a3[2];
    *a2 = *a3;
    a2[2] = v29;
    *a3 = v28;
    a3[2] = v27;
    v30 = *(a2 + 5);
    v31 = *(a2 + 3);
    v32 = *(a3 + 5);
    *(a2 + 3) = *(a3 + 3);
    *(a2 + 5) = v32;
    *(a3 + 3) = v31;
    *(a3 + 5) = v30;
    v33 = *(a1 + 23);
    v34 = *(a2 + 23);
    if (v34 >= 0)
    {
      v35 = *(a2 + 23);
    }

    else
    {
      v35 = a2[1];
    }

    if (v34 >= 0)
    {
      v36 = a2;
    }

    else
    {
      v36 = *a2;
    }

    if (v33 >= 0)
    {
      v37 = *(a1 + 23);
    }

    else
    {
      v37 = a1[1];
    }

    if (v33 >= 0)
    {
      v38 = a1;
    }

    else
    {
      v38 = *a1;
    }

    if (v37 >= v35)
    {
      v39 = v35;
    }

    else
    {
      v39 = v37;
    }

    result = memcmp(v36, v38, v39);
    v40 = v35 < v37;
    if (result)
    {
      v40 = result < 0;
    }

    if (v40)
    {
      v41 = a1[2];
      v42 = *a1;
      v43 = a2[2];
      *a1 = *a2;
      a1[2] = v43;
      *a2 = v42;
      a2[2] = v41;
      v44 = *(a1 + 5);
      v45 = *(a1 + 3);
      v46 = *(a2 + 5);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 5) = v46;
      *(a2 + 3) = v45;
      *(a2 + 5) = v44;
    }
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *,0>(__int128 *a1, __int128 *a2, __int128 *a3, const void **a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *,0>(a1, a2, a3);
  v8 = *(a3 + 23);
  v9 = *(a4 + 23);
  if (v9 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  if (v9 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  if (v8 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 1);
  }

  if (v8 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  v15 = memcmp(v11, v13, v14);
  v17 = v10 < v12;
  if (v15)
  {
    v17 = v15 < 0;
  }

  if (v17)
  {
    v18 = *(a3 + 2);
    v19 = *a3;
    v20 = a4[2];
    *a3 = *a4;
    *(a3 + 2) = v20;
    *a4 = v19;
    a4[2] = v18;
    v21 = *(a3 + 40);
    v22 = *(a3 + 24);
    v23 = *(a4 + 5);
    *(a3 + 24) = *(a4 + 3);
    *(a3 + 40) = v23;
    *(a4 + 3) = v22;
    *(a4 + 5) = v21;
    v24 = *(a2 + 23);
    v25 = *(a3 + 23);
    if (v25 >= 0)
    {
      v26 = *(a3 + 23);
    }

    else
    {
      v26 = *(a3 + 1);
    }

    if (v25 >= 0)
    {
      v27 = a3;
    }

    else
    {
      v27 = *a3;
    }

    if (v24 >= 0)
    {
      v28 = *(a2 + 23);
    }

    else
    {
      v28 = *(a2 + 1);
    }

    if (v24 >= 0)
    {
      v29 = a2;
    }

    else
    {
      v29 = *a2;
    }

    if (v28 >= v26)
    {
      v30 = v26;
    }

    else
    {
      v30 = v28;
    }

    v31 = memcmp(v27, v29, v30);
    v32 = v26 < v28;
    if (v31)
    {
      v32 = v31 < 0;
    }

    if (v32)
    {
      v33 = *(a2 + 2);
      v34 = *a2;
      v35 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v35;
      *a3 = v34;
      *(a3 + 2) = v33;
      v36 = *(a2 + 40);
      v37 = *(a2 + 24);
      v38 = *(a3 + 40);
      *(a2 + 24) = *(a3 + 24);
      *(a2 + 40) = v38;
      *(a3 + 24) = v37;
      *(a3 + 40) = v36;
      v39 = *(a1 + 23);
      v40 = *(a2 + 23);
      if (v40 >= 0)
      {
        v41 = *(a2 + 23);
      }

      else
      {
        v41 = *(a2 + 1);
      }

      if (v40 >= 0)
      {
        v42 = a2;
      }

      else
      {
        v42 = *a2;
      }

      if (v39 >= 0)
      {
        v43 = *(a1 + 23);
      }

      else
      {
        v43 = *(a1 + 1);
      }

      if (v39 >= 0)
      {
        v44 = a1;
      }

      else
      {
        v44 = *a1;
      }

      if (v43 >= v41)
      {
        v45 = v41;
      }

      else
      {
        v45 = v43;
      }

      v46 = memcmp(v42, v44, v45);
      v47 = v41 < v43;
      if (v46)
      {
        v47 = v46 < 0;
      }

      if (v47)
      {
        v48 = *(a1 + 2);
        v49 = *a1;
        v50 = *(a2 + 2);
        *a1 = *a2;
        *(a1 + 2) = v50;
        *a2 = v49;
        *(a2 + 2) = v48;
        result = *(a1 + 40);
        v51 = *(a1 + 24);
        v52 = *(a2 + 40);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 40) = v52;
        *(a2 + 24) = v51;
        *(a2 + 40) = result;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, const void **a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *,0>(a1, a2, a3, a4);
  v10 = *(a4 + 23);
  v11 = *(a5 + 23);
  if (v11 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  if (v11 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  if (v10 >= 0)
  {
    v14 = *(a4 + 23);
  }

  else
  {
    v14 = *(a4 + 1);
  }

  if (v10 >= 0)
  {
    v15 = a4;
  }

  else
  {
    v15 = *a4;
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  v19 = v12 < v14;
  if (v17)
  {
    v19 = v17 < 0;
  }

  if (v19)
  {
    v20 = *(a4 + 2);
    v21 = *a4;
    v22 = a5[2];
    *a4 = *a5;
    *(a4 + 2) = v22;
    *a5 = v21;
    a5[2] = v20;
    v23 = *(a4 + 40);
    v24 = *(a4 + 24);
    v25 = *(a5 + 5);
    *(a4 + 24) = *(a5 + 3);
    *(a4 + 40) = v25;
    *(a5 + 3) = v24;
    *(a5 + 5) = v23;
    v26 = *(a3 + 23);
    v27 = *(a4 + 23);
    if (v27 >= 0)
    {
      v28 = *(a4 + 23);
    }

    else
    {
      v28 = *(a4 + 1);
    }

    if (v27 >= 0)
    {
      v29 = a4;
    }

    else
    {
      v29 = *a4;
    }

    if (v26 >= 0)
    {
      v30 = *(a3 + 23);
    }

    else
    {
      v30 = *(a3 + 8);
    }

    if (v26 >= 0)
    {
      v31 = a3;
    }

    else
    {
      v31 = *a3;
    }

    if (v30 >= v28)
    {
      v32 = v28;
    }

    else
    {
      v32 = v30;
    }

    v33 = memcmp(v29, v31, v32);
    v34 = v28 < v30;
    if (v33)
    {
      v34 = v33 < 0;
    }

    if (v34)
    {
      v35 = *(a3 + 16);
      v36 = *a3;
      v37 = *(a4 + 2);
      *a3 = *a4;
      *(a3 + 16) = v37;
      *a4 = v36;
      *(a4 + 2) = v35;
      v38 = *(a3 + 40);
      v39 = *(a3 + 24);
      v40 = *(a4 + 40);
      *(a3 + 24) = *(a4 + 24);
      *(a3 + 40) = v40;
      *(a4 + 24) = v39;
      *(a4 + 40) = v38;
      v41 = *(a2 + 23);
      v42 = *(a3 + 23);
      if (v42 >= 0)
      {
        v43 = *(a3 + 23);
      }

      else
      {
        v43 = *(a3 + 8);
      }

      if (v42 >= 0)
      {
        v44 = a3;
      }

      else
      {
        v44 = *a3;
      }

      if (v41 >= 0)
      {
        v45 = *(a2 + 23);
      }

      else
      {
        v45 = *(a2 + 8);
      }

      if (v41 >= 0)
      {
        v46 = a2;
      }

      else
      {
        v46 = *a2;
      }

      if (v45 >= v43)
      {
        v47 = v43;
      }

      else
      {
        v47 = v45;
      }

      v48 = memcmp(v44, v46, v47);
      v49 = v43 < v45;
      if (v48)
      {
        v49 = v48 < 0;
      }

      if (v49)
      {
        v50 = *(a2 + 16);
        v51 = *a2;
        v52 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v52;
        *a3 = v51;
        *(a3 + 16) = v50;
        v53 = *(a2 + 40);
        v54 = *(a2 + 24);
        v55 = *(a3 + 40);
        *(a2 + 24) = *(a3 + 24);
        *(a2 + 40) = v55;
        *(a3 + 24) = v54;
        *(a3 + 40) = v53;
        v56 = *(a1 + 23);
        v57 = *(a2 + 23);
        if (v57 >= 0)
        {
          v58 = *(a2 + 23);
        }

        else
        {
          v58 = *(a2 + 8);
        }

        if (v57 >= 0)
        {
          v59 = a2;
        }

        else
        {
          v59 = *a2;
        }

        if (v56 >= 0)
        {
          v60 = *(a1 + 23);
        }

        else
        {
          v60 = *(a1 + 8);
        }

        if (v56 >= 0)
        {
          v61 = a1;
        }

        else
        {
          v61 = *a1;
        }

        if (v60 >= v58)
        {
          v62 = v58;
        }

        else
        {
          v62 = v60;
        }

        v63 = memcmp(v59, v61, v62);
        v64 = v58 < v60;
        if (v63)
        {
          v64 = v63 < 0;
        }

        if (v64)
        {
          v65 = *(a1 + 16);
          v66 = *a1;
          v67 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v67;
          *a2 = v66;
          *(a2 + 16) = v65;
          result = *(a1 + 40);
          v68 = *(a1 + 24);
          v69 = *(a2 + 40);
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 40) = v69;
          *(a2 + 24) = v68;
          *(a2 + 40) = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *>(const void **a1, const void **a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = 0x6DB6DB6DB6DB6DB7 * (a2 - a1);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = a2 - 7;
        v6 = *(a1 + 23);
        v7 = *(a2 - 33);
        if (v7 >= 0)
        {
          v8 = *(a2 - 33);
        }

        else
        {
          v8 = *(a2 - 6);
        }

        if (v7 >= 0)
        {
          v9 = a2 - 7;
        }

        else
        {
          v9 = *(a2 - 7);
        }

        if (v6 >= 0)
        {
          v10 = *(a1 + 23);
        }

        else
        {
          v10 = a1[1];
        }

        if (v6 >= 0)
        {
          v11 = a1;
        }

        else
        {
          v11 = *a1;
        }

        if (v10 >= v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = v10;
        }

        v13 = memcmp(v9, v11, v12);
        v14 = v8 < v10;
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (v14)
        {
          v15 = a1[2];
          v16 = *a1;
          v17 = *(a2 - 5);
          *a1 = *v5;
          a1[2] = v17;
          *v5 = v16;
          *(a2 - 5) = v15;
          v18 = *(a1 + 5);
          v19 = *(a1 + 3);
          v20 = *(a2 - 1);
          *(a1 + 3) = *(a2 - 2);
          *(a1 + 5) = v20;
          *(a2 - 2) = v19;
          *(a2 - 1) = v18;
        }

        return 1;
      }

      goto LABEL_28;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *,0>(a1, a1 + 7, a2 - 7);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *,0>(a1, (a1 + 7), a1 + 7, a2 - 7);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *,0>(a1, (a1 + 7), (a1 + 14), (a1 + 21), a2 - 7);
      return 1;
  }

LABEL_28:
  v21 = a1 + 14;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,functionsInGroupsFromDescriptor(NSDictionary<NSString *,NSArray<MTL4FunctionDescriptor *> *> *)::$_0 &,std::pair<std::string,MTLUINT256_t> *,0>(a1, a1 + 7, a1 + 14);
  v22 = a1 + 21;
  if (a1 + 21 == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  while (1)
  {
    v25 = *(v21 + 23);
    v26 = *(v22 + 23);
    if (v26 >= 0)
    {
      v27 = *(v22 + 23);
    }

    else
    {
      v27 = v22[1];
    }

    if (v26 >= 0)
    {
      v28 = v22;
    }

    else
    {
      v28 = *v22;
    }

    if (v25 >= 0)
    {
      v29 = *(v21 + 23);
    }

    else
    {
      v29 = v21[1];
    }

    if (v25 >= 0)
    {
      v30 = v21;
    }

    else
    {
      v30 = *v21;
    }

    if (v29 >= v27)
    {
      v31 = v27;
    }

    else
    {
      v31 = v29;
    }

    v32 = memcmp(v28, v30, v31);
    v33 = v27 < v29;
    if (v32)
    {
      v33 = v32 < 0;
    }

    if (v33)
    {
      v49 = *v22;
      v50 = v22[2];
      v22[1] = 0;
      v22[2] = 0;
      *v22 = 0;
      v51 = *(v22 + 3);
      v34 = v23;
      v52 = *(v22 + 5);
      while (1)
      {
        v35 = v34;
        v36 = a1 + v34;
        if (*(a1 + v34 + 191) < 0)
        {
          operator delete(*(v36 + 21));
        }

        *(v36 + 168) = *(v36 + 7);
        *(v36 + 23) = *(v36 + 16);
        v36[135] = 0;
        v36[112] = 0;
        v37 = *(v36 + 152);
        *(v36 + 12) = *(v36 + 136);
        *(v36 + 13) = v37;
        if (v35 == -112)
        {
          break;
        }

        v38 = *(a1 + v35 + 79);
        if (SHIBYTE(v50) >= 0)
        {
          v39 = HIBYTE(v50);
        }

        else
        {
          v39 = *(&v49 + 1);
        }

        if (SHIBYTE(v50) >= 0)
        {
          v40 = &v49;
        }

        else
        {
          v40 = v49;
        }

        if (v38 >= 0)
        {
          v41 = *(a1 + v35 + 79);
        }

        else
        {
          v41 = *(a1 + v35 + 64);
        }

        if (v38 >= 0)
        {
          v42 = a1 + v35 + 56;
        }

        else
        {
          v42 = *(a1 + v35 + 56);
        }

        if (v41 >= v39)
        {
          v43 = v39;
        }

        else
        {
          v43 = v41;
        }

        v44 = memcmp(v40, v42, v43);
        v45 = v44 < 0;
        if (!v44)
        {
          v45 = v39 < v41;
        }

        v34 = v35 - 56;
        if (!v45)
        {
          v46 = a1 + v34 + 168;
          goto LABEL_72;
        }
      }

      v46 = a1;
LABEL_72:
      if (*(v46 + 23) < 0)
      {
        operator delete(*v46);
      }

      v47 = a1 + v35;
      *v46 = v49;
      *(v46 + 16) = v50;
      *(v47 + 136) = v51;
      *(v47 + 152) = v52;
      if (++v24 == 8)
      {
        return v22 + 7 == a2;
      }
    }

    v21 = v22;
    v23 += 56;
    v22 += 7;
    if (v22 == a2)
    {
      return 1;
    }
  }
}

char *std::vector<MTLUINT256_t>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLUINT256_t*>,std::__wrap_iter<MTLUINT256_t*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 5)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 5);
    if (v12 >> 59)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t>>(a1, v15);
    }

    v36 = 32 * v16;
    v37 = 32 * a5;
    v38 = (32 * v16);
    do
    {
      v39 = *v7;
      v40 = *(v7 + 1);
      v7 += 32;
      *v38 = v39;
      v38[1] = v40;
      v38 += 2;
      v37 -= 32;
    }

    while (v37);
    memcpy((v36 + 32 * a5), v5, a1[1] - v5);
    v41 = *a1;
    v42 = v36 + 32 * a5 + a1[1] - v5;
    a1[1] = v5;
    v43 = v5 - v41;
    v44 = (v36 - (v5 - v41));
    memcpy(v44, v41, v43);
    v45 = *a1;
    *a1 = v44;
    a1[1] = v42;
    a1[2] = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return (32 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 5;
  if (v18 >= a5)
  {
    v31 = &__dst[32 * a5];
    v32 = (v10 - 32 * a5);
    v33 = a1[1];
    while (v32 < v10)
    {
      v34 = *v32;
      v35 = v32[1];
      v32 += 2;
      *v33 = v34;
      v33[1] = v35;
      v33 += 2;
    }

    a1[1] = v33;
    if (v10 != v31)
    {
      memmove(&__dst[32 * a5], __dst, v10 - v31);
    }

    v30 = 32 * a5;
    v28 = v5;
    v29 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(a1[1], &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  a1[1] = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[32 * a5];
    v23 = v10 + v20;
    if (&v21[-32 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -32 * a5];
      do
      {
        v26 = (v24 - v7);
        v27 = *(v25 - v7 + 16);
        *v26 = *(v25 - v7);
        v26[1] = v27;
        v25 += 32;
        v24 += 32;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    a1[1] = v23;
    if (v21 != v22)
    {
      memmove(&v5[32 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v28 = v5;
      v29 = v7;
      v30 = v10 - v5;
LABEL_29:
      memmove(v28, v29, v30);
    }
  }

  return v5;
}

uint64_t MTLIOQosClassForPriority(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 17;
  }

  else
  {
    v1 = 33;
  }

  if (a1 == 2)
  {
    return 9;
  }

  else
  {
    return v1;
  }
}

uint64_t MTLIOCommandQueueCommandListInit(uint64_t result, _MTLIOCommandQueue *a2)
{
  *result = 0;
  *(result + 8) = result;
  *(result + 24) = &a2->cmdCvar;
  *(result + 32) = a2;
  *(result + 16) = &a2->cmdMutex;
  *(result + 40) = 0;
  return result;
}

uint64_t MTLIOCommandQueueCommandListDestroy(MTLIOCommandQueueCommandList *a1)
{
  pthread_mutex_lock(a1->lock);
  a1->exit = 1;
  pthread_cond_broadcast(a1->cond);
  lock = a1->lock;

  return pthread_mutex_unlock(lock);
}

uint64_t MTLIOCommandQueueCommandListEnqueueCommand(MTLIOCommandQueueCommandList *a1, MTLIOCommandQueueCommand *a2)
{
  pthread_mutex_lock(a1->lock);
  *(a2 + 2) = 0;
  tqh_last = a1->activeq.tqh_last;
  *(a2 + 3) = tqh_last;
  *tqh_last = a2;
  a1->activeq.tqh_last = (a2 + 16);
  pthread_cond_broadcast(a1->cond);
  lock = a1->lock;

  return pthread_mutex_unlock(lock);
}

void MTLIOCommandQueueCommandListProcessCommands(MTLIOCommandQueueCommandList *a1)
{
  pthread_mutex_lock(a1->lock);
  if (a1->exit)
  {
    goto LABEL_68;
  }

LABEL_2:
  tqh_first = a1->activeq.tqh_first;
  if (!a1->activeq.tqh_first)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v3 = *(tqh_first + 2);
    if (*tqh_first == 1)
    {
      v4 = *(tqh_first + 3);
      p_tqh_last = (v3 + 24);
      if (!v3)
      {
        p_tqh_last = &a1->activeq.tqh_last;
      }

      *p_tqh_last = v4;
      *v4 = v3;
      free(tqh_first);
      goto LABEL_9;
    }

    if (!*tqh_first)
    {
      break;
    }

LABEL_9:
    tqh_first = v3;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  v6 = a1->activeq.tqh_first;
  if (!a1->activeq.tqh_first)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v7 = *(v6 + 2);
    v8 = *v6;
    if (*v6)
    {
      goto LABEL_15;
    }

    v39 = 0;
    v38 = 0;
    v37 = 0;
    v10 = MTLIOCommandList::popCommand([*(v6 + 1) getCommandList], &v39 + 1, &v39, &v38 + 1, &v38, &v37, -[_MTLIOCommandQueue gpuQueue](a1->queue, "gpuQueue"));
    if (v10)
    {
      break;
    }

    if (v37)
    {
      v11 = 1;
LABEL_28:
      v12 = *(v6 + 2);
      v13 = *(v6 + 3);
      v14 = (v12 + 24);
      if (!v12)
      {
        v14 = &a1->activeq.tqh_last;
      }

      *v14 = v13;
      *v13 = v12;
      [(_MTLIOCommandQueue *)a1->queue didComplete:*(v6 + 1) withStatus:v11];
      free(v6);
LABEL_31:
      v6 = v7;
      if (!v7)
      {
        goto LABEL_36;
      }

      continue;
    }

    if (v39)
    {
      v11 = 3;
      goto LABEL_28;
    }

    if (v38)
    {
      v11 = 2;
      goto LABEL_28;
    }

    if ((v38 & 0x100) != 0 || (v39 & 0x100) != 0)
    {
      goto LABEL_31;
    }

    v8 = *v6;
LABEL_15:
    v9 = v8 == 1 || v7 == 0;
    v6 = v7;
    if (v9)
    {
LABEL_36:
      if (a1->activeq.tqh_first && !*a1->activeq.tqh_first)
      {
LABEL_10:
        pthread_cond_wait(a1->cond, a1->lock);
      }

LABEL_11:
      if (a1->exit)
      {
LABEL_68:
        pthread_mutex_unlock(a1->lock);
        pthread_exit(0);
      }

      goto LABEL_2;
    }
  }

  v15 = v10;
  pthread_mutex_unlock(a1->lock);
  v16 = [*(v6 + 1) globalTraceObjectID];
  HIBYTE(v39) = 0;
  if (*v15 == 1)
  {
    v21 = v15[2];
    v22 = v15[3];
    v23 = v15[1];
    if (MTLTraceEnabled())
    {
      [v23 globalTraceObjectID];
      kdebug_trace();
    }

    v24 = [v23 readIntoStagingBuffer:v22 offset:v21 stagingBuffer:v15[6] stagingBufferSize:v15[7] needsDecompress:&v39 + 1];
    if (MTLTraceEnabled())
    {
      [v23 globalTraceObjectID];
      kdebug_trace();
    }

    if (!v24)
    {
      MTLIOCommandList::completeIOCommand([*(v6 + 1) getCommandList], v15, a1->cond, a1->lock, 0, v16);
    }

    followonQueue = a1->queue->_followonQueue;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = ___Z43MTLIOCommandQueueCommandListProcessCommandsP28MTLIOCommandQueueCommandList_block_invoke_3;
    v32[3] = &__block_descriptor_89_e5_v8__0l;
    v33 = HIBYTE(v39);
    v32[4] = v16;
    v32[5] = v15;
    v32[6] = v22;
    v32[7] = v21;
    v32[8] = v24;
    v32[9] = v6;
    v32[10] = a1;
    v26 = v32;
LABEL_59:
    dispatch_async(followonQueue, v26);
  }

  else if (!*v15)
  {
    v17 = v15[1];
    v18 = *(v15 + 89);
    if (MTLTraceEnabled())
    {
      [v17 globalTraceObjectID];
      kdebug_trace();
    }

    if (v18)
    {
      v19 = [v17 readIntoStagingBuffer:v15[3] offset:v15[2] stagingBuffer:v15[6] stagingBufferSize:v15[7] needsDecompress:&v39 + 1];
      if (v19)
      {
        v20 = v15[3];
      }

      else
      {
        v20 = -1;
      }
    }

    else
    {
      v20 = [v17 read:v15[8] size:v15[3] offset:v15[2] stagingBuffer:v15[6] stagingBufferSize:v15[7] needsDecompress:&v39 + 1];
      v19 = 0;
    }

    if (MTLTraceEnabled())
    {
      [v17 globalTraceObjectID];
      kdebug_trace();
    }

    if (HIBYTE(v39) == 1)
    {
      followonQueue = a1->queue->_followonQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___Z43MTLIOCommandQueueCommandListProcessCommandsP28MTLIOCommandQueueCommandList_block_invoke;
      block[3] = &unk_1E6EEBEE0;
      v36 = v18;
      block[6] = v15;
      block[7] = v19;
      block[4] = v17;
      block[5] = v16;
      block[8] = v6;
      block[9] = a1;
      v26 = block;
      goto LABEL_59;
    }

    if (v20 == -1 || v20 < v15[3])
    {
      v27 = [*(v6 + 1) getCommandList];
      lock = a1->lock;
      cond = a1->cond;
      v30 = v15;
      v31 = 0;
      goto LABEL_63;
    }

    if (v18)
    {
      followonQueue = a1->queue->_followonQueue;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = ___Z43MTLIOCommandQueueCommandListProcessCommandsP28MTLIOCommandQueueCommandList_block_invoke_2;
      v34[3] = &__block_descriptor_64_e5_v8__0l;
      v34[4] = v6;
      v34[5] = v15;
      v34[6] = a1;
      v34[7] = v16;
      v26 = v34;
      goto LABEL_59;
    }

    v27 = [*(v6 + 1) getCommandList];
    lock = a1->lock;
    cond = a1->cond;
    v30 = v15;
    v31 = 1;
LABEL_63:
    MTLIOCommandList::completeIOCommand(v27, v30, cond, lock, v31, v16);
  }
}

void ___Z43MTLIOCommandQueueCommandListProcessCommandsP28MTLIOCommandQueueCommandList_block_invoke(uint64_t a1)
{
  if (MTLTraceEnabled())
  {
    kdebug_trace();
  }

  if (*(a1 + 80) == 1)
  {
    v2 = *(a1 + 56);
    if (!v2)
    {
      if (!MTLTraceEnabled())
      {
LABEL_14:
        v16 = [*(*(a1 + 64) + 8) getCommandList];
        v17 = *(a1 + 72);
        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        v21 = *(a1 + 40);
        v20 = *(a1 + 48);
        v22 = 0;
        goto LABEL_18;
      }

      v15 = -1;
      goto LABEL_11;
    }

    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v5 = v4[6];
    v7 = v4[2];
    v6 = v4[3];
    v8 = [v3 stagingBufferSize:v6 offset:v7];
    v9 = v3;
    v10 = v5;
    v11 = v6;
    v12 = v7;
    v13 = v2;
  }

  else
  {
    v9 = *(a1 + 32);
    v14 = *(a1 + 48);
    v8 = v14[7];
    v10 = v14[8];
    v12 = v14[2];
    v11 = v14[3];
    v13 = v14[6];
  }

  v15 = [v9 decompress:v10 size:v11 offset:v12 stagingBuffer:v13 stagingBufferSize:v8];
  if (MTLTraceEnabled())
  {
LABEL_11:
    kdebug_trace();
  }

  if (v15 == -1 || v15 < *(*(a1 + 48) + 24))
  {
    goto LABEL_14;
  }

  if (*(a1 + 80) == 1)
  {
    [MTLIOCommandList::getBlitCommandEncoder(objc_msgSend(*(*(a1 + 64) + 8) "getCommandList"))];
  }

  v16 = [*(*(a1 + 64) + 8) getCommandList];
  v23 = *(a1 + 72);
  v19 = *(v23 + 16);
  v18 = *(v23 + 24);
  v21 = *(a1 + 40);
  v20 = *(a1 + 48);
  v22 = 1;
LABEL_18:

  MTLIOCommandList::completeIOCommand(v16, v20, v18, v19, v22, v21);
}

void ___Z43MTLIOCommandQueueCommandListProcessCommandsP28MTLIOCommandQueueCommandList_block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 8) getCommandList];
  [MTLIOCommandList::getBlitCommandEncoder(v2) copyFromBuffer:objc_msgSend(*(a1[5] + 32) sourceOffset:"buffer") toBuffer:*(a1[5] + 40) destinationOffset:*(a1[5] + 72) size:{*(a1[5] + 80), *(a1[5] + 24)}];
  v3 = a1[5];
  v4 = a1[6];
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = a1[7];

  MTLIOCommandList::completeIOCommand(v2, v3, v5, v6, 1, v7);
}

void ___Z43MTLIOCommandQueueCommandListProcessCommandsP28MTLIOCommandQueueCommandList_block_invoke_3(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    if (MTLTraceEnabled())
    {
      kdebug_trace();
    }

    v2 = [*(*(a1 + 40) + 8) decompress:*(*(a1 + 40) + 48) size:*(a1 + 48) offset:*(a1 + 56) stagingBuffer:*(a1 + 64) stagingBufferSize:{objc_msgSend(*(*(a1 + 40) + 8), "stagingBufferSize:offset:", *(a1 + 48), *(a1 + 56))}];
    if (MTLTraceEnabled())
    {
      kdebug_trace();
    }
  }

  else
  {
    v2 = *(a1 + 48);
  }

  if (v2 == -1 || v2 < *(a1 + 48))
  {
    MTLIOCommandList::completeIOCommand([*(*(a1 + 72) + 8) getCommandList], *(a1 + 40), *(*(a1 + 80) + 24), *(*(a1 + 80) + 16), 0, *(a1 + 32));
  }

  v3 = [*(*(a1 + 72) + 8) getCommandList];
  BlitCommandEncoder = MTLIOCommandList::getBlitCommandEncoder(v3);
  v5 = [*(*(a1 + 40) + 32) buffer];
  v6 = *(a1 + 40);
  v7 = *(v6 + 40);
  v8 = *(v6 + 136);
  v9 = *(v6 + 144);
  v15 = *(v6 + 96);
  v10 = *(v6 + 120);
  v16 = *(v6 + 112);
  v11 = *(v6 + 64);
  v12 = *(v6 + 128);
  v13 = *(v6 + 72);
  v14 = *(v6 + 88);
  [BlitCommandEncoder copyFromBuffer:v5 sourceOffset:v7 sourceBytesPerRow:v8 sourceBytesPerImage:v9 sourceSize:&v15 toTexture:v11 destinationSlice:v10 destinationLevel:v12 destinationOrigin:&v13];
  MTLIOCommandList::addResourceToSyncFromGPUToCPU();
  MTLIOCommandList::completeIOCommand(v3, *(a1 + 40), *(*(a1 + 80) + 24), *(*(a1 + 80) + 16), 1, *(a1 + 32));
}

BOOL operator==(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = a1 + 1;
  v4 = a2 + 1;
  v5 = v2 - 1;
  do
  {
    v7 = *v3++;
    v6 = v7;
    v8 = *v4++;
    result = v6 == v8;
  }

  while (v6 == v8 && v5-- != 0);
  return result;
}

uint64_t _MTLTensorExtentsHash(void *a1)
{
  v7[17] = *MEMORY[0x1E69E9840];
  v2 = [a1 rank];
  v3 = [a1 rank];
  v4 = v3;
  if (v2 >= 0xF)
  {
    v7[0] = v3;
    v4 = 15;
  }

  else
  {
    v7[0] = [a1 rank];
    if (!v4)
    {
      return _MTLHashState(v7, 8 * [a1 rank] + 8);
    }
  }

  for (i = 0; i != v4; ++i)
  {
    v7[i + 1] = *([a1 extents] + 8 * i);
  }

  return _MTLHashState(v7, 8 * [a1 rank] + 8);
}

BOOL _MTLTensorExtentsAreEqual(void *a1, void *a2)
{
  v3 = [a1 tensorExtentsInternal];
  v4 = [a2 tensorExtentsInternal];
  v5 = *v3;
  if (*v3 != *v4)
  {
    return 0;
  }

  if (!v5)
  {
    return 1;
  }

  v6 = v3 + 1;
  v7 = v4 + 1;
  v8 = v5 - 1;
  do
  {
    v10 = *v6++;
    v9 = v10;
    v12 = *v7++;
    v11 = v12;
    v14 = v8-- != 0;
    result = v9 == v11;
  }

  while (v9 == v11 && v14);
  return result;
}

void validateDataType(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 > 0x31 || ((1 << a1) & 0x2222220010008) == 0) && a1 != 121)
  {
    _MTLMessageContextPush_(a2, 4, @"Unknown tensor data type (%lu)", a4, a5, a6, a7, a8, a1);
  }
}

void validateDimensions(void *a1, uint64_t a2)
{
  if ([a1 rank] >= 0x11)
  {
    validateDimensions(a1);
  }

  v4 = [a1 rank];
  if (v4 >= 0x10)
  {
    v5 = 16;
  }

  else
  {
    v5 = v4;
  }

  if (v4)
  {
    v6 = 0;
    do
    {
      if ([a1 extentAtDimensionIndex:v6] <= 0)
      {
        v7 = [a1 extentAtDimensionIndex:v6];
        _MTLMessageContextPush_(a2, 4, @"Tensor dimension (%llu) at index %lu should be greater than 0", v8, v9, v10, v11, v12, v7);
      }

      ++v6;
    }

    while (v5 != v6);
  }
}

void OUTLINED_FUNCTION_0_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  _MTLMessageContextPush_(v9, 4, a3, a4, a5, a6, a7, a8, a9);
}

void _getForcedLanguageVersion(_DWORD *result, _DWORD *a2)
{
  if (_getForcedLanguageVersion::onceToken != -1)
  {
    _getForcedLanguageVersion_cold_1();
  }

  *result = _getForcedLanguageVersion::major;
  *a2 = _getForcedLanguageVersion::minor;
}

char *___getForcedLanguageVersion_block_invoke()
{
  result = getenv("MTL_FORCE_LANGUAGE_VERSION");
  if (result)
  {
    v1 = result;
    sscanf(result, "%d_%d", &_getForcedLanguageVersion::major, &_getForcedLanguageVersion::minor);
    return fprintf(*MEMORY[0x1E69E9848], "Using MTLLanguageVersion%d_%d (set with MTL_FORCE_LANGUAGE_VERSION=%s)\n", _getForcedLanguageVersion::major, _getForcedLanguageVersion::minor, v1);
  }

  return result;
}

const char *stringFromBuffer(const char *a1, unsigned int *a2, unint64_t a3)
{
  v3 = *a2;
  LODWORD(v4) = *a2;
  if (v3 >= a3)
  {
LABEL_5:
    result = 0;
    *a2 = v4;
  }

  else
  {
    v5 = *a2;
    while (1)
    {
      v4 = (v4 + 1);
      if (!a1[v5])
      {
        break;
      }

      v5 = v4;
      if (v4 >= a3)
      {
        goto LABEL_5;
      }
    }

    *a2 = v4;
    return &a1[v3];
  }

  return result;
}

uint64_t uint32FromBuffer(const char *a1, unsigned int *a2, unint64_t a3)
{
  v3 = *a2;
  if (v3 + 4 > a3)
  {
    return 0;
  }

  result = *&a1[v3];
  *a2 = v3 + 4;
  return result;
}

uint64_t MTLProxyLibraryData::MTLProxyLibraryData(uint64_t a1, void *a2, __int128 *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = MTLLibraryData::MTLLibraryData(a1, a3);
  *v5 = &unk_1EF476418;
  *(v5 + 96) = 0u;
  v6 = (v5 + 96);
  *(v5 + 112) = 0u;
  *(v5 + 128) = 1065353216;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [a2 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = v10;
        std::string::basic_string[abi:ne200100]<0>(__p, [objc_msgSend(v10 "name")]);
        v19 = __p;
        std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto11MTLFunction}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto11MTLFunction}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto11MTLFunction}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}*>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::piecewise_construct_t const&<>>(v6, __p, &std::piecewise_construct, &v19)[5] = v10;
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a2 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  return a1;
}

void sub_185CEA030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(v16);
  MTLLibraryData::~MTLLibraryData(v15);
  _Unwind_Resume(a1);
}

void MTLProxyLibraryData::~MTLProxyLibraryData(id *this)
{
  *this = &unk_1EF476418;
  for (i = this + 14; ; i[5])
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  this[17] = 0;
  this[18] = 0;
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 12);

  MTLLibraryData::~MTLLibraryData(this);
}

{
  MTLProxyLibraryData::~MTLProxyLibraryData(this);

  JUMPOUT(0x1865FF210);
}

uint64_t MTLProxyLibraryData::readFunctionMetadata(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*[a3 libraryData] + 200);

  return v3();
}

uint64_t MTLProxyLibraryData::functionNames(MTLProxyLibraryData *this)
{
  v1 = *(this + 18);
  if (!v1)
  {
    v3 = MTLLibraryData::mutex(this);
    os_unfair_lock_lock(v3);
    v1 = *(this + 18);
    if (!v1)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      std::vector<NSValue *>::reserve(&v11, *(this + 15));
      for (i = *(this + 14); i; i = *i)
      {
        v5 = objc_alloc(MEMORY[0x1E696AEC0]);
        v6 = i + 2;
        if (*(i + 39) < 0)
        {
          v6 = *v6;
        }

        v10 = [v5 initWithUTF8String:v6];
        std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v11, &v10);
      }

      v1 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:? count:?];
      *(this + 18) = v1;
      v7 = v11;
      v8 = v12;
      if (v11 != v12)
      {
        do
        {
        }

        while (v7 != v8);
        v1 = *(this + 18);
        v7 = v11;
      }

      if (v7)
      {
        v12 = v7;
        operator delete(v7);
      }
    }

    os_unfair_lock_unlock(v3);
  }

  return v1;
}

void sub_185CEA2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(v11);
  _Unwind_Resume(a1);
}

uint64_t MTLProxyLibraryData::functionHashes(MTLProxyLibraryData *this)
{
  v1 = *(this + 17);
  if (!v1)
  {
    v3 = MTLLibraryData::mutex(this);
    os_unfair_lock_lock(v3);
    v1 = *(this + 17);
    if (!v1)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      std::vector<NSValue *>::reserve(&v9, *(this + 15));
      for (i = *(this + 14); i; i = *i)
      {
        v8 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:objc_msgSend(i[5] objCType:{"bitCodeHash"), "{?=[32C]}"}];
        std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v9, &v8);
      }

      v1 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:? count:?];
      *(this + 17) = v1;
      v5 = v9;
      v6 = v10;
      if (v9 != v10)
      {
        do
        {
        }

        while (v5 != v6);
        v1 = *(this + 17);
        v5 = v9;
      }

      if (v5)
      {
        v10 = v5;
        operator delete(v5);
      }
    }

    os_unfair_lock_unlock(v3);
  }

  return v1;
}

void sub_185CEA438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(v11);
  _Unwind_Resume(a1);
}

id MTLProxyLibraryData::newFunction(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, [a2 UTF8String]);
  v3 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>((a1 + 96), __p);
  v4 = v3;
  if (v7 < 0)
  {
    operator delete(__p[0]);
    if (v4)
    {
      return v4[5];
    }
  }

  else if (v3)
  {
    return v4[5];
  }

  return 0;
}

void sub_185CEA4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLProxyLibraryData::setStitchedLibraryTrackingData(uint64_t a1, uint64_t *a2)
{
  for (i = *(a1 + 112); i; i = *i)
  {
    v4 = i[5];
    v5 = a2[1];
    v6 = *a2;
    v7 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [v4 setTrackingData:&v6];
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_185CEA564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *MTLLibraryDataWithArchive::getDynamicModuleOffsetAndSize(void *this, unint64_t *a2, unint64_t *a3)
{
  v3 = this[12];
  if (v3)
  {
    *a2 = this[28];
    v3 = this[29];
  }

  else
  {
    *a2 = 0;
  }

  *a3 = v3;
  return this;
}

void MTLLibraryDataWithArchive::parseDynamicLibraryBitCode(MTLLibraryDataWithArchive *this, unint64_t *a2, unint64_t *a3, unsigned int *a4)
{
  *a3 = 0;
  *a2 = 0;
  if (*(this + 12))
  {
    *a3 = *(this + 29);
    *a2 = *(this + 28);
    v8 = MTLLibraryData::mutex(this);
    os_unfair_lock_lock(v8);
    (*(*this + 360))(this, *(this + 28));
    v11 = 0;
    if ((*(*this + 368))(this, &v11, 4))
    {
      if (v11 == 186106078)
      {
        v10 = 0;
        v9 = 0;
        if ((*(*this + 368))(this, &v10, 4) && (*(*this + 368))(this, &v9 + 4, 4) && (*(*this + 368))(this, &v9, 4))
        {
          *a3 = (v9 + HIDWORD(v9) + 15) & 0xFFFFFFF0;
        }
      }

      else if (v11 == 248563483)
      {
        v10 = 0;
        if ((*(*this + 368))(this, &v10, 4))
        {
          if ((*(*this + 368))(this, a4, 4))
          {
            *a3 = v10;
            *a2 = *(this + 28) + 12;
          }
        }
      }
    }

    os_unfair_lock_unlock(v8);
  }

  else
  {
    *a3 = 0;
    *a2 = 0;
  }
}

void MTLLibraryDataWithArchive::setStitchingScripts(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      size_ptr = 0;
      buffer_ptr = 0;
      v7 = dispatch_data_create_map(*(v2 + 40 * v5), &buffer_ptr, &size_ptr);
      v8 = (buffer_ptr + *buffer_ptr + *(buffer_ptr + *buffer_ptr - *(buffer_ptr + *buffer_ptr) + 8));
      v9 = (v8 + *v8 + *(v8 + *v8 - *(v8 + *v8) + 6));
      v10 = *(*a2 + 40 * v5);
      v11 = (v9 + *v9 + *(v9 + *v9 - *(v9 + *v9) + 4));
      std::string::basic_string[abi:ne200100](__p, v11 + *v11 + 4, *(v11 + *v11));
      v17 = __p;
      std::__hash_table<std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 360), __p, &std::piecewise_construct, &v17)[5] = v10;
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      dispatch_retain(*(*a2 + 40 * v5));
      dispatch_release(v7);
      v5 = v6;
      v2 = *a2;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) > v6++);
  }
}

void sub_185CEA9B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLLibraryDataWithArchive::parseDynamicLibraryReflection(MTLLibraryData *this, unint64_t *a2, unsigned int *a3, unsigned int *a4, NSError **a5)
{
  if (*(this + 74))
  {
    v10 = MTLLibraryData::mutex(this);
    os_unfair_lock_lock(v10);
    if (((*(*this + 360))(this, *(this + 73)) & 1) == 0)
    {
      if (a5)
      {
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid library file (unexpected end of file)" forKey:*MEMORY[0x1E696A578]];
        v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v20];
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    v29 = 0;
    if ((*(*this + 368))(this, &v29, 4) != 4)
    {
      if (a5)
      {
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid metallib file forKey:{unexpected end of file while parsing reflection data", *MEMORY[0x1E696A578]}];
        v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v22];
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (!v29)
    {
      goto LABEL_37;
    }

    if (v29 != 1)
    {
      if (a5)
      {
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid library file (Unexpected number of reflection entries)" forKey:*MEMORY[0x1E696A578]];
        v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v23];
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if ((*(*this + 360))(this, *(this + 73) + 8))
    {
      v28 = 0;
      v27 = 0;
      while (1)
      {
        if ((*(*this + 368))(this, &v27 + 4, 4) != 4)
        {
          if (!a5)
          {
            goto LABEL_37;
          }

          goto LABEL_49;
        }

        v11 = bswap32(HIDWORD(v27));
        HIDWORD(v27) = v11;
        if (v11 <= 1380078917)
        {
          if (v11 != 1380078426)
          {
            if (v11 == 1162757204)
            {
              goto LABEL_37;
            }

LABEL_25:
            v19 = (*(*this + 392))(this);
            if (!(*(*this + 360))(this, v19 + v27))
            {
              goto LABEL_23;
            }

            goto LABEL_26;
          }

          v26 = 0;
          if ((*(*this + 368))(this, &v26, 2) != 2)
          {
            if (!a5)
            {
              goto LABEL_37;
            }

            goto LABEL_49;
          }

          v13 = v26;
          if ((*(*this + 368))(this, a4, v26) != v13)
          {
            if (!a5)
            {
              goto LABEL_37;
            }

LABEL_49:
            v25 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid metallib file forKey:{unexpected end of file while parsing reflection data", *MEMORY[0x1E696A578]}];
            v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v25];
LABEL_36:
            *a5 = v21;
            goto LABEL_37;
          }
        }

        else if (v11 == 1380078918)
        {
          if ((*(*this + 368))(this, &v27, 4) != 4)
          {
            if (!a5)
            {
              goto LABEL_37;
            }

            goto LABEL_49;
          }

          v14 = (*(*this + 392))(this);
          v15 = v14 + 15;
          if (((v14 >= 0xFFFFFFFFFFFFFFF1) << 63) >> 63 != v14 >= 0xFFFFFFFFFFFFFFF1)
          {
            goto LABEL_37;
          }

          v16 = v15 & 0xFFFFFFFFFFFFFFF0;
          v17 = (v15 & 0xFFFFFFFFFFFFFFF0) - v14;
          v18 = v27;
          if (v17 > v27)
          {
            goto LABEL_37;
          }

          *a2 = v16;
          *a3 = v18 - v17;
          if (((*(*this + 360))(this, v14 + v18) & 1) == 0)
          {
LABEL_23:
            generateNSError(a5, &cfstr_Mtllibraryerro.isa, MTLLibraryErrorUnsupported, &cfstr_InvalidLibrary_1.isa);
            goto LABEL_37;
          }
        }

        else
        {
          if (v11 != 1380078938)
          {
            goto LABEL_25;
          }

          if ((*(*this + 368))(this, &v28, 4) != 4)
          {
            if (!a5)
            {
              goto LABEL_37;
            }

            goto LABEL_49;
          }

          *a2 = (*(*this + 392))(this);
          v12 = (*(*this + 392))(this);
          if (((*(*this + 360))(this, v12 + v28) & 1) == 0)
          {
            goto LABEL_23;
          }

          *a3 = v28;
        }

LABEL_26:
        if (HIDWORD(v27) == 1162757204)
        {
          goto LABEL_37;
        }
      }
    }

    if (a5)
    {
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid library file (unexpected end of file)" forKey:*MEMORY[0x1E696A578]];
      v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v24];
      goto LABEL_36;
    }

LABEL_37:
    os_unfair_lock_unlock(v10);
  }
}

BOOL MTLLibraryDataWithSource::parseBitCodeHeader(MTLLibraryData *this, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, unsigned int *a6)
{
  v10 = MTLLibraryData::mutex(this);
  os_unfair_lock_lock(v10);
  (*(*this + 360))(this, a2);
  v15 = 0;
  v11 = (*(*this + 368))(this, &v15, 4);
  v12 = v11 == 4;
  if (v11 == 4)
  {
    v13 = v15;
  }

  else
  {
    v13 = 0;
  }

  os_unfair_lock_unlock(v10);
  *a5 = v13;
  *a4 = a2 + 4;
  return v12;
}

void *MTLLibraryDataWithSource::parseDynamicLibraryBitCode(void *this, unint64_t *a2, unint64_t *a3, unsigned int *a4)
{
  v5 = this[24];
  if (v5)
  {
    v6 = 0;
    return (*(*this + 208))(this, this[25], v5, a2, a3, &v6);
  }

  else
  {
    *a3 = 0;
    *a2 = 0;
  }

  return this;
}

uint64_t MTLLibraryDataWithSource::getBitCodeHash(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v9 = 0;
  result = (*(*a1 + 208))(a1, a3, 0, &v10, &v11, &v9);
  v7 = v10;
  v6 = v11;
  if ((v11 + v10) <= a1[20])
  {
    v8 = a1[19];
    *a2 = 0u;
    *(a2 + 16) = 0u;
    CC_SHA256_Init(&c);
    CC_SHA256_Update(&c, (v8 + v7), v6);
    return CC_SHA256_Final(a2, &c);
  }

  return result;
}

uint64_t MTLLibraryDataWithGLIR::parseBitCodeHeader(MTLLibraryDataWithGLIR *this, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, unsigned int *a6)
{
  v6 = *(this + 13);
  if (v6 >= a2)
  {
    v7 = a2;
    *(this + 14) = a2;
  }

  else
  {
    v7 = *(this + 14);
  }

  if (v7 + 4 <= v6)
  {
    v8 = *(*(this + 12) + v7);
    *(this + 14) = v7 + 4;
  }

  else
  {
    v8 = 0;
  }

  *a5 = v8;
  *a4 = a2 + 4;
  return 1;
}

void newFunctionWithGLIR(uint64_t a1, uint64_t a2, _DWORD *buffer, NSObject *a4, int a5)
{
  v5 = *MEMORY[0x1E69E9840];
  dispatch_data_create(buffer, *buffer + 4, 0, 0);
  operator new();
}

double MTLLibraryDataWithArchive::decodeSTCIToken@<D0>(uint64_t *__return_ptr a1@<X8>, char *a2@<X1>, unsigned int a3@<W2>)
{
  v5 = a2 + 4;
  v6 = *a2;
  std::vector<MTLUINT256_t>::vector[abi:ne200100](&v12, v6);
  v7 = v12;
  if (v6)
  {
    v8 = v12;
    do
    {
      v9 = strnlen(v5, a3);
      v10 = *&v5[v9 + 17];
      *v8 = *&v5[v9 + 1];
      v8[1] = v10;
      v8 += 2;
      v5 += v9 + 33;
      --v6;
    }

    while (v6);
  }

  *a1 = *v5;
  a1[1] = v7;
  result = *&v13;
  *(a1 + 1) = v13;
  return result;
}

BOOL MTLLibraryDataWithArchive::getFunctionNameAndAliasWithHash(MTLLibraryDataWithArchive *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(a1 + 40, a2);
  if (!v7)
  {
    return 0;
  }

  v8 = v7[6];
  v23.bitcodeType = 0;
  v23.pluginData = 0;
  *&v23.renderTargetArrayIndexType = 0;
  v23.functionInputs = 0;
  v23.airScript = 0;
  memset(&v23, 0, 56);
  v22 = 0;
  *__p = 0u;
  v20 = 0u;
  *v19 = 0u;
  *v18 = 0u;
  FunctionAtOffset = MTLLibraryDataWithArchive::getFunctionAtOffset(a1, v8, &v23, &v17);
  if (FunctionAtOffset)
  {
    if (v23.airScript)
    {
      dispatch_release(v23.airScript);
    }

    if (v23.functionInputs)
    {
      dispatch_release(v23.functionInputs);
    }

    if (SHIBYTE(v19[0]) < 0)
    {
      if (v18[1])
      {
        goto LABEL_9;
      }
    }

    else if (HIBYTE(v19[0]))
    {
LABEL_9:
      v10 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (SHIBYTE(v19[0]) >= 0)
      {
        v11 = v18;
      }

      else
      {
        v11 = v18[0];
      }

      v12 = [v10 initWithUTF8String:v11];
LABEL_16:
      *a3 = v12;
      if (SHIBYTE(v20) < 0)
      {
        if (v20)
        {
          goto LABEL_18;
        }
      }

      else if (HIBYTE(v20))
      {
LABEL_18:
        v13 = objc_alloc(MEMORY[0x1E696AEC0]);
        if (v20 >= 0)
        {
          v14 = &v19[1];
        }

        else
        {
          v14 = v19[1];
        }

        v15 = [v13 initWithUTF8String:v14];
        goto LABEL_24;
      }

      v15 = 0;
LABEL_24:
      *a4 = v15;
      goto LABEL_25;
    }

    v12 = 0;
    goto LABEL_16;
  }

LABEL_25:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }

  if (SHIBYTE(v19[0]) < 0)
  {
    operator delete(v18[0]);
  }

  return FunctionAtOffset;
}

void MTLLibraryDataWithArchive::AdditionalFunctionData::~AdditionalFunctionData(MTLLibraryDataWithArchive::AdditionalFunctionData *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

dispatch_data_t MTLLibraryDataWithArchive::newBitCodeWithHash(MTLLibraryDataWithArchive *a1, unint64_t *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(a1 + 40, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3[6];
  v13 = 0;
  *__p = 0u;
  v11 = 0u;
  *v10 = 0u;
  *v9 = 0u;
  v14.bitcodeType = 0;
  v14.pluginData = 0;
  *&v14.renderTargetArrayIndexType = 0;
  v14.functionInputs = 0;
  v14.airScript = 0;
  memset(&v14, 0, 56);
  if (MTLLibraryDataWithArchive::getFunctionAtOffset(a1, v4, &v14, &v8))
  {
    v5 = (*(*a1 + 128))(a1);
    subrange = dispatch_data_create_subrange(v5, v14.bitCodeOffset, v14.bitCodeFileSize);
    if (v14.airScript)
    {
      dispatch_release(v14.airScript);
    }

    if (v14.functionInputs)
    {
      dispatch_release(v14.functionInputs);
    }
  }

  else
  {
    subrange = 0;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[1]);
  }

  if (SHIBYTE(v10[0]) < 0)
  {
    operator delete(v9[0]);
  }

  return subrange;
}

void MTLLibraryDataWithArchive::getInputListForStitchedFunction(MTLLibraryDataWithArchive *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(a1 + 60, a2);
  if (!v6 || (v7 = v6[6]) == 0)
  {
    v8 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(a1 + 40, a2);
    if (!v8)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      return;
    }

    v7 = v8[6];
  }

  v15.bitcodeType = 0;
  v15.pluginData = 0;
  *&v15.renderTargetArrayIndexType = 0;
  v15.functionInputs = 0;
  v15.airScript = 0;
  memset(&v15, 0, 56);
  v14 = 0;
  *__p = 0u;
  v12 = 0u;
  *v11 = 0u;
  *v10 = 0u;
  MTLLibraryDataWithArchive::getFunctionAtOffset(a1, v7, &v15, &v9);
  if (v15.airScript)
  {
    dispatch_release(v15.airScript);
  }

  if (v15.functionInputs)
  {
    dispatch_release(v15.functionInputs);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<MTLUINT256_t>::__init_with_size[abi:ne200100]<MTLUINT256_t*,MTLUINT256_t*>(a3, __p[0], __p[1], (__p[1] - __p[0]) >> 5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[1]);
  }

  if (SHIBYTE(v11[0]) < 0)
  {
    operator delete(v10[0]);
  }
}

_MTLFunctionInternal *MTLLibraryDataWithArchive::newFunction(MTLLibraryDataWithArchive *a1, unint64_t *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(a1 + 40, a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5[6];
  v25.bitcodeType = 0;
  v25.pluginData = 0;
  *&v25.renderTargetArrayIndexType = 0;
  v25.functionInputs = 0;
  v25.airScript = 0;
  memset(&v25, 0, 56);
  v24 = 0;
  *__p = 0u;
  v22 = 0u;
  *v21 = 0u;
  *v20 = 0u;
  if (MTLLibraryDataWithArchive::getFunctionAtOffset(a1, v6, &v25, &v19))
  {
    if (*(a1 + 48))
    {
      v7 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(a1 + 45, v20);
      if (v7)
      {
        v25.airScript = v7[5];
        std::__hash_table<std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>>>::erase(a1 + 45, v7);
      }
    }

    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (SHIBYTE(v21[0]) >= 0)
    {
      v9 = v20;
    }

    else
    {
      v9 = v20[0];
    }

    v10 = [v8 initWithUTF8String:v9];
    v11 = [_MTLFunctionInternal alloc];
    v12 = [(_MTLFunctionInternal *)v11 initWithName:v10 type:v19 libraryData:a1 functionData:&v25 device:a3];
    v13 = v12;
    if (*(a1 + 53))
    {
      v14 = *(a1 + 54);
      v17 = *(a1 + 53);
      v18 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      [(_MTLFunctionInternal *)v12 setTrackingData:&v17];
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }
    }

    if (*(a1 + 66))
    {
      if (v13)
      {
        v15 = [(_MTLFunctionInternal *)v13 sourceArchiveOffset];
        if (v15 != -1)
        {
          [(_MTLFunctionInternal *)v13 setSourceArchiveOffset:*(a1 + 65) + v15];
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[1]);
  }

  if (SHIBYTE(v21[0]) < 0)
  {
    operator delete(v20[0]);
  }

  return v13;
}

void sub_185CEBE3C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  MTLLibraryDataWithArchive::AdditionalFunctionData::~AdditionalFunctionData(va);
  _Unwind_Resume(a1);
}

uint64_t MTLLibraryDataWithArchive::newFunctionReflection(MTLLibraryDataWithArchive *this, NSString *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&__p, -[NSString UTF8String](a2, "UTF8String"));
  v3 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(this + 35, &__p);
  v4 = v3;
  if (SHIBYTE(__p.publicArgumentsOffset) < 0)
  {
    operator delete(__p.bitCodeOffset);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

LABEL_3:
  v5 = v4[5];
  __p.bitcodeType = 0;
  __p.pluginData = 0;
  *&__p.renderTargetArrayIndexType = 0;
  __p.functionInputs = 0;
  __p.airScript = 0;
  memset(&__p, 0, 56);
  v13 = 0;
  *v12 = 0u;
  v11 = 0u;
  *v10 = 0u;
  *v9 = 0u;
  if (MTLLibraryDataWithArchive::getFunctionAtOffset(this, v5, &__p, &v8))
  {
    if (__p.airScript)
    {
      dispatch_release(__p.airScript);
    }

    if (__p.functionInputs)
    {
      dispatch_release(__p.functionInputs);
    }

    if (__p.reflectionDataOffset == -1)
    {
      v6 = 0;
    }

    else
    {
      v6 = (*(*this + 152))(this);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[1]);
  }

  if (SHIBYTE(v10[0]) < 0)
  {
    operator delete(v9[0]);
  }

  return v6;
}

NSObject *MTLLibraryDataWithArchive::newMetalScript(MTLLibraryDataWithArchive *this)
{
  result = *(this + 79);
  if (result)
  {
    dispatch_retain(result);
    return *(this + 79);
  }

  return result;
}

dispatch_data_t MTLLibraryDataWithArchive::handleMetalScript(MTLLibraryDataWithArchive *this, char *buffer, size_t size)
{
  v3 = size;
  v6 = *(this + 79);
  if (v6)
  {
    dispatch_release(v6);
  }

  result = dispatch_data_create(buffer, v3, 0, *MEMORY[0x1E69E9648]);
  *(this + 79) = result;
  return result;
}

uint64_t MTLLibraryDataWithArchive::extractFlatbuffer(MTLLibraryDataWithArchive *this, char **a2, unsigned int *a3, NSError **a4)
{
  v35[0] = this;
  v35[1] = a4;
  v34 = 0;
  if ((*(*this + 368))(this, &v34, 4) == 4)
  {
    *a2 = 0;
    *a3 = 0;
    v8 = -1;
    v33 = 0;
    *&size[1] = 0;
    size[0] = -1;
    while ((*(*this + 368))(this, &v33, 4) == 4)
    {
      v9 = bswap32(v33);
      v33 = v9;
      if (v9 > 1396855641)
      {
        if (v9 == 1396855642)
        {
          goto LABEL_21;
        }

        if (v9 == 1396856134)
        {
LABEL_15:
          if ((*(*this + 368))(this, &size[2], 4) != 4)
          {
            break;
          }

          v12 = (*(*this + 392))(this);
          v31 = 0;
          v30 = 0;
          if (((*(*this + 224))(this, a2, v12, size[2], 16, &v31, &v30) & 1) == 0)
          {
            goto LABEL_48;
          }

          if (((*(*this + 360))(this, v31) & 1) == 0)
          {
            if (!a4)
            {
              return 0;
            }

            v25 = MEMORY[0x1E695DF20];
            v26 = *MEMORY[0x1E696A578];
            v27 = @"Invalid library file (unexpected end of file)";
            goto LABEL_44;
          }

          v13 = v30;
          if ((*(*this + 368))(this, *a2, v30) != v13)
          {
            if (a4)
            {
              v29 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid library file/data (unexpected end of file)" forKey:*MEMORY[0x1E696A578]];
              *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v29];
            }

            free(*a2);
LABEL_48:
            *a2 = 0;
            return 0;
          }

          *a3 = v30;
          goto LABEL_26;
        }

        v10 = 1396856154;
      }

      else
      {
        if (v9 <= 1380078917)
        {
          if (v9 == 1380078426)
          {
LABEL_21:
            LOWORD(v31) = 0;
            if ((*(*this + 368))(this, &v31, 2) != 2 || (v14 = v31, (*(*this + 368))(this, &size[1], v31) != v14))
            {
              if (!a4)
              {
                return 0;
              }

              v25 = MEMORY[0x1E695DF20];
              v26 = *MEMORY[0x1E696A578];
              v27 = @"Invalid library file/data (unexpected end of file)";
LABEL_44:
              v28 = [v25 dictionaryWithObject:v27 forKey:v26];
              *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v28];
              return 0;
            }

            goto LABEL_26;
          }

          if (v9 == 1162757204)
          {
            goto LABEL_27;
          }

          goto LABEL_25;
        }

        if (v9 == 1380078918)
        {
          goto LABEL_15;
        }

        v10 = 1380078938;
      }

      if (v9 == v10)
      {
        if ((*(*this + 368))(this, size, 4) != 4)
        {
          break;
        }

        v8 = (*(*this + 392))(this);
        v11 = (*(*this + 392))(this);
        if (((*(*this + 360))(this, v11 + size[0]) & 1) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_26;
      }

LABEL_25:
      v15 = (*(*this + 392))(this);
      if (((*(*this + 360))(this, v15 + size[2]) & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_26:
      if (v33 == 1162757204)
      {
LABEL_27:
        result = 1;
        if (size[0] == -1 || v8 == -1)
        {
          return result;
        }

        v17 = (*(*this + 392))(this);
        if ((*(*this + 360))(this, v8))
        {
          if (malloc_type_posix_memalign(a2, 0x10uLL, size[1], 0x37A90BEDuLL))
          {
            return 0;
          }

          v18 = malloc_type_malloc(size[0], 0xE761EB1CuLL);
          if (MTLLibraryDataWithArchive::extractFlatbuffer(char **,unsigned int *,NSError **)::$_0::operator()(v35, v18, size[0]))
          {
            v19 = (*(*this + 232))(this, *a2, size[1], v18, size[0]);
            free(v18);
            if (v19)
            {
              *a3 = 0;
              if ((*(*this + 360))(this, v17))
              {
                return 1;
              }

LABEL_49:
              generateNSError(a4, &cfstr_Mtllibraryerro.isa, MTLLibraryErrorUnsupported, &cfstr_InvalidLibrary_1.isa);
              return 0;
            }
          }

          else
          {
            free(v18);
          }

          free(*a2);
          result = 0;
          *a2 = 0;
          return result;
        }

LABEL_40:
        if (!a4)
        {
          return 0;
        }

        v20 = MEMORY[0x1E695DF20];
        v21 = *MEMORY[0x1E696A578];
        v22 = @"Invalid library file (unexpected end of file)";
        goto LABEL_37;
      }
    }
  }

  if (!a4)
  {
    return 0;
  }

  v20 = MEMORY[0x1E695DF20];
  v21 = *MEMORY[0x1E696A578];
  v22 = @"Invalid library file/data (unexpected end of file)";
LABEL_37:
  v23 = [v20 dictionaryWithObject:v22 forKey:v21];
  v24 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v23];
  result = 0;
  *a4 = v24;
  return result;
}

BOOL MTLLibraryDataWithArchive::extractFlatbuffer(char **,unsigned int *,NSError **)::$_0::operator()(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(**a1 + 368))(*a1, a2);
  if (v5 != a3)
  {
    v6 = a1[1];
    if (v6)
    {
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid library file/data (unexpected end of file)" forKey:*MEMORY[0x1E696A578]];
      *v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v7];
    }
  }

  return v5 == a3;
}

dispatch_data_t MTLLibraryDataWithArchive::newFunctionReflectionData(MTLLibraryDataWithArchive *this, uint64_t a2)
{
  (*(*this + 360))(this, *(this + 73) + a2);
  memset(size, 0, sizeof(size));
  v6 = 0;
  v3 = (*(*this + 384))(this, &size[1], size, &v6);
  v4 = 0;
  if (v3)
  {
    v4 = dispatch_data_create(*&size[1], size[0], 0, 0);
    free(*&size[1]);
  }

  return v4;
}

uint64_t MTLLibraryDataWithArchive::functionHashes(MTLLibraryDataWithArchive *this)
{
  v2 = MTLLibraryData::mutex(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 33);
  if (!v3)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    std::vector<NSValue *>::reserve(&v9, *(this + 43));
    for (i = *(this + 42); i; i = *i)
    {
      v8 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:i + 2 objCType:"{?=[32C]}"];
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v9, &v8);
    }

    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:? count:?];
    *(this + 33) = v3;
    v5 = v9;
    v6 = v10;
    if (v9 != v10)
    {
      do
      {
      }

      while (v5 != v6);
      v3 = *(this + 33);
      v5 = v9;
    }

    if (v5)
    {
      v10 = v5;
      operator delete(v5);
    }
  }

  os_unfair_lock_unlock(v2);
  return v3;
}