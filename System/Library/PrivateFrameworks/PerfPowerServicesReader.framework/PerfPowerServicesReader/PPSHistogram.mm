@interface PPSHistogram
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHistogram:(id)histogram;
- (NSArray)metrics;
- (PPSHistogram)initWithBinCount:(unint64_t)count range:(id)range metricName:(id)name;
- (PPSHistogram)initWithBinCount:(unint64_t)count range:(id)range metricName:(id)name samples:(id)samples;
- (PPSHistogram)initWithCoder:(id)coder;
- (PPSHistogram)initWithDimensions:(id)dimensions;
- (PPSHistogram)initWithHistogram:(id)histogram;
- (__n128)counts:;
- (id)JSONRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)counts:(BOOL)counts;
- (id)createArrayFromDimensionIdx:(unint64_t)idx withFlowBins:(BOOL)bins;
- (id)debugDescription;
- (id)description;
- (id)dictionary;
- (id)indicesFor:(id)for;
- (uint64_t)counts:;
- (void)JSONRepresentation;
- (void)counts:;
- (void)encodeWithCoder:(id)coder;
- (void)recordSample:(id)sample;
@end

@implementation PPSHistogram

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PPSHistogram allocWithZone:zone];

  return [(PPSHistogram *)v4 initWithHistogram:self];
}

- (PPSHistogram)initWithCoder:(id)coder
{
  v13[35] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PPSHistogram;
  if ([(PPSHistogram *)&v12 init])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_PPSHistogram"];
    v6 = v5;
    bytes = [v5 bytes];
    v8 = [v5 length];
    v9 = v8;
    if (v8 < 0x7FFFFFFFFFFFFFF8)
    {
      if (v8 < 0x17)
      {
        *(&__dst[0].__r_.__value_.__s + 23) = v8;
        if (v8)
        {
          memmove(__dst, bytes, v8);
        }

        __dst[0].__r_.__value_.__s.__data_[v9] = 0;
        std::istringstream::basic_istringstream[abi:ne200100](v13, __dst, 8);
        if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst[0].__r_.__value_.__l.__data_);
        }

        boost::archive::text_iarchive::text_iarchive(__dst, v13, 0);
      }

      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v5[33] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  std::ostringstream::basic_ostringstream[abi:ne200100](v5);
  boost::archive::text_oarchive::text_oarchive(v4, v5, 0);
}

- (PPSHistogram)initWithBinCount:(unint64_t)count range:(id)range metricName:(id)name
{
  v9 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v8.receiver = self;
  v8.super_class = PPSHistogram;
  if ([(PPSHistogram *)&v8 init])
  {
    operator new();
  }

  return 0;
}

- (PPSHistogram)initWithBinCount:(unint64_t)count range:(id)range metricName:(id)name samples:(id)samples
{
  var1 = range.var1;
  var0 = range.var0;
  v27 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  var1 = [(PPSHistogram *)self initWithBinCount:count range:name metricName:var0, var1];
  v13 = var1;
  if (var1)
  {
    if (!var1->_histogramPtr.__ptr_)
    {
      v19 = 0;
      goto LABEL_13;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = samplesCopy;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v15)
    {
      v16 = *v22;
      do
      {
        v17 = 0;
        do
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v25 = *(*(&v21 + 1) + 8 * v17);
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:{1, v21}];
          [(PPSHistogram *)v13 recordSample:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v15);
    }
  }

  v19 = v13;
LABEL_13:

  return v19;
}

