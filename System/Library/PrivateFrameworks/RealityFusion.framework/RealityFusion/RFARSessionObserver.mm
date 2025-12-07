@interface RFARSessionObserver
- (RFARSessionObserver)init;
- (id).cxx_construct;
- (void)dealloc;
- (void)processAddedAnchors:(id)anchors;
- (void)processRemovedAnchors:(id)anchors;
- (void)processUpdatedAnchors:(id)anchors;
- (void)processUpdatedExternalAnchors:(id)anchors;
- (void)setCallback:(function<void (rf::data_flow::provider::InputData)&&;
- (void)updateSession:(id)session withTime:(double)time;
@end

@implementation RFARSessionObserver

- (RFARSessionObserver)init
{
  v3.receiver = self;
  v3.super_class = RFARSessionObserver;
  return [(RFARSessionObserver *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = RFARSessionObserver;
  [(RFARSessionObserver *)&v2 dealloc];
}

- (void)processAddedAnchors:(id)anchors
{
  anchorsCopy = anchors;
  v5 = *(self + 21);
  v6 = *(self + 22);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__RFARSessionObserver_processAddedAnchors___block_invoke;
  v8[3] = &unk_279AED1A0;
  v9 = anchorsCopy;
  selfCopy = self;
  v7 = anchorsCopy;
  dispatch_group_async(v5, v6, v8);
}

void __43__RFARSessionObserver_processAddedAnchors___block_invoke()
{
  v0 = MEMORY[0x28223BE20]();
  v98 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = 0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 1065353216;
  v47 = 0;
  v67 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v66 = 0;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v72 = 0;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0;
  memset(v25, 0, 24);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = v0;
  v1 = *(v0 + 32);
  v2 = [v1 countByEnumeratingWithState:&v21 objects:v32 count:16];
  if (v2)
  {
    v3 = *v22;
    do
    {
      v4 = 0;
      do
      {
        if (*v22 != v3)
        {
          objc_enumerationMutation(v1);
        }

        *&v27 = *(*(&v21 + 1) + 8 * v4);
        std::vector<ARAnchor * {__strong}>::emplace_back<ARAnchor * {__strong}&>(v25, &v27);

        ++v4;
      }

      while (v2 != v4);
      v2 = [v1 countByEnumeratingWithState:&v21 objects:v32 count:16];
    }

    while (v2);
  }

  v31[0] = &unk_287408190;
  v31[3] = v31;
  std::function<rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::operator()(&v27, v31, *(v14 + 32));
  std::vector<rf::data_flow::provider::InputMesh>::__vdeallocate(&v33);
  v33 = v27;
  *&v34 = v28;
  v28 = 0;
  v27 = 0uLL;
  rf::data_flow::provider::InputData::~InputData(&v27);
  *(&v27 + 1) = v25;
  v29 = 0;
  v30 = 0;
  std::vector<rf::data_flow::EnvironmentProbe>::vector[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>,rf::data_flow::EnvironmentProbe (*)(ARAnchor *)>>(&v15, &v27);
  std::vector<rf::data_flow::EnvironmentProbe>::__vdeallocate(&v48);
  v48 = v15;
  *&v49 = v16;
  v16 = 0;
  v15 = 0uLL;
  v97 = &v15;
  std::vector<rf::data_flow::EnvironmentProbe>::__destroy_vector::operator()[abi:ne200100](&v97);
  v5 = *(v14 + 40);
  *(&v15 + 1) = v25;
  v13 = v5;
  *&v15 = v13;
  v17 = 0;
  v18 = 0;
  v20 = 0;
  v19 = 0uLL;
  v7 = std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](&v15 + 8);
  v8 = *(*(&v15 + 1) + 8);
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v9 = v6;
    v10 = 0;
    do
    {
      v11 = v7 + 1;
      v7 = *(*v9 + 1);
      while (v11 != v7)
      {
        if (v9[1](*v11))
        {
          v7 = v11;
          break;
        }

        ++v11;
      }

      ++v10;
    }

    while (v7 != v8);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](&v15 + 8);
  v25[3] = &v19;
  v26 = 0;
  if (v10)
  {
    std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vallocate[abi:ne200100](&v19, v10);
  }

  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vdeallocate(v37 + 1);
  *(v37 + 8) = v19;
  *(&v37[1] + 1) = v20;
  v20 = 0;
  v19 = 0uLL;
  *&v27 = &v19;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](&v27);

  v12 = *(*(v14 + 40) + 32);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v12 + 48))(v12, &v33);
  std::__function::__value_func<rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::~__value_func[abi:ne200100](v31);
  *&v27 = v25;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v27);
  rf::data_flow::provider::InputData::~InputData(&v33);
}

