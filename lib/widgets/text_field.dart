// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class AppThemedTextFormField extends StatefulWidget {
//   final TextEditingController controller;
//   final FocusNode? textFocusNode;
//   bool isObscure;
//   final bool submitted;
//   String? Function(String?)? textFieldValidator;
//   final Function(St+ring?)? textFieldOnChange;
//   final TextInputType textInputType;
//   final BuildContext context;
//   String? labelText;adad
//   final String? hintText;
//   final bool? isProfile;
//   final Key? textKey;
//   final bool? hintTextToTop;
//   final int? maxLength;
//   dynamic suffixIconWidget;
//   final bool? enabled;
//   final bool? autofocus;
//   final VoidCallback? textFieldOnTap;

//   AppThemedTextFormField(
//       {this.textKey,
//       required this.controller,
//       this.textFocusNode,
//       this.isObscure = false,
//       required this.submitted,
//       this.textFieldValidator,
//       this.enabled,
//       this.textFieldOnChange,
//       this.textInputType = TextInputType.text,
//       required this.context,
//       this.labelText,
//       this.hintText,
//       this.hintTextToTop,
//       this.suffixIconWidget,
//       this.isProfile,
//       this.autofocus,
//       this.maxLength,
//       this.textFieldOnTap})
//       : super(key: textKey);

//   @override
//   AppThemedTextFormFieldState createState() => AppThemedTextFormFieldState();
// }

// class AppThemedTextFormFieldState extends State<AppThemedTextFormField> {
//   bool passwordToggleNeeded = false;

//   @override
//   void initState() {
//     passwordToggleNeeded = widget.isObscure;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: TextFormField(
//           onTap: widget.textFieldOnTap,
//           autofocus: widget.autofocus ?? false,
//           enabled: widget.enabled ?? true,
//           key: widget.textKey ?? widget.key,
//           controller: widget.controller,
//           focusNode: widget.textFocusNode,
//           keyboardType: widget.textInputType,
//           maxLength: widget.maxLength ?? null,
//           style: widget.hintTextToTop == null
//               ? Theme.of(context).textTheme.bodyLarge
//               : Theme.of(context)
//                   .textTheme
//                   .bodyLarge
//                   ?.copyWith(fontWeight: FontWeight.bold),
//           decoration: InputDecoration(
//               filled: true,
//               fillColor:
//                   widget.enabled == false ? Colors.grey[400] : Colors.white,
//               counterText: "",
//               contentPadding: passwordToggleNeeded == true
//                   ? const EdgeInsets.symmetric(vertical: 8, horizontal: 10)
//                   : EdgeInsets.symmetric(vertical: 15, horizontal: 12),
//               suffixIcon: passwordToggleNeeded == true
//                   ? IconButton(
//                       onPressed: () {
//                         _passwordIconToggle();
//                       },
//                       icon: widget.isObscure
//                           ? Image.asset(
//                               "img/level_star.png",
//                               width: 26,
//                               height: 16,
//                             )
//                           : Icon(
//                               Icons.remove_red_eye_outlined,
//                               color: Colors.deepOrange,
//                               size: 20,
//                             ))
//                   : widget.suffixIconWidget ?? null,
//               // prefix: widget.hintText == localization.mobileNumberKey &&
//               //         widget.hintTextToTop != null
//               //     ? SizedBox(
//               //         width: 70,
//               //         child: Row(
//               //           mainAxisAlignment: MainAxisAlignment.start,
//               //           children: [
//               //             Padding(
//               //               padding: const EdgeInsets.fromLTRB(
//               //               0,
//               //             0,
//               //              5,
//               //      2),
//               //               child: Image.asset(
//               //                 "img/level_star.png",
//               //                 fit: BoxFit.fill,
//               //                 width: 25,
//               //                 height: 16,
//               //               ),
//               //             ),
//               //             SizedBox(
//               //                 width:40,
//               //                 child: Padding(
//               //                   padding: const EdgeInsets.only(
//               //                       bottom: 2),
//               //                   child: Text(
//               //                     "img/level_star.png",
//               //
//               //                     style:
//               //                         Theme.of(context).textTheme.labelMedium,
//               //                   ),
//               //                 ))
//               //           ],
//               //         ),
//               //       )
//               //     : null,

//               // Prefix icon and text is used for mobile number only
//               prefixIcon: widget.hintText == "adadad" &&
//                       widget.hintTextToTop == null
//                   ? SizedBox(
//                       width: 70,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.fromLTRB(10, 0, 0, 2),
//                             child: Image.asset(
//                               "img/level_star.png",
//                               fit: BoxFit.fill,
//                               width: 20,
//                               height: 16,
//                             ),
//                           ),
//                           SizedBox(
//                               width: 38,
//                               child: Padding(
//                                 padding: const EdgeInsets.only(bottom: 2),
//                                 child: Text(
//                                   "img/level_star.png",
//                                   style:
//                                       Theme.of(context).textTheme.labelMedium,
//                                 ),
//                               ))
//                         ],
//                       ),
//                     )
//                   : null,
//               // border: OutlineInputBorder(
//               //     borderRadius: BorderRadius.circular(5),
//               //     borderSide: const BorderSide(
//               //       color: Palette.kTextFieldBorderColor,
//               //     )),
//               // disabledBorder: OutlineInputBorder(
//               //     borderRadius:
//               //         BorderRadius.all(Radius.circular(Spacing.spacing5)),
//               //     borderSide: BorderSide(color: Palette.kTextFieldBorderColor)),
//               // errorBorder: widget.hintTextToTop == null
//               //     ? const OutlineInputBorder(
//               //         borderRadius:
//               //             BorderRadius.all(Radius.circular(Spacing.spacing5)),
//               //         borderSide: BorderSide(color: Colors.red))
//               //     : null,
//               isDense: true,
//               labelText: widget.labelText,
//               hintText: widget.hintText,
//               labelStyle: widget.hintTextToTop == null
//                   ? Theme.of(context).textTheme.bodySmall
//                   : Theme.of(context)
//                       .textTheme
//                       .labelLarge
//                       ?.copyWith(color: Colors.grey),
//               // hintStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
//               //     color: Palette.kDarkSecondaryColor,
//               //     fontFamily:
//               //         AppLanguage().appLocale?.languageCode == AppStrings.enLang
//               //             ? AppStrings.enFont
//               //             : AppStrings.arFont),
//               // errorStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
//               //     color: Palette.kErrorColor,
//               //     fontFamily:
//               //         AppLanguage().appLocale?.languageCode == AppStrings.enLang
//               //             ? AppStrings.enFont
//               //             : AppStrings.arFont),
//               enabledBorder: widget.hintTextToTop == null
//                   ? OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black45))
//                   : null),
//           obscureText: widget.isObscure ?? false,
//           autovalidateMode: widget.submitted
//               ? AutovalidateMode.onUserInteraction
//               : AutovalidateMode.disabled,
//           // use the validator to return an error string (or null) based on the input text
//           validator: widget.textFieldValidator,
//           onChanged: widget.textFieldOnChange),
//     );
//   }

//   void _passwordIconToggle() {
//     setState(() {
//       widget.isObscure = !(widget.isObscure);
//     });
//   }
// }