- (PPSHistogram)initWithDimensions:(id)dimensions
{
  v85 = *MEMORY[0x277D85DE8];
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = dimensions;
  v3 = [obj countByEnumeratingWithState:&v74 objects:v84 count:{16, dimensions}];
  if (v3)
  {
    v55 = *v75;
LABEL_3:
    v56 = 0;
    v53 = v3;
    while (1)
    {
      if (*v75 != v55)
      {
        objc_enumerationMutation(obj);
      }

      v4 = *(*(&v74 + 1) + 8 * v56);
      v5 = [v4 size];
      [v4 range];
      v7 = v6;
      range = [v4 range];
      v10 = v9;
      if (v5)
      {
        if (v7 == 0.0 && v9 == 0.0)
        {
          edges = [v4 edges];
          v12 = [edges count] == 0;

          if (v12)
          {
            v49 = logHandle(range);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              [PPSHistogram initWithDimensions:];
            }

            goto LABEL_70;
          }
        }
      }

      if (v10 < v7)
      {
        break;
      }

      if (!v5 || ([v4 edges], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count") == 0, v13, v14))
      {
        v49 = logHandle(range);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          [PPSHistogram initWithDimensions:];
        }

LABEL_70:

        v48 = 0;
        goto LABEL_71;
      }

      LODWORD(v68) = v5;
      *(&v68 + 1) = v7;
      v69 = v10;
      v70 = 0;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      edges2 = [v4 edges];
      v16 = [edges2 count] == 0;

      if (!v16)
      {
        if ([v4 isCategoryDimension])
        {
          v66 = 0uLL;
          v67 = 0uLL;
          v64 = 0uLL;
          v65 = 0uLL;
          edges3 = [v4 edges];
          v18 = [edges3 countByEnumeratingWithState:&v64 objects:v83 count:16];
          if (v18)
          {
            v19 = *v65;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v65 != v19)
                {
                  objc_enumerationMutation(edges3);
                }

                std::string::basic_string[abi:ne200100]<0>(__p, [*(*(&v64 + 1) + 8 * i) UTF8String]);
                v21 = *(&v71 + 1);
                if (*(&v71 + 1) >= v72)
                {
                  v23 = 0xAAAAAAAAAAAAAAABLL * ((*(&v71 + 1) - v71) >> 3);
                  v24 = v23 + 1;
                  if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
                  }

                  if (0x5555555555555556 * ((v72 - v71) >> 3) > v24)
                  {
                    v24 = 0x5555555555555556 * ((v72 - v71) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v72 - v71) >> 3) >= 0x555555555555555)
                  {
                    v25 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v25 = v24;
                  }

                  v81.__end_cap_.__value_ = &v71;
                  if (v25)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v71, v25);
                  }

                  v26 = 8 * ((*(&v71 + 1) - v71) >> 3);
                  v27 = *__p;
                  *(v26 + 16) = v63;
                  *v26 = v27;
                  __p[1] = 0;
                  v63 = 0;
                  __p[0] = 0;
                  v28 = 24 * v23 + 24;
                  v29 = 24 * v23 - (*(&v71 + 1) - v71);
                  memcpy((v26 - (*(&v71 + 1) - v71)), v71, *(&v71 + 1) - v71);
                  v30 = v71;
                  v31 = v72;
                  *&v71 = v29;
                  *(&v71 + 1) = v28;
                  *&v72 = 0;
                  v81.__end_ = v30;
                  v81.__end_cap_.__value_ = v31;
                  v81.__first_ = v30;
                  v81.__begin_ = v30;
                  std::__split_buffer<std::string>::~__split_buffer(&v81);
                  *(&v71 + 1) = v28;
                  if (SHIBYTE(v63) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                else
                {
                  v22 = *__p;
                  *(*(&v71 + 1) + 16) = v63;
                  *v21 = v22;
                  *(&v71 + 1) = v21 + 24;
                }
              }

              v18 = [edges3 countByEnumeratingWithState:&v64 objects:v83 count:16];
            }

            while (v18);
          }
        }

        else
        {
          v60 = 0uLL;
          v61 = 0uLL;
          v58 = 0uLL;
          v59 = 0uLL;
          edges3 = [v4 edges];
          v32 = [edges3 countByEnumeratingWithState:&v58 objects:v82 count:16];
          if (v32)
          {
            v33 = *v59;
            do
            {
              for (j = 0; j != v32; ++j)
              {
                if (*v59 != v33)
                {
                  objc_enumerationMutation(edges3);
                }

                [*(*(&v58 + 1) + 8 * j) doubleValue];
                v36 = v73;
                if (v73 >= *(&v73 + 1))
                {
                  v38 = *(&v72 + 1);
                  v39 = v73 - *(&v72 + 1);
                  v40 = (v73 - *(&v72 + 1)) >> 3;
                  v41 = v40 + 1;
                  if ((v40 + 1) >> 61)
                  {
                    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
                  }

                  v42 = *(&v73 + 1) - *(&v72 + 1);
                  if ((*(&v73 + 1) - *(&v72 + 1)) >> 2 > v41)
                  {
                    v41 = v42 >> 2;
                  }

                  v43 = v42 >= 0x7FFFFFFFFFFFFFF8;
                  v44 = 0x1FFFFFFFFFFFFFFFLL;
                  if (!v43)
                  {
                    v44 = v41;
                  }

                  if (v44)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&v72 + 8, v44);
                  }

                  *(8 * v40) = v35;
                  v37 = 8 * v40 + 8;
                  memcpy(0, v38, v39);
                  v45 = *(&v72 + 1);
                  *(&v72 + 1) = 0;
                  v73 = v37;
                  if (v45)
                  {
                    operator delete(v45);
                  }
                }

                else
                {
                  *v73 = v35;
                  v37 = v36 + 8;
                }

                *&v73 = v37;
              }

              v32 = [edges3 countByEnumeratingWithState:&v58 objects:v82 count:16];
            }

            while (v32);
          }
        }
      }

      v46 = v79;
      if (v79 >= v80)
      {
        v47 = std::vector<pps::AxisConfig_Internal>::__emplace_back_slow_path<pps::AxisConfig_Internal&>(&v78, &v68);
      }

      else
      {
        std::vector<pps::AxisConfig_Internal>::__construct_one_at_end[abi:ne200100]<pps::AxisConfig_Internal&>(&v78, &v68);
        v47 = v46 + 80;
      }

      v79 = v47;
      if (*(&v72 + 1))
      {
        *&v73 = *(&v72 + 1);
        operator delete(*(&v72 + 1));
      }

      v81.__first_ = &v71;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v81);
      if (++v56 == v53)
      {
        v3 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        goto LABEL_61;
      }
    }

    v49 = logHandle(range);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      [PPSHistogram initWithDimensions:];
    }

    goto LABEL_70;
  }

