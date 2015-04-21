<div class="row">
	<div class="well">
		<h2>Register</h2>
		<div class="col-xs-12 col-md-6 register-container">
			<!-- IF alternate_logins -->
			<div class="form-horizontal">
				<div class="form-group">
					<label for="email" class="col-lg-3 control-label">Sign in with</label>
					<div class="col-lg-9">
						<!-- BEGIN authentication -->
						<a rel="nofollow" target="_top" href="{relative_path}{authentication.url}"><i class="fa {authentication.icon} fa-3x"></i></i></a>
						<!-- END authentication -->
					</div>
				</div>
			</div>
			<div class="register-separator">
				<div class="register-separator-label">Or</div>
			</div>
			<!-- ENDIF alternate_logins -->
			<div class="alert alert-danger" id="register-error-notify" <!-- IF error -->style="display:block"<!-- ELSE -->style="display: none;"<!-- ENDIF error -->>
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>[[error:registration-error]]</strong>
				<p>{error}</p>
			</div>
			<form class="form-horizontal" role="form" action="{relative_path}/register" method="post">
				<div class="form-group">
					<label for="email" class="col-lg-3 control-label">[[register:email_address]]</label>
					<div class="col-lg-9">
						<div class="input-group">
							<input class="form-control" type="text" placeholder="[[register:email_address_placeholder]]" name="email" id="email" autocorrect="off" autocapitalize="off" />
							<span class="input-group-addon">
								<span id="email-notify"><i class="fa fa-circle-o"></i></span>
							</span>
						</div>
						<span class="help-block">[[register:help.email]]</span>
					</div>
				</div>
				<div class="form-group">
					<label for="username" class="col-lg-3 control-label">[[register:username]]</label>
					<div class="col-lg-9">
						<div class="input-group">
							<input class="form-control" type="text" placeholder="[[register:username_placeholder]]" name="username" id="username" autocorrect="off" autocapitalize="off" />
							<span class="input-group-addon">
								<span id="username-notify"><i class="fa fa-circle-o"></i></span>
							</span>
						</div>
						<span class="help-block">[[register:help.username_restrictions, {minimumUsernameLength}, {maximumUsernameLength}]]</span>
					</div>
				</div>
				<div class="form-group">
					<label for="password" class="col-lg-3 control-label">[[register:password]]</label>
					<div class="col-lg-9">
						<div class="input-group">
							<input class="form-control" type="password" placeholder="[[register:password_placeholder]]" name="password" id="password" />
							<span class="input-group-addon">
								<span id="password-notify"><i class="fa fa-circle-o"></i></span>
							</span>
						</div>
						<span class="help-block">[[register:help.minimum_password_length, {minimumPasswordLength}]]</span>
					</div>
				</div>
				<div class="form-group">
					<label for="password-confirm" class="col-lg-3 control-label">[[register:confirm_password]]</label>
					<div class="col-lg-9">
						<div class="input-group">
							<input class="form-control" type="password" placeholder="[[register:confirm_password_placeholder]]" name="password-confirm" id="password-confirm" />
							<span class="input-group-addon">
								<span id="password-confirm-notify"><i class="fa fa-circle-o"></i></span>
							</span>
						</div>
					</div>
				</div>

				<!-- BEGIN regFormEntry -->
				<div class="form-group">
					<label for="register-{regFormEntry.styleName}" class="col-lg-3 control-label">{regFormEntry.label}</label>
					<div id="register-{regFormEntry.styleName}" class="col-lg-9">
						{regFormEntry.html}
					</div>
				</div>
				<!-- END regFormEntry -->

				<!-- IF termsOfUse -->
				<div class="form-group">
					<label class="col-lg-3 control-label">&nbsp;</label>
					<div class="col-lg-9">
						<hr />
						<strong>[[register:terms_of_use]]</strong>
						<textarea readonly class="form-control" rows=6>{termsOfUse}</textarea>
						<div class="checkbox">
							<label>
								<input type="checkbox" name="agree-terms" id="agree-terms"> [[register:agree_to_terms_of_use]]
							</label>
						</div>
					</div>
				</div>
				<!-- ENDIF termsOfUse -->
				<div class="form-group">
					<div class="pull-right col-xs-12 col-lg-4">
						<button class="btn btn-primary btn-block" id="register" type="submit">[[register:register_now_button]]</button>
					</div>
				</div>
				<input id="referrer" type="hidden" name="referrer" value="" />
			</form>
		</div>

		
		<div class="col-md-6 hidden-xs">
			
		</div>
		<div class="clearfix"></div>
	</div>
</div>