<div id="contactModalGfw" class="m-modal-assets">
  <!-- BACKDROP -->
  <div class="modal-backdrop"></div>
  <!-- WINDOW -->
  <div class="modal-window">
    <a href="#" class="modal-close js-modal-close">
      <svg><use xlink:href="#gfw-header-icon-h-close"></use></svg>
    </a>
    <div class="modal-spinner js-dinamic-color"></div>
    <div class="modal-wrapper -scroll-bar">
      <div class="modal-content">
        <ul class="modal-steps">
          <!-- STEP CONTACT -->
          <li class="modal-step -active" data-step="contact">
            <header>
              <h2>Contact us & feedback</h2>
              <h3>Question, comment, request, feedback? We want to hear from you! Help us improve Global Forest Watch by completing the form below.</h3>
            </header>
            <div class="modal-step-content">
              <form id="contact-form">
                <div class="field -short">
                  <label for="email">Email *</label>
                  <input id="email" type="email" name="email">
                </div>
                <div class="field">
                  <label for="topic">Topic *</label>
                  <div class="m-select">
                    <select id="topic" class="js- chosen-select default required" name="topic" data-placeholder="Please select a topic so that we can best respond">
                      <option value=""></option>
                      <option value="report-a-bug-or-error-on-gfw">Report a bug or error on GFW</option>
                      <option value="provide-feedback">Provide feedback</option>
                      <option value="media-request">Media request</option>
                      <option value="data-related-inquiry">Data related inquiry or suggestion</option>
                      <option value="gfw-commodities-inquiry">GFW Commodities inquiry</option>
                      <option value="gfw-fires-inquiry">GFW Fires inquiry</option>
                      <option value="gfw-climate-inquiry">GFW Climate inquiry</option>
                      <option value="general-inquiry">General inquiry</option>
                    </select>
                  </div>
                </div>
                <div class="field">
                  <label for="message">Message *</label>
                  <textarea id="message" name="message" placeholder="How can we help you?"></textarea>
                </div>
                <div class="field">
                  <h3>INTERESTED IN TESTING NEW FEATURES ON GFW?</h3>
                  <p>Sign up and become an official GFW tester!</p>
                  <div class="radio-box">
                    <div class="custom-radio">
                      <input id="signup-true" type="radio" name="signup" value="true">
                      <label for="signup-true">
                        <span></span> Yes, sign me up.
                      </label>
                    </div>
                    <div class="custom-radio">
                      <input id="signup-false" type="radio" name="signup" value="false" checked>
                      <label for="signup-false">
                        <span></span> No thanks.
                      </label>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </li>

          <!-- STEP SUCCESS -->
          <li class="modal-step" data-step="success">
            <header>
              <h2>Thank you for contacting Global Forest Watch! Check your inbox for a confirmation email.</h2>
              <h3>Interested in getting news and updates from us?</h3>

              <div class="modal-step-content">
                <a class="btn green uppercase js-newsletter-sign-up" href="/?show_newsletter=true">Sign up for our newsletter</a>
              </div>
            </header>
          </li>

          <!-- STEP ERROR -->
          <li class="modal-step" data-step="error">
            <header>
              <h2>We're sorry, </br>but something went wrong</h2>
            </header>
          </li>

          <!-- STEP NEWSLETTER -->
          <li class="modal-step" data-step="newsletter">
            <header>
              <h2>Updates and newsletters</h2>
              <h3>Subscribe me to the GFW Newsletter!</h3>
            </header>
            <div class="modal-step-content">
              <iframe scrolling="no" src="https://connect.wri.org/l/120942/2016-02-08/2trw5q" width="100%" height="900" type="text/html" frameborder="0" allowTransparency="true" style="border: 0"></iframe>
            </div>
          </li>

        </ul>
      </div>
    </div>

    <div class="modal-footer">
      <span class="gradient"></span>
      <ul class="m-btncontainer -center -steps">
        <li>
          <button data-step="contact" class="btn green medium uppercase modal-step-btn js-dinamic-color js-btn-submit -active">Submit</button>
          <button data-step="success" class="btn green medium uppercase modal-step-btn js-dinamic-color js-btn-close">Close</button>
          <button data-step="error" class="btn green medium uppercase modal-step-btn js-dinamic-color js-btn-close">Close</button>
        </li>
      </ul>
    </div>
  </div>
</div>