- (void)processUpdatedAnchors:(id)anchors
{
  anchorsCopy = anchors;
  v5 = *(self + 21);
  v6 = *(self + 22);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__RFARSessionObserver_processUpdatedAnchors___block_invoke;
  v8[3] = &unk_279AED1A0;
  v9 = anchorsCopy;
  selfCopy = self;
  v7 = anchorsCopy;
  dispatch_group_async(v5, v6, v8);
}

void __45__RFARSessionObserver_processUpdatedAnchors___block_invoke()
{
  v0 = MEMORY[0x28223BE20]();
  v79 = *MEMORY[0x277D85DE8];
  v37 = 0;
  v38 = 0;
  memset(v31, 0, sizeof(v31));
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 1065353216;
  v45 = 0;
  v49 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v46 = 0u;
  v54 = 0;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0;
  memset(v24, 0, 24);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v1 = *(v0 + 32);
  v2 = [v1 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v2)
  {
    v3 = *v21;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v21 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v26[0] = *(*(&v20 + 1) + 8 * i);
        std::vector<ARAnchor * {__strong}>::emplace_back<ARAnchor * {__strong}&>(v24, v26);
      }

      v2 = [v1 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v2);
  }

  v29[0] = &unk_287408220;
  v29[3] = v29;
  std::function<rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::operator()(v26, v29, *(v0 + 32));
  std::vector<rf::data_flow::provider::InputMesh>::__vdeallocate(&v31[1] + 1);
  *(&v31[1] + 8) = v27;
  *(&v31[2] + 1) = v28;
  v28 = 0;
  v27 = 0uLL;
  rf::data_flow::provider::InputData::~InputData(v26);
  v26[1] = v24;
  LOBYTE(v27) = 0;
  BYTE8(v27) = 0;
  std::vector<rf::data_flow::EnvironmentProbe>::vector[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>,rf::data_flow::EnvironmentProbe (*)(ARAnchor *)>>(&v14, v26);
  std::vector<rf::data_flow::EnvironmentProbe>::__vdeallocate(v47 + 1);
  *(v47 + 8) = v14;
  *(&v47[1] + 1) = v15;
  v15 = 0;
  v14 = 0uLL;
  *&v18 = &v14;
  std::vector<rf::data_flow::EnvironmentProbe>::__destroy_vector::operator()[abi:ne200100](&v18);
  v5 = *(v0 + 40);
  *(&v14 + 1) = v24;
  v6 = v5;
  *&v14 = v6;
  v16 = 0;
  v17 = 0;
  v19 = 0;
  v18 = 0uLL;
  v8 = std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](&v14 + 8);
  v9 = *(*(&v14 + 1) + 8);
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v10 = v7;
    v11 = 0;
    do
    {
      v12 = v8 + 1;
      v8 = *(*v10 + 1);
      while (v12 != v8)
      {
        if (v10[1](*v12))
        {
          v8 = v12;
          break;
        }

        ++v12;
      }

      ++v11;
    }

    while (v8 != v9);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](&v14 + 8);
  v24[3] = &v18;
  v25 = 0;
  if (v11)
  {
    std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vallocate[abi:ne200100](&v18, v11);
  }

  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vdeallocate(&v32);
  v32 = v18;
  *&v33 = v19;
  v19 = 0;
  v18 = 0uLL;
  v26[0] = &v18;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](v26);

  v13 = *(*(v0 + 40) + 32);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v13 + 48))(v13, v31);
  std::__function::__value_func<rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::~__value_func[abi:ne200100](v29);
  v26[0] = v24;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](v26);
  rf::data_flow::provider::InputData::~InputData(v31);
}

- (void)processRemovedAnchors:(id)anchors
{
  anchorsCopy = anchors;
  v5 = *(self + 21);
  v6 = *(self + 22);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__RFARSessionObserver_processRemovedAnchors___block_invoke;
  v8[3] = &unk_279AED1A0;
  v9 = anchorsCopy;
  selfCopy = self;
  v7 = anchorsCopy;
  dispatch_group_async(v5, v6, v8);
}

