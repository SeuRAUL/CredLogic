import card.*;
import org.jmlspecs.ajmlrac.runtime.*;
import org.jmlspecs.lang.annotation.*;
import java.util.Vector;
import java.util.Map;


privileged aspect AspectJMLRac_card_University71b7f801_b0f4_465c_9aa2_422423167dba {

 declare precedence: AspectJMLRac_*, *;












  /** Generated by AspectJML to check the exceptional public postcondition of
   * method University. */
  after (final card.Client owner) throwing (Throwable rac$e) :
     call(card.University.new( card.Client )) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) && args(owner) {
           JMLChecker.rethrowJMLAssertionError(rac$e, "card.University.<init>(card.Client)");
           boolean rac$b = true;
           String rac$ErrorMsg = "";

  		   if (true) {
  		     if (rac$e instanceof java.lang.RuntimeException) {
  			   java.lang.RuntimeException jml$ex = (java.lang.RuntimeException) rac$e;
  			   boolean rac$b1 = true;
  			   try{			     
  			     rac$b1 = true;
  			   }   catch (JMLNonExecutableException rac$nonExec) {
  			     throw new JMLEvaluationError("Invalid Expression in \"card.University.java\" by method card.University.<init>\nCaused by: "+rac$e);
  			   }
  			   if(!rac$b1) {
  			     if(rac$ErrorMsg.equals("")) {
  			       rac$ErrorMsg = "jml$ex";
  			     }
  			     else {
  			       rac$ErrorMsg += " and jml$ex";
  			     }
  			   }
  			   rac$b = rac$b && rac$b1;
           if(rac$ErrorMsg.indexOf("and") >= 0 ){
             rac$ErrorMsg += " are ";
           }
           else{
             rac$ErrorMsg += " is ";
           }
               JMLChecker.checkExceptionalPostcondition(rac$b,"by method card.University.<init> regarding code at \nFile \"card.University.java\""+"\n\t"+rac$ErrorMsg+rac$e, "jml$ex", true, 1, "card.University.<init>(card.Client)", rac$e);
  		 }
  		   }
  	 }


  /** Generated by AspectJML to check the exceptional public postcondition of
   * method getCredit. */
  after (final card.University object$rac) throwing (Throwable rac$e) :
     (call(double card.University.getCredit())) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) && target(object$rac) {
           JMLChecker.rethrowJMLAssertionError(rac$e, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".getCredit()");
           boolean rac$b = true;
           String rac$ErrorMsg = "";

  		   if (true) {
  		     if (rac$e instanceof java.lang.RuntimeException) {
  			   java.lang.RuntimeException jml$ex = (java.lang.RuntimeException) rac$e;
  			   boolean rac$b1 = true;
  			   try{			     
  			     rac$b1 = true;
  			   }   catch (JMLNonExecutableException rac$nonExec) {
  			     throw new JMLEvaluationError("Invalid Expression in \"card.University.java\" by method card.University.getCredit\nCaused by: "+rac$e);
  			   }
  			   if(!rac$b1) {
  			     if(rac$ErrorMsg.equals("")) {
  			       rac$ErrorMsg = "jml$ex";
  			     }
  			     else {
  			       rac$ErrorMsg += " and jml$ex";
  			     }
  			   }
  			   rac$b = rac$b && rac$b1;
           if(rac$ErrorMsg.indexOf("and") >= 0 ){
             rac$ErrorMsg += " are ";
           }
           else{
             rac$ErrorMsg += " is ";
           }
               JMLChecker.checkExceptionalPostcondition(rac$b,"by method card.University.getCredit regarding code at \nFile \"card.University.java\", line 34 (card.University.java:34)"+"\n\t"+rac$ErrorMsg+rac$e, "jml$ex", true, 1, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".getCredit()", rac$e);
  		 }
  		   }
  	 }


  /** Generated by AspectJML to check the exceptional public postcondition of
   * method getLimit. */
  after (final card.University object$rac) throwing (Throwable rac$e) :
     (call(double card.University.getLimit())) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) && target(object$rac) {
           JMLChecker.rethrowJMLAssertionError(rac$e, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".getLimit()");
           boolean rac$b = true;
           String rac$ErrorMsg = "";

  		   if (true) {
  		     if (rac$e instanceof java.lang.RuntimeException) {
  			   java.lang.RuntimeException jml$ex = (java.lang.RuntimeException) rac$e;
  			   boolean rac$b1 = true;
  			   try{			     
  			     rac$b1 = true;
  			   }   catch (JMLNonExecutableException rac$nonExec) {
  			     throw new JMLEvaluationError("Invalid Expression in \"card.University.java\" by method card.University.getLimit\nCaused by: "+rac$e);
  			   }
  			   if(!rac$b1) {
  			     if(rac$ErrorMsg.equals("")) {
  			       rac$ErrorMsg = "jml$ex";
  			     }
  			     else {
  			       rac$ErrorMsg += " and jml$ex";
  			     }
  			   }
  			   rac$b = rac$b && rac$b1;
           if(rac$ErrorMsg.indexOf("and") >= 0 ){
             rac$ErrorMsg += " are ";
           }
           else{
             rac$ErrorMsg += " is ";
           }
               JMLChecker.checkExceptionalPostcondition(rac$b,"by method card.University.getLimit regarding code at \nFile \"card.University.java\", line 38 (card.University.java:38)"+"\n\t"+rac$ErrorMsg+rac$e, "jml$ex", true, 1, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".getLimit()", rac$e);
  		 }
  		   }
  	 }


  /** Generated by AspectJML to check the exceptional public postcondition of
   * method setLimit. */
  after (final card.University object$rac, final double limit) throwing (Throwable rac$e) :
     (call(void card.University.setLimit(double))) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) && target(object$rac) && args(limit) {
           JMLChecker.rethrowJMLAssertionError(rac$e, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".setLimit(double)");
           boolean rac$b = true;
           String rac$ErrorMsg = "";

  		   if (true) {
  		     if (rac$e instanceof java.lang.RuntimeException) {
  			   java.lang.RuntimeException jml$ex = (java.lang.RuntimeException) rac$e;
  			   boolean rac$b1 = true;
  			   try{			     
  			     rac$b1 = true;
  			   }   catch (JMLNonExecutableException rac$nonExec) {
  			     throw new JMLEvaluationError("Invalid Expression in \"card.University.java\" by method card.University.setLimit\nCaused by: "+rac$e);
  			   }
  			   if(!rac$b1) {
  			     if(rac$ErrorMsg.equals("")) {
  			       rac$ErrorMsg = "jml$ex";
  			     }
  			     else {
  			       rac$ErrorMsg += " and jml$ex";
  			     }
  			   }
  			   rac$b = rac$b && rac$b1;
           if(rac$ErrorMsg.indexOf("and") >= 0 ){
             rac$ErrorMsg += " are ";
           }
           else{
             rac$ErrorMsg += " is ";
           }
               JMLChecker.checkExceptionalPostcondition(rac$b,"by method card.University.setLimit regarding code at \nFile \"card.University.java\""+"\n\t"+rac$ErrorMsg+rac$e, "jml$ex", true, 1, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".setLimit(double)", rac$e);
  		 }
  		   }
  	 }


  /** Generated by AspectJML to check the exceptional public postcondition of
   * method myLimit. */
  after (final card.University object$rac, final int pass) throwing (Throwable rac$e) :
     (call(void card.University.myLimit(int))) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) && target(object$rac) && args(pass) {
           JMLChecker.rethrowJMLAssertionError(rac$e, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".myLimit(int)");
           boolean rac$b = true;
           String rac$ErrorMsg = "";

  		   if (true) {
  		     if (rac$e instanceof java.lang.RuntimeException) {
  			   java.lang.RuntimeException jml$ex = (java.lang.RuntimeException) rac$e;
  			   boolean rac$b1 = true;
  			   try{			     
  			     rac$b1 = true;
  			   }   catch (JMLNonExecutableException rac$nonExec) {
  			     throw new JMLEvaluationError("Invalid Expression in \"card.University.java\" by method card.University.myLimit\nCaused by: "+rac$e);
  			   }
  			   if(!rac$b1) {
  			     if(rac$ErrorMsg.equals("")) {
  			       rac$ErrorMsg = "jml$ex";
  			     }
  			     else {
  			       rac$ErrorMsg += " and jml$ex";
  			     }
  			   }
  			   rac$b = rac$b && rac$b1;
           if(rac$ErrorMsg.indexOf("and") >= 0 ){
             rac$ErrorMsg += " are ";
           }
           else{
             rac$ErrorMsg += " is ";
           }
               JMLChecker.checkExceptionalPostcondition(rac$b,"by method card.University.myLimit regarding code at \nFile \"card.University.java\""+"\n\t"+rac$ErrorMsg+rac$e, "jml$ex", true, 1, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".myLimit(int)", rac$e);
  		 }
  		   }
  	 }


  /** Generated by AspectJML to check the exceptional public postcondition of
   * method thisMonthBill. */
  after (final card.University object$rac, final int pass) throwing (Throwable rac$e) :
     (call(double card.University.thisMonthBill(int))) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) && target(object$rac) && args(pass) {
           JMLChecker.rethrowJMLAssertionError(rac$e, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".thisMonthBill(int)");
           boolean rac$b = true;
           String rac$ErrorMsg = "";

  		   if (true) {
  		     if (rac$e instanceof java.lang.RuntimeException) {
  			   java.lang.RuntimeException jml$ex = (java.lang.RuntimeException) rac$e;
  			   boolean rac$b1 = true;
  			   try{			     
  			     rac$b1 = true;
  			   }   catch (JMLNonExecutableException rac$nonExec) {
  			     throw new JMLEvaluationError("Invalid Expression in \"card.University.java\" by method card.University.thisMonthBill\nCaused by: "+rac$e);
  			   }
  			   if(!rac$b1) {
  			     if(rac$ErrorMsg.equals("")) {
  			       rac$ErrorMsg = "jml$ex";
  			     }
  			     else {
  			       rac$ErrorMsg += " and jml$ex";
  			     }
  			   }
  			   rac$b = rac$b && rac$b1;
           if(rac$ErrorMsg.indexOf("and") >= 0 ){
             rac$ErrorMsg += " are ";
           }
           else{
             rac$ErrorMsg += " is ";
           }
               JMLChecker.checkExceptionalPostcondition(rac$b,"by method card.University.thisMonthBill regarding code at \nFile \"card.University.java\", line 69 (card.University.java:69)"+"\n\t"+rac$ErrorMsg+rac$e, "jml$ex", true, 1, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".thisMonthBill(int)", rac$e);
  		 }
  		   }
  	 }


  /** Generated by AspectJML to check the exceptional public postcondition of
   * method myBill. */
  after (final card.University object$rac, final int pass) throwing (Throwable rac$e) :
     (call(void card.University.myBill(int))) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) && target(object$rac) && args(pass) {
           JMLChecker.rethrowJMLAssertionError(rac$e, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".myBill(int)");
           boolean rac$b = true;
           String rac$ErrorMsg = "";

  		   if (true) {
  		     if (rac$e instanceof java.lang.RuntimeException) {
  			   java.lang.RuntimeException jml$ex = (java.lang.RuntimeException) rac$e;
  			   boolean rac$b1 = true;
  			   try{			     
  			     rac$b1 = true;
  			   }   catch (JMLNonExecutableException rac$nonExec) {
  			     throw new JMLEvaluationError("Invalid Expression in \"card.University.java\" by method card.University.myBill\nCaused by: "+rac$e);
  			   }
  			   if(!rac$b1) {
  			     if(rac$ErrorMsg.equals("")) {
  			       rac$ErrorMsg = "jml$ex";
  			     }
  			     else {
  			       rac$ErrorMsg += " and jml$ex";
  			     }
  			   }
  			   rac$b = rac$b && rac$b1;
           if(rac$ErrorMsg.indexOf("and") >= 0 ){
             rac$ErrorMsg += " are ";
           }
           else{
             rac$ErrorMsg += " is ";
           }
               JMLChecker.checkExceptionalPostcondition(rac$b,"by method card.University.myBill regarding code at \nFile \"card.University.java\""+"\n\t"+rac$ErrorMsg+rac$e, "jml$ex", true, 1, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".myBill(int)", rac$e);
  		 }
  		   }
  	 }


  /** Generated by AspectJML to check the exceptional public postcondition of
   * method myParcels. */
  after (final card.University object$rac, final int pass) throwing (Throwable rac$e) :
     (call(void card.University.myParcels(int))) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) && target(object$rac) && args(pass) {
           JMLChecker.rethrowJMLAssertionError(rac$e, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".myParcels(int)");
           boolean rac$b = true;
           String rac$ErrorMsg = "";

  		   if (true) {
  		     if (rac$e instanceof java.lang.RuntimeException) {
  			   java.lang.RuntimeException jml$ex = (java.lang.RuntimeException) rac$e;
  			   boolean rac$b1 = true;
  			   try{			     
  			     rac$b1 = true;
  			   }   catch (JMLNonExecutableException rac$nonExec) {
  			     throw new JMLEvaluationError("Invalid Expression in \"card.University.java\" by method card.University.myParcels\nCaused by: "+rac$e);
  			   }
  			   if(!rac$b1) {
  			     if(rac$ErrorMsg.equals("")) {
  			       rac$ErrorMsg = "jml$ex";
  			     }
  			     else {
  			       rac$ErrorMsg += " and jml$ex";
  			     }
  			   }
  			   rac$b = rac$b && rac$b1;
           if(rac$ErrorMsg.indexOf("and") >= 0 ){
             rac$ErrorMsg += " are ";
           }
           else{
             rac$ErrorMsg += " is ";
           }
               JMLChecker.checkExceptionalPostcondition(rac$b,"by method card.University.myParcels regarding code at \nFile \"card.University.java\""+"\n\t"+rac$ErrorMsg+rac$e, "jml$ex", true, 1, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".myParcels(int)", rac$e);
  		 }
  		   }
  	 }


  /** Generated by AspectJML to check the exceptional public postcondition of
   * method myCredit. */
  after (final card.University object$rac, final int pass) throwing (Throwable rac$e) :
     (call(void card.University.myCredit(int))) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) && target(object$rac) && args(pass) {
           JMLChecker.rethrowJMLAssertionError(rac$e, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".myCredit(int)");
           boolean rac$b = true;
           String rac$ErrorMsg = "";

  		   if (true) {
  		     if (rac$e instanceof java.lang.RuntimeException) {
  			   java.lang.RuntimeException jml$ex = (java.lang.RuntimeException) rac$e;
  			   boolean rac$b1 = true;
  			   try{			     
  			     rac$b1 = true;
  			   }   catch (JMLNonExecutableException rac$nonExec) {
  			     throw new JMLEvaluationError("Invalid Expression in \"card.University.java\" by method card.University.myCredit\nCaused by: "+rac$e);
  			   }
  			   if(!rac$b1) {
  			     if(rac$ErrorMsg.equals("")) {
  			       rac$ErrorMsg = "jml$ex";
  			     }
  			     else {
  			       rac$ErrorMsg += " and jml$ex";
  			     }
  			   }
  			   rac$b = rac$b && rac$b1;
           if(rac$ErrorMsg.indexOf("and") >= 0 ){
             rac$ErrorMsg += " are ";
           }
           else{
             rac$ErrorMsg += " is ";
           }
               JMLChecker.checkExceptionalPostcondition(rac$b,"by method card.University.myCredit regarding code at \nFile \"card.University.java\""+"\n\t"+rac$ErrorMsg+rac$e, "jml$ex", true, 1, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".myCredit(int)", rac$e);
  		 }
  		   }
  	 }


  /** Generated by AspectJML to check the exceptional public postcondition of
   * method myStatus. */
  after (final card.University object$rac, final int pass) throwing (Throwable rac$e) :
     (call(void card.University.myStatus(int))) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) && target(object$rac) && args(pass) {
           JMLChecker.rethrowJMLAssertionError(rac$e, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".myStatus(int)");
           boolean rac$b = true;
           String rac$ErrorMsg = "";

  		   if (true) {
  		     if (rac$e instanceof java.lang.RuntimeException) {
  			   java.lang.RuntimeException jml$ex = (java.lang.RuntimeException) rac$e;
  			   boolean rac$b1 = true;
  			   try{			     
  			     rac$b1 = true;
  			   }   catch (JMLNonExecutableException rac$nonExec) {
  			     throw new JMLEvaluationError("Invalid Expression in \"card.University.java\" by method card.University.myStatus\nCaused by: "+rac$e);
  			   }
  			   if(!rac$b1) {
  			     if(rac$ErrorMsg.equals("")) {
  			       rac$ErrorMsg = "jml$ex";
  			     }
  			     else {
  			       rac$ErrorMsg += " and jml$ex";
  			     }
  			   }
  			   rac$b = rac$b && rac$b1;
           if(rac$ErrorMsg.indexOf("and") >= 0 ){
             rac$ErrorMsg += " are ";
           }
           else{
             rac$ErrorMsg += " is ";
           }
               JMLChecker.checkExceptionalPostcondition(rac$b,"by method card.University.myStatus regarding code at \nFile \"card.University.java\""+"\n\t"+rac$ErrorMsg+rac$e, "jml$ex", true, 1, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".myStatus(int)", rac$e);
  		 }
  		   }
  	 }


  /** Generated by AspectJML to check the exceptional public postcondition of
   * method useCard. */
  after (final card.University object$rac, final double purchaseValue, final int pass) throwing (Throwable rac$e) :
     (call(void card.University.useCard(double, int))) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) && target(object$rac) && args(purchaseValue, pass) {
           JMLChecker.rethrowJMLAssertionError(rac$e, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".useCard(double, int)");
           boolean rac$b = true;
           String rac$ErrorMsg = "";

  		   if (true) {
  		     if (rac$e instanceof java.lang.RuntimeException) {
  			   java.lang.RuntimeException jml$ex = (java.lang.RuntimeException) rac$e;
  			   boolean rac$b1 = true;
  			   try{			     
  			     rac$b1 = true;
  			   }   catch (JMLNonExecutableException rac$nonExec) {
  			     throw new JMLEvaluationError("Invalid Expression in \"card.University.java\" by method card.University.useCard\nCaused by: "+rac$e);
  			   }
  			   if(!rac$b1) {
  			     if(rac$ErrorMsg.equals("")) {
  			       rac$ErrorMsg = "jml$ex";
  			     }
  			     else {
  			       rac$ErrorMsg += " and jml$ex";
  			     }
  			   }
  			   rac$b = rac$b && rac$b1;
           if(rac$ErrorMsg.indexOf("and") >= 0 ){
             rac$ErrorMsg += " are ";
           }
           else{
             rac$ErrorMsg += " is ";
           }
               JMLChecker.checkExceptionalPostcondition(rac$b,"by method card.University.useCard regarding code at \nFile \"card.University.java\""+"\n\t"+rac$ErrorMsg+rac$e, "jml$ex", true, 1, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".useCard(double, int)", rac$e);
  		 }
  		   }
  	 }


  /** Generated by AspectJML to check the exceptional public postcondition of
   * method parcelBill. */
  after (final card.University object$rac, final double value, final int quantParcels) throwing (Throwable rac$e) :
     (call(void card.University.parcelBill(double, int))) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) && target(object$rac) && args(value, quantParcels) {
           JMLChecker.rethrowJMLAssertionError(rac$e, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".parcelBill(double, int)");
           boolean rac$b = true;
           String rac$ErrorMsg = "";

  		   if (true) {
  		     if (rac$e instanceof java.lang.RuntimeException) {
  			   java.lang.RuntimeException jml$ex = (java.lang.RuntimeException) rac$e;
  			   boolean rac$b1 = true;
  			   try{			     
  			     rac$b1 = true;
  			   }   catch (JMLNonExecutableException rac$nonExec) {
  			     throw new JMLEvaluationError("Invalid Expression in \"card.University.java\" by method card.University.parcelBill\nCaused by: "+rac$e);
  			   }
  			   if(!rac$b1) {
  			     if(rac$ErrorMsg.equals("")) {
  			       rac$ErrorMsg = "jml$ex";
  			     }
  			     else {
  			       rac$ErrorMsg += " and jml$ex";
  			     }
  			   }
  			   rac$b = rac$b && rac$b1;
           if(rac$ErrorMsg.indexOf("and") >= 0 ){
             rac$ErrorMsg += " are ";
           }
           else{
             rac$ErrorMsg += " is ";
           }
               JMLChecker.checkExceptionalPostcondition(rac$b,"by method card.University.parcelBill regarding code at \nFile \"card.University.java\""+"\n\t"+rac$ErrorMsg+rac$e, "jml$ex", true, 1, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".parcelBill(double, int)", rac$e);
  		 }
  		   }
  	 }


  /** Generated by AspectJML to check the exceptional public postcondition of
   * method payBill. */
  after (final card.University object$rac, final double payValue, final int pass) throwing (Throwable rac$e) :
     (call(void card.University.payBill(double, int))) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) && target(object$rac) && args(payValue, pass) {
           JMLChecker.rethrowJMLAssertionError(rac$e, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".payBill(double, int)");
           boolean rac$b = true;
           String rac$ErrorMsg = "";

  		   if (true) {
  		     if (rac$e instanceof java.lang.RuntimeException) {
  			   java.lang.RuntimeException jml$ex = (java.lang.RuntimeException) rac$e;
  			   boolean rac$b1 = true;
  			   try{			     
  			     rac$b1 = true;
  			   }   catch (JMLNonExecutableException rac$nonExec) {
  			     throw new JMLEvaluationError("Invalid Expression in \"card.University.java\" by method card.University.payBill\nCaused by: "+rac$e);
  			   }
  			   if(!rac$b1) {
  			     if(rac$ErrorMsg.equals("")) {
  			       rac$ErrorMsg = "jml$ex";
  			     }
  			     else {
  			       rac$ErrorMsg += " and jml$ex";
  			     }
  			   }
  			   rac$b = rac$b && rac$b1;
           if(rac$ErrorMsg.indexOf("and") >= 0 ){
             rac$ErrorMsg += " are ";
           }
           else{
             rac$ErrorMsg += " is ";
           }
               JMLChecker.checkExceptionalPostcondition(rac$b,"by method card.University.payBill regarding code at \nFile \"card.University.java\""+"\n\t"+rac$ErrorMsg+rac$e, "jml$ex", true, 1, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".payBill(double, int)", rac$e);
  		 }
  		   }
  	 }


  /** Generated by AspectJML to check non-static protected invariants of 
   * class University. */
  before (final card.University object$rac) :
     (call(!static * card.University+.*(..))) && 
     !@annotation(JMLHelper)&&
     (within(card.*) || within(card.University+)) && 
     target(object$rac) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) {
         String invErrorMsg = "@pre <File \"University.java\"> regarding code at \nFile \"University.java\"\nnon_null for field 'parcels' <File \"card.University.java\", line 7, character 54 (card.University.java:7)>";
         String evalErrorMsg = "Invalid expression in \"@pre <File \"University.java\"> regarding code at \nFile \"University.java\"\nnon_null for field 'parcels' <File \"card.University.java\", line 7, character 54 (card.University.java:7)>\nCaused by: ";
         boolean rac$b = true;
         try {
          rac$b = (object$rac.parcels != null);
         } catch (JMLNonExecutableException rac$nonExec) {
            rac$b = false;
         } catch (Throwable rac$cause) {
          if(rac$cause instanceof JMLAssertionError) {
            throw (JMLAssertionError) rac$cause;
          }
          else {
            throw new JMLEvaluationError(evalErrorMsg + rac$cause);
          }
         }
       JMLChecker.checkInvariant(rac$b, invErrorMsg, 4);

     }

  /** Generated by AspectJML to check the public precondition of
   * method University. */
  before (final card.Client owner) :
     call(card.University.new( card.Client )) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) && args(owner) {
       String preErrorMsg = "by method card.University.<init> regarding code at \nFile \"card.University.java\""+", when \n"+"\t\'owner\' is "+owner+ ", when \n"+"\t\'owner\' is "+owner;
       String evalErrorMsg = "Invalid expression in \"card.University.java\"\nCaused by: ";
       boolean rac$b = true;
       try {
        rac$b = (owner != null);
       } catch (JMLNonExecutableException rac$nonExec) {
          rac$b = false;
       } catch (Throwable rac$cause) {
          if(rac$cause instanceof JMLAssertionError) {
            throw (JMLAssertionError) rac$cause;
          }
          else {
            throw new JMLEvaluationError(evalErrorMsg + rac$cause);
          }
       }
       boolean canThrow = true;
       JMLChecker.checkPrecondition(rac$b, canThrow, preErrorMsg, 1, "card.University.<init>(card.Client)");

     }


  /** Generated by AspectJML to check non-static protected invariants of 
   * class University. */
  after (final card.University object$rac) :
     (call(!static * card.University+.*(..)) || 
       call(card.University+.new(..))) && 
     !call(void card.University.finalize() throws Throwable) && 
     !@annotation(JMLHelper) && 
     (within(card.*) || within(card.University+)) && 
     target(object$rac) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) {
       if (!(JMLChecker.hasAnyJMLError)) {
         String invErrorMsg = "@post <File \"University.java\"> regarding code at \nFile \"University.java\"\nnon_null for field 'parcels' <File \"card.University.java\", line 7, character 54 (card.University.java:7)>";
         String evalErrorMsg = "Invalid expression in \"@post <File \"University.java\"> regarding code at \nFile \"University.java\"\nnon_null for field 'parcels' <File \"card.University.java\", line 7, character 54 (card.University.java:7)>\nCaused by: ";
         boolean rac$b = true;
         try {
          rac$b = (object$rac.parcels != null);
         } catch (JMLNonExecutableException rac$nonExec) {
            rac$b = false;
         } catch (Throwable rac$cause) {
          if(rac$cause instanceof JMLAssertionError) {
            throw (JMLAssertionError) rac$cause;
          }
          else {
            throw new JMLEvaluationError(evalErrorMsg + rac$cause);
          }
         }
         JMLChecker.checkInvariant(rac$b, invErrorMsg, 4);

       }
     }
  after () returning (final card.University object$rac) :   call(card.University+.new(..)) && 
     !@annotation(JMLHelper) &&    (within(card.*) || within(card.University+)) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) {
       if (!(JMLChecker.hasAnyJMLError)) {
         String invErrorMsg = "@post <File \"University.java\"> regarding code at \nFile \"University.java\"\nnon_null for field 'parcels' <File \"card.University.java\", line 7, character 54 (card.University.java:7)>";
         String evalErrorMsg = "Invalid expression in \"@post <File \"University.java\"> regarding code at \nFile \"University.java\"\nnon_null for field 'parcels' <File \"card.University.java\", line 7, character 54 (card.University.java:7)>\nCaused by: ";
         boolean rac$b = true;
         try {
          rac$b = (object$rac.parcels != null);
         } catch (JMLNonExecutableException rac$nonExec) {
            rac$b = false;
         } catch (Throwable rac$cause) {
          if(rac$cause instanceof JMLAssertionError) {
            throw (JMLAssertionError) rac$cause;
          }
          else {
            throw new JMLEvaluationError(evalErrorMsg + rac$cause);
          }
         }
         JMLChecker.checkInvariant(rac$b, invErrorMsg, 4);

       }
     }


  /** Generated by AspectJML to enable modular signals_only checking (XCS enabled) */
    after(final card.University object$rac): (call( * card.University..*+.*(..))
            || call(card.University..*+.new(..))
            || call( * card.University+.*(..))
            || call(card.University+.new(..))) && 
     target(object$rac) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) {
     JMLChecker.hasAnyThrownExceptionalPostconditionSignalsOnly();
    }

  /** Generated by AspectJML to enhance error reporting (CAC enabled) */
    after() throwing (Throwable rac$e): (call( * card.University..*+.*(..))
            || call(card.University..*+.new(..))
            || call( * card.University+.*(..))
            || call(card.University+.new(..))){
      JMLChecker.hideAjmlSpecificStackTrace(rac$e);
    }
}