import card.*;
import org.jmlspecs.ajmlrac.runtime.*;
import org.jmlspecs.lang.annotation.*;
import java.util.Map;


privileged aspect AspectJMLRac_card_Platinuma5a3fcca_391e_4c9c_915d_1f53fbb53363 {

 declare precedence: AspectJMLRac_*, *;



  /** Generated by AspectJML to check the exceptional public postcondition of
   * method Platinum. */
  after (final card.Client owner) throwing (Throwable rac$e) :
     call(card.Platinum.new( card.Client )) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) && args(owner) {
           JMLChecker.rethrowJMLAssertionError(rac$e, "card.Platinum.<init>(card.Client)");
           boolean rac$b = true;
           String rac$ErrorMsg = "";

  		   if (true) {
  		     if (rac$e instanceof java.lang.RuntimeException) {
  			   java.lang.RuntimeException jml$ex = (java.lang.RuntimeException) rac$e;
  			   boolean rac$b1 = true;
  			   try{			     
  			     rac$b1 = true;
  			   }   catch (JMLNonExecutableException rac$nonExec) {
  			     throw new JMLEvaluationError("Invalid Expression in \"card.Platinum.java\" by method card.Platinum.<init>\nCaused by: "+rac$e);
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
               JMLChecker.checkExceptionalPostcondition(rac$b,"by method card.Platinum.<init> regarding code at \nFile \"card.Platinum.java\""+"\n\t"+rac$ErrorMsg+rac$e, "jml$ex", true, 1, "card.Platinum.<init>(card.Client)", rac$e);
  		 }
  		   }
  	 }


  /** Generated by AspectJML to check the exceptional public postcondition of
   * method myStatus. */
  after (final card.Platinum object$rac, final int pass) throwing (Throwable rac$e) :
     (call(void card.Platinum.myStatus(int))) && 
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
  			     throw new JMLEvaluationError("Invalid Expression in \"card.Platinum.java\" by method card.Platinum.myStatus\nCaused by: "+rac$e);
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
               JMLChecker.checkExceptionalPostcondition(rac$b,"by method card.Platinum.myStatus regarding code at \nFile \"card.Platinum.java\""+"\n\t"+rac$ErrorMsg+rac$e, "jml$ex", true, 1, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".myStatus(int)", rac$e);
  		 }
  		   }
  	 }


  /** Generated by AspectJML to check the exceptional public postcondition of
   * method useCard. */
  after (final card.Platinum object$rac, final double purchaseValue, final int pass) throwing (Throwable rac$e) :
     (call(void card.Platinum.useCard(double, int))) && 
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
  			     throw new JMLEvaluationError("Invalid Expression in \"card.Platinum.java\" by method card.Platinum.useCard\nCaused by: "+rac$e);
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
               JMLChecker.checkExceptionalPostcondition(rac$b,"by method card.Platinum.useCard regarding code at \nFile \"card.Platinum.java\""+"\n\t"+rac$ErrorMsg+rac$e, "jml$ex", true, 1, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".useCard(double, int)", rac$e);
  		 }
  		   }
  	 }


  /** Generated by AspectJML to check the exceptional public postcondition of
   * method myMiles. */
  after (final card.Platinum object$rac, final int pass) throwing (Throwable rac$e) :
     (call(void card.Platinum.myMiles(int))) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) && target(object$rac) && args(pass) {
           JMLChecker.rethrowJMLAssertionError(rac$e, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".myMiles(int)");
           boolean rac$b = true;
           String rac$ErrorMsg = "";

  		   if (true) {
  		     if (rac$e instanceof java.lang.RuntimeException) {
  			   java.lang.RuntimeException jml$ex = (java.lang.RuntimeException) rac$e;
  			   boolean rac$b1 = true;
  			   try{			     
  			     rac$b1 = true;
  			   }   catch (JMLNonExecutableException rac$nonExec) {
  			     throw new JMLEvaluationError("Invalid Expression in \"card.Platinum.java\" by method card.Platinum.myMiles\nCaused by: "+rac$e);
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
               JMLChecker.checkExceptionalPostcondition(rac$b,"by method card.Platinum.myMiles regarding code at \nFile \"card.Platinum.java\""+"\n\t"+rac$ErrorMsg+rac$e, "jml$ex", true, 1, object$rac.getClass().getName() + "@" + Integer.toHexString(System.identityHashCode(object$rac))+".myMiles(int)", rac$e);
  		 }
  		   }
  	 }



  /** Generated by AspectJML to check the public precondition of
   * method Platinum. */
  before (final card.Client owner) :
     call(card.Platinum.new( card.Client )) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) && args(owner) {
       String preErrorMsg = "by method card.Platinum.<init> regarding code at \nFile \"card.Platinum.java\""+", when \n"+"\t\'owner\' is "+owner+ ", when \n"+"\t\'owner\' is "+owner;
       String evalErrorMsg = "Invalid expression in \"card.Platinum.java\"\nCaused by: ";
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
       JMLChecker.checkPrecondition(rac$b, canThrow, preErrorMsg, 1, "card.Platinum.<init>(card.Client)");

     }



  /** Generated by AspectJML to enable modular signals_only checking (XCS enabled) */
    after(final card.Platinum object$rac): (call( * card.Platinum..*+.*(..))
            || call(card.Platinum..*+.new(..))
            || call( * card.Platinum+.*(..))
            || call(card.Platinum+.new(..))) && 
     target(object$rac) && 
     !within(*..AspectJMLRac_*) && !within(AspectJMLRac_*) {
     JMLChecker.hasAnyThrownExceptionalPostconditionSignalsOnly();
    }

  /** Generated by AspectJML to enhance error reporting (CAC enabled) */
    after() throwing (Throwable rac$e): (call( * card.Platinum..*+.*(..))
            || call(card.Platinum..*+.new(..))
            || call( * card.Platinum+.*(..))
            || call(card.Platinum+.new(..))){
      JMLChecker.hideAjmlSpecificStackTrace(rac$e);
    }
}