void __45__RFARSessionObserver_processRemovedAnchors___block_invoke()
{
  v0 = MEMORY[0x28223BE20]();
  v107 = *MEMORY[0x277D85DE8];
  v49 = 0;
  v50 = 0;
  memset(v41, 0, sizeof(v41));
  __p = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  v47 = 0u;
  v48 = 0;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 1065353216;
  v57 = 0;
  v77 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v82 = 0;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0;
  memset(v32, 0, 24);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = v0;
  v1 = *(v0 + 32);
  v2 = [v1 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v2)
  {
    v3 = *v29;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v29 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v36[0] = *(*(&v28 + 1) + 8 * i);
        std::vector<ARAnchor * {__strong}>::emplace_back<ARAnchor * {__strong}&>(v32, v36);
      }

      v2 = [v1 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v2);
  }

  v39[0] = &unk_2874082A0;
  v39[3] = v39;
  std::function<rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::operator()(v36, v39, *(v20 + 32));
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  __p = v37;
  *&v43 = v38;
  v38 = 0;
  v37 = 0uLL;
  rf::data_flow::provider::InputData::~InputData(v36);
  v21 = v32;
  LOBYTE(v23) = 0;
  v24 = 0;
  v35 = 0;
  v34 = 0uLL;
  v6 = std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](&v21);
  v7 = v21[1];
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v8 = v5;
    v9 = 0;
    do
    {
      v10 = v6 + 1;
      v6 = *(*v8 + 1);
      while (v10 != v6)
      {
        if (v8[1](*v10))
        {
          v6 = v10;
          break;
        }

        ++v10;
      }

      ++v9;
    }

    while (v6 != v7);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](&v21);
  if (v9)
  {
    std::vector<rf::data_flow::RFUUID>::__vallocate[abi:ne200100](&v34, v9);
  }

  if (v61)
  {
    *(&v61 + 1) = v61;
    operator delete(v61);
  }

  v61 = v34;
  *&v62 = v35;
  v11 = *(v20 + 40);
  v22 = v32;
  v12 = v11;
  v21 = v12;
  v24 = 0;
  v25 = 0;
  v27 = 0;
  v26 = 0uLL;
  v14 = std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](&v22);
  v15 = *(v22 + 1);
  if (v15 == v14)
  {
    v17 = 0;
  }

  else
  {
    v16 = v13;
    v17 = 0;
    do
    {
      v18 = v14 + 1;
      v14 = *(*v16 + 1);
      while (v18 != v14)
      {
        if (v16[1](*v18))
        {
          v14 = v18;
          break;
        }

        ++v18;
      }

      ++v17;
    }

    while (v14 != v15);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](&v22);
  v32[3] = &v26;
  v33 = 0;
  if (v17)
  {
    std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vallocate[abi:ne200100](&v26, v17);
  }

  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vdeallocate(&v46[1]);
  *&v46[1] = v26;
  v46[3] = v27;
  v27 = 0;
  v26 = 0uLL;
  v36[0] = &v26;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](v36);

  v19 = *(*(v20 + 40) + 32);
  if (!v19)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v19 + 48))(v19, v41);
  std::__function::__value_func<rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::~__value_func[abi:ne200100](v39);
  v36[0] = v32;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](v36);
  rf::data_flow::provider::InputData::~InputData(v41);
}

- (void)processUpdatedExternalAnchors:(id)anchors
{
  anchorsCopy = anchors;
  v5 = *(self + 21);
  v6 = *(self + 22);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__RFARSessionObserver_processUpdatedExternalAnchors___block_invoke;
  v8[3] = &unk_279AED1A0;
  v9 = anchorsCopy;
  selfCopy = self;
  v7 = anchorsCopy;
  dispatch_group_async(v5, v6, v8);
}