LABEL_61:

  v57.receiver = self;
  v57.super_class = PPSHistogram;
  if ([(PPSHistogram *)&v57 init])
  {
    operator new();
  }

  v48 = 0;
  self = v48;
LABEL_71:
  *&v68 = &v78;
  std::vector<pps::AxisConfig_Internal>::__destroy_vector::operator()[abi:ne200100](&v68);

  return v48;
}

- (BOOL)isEqualToHistogram:(id)histogram
{
  histogramCopy = histogram;
  rank = [(PPSHistogram *)self rank];
  if (rank != [histogramCopy rank])
  {
    goto LABEL_12;
  }

  v6 = 0;
  while (v6 < [(PPSHistogram *)self rank])
  {
    dimensions = [(PPSHistogram *)self dimensions];
    v8 = [dimensions objectAtIndexedSubscript:v6];
    [v8 range];
    v10 = v9;
    v12 = v11;
    dimensions2 = [histogramCopy dimensions];
    v14 = [dimensions2 objectAtIndexedSubscript:v6];
    [v14 range];
    v16 = v15;
    v18 = v17;

    v19 = 0;
    if (v10 == v16)
    {
      ++v6;
      if (v12 == v18)
      {
        continue;
      }
    }

    goto LABEL_13;
  }

  if (histogramCopy && (v20 = -[PPSHistogram size](self, "size"), v20 == [histogramCopy size]) && (v21 = -[PPSHistogram sum:](self, "sum:", 1), v21 == objc_msgSend(histogramCopy, "sum:", 1)))
  {
    ptr = self->_histogramPtr.__ptr_;
    v23 = histogramCopy[1];
    if (ptr == v23)
    {
      v19 = 1;
    }

    else
    {
      v19 = pps::Histogram_Internal::operator==(ptr, v23);
    }
  }

  else
  {
LABEL_12:
    v19 = 0;
  }

LABEL_13:

  return v19;
}

