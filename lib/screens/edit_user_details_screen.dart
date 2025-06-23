import 'package:app_jualan/theme/theme.dart';
import 'package:app_jualan/widgets/custom_text_field.dart';
import 'package:app_jualan/widgets/gradient_button.dart';
import 'package:flutter/material.dart';

class EditUserDetailsScreen extends StatefulWidget {
  const EditUserDetailsScreen({super.key});

  @override
  State<EditUserDetailsScreen> createState() => _EditUserDetailsScreenState();
}

class _EditUserDetailsScreenState extends State<EditUserDetailsScreen> {
  final _formKey = GlobalKey<FormState>();

  final _firsNameController = TextEditingController(text: "Moh");
  final _lastNameController = TextEditingController(text: "Farhan");
  final _emailController = TextEditingController(text: "farhan@gmail.com");
  final _phoneController = TextEditingController(text: "0877-6242-1070");
  final _dobController = TextEditingController(text: "15 jan 1990");
  String _selectedGener = 'Male';

  @override
  void dispose() {
    _firsNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _dobController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: AppTheme.primaryGradient,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: -50,
                  right: -50,
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: 48,
                  left: 16,
                  right: 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                      ),
                      Text(
                        "User Details",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.15,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: AppTheme.primaryGradient,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 4),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset('assets/images/profile.jpg'),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: InkWell(
                          onTap: (){
                            // image picker functionality
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: AppTheme.primaryColor,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Basic Informatoion",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.textPrimary,
                            ),
                          ),
                          SizedBox(height: 24),
                          Row(
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  controller: _firsNameController,
                                  label: 'First Name',
                                  prefixIcon: Icons.person,
                                  validator: (value) {
                                    if (value!.isEmpty || value == null) {
                                      return 'First Name is requeired';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: CustomTextField(
                                  controller: _lastNameController,
                                  label: 'Last Name',
                                  prefixIcon: Icons.person,
                                  validator: (value) {
                                    if (value!.isEmpty || value == null) {
                                      return 'Last Name is requeired';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          CustomTextField(
                            controller: _emailController,
                            label: 'Email',
                            prefixIcon: Icons.email,
                            validator: (value) {
                              if (value!.isEmpty || value == null) {
                                return 'Email is requeired';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 16),
                          CustomTextField(
                            controller: _phoneController,
                            label: 'Phone',
                            prefixIcon: Icons.phone,
                            validator: (value) {
                              if (value!.isEmpty || value == null) {
                                return 'Phone is requeired';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 24),
                          Text(
                            "Addiyional Informatoion",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.textPrimary,
                            ),
                          ),
                          SizedBox(height: 15),
                          CustomTextField(
                            controller: _dobController,
                            label: 'Date  of Birth',
                            prefixIcon: Icons.calendar_today,
                            validator: (value) {
                              if (value!.isEmpty || value == null) {
                                return 'Date of Birth is requeired';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Gender",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppTheme.textSecondary,
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppTheme.textSecondary.withOpacity(
                                      0.2,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  children: [
                                    RadioListTile<String>(
                                      title: Text("Male"),
                                      value: "Male",
                                      groupValue: _selectedGener,
                                      activeColor: AppTheme.primaryColor,
                                      onChanged: (String? value) {
                                        _selectedGener = value!;
                                      },
                                    ),
                                    RadioListTile<String>(
                                      title: Text("Female"),
                                      value: "Female",
                                      groupValue: _selectedGener,
                                      activeColor: AppTheme.primaryColor,
                                      onChanged: (String? value) {
                                        _selectedGener = value!;
                                      },
                                    ),
                                    RadioListTile<String>(
                                      title: Text("Other"),
                                      value: "Other",
                                      groupValue: _selectedGener,
                                      activeColor: AppTheme.primaryColor,
                                      onChanged: (String? value) {
                                        _selectedGener = value!;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 24),
                          GradientButton(text: "Save Chang",
                          onPressed: (){},),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
