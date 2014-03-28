require_relative 'app/models/hospital'
require_relative 'app/models/price'
require_relative 'app/models/procedure'

hospital_data = [{procedure: "Emergency Room Visit, Level 2 (low to moderate severity)", hospital: "Alameda Hospital", price: 680},{procedure: "Emergency Room Visit, Level 3 (moderate severity)", hospital: "Alameda Hospital", price: 1129},{procedure: "Emergency Room Visit, Level 4 (high severity)", hospital: "Alameda Hospital", price: 1720},{procedure: "Basic Metabolic Panel", hospital: "Alameda Hospital", price: 257},{procedure: "Blood Gas Analysis, including 02 saturation", hospital: "Alameda Hospital", price: 280},{procedure: "Complete Blood Count, automated", hospital: "Alameda Hospital", price: 131},{procedure: "Complete Blood Count, with differential WBC, automated", hospital: "Alameda Hospital", price: 142},{procedure: "Comprehensive Metabolic Panel", hospital: "Alameda Hospital", price: 347},{procedure: "Creatine Kinase (CK), (CPK), Total", hospital: "Alameda Hospital", price: 149},{procedure: "Lipid Panel", hospital: "Alameda Hospital", price: 185},{procedure: "Partial Thromboplastin Time", hospital: "Alameda Hospital", price: 135},{procedure: "Prothrombin Time", hospital: "Alameda Hospital", price: 117},{procedure: "Thyroid Stimulating Hormone", hospital: "Alameda Hospital", price: 168},{procedure: "Troponin, Quantitative", hospital: "Alameda Hospital", price: 257},{procedure: "Urinalysis, without microscopy", hospital: "Alameda Hospital", price: 125},{procedure: "Urinalysis, with microscopy", hospital: "Alameda Hospital", price: 120},{procedure: "CT Scan, Abdomen, with contrast", hospital: "Alameda Hospital", price: 3486},{procedure: "CT Scan, Head or Brain, without contrast", hospital: "Alameda Hospital", price: 2732},{procedure: "CT Scan, Pelvis, with contrast", hospital: "Alameda Hospital", price: 3124},{procedure: "Mammography, Screening, Bilateral", hospital: "Alameda Hospital", price: 447},{procedure: "MRI, Head or Brain, without contrast, followed by contrast", hospital: "Alameda Hospital", price: 4807},{procedure: "Ultrasound, Abdomen, Complete", hospital: "Alameda Hospital", price: 1281},{procedure: "Ultrasound, OB, 14 weeks or more, transabdominal", hospital: "Alameda Hospital", price: 992},{procedure: "X-Ray, Lower Back, four views", hospital: "Alameda Hospital", price: 759},{procedure: "X-Ray, Chest, two views", hospital: "Alameda Hospital", price: 425},{procedure: "Inhalation Treatment, pressurized or nonpressurized", hospital: "Alameda Hospital", price: 496},{procedure: "Physical Therapy, Evaluation", hospital: "Alameda Hospital", price: 336},{procedure: "Physical Therapy, Gait Training", hospital: "Alameda Hospital", price: 89},{procedure: "Physical Therapy, Therapeutic Exercise", hospital: "Alameda Hospital", price: 200},{procedure: "Arthroscopy, Knee, with meniscectomy (medial or lateral)", hospital: "Alameda Hospital", price: 18697},{procedure: "Carpal Tunnel Surgery", hospital: "Alameda Hospital", price: 9426},{procedure: "Cataract Removal with Insertion of Intraocular Lens, 1 Stage", hospital: "Alameda Hospital", price: 11098},{procedure: "Colonoscopy, diagnostic", hospital: "Alameda Hospital", price: 3282},{procedure: "Colonoscopy, with biopsy", hospital: "Alameda Hospital", price: 4286},{procedure: "Colonoscopy, with lesion removal, by snare technique", hospital: "Alameda Hospital", price: 4763},{procedure: "Discission, secondary membranous cataract, laser surgery", hospital: "Alameda Hospital", price: 702},{procedure: "Endoscopy, Upper GI, with biopsy", hospital: "Alameda Hospital", price: 5141},{procedure: "Endoscopy, Upper GI, diagnostic", hospital: "Alameda Hospital", price: 3377},{procedure: "Excision, Breast Lesion", hospital: "Alameda Hospital", price: 10670},{procedure: "Hernia Repair, Inguinal, 5 years and older", hospital: "Alameda Hospital", price: 21106},{procedure: "Injection, Diagnostic or Therapeutic substance, epidural, lumbar", hospital: "Alameda Hospital", price: 7209},{procedure: "Laparoscopic Cholecystectomy", hospital: "Alameda Hospital", price: 24860},{procedure: "Tympanostomy (insert ventilating  tube, general anesthesia)", hospital: "Alameda Hospital", price: 9542},{procedure: "Emergency Room Visit, Level 2 (low to moderate severity)", hospital: "Childrens Hospital and Research Center at Oakland", price: 648},{procedure: "Emergency Room Visit, Level 3 (moderate severity)", hospital: "Childrens Hospital and Research Center at Oakland", price: 1512},{procedure: "Emergency Room Visit, Level 4 (high severity)", hospital: "Childrens Hospital and Research Center at Oakland", price: 2485},{procedure: "Basic Metabolic Panel", hospital: "Childrens Hospital and Research Center at Oakland", price: 470},{procedure: "Blood Gas Analysis, including 02 saturation", hospital: "Childrens Hospital and Research Center at Oakland", price: 433},{procedure: "Complete Blood Count, automated", hospital: "Childrens Hospital and Research Center at Oakland", price: 140},{procedure: "Complete Blood Count, with differential WBC, automated", hospital: "Childrens Hospital and Research Center at Oakland", price: 394},{procedure: "Comprehensive Metabolic Panel", hospital: "Childrens Hospital and Research Center at Oakland", price: 729},{procedure: "Creatine Kinase (CK), (CPK), Total", hospital: "Childrens Hospital and Research Center at Oakland", price: 257},{procedure: "Lipid Panel", hospital: "Childrens Hospital and Research Center at Oakland", price: 280},{procedure: "Partial Thromboplastin Time", hospital: "Childrens Hospital and Research Center at Oakland", price: 230},{procedure: "Prothrombin Time", hospital: "Childrens Hospital and Research Center at Oakland", price: 210},{procedure: "Thyroid Stimulating Hormone", hospital: "Childrens Hospital and Research Center at Oakland", price: 230},{procedure: "Troponin, Quantitative", hospital: "Childrens Hospital and Research Center at Oakland", price: 121},{procedure: "Urinalysis, without microscopy", hospital: "Childrens Hospital and Research Center at Oakland", price: 55},{procedure: "CT Scan, Abdomen, with contrast", hospital: "Childrens Hospital and Research Center at Oakland", price: 3545},{procedure: "CT Scan, Head or Brain, without contrast", hospital: "Childrens Hospital and Research Center at Oakland", price: 3520},{procedure: "CT Scan, Pelvis, with contrast", hospital: "Childrens Hospital and Research Center at Oakland", price: 3683},{procedure: "MRI, Head or Brain, without contrast, followed by contrast", hospital: "Childrens Hospital and Research Center at Oakland", price: 7024},{procedure: "Ultrasound, Abdomen, Complete", hospital: "Childrens Hospital and Research Center at Oakland", price: 1648},{procedure: "X-Ray, Lower Back, four views", hospital: "Childrens Hospital and Research Center at Oakland", price: 888},{procedure: "X-Ray, Chest, two views", hospital: "Childrens Hospital and Research Center at Oakland", price: 690},{procedure: "Physical Therapy, Evaluation", hospital: "Childrens Hospital and Research Center at Oakland", price: 535},{procedure: "Physical Therapy, Gait Training", hospital: "Childrens Hospital and Research Center at Oakland", price: 176},{procedure: "Physical Therapy, Therapeutic Exercise", hospital: "Childrens Hospital and Research Center at Oakland", price: 228},{procedure: "Echocardiography, complete", hospital: "Childrens Hospital and Research Center at Oakland", price: 1606},{procedure: "Basic Metabolic Panel", hospital: "Eden Medical Center", price: 239},{procedure: "Comprehensive Metabolic Panel", hospital: "Eden Medical Center", price: 302},{procedure: "Lipid Panel", hospital: "Eden Medical Center", price: 386},{procedure: "Creatine Kinase (CK), (CPK), Total", hospital: "Eden Medical Center", price: 160},{procedure: "Blood Gas Analysis, including 02 saturation", hospital: "Eden Medical Center", price: 555},{procedure: "Thyroid Stimulating Hormone", hospital: "Eden Medical Center", price: 476},{procedure: "Troponin, Quantitative", hospital: "Eden Medical Center", price: 242},{procedure: "Complete Blood Count, with differential WBC, automated", hospital: "Eden Medical Center", price: 217},{procedure: "Complete Blood Count, automated", hospital: "Eden Medical Center", price: 182},{procedure: "Prothrombin Time", hospital: "Eden Medical Center", price: 95},{procedure: "Partial Thromboplastin Time", hospital: "Eden Medical Center", price: 148},{procedure: "CT Scan, Head or Brain, without contrast", hospital: "Eden Medical Center", price: 1944},{procedure: "X-Ray, Chest, two views", hospital: "Eden Medical Center", price: 401},{procedure: "CT Scan, Pelvis, with contrast", hospital: "Eden Medical Center", price: 4926},{procedure: "CT Scan, Abdomen, with contrast", hospital: "Eden Medical Center", price: 5000},{procedure: "Ultrasound, Abdomen, Complete", hospital: "Eden Medical Center", price: 1394},{procedure: "Echocardiography, complete", hospital: "Eden Medical Center", price: 1452},{procedure: "Inhalation Treatment, pressurized or nonpressurized", hospital: "Eden Medical Center", price: 206},{procedure: "Colonoscopy, diagnostic", hospital: "Eden Medical Center", price: 3292},{procedure: "Basic Metabolic Panel", hospital: "Eden Medical Center", price: 512},{procedure: "Comprehensive Metabolic Panel", hospital: "Eden Medical Center", price: 909},{procedure: "Lipid Panel", hospital: "Eden Medical Center", price: 129},{procedure: "Creatine Kinase (CK), (CPK), Total", hospital: "Eden Medical Center", price: 258},{procedure: "Blood Gas Analysis, including 02 saturation", hospital: "Eden Medical Center", price: 590},{procedure: "Thyroid Stimulating Hormone", hospital: "Eden Medical Center", price: 106},{procedure: "Troponin, Quantitative", hospital: "Eden Medical Center", price: 129},{procedure: "Complete Blood Count, with differential WBC, automated", hospital: "Eden Medical Center", price: 66},{procedure: "Complete Blood Count, automated", hospital: "Eden Medical Center", price: 36},{procedure: "Prothrombin Time", hospital: "Eden Medical Center", price: 66},{procedure: "Partial Thromboplastin Time", hospital: "Eden Medical Center", price: 101},{procedure: "CT Scan, Head or Brain, without contrast", hospital: "Eden Medical Center", price: 1944}]
# hospital_data.each do |attribute_hash|
#   entry = Entry.create!(attribute_hash[procedure])
# end

p hospital_data.length

hospital_data.each do |hash|
  Procedure.create!(hash.keys.map{|key| key = :name if key == :procedure})
  Hospital.create!(hash.keys.map{|key| key = :name if key == :hospital})
  Price.create!()
end