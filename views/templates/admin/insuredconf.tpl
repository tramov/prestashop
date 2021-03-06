{*
 * 2017-2018 DM Productions B.V.
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.md
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to info@dmp.nl so we can send you a copy immediately.
 *
 * @author     Michael Dekker <info@mijnpresta.nl>
 * @copyright  2010-2018 DM Productions B.V.
 * @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*}
<script type="text/javascript">
  (function () {
    function initCheckInsured() {
      if (typeof $ === 'undefined') {
        setTimeout(initCheckInsured, 100);

        return;
      }

      function checkInsured() {
        if ($('#MYPARCEL_DEFCON_I_on').is(':checked')) {
          $('#MYPARCEL_DEFCON_I_TYPE').parent().parent().show();
          if ($('#MYPARCEL_DEFCON_I_TYPE').val() == 4) {
            $('#MYPARCEL_DEFCON_I_AMOUNT').parent().parent().parent().show();
          } else {
            $('#MYPARCEL_DEFCON_I_AMOUNT').parent().parent().parent().hide();
          }
        } else {
          $('#MYPARCEL_DEFCON_I_TYPE').parent().parent().hide();
          $('#MYPARCEL_DEFCON_I_AMOUNT').parent().parent().parent().hide();
        }

        if ($('#MYPARCEL_RETDEFCON_I_on').is(':checked')) {
          $('#MYPARCEL_RETDEFCON_I_TYPE').parent().parent().show();
          if ($('#MYPARCEL_RETDEFCON_I_TYPE').val() == 4) {
            $('#MYPARCEL_RETDEFCON_I_AMOUNT').parent().parent().parent().show();
          } else {
            $('#MYPARCEL_RETDEFCON_I_AMOUNT').parent().parent().parent().hide();
          }
        } else {
          $('#MYPARCEL_RETDEFCON_I_TYPE').parent().parent().hide();
          $('#MYPARCEL_RETDEFCON_I_AMOUNT').parent().parent().parent().hide();
        }
      }

      $(document).ready(function () {
        checkInsured();
        $('#MYPARCEL_DEFCON_I_on, #MYPARCEL_DEFCON_I_off, #MYPARCEL_DEFCON_I_TYPE').change(checkInsured);
        $('#MYPARCEL_RETDEFCON_I_on, #MYPARCEL_RETDEFCON_I_off, #MYPARCEL_RETDEFCON_I_TYPE').change(checkInsured);
      });
    }

    initCheckInsured();
  })();
</script>
