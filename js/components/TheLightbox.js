export default{
    name: 'TheLightboxComponent',

    props: ['hero'],

    //emits: ['closelightbox'],

    template: `
    <section class="lightbox">
        <img @click="closeLB" src="images/closeIcon.png" class="lightbox_close">
        <p id="demo"></p>
         <!-- hero image on the left, text on the right -->
        <!-- her image is a background image -->
        <article>
            <h3 class="lb_heading">{{hero.name}}123</h3>
            <p class="lb_text">
                {{hero.desc}}123
            </p>
           
          
        </article>
    </section>
    `,

    methods: {
        closeLB() {
            this.$emit('closelb');
        }
    }
}