- (NSArray)metrics
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  dimensions = [(PPSHistogram *)self dimensions];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(dimensions, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  dimensions2 = [(PPSHistogram *)self dimensions];
  v7 = [dimensions2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(dimensions2);
        }

        metricName = [*(*(&v13 + 1) + 8 * i) metricName];
        [v5 addObject:metricName];
      }

      v7 = [dimensions2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v5 copy];

  return v11;
}

- (id)JSONRepresentation
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  dimensions = [(PPSHistogram *)self dimensions];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(dimensions, "count")}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  dimensions2 = [(PPSHistogram *)self dimensions];
  v7 = [dimensions2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(dimensions2);
        }

        v10 = [*(*(&v20 + 1) + 8 * i) performSelector:sel_dictionary];
        if (v10)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [dimensions2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v11 = objc_opt_new();
  v12 = [(PPSHistogram *)self counts:0];
  [v11 setObject:v12 forKeyedSubscript:@"counts"];

  [v11 setObject:v5 forKeyedSubscript:@"dimensions"];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PPSHistogram sum:](self, "sum:", 0)}];
  [v11 setObject:v13 forKeyedSubscript:@"sum"];

  v19 = 0;
  v14 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v11 options:1 error:&v19];
  v15 = v19;
  v16 = v15;
  if (v15)
  {
    v17 = PPSReaderLog(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [PPSHistogram JSONRepresentation];
    }
  }

  return v14;
}

- (id)counts:(BOOL)counts
{
  countsCopy = counts;
  __p[11] = *MEMORY[0x277D85DE8];
  pps::Histogram_Internal::data(__p, self->_histogramPtr.__ptr_, counts, v3);
  [(PPSHistogram *)self createArrayFromDimensionIdx:0 withFlowBins:countsCopy];
  objc_claimAutoreleasedReturnValue();
  v7 = 0;
  __p[6] = 0;
  operator new();
}

- (id)indicesFor:(id)for
{
  v71 = *MEMORY[0x277D85DE8];
  __src = 0;
  v68 = 0;
  v69 = 0;
  forCopy = for;
  std::vector<double>::reserve(&__src, [forCopy count]);
  selfCopy = self;
  pps::Histogram_Internal::categoriesPerAxis(&v65, self->_histogramPtr.__ptr_);
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = forCopy;
  v4 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v62;
    do
    {
      v7 = 0;
      do
      {
        if (*v62 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v61 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 doubleValue];
          v10 = v68;
          if (v68 >= v69)
          {
            v14 = __src;
            v15 = v68 - __src;
            v16 = (v68 - __src) >> 3;
            v17 = v16 + 1;
            if ((v16 + 1) >> 61)
            {
              std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
            }

            v18 = v69 - __src;
            if ((v69 - __src) >> 2 > v17)
            {
              v17 = v18 >> 2;
            }

            v19 = v18 >= 0x7FFFFFFFFFFFFFF8;
            v20 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v19)
            {
              v20 = v17;
            }

            if (v20)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v20);
            }

            v21 = (8 * v16);
            v22 = &v21[-((v68 - __src) >> 3)];
            *v21 = v9;
            v11 = (v21 + 1);
            memcpy(v22, v14, v15);
            v23 = __src;
            __src = v22;
            v68 = v11;
            v69 = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *v68 = v9;
            v11 = v10 + 8;
          }

          v68 = v11;
          goto LABEL_28;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_28;
        }

        v12 = v66[0];
        if (!v66[0])
        {
          goto LABEL_17;
        }

        v13 = v66;
        do
        {
          if (*(v12 + 8) >= v5)
          {
            v13 = v12;
          }

          v12 = v12[*(v12 + 8) < v5];
        }

        while (v12);
        if (v13 == v66 || *(v13 + 8) > v5)
        {
LABEL_17:
          *&v58 = [obj count];
          std::vector<double>::push_back[abi:ne200100](&__src, &v58);
          goto LABEL_28;
        }

        *&v58 = 0.0;
        v59 = 0;
        v60 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v58, v13[5], v13[6], 0xAAAAAAAAAAAAAAABLL * (v13[6] - v13[5]));
        v24 = v58;
        v25 = v59;
        v26 = 0.0;
        while (v24 != v25)
        {
          v27 = v8;
          std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);
          v28 = *(v24 + 23);
          if (v28 >= 0)
          {
            v29 = *(v24 + 23);
          }

          else
          {
            v29 = v24[1];
          }

          v30 = v57;
          v31 = v57;
          if ((v57 & 0x80u) != 0)
          {
            v30 = __p[1];
          }

          if (v29 != v30)
          {
            v34 = 0;
            if ((v57 & 0x80000000) == 0)
            {
              goto LABEL_48;
            }

LABEL_47:
            operator delete(__p[0]);
            goto LABEL_48;
          }

          if (v28 >= 0)
          {
            v32 = v24;
          }

          else
          {
            v32 = *v24;
          }

          if ((v57 & 0x80u) == 0)
          {
            v33 = __p;
          }

          else
          {
            v33 = __p[0];
          }

          v34 = memcmp(v32, v33, v29) == 0;
          if (v31 < 0)
          {
            goto LABEL_47;
          }