void __53__RFARSessionObserver_processUpdatedExternalAnchors___block_invoke(uint64_t a1)
{
  v89 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = 0;
  memset(v27, 0, sizeof(v27));
  v28 = 0u;
  v29 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 1065353216;
  v38 = 0;
  v58 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v63 = 0;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0;
  memset(v24, 0, 24);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v2)
  {
    v3 = *v21;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v21 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v88[0] = *(*(&v20 + 1) + 8 * i);
        std::vector<ARAnchor * {__strong}>::emplace_back<ARAnchor * {__strong}&>(v24, v88);
      }

      v2 = [v1 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v2);
  }

  v5 = *(a1 + 40);
  v15[0] = v24;
  v13 = v5;
  v16 = 0;
  v17 = 0;
  v19 = 0;
  v18 = 0uLL;
  v7 = std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](v15);
  v8 = *(v15[0] + 8);
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v9 = v6;
    v10 = 0;
    do
    {
      v11 = v7 + 1;
      v7 = *(*v9 + 1);
      while (v11 != v7)
      {
        if (v9[1](*v11))
        {
          v7 = v11;
          break;
        }

        ++v11;
      }

      ++v10;
    }

    while (v7 != v8);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](v15);
  v24[3] = &v18;
  v25 = 0;
  if (v10)
  {
    std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vallocate[abi:ne200100](&v18, v10);
  }

  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vdeallocate(&v28);
  v28 = v18;
  v29 = v19;
  v19 = 0;
  v18 = 0uLL;
  v88[0] = &v18;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](v88);

  v12 = *(*(a1 + 40) + 32);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v12 + 48))(v12, v27);
  v88[0] = v24;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](v88);
  rf::data_flow::provider::InputData::~InputData(v27);
}

- (void)setCallback:(function<void (rf::data_flow::provider::InputData)&&
{
  v10[3] = *MEMORY[0x277D85DE8];
  f = a3->__f_.__f_;
  if (f)
  {
    if (f == a3)
    {
      v9 = v8;
      (*(*f->__f_.__buf_.__data + 24))(f, v8);
    }

    else
    {
      v9 = (*(*f->__f_.__buf_.__data + 16))(f, a2);
    }
  }

  else
  {
    v9 = 0;
  }

  v5 = self + 8;
  if (v8 != self + 8)
  {
    v6 = v9;
    v7 = *(self + 4);
    if (v9 == v8)
    {
      if (v7 == v5)
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = 0;
        (*(**(self + 4) + 24))(*(self + 4), v8);
        (*(**(self + 4) + 32))(*(self + 4));
        *(self + 4) = 0;
        v9 = v8;
        (*(v10[0] + 24))(v10, self + 8);
        (*(v10[0] + 32))(v10);
      }

      else
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = *(self + 4);
      }

      *(self + 4) = v5;
    }

    else if (v7 == v5)
    {
      (*(*v7 + 24))(*(self + 4), v8);
      (*(**(self + 4) + 32))(*(self + 4));
      *(self + 4) = v9;
      v9 = v8;
    }

    else
    {
      v9 = *(self + 4);
      *(self + 4) = v6;
    }
  }

  std::__function::__value_func<void ()(rf::data_flow::provider::InputData &&)>::~__value_func[abi:ne200100](v8);
}

- (void)updateSession:(id)session withTime:(double)time
{
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  std::mutex::lock((self + 96));
  v7 = *(self + 10);
  if (*(self + 88) == 1 && v7 != 0)
  {
    v9 = v7 - 1;
    do
    {
      v10 = rf::realityFusionLogObject(v6);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [*(*(*(self + 6) + ((*(self + 9) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(self + 9) & 0x1FFLL)) identifier];
        uUIDString = [identifier UUIDString];
        v13 = uUIDString;
        uTF8String = [uUIDString UTF8String];
        *buf = 136446210;
        v19 = uTF8String;
        _os_log_impl(&dword_2617CB000, v10, OS_LOG_TYPE_DEFAULT, "RFARSessionObserver: Attempting to re-add anchor %{public}s in queue to ARKit", buf, 0xCu);
      }

      [sessionCopy addAnchor:*(*(*(self + 6) + ((*(self + 9) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(self + 9) & 0x1FFLL))];
      v15 = vaddq_s64(*(self + 72), xmmword_261864070);
      *(self + 72) = v15;
      if (v15.i64[0] >= 0x400uLL)
      {
        operator delete(**(self + 6));
        *(self + 6) += 8;
        *(self + 9) -= 512;
      }

      v17 = v9-- != 0;
    }

    while (*(self + 88) == 1 && v17);
  }

  std::mutex::unlock((self + 96));
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 850045863;
  *(self + 104) = 0u;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 19) = 0;
  return self;
}

@end