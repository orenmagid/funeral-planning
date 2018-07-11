Oren:
<!-- * Links back to Menu -->
* Stat stuff - I just barely started.
<!-- * Add new expand fields to funeral show and overall show pages - it's ugly, but I did it. Also had to make changes to the strong params. -->

August:
* Refactoring?
* Stat stuff


Overall List:
* Print Overall Summary to PDF?
* Email summary to contacts? (compose message)
* Validations
* static_pages/home
* Funeral Home Select - Either make sure we aren't creating dups with text_field entry or create a smart text field autofills options
* Should we add a "I'm not sure" options of the funeral home?
* Actually, yes. I just tried to submit it without selecting any funeral home, and it was rejected b/c "funeral home must exist." The page reloaded, but all the information I entered was gone.
* I think we should perhaps have text saying that they can specify their wishes about their ashes, if they are cremated, in the "expand" field. At least, that's something I think some people would expect--a place to note that.

Wednesday Morning:
* Add and edit language throughout
* Add CSS to improve user e-xperience


August's notes 7/10:

  #== CONSIDER EDITS W/ OREN ===
  * In Funeral Edit function - the selectors that are not attached to models (Disposition and Service type) are not
      remembering what the user had selected. Defaulting to first item in list instead.
  * Flash messages?

  #=== CHANGES MADE ===
  * Changed relationship between users, user_funerals, and funerals. Has one and has one through relationships now
      established and changed all through the code
  * Large Refactor in FuneralsController
  * Took out form_tags related to buttons, made partial, rendered partial with locals.
  * Slight modification to language