LABEL_48:
          if (v34)
          {
            break;
          }

          v26 = v26 + 1.0;
          v24 += 3;
        }

        v35 = v68;
        if (v68 >= v69)
        {
          v37 = __src;
          v38 = v68 - __src;
          v39 = (v68 - __src) >> 3;
          v40 = v39 + 1;
          if ((v39 + 1) >> 61)
          {
            std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
          }

          v41 = v69 - __src;
          if ((v69 - __src) >> 2 > v40)
          {
            v40 = v41 >> 2;
          }

          v19 = v41 >= 0x7FFFFFFFFFFFFFF8;
          v42 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v19)
          {
            v42 = v40;
          }

          if (v42)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v42);
          }

          v43 = (8 * v39);
          v44 = &v43[-((v68 - __src) >> 3)];
          *v43 = v26;
          v36 = v43 + 1;
          memcpy(v44, v37, v38);
          v45 = __src;
          __src = v44;
          v68 = v36;
          v69 = 0;
          if (v45)
          {
            operator delete(v45);
          }
        }

        else
        {
          *v68 = v26;
          v36 = (v35 + 8);
        }

        v68 = v36;
        __p[0] = &v58;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_28:
        ++v5;
        ++v7;
      }

      while (v7 != v4);
      v46 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
      v4 = v46;
    }

    while (v46);
  }

  pps::Histogram_Internal::indicesOfSample(&v58, selfCopy->_histogramPtr.__ptr_, &__src);
  v47 = objc_opt_new();
  v48 = v58;
  v49 = v59;
  if (v58 != v59)
  {
    do
    {
      v50 = [MEMORY[0x277CCABB0] numberWithInteger:{*v48, selfCopy}];
      [v47 addObject:v50];

      ++v48;
    }

    while (v48 != v49);
  }

  v51 = [v47 copy];

  if (*&v58 != 0.0)
  {
    v59 = v58;
    operator delete(v58);
  }

  std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::destroy(&v65, v66[0]);
  if (__src)
  {
    v68 = __src;
    operator delete(__src);
  }

  return v51;
}

