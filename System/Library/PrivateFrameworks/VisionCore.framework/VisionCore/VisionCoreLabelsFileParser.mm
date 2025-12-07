@interface VisionCoreLabelsFileParser
+ (BOOL)isValidLabel:(id)label;
+ (BOOL)parseLabels:(id *)labels fromContentsOfURL:(id)l invalidLabelPlaceholderObject:(id)object validLabelIndexes:(id *)indexes error:(id *)error;
@end

@implementation VisionCoreLabelsFileParser

+ (BOOL)parseLabels:(id *)labels fromContentsOfURL:(id)l invalidLabelPlaceholderObject:(id)object validLabelIndexes:(id *)indexes error:(id *)error
{
  v40[19] = *MEMORY[0x1E69E9840];
  lCopy = l;
  objectCopy = object;
  v33 = lCopy;
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  if (!fileSystemRepresentation)
  {
    if (error)
    {
      errorCopy = error;
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to open %@", v33];
      *errorCopy = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v27];
    }

    v21 = 0;
    goto LABEL_42;
  }

  errorCopy2 = error;
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = objc_alloc_init(MEMORY[0x1E696AD50]);
  memset(&v35, 0, sizeof(v35));
  std::ifstream::basic_ifstream(v37, fileSystemRepresentation);
  v14 = 0;
  while (2)
  {
    std::ios_base::getloc((v37 + *(v37[0] - 24)));
    v15 = std::locale::use_facet(&v36, MEMORY[0x1E69E5318]);
    v16 = (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v36);
    MEMORY[0x1E12C7F50](&v36, v37, 1);
    if (LOBYTE(v36.__locale_) != 1)
    {
      goto LABEL_20;
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      *v35.__r_.__value_.__l.__data_ = 0;
      v35.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v35.__r_.__value_.__s.__data_[0] = 0;
      *(&v35.__r_.__value_.__s + 23) = 0;
    }

    v17 = 0;
    while (1)
    {
      v18 = *&v39[*(v37[0] - 24) + 4];
      v19 = v18[3];
      if (v19 != v18[4])
      {
        v18[3] = v19 + 1;
        LOBYTE(v18) = *v19;
        goto LABEL_11;
      }

      LODWORD(v18) = (*(*v18 + 80))(v18);
      if (v18 == -1)
      {
        break;
      }

LABEL_11:
      if (v16 == v18)
      {
        v20 = 0;
        goto LABEL_19;
      }

      std::string::push_back(&v35, v18);
      ++v17;
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0 && v35.__r_.__value_.__l.__size_ == 0x7FFFFFFFFFFFFFF7)
      {
        v20 = 4;
        goto LABEL_19;
      }
    }

    if (v17)
    {
      v20 = 2;
    }

    else
    {
      v20 = 6;
    }

LABEL_19:
    std::ios_base::clear((v37 + *(v37[0] - 24)), *&v38[*(v37[0] - 24) + 16] | v20);
LABEL_20:
    v21 = (*&v38[*(v37[0] - 24) + 16] & 5) != 0;
    if ((*&v38[*(v37[0] - 24) + 16] & 5) != 0)
    {
      if (labels)
      {
        *labels = [v13 copy];
      }

      if (indexes)
      {
        *indexes = [v34 copy];
      }
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x1E696AEC0]);
      if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v35;
      }

      else
      {
        v23 = v35.__r_.__value_.__r.__words[0];
      }

      v24 = [v22 initWithUTF8String:v23];
      if ([self isValidLabel:v24])
      {
        [v34 addIndex:v14];
LABEL_28:
        [v13 addObject:v24];

        ++v14;
        continue;
      }

      if (objectCopy)
      {
        v25 = objectCopy;

        v24 = v25;
        goto LABEL_28;
      }

      if (errorCopy2)
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Line %lu of %@ contains an invalid label of %@", v14 + 1, lCopy, v24, v39];
        *errorCopy2 = [MEMORY[0x1E696ABC0] VisionCoreErrorForCorruptedResourceWithLocalizedDescription:v28];
      }
    }

    break;
  }

  v37[0] = *MEMORY[0x1E69E54C8];
  *(v37 + *(v37[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1E12C7F40](v38);
  std::istream::~istream();
  MEMORY[0x1E12C7FA0](v40);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

LABEL_42:
  return v21;
}

+ (BOOL)isValidLabel:(id)label
{
  labelCopy = label;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = labelCopy;
    if ([v4 length])
    {
      v5 = [v4 hasPrefix:@"CVML_UNKNOWN_"] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end