- (void)recordSample:(id)sample
{
  v54 = *MEMORY[0x277D85DE8];
  __src = 0;
  v51 = 0;
  v52 = 0;
  sampleCopy = sample;
  pps::Histogram_Internal::categoriesPerAxis(&v48, self->_histogramPtr.__ptr_);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  selfCopy = self;
  obj = sampleCopy;
  v4 = [obj countByEnumeratingWithState:&v44 objects:v53 count:{16, sampleCopy}];
  if (v4)
  {
    v5 = 0;
    v6 = *v45;
    do
    {
      v7 = 0;
      do
      {
        if (*v45 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v44 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 doubleValue];
          v41 = v9;
          std::vector<double>::push_back[abi:ne200100](&__src, &v41);
          goto LABEL_17;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v49[0];
          if (!v49[0])
          {
            goto LABEL_16;
          }

          v11 = v49;
          do
          {
            if (*(v10 + 8) >= v5)
            {
              v11 = v10;
            }

            v10 = v10[*(v10 + 8) < v5];
          }

          while (v10);
          if (v11 == v49 || *(v11 + 8) > v5)
          {
LABEL_16:
            v41 = [obj count];
            std::vector<double>::push_back[abi:ne200100](&__src, &v41);
            goto LABEL_17;
          }

          v41 = 0.0;
          v42 = 0;
          v43 = 0;
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v41, v11[5], v11[6], 0xAAAAAAAAAAAAAAABLL * (v11[6] - v11[5]));
          v13 = *&v41;
          v12 = v42;
          v14 = 0.0;
          if (*&v41 == v42)
          {
            goto LABEL_40;
          }

          while (1)
          {
            v15 = v8;
            std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);
            v16 = *(v13 + 23);
            if (v16 >= 0)
            {
              v17 = *(v13 + 23);
            }

            else
            {
              v17 = *(v13 + 8);
            }

            v18 = v40;
            v19 = v40;
            if ((v40 & 0x80u) != 0)
            {
              v18 = __p[1];
            }

            if (v17 != v18)
            {
              break;
            }

            if (v16 >= 0)
            {
              v20 = v13;
            }

            else
            {
              v20 = *v13;
            }

            if ((v40 & 0x80u) == 0)
            {
              v21 = __p;
            }

            else
            {
              v21 = __p[0];
            }

            v22 = memcmp(v20, v21, v17) == 0;
            if (v19 < 0)
            {
              goto LABEL_35;
            }

LABEL_36:
            if (v22)
            {
              self = selfCopy;
LABEL_40:
              v23 = v51;
              if (v51 >= v52)
              {
                v25 = __src;
                v26 = v51 - __src;
                v27 = (v51 - __src) >> 3;
                v28 = v27 + 1;
                if ((v27 + 1) >> 61)
                {
                  std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
                }

                v29 = v52 - __src;
                if ((v52 - __src) >> 2 > v28)
                {
                  v28 = v29 >> 2;
                }

                v30 = v29 >= 0x7FFFFFFFFFFFFFF8;
                v31 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v30)
                {
                  v31 = v28;
                }

                if (v31)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v31);
                }

                v32 = (8 * v27);
                v33 = &v32[-((v51 - __src) >> 3)];
                *v32 = v14;
                v24 = v32 + 1;
                memcpy(v33, v25, v26);
                v34 = __src;
                __src = v33;
                v51 = v24;
                v52 = 0;
                if (v34)
                {
                  operator delete(v34);
                }
              }

              else
              {
                *v51 = v14;
                v24 = v23 + 1;
              }

              v51 = v24;
              __p[0] = &v41;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
              goto LABEL_17;
            }

            v14 = v14 + 1.0;
            v13 += 24;
            self = selfCopy;
            if (v13 == v12)
            {
              goto LABEL_40;
            }
          }

          v22 = 0;
          if ((v40 & 0x80000000) == 0)
          {
            goto LABEL_36;
          }

LABEL_35:
          operator delete(__p[0]);
          goto LABEL_36;
        }

LABEL_17:
        ++v5;
        ++v7;
      }

      while (v7 != v4);
      v35 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
      v4 = v35;
    }

    while (v35);
  }

  pps::Histogram_Internal::record(self->_histogramPtr.__ptr_, &__src);
  std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::destroy(&v48, v49[0]);
  if (__src)
  {
    v51 = __src;
    operator delete(__src);
  }
}

- (id)createArrayFromDimensionIdx:(unint64_t)idx withFlowBins:(BOOL)bins
{
  binsCopy = bins;
  dimensions = [(PPSHistogram *)self dimensions];
  v8 = [dimensions count];

  if (v8 <= idx)
  {
    i = 0;
  }

  else
  {
    dimensions2 = [(PPSHistogram *)self dimensions];
    v10 = [dimensions2 objectAtIndexedSubscript:idx];
    if (binsCopy)
    {
      extent = [v10 extent];
    }

    else
    {
      extent = [v10 size];
    }

    v13 = extent;

    for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:v13];
    {
      dimensions3 = [(PPSHistogram *)self dimensions];
      v15 = [dimensions3 count] - 1;

      if (v15 == idx)
      {
        [i addObject:&unk_287017F28];
      }

      else
      {
        v16 = [(PPSHistogram *)self createArrayFromDimensionIdx:idx + 1 withFlowBins:binsCopy];
        if (v16)
        {
          [i addObject:v16];
        }
      }
    }
  }

  return i;
}

- (id)dictionary
{
  v3 = objc_opt_new();
  v4 = [(PPSHistogram *)self counts:0];
  [v3 setObject:v4 forKeyedSubscript:@"counts"];

  dimensions = [(PPSHistogram *)self dimensions];
  [v3 setObject:dimensions forKeyedSubscript:@"dimensions"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PPSHistogram sum:](self, "sum:", 0)}];
  [v3 setObject:v6 forKeyedSubscript:@"sum"];

  v7 = [v3 copy];

  return v7;
}

- (PPSHistogram)initWithHistogram:(id)histogram
{
  histogramCopy = histogram;
  v7.receiver = self;
  v7.super_class = PPSHistogram;
  if ([(PPSHistogram *)&v7 init])
  {
    operator new();
  }

  v5 = 0;

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PPSHistogram *)self description];
  v7 = [v3 stringWithFormat:@"<%@ %p> %@", v5, self, v6];

  return v7;
}

- (id)description
{
  dictionary = [(PPSHistogram *)self dictionary];
  v3 = [dictionary description];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PPSHistogram *)self isEqualToHistogram:equalCopy];
  }

  return v5;
}

- (__n128)counts:
{
  *a2 = &unk_286FF2690;
  result = *(self + 8);
  *(a2 + 24) = *(self + 24);
  *(a2 + 8) = result;
  return result;
}

- (void)counts:
{
  v11 = *a2;
  if (v11 && **(self + 8) < ((*(*(self + 16) + 8) - **(self + 16)) >> 3))
  {
    for (i = 0; i < [v11 count]; ++i)
    {
      v4 = [v11 objectAtIndexedSubscript:i];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v6 = *(self + 24);
        v7 = [v11 objectAtIndexedSubscript:i];
        std::function<void ()(NSMutableArray *)>::operator()(v6, v7);
      }

      else
      {
        v8 = [v11 objectAtIndexedSubscript:i];
        objc_opt_class();
        v9 = objc_opt_isKindOfClass();

        if (v9)
        {
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(**(self + 16) + 8 * **(self + 8))];
          [v11 setObject:v10 atIndexedSubscript:i];

          ++**(self + 8);
        }
      }
    }
  }
}

- (uint64_t)counts:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)initWithBinCount:range:metricName:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  (*(v0 + 16))(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25E225000, v2, v3, "Couldn't initialize <PPSHistogram: %p> due to std::exception - %s", v4, v5, v6, v7);
}

- (void)JSONRepresentation
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_25E225000, v0, OS_LOG_TYPE_DEBUG, "Error while parsing JSON data: %@", v1, 0xCu);
}

- (void)recordSample:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  (*(v0 + 16))(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25E225000, v2, v3, "Couldn't record sample for <PPSHistogram: %p> due to std::exception - %s", v4, v5, v6, v7);
}

